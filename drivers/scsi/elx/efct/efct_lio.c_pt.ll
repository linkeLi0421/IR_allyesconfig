; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/efct/efct_lio.c_pt.bc'
source_filename = "../drivers/scsi/elx/efct/efct_lio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.target_core_fabric_ops = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
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
%struct.efc_dma = type { ptr, ptr, i32, i32, i32, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.efc_nport = type { %struct.list_head, %struct.kref, ptr, ptr, i32, [32 x i8], i8, i8, i8, i8, i8, ptr, i64, i64, ptr, ptr, i32, i32, %struct.efc_dma, [32 x i8], i64, i64, %struct.efc_sm_ctx, %struct.xarray, i8, i8, i8, i8, i32, i32, [120 x i8], i32 }
%struct.efc_sm_ctx = type { ptr, ptr, ptr }
%struct.efct_lio_nport = type { i64, [32 x i8], %struct.se_wwn, ptr, ptr, %struct.atomic_t }
%struct.se_wwn = type { ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, i32 }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.efc = type { ptr, ptr, ptr, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.libefc_function_template, %struct.spinlock, i8, i8, i32, ptr, ptr, ptr, i64, i64, i8, i32, i32, ptr, %struct.atomic_t, i8, %struct.spinlock, %struct.list_head, i32 }
%struct.libefc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efct_lio_wq_data = type { ptr, ptr, %struct.work_struct }
%struct.efc_node = type { ptr, [32 x i8], ptr, %struct.kref, ptr, i8, i8, i8, i8, i8, i8, i8, i8, %struct.spinlock, %struct.list_head, ptr, ptr, %struct.efc_remote_node, %struct.efc_sm_ctx, i32, i32, ptr, i32, i32, i32, i8, i8, i8, %struct.efc_dma, [120 x i8], %struct.spinlock, %struct.list_head, i32, i32, i32, i32, i32, i32, [64 x i8], [64 x i8], i32, i32, ptr, %struct.timer_list, i64, [32 x i8], [32 x i8] }
%struct.efc_remote_node = type { i32, i32, i32, i8, ptr, ptr }
%struct.efct_lio_vport_list_t = type { %struct.list_head, ptr }
%struct.efct_lio_vport = type { i64, i64, i64, [32 x i8], %struct.se_wwn, ptr, ptr, ptr, ptr, %struct.atomic_t }
%struct.efct_node = type { %struct.list_head, %struct.kref, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, [32 x i8], i32, i32, i32, i32, i32 }
%struct.efct_io = type { ptr, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.kref, ptr, i32, i32, i32, i32, ptr, i32, i32, %struct.efct_scsi_tgt_io, i32, ptr, i32, ptr, i32, i8, i8, i8, i8, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, i8, i8, %union.efct_hw_io_param_u, i32, i64, ptr, ptr, %struct.efc_dma, i32, i8, i8, i32 }
%struct.efct_scsi_tgt_io = type { %struct.se_cmd, [96 x i8], i32, i32, i64, i32, i8, ptr, i32, i32, i32, i32, i8, i8, i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%union.efct_hw_io_param_u = type { %struct.sli_bls_params }
%struct.sli_bls_params = type { i32, i32, i16, i16, i32, i32, i8, [12 x i8], i16, i16 }
%struct.efct_lio_tpg = type { %struct.se_portal_group, ptr, ptr, %struct.efct_lio_tpg_attrib, i16, i8 }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.efct_lio_tpg_attrib = type { i32, i32, i32, i32, i32, i8 }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.efct_scsi_sgl = type { i32, i32, i32 }
%struct.efct_scsi_cmd_resp = type { i8, i16, ptr, i32, ptr, i32, i32, i32 }
%struct.se_tmr_req = type { i8, i8, i32, i64, ptr, ptr, ptr, %struct.list_head }
%struct.efc_domain = type { ptr, [32 x i8], %struct.list_head, %struct.kref, ptr, ptr, ptr, i32, i32, i32, i32, %struct.efc_dma, i64, %struct.efc_sm_ctx, i8, i8, i8, i8, i8, i8, i8, i8, %struct.efc_domain_record, [120 x i8], [120 x i8], %struct.xarray, ptr }
%struct.efc_domain_record = type { i32, i32, [6 x i8], [8 x i8], %union.anon.84, i32, i32, i8, i8 }
%union.anon.84 = type { [512 x i8] }
%struct.fc_vport_identifiers = type { i64, i64, i32, i8, i32, [64 x i8] }

@efct_scsi_tgt_new_device.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"efct\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efct_scsi_tgt_new_device\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/elx/efct/efct_lio.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"total_ios=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efct_lio_worker\00", [16 x i8] zeroinitializer }, align 32
@lio_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@efct_scsi_tgt_new_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1136, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"workqueue create failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efct_scsi_tgt_new_device._entry_ptr = internal global ptr @efct_scsi_tgt_new_device._entry, section ".printk_index", align 4
@efct_scsi_tgt_new_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&efct->tgt_efct.efct_lio_lock\00", [34 x i8] zeroinitializer }, align 32
@efct_scsi_tgt_new_nport.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 1, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efct_scsi_tgt_new_nport\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"New SPORT: %s bound to %s\0A\00", [37 x i8] zeroinitializer }, align 32
@efct_scsi_tgt_del_nport.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 1, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efct_scsi_tgt_del_nport\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Del SPORT: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@efct_scsi_new_initiator.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&wq_data->work)\00", [62 x i8] zeroinitializer }, align 32
@efct_scsi_del_initiator._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1307, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tgt_node is NULL\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efct_scsi_del_initiator\00", [40 x i8] zeroinitializer }, align 32
@efct_scsi_del_initiator._entry_ptr = internal global ptr @efct_scsi_del_initiator._entry, section ".printk_index", align 4
@efct_scsi_del_initiator.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FROM_INITIATOR\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TO_INITIATOR\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BIDIR\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@efct_scsi_recv_cmd.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 1, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_scsi_recv_cmd\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x]new cmd=0x%x ddir=%s dl=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@efct_scsi_recv_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 1391, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"No session found to submit IO se_cmd: %p\0A\00", [54 x i8] zeroinitializer }, align 32
@efct_scsi_recv_cmd._entry_ptr = internal global ptr @efct_scsi_recv_cmd._entry, section ".printk_index", align 4
@efct_scsi_recv_cmd._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.2, i32 1401, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init cmd se_cmd: %p\0A\00", [33 x i8] zeroinitializer }, align 32
@efct_scsi_recv_cmd._entry_ptr.26 = internal global ptr @efct_scsi_recv_cmd._entry.24, section ".printk_index", align 4
@efct_scsi_recv_tmf.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 1, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_scsi_recv_tmf\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x][f:%02x]%s: new tmf %x lun=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@efct_lio_ops = internal constant { %struct.target_core_fabric_ops, [56 x i8] } { %struct.target_core_fabric_ops { ptr null, ptr null, ptr @.str, i32 976, i32 65535, ptr @efct_lio_get_fabric_wwn, ptr @efct_lio_get_tag, ptr null, ptr @efct_lio_check_demo_mode, ptr @efct_lio_check_demo_mode_cache, ptr @efct_lio_check_demo_write_protect, ptr @efct_lio_check_prod_write_protect, ptr @efct_lio_check_demo_mode_login_only, ptr null, ptr @efct_lio_tpg_get_inst_index, ptr @efct_lio_check_stop_free, ptr @efct_lio_release_cmd, ptr @efct_lio_close_session, ptr @efct_lio_sess_get_index, ptr null, ptr @efct_lio_write_pending, ptr @efct_lio_set_default_node_attrs, ptr @efct_lio_get_cmd_state, ptr @efct_lio_queue_data_in, ptr @efct_lio_queue_status, ptr @efct_lio_queue_tm_rsp, ptr @efct_lio_aborted_task, ptr @efct_lio_make_nport, ptr @efct_lio_drop_nport, ptr null, ptr @efct_lio_make_tpg, ptr null, ptr @efct_lio_drop_tpg, ptr null, ptr null, ptr null, ptr null, ptr @efct_lio_init_nodeacl, ptr null, ptr null, ptr @efct_lio_tpg_attrs, ptr null, ptr @efct_lio_tpg_attrib_attrs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@efct_scsi_tgt_driver_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013target_fabric_configfs_register failed with %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"efct_scsi_tgt_driver_init\00", [38 x i8] zeroinitializer }, align 32
@efct_scsi_tgt_driver_init._entry_ptr = internal global ptr @efct_scsi_tgt_driver_init._entry, section ".printk_index", align 4
@efct_lio_npiv_ops = internal constant { %struct.target_core_fabric_ops, [56 x i8] } { %struct.target_core_fabric_ops { ptr null, ptr null, ptr @.str.126, i32 976, i32 65535, ptr @efct_lio_get_npiv_fabric_wwn, ptr @efct_lio_get_npiv_tag, ptr null, ptr @efct_lio_check_demo_mode, ptr @efct_lio_check_demo_mode_cache, ptr @efct_lio_npiv_check_demo_write_protect, ptr @efct_lio_npiv_check_prod_write_protect, ptr @efct_lio_npiv_check_demo_mode_login_only, ptr null, ptr @efct_lio_tpg_get_inst_index, ptr @efct_lio_check_stop_free, ptr @efct_lio_release_cmd, ptr @efct_lio_close_session, ptr @efct_lio_sess_get_index, ptr null, ptr @efct_lio_write_pending, ptr @efct_lio_set_default_node_attrs, ptr @efct_lio_get_cmd_state, ptr @efct_lio_queue_data_in, ptr @efct_lio_queue_status, ptr @efct_lio_queue_tm_rsp, ptr @efct_lio_aborted_task, ptr @efct_lio_npiv_make_nport, ptr @efct_lio_npiv_drop_nport, ptr null, ptr @efct_lio_npiv_make_tpg, ptr null, ptr @efct_lio_npiv_drop_tpg, ptr null, ptr null, ptr null, ptr null, ptr @efct_lio_init_nodeacl, ptr null, ptr null, ptr @efct_lio_npiv_tpg_attrs, ptr null, ptr @efct_lio_npiv_tpg_attrib_attrs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@efct_scsi_tgt_driver_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@efct_scsi_tgt_driver_init._entry_ptr.32 = internal global ptr @efct_scsi_tgt_driver_init._entry.31, section ".printk_index", align 4
@sli_get_max_sgl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.35, i32 3745, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported SGL page sizes %#x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sli_get_max_sgl\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/scsi/elx/efct/../libefc/../libefc_sli/sli4.h\00", [43 x i8] zeroinitializer }, align 32
@sli_get_max_sgl._entry_ptr = internal global ptr @sli_get_max_sgl._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@efct_lio_setup_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 1195, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to init session\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efct_lio_setup_session\00", [41 x i8] zeroinitializer }, align 32
@efct_lio_setup_session._entry_ptr = internal global ptr @efct_lio_setup_session._entry, section ".printk_index", align 4
@.str.38 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@efct_lio_setup_session._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.2, i32 1209, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to setup session\0A\00", [39 x i8] zeroinitializer }, align 32
@efct_lio_setup_session._entry_ptr.41 = internal global ptr @efct_lio_setup_session._entry.39, section ".printk_index", align 4
@efct_lio_setup_session.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.42, i8 1, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"new initiator sess=%p node=%p id: %llx\0A\00", [56 x i8] zeroinitializer }, align 32
@efct_lio_setup_session._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.2, i32 1222, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Node lookup store failed\0A\00", [38 x i8] zeroinitializer }, align 32
@efct_lio_setup_session._entry_ptr.45 = internal global ptr @efct_lio_setup_session._entry.43, section ".printk_index", align 4
@efct_get_vport_tpg.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 1, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_get_vport_tpg\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"found tpg on vport\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%8phC\00", [24 x i8] zeroinitializer }, align 32
@efct_session_cb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&tgt_node->active_ios_lock\00", [37 x i8] zeroinitializer }, align 32
@efct_lio_remove_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1272, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unreg session for NULL session\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efct_lio_remove_session\00", [40 x i8] zeroinitializer }, align 32
@efct_lio_remove_session._entry_ptr = internal global ptr @efct_lio_remove_session._entry, section ".printk_index", align 4
@efct_lio_remove_session.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 1, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unreg session se_sess=%p node=%p\0A\00", [62 x i8] zeroinitializer }, align 32
@efct_lio_null_tmf_done.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efct_lio_null_tmf_done\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x][f:%02x]cmd=%p status=%d, flags=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @efct_lio_tpg_attr_enable, ptr null], [24 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @efct_lio_tpg_attrib_attr_generate_node_acls, ptr @efct_lio_tpg_attrib_attr_cache_dynamic_acls, ptr @efct_lio_tpg_attrib_attr_demo_mode_write_protect, ptr @efct_lio_tpg_attrib_attr_prod_mode_write_protect, ptr @efct_lio_tpg_attrib_attr_demo_mode_login_only, ptr @efct_lio_tpg_attrib_attr_session_deletion_wait, ptr null], [36 x i8] zeroinitializer }, align 32
@efct_lio_close_session.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efct_lio_close_session\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"se_sess=%p node=%p\00", [45 x i8] zeroinitializer }, align 32
@efct_lio_close_session.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.57, i8 0, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"node is NULL\00", [19 x i8] zeroinitializer }, align 32
@efct_lio_write_pending.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efct_lio_write_pending\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x]trans_state=0x%x se_cmd_flags=0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@efct_lio_write_pending.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.60, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x]efct_lio_sg_map failed\0A\00", [39 x i8] zeroinitializer }, align 32
@efct_lio_datamove_done.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efct_lio_datamove_done\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x]callback completed with error=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@efct_lio_datamove_done.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.63, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x]seg_map_cnt=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@efct_lio_datamove_done.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.64, i8 0, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x]continuing cmd at segm=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@efct_lio_datamove_done.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.65, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x]could not continue command\0A\00", [35 x i8] zeroinitializer }, align 32
@efct_lio_datamove_done.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.66, i8 0, i8 -101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x]IO done aborted\0A\00", [46 x i8] zeroinitializer }, align 32
@efct_lio_datamove_done.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.67, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x]Write done, trans_state=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@efct_lio_send_resp.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_lio_send_resp\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x]Read done, send rsp failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@efct_lio_status_done.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.62, i8 0, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efct_lio_status_done\00", [43 x i8] zeroinitializer }, align 32
@efct_lio_status_done.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x]status=%d, err=%d flags=0x%x, dir=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@efct_lio_queue_data_in.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.60, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efct_lio_queue_data_in\00", [41 x i8] zeroinitializer }, align 32
@efct_lio_queue_data_in.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x]cmd : %p length 0, send status\0A\00", [63 x i8] zeroinitializer }, align 32
@efct_lio_queue_status.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efct_lio_queue_status\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x]status=0x%x trans_state=0x%x se_cmd_flags=0x%x sns_len=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@efct_lio_queue_tm_rsp.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.77, i8 0, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efct_lio_queue_tm_rsp\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x][f:%02x]cmd=%p function=0x%x tmr->response=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@efct_lio_tmf_done.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.2, ptr @.str.54, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efct_lio_tmf_done\00", [46 x i8] zeroinitializer }, align 32
@efct_lio_abort_tgt_cb.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efct_lio_abort_tgt_cb\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s] [%04x][i:%04x t:%04x h:%04x]Abort done, status:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@efct_lio_make_nport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013cannot find EFCT for base wwpn %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efct_lio_make_nport\00", [44 x i8] zeroinitializer }, align 32
@efct_lio_make_nport._entry_ptr = internal global ptr @efct_lio_make_nport._entry, section ".printk_index", align 4
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"naa.\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx%02hhx\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx\00", [40 x i8] zeroinitializer }, align 32
@efct_devices = external dso_local global %struct.list_head, align 4
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tpgt_\00", [26 x i8] zeroinitializer }, align 32
@efct_lio_make_tpg.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 0, i8 -22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efct_lio_make_tpg\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"create portal group %d\0A\00", [40 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@efct_lio_drop_tpg.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.2, ptr @.str.91, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efct_lio_drop_tpg\00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drop portal group %d\0A\00", [42 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attr_enable = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.92, ptr null, i16 420, ptr @efct_lio_tpg_enable_show, ptr @efct_lio_tpg_enable_store }, [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@efct_lio_tpg_enable_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Unable to find EFCT device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"efct_lio_tpg_enable_store\00", [38 x i8] zeroinitializer }, align 32
@efct_lio_tpg_enable_store._entry_ptr = internal global ptr @efct_lio_tpg_enable_store._entry, section ".printk_index", align 4
@efct_lio_tpg_enable_store.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enable portal group %d\0A\00", [40 x i8] zeroinitializer }, align 32
@efct_lio_tpg_enable_store.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.97, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot bring port online\0A\00", [38 x i8] zeroinitializer }, align 32
@efct_lio_tpg_enable_store.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.98, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"disable portal group %d\0A\00", [39 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_attr_generate_node_acls = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.99, ptr null, i16 420, ptr @efct_lio_tpg_attrib_generate_node_acls_show, ptr @efct_lio_tpg_attrib_generate_node_acls_store }, [44 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_attr_cache_dynamic_acls = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.106, ptr null, i16 420, ptr @efct_lio_tpg_attrib_cache_dynamic_acls_show, ptr @efct_lio_tpg_attrib_cache_dynamic_acls_store }, [44 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_attr_demo_mode_write_protect = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.110, ptr null, i16 420, ptr @efct_lio_tpg_attrib_demo_mode_write_protect_show, ptr @efct_lio_tpg_attrib_demo_mode_write_protect_store }, [44 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_attr_prod_mode_write_protect = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.114, ptr null, i16 420, ptr @efct_lio_tpg_attrib_prod_mode_write_protect_show, ptr @efct_lio_tpg_attrib_prod_mode_write_protect_store }, [44 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_attr_demo_mode_login_only = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.118, ptr null, i16 420, ptr @efct_lio_tpg_attrib_demo_mode_login_only_show, ptr @efct_lio_tpg_attrib_demo_mode_login_only_store }, [44 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_attr_session_deletion_wait = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.122, ptr null, i16 420, ptr @efct_lio_tpg_attrib_session_deletion_wait_show, ptr @efct_lio_tpg_attrib_session_deletion_wait_store }, [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"generate_node_acls\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_generate_node_acls_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.2, i32 1521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013kstrtoul() failed with ret: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"efct_lio_tpg_attrib_generate_node_acls_store\00", [51 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_generate_node_acls_store._entry_ptr = internal global ptr @efct_lio_tpg_attrib_generate_node_acls_store._entry, section ".printk_index", align 4
@efct_lio_tpg_attrib_generate_node_acls_store._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.2, i32 1521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Illegal boolean value %lu\0A\00", [35 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_generate_node_acls_store._entry_ptr.105 = internal global ptr @efct_lio_tpg_attrib_generate_node_acls_store._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cache_dynamic_acls\00", [45 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_cache_dynamic_acls_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.107, ptr @.str.2, i32 1522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"efct_lio_tpg_attrib_cache_dynamic_acls_store\00", [51 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_cache_dynamic_acls_store._entry_ptr = internal global ptr @efct_lio_tpg_attrib_cache_dynamic_acls_store._entry, section ".printk_index", align 4
@efct_lio_tpg_attrib_cache_dynamic_acls_store._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.107, ptr @.str.2, i32 1522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_cache_dynamic_acls_store._entry_ptr.109 = internal global ptr @efct_lio_tpg_attrib_cache_dynamic_acls_store._entry.108, section ".printk_index", align 4
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"demo_mode_write_protect\00", [40 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_demo_mode_write_protect_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.111, ptr @.str.2, i32 1523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"efct_lio_tpg_attrib_demo_mode_write_protect_store\00", [46 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_demo_mode_write_protect_store._entry_ptr = internal global ptr @efct_lio_tpg_attrib_demo_mode_write_protect_store._entry, section ".printk_index", align 4
@efct_lio_tpg_attrib_demo_mode_write_protect_store._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.111, ptr @.str.2, i32 1523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_demo_mode_write_protect_store._entry_ptr.113 = internal global ptr @efct_lio_tpg_attrib_demo_mode_write_protect_store._entry.112, section ".printk_index", align 4
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"prod_mode_write_protect\00", [40 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_prod_mode_write_protect_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.115, ptr @.str.2, i32 1524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"efct_lio_tpg_attrib_prod_mode_write_protect_store\00", [46 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_prod_mode_write_protect_store._entry_ptr = internal global ptr @efct_lio_tpg_attrib_prod_mode_write_protect_store._entry, section ".printk_index", align 4
@efct_lio_tpg_attrib_prod_mode_write_protect_store._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.115, ptr @.str.2, i32 1524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_prod_mode_write_protect_store._entry_ptr.117 = internal global ptr @efct_lio_tpg_attrib_prod_mode_write_protect_store._entry.116, section ".printk_index", align 4
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"demo_mode_login_only\00", [43 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_demo_mode_login_only_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.119, ptr @.str.2, i32 1525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"efct_lio_tpg_attrib_demo_mode_login_only_store\00", [49 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_demo_mode_login_only_store._entry_ptr = internal global ptr @efct_lio_tpg_attrib_demo_mode_login_only_store._entry, section ".printk_index", align 4
@efct_lio_tpg_attrib_demo_mode_login_only_store._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.119, ptr @.str.2, i32 1525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_demo_mode_login_only_store._entry_ptr.121 = internal global ptr @efct_lio_tpg_attrib_demo_mode_login_only_store._entry.120, section ".printk_index", align 4
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"session_deletion_wait\00", [42 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_session_deletion_wait_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.123, ptr @.str.2, i32 1526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"efct_lio_tpg_attrib_session_deletion_wait_store\00", [48 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_session_deletion_wait_store._entry_ptr = internal global ptr @efct_lio_tpg_attrib_session_deletion_wait_store._entry, section ".printk_index", align 4
@efct_lio_tpg_attrib_session_deletion_wait_store._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.123, ptr @.str.2, i32 1526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@efct_lio_tpg_attrib_session_deletion_wait_store._entry_ptr.125 = internal global ptr @efct_lio_tpg_attrib_session_deletion_wait_store._entry.124, section ".printk_index", align 4
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"efct_npiv\00", [22 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @efct_lio_npiv_tpg_attr_enable, ptr null], [24 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @efct_lio_npiv_tpg_attrib_attr_generate_node_acls, ptr @efct_lio_npiv_tpg_attrib_attr_cache_dynamic_acls, ptr @efct_lio_npiv_tpg_attrib_attr_demo_mode_write_protect, ptr @efct_lio_npiv_tpg_attrib_attr_prod_mode_write_protect, ptr @efct_lio_npiv_tpg_attrib_attr_demo_mode_login_only, ptr @efct_lio_npiv_tpg_attrib_attr_session_deletion_wait, ptr null], [36 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"@\00", [30 x i8] zeroinitializer }, align 32
@efct_lio_npiv_make_nport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Unable to find separator operator(@)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efct_lio_npiv_make_nport\00", [39 x i8] zeroinitializer }, align 32
@efct_lio_npiv_make_nport._entry_ptr = internal global ptr @efct_lio_npiv_make_nport._entry, section ".printk_index", align 4
@efct_lio_npiv_make_nport._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.129, ptr @.str.2, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@efct_lio_npiv_make_nport._entry_ptr.131 = internal global ptr @efct_lio_npiv_make_nport._entry.130, section ".printk_index", align 4
@efct_lio_npiv_make_nport._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.129, ptr @.str.2, i32 845, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fc_vport_create failed\0A\00", [40 x i8] zeroinitializer }, align 32
@efct_lio_npiv_make_nport._entry_ptr.134 = internal global ptr @efct_lio_npiv_make_nport._entry.132, section ".printk_index", align 4
@efct_lio_npiv_make_tpg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.2, i32 974, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid tpgt index: %ld provided\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efct_lio_npiv_make_tpg\00", [41 x i8] zeroinitializer }, align 32
@efct_lio_npiv_make_tpg._entry_ptr = internal global ptr @efct_lio_npiv_make_tpg._entry, section ".printk_index", align 4
@efct_lio_npiv_make_tpg.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.2, ptr @.str.137, i8 0, i8 -7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"create vport portal group %d\0A\00", [34 x i8] zeroinitializer }, align 32
@efct_lio_npiv_drop_tpg.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.138, ptr @.str.2, ptr @.str.139, i8 0, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efct_lio_npiv_drop_tpg\00", [41 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drop npiv portal group %d\0A\00", [37 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attr_enable = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.92, ptr null, i16 420, ptr @efct_lio_npiv_tpg_enable_show, ptr @efct_lio_npiv_tpg_enable_store }, [44 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_enable_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Unable to find vport\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"efct_lio_npiv_tpg_enable_store\00", [33 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_enable_store._entry_ptr = internal global ptr @efct_lio_npiv_tpg_enable_store._entry, section ".printk_index", align 4
@efct_lio_npiv_tpg_enable_store.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.2, ptr @.str.96, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@efct_lio_npiv_tpg_enable_store._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.141, ptr @.str.2, i32 182, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to create Vport\0A\00", [40 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_enable_store._entry_ptr.144 = internal global ptr @efct_lio_npiv_tpg_enable_store._entry.142, section ".printk_index", align 4
@efct_lio_npiv_tpg_enable_store.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.2, ptr @.str.98, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@efct_lio_npiv_tpg_attrib_attr_generate_node_acls = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.99, ptr null, i16 420, ptr @efct_lio_npiv_tpg_attrib_generate_node_acls_show, ptr @efct_lio_npiv_tpg_attrib_generate_node_acls_store }, [44 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_attr_cache_dynamic_acls = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.106, ptr null, i16 420, ptr @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_show, ptr @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store }, [44 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_attr_demo_mode_write_protect = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.110, ptr null, i16 420, ptr @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_show, ptr @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store }, [44 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_attr_prod_mode_write_protect = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.114, ptr null, i16 420, ptr @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_show, ptr @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store }, [44 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_attr_demo_mode_login_only = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.118, ptr null, i16 420, ptr @efct_lio_npiv_tpg_attrib_demo_mode_login_only_show, ptr @efct_lio_npiv_tpg_attrib_demo_mode_login_only_store }, [44 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_attr_session_deletion_wait = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.122, ptr null, i16 420, ptr @efct_lio_npiv_tpg_attrib_session_deletion_wait_show, ptr @efct_lio_npiv_tpg_attrib_session_deletion_wait_store }, [44 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.145, ptr @.str.2, i32 1577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"efct_lio_npiv_tpg_attrib_generate_node_acls_store\00", [46 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry_ptr = internal global ptr @efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry, section ".printk_index", align 4
@efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.145, ptr @.str.2, i32 1577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry_ptr.147 = internal global ptr @efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry.146, section ".printk_index", align 4
@efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.148, ptr @.str.2, i32 1578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store\00", [46 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry_ptr = internal global ptr @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry, section ".printk_index", align 4
@efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.148, ptr @.str.2, i32 1578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry_ptr.150 = internal global ptr @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry.149, section ".printk_index", align 4
@efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.151, ptr @.str.2, i32 1579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store\00", [41 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry_ptr = internal global ptr @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry, section ".printk_index", align 4
@efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.151, ptr @.str.2, i32 1579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry_ptr.153 = internal global ptr @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry.152, section ".printk_index", align 4
@efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.154, ptr @.str.2, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store\00", [41 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry_ptr = internal global ptr @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry, section ".printk_index", align 4
@efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.154, ptr @.str.2, i32 1580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry_ptr.156 = internal global ptr @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry.155, section ".printk_index", align 4
@efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.157, ptr @.str.2, i32 1581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"efct_lio_npiv_tpg_attrib_demo_mode_login_only_store\00", [44 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry_ptr = internal global ptr @efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry, section ".printk_index", align 4
@efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.157, ptr @.str.2, i32 1581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry_ptr.159 = internal global ptr @efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry.158, section ".printk_index", align 4
@efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.160, ptr @.str.2, i32 1582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"efct_lio_npiv_tpg_attrib_session_deletion_wait_store\00", [43 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry_ptr = internal global ptr @efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry, section ".printk_index", align 4
@efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.160, ptr @.str.2, i32 1582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry_ptr.162 = internal global ptr @efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry.161, section ".printk_index", align 4
@switch.table.efct_scsi_recv_cmd = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.efct_scsi_recv_cmd.163 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19], [20 x i8] zeroinitializer }, align 32
@switch.table.efct_scsi_recv_tmf = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\01\02\04\01\05\03\06", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1124, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1134, i32 11 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"lio_wq\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 17, i32 33 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1136, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1140, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1158, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1167, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1252, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1307, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1320, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1366, i32 10 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1370, i32 10 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1374, i32 10 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1378, i32 10 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1384, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1390, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1401, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1427, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [13 x i8] c"efct_lio_ops\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1601, i32 44 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1681, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [18 x i8] c"efct_lio_npiv_ops\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1636, i32 44 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1686, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [46 x i8] c"../drivers/scsi/elx/efct/../libefc_sli/sli4.h\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 3744, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1195, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1204, i32 38 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1209, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1218, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1222, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1063, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 25, i32 28 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1107, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1272, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1278, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 660, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [19 x i8] c"efct_lio_tpg_attrs\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1595, i32 35 }
@___asan_gen_.364 = private unnamed_addr constant [26 x i8] c"efct_lio_tpg_attrib_attrs\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1528, i32 35 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 348, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 351, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 446, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 453, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 594, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 598, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 604, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 614, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 620, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 625, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 578, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 415, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 422, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 497, i32 5 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 506, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 678, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 711, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 647, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 308, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 760, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 771, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 36, i32 9 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 41, i32 9 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 910, i32 19 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 936, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 378, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 950, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [25 x i8] c"efct_lio_tpg_attr_enable\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1594, i32 1 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 85, i32 35 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 100, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 114, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 119, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 123, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant [44 x i8] c"efct_lio_tpg_attrib_attr_generate_node_acls\00", align 1
@___asan_gen_.514 = private unnamed_addr constant [44 x i8] c"efct_lio_tpg_attrib_attr_cache_dynamic_acls\00", align 1
@___asan_gen_.517 = private unnamed_addr constant [49 x i8] c"efct_lio_tpg_attrib_attr_demo_mode_write_protect\00", align 1
@___asan_gen_.520 = private unnamed_addr constant [49 x i8] c"efct_lio_tpg_attrib_attr_prod_mode_write_protect\00", align 1
@___asan_gen_.523 = private unnamed_addr constant [46 x i8] c"efct_lio_tpg_attrib_attr_demo_mode_login_only\00", align 1
@___asan_gen_.526 = private unnamed_addr constant [47 x i8] c"efct_lio_tpg_attrib_attr_session_deletion_wait\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1521, i32 1 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1522, i32 1 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1523, i32 1 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1524, i32 1 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1525, i32 1 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1526, i32 1 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1638, i32 19 }
@___asan_gen_.613 = private unnamed_addr constant [24 x i8] c"efct_lio_npiv_tpg_attrs\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1598, i32 35 }
@___asan_gen_.616 = private unnamed_addr constant [31 x i8] c"efct_lio_npiv_tpg_attrib_attrs\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1584, i32 35 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 794, i32 20 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 797, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 812, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 845, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 974, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 999, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1010, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant [30 x i8] c"efct_lio_npiv_tpg_attr_enable\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1597, i32 1 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 162, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 182, i32 5 }
@___asan_gen_.676 = private unnamed_addr constant [49 x i8] c"efct_lio_npiv_tpg_attrib_attr_generate_node_acls\00", align 1
@___asan_gen_.679 = private unnamed_addr constant [49 x i8] c"efct_lio_npiv_tpg_attrib_attr_cache_dynamic_acls\00", align 1
@___asan_gen_.682 = private unnamed_addr constant [54 x i8] c"efct_lio_npiv_tpg_attrib_attr_demo_mode_write_protect\00", align 1
@___asan_gen_.685 = private unnamed_addr constant [54 x i8] c"efct_lio_npiv_tpg_attrib_attr_prod_mode_write_protect\00", align 1
@___asan_gen_.688 = private unnamed_addr constant [51 x i8] c"efct_lio_npiv_tpg_attrib_attr_demo_mode_login_only\00", align 1
@___asan_gen_.691 = private unnamed_addr constant [52 x i8] c"efct_lio_npiv_tpg_attrib_attr_session_deletion_wait\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1577, i32 1 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1578, i32 1 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1579, i32 1 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1580, i32 1 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1581, i32 1 }
@___asan_gen_.742 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.745 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.746 = private constant [36 x i8] c"../drivers/scsi/elx/efct/efct_lio.c\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1582, i32 1 }
@___asan_gen_.748 = private unnamed_addr constant [32 x i8] c"switch.table.efct_scsi_recv_cmd\00", align 1
@___asan_gen_.749 = private unnamed_addr constant [36 x i8] c"switch.table.efct_scsi_recv_cmd.163\00", align 1
@___asan_gen_.750 = private unnamed_addr constant [32 x i8] c"switch.table.efct_scsi_recv_tmf\00", align 1
@llvm.compiler.used = appending global [240 x ptr] [ptr @efct_lio_make_nport._entry, ptr @efct_lio_make_nport._entry_ptr, ptr @efct_lio_npiv_make_nport._entry, ptr @efct_lio_npiv_make_nport._entry.130, ptr @efct_lio_npiv_make_nport._entry.132, ptr @efct_lio_npiv_make_nport._entry_ptr, ptr @efct_lio_npiv_make_nport._entry_ptr.131, ptr @efct_lio_npiv_make_nport._entry_ptr.134, ptr @efct_lio_npiv_make_tpg._entry, ptr @efct_lio_npiv_make_tpg._entry_ptr, ptr @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry, ptr @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry.149, ptr @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry_ptr, ptr @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry_ptr.150, ptr @efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry, ptr @efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry.158, ptr @efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry_ptr, ptr @efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry_ptr.159, ptr @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry, ptr @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry.152, ptr @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry_ptr, ptr @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry_ptr.153, ptr @efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry, ptr @efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry.146, ptr @efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry_ptr, ptr @efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry_ptr.147, ptr @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry, ptr @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry.155, ptr @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry_ptr, ptr @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry_ptr.156, ptr @efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry, ptr @efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry.161, ptr @efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry_ptr, ptr @efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry_ptr.162, ptr @efct_lio_npiv_tpg_enable_store._entry, ptr @efct_lio_npiv_tpg_enable_store._entry.142, ptr @efct_lio_npiv_tpg_enable_store._entry_ptr, ptr @efct_lio_npiv_tpg_enable_store._entry_ptr.144, ptr @efct_lio_remove_session._entry, ptr @efct_lio_remove_session._entry_ptr, ptr @efct_lio_setup_session._entry, ptr @efct_lio_setup_session._entry.39, ptr @efct_lio_setup_session._entry.43, ptr @efct_lio_setup_session._entry_ptr, ptr @efct_lio_setup_session._entry_ptr.41, ptr @efct_lio_setup_session._entry_ptr.45, ptr @efct_lio_tpg_attrib_cache_dynamic_acls_store._entry, ptr @efct_lio_tpg_attrib_cache_dynamic_acls_store._entry.108, ptr @efct_lio_tpg_attrib_cache_dynamic_acls_store._entry_ptr, ptr @efct_lio_tpg_attrib_cache_dynamic_acls_store._entry_ptr.109, ptr @efct_lio_tpg_attrib_demo_mode_login_only_store._entry, ptr @efct_lio_tpg_attrib_demo_mode_login_only_store._entry.120, ptr @efct_lio_tpg_attrib_demo_mode_login_only_store._entry_ptr, ptr @efct_lio_tpg_attrib_demo_mode_login_only_store._entry_ptr.121, ptr @efct_lio_tpg_attrib_demo_mode_write_protect_store._entry, ptr @efct_lio_tpg_attrib_demo_mode_write_protect_store._entry.112, ptr @efct_lio_tpg_attrib_demo_mode_write_protect_store._entry_ptr, ptr @efct_lio_tpg_attrib_demo_mode_write_protect_store._entry_ptr.113, ptr @efct_lio_tpg_attrib_generate_node_acls_store._entry, ptr @efct_lio_tpg_attrib_generate_node_acls_store._entry.103, ptr @efct_lio_tpg_attrib_generate_node_acls_store._entry_ptr, ptr @efct_lio_tpg_attrib_generate_node_acls_store._entry_ptr.105, ptr @efct_lio_tpg_attrib_prod_mode_write_protect_store._entry, ptr @efct_lio_tpg_attrib_prod_mode_write_protect_store._entry.116, ptr @efct_lio_tpg_attrib_prod_mode_write_protect_store._entry_ptr, ptr @efct_lio_tpg_attrib_prod_mode_write_protect_store._entry_ptr.117, ptr @efct_lio_tpg_attrib_session_deletion_wait_store._entry, ptr @efct_lio_tpg_attrib_session_deletion_wait_store._entry.124, ptr @efct_lio_tpg_attrib_session_deletion_wait_store._entry_ptr, ptr @efct_lio_tpg_attrib_session_deletion_wait_store._entry_ptr.125, ptr @efct_lio_tpg_enable_store._entry, ptr @efct_lio_tpg_enable_store._entry_ptr, ptr @efct_scsi_del_initiator._entry, ptr @efct_scsi_del_initiator._entry_ptr, ptr @efct_scsi_recv_cmd._entry, ptr @efct_scsi_recv_cmd._entry.24, ptr @efct_scsi_recv_cmd._entry_ptr, ptr @efct_scsi_recv_cmd._entry_ptr.26, ptr @efct_scsi_tgt_driver_init._entry, ptr @efct_scsi_tgt_driver_init._entry.31, ptr @efct_scsi_tgt_driver_init._entry_ptr, ptr @efct_scsi_tgt_driver_init._entry_ptr.32, ptr @efct_scsi_tgt_new_device._entry, ptr @efct_scsi_tgt_new_device._entry_ptr, ptr @sli_get_max_sgl._entry, ptr @sli_get_max_sgl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lio_wq, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @efct_scsi_tgt_new_device.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @efct_scsi_new_initiator.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @efct_scsi_del_initiator.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @efct_lio_ops, ptr @.str.29, ptr @.str.30, ptr @efct_lio_npiv_ops, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @efct_session_cb.__key, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @efct_lio_tpg_attrs, ptr @efct_lio_tpg_attrib_attrs, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @xa_init_flags.__key, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @efct_lio_tpg_attr_enable, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @efct_lio_tpg_attrib_attr_generate_node_acls, ptr @efct_lio_tpg_attrib_attr_cache_dynamic_acls, ptr @efct_lio_tpg_attrib_attr_demo_mode_write_protect, ptr @efct_lio_tpg_attrib_attr_prod_mode_write_protect, ptr @efct_lio_tpg_attrib_attr_demo_mode_login_only, ptr @efct_lio_tpg_attrib_attr_session_deletion_wait, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.110, ptr @.str.111, ptr @.str.114, ptr @.str.115, ptr @.str.118, ptr @.str.119, ptr @.str.122, ptr @.str.123, ptr @.str.126, ptr @efct_lio_npiv_tpg_attrs, ptr @efct_lio_npiv_tpg_attrib_attrs, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @efct_lio_npiv_tpg_attr_enable, ptr @.str.140, ptr @.str.141, ptr @.str.143, ptr @efct_lio_npiv_tpg_attrib_attr_generate_node_acls, ptr @efct_lio_npiv_tpg_attrib_attr_cache_dynamic_acls, ptr @efct_lio_npiv_tpg_attrib_attr_demo_mode_write_protect, ptr @efct_lio_npiv_tpg_attrib_attr_prod_mode_write_protect, ptr @efct_lio_npiv_tpg_attrib_attr_demo_mode_login_only, ptr @efct_lio_npiv_tpg_attrib_attr_session_deletion_wait, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @switch.table.efct_scsi_recv_cmd, ptr @switch.table.efct_scsi_recv_cmd.163, ptr @switch.table.efct_scsi_recv_tmf], section "llvm.metadata"
@0 = internal global [197 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lio_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_tgt_new_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_tgt_new_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_new_initiator.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_del_initiator._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_del_initiator.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_recv_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_recv_cmd._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_ops to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_tgt_driver_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_ops to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_tgt_driver_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sli_get_max_sgl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_setup_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_setup_session._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_setup_session._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_session_cb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_remove_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_make_nport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attr_enable to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_enable_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_attr_generate_node_acls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_attr_cache_dynamic_acls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_attr_demo_mode_write_protect to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_attr_prod_mode_write_protect to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_attr_demo_mode_login_only to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_attr_session_deletion_wait to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_generate_node_acls_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_generate_node_acls_store._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_cache_dynamic_acls_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_cache_dynamic_acls_store._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_demo_mode_write_protect_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_demo_mode_write_protect_store._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_prod_mode_write_protect_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_prod_mode_write_protect_store._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_demo_mode_login_only_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_demo_mode_login_only_store._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_session_deletion_wait_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_tpg_attrib_session_deletion_wait_store._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_make_nport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_make_nport._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_make_nport._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_make_tpg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attr_enable to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_enable_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_enable_store._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_attr_generate_node_acls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_attr_cache_dynamic_acls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_attr_demo_mode_write_protect to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_attr_prod_mode_write_protect to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_attr_demo_mode_login_only to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_attr_session_deletion_wait to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.efct_scsi_recv_cmd to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.efct_scsi_recv_cmd.163 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.efct_scsi_recv_tmf to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_tgt_new_device(ptr noundef %efct) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sge_supported_length.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 31
  %0 = ptrtoint ptr %sge_supported_length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sge_supported_length.i, align 4
  %tgt_efct = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 11
  %2 = ptrtoint ptr %tgt_efct to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tgt_efct, align 8
  %sgl_page_sizes.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 32
  %3 = ptrtoint ptr %sgl_page_sizes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sgl_page_sizes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 1
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pci.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 1
  %5 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.33, i32 noundef %4) #16
  br label %sli_get_max_sgl.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %max_sgl_pages.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 33
  %7 = ptrtoint ptr %max_sgl_pages.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_sgl_pages.i, align 4
  %9 = shl i32 %8, 8
  %div5.i = and i32 %9, 268435200
  br label %sli_get_max_sgl.exit

sli_get_max_sgl.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i54 = phi i32 [ 0, %do.end.i ], [ %div5.i, %if.end.i ]
  %max_sgl = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %max_sgl to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i54, ptr %max_sgl, align 4
  %ios_in_use = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 11, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ios_in_use, i32 noundef 4) #13
  %11 = ptrtoint ptr %ios_in_use to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %ios_in_use, align 4
  %n_io = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 9, i32 5
  %12 = ptrtoint ptr %n_io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_io, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_tgt_new_device.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_tgt_new_device, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %sli_get_max_sgl.exit
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %efct, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_tgt_new_device.__UNIQUE_ID_ddebug345, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %13) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %sli_get_max_sgl.exit
  %mul = mul i32 %13, 80
  %div = udiv i32 %mul, 100
  %watermark_min = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 11, i32 6
  %16 = ptrtoint ptr %watermark_min to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %watermark_min, align 8
  %mul11 = mul i32 %13, 90
  %div12 = udiv i32 %mul11, 100
  %watermark_max = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 11, i32 7
  %17 = ptrtoint ptr %watermark_max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div12, ptr %watermark_max, align 4
  %io_high_watermark = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 11, i32 4
  %call.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_high_watermark, i32 noundef 4) #13
  %18 = ptrtoint ptr %io_high_watermark to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %div12, ptr %io_high_watermark, align 4
  %watermark_hit = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 11, i32 5
  %call.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %watermark_hit, i32 noundef 4) #13
  %19 = ptrtoint ptr %watermark_hit to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %watermark_hit, align 4
  %initiator_count = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 11, i32 2
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %initiator_count, i32 noundef 4) #13
  %20 = ptrtoint ptr %initiator_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %initiator_count, align 4
  %call19 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.4, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.5) #13
  store ptr %call19, ptr @lio_wq, align 4
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end24, label %do.body28

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %efct, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.6) #16
  br label %cleanup

do.body28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %efct_lio_lock = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 11, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %efct_lio_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @efct_scsi_tgt_new_device.__key, i16 noundef signext 3) #13
  %vport_list = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 11, i32 10
  %23 = ptrtoint ptr %vport_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %vport_list, ptr %vport_list, align 4
  %prev.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 11, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %vport_list, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body28, %do.end24
  %retval.0 = phi i32 [ 0, %do.body28 ], [ -5, %do.end24 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_tgt_del_device(ptr nocapture noundef readnone %efct) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @lio_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_tgt_new_nport(ptr nocapture noundef readnone %efc, ptr noundef %nport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %efc1 = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 3
  %0 = ptrtoint ptr %efc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efc1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_tgt_new_nport.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_tgt_new_nport, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 5
  %lio_nport = getelementptr inbounds %struct.efct, ptr %3, i32 0, i32 11, i32 8
  %6 = ptrtoint ptr %lio_nport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lio_nport, align 8
  %wwpn_str = getelementptr inbounds %struct.efct_lio_nport, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_tgt_new_nport.__UNIQUE_ID_ddebug346, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %display_name, ptr noundef %wwpn_str) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_scsi_tgt_del_nport(ptr nocapture noundef readonly %efc, ptr noundef %nport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_tgt_del_nport.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_tgt_del_nport, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %pci = getelementptr inbounds %struct.efc, ptr %efc, i32 0, i32 1
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %display_name = getelementptr inbounds %struct.efc_nport, ptr %nport, i32 0, i32 5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_tgt_del_nport.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef %display_name) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_new_initiator(ptr nocapture noundef readnone %efc, ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 52) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ptr = getelementptr inbounds %struct.efct_lio_wq_data, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %node, ptr %ptr, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %call7.i.i, align 8
  %work = getelementptr inbounds %struct.efct_lio_wq_data, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #13
  %7 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.efct_lio_wq_data, ptr %call7.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @efct_scsi_new_initiator.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry6 = getelementptr inbounds %struct.efct_lio_wq_data, ptr %call7.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.efct_lio_wq_data, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry6, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.efct_lio_wq_data, ptr %call7.i.i, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @efct_lio_setup_session, ptr %func, align 4
  %11 = load ptr, ptr @lio_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %work) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_lio_setup_session(ptr noundef %work) #0 align 64 {
entry:
  %a.i = alloca [8 x i8], align 8
  %wwpn = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %ptr = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wwpn) #13
  %nport.i = getelementptr inbounds %struct.efc_node, ptr %3, i32 0, i32 2
  %4 = call ptr @memset(ptr %wwpn, i32 255, i32 32)
  %5 = ptrtoint ptr %nport.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nport.i, align 4
  %wwpn1.i = getelementptr inbounds %struct.efc_nport, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %wwpn1.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %wwpn1.i, align 8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %efct_lio_lock.i = getelementptr inbounds %struct.efct, ptr %12, i32 0, i32 11, i32 11
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %efct_lio_lock.i) #13
  %vport_list.i = getelementptr inbounds %struct.efct, ptr %12, i32 0, i32 11, i32 10
  %13 = ptrtoint ptr %vport_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vport_list.i, align 8
  %cmp16.not56.i = icmp eq ptr %14, %vport_list.i
  br i1 %cmp16.not56.i, label %entry.efct_get_vport_tpg.exit.thread_crit_edge, label %for.body.lr.ph.i

entry.efct_get_vport_tpg.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_get_vport_tpg.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not.i = icmp eq i64 %8, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %vport.057.i = phi ptr [ %14, %for.body.lr.ph.i ], [ %next.058.i, %for.inc.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %vport.057.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %next.058.i = load ptr, ptr %vport.057.i, align 4
  %lio_vport18.i = getelementptr inbounds %struct.efct_lio_vport_list_t, ptr %vport.057.i, i32 0, i32 1
  %16 = ptrtoint ptr %lio_vport18.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lio_vport18.i, align 4
  %tobool19.not.i = icmp eq ptr %17, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool19.not.i
  br i1 %or.cond.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true20.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true20.i:                                ; preds = %for.body.i
  %npiv_wwpn.i = getelementptr inbounds %struct.efct_lio_vport, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %npiv_wwpn.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %npiv_wwpn.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %8)
  %cmp21.i = icmp eq i64 %19, %8
  br i1 %cmp21.i, label %do.body23.i, label %land.lhs.true20.i.for.inc.i_crit_edge

land.lhs.true20.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.body23.i:                                      ; preds = %land.lhs.true20.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_get_vport_tpg.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_setup_session, %if.then30.i)) #13
          to label %efct_get_vport_tpg.exit [label %if.then30.i], !srcloc !379

if.then30.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %12, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_get_vport_tpg.__UNIQUE_ID_ddebug344, ptr noundef %dev.i, ptr noundef nonnull @.str.47) #13
  br label %efct_get_vport_tpg.exit

for.inc.i:                                        ; preds = %land.lhs.true20.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp16.not.i = icmp eq ptr %next.058.i, %vport_list.i
  br i1 %cmp16.not.i, label %for.inc.i.efct_get_vport_tpg.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.efct_get_vport_tpg.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %efct_get_vport_tpg.exit.thread

efct_get_vport_tpg.exit.thread:                   ; preds = %for.inc.i.efct_get_vport_tpg.exit.thread_crit_edge, %entry.efct_get_vport_tpg.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %efct_lio_lock.i, i32 noundef %call3.i) #13
  br label %if.else

efct_get_vport_tpg.exit:                          ; preds = %if.then30.i, %do.body23.i
  %tpg33.i = getelementptr inbounds %struct.efct_lio_vport, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %tpg33.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tpg33.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %efct_lio_lock.i, i32 noundef %call3.i) #13
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %efct_get_vport_tpg.exit.if.else_crit_edge, label %efct_get_vport_tpg.exit.if.end10_crit_edge

efct_get_vport_tpg.exit.if.end10_crit_edge:       ; preds = %efct_get_vport_tpg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

efct_get_vport_tpg.exit.if.else_crit_edge:        ; preds = %efct_get_vport_tpg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.else:                                          ; preds = %efct_get_vport_tpg.exit.if.else_crit_edge, %efct_get_vport_tpg.exit.thread
  %tpg3 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 11, i32 9
  %24 = ptrtoint ptr %tpg3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tpg3, align 4
  %tobool4.not = icmp eq ptr %25, null
  br i1 %tobool4.not, label %do.end, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #16
  br label %cleanup

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %efct_get_vport_tpg.exit.if.end10_crit_edge
  %se_tpg.0 = phi ptr [ %23, %efct_get_vport_tpg.exit.if.end10_crit_edge ], [ %25, %if.else.if.end10_crit_edge ]
  %call11 = tail call i64 @efc_node_get_wwpn(ptr noundef %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a.i) #13
  %28 = ptrtoint ptr %a.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call11, ptr %a.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %wwpn, i32 noundef 32, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.38, ptr noundef nonnull %a.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a.i) #13
  %call14 = call ptr @target_setup_session(ptr noundef nonnull %se_tpg.0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %wwpn, ptr noundef %3, ptr noundef nonnull @efct_session_cb) #13
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.40) #16
  call void @kfree(ptr noundef %add.ptr) #13
  call void @efc_scsi_sess_reg_complete(ptr noundef %3, i32 noundef -5) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %tgt_node23 = getelementptr inbounds %struct.efc_node, ptr %3, i32 0, i32 16
  %31 = ptrtoint ptr %tgt_node23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tgt_node23, align 8
  %port_fc_id = getelementptr inbounds %struct.efct_node, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %port_fc_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port_fc_id, align 4
  %node_fc_id = getelementptr inbounds %struct.efct_node, ptr %32, i32 0, i32 10
  %35 = ptrtoint ptr %node_fc_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %node_fc_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_setup_session.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_setup_session, %if.then31)) #13
          to label %do.end36 [label %if.then31], !srcloc !379

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %conv24 = zext i32 %36 to i64
  %conv = zext i32 %34 to i64
  %shl = shl nuw i64 %conv, 32
  %or = or i64 %shl, %conv24
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_setup_session.__UNIQUE_ID_ddebug348, ptr noundef %dev33, ptr noundef nonnull @.str.42, ptr noundef %call14, ptr noundef %3, i64 noundef %or) #13
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %if.end22
  %lookup = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 23
  %call38 = call ptr @xa_store(ptr noundef %lookup, i32 noundef %36, ptr noundef %32, i32 noundef 3264) #13
  %39 = ptrtoint ptr %call38 to i32
  %and.i.i.i = and i32 %39, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp ne i32 %and.i.i.i, 2
  %cmp.i.i = icmp ult ptr %call38, inttoptr (i32 -16378 to ptr)
  %tobool40.not100 = icmp ult ptr %call38, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i = or i1 %cmp.i.i, %cmp.i.i.i
  %tobool40.not = or i1 %tobool40.not100, %not.spec.select.i.i
  br i1 %tobool40.not, label %do.end36.if.end47_crit_edge, label %do.end44

do.end36.if.end47_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

do.end44:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev46, ptr noundef nonnull @.str.44) #16
  br label %if.end47

if.end47:                                         ; preds = %do.end44, %do.end36.if.end47_crit_edge
  call void @efc_scsi_sess_reg_complete(ptr noundef %3, i32 noundef 0) #13
  %initiator_count = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 11, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %initiator_count, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !380
  call void @llvm.prefetch.p0(ptr %initiator_count, i32 1, i32 3, i32 1) #13
  %42 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %initiator_count, ptr %initiator_count, i32 1, ptr elementtype(i32) %initiator_count) #13, !srcloc !381
  %asmresult.i.i.i = extractvalue { i32, i32 } %42, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !382
  %watermark_max = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 11, i32 7
  %43 = ptrtoint ptr %watermark_max to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %watermark_max, align 4
  %mul.neg = mul i32 %asmresult.i.i.i, -8
  %sub = add i32 %mul.neg, %44
  %watermark_min = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 11, i32 6
  %45 = ptrtoint ptr %watermark_min to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %watermark_min, align 8
  %47 = call i32 @llvm.smax.i32(i32 %46, i32 %sub)
  %io_high_watermark = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 11, i32 4
  %call.i.i95 = call zeroext i1 @__kasan_check_write(ptr noundef %io_high_watermark, i32 noundef 4) #13
  %48 = ptrtoint ptr %io_high_watermark to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %47, ptr %io_high_watermark, align 4
  call void @kfree(ptr noundef %add.ptr) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end19, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wwpn) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_del_initiator(ptr nocapture noundef readnone %efc, ptr noundef %node, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tgt_node2 = getelementptr inbounds %struct.efc_node, ptr %node, i32 0, i32 16
  %4 = ptrtoint ptr %tgt_node2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tgt_node2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reason)
  %cmp = icmp eq i32 %reason, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 52) #17
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %node_fc_id = getelementptr inbounds %struct.efct_node, ptr %5, i32 0, i32 10
  %9 = ptrtoint ptr %node_fc_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %node_fc_id, align 4
  %lookup = getelementptr inbounds %struct.efct, ptr %3, i32 0, i32 23
  %call10 = tail call ptr @xa_erase(ptr noundef %lookup, i32 noundef %10) #13
  %ptr = getelementptr inbounds %struct.efct_lio_wq_data, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %node, ptr %ptr, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %call7.i.i, align 8
  %work = getelementptr inbounds %struct.efct_lio_wq_data, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #13
  %13 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.efct_lio_wq_data, ptr %call7.i.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @efct_scsi_del_initiator.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry16 = getelementptr inbounds %struct.efct_lio_wq_data, ptr %call7.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.efct_lio_wq_data, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry16, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.efct_lio_wq_data, ptr %call7.i.i, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @efct_lio_remove_session, ptr %func, align 4
  %17 = load ptr, ptr @lio_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %work) #13
  %initiator_count = getelementptr inbounds %struct.efct, ptr %3, i32 0, i32 11, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %initiator_count, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !383
  tail call void @llvm.prefetch.p0(ptr %initiator_count, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %initiator_count, ptr %initiator_count, i32 1, ptr elementtype(i32) %initiator_count) #13, !srcloc !384
  %asmresult.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !385
  %watermark_max = getelementptr inbounds %struct.efct, ptr %3, i32 0, i32 11, i32 7
  %19 = ptrtoint ptr %watermark_max to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %watermark_max, align 4
  %mul.neg = mul i32 %asmresult.i.i.i, -8
  %sub = add i32 %mul.neg, %20
  %watermark_min = getelementptr inbounds %struct.efct, ptr %3, i32 0, i32 11, i32 6
  %21 = ptrtoint ptr %watermark_min to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %watermark_min, align 8
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 %sub)
  %io_high_watermark = getelementptr inbounds %struct.efct, ptr %3, i32 0, i32 11, i32 4
  %call.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_high_watermark, i32 noundef 4) #13
  %24 = ptrtoint ptr %io_high_watermark to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %23, ptr %io_high_watermark, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end7 ], [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_lio_remove_session(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %ptr = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 4
  %tgt_node2 = getelementptr inbounds %struct.efc_node, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %tgt_node2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tgt_node2, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #16
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  tail call void @efc_scsi_del_initiator_complete(ptr noundef %9, ptr noundef %3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %session = getelementptr inbounds %struct.efct_node, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %session, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_remove_session.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_remove_session, %if.then8)) #13
          to label %do.end13 [label %if.then8], !srcloc !379

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_remove_session.__UNIQUE_ID_ddebug349, ptr noundef %dev10, ptr noundef nonnull @.str.52, ptr noundef %11, ptr noundef %3) #13
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %if.end
  tail call void @target_stop_session(ptr noundef %11) #13
  tail call void @target_wait_for_sess_cmds(ptr noundef %11) #13
  tail call void @target_remove_session(ptr noundef %11) #13
  %14 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %session, align 4
  %15 = ptrtoint ptr %tgt_node2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %tgt_node2, align 8
  %ref = getelementptr inbounds %struct.efct_node, ptr %5, i32 0, i32 1
  %release = getelementptr inbounds %struct.efct_node, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !386
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #13
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #13, !srcloc !387
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !388

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #13
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !389
  tail call void %17(ptr noundef %ref) #13
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #13
  br label %cleanup

cleanup:                                          ; preds = %kref_put.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_scsi_recv_cmd(ptr noundef %io, i64 noundef %lun, ptr noundef %cdb, i32 noundef %cdb_len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tgt_io = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %2 = call ptr @memset(ptr %tgt_io, i32 0, i32 592)
  %state = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 5
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %state, align 8
  %ios_in_use = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 11, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ios_in_use, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !380
  tail call void @llvm.prefetch.p0(ptr %ios_in_use, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ios_in_use, ptr %ios_in_use, i32 1, ptr elementtype(i32) %ios_in_use) #13, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !382
  %target_io_timer_sec = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %target_io_timer_sec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %target_io_timer_sec, align 8
  %timeout = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 44
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %timeout, align 8
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end20.sink.split_crit_edge

entry.if.end20.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.sink.split

if.else:                                          ; preds = %entry
  %and4 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else8, label %if.else.if.end20.sink.split_crit_edge

if.else.if.end20.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.sink.split

if.else8:                                         ; preds = %if.else
  %and9 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else13, label %if.else8.if.end20.sink.split_crit_edge

if.else8.if.end20.sink.split_crit_edge:           ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.sink.split

if.else13:                                        ; preds = %if.else8
  %and14 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else13.if.end20_crit_edge, label %if.else13.if.end20.sink.split_crit_edge

if.else13.if.end20.sink.split_crit_edge:          ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.sink.split

if.else13.if.end20_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.end20.sink.split:                              ; preds = %if.else13.if.end20.sink.split_crit_edge, %if.else8.if.end20.sink.split_crit_edge, %if.else.if.end20.sink.split_crit_edge, %entry.if.end20.sink.split_crit_edge
  %.sink = phi i32 [ 32, %entry.if.end20.sink.split_crit_edge ], [ 33, %if.else.if.end20.sink.split_crit_edge ], [ 34, %if.else8.if.end20.sink.split_crit_edge ], [ 36, %if.else13.if.end20.sink.split_crit_edge ]
  %task_attr7 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 3
  %8 = ptrtoint ptr %task_attr7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %task_attr7, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else13.if.end20_crit_edge
  %and21 = and i32 %flags, 3
  %switch.tableidx = add nsw i32 %and21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 3
  br i1 %9, label %switch.lookup, label %if.end20.sw.epilog_crit_edge

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.efct_scsi_recv_cmd, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep118 = getelementptr inbounds [3 x ptr], ptr @switch.table.efct_scsi_recv_cmd.163, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep118 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load119 = load ptr, ptr %switch.gep118, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end20.sw.epilog_crit_edge
  %.sink117 = phi i32 [ %switch.load, %switch.lookup ], [ 3, %if.end20.sw.epilog_crit_edge ]
  %ddir.0 = phi ptr [ %switch.load119, %switch.lookup ], [ @.str.20, %if.end20.sw.epilog_crit_edge ]
  %ddir27 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 2
  %12 = ptrtoint ptr %ddir27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink117, ptr %ddir27, align 8
  %lun28 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 4
  %13 = ptrtoint ptr %lun28 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %lun, ptr %lun28, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_recv_cmd.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_recv_cmd, %if.then33)) #13
          to label %do.end [label %if.then33], !srcloc !379

if.then33:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %18 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %19, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %20 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %22 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %24 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %26 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_tag, align 8
  %28 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cdb, align 1
  %conv = zext i8 %29 to i32
  %exp_xfer_len = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 16
  %30 = ptrtoint ptr %exp_xfer_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %exp_xfer_len, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_recv_cmd.__UNIQUE_ID_ddebug350, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %display_name, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %conv, ptr noundef nonnull %ddir.0, i32 noundef %31) #13
  br label %do.end

do.end:                                           ; preds = %if.then33, %sw.epilog
  %node36 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %32 = ptrtoint ptr %node36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %node36, align 4
  %session = getelementptr inbounds %struct.efct_node, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %session, align 4
  %tobool37.not = icmp eq ptr %35, null
  br i1 %tobool37.not, label %do.end41, label %if.end45

do.end41:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.23, ptr noundef %tgt_io) #16
  tail call void @efct_scsi_io_free(ptr noundef %io) #13
  br label %cleanup

if.end45:                                         ; preds = %do.end
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state, align 8
  %or48 = or i32 %39, 2
  store i32 %or48, ptr %state, align 8
  %sense_buffer = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 1
  %40 = ptrtoint ptr %lun28 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %lun28, align 8
  %exp_xfer_len52 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 16
  %42 = ptrtoint ptr %exp_xfer_len52 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %exp_xfer_len52, align 8
  %task_attr53 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 3
  %44 = ptrtoint ptr %task_attr53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %task_attr53, align 4
  %ddir54 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 2
  %46 = ptrtoint ptr %ddir54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ddir54, align 8
  %call55 = tail call i32 @target_init_cmd(ptr noundef %tgt_io, ptr noundef nonnull %35, ptr noundef %sense_buffer, i64 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end63, label %do.end60

do.end60:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev62, ptr noundef nonnull @.str.25, ptr noundef %tgt_io) #16
  tail call void @efct_scsi_io_free(ptr noundef %io) #13
  br label %cleanup

if.end63:                                         ; preds = %if.end45
  %call64 = tail call i32 @target_submit_prep(ptr noundef %tgt_io, ptr noundef %cdb, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @target_submit(ptr noundef %tgt_io) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.end63.cleanup_crit_edge, %do.end60, %do.end41
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efct_scsi_io_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_init_cmd(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_submit_prep(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_submit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_recv_tmf(ptr noundef %tmfio, i32 noundef %lun, i32 noundef %cmd, ptr noundef %io_to_abort, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tmfio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tmfio, align 8
  %tgt_io = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 15
  %2 = call ptr @memset(ptr %tgt_io, i32 0, i32 592)
  %state = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 15, i32 5
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4096, ptr %state, align 8
  %ios_in_use = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 11, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ios_in_use, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !380
  tail call void @llvm.prefetch.p0(ptr %ios_in_use, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ios_in_use, ptr %ios_in_use, i32 1, ptr elementtype(i32) %ios_in_use) #13, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !382
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_recv_tmf.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_recv_tmf, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %tmfio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tmfio, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 3
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %10, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 1
  %11 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 8
  %13 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 9
  %15 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 10
  %17 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_tag, align 8
  %tmf = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 15, i32 6
  %19 = ptrtoint ptr %tmf to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tmf, align 4
  %conv = zext i8 %20 to i32
  %display_name8 = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 2
  %21 = ptrtoint ptr %display_name8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %display_name8, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_recv_tmf.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %display_name, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %conv, ptr noundef %22, i32 noundef %cmd, i32 noundef %lun) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %switch.tableidx = add i32 %cmd, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %23 = icmp ult i32 %switch.tableidx, 8
  br i1 %23, label %switch.hole_check, label %do.end.tmf_fail_crit_edge

do.end.tmf_fail_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %tmf_fail

switch.hole_check:                                ; preds = %do.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -19, %switch.maskindex
  %24 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %switch.lobit.not = icmp eq i8 %24, 0
  br i1 %switch.lobit.not, label %switch.hole_check.tmf_fail_crit_edge, label %switch.lookup

switch.hole_check.tmf_fail_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #15
  br label %tmf_fail

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.efct_scsi_recv_tmf, i32 0, i32 %switch.tableidx
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %25)
  %switch.load = load i8, ptr %switch.gep, align 1
  %tmf16 = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 15, i32 6
  %26 = ptrtoint ptr %tmf16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %switch.load, ptr %tmf16, align 4
  %conv17 = zext i32 %lun to i64
  %lun19 = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 15, i32 4
  %27 = ptrtoint ptr %lun19 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv17, ptr %lun19, align 8
  %io_to_abort21 = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 15, i32 7
  %28 = ptrtoint ptr %io_to_abort21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %io_to_abort, ptr %io_to_abort21, align 8
  %node22 = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 3
  %29 = ptrtoint ptr %node22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %node22, align 4
  %session = getelementptr inbounds %struct.efct_node, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %session, align 4
  %tobool23.not = icmp eq ptr %32, null
  br i1 %tobool23.not, label %switch.lookup.cleanup_crit_edge, label %if.end25

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %switch.lookup
  %init_task_tag28 = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 8
  %33 = ptrtoint ptr %init_task_tag28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %init_task_tag28, align 8
  %conv29 = zext i32 %34 to i64
  %call30 = tail call i32 @target_submit_tmr(ptr noundef %tgt_io, ptr noundef nonnull %32, ptr noundef null, i64 noundef %conv17, ptr noundef %tgt_io, i8 noundef zeroext %switch.load, i32 noundef 2592, i64 noundef %conv29, i32 noundef 2) #13
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state, align 8
  %or33 = or i32 %36, 8192
  store i32 %or33, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool34.not = icmp eq i32 %call30, 0
  br i1 %tobool34.not, label %if.end25.cleanup_crit_edge, label %if.end25.tmf_fail_crit_edge

if.end25.tmf_fail_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %tmf_fail

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

tmf_fail:                                         ; preds = %if.end25.tmf_fail_crit_edge, %switch.hole_check.tmf_fail_crit_edge, %do.end.tmf_fail_crit_edge
  %call37 = tail call i32 @efct_scsi_send_tmf_resp(ptr noundef %tmfio, i32 noundef 4, ptr noundef null, ptr noundef nonnull @efct_lio_null_tmf_done, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %tmf_fail, %if.end25.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_submit_tmr(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_send_tmf_resp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_null_tmf_done(ptr noundef %tmfio, i32 noundef %scsi_status, i32 noundef %flags, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_null_tmf_done.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_null_tmf_done, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %tmfio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tmfio, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 3
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %5, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 1
  %6 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 8
  %8 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 9
  %10 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 10
  %12 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_tag, align 8
  %tgt_io = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 15
  %tmf = getelementptr inbounds %struct.efct_io, ptr %tmfio, i32 0, i32 15, i32 6
  %14 = ptrtoint ptr %tmf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tmf, align 4
  %conv = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_null_tmf_done.__UNIQUE_ID_ddebug337, ptr noundef %dev, ptr noundef nonnull @.str.54, ptr noundef %display_name, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %conv, ptr noundef %tgt_io, i32 noundef %scsi_status, i32 noundef %flags) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @efct_scsi_io_complete(ptr noundef %tmfio) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_tgt_driver_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @target_register_template(ptr noundef nonnull @efct_lio_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @target_register_template(ptr noundef nonnull @efct_lio_npiv_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call2) #16
  tail call void @target_unregister_template(ptr noundef nonnull @efct_lio_ops) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_register_template(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_unregister_template(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_tgt_driver_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @target_unregister_template(ptr noundef nonnull @efct_lio_ops) #13
  tail call void @target_unregister_template(ptr noundef nonnull @efct_lio_npiv_ops) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @efc_node_get_wwpn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @target_setup_session(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_session_cb(ptr nocapture noundef readnone %se_tpg, ptr noundef %se_sess, ptr noundef %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 132) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ref = getelementptr inbounds %struct.efct_node, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #13
  %5 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %ref, align 8
  %release = getelementptr inbounds %struct.efct_node, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @_efct_tgt_node_free, ptr %release, align 4
  %session = getelementptr inbounds %struct.efct_node, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %se_sess, ptr %session, align 8
  %tgt_node1 = getelementptr inbounds %struct.efc_node, ptr %private, i32 0, i32 16
  %8 = ptrtoint ptr %tgt_node1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %tgt_node1, align 8
  %efct2 = getelementptr inbounds %struct.efct_node, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %efct2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %efct2, align 8
  %node3 = getelementptr inbounds %struct.efct_node, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %node3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %private, ptr %node3, align 4
  %rnode = getelementptr inbounds %struct.efc_node, ptr %private, i32 0, i32 17
  %fc_id = getelementptr inbounds %struct.efc_node, ptr %private, i32 0, i32 17, i32 2
  %11 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fc_id, align 4
  %node_fc_id = getelementptr inbounds %struct.efct_node, ptr %call7.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %node_fc_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %node_fc_id, align 4
  %nport = getelementptr inbounds %struct.efc_node, ptr %private, i32 0, i32 2
  %14 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nport, align 4
  %fc_id4 = getelementptr inbounds %struct.efc_nport, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %fc_id4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fc_id4, align 4
  %port_fc_id = getelementptr inbounds %struct.efct_node, ptr %call7.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %port_fc_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %port_fc_id, align 8
  %indicator = getelementptr inbounds %struct.efc_nport, ptr %15, i32 0, i32 16
  %19 = ptrtoint ptr %indicator to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %indicator, align 8
  %vpi = getelementptr inbounds %struct.efct_node, ptr %call7.i.i, i32 0, i32 11
  %21 = ptrtoint ptr %vpi to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %vpi, align 8
  %22 = ptrtoint ptr %rnode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rnode, align 4
  %rpi = getelementptr inbounds %struct.efct_node, ptr %call7.i.i, i32 0, i32 12
  %24 = ptrtoint ptr %rpi to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rpi, align 4
  %active_ios_lock = getelementptr inbounds %struct.efct_node, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %active_ios_lock, ptr noundef nonnull @.str.49, ptr noundef nonnull @efct_session_cb.__key, i16 noundef signext 3) #13
  %active_ios = getelementptr inbounds %struct.efct_node, ptr %call7.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %active_ios to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %active_ios, ptr %active_ios, align 8
  %prev.i = getelementptr inbounds %struct.efct_node, ptr %call7.i.i, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %active_ios, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_scsi_sess_reg_complete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_store(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_efct_tgt_node_free(ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %arg, i32 -8
  %node1 = getelementptr i8, ptr %arg, i32 12
  %0 = ptrtoint ptr %node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @efc_scsi_del_initiator_complete(ptr noundef %3, ptr noundef %1) #13
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_scsi_del_initiator_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_stop_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_wait_for_sess_cmds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_remove_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @efct_scsi_io_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @efct_lio_get_fabric_wwn(ptr nocapture noundef readonly %se_tpg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nport = getelementptr inbounds %struct.efct_lio_tpg, ptr %se_tpg, i32 0, i32 1
  %0 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nport, align 4
  %wwpn_str = getelementptr inbounds %struct.efct_lio_nport, ptr %1, i32 0, i32 1
  ret ptr %wwpn_str
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @efct_lio_get_tag(ptr nocapture noundef readonly %se_tpg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tpgt = getelementptr inbounds %struct.efct_lio_tpg, ptr %se_tpg, i32 0, i32 4
  %0 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tpgt, align 4
  ret i16 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efct_lio_check_demo_mode(ptr nocapture noundef readnone %se_tpg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efct_lio_check_demo_mode_cache(ptr nocapture noundef readnone %se_tpg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efct_lio_check_demo_write_protect(ptr nocapture noundef readonly %se_tpg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %demo_mode_write_protect = getelementptr inbounds %struct.efct_lio_tpg, ptr %se_tpg, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_write_protect, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efct_lio_check_prod_write_protect(ptr nocapture noundef readonly %se_tpg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %prod_mode_write_protect = getelementptr inbounds %struct.efct_lio_tpg, ptr %se_tpg, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %prod_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prod_mode_write_protect, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efct_lio_check_demo_mode_login_only(ptr nocapture noundef readonly %stpg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %demo_mode_login_only = getelementptr inbounds %struct.efct_lio_tpg, ptr %stpg, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %demo_mode_login_only to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_login_only, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efct_lio_tpg_get_inst_index(ptr nocapture noundef readnone %se_tpg) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_check_stop_free(ptr noundef %se_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %se_cmd, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %or = or i32 %1, 64
  store i32 %or, ptr %state, align 8
  %call = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_lio_release_cmd(ptr noundef %se_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %se_cmd, i32 -72
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 8
  %state = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %se_cmd, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %or7 = or i32 %3, -1073741824
  store i32 %or7, ptr %state, align 8
  tail call void @efct_scsi_io_complete(ptr noundef %add.ptr3) #13
  %ios_in_use = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 11, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ios_in_use, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !383
  tail call void @llvm.prefetch.p0(ptr %ios_in_use, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ios_in_use, ptr %ios_in_use, i32 1, ptr elementtype(i32) %ios_in_use) #13, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !385
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_lio_close_session(ptr noundef %se_sess) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %se_sess, i32 0, i32 6
  %0 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fabric_sess_ptr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_close_session.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_close_session, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @efct_lio_close_session.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.56, ptr noundef %se_sess, ptr noundef %1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %do.body5, label %if.end21

do.body5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_close_session.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_close_session, %if.then17)) #13
          to label %cleanup [label %if.then17], !srcloc !379

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @efct_lio_close_session.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.57) #13
  br label %cleanup

if.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @efc_node_post_shutdown(ptr noundef nonnull %1, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then17, %do.body5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efct_lio_sess_get_index(ptr nocapture noundef readnone %se_sess) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_write_pending(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %cmd, i32 -72
  %sgl4 = getelementptr i8, ptr %cmd, i32 -16
  %0 = ptrtoint ptr %sgl4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgl4, align 8
  %state = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %or = or i32 %3, 8
  store i32 %or, ptr %state, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_write_pending.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_write_pending, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %node = getelementptr i8, ptr %cmd, i32 -60
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %9, i32 0, i32 8
  %instance_index = getelementptr i8, ptr %cmd, i32 -68
  %10 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr i8, ptr %cmd, i32 -32
  %12 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr i8, ptr %cmd, i32 -28
  %14 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr i8, ptr %cmd, i32 -24
  %16 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_tag, align 8
  %transport_state = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 34
  %18 = ptrtoint ptr %transport_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %transport_state, align 4
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %20 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %se_cmd_flags, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_write_pending.__UNIQUE_ID_ddebug323, ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef %display_name, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %seg_cnt = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 9
  %22 = ptrtoint ptr %seg_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %seg_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp eq i32 %23, 0
  br i1 %cmp, label %if.then8, label %do.end.if.end40_crit_edge

do.end.if.end40_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then8:                                         ; preds = %do.end
  %t_data_nents = getelementptr %struct.se_cmd, ptr %cmd, i32 0, i32 41
  %24 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %t_data_nents, align 4
  %26 = ptrtoint ptr %seg_cnt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %seg_cnt, align 8
  %cur_seg = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 10
  %27 = ptrtoint ptr %cur_seg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %cur_seg, align 4
  %28 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr3, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %t_data_sg.i = getelementptr i8, ptr %cmd, i32 348
  %32 = ptrtoint ptr %t_data_sg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %t_data_sg.i, align 4
  %data_direction.i = getelementptr i8, ptr %cmd, i32 28
  %34 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_direction.i, align 4
  %call.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev.i, ptr noundef %33, i32 noundef %25, i32 noundef %35, i32 noundef 0) #13
  %seg_map_cnt.i = getelementptr i8, ptr %cmd, i32 564
  %36 = ptrtoint ptr %seg_map_cnt.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i, ptr %seg_map_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %do.body13, label %if.then8.if.end40_crit_edge

if.then8.if.end40_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

do.body13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_write_pending.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_write_pending, %if.then25)) #13
          to label %cleanup [label %if.then25], !srcloc !379

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr3, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %node29 = getelementptr i8, ptr %cmd, i32 -60
  %41 = ptrtoint ptr %node29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %node29, align 4
  %display_name30 = getelementptr inbounds %struct.efct_node, ptr %42, i32 0, i32 8
  %instance_index32 = getelementptr i8, ptr %cmd, i32 -68
  %43 = ptrtoint ptr %instance_index32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %instance_index32, align 4
  %init_task_tag33 = getelementptr i8, ptr %cmd, i32 -32
  %45 = ptrtoint ptr %init_task_tag33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %init_task_tag33, align 8
  %tgt_task_tag34 = getelementptr i8, ptr %cmd, i32 -28
  %47 = ptrtoint ptr %tgt_task_tag34 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tgt_task_tag34, align 4
  %hw_tag35 = getelementptr i8, ptr %cmd, i32 -24
  %49 = ptrtoint ptr %hw_tag35 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hw_tag35, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_write_pending.__UNIQUE_ID_ddebug324, ptr noundef %dev28, ptr noundef nonnull @.str.60, ptr noundef %display_name30, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50) #13
  br label %cleanup

if.end40:                                         ; preds = %if.then8.if.end40_crit_edge, %do.end.if.end40_crit_edge
  %seg_map_cnt = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 8
  %51 = ptrtoint ptr %seg_map_cnt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %seg_map_cnt, align 4
  %cur_seg41 = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 10
  %53 = ptrtoint ptr %cur_seg41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cur_seg41, align 4
  %sub = sub i32 %52, %54
  %sgl_allocated = getelementptr i8, ptr %cmd, i32 -12
  %55 = ptrtoint ptr %sgl_allocated to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sgl_allocated, align 4
  %57 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %56)
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 39
  %58 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %t_data_sg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp45127.not = icmp eq i32 %54, 0
  br i1 %cmp45127.not, label %if.end40.for.cond47.preheader_crit_edge, label %if.end40.for.inc_crit_edge

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  br label %for.inc

if.end40.for.cond47.preheader_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond47.preheader

for.cond47.preheader:                             ; preds = %for.inc.for.cond47.preheader_crit_edge, %if.end40.for.cond47.preheader_crit_edge
  %sg.0.lcssa = phi ptr [ %59, %if.end40.for.cond47.preheader_crit_edge ], [ %call46, %for.inc.for.cond47.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp48130.not = icmp eq i32 %57, 0
  br i1 %cmp48130.not, label %for.cond47.preheader.for.end59_crit_edge, label %for.cond47.preheader.for.body49_crit_edge

for.cond47.preheader.for.body49_crit_edge:        ; preds = %for.cond47.preheader
  br label %for.body49

for.cond47.preheader.for.end59_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end59

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %if.end40.for.inc_crit_edge
  %cnt.0129 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 0, %if.end40.for.inc_crit_edge ]
  %sg.0128 = phi ptr [ %call46, %for.inc.for.inc_crit_edge ], [ %59, %if.end40.for.inc_crit_edge ]
  %inc = add nuw i32 %cnt.0129, 1
  %call46 = tail call ptr @sg_next(ptr noundef %sg.0128) #13
  %60 = ptrtoint ptr %cur_seg41 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cur_seg41, align 4
  %cmp45 = icmp ult i32 %inc, %61
  br i1 %cmp45, label %for.inc.for.inc_crit_edge, label %for.inc.for.cond47.preheader_crit_edge

for.inc.for.cond47.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond47.preheader

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %for.cond47.preheader.for.body49_crit_edge
  %length.0133 = phi i64 [ %add, %for.body49.for.body49_crit_edge ], [ 0, %for.cond47.preheader.for.body49_crit_edge ]
  %cnt.1132 = phi i32 [ %inc57, %for.body49.for.body49_crit_edge ], [ 0, %for.cond47.preheader.for.body49_crit_edge ]
  %sg.1131 = phi ptr [ %call58, %for.body49.for.body49_crit_edge ], [ %sg.0.lcssa, %for.cond47.preheader.for.body49_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.1131, i32 0, i32 3
  %62 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_address, align 4
  %arrayidx = getelementptr %struct.efct_scsi_sgl, ptr %1, i32 %cnt.1132
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx, align 4
  %dif_addr = getelementptr %struct.efct_scsi_sgl, ptr %1, i32 %cnt.1132, i32 1
  %65 = ptrtoint ptr %dif_addr to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %dif_addr, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.1131, i32 0, i32 4
  %66 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_length, align 4
  %len = getelementptr %struct.efct_scsi_sgl, ptr %1, i32 %cnt.1132, i32 2
  %68 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %len, align 4
  %conv = zext i32 %67 to i64
  %add = add i64 %length.0133, %conv
  %69 = ptrtoint ptr %cur_seg41 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cur_seg41, align 4
  %inc55 = add i32 %70, 1
  store i32 %inc55, ptr %cur_seg41, align 4
  %inc57 = add nuw i32 %cnt.1132, 1
  %call58 = tail call ptr @sg_next(ptr noundef %sg.1131) #13
  %exitcond.not = icmp eq i32 %inc57, %57
  br i1 %exitcond.not, label %for.body49.for.end59_crit_edge, label %for.body49.for.body49_crit_edge

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body49

for.body49.for.end59_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end59

for.end59:                                        ; preds = %for.body49.for.end59_crit_edge, %for.cond47.preheader.for.end59_crit_edge
  %length.0.lcssa = phi i64 [ 0, %for.cond47.preheader.for.end59_crit_edge ], [ %add, %for.body49.for.end59_crit_edge ]
  %71 = ptrtoint ptr %cur_seg41 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cur_seg41, align 4
  %73 = ptrtoint ptr %seg_cnt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %seg_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp62 = icmp eq i32 %72, %74
  %spec.select = zext i1 %cmp62 to i32
  %call66 = tail call i32 @efct_scsi_recv_wr_data(ptr noundef %add.ptr3, i32 noundef %spec.select, ptr noundef %1, i32 noundef %57, i64 noundef %length.0.lcssa, ptr noundef nonnull @efct_lio_datamove_done, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end59, %if.then25, %do.body13
  %retval.0 = phi i32 [ %call66, %for.end59 ], [ -14, %if.then25 ], [ -14, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efct_lio_set_default_node_attrs(ptr nocapture noundef %nacl) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efct_lio_get_cmd_state(ptr noundef readonly %cmd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %cmd, i32 -72
  %tobool.not = icmp eq ptr %add.ptr3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %state = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_queue_data_in(ptr noundef %cmd) #0 align 64 {
entry:
  %rsp = alloca %struct.efct_scsi_cmd_resp, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %cmd, i32 -72
  %sgl4 = getelementptr i8, ptr %cmd, i32 -16
  %0 = ptrtoint ptr %sgl4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgl4, align 8
  %state = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %or = or i32 %3, 4
  store i32 %or, ptr %state, align 8
  %seg_cnt = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 9
  %4 = ptrtoint ptr %seg_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seg_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end44_crit_edge

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then:                                          ; preds = %entry
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %6 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %t_data_nents = getelementptr %struct.se_cmd, ptr %cmd, i32 0, i32 41
  %8 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_data_nents, align 4
  %10 = ptrtoint ptr %seg_cnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %seg_cnt, align 8
  %cur_seg = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %cur_seg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cur_seg, align 4
  %12 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr3, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %t_data_sg.i = getelementptr i8, ptr %cmd, i32 348
  %16 = ptrtoint ptr %t_data_sg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %t_data_sg.i, align 4
  %data_direction.i = getelementptr i8, ptr %cmd, i32 28
  %18 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_direction.i, align 4
  %call.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev.i, ptr noundef %17, i32 noundef %9, i32 noundef %19, i32 noundef 0) #13
  %seg_map_cnt.i = getelementptr i8, ptr %cmd, i32 564
  %20 = ptrtoint ptr %seg_map_cnt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i, ptr %seg_map_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %do.body, label %if.then5.if.end44_crit_edge

if.then5.if.end44_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

do.body:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_queue_data_in.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_queue_data_in, %if.then14)) #13
          to label %cleanup [label %if.then14], !srcloc !379

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr3, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %node = getelementptr i8, ptr %cmd, i32 -60
  %25 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %26, i32 0, i32 8
  %instance_index = getelementptr i8, ptr %cmd, i32 -68
  %27 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr i8, ptr %cmd, i32 -32
  %29 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr i8, ptr %cmd, i32 -28
  %31 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr i8, ptr %cmd, i32 -24
  %33 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hw_tag, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_queue_data_in.__UNIQUE_ID_ddebug325, ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef %display_name, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34) #13
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rsp) #13
  %35 = call ptr @memset(ptr %rsp, i32 0, i32 28)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_queue_data_in.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_queue_data_in, %if.then28)) #13
          to label %do.end41 [label %if.then28], !srcloc !379

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr3, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %node32 = getelementptr i8, ptr %cmd, i32 -60
  %40 = ptrtoint ptr %node32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %node32, align 4
  %display_name33 = getelementptr inbounds %struct.efct_node, ptr %41, i32 0, i32 8
  %instance_index35 = getelementptr i8, ptr %cmd, i32 -68
  %42 = ptrtoint ptr %instance_index35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %instance_index35, align 4
  %init_task_tag36 = getelementptr i8, ptr %cmd, i32 -32
  %44 = ptrtoint ptr %init_task_tag36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %init_task_tag36, align 8
  %tgt_task_tag37 = getelementptr i8, ptr %cmd, i32 -28
  %46 = ptrtoint ptr %tgt_task_tag37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tgt_task_tag37, align 4
  %hw_tag38 = getelementptr i8, ptr %cmd, i32 -24
  %48 = ptrtoint ptr %hw_tag38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hw_tag38, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_queue_data_in.__UNIQUE_ID_ddebug326, ptr noundef %dev31, ptr noundef nonnull @.str.73, ptr noundef %display_name33, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, ptr noundef %cmd) #13
  br label %do.end41

do.end41:                                         ; preds = %if.then28, %if.else
  %call42 = call i32 @efct_scsi_send_resp(ptr noundef %add.ptr3, i32 noundef 0, ptr noundef nonnull %rsp, ptr noundef nonnull @efct_lio_status_done, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rsp) #13
  br label %cleanup

if.end44:                                         ; preds = %if.then5.if.end44_crit_edge, %entry.if.end44_crit_edge
  %seg_map_cnt = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 8
  %50 = ptrtoint ptr %seg_map_cnt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %seg_map_cnt, align 4
  %cur_seg45 = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 10
  %52 = ptrtoint ptr %cur_seg45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cur_seg45, align 4
  %sub = sub i32 %51, %53
  %sgl_allocated = getelementptr i8, ptr %cmd, i32 -12
  %54 = ptrtoint ptr %sgl_allocated to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sgl_allocated, align 4
  %56 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %55)
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 39
  %transferred_len = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 14
  %data_length52 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end44
  %cnt.0 = phi i32 [ 0, %if.end44 ], [ %inc72, %while.body.while.cond_crit_edge ]
  %length.0 = phi i64 [ 0, %if.end44 ], [ %add70, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0, i32 %56)
  %exitcond.not = icmp eq i32 %cnt.0, %56
  br i1 %exitcond.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.cond
  %57 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %t_data_sg, align 4
  %59 = ptrtoint ptr %cur_seg45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cur_seg45, align 4
  %dma_address = getelementptr %struct.scatterlist, ptr %58, i32 %60, i32 3
  %61 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_address, align 4
  %arrayidx50 = getelementptr %struct.efct_scsi_sgl, ptr %1, i32 %cnt.0
  %63 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx50, align 4
  %dif_addr = getelementptr %struct.efct_scsi_sgl, ptr %1, i32 %cnt.0, i32 1
  %64 = ptrtoint ptr %dif_addr to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %dif_addr, align 4
  %65 = ptrtoint ptr %transferred_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %transferred_len, align 8
  %dma_length = getelementptr %struct.scatterlist, ptr %58, i32 %60, i32 4
  %67 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_length, align 4
  %add = add i32 %68, %66
  %69 = ptrtoint ptr %data_length52 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %data_length52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %70)
  %cmp53.not = icmp ult i32 %add, %70
  %sub57 = sub i32 %70, %66
  %spec.select169 = select i1 %cmp53.not, i32 %68, i32 %sub57
  %71 = getelementptr %struct.efct_scsi_sgl, ptr %1, i32 %cnt.0, i32 2
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %spec.select169, ptr %71, align 4
  %73 = ptrtoint ptr %transferred_len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %transferred_len, align 8
  %add67 = add i32 %74, %spec.select169
  store i32 %add67, ptr %transferred_len, align 8
  %75 = load i32, ptr %71, align 4
  %conv = zext i32 %75 to i64
  %add70 = add i64 %length.0, %conv
  %76 = ptrtoint ptr %cur_seg45 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cur_seg45, align 4
  %inc = add i32 %77, 1
  store i32 %inc, ptr %cur_seg45, align 4
  %inc72 = add i32 %cnt.0, 1
  %78 = ptrtoint ptr %data_length52 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %data_length52, align 4
  %cmp75 = icmp eq i32 %add67, %79
  br i1 %cmp75, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %length.1 = phi i64 [ %add70, %while.body.while.end_crit_edge ], [ %length.0, %while.cond.while.end_crit_edge ]
  %80 = ptrtoint ptr %transferred_len to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %transferred_len, align 8
  %82 = ptrtoint ptr %data_length52 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_length52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp81 = icmp eq i32 %81, %83
  br i1 %cmp81, label %if.then83, label %while.end.if.end86_crit_edge

while.end.if.end86_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end86

if.then83:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %cur_seg45 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cur_seg45, align 4
  %86 = ptrtoint ptr %seg_cnt to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %seg_cnt, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %while.end.if.end86_crit_edge
  %flags.0 = phi i32 [ 1, %if.then83 ], [ 0, %while.end.if.end86_crit_edge ]
  %residual_count = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 13
  %87 = ptrtoint ptr %residual_count to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %residual_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool87.not = icmp eq i32 %88, 0
  %or89 = or i32 %flags.0, 2
  %spec.select = select i1 %tobool87.not, i32 %flags.0, i32 %or89
  %89 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %state, align 8
  %or93 = or i32 %90, 32
  store i32 %or93, ptr %state, align 8
  %call94 = tail call i32 @efct_scsi_send_rd_data(ptr noundef %add.ptr3, i32 noundef %spec.select, ptr noundef %1, i32 noundef %56, i64 noundef %length.1, ptr noundef nonnull @efct_lio_datamove_done, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %do.end41, %if.then14, %do.body
  %retval.0 = phi i32 [ %call94, %if.end86 ], [ %call42, %do.end41 ], [ -11, %if.then14 ], [ -11, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_queue_status(ptr noundef %cmd) #0 align 64 {
entry:
  %rsp = alloca %struct.efct_scsi_cmd_resp, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rsp) #13
  %add.ptr3 = getelementptr i8, ptr %cmd, i32 -72
  %state = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %or = or i32 %1, 256
  store i32 %or, ptr %state, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_queue_status.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_queue_status, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr3, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %node = getelementptr i8, ptr %cmd, i32 -60
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %7, i32 0, i32 8
  %instance_index = getelementptr i8, ptr %cmd, i32 -68
  %8 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr i8, ptr %cmd, i32 -32
  %10 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr i8, ptr %cmd, i32 -28
  %12 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr i8, ptr %cmd, i32 -24
  %14 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_tag, align 8
  %scsi_status = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 1
  %16 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %scsi_status, align 4
  %conv = zext i8 %17 to i32
  %transport_state = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 34
  %18 = ptrtoint ptr %transport_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %transport_state, align 4
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %20 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %se_cmd_flags, align 8
  %scsi_sense_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 2
  %22 = ptrtoint ptr %scsi_sense_length to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %scsi_sense_length, align 2
  %conv7 = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_queue_status.__UNIQUE_ID_ddebug338, ptr noundef %dev, ptr noundef nonnull @.str.75, ptr noundef %display_name, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %conv, i32 noundef %19, i32 noundef %21, i32 noundef %conv7) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %24 = call ptr @memset(ptr %rsp, i32 0, i32 28)
  %scsi_status8 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 1
  %25 = ptrtoint ptr %scsi_status8 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %scsi_status8, align 4
  %27 = ptrtoint ptr %rsp to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %rsp, align 4
  %sense_buffer = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 1
  %sense_data = getelementptr inbounds %struct.efct_scsi_cmd_resp, ptr %rsp, i32 0, i32 4
  %28 = ptrtoint ptr %sense_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sense_buffer, ptr %sense_data, align 4
  %scsi_sense_length12 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 2
  %29 = ptrtoint ptr %scsi_sense_length12 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %scsi_sense_length12, align 2
  %conv13 = zext i16 %30 to i32
  %sense_data_length = getelementptr inbounds %struct.efct_scsi_cmd_resp, ptr %rsp, i32 0, i32 5
  %31 = ptrtoint ptr %sense_data_length to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv13, ptr %sense_data_length, align 4
  %se_cmd_flags14 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %32 = ptrtoint ptr %se_cmd_flags14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %se_cmd_flags14, align 8
  %and = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %residual_count = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 13
  %34 = ptrtoint ptr %residual_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %residual_count, align 8
  %sub = sub i32 0, %35
  br label %if.end24.sink.split

if.else:                                          ; preds = %do.end
  %and18 = and i32 %33, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else.if.end24_crit_edge, label %if.then20

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %residual_count21 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 13
  %36 = ptrtoint ptr %residual_count21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %residual_count21, align 8
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.then20, %if.then16
  %.sink = phi i32 [ %37, %if.then20 ], [ %sub, %if.then16 ]
  %residual22 = getelementptr inbounds %struct.efct_scsi_cmd_resp, ptr %rsp, i32 0, i32 6
  %38 = ptrtoint ptr %residual22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink, ptr %residual22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.else.if.end24_crit_edge
  %call25 = call i32 @efct_scsi_send_resp(ptr noundef %add.ptr3, i32 noundef 0, ptr noundef nonnull %rsp, ptr noundef nonnull @efct_lio_status_done, ptr noundef null) #13
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state, align 8
  %or28 = or i32 %40, 512
  store i32 %or28, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp eq i32 %call25, 0
  br i1 %cmp, label %if.then30, label %if.end24.if.end31_crit_edge

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then30:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %rsp_sent = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 13
  %41 = ptrtoint ptr %rsp_sent to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %rsp_sent, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end24.if.end31_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rsp) #13
  ret i32 %call25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_lio_queue_tm_rsp(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %cmd, i32 -72
  %se_tmr_req = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 22
  %0 = ptrtoint ptr %se_tmr_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tmr_req, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_queue_tm_rsp.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_queue_tm_rsp, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr3, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %node = getelementptr i8, ptr %cmd, i32 -60
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %7, i32 0, i32 8
  %instance_index = getelementptr i8, ptr %cmd, i32 -68
  %8 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr i8, ptr %cmd, i32 -32
  %10 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr i8, ptr %cmd, i32 -28
  %12 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr i8, ptr %cmd, i32 -24
  %14 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_tag, align 8
  %tmf = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %cmd, i32 0, i32 6
  %16 = ptrtoint ptr %tmf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tmf, align 4
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 8
  %conv7 = zext i8 %19 to i32
  %response = getelementptr inbounds %struct.se_tmr_req, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %response, align 1
  %conv8 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_queue_tm_rsp.__UNIQUE_ID_ddebug339, ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef %display_name, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %conv, ptr noundef %cmd, i32 noundef %conv7, i32 noundef %conv8) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %response9 = getelementptr inbounds %struct.se_tmr_req, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %response9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %response9, align 1
  %switch.tableidx = add i8 %23, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %24 = icmp ult i8 %switch.tableidx, 3
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.idx.mult = shl nuw nsw i32 %switch.idx.cast, 1
  %switch.offset = or i32 %switch.idx.mult, 1
  %rspcode.0 = select i1 %24, i32 %switch.offset, i32 4
  %call15 = tail call i32 @efct_scsi_send_tmf_resp(ptr noundef %add.ptr3, i32 noundef %rspcode.0, ptr noundef null, ptr noundef nonnull @efct_lio_tmf_done, ptr noundef null) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_lio_aborted_task(ptr noundef %se_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %se_cmd, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %or = or i32 %1, 536870912
  store i32 %or, ptr %state, align 8
  %rsp_sent = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %se_cmd, i32 0, i32 13
  %2 = ptrtoint ptr %rsp_sent to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rsp_sent, align 1, !range !390
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr3 = getelementptr i8, ptr %se_cmd, i32 -72
  %aborting = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %se_cmd, i32 0, i32 12
  %4 = ptrtoint ptr %aborting to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %aborting, align 4
  %err = getelementptr inbounds %struct.efct_scsi_tgt_io, ptr %se_cmd, i32 0, i32 11
  %5 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %err, align 8
  %call = tail call i32 @efct_scsi_tgt_abort_io(ptr noundef %add.ptr3, ptr noundef nonnull @efct_lio_abort_tgt_cb, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @efct_lio_make_nport(ptr nocapture noundef readnone %tf, ptr nocapture noundef readnone %group, ptr noundef %name) #0 align 64 {
entry:
  %a.i = alloca [8 x i8], align 8
  %b.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.i) #13
  %0 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 7
  %7 = ptrtoint ptr %b.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %b.i, align 8
  %call16.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %name, ptr noundef nonnull @.str.85, ptr noundef nonnull %b.i, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call16.i)
  %cmp.not.i = icmp eq i32 %call16.i, 8
  br i1 %cmp.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %b.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %b.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ @efct_devices, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i29 = icmp eq ptr %.pn.i, @efct_devices
  br i1 %cmp.not.i29, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %hw.i = getelementptr i8, ptr %.pn.i, i32 148
  %call.i = call i64 @efct_get_wwpn(ptr noundef %hw.i) #13
  %cmp1.i = icmp eq i64 %call.i, %9
  br i1 %cmp1.i, label %efct_find_wwpn.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

efct_find_wwpn.exit:                              ; preds = %for.body.i
  %efct.0.le.i = getelementptr i8, ptr %.pn.i, i32 -204
  %tobool3.not = icmp eq ptr %efct.0.le.i, null
  br i1 %tobool3.not, label %efct_find_wwpn.exit.do.end_crit_edge, label %if.end7

efct_find_wwpn.exit.do.end_crit_edge:             ; preds = %efct_find_wwpn.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %efct_find_wwpn.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name) #16
  br label %cleanup

if.end7:                                          ; preds = %efct_find_wwpn.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 304) #17
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %efct13 = getelementptr inbounds %struct.efct_lio_nport, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %efct13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %efct.0.le.i, ptr %efct13, align 8
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %9, ptr %call7.i.i, align 8
  %wwpn_str = getelementptr inbounds %struct.efct_lio_nport, ptr %call7.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a.i) #13
  %14 = ptrtoint ptr %a.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %9, ptr %a.i, align 8
  %call.i31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %wwpn_str, i32 noundef 32, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.83, ptr noundef nonnull %a.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a.i) #13
  %lio_nport16 = getelementptr i8, ptr %.pn.i, i32 44
  %15 = ptrtoint ptr %lio_nport16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %lio_nport16, align 8
  %nport_wwn = getelementptr inbounds %struct.efct_lio_nport, ptr %call7.i.i, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ %nport_wwn, %if.end12 ], [ inttoptr (i32 -6 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %if.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_lio_drop_nport(ptr nocapture noundef readonly %wwn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %efct1 = getelementptr i8, ptr %wwn, i32 256
  %0 = ptrtoint ptr %efct1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efct1, align 8
  %lio_nport2 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 11, i32 8
  %2 = ptrtoint ptr %lio_nport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lio_nport2, align 8
  tail call void @kfree(ptr noundef %3) #13
  %4 = ptrtoint ptr %lio_nport2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %lio_nport2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @efct_lio_make_tpg(ptr noundef %wwn, ptr noundef %name) #0 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wwn, i32 -40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #13
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !391
  %strncmp = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.86, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strncmp)
  %cmp58.not = icmp eq i32 %strncmp, 0
  br i1 %cmp58.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr2 = getelementptr i8, ptr %name, i32 5
  %call.i = call i32 @_kstrtoul(ptr noundef %add.ptr2, i32 noundef 10, ptr noundef nonnull %n) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %2)
  %cmp4 = icmp ugt i32 %2, 65535
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 868) #17
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %nport = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %nport to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %nport, align 8
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  %conv = trunc i32 %6 to i16
  %tpgt = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %tpgt to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %tpgt, align 8
  %enabled = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled, align 2
  %tpg_attrib = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %tpg_attrib, align 8
  %demo_mode_write_protect = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %demo_mode_write_protect, align 8
  %cache_dynamic_acls = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %cache_dynamic_acls, align 4
  %demo_mode_login_only = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %demo_mode_login_only to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %demo_mode_login_only, align 8
  %session_deletion_wait = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 3, i32 5
  %13 = ptrtoint ptr %session_deletion_wait to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %session_deletion_wait, align 4
  %call18 = call i32 @core_tpg_register(ptr noundef %wwn, ptr noundef nonnull %call7.i.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %efct23 = getelementptr i8, ptr %wwn, i32 256
  %14 = ptrtoint ptr %efct23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %efct23, align 8
  %tpg24 = getelementptr inbounds %struct.efct, ptr %15, i32 0, i32 11, i32 9
  %16 = ptrtoint ptr %tpg24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %tpg24, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_make_tpg.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_make_tpg, %if.then30)) #13
          to label %do.end [label %if.then30], !srcloc !379

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %15, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %19 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tpgt, align 8
  %conv32 = zext i16 %20 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_make_tpg.__UNIQUE_ID_ddebug340, ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %conv32) #13
  br label %do.end

do.end:                                           ; preds = %if.then30, %if.end22
  %lookup = getelementptr inbounds %struct.efct, ptr %15, i32 0, i32 23
  call void @__raw_spin_lock_init(ptr noundef %lookup, ptr noundef nonnull @.str.89, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #13
  %xa_flags.i.i = getelementptr inbounds %struct.efct, ptr %15, i32 0, i32 23, i32 1
  %21 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.efct, ptr %15, i32 0, i32 23, i32 2
  %22 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %xa_head.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then21, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then21 ], [ %call7.i.i, %do.end ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_lio_drop_tpg(ptr noundef %se_tpg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nport = getelementptr inbounds %struct.efct_lio_tpg, ptr %se_tpg, i32 0, i32 1
  %0 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nport, align 4
  %efct1 = getelementptr inbounds %struct.efct_lio_nport, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %efct1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efct1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_drop_tpg.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_drop_tpg, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %tpgt = getelementptr inbounds %struct.efct_lio_tpg, ptr %se_tpg, i32 0, i32 4
  %6 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tpgt, align 4
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_drop_tpg.__UNIQUE_ID_ddebug341, ptr noundef %dev, ptr noundef nonnull @.str.91, i32 noundef %conv) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nport, align 4
  %efct6 = getelementptr inbounds %struct.efct_lio_nport, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %efct6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %efct6, align 8
  %tpg7 = getelementptr inbounds %struct.efct, ptr %11, i32 0, i32 11, i32 9
  %12 = ptrtoint ptr %tpg7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %tpg7, align 4
  %call8 = tail call i32 @core_tpg_deregister(ptr noundef %se_tpg) #13
  %lookup = getelementptr inbounds %struct.efct, ptr %3, i32 0, i32 23
  tail call void @xa_destroy(ptr noundef %lookup) #13
  tail call void @kfree(ptr noundef %se_tpg) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_init_nodeacl(ptr nocapture noundef writeonly %se_nacl, ptr nocapture noundef readonly %name) #9 align 64 {
entry:
  %a.i = alloca [8 x i8], align 8
  %b.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.i) #13
  %0 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 7
  %7 = ptrtoint ptr %b.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %b.i, align 8
  %call16.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %name, ptr noundef nonnull @.str.85, ptr noundef nonnull %b.i, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call16.i)
  %cmp.not.i = icmp eq i32 %call16.i, 8
  br i1 %cmp.not.i, label %if.end, label %efct_lio_parse_wwn.exit.thread

efct_lio_parse_wwn.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %b.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %b.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i) #13
  %add.ptr = getelementptr i8, ptr %se_nacl, i32 -44
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %add.ptr, align 8
  %nport_name = getelementptr i8, ptr %se_nacl, i32 -36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a.i) #13
  %11 = ptrtoint ptr %a.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %9, ptr %a.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %nport_name, i32 noundef 32, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.38, ptr noundef nonnull %a.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %efct_lio_parse_wwn.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %efct_lio_parse_wwn.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_put_sess_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_node_post_shutdown(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_recv_wr_data(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_datamove_done(ptr noundef %io, i32 noundef %scsi_status, i32 noundef %flags, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tgt_io = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15
  %state = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %or = or i32 %1, 128
  store i32 %or, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scsi_status)
  %cmp.not = icmp eq i32 %scsi_status, 0
  br i1 %cmp.not, label %entry.do.body6_crit_edge, label %do.body

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body6

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_datamove_done.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_datamove_done, %if.then4)) #13
          to label %do.end [label %if.then4], !srcloc !379

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %7, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %8 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %10 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %12 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %14 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_tag, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_datamove_done.__UNIQUE_ID_ddebug330, ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef %display_name, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %scsi_status) #13
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %err = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 11
  %16 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %scsi_status, ptr %err, align 8
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_datamove_done.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_datamove_done, %if.then18)) #13
          to label %do.end31 [label %if.then18], !srcloc !379

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %node22 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %21 = ptrtoint ptr %node22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %node22, align 4
  %display_name23 = getelementptr inbounds %struct.efct_node, ptr %22, i32 0, i32 8
  %instance_index25 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %23 = ptrtoint ptr %instance_index25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %instance_index25, align 4
  %init_task_tag26 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %25 = ptrtoint ptr %init_task_tag26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %init_task_tag26, align 8
  %tgt_task_tag27 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %27 = ptrtoint ptr %tgt_task_tag27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tgt_task_tag27, align 4
  %hw_tag28 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %29 = ptrtoint ptr %hw_tag28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_tag28, align 8
  %seg_map_cnt = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 8
  %31 = ptrtoint ptr %seg_map_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %seg_map_cnt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_datamove_done.__UNIQUE_ID_ddebug331, ptr noundef %dev21, ptr noundef nonnull @.str.63, ptr noundef %display_name23, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32) #13
  br label %do.end31

do.end31:                                         ; preds = %if.then18, %do.body6
  %seg_map_cnt32 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 8
  %33 = ptrtoint ptr %seg_map_cnt32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %seg_map_cnt32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool33.not = icmp eq i32 %34, 0
  br i1 %tobool33.not, label %do.end31.if.end103_crit_edge, label %if.then34

do.end31.if.end103_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.then34:                                        ; preds = %do.end31
  %err35 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 11
  %35 = ptrtoint ptr %err35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %err35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp36 = icmp eq i32 %36, 0
  br i1 %cmp36, label %land.lhs.true, label %if.then34.if.end102_crit_edge

if.then34.if.end102_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

land.lhs.true:                                    ; preds = %if.then34
  %cur_seg = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 10
  %37 = ptrtoint ptr %cur_seg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur_seg, align 4
  %seg_cnt = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 9
  %39 = ptrtoint ptr %seg_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %seg_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp37 = icmp ult i32 %38, %40
  br i1 %cmp37, label %if.then38, label %land.lhs.true.if.end102_crit_edge

land.lhs.true.if.end102_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.then38:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_datamove_done.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_datamove_done, %if.then51)) #13
          to label %do.end65 [label %if.then51], !srcloc !379

if.then51:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %node55 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %45 = ptrtoint ptr %node55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %node55, align 4
  %display_name56 = getelementptr inbounds %struct.efct_node, ptr %46, i32 0, i32 8
  %instance_index58 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %47 = ptrtoint ptr %instance_index58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %instance_index58, align 4
  %init_task_tag59 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %49 = ptrtoint ptr %init_task_tag59 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %init_task_tag59, align 8
  %tgt_task_tag60 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %51 = ptrtoint ptr %tgt_task_tag60 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tgt_task_tag60, align 4
  %hw_tag61 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %53 = ptrtoint ptr %hw_tag61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %hw_tag61, align 8
  %55 = ptrtoint ptr %cur_seg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cur_seg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_datamove_done.__UNIQUE_ID_ddebug332, ptr noundef %dev54, ptr noundef nonnull @.str.64, ptr noundef %display_name56, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56) #13
  br label %do.end65

do.end65:                                         ; preds = %if.then51, %if.then38
  %ddir = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 2
  %57 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ddir, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp66 = icmp eq i32 %58, 1
  br i1 %cmp66, label %if.then67, label %if.else

if.then67:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #15
  %call68 = tail call i32 @efct_lio_write_pending(ptr noundef %tgt_io)
  br label %if.end71

if.else:                                          ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #15
  %call70 = tail call i32 @efct_lio_queue_data_in(ptr noundef %tgt_io)
  br label %if.end71

if.end71:                                         ; preds = %if.else, %if.then67
  %rc.0 = phi i32 [ %call68, %if.then67 ], [ %call70, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool72.not = icmp eq i32 %rc.0, 0
  br i1 %tobool72.not, label %if.end71.cleanup181_crit_edge, label %if.end74

if.end71.cleanup181_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup181

if.end74:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %59 = ptrtoint ptr %err35 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %err35, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_datamove_done.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_datamove_done, %if.then88)) #13
          to label %if.end102 [label %if.then88], !srcloc !379

if.then88:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %dev91 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %node92 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %64 = ptrtoint ptr %node92 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %node92, align 4
  %display_name93 = getelementptr inbounds %struct.efct_node, ptr %65, i32 0, i32 8
  %instance_index95 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %66 = ptrtoint ptr %instance_index95 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %instance_index95, align 4
  %init_task_tag96 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %68 = ptrtoint ptr %init_task_tag96 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %init_task_tag96, align 8
  %tgt_task_tag97 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %70 = ptrtoint ptr %tgt_task_tag97 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tgt_task_tag97, align 4
  %hw_tag98 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %72 = ptrtoint ptr %hw_tag98 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hw_tag98, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_datamove_done.__UNIQUE_ID_ddebug333, ptr noundef %dev91, ptr noundef nonnull @.str.65, ptr noundef %display_name93, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73) #13
  br label %if.end102

if.end102:                                        ; preds = %if.then88, %if.end74, %land.lhs.true.if.end102_crit_edge, %if.then34.if.end102_crit_edge
  %74 = ptrtoint ptr %seg_map_cnt32 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %seg_map_cnt32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i, label %if.end102.do.end.i_crit_edge, label %lor.rhs.i

if.end102.do.end.i_crit_edge:                     ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

lor.rhs.i:                                        ; preds = %if.end102
  %t_data_sg.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 0, i32 39
  %76 = ptrtoint ptr %t_data_sg.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %t_data_sg.i, align 4
  %tobool2.not.i = icmp eq ptr %77, null
  br i1 %tobool2.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end25.i, !prof !392

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %if.end102.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 398, i32 noundef 9, ptr noundef null) #13
  br label %if.end103

if.end25.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %io, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %data_direction.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 0, i32 6
  %82 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_direction.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i, ptr noundef nonnull %77, i32 noundef %75, i32 noundef %83, i32 noundef 0) #13
  %84 = ptrtoint ptr %seg_map_cnt32 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %seg_map_cnt32, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.end25.i, %do.end.i, %do.end31.if.end103_crit_edge
  %aborting = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 12
  %85 = ptrtoint ptr %aborting to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %aborting, align 4, !range !390
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool105.not = icmp eq i8 %86, 0
  br i1 %tobool105.not, label %if.end133, label %do.body107

do.body107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_datamove_done.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_datamove_done, %if.then119)) #13
          to label %cleanup181 [label %if.then119], !srcloc !379

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %io, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  %dev122 = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  %node123 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %91 = ptrtoint ptr %node123 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %node123, align 4
  %display_name124 = getelementptr inbounds %struct.efct_node, ptr %92, i32 0, i32 8
  %instance_index126 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %93 = ptrtoint ptr %instance_index126 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %instance_index126, align 4
  %init_task_tag127 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %95 = ptrtoint ptr %init_task_tag127 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %init_task_tag127, align 8
  %tgt_task_tag128 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %97 = ptrtoint ptr %tgt_task_tag128 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tgt_task_tag128, align 4
  %hw_tag129 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %99 = ptrtoint ptr %hw_tag129 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %hw_tag129, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_datamove_done.__UNIQUE_ID_ddebug334, ptr noundef %dev122, ptr noundef nonnull @.str.66, ptr noundef %display_name124, i32 noundef %94, i32 noundef %96, i32 noundef %98, i32 noundef %100) #13
  br label %cleanup181

if.end133:                                        ; preds = %if.end103
  %ddir134 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 2
  %101 = ptrtoint ptr %ddir134 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ddir134, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp135 = icmp eq i32 %102, 1
  br i1 %cmp135, label %do.body137, label %if.else179

do.body137:                                       ; preds = %if.end133
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_datamove_done.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_datamove_done, %if.then149)) #13
          to label %do.end164 [label %if.then149], !srcloc !379

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %io, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 8
  %dev152 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  %node153 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %107 = ptrtoint ptr %node153 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %node153, align 4
  %display_name154 = getelementptr inbounds %struct.efct_node, ptr %108, i32 0, i32 8
  %instance_index156 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %109 = ptrtoint ptr %instance_index156 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %instance_index156, align 4
  %init_task_tag157 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %111 = ptrtoint ptr %init_task_tag157 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %init_task_tag157, align 8
  %tgt_task_tag158 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %113 = ptrtoint ptr %tgt_task_tag158 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tgt_task_tag158, align 4
  %hw_tag159 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %115 = ptrtoint ptr %hw_tag159 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %hw_tag159, align 8
  %transport_state = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 0, i32 34
  %117 = ptrtoint ptr %transport_state to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %transport_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_datamove_done.__UNIQUE_ID_ddebug335, ptr noundef %dev152, ptr noundef nonnull @.str.67, ptr noundef %display_name154, i32 noundef %110, i32 noundef %112, i32 noundef %114, i32 noundef %116, i32 noundef %118) #13
  br label %do.end164

do.end164:                                        ; preds = %if.then149, %do.body137
  br i1 %cmp.not, label %if.else172, label %if.then166

if.then166:                                       ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @transport_generic_request_failure(ptr noundef %tgt_io, i32 noundef 13) #13
  %119 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %state, align 8
  %or171 = or i32 %120, 32768
  store i32 %or171, ptr %state, align 8
  br label %cleanup181

if.else172:                                       ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #15
  %121 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %state, align 8
  %or175 = or i32 %122, 16
  store i32 %or175, ptr %state, align 8
  tail call void @target_execute_cmd(ptr noundef %tgt_io) #13
  br label %cleanup181

if.else179:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @efct_lio_send_resp(ptr noundef %io, i32 noundef %flags)
  br label %cleanup181

cleanup181:                                       ; preds = %if.else179, %if.else172, %if.then166, %if.then119, %do.body107, %if.end71.cleanup181_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_generic_request_failure(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_execute_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efct_lio_send_resp(ptr noundef %io, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %rsp = alloca %struct.efct_scsi_cmd_resp, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rsp) #13
  %tgt_io = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rsp_sent = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 13
  %0 = ptrtoint ptr %rsp_sent to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %rsp_sent, align 1
  %state = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 5
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 8
  %or = or i32 %2, 2048
  store i32 %or, ptr %state, align 8
  %call = tail call i32 @transport_generic_free_cmd(ptr noundef %tgt_io, i32 noundef 0) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call ptr @memset(ptr %rsp, i32 0, i32 28)
  %scsi_status6 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 0, i32 1
  %4 = ptrtoint ptr %scsi_status6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %scsi_status6, align 4
  %6 = ptrtoint ptr %rsp to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %rsp, align 4
  %sense_buffer = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 1
  %sense_data = getelementptr inbounds %struct.efct_scsi_cmd_resp, ptr %rsp, i32 0, i32 4
  %7 = ptrtoint ptr %sense_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sense_buffer, ptr %sense_data, align 4
  %scsi_sense_length = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 0, i32 2
  %8 = ptrtoint ptr %scsi_sense_length to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %scsi_sense_length, align 2
  %conv = zext i16 %9 to i32
  %sense_data_length = getelementptr inbounds %struct.efct_scsi_cmd_resp, ptr %rsp, i32 0, i32 5
  %10 = ptrtoint ptr %sense_data_length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %sense_data_length, align 4
  %se_cmd_flags = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 0, i32 11
  %11 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %se_cmd_flags, align 8
  %and9 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %residual_count = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 0, i32 13
  %13 = ptrtoint ptr %residual_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %residual_count, align 8
  %sub = sub i32 0, %14
  br label %if.end19.sink.split

if.else:                                          ; preds = %if.end
  %and13 = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else.if.end19_crit_edge, label %if.then15

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %residual_count16 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 0, i32 13
  %15 = ptrtoint ptr %residual_count16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %residual_count16, align 8
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.then15, %if.then11
  %.sink = phi i32 [ %16, %if.then15 ], [ %sub, %if.then11 ]
  %residual17 = getelementptr inbounds %struct.efct_scsi_cmd_resp, ptr %rsp, i32 0, i32 6
  %17 = ptrtoint ptr %residual17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %residual17, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.else.if.end19_crit_edge
  %call20 = call i32 @efct_scsi_send_resp(ptr noundef %io, i32 noundef 0, ptr noundef nonnull %rsp, ptr noundef nonnull @efct_lio_status_done, ptr noundef null) #13
  %state22 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 5
  %18 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state22, align 8
  %or23 = or i32 %19, 512
  store i32 %or23, ptr %state22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp.not = icmp eq i32 %call20, 0
  br i1 %cmp.not, label %if.else39, label %do.body

do.body:                                          ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_send_resp.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_send_resp, %if.then30)) #13
          to label %do.end [label %if.then30], !srcloc !379

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %24 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %25, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %26 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %28 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %30 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %32 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw_tag, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_send_resp.__UNIQUE_ID_ddebug329, ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef %display_name, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %call20) #13
  br label %do.end

do.end:                                           ; preds = %if.then30, %do.body
  %34 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state22, align 8
  %or35 = or i32 %35, 2048
  store i32 %or35, ptr %state22, align 8
  %call38 = call i32 @transport_generic_free_cmd(ptr noundef %tgt_io, i32 noundef 0) #13
  br label %cleanup

if.else39:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %rsp_sent40 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 13
  %36 = ptrtoint ptr %rsp_sent40 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %rsp_sent40, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else39, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rsp) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_generic_free_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_send_resp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_status_done(ptr noundef %io, i32 noundef %scsi_status, i32 noundef %flags, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %or = or i32 %1, 1024
  store i32 %or, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scsi_status)
  %cmp.not = icmp eq i32 %scsi_status, 0
  br i1 %cmp.not, label %entry.if.end5_crit_edge, label %do.body

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_status_done.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_status_done, %if.then4)) #13
          to label %do.end [label %if.then4], !srcloc !379

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %7, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %8 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %10 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %12 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %14 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_tag, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_status_done.__UNIQUE_ID_ddebug321, ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef %display_name, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %scsi_status) #13
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %err = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 11
  %16 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %scsi_status, ptr %err, align 8
  br label %if.end5

if.end5:                                          ; preds = %do.end, %entry.if.end5_crit_edge
  %seg_map_cnt = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 8
  %17 = ptrtoint ptr %seg_map_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seg_map_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool6.not = icmp eq i32 %18, 0
  br i1 %tobool6.not, label %if.end5.do.body9_crit_edge, label %lor.rhs.i

if.end5.do.body9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body9

lor.rhs.i:                                        ; preds = %if.end5
  %t_data_sg.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 0, i32 39
  %19 = ptrtoint ptr %t_data_sg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %t_data_sg.i, align 4
  %tobool2.not.i = icmp eq ptr %20, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.end25.i, !prof !392

do.end.i:                                         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 398, i32 noundef 9, ptr noundef null) #13
  br label %do.body9

if.end25.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %data_direction.i = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 0, i32 6
  %25 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_direction.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i, ptr noundef nonnull %20, i32 noundef %18, i32 noundef %26, i32 noundef 0) #13
  %27 = ptrtoint ptr %seg_map_cnt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %seg_map_cnt, align 4
  br label %do.body9

do.body9:                                         ; preds = %if.end25.i, %do.end.i, %if.end5.do.body9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_status_done.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_status_done, %if.then21)) #13
          to label %do.end35 [label %if.then21], !srcloc !379

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %node25 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %32 = ptrtoint ptr %node25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %node25, align 4
  %display_name26 = getelementptr inbounds %struct.efct_node, ptr %33, i32 0, i32 8
  %instance_index28 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %34 = ptrtoint ptr %instance_index28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %instance_index28, align 4
  %init_task_tag29 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %36 = ptrtoint ptr %init_task_tag29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %init_task_tag29, align 8
  %tgt_task_tag30 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %38 = ptrtoint ptr %tgt_task_tag30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tgt_task_tag30, align 4
  %hw_tag31 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %40 = ptrtoint ptr %hw_tag31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw_tag31, align 8
  %err32 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 11
  %42 = ptrtoint ptr %err32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %err32, align 8
  %ddir = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 2
  %44 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ddir, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_status_done.__UNIQUE_ID_ddebug322, ptr noundef %dev24, ptr noundef nonnull @.str.71, ptr noundef %display_name26, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %scsi_status, i32 noundef %43, i32 noundef %flags, i32 noundef %45) #13
  br label %do.end35

do.end35:                                         ; preds = %if.then21, %do.body9
  %tgt_io = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %state, align 8
  %or38 = or i32 %47, 2048
  store i32 %or38, ptr %state, align 8
  %call40 = tail call i32 @transport_generic_free_cmd(ptr noundef %tgt_io, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_send_rd_data(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tmf_done(ptr noundef %io, i32 noundef %scsi_status, i32 noundef %flags, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_tmf_done.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_tmf_done, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %5, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %6 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %8 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %10 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %12 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_tag, align 8
  %tgt_io = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15
  %tmf = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 6
  %14 = ptrtoint ptr %tmf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tmf, align 4
  %conv = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_tmf_done.__UNIQUE_ID_ddebug336, ptr noundef %dev, ptr noundef nonnull @.str.54, ptr noundef %display_name, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %conv, ptr noundef %tgt_io, i32 noundef %scsi_status, i32 noundef %flags) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tgt_io4 = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15
  %state = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 15, i32 5
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 8
  %or = or i32 %17, 2048
  store i32 %or, ptr %state, align 8
  %call7 = tail call i32 @transport_generic_free_cmd(ptr noundef %tgt_io4, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_tgt_abort_io(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_abort_tgt_cb(ptr nocapture noundef readonly %io, i32 noundef %scsi_status, i32 noundef %flags, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_abort_tgt_cb.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_abort_tgt_cb, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %node = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 3
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %display_name = getelementptr inbounds %struct.efct_node, ptr %5, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 1
  %6 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %instance_index, align 4
  %init_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 8
  %8 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init_task_tag, align 8
  %tgt_task_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 9
  %10 = ptrtoint ptr %tgt_task_tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tgt_task_tag, align 4
  %hw_tag = getelementptr inbounds %struct.efct_io, ptr %io, i32 0, i32 10
  %12 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_tag, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_abort_tgt_cb.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.80, ptr noundef %display_name, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %scsi_status) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @efct_get_wwpn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_tpg_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tpg_enable_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %item, i32 594
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 2, !range !390
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.93, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tpg_enable_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %op = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %op) #13
  %0 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %op, align 4, !annotation !391
  %nport = getelementptr i8, ptr %item, i32 560
  %1 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nport, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %efct2 = getelementptr inbounds %struct.efct_lio_nport, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %efct2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %efct2, align 8
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #16
  br label %cleanup80

if.end:                                           ; preds = %lor.lhs.false
  %efcport = getelementptr inbounds %struct.efct, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %efcport, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %op) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup80_crit_edge, label %if.end10

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.end10:                                         ; preds = %if.end
  %7 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %op, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end10.cleanup80_crit_edge [
    i32 1, label %if.then12
    i32 0, label %do.body48
  ]

if.end10.cleanup80_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.then12:                                        ; preds = %if.end10
  %enabled = getelementptr i8, ptr %item, i32 594
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %enabled, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_tpg_enable_store.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_tpg_enable_store, %if.then19)) #13
          to label %do.end22 [label %if.then19], !srcloc !379

if.then19:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %tpgt = getelementptr i8, ptr %item, i32 592
  %13 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tpgt, align 4
  %conv = zext i16 %14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_tpg_enable_store.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.96, i32 noundef %conv) #13
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %if.then12
  %xport = getelementptr inbounds %struct.efct, ptr %4, i32 0, i32 12
  %15 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xport, align 8
  %call23 = call i32 (ptr, i32, ...) @efct_xport_control(ptr noundef %16, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end22.cleanup80_crit_edge, label %if.then25

do.end22.cleanup80_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.then25:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  %lio_nport = getelementptr inbounds %struct.efct, ptr %4, i32 0, i32 11, i32 8
  %17 = ptrtoint ptr %lio_nport to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %lio_nport, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_tpg_enable_store.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_tpg_enable_store, %if.then38)) #13
          to label %cleanup80 [label %if.then38], !srcloc !379

if.then38:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %4, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_tpg_enable_store.__UNIQUE_ID_ddebug314, ptr noundef %dev40, ptr noundef nonnull @.str.97) #13
  br label %cleanup80

do.body48:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_tpg_enable_store.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_tpg_enable_store, %if.then60)) #13
          to label %do.end67 [label %if.then60], !srcloc !379

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %4, align 8
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %tpgt63 = getelementptr i8, ptr %item, i32 592
  %22 = ptrtoint ptr %tpgt63 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tpgt63, align 4
  %conv64 = zext i16 %23 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_tpg_enable_store.__UNIQUE_ID_ddebug315, ptr noundef %dev62, ptr noundef nonnull @.str.98, i32 noundef %conv64) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then60, %do.body48
  %domain = getelementptr inbounds %struct.efc, ptr %6, i32 0, i32 20
  %24 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %domain, align 8
  %tobool68.not = icmp eq ptr %25, null
  br i1 %tobool68.not, label %do.end67.if.end75_crit_edge, label %land.lhs.true

do.end67.if.end75_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

land.lhs.true:                                    ; preds = %do.end67
  %nport70 = getelementptr inbounds %struct.efc_domain, ptr %25, i32 0, i32 26
  %26 = ptrtoint ptr %nport70 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nport70, align 4
  %tobool71.not = icmp eq ptr %27, null
  br i1 %tobool71.not, label %land.lhs.true.if.end75_crit_edge, label %if.then72

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then72:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_tgt_del_nport.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_tpg_enable_store, %if.then.i)) #13
          to label %if.end75 [label %if.then.i], !srcloc !379

if.then.i:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #15
  %pci.i = getelementptr inbounds %struct.efc, ptr %6, i32 0, i32 1
  %28 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %display_name.i = getelementptr inbounds %struct.efc_nport, ptr %27, i32 0, i32 5
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_tgt_del_nport.__UNIQUE_ID_ddebug347, ptr noundef %dev.i, ptr noundef nonnull @.str.13, ptr noundef %display_name.i) #13
  br label %if.end75

if.end75:                                         ; preds = %if.then.i, %if.then72, %land.lhs.true.if.end75_crit_edge, %do.end67.if.end75_crit_edge
  %enabled76 = getelementptr i8, ptr %item, i32 594
  %30 = ptrtoint ptr %enabled76 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %enabled76, align 2
  br label %cleanup80

cleanup80:                                        ; preds = %if.end75, %if.then38, %if.then25, %do.end22.cleanup80_crit_edge, %if.end10.cleanup80_crit_edge, %if.end.cleanup80_crit_edge, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ -22, %if.end.cleanup80_crit_edge ], [ %call23, %if.then38 ], [ -22, %if.end10.cleanup80_crit_edge ], [ %count, %do.end22.cleanup80_crit_edge ], [ %count, %if.end75 ], [ %call23, %if.then25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %op) #13
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_xport_control(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tpg_attrib_generate_node_acls_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_attrib = getelementptr i8, ptr %item, i32 568
  %0 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpg_attrib, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.100, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tpg_attrib_generate_node_acls_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_attrib = getelementptr i8, ptr %item, i32 568
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !391
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %2) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tpg_attrib, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tpg_attrib_cache_dynamic_acls_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_dynamic_acls = getelementptr i8, ptr %item, i32 572
  %0 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_dynamic_acls, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.100, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tpg_attrib_cache_dynamic_acls_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !391
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %2) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %cache_dynamic_acls = getelementptr i8, ptr %item, i32 572
  %3 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cache_dynamic_acls, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tpg_attrib_demo_mode_write_protect_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %demo_mode_write_protect = getelementptr i8, ptr %item, i32 576
  %0 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_write_protect, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.100, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tpg_attrib_demo_mode_write_protect_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !391
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %2) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %demo_mode_write_protect = getelementptr i8, ptr %item, i32 576
  %3 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %demo_mode_write_protect, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tpg_attrib_prod_mode_write_protect_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %prod_mode_write_protect = getelementptr i8, ptr %item, i32 580
  %0 = ptrtoint ptr %prod_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prod_mode_write_protect, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.100, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tpg_attrib_prod_mode_write_protect_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !391
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %2) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prod_mode_write_protect = getelementptr i8, ptr %item, i32 580
  %3 = ptrtoint ptr %prod_mode_write_protect to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %prod_mode_write_protect, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tpg_attrib_demo_mode_login_only_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %demo_mode_login_only = getelementptr i8, ptr %item, i32 584
  %0 = ptrtoint ptr %demo_mode_login_only to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_login_only, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.100, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tpg_attrib_demo_mode_login_only_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !391
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %2) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %demo_mode_login_only = getelementptr i8, ptr %item, i32 584
  %3 = ptrtoint ptr %demo_mode_login_only to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %demo_mode_login_only, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tpg_attrib_session_deletion_wait_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %session_deletion_wait = getelementptr i8, ptr %item, i32 588
  %0 = ptrtoint ptr %session_deletion_wait to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %session_deletion_wait, align 4, !range !390
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.100, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_tpg_attrib_session_deletion_wait_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !391
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %2) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  %session_deletion_wait = getelementptr i8, ptr %item, i32 588
  %frombool = zext i1 %tobool to i8
  %3 = ptrtoint ptr %session_deletion_wait to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %session_deletion_wait, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @efct_lio_get_npiv_fabric_wwn(ptr nocapture noundef readonly %se_tpg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vport = getelementptr inbounds %struct.efct_lio_tpg, ptr %se_tpg, i32 0, i32 2
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 4
  %wwpn_str = getelementptr inbounds %struct.efct_lio_vport, ptr %1, i32 0, i32 3
  ret ptr %wwpn_str
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @efct_lio_get_npiv_tag(ptr nocapture noundef readonly %se_tpg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tpgt = getelementptr inbounds %struct.efct_lio_tpg, ptr %se_tpg, i32 0, i32 4
  %0 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tpgt, align 4
  ret i16 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efct_lio_npiv_check_demo_write_protect(ptr nocapture noundef readonly %se_tpg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %demo_mode_write_protect = getelementptr inbounds %struct.efct_lio_tpg, ptr %se_tpg, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_write_protect, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efct_lio_npiv_check_prod_write_protect(ptr nocapture noundef readonly %se_tpg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %prod_mode_write_protect = getelementptr inbounds %struct.efct_lio_tpg, ptr %se_tpg, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %prod_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prod_mode_write_protect, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efct_lio_npiv_check_demo_mode_login_only(ptr nocapture noundef readonly %stpg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %demo_mode_login_only = getelementptr inbounds %struct.efct_lio_tpg, ptr %stpg, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %demo_mode_login_only to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_login_only, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @efct_lio_npiv_make_nport(ptr nocapture noundef readnone %tf, ptr nocapture noundef readnone %group, ptr noundef %name) #0 align 64 {
entry:
  %a.i = alloca [8 x i8], align 8
  %b.i37.i = alloca [8 x i8], align 8
  %b.i.i = alloca [8 x i8], align 8
  %b.i = alloca [8 x i8], align 8
  %pbuf = alloca ptr, align 4
  %tmp = alloca [128 x i8], align 1
  %vport_id = alloca %struct.fc_vport_identifiers, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbuf) #13
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp) #13
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %vport_id) #13
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef %name)
  %1 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tmp, ptr %pbuf, align 4
  %call1 = call ptr @strsep(ptr noundef nonnull %pbuf, ptr noundef nonnull @.str.127) #13
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pbuf, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.i) #13
  %4 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 1
  %5 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 2
  %6 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 4
  %8 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 5
  %9 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 6
  %10 = getelementptr inbounds [8 x i8], ptr %b.i, i32 0, i32 7
  %11 = ptrtoint ptr %b.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %b.i, align 8
  %call16.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call1, ptr noundef nonnull @.str.85, ptr noundef nonnull %b.i, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call16.i)
  %cmp.not.i = icmp eq i32 %call16.i, 8
  br i1 %cmp.not.i, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %12 = ptrtoint ptr %b.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %b.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i) #13
  %14 = ptrtoint ptr %pbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pbuf, align 4
  %call11 = call i32 @strlen(ptr noundef %15) #18
  %sub.i = add i32 %call11, -1
  %arrayidx.i = getelementptr i8, ptr %15, i32 %sub.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.164)
  switch i8 %17, label %if.end10.if.end.i_crit_edge [
    i8 10, label %if.end10.if.then.i_crit_edge
    i8 0, label %if.end10.if.then.i_crit_edge138
  ]

if.end10.if.then.i_crit_edge138:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.end10.if.then.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end10.if.then.i_crit_edge, %if.end10.if.then.i_crit_edge138
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end10.if.end.i_crit_edge
  %cnt.0.i = phi i32 [ %sub.i, %if.then.i ], [ %call11, %if.end10.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %cnt.0.i)
  %cmp7.not.i = icmp eq i32 %cnt.0.i, 33
  br i1 %cmp7.not.i, label %lor.lhs.false9.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false9.i:                                 ; preds = %if.end.i
  %arrayidx10.i = getelementptr i8, ptr %15, i32 16
  %19 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %20)
  %cmp12.not.i = icmp eq i8 %20, 58
  br i1 %cmp12.not.i, label %if.end15.i, label %lor.lhs.false9.i.cleanup_crit_edge

lor.lhs.false9.i.cleanup_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15.i:                                       ; preds = %lor.lhs.false9.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.i.i) #13
  %21 = getelementptr inbounds [8 x i8], ptr %b.i.i, i32 0, i32 1
  %22 = getelementptr inbounds [8 x i8], ptr %b.i.i, i32 0, i32 2
  %23 = getelementptr inbounds [8 x i8], ptr %b.i.i, i32 0, i32 3
  %24 = getelementptr inbounds [8 x i8], ptr %b.i.i, i32 0, i32 4
  %25 = getelementptr inbounds [8 x i8], ptr %b.i.i, i32 0, i32 5
  %26 = getelementptr inbounds [8 x i8], ptr %b.i.i, i32 0, i32 6
  %27 = getelementptr inbounds [8 x i8], ptr %b.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %b.i.i, align 8
  %call16.i.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %15, ptr noundef nonnull @.str.84, ptr noundef nonnull %b.i.i, ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call16.i.i)
  %cmp.not.i.i = icmp eq i32 %call16.i.i, 8
  br i1 %cmp.not.i.i, label %if.end18.i103, label %efct_lio_parse_wwn.exit.i

efct_lio_parse_wwn.exit.i:                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i.i) #13
  br label %cleanup

if.end18.i103:                                    ; preds = %if.end15.i
  %29 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %b.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i.i) #13
  %arrayidx19.i = getelementptr i8, ptr %15, i32 17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b.i37.i) #13
  %31 = getelementptr inbounds [8 x i8], ptr %b.i37.i, i32 0, i32 1
  %32 = getelementptr inbounds [8 x i8], ptr %b.i37.i, i32 0, i32 2
  %33 = getelementptr inbounds [8 x i8], ptr %b.i37.i, i32 0, i32 3
  %34 = getelementptr inbounds [8 x i8], ptr %b.i37.i, i32 0, i32 4
  %35 = getelementptr inbounds [8 x i8], ptr %b.i37.i, i32 0, i32 5
  %36 = getelementptr inbounds [8 x i8], ptr %b.i37.i, i32 0, i32 6
  %37 = getelementptr inbounds [8 x i8], ptr %b.i37.i, i32 0, i32 7
  %38 = ptrtoint ptr %b.i37.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 -1, ptr %b.i37.i, align 8
  %call16.i38.i = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %arrayidx19.i, ptr noundef nonnull @.str.84, ptr noundef nonnull %b.i37.i, ptr noundef %31, ptr noundef %32, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call16.i38.i)
  %cmp.not.i39.i = icmp eq i32 %call16.i38.i, 8
  br i1 %cmp.not.i39.i, label %if.end16, label %efct_lio_parse_npiv_wwn.exit

efct_lio_parse_npiv_wwn.exit:                     ; preds = %if.end18.i103
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i37.i) #13
  br label %cleanup

if.end16:                                         ; preds = %if.end18.i103
  %39 = ptrtoint ptr %b.i37.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %b.i37.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b.i37.i) #13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end16
  %.pn.in.i = phi ptr [ @efct_devices, %if.end16 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %41 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i105 = icmp eq ptr %.pn.i, @efct_devices
  br i1 %cmp.not.i105, label %for.cond.i.do.end22_crit_edge, label %for.body.i

for.cond.i.do.end22_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

for.body.i:                                       ; preds = %for.cond.i
  %hw.i = getelementptr i8, ptr %.pn.i, i32 148
  %call.i = call i64 @efct_get_wwpn(ptr noundef %hw.i) #13
  %cmp1.i = icmp eq i64 %call.i, %13
  br i1 %cmp1.i, label %efct_find_wwpn.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

efct_find_wwpn.exit:                              ; preds = %for.body.i
  %efct.0.le.i = getelementptr i8, ptr %.pn.i, i32 -204
  %tobool18.not = icmp eq ptr %efct.0.le.i, null
  br i1 %tobool18.not, label %efct_find_wwpn.exit.do.end22_crit_edge, label %if.end26

efct_find_wwpn.exit.do.end22_crit_edge:           ; preds = %efct_find_wwpn.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

do.end22:                                         ; preds = %efct_find_wwpn.exit.do.end22_crit_edge, %for.cond.i.do.end22_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name) #16
  br label %cleanup

if.end26:                                         ; preds = %efct_find_wwpn.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 328) #17
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %efct32 = getelementptr inbounds %struct.efct_lio_vport, ptr %call7.i.i, i32 0, i32 6
  %43 = ptrtoint ptr %efct32 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %efct.0.le.i, ptr %efct32, align 8
  %44 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %13, ptr %call7.i.i, align 8
  %npiv_wwpn33 = getelementptr inbounds %struct.efct_lio_vport, ptr %call7.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %npiv_wwpn33 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %30, ptr %npiv_wwpn33, align 8
  %npiv_wwnn34 = getelementptr inbounds %struct.efct_lio_vport, ptr %call7.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %npiv_wwnn34 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %40, ptr %npiv_wwnn34, align 8
  %wwpn_str = getelementptr inbounds %struct.efct_lio_vport, ptr %call7.i.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a.i) #13
  %47 = ptrtoint ptr %a.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %30, ptr %a.i, align 8
  %call.i107 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %wwpn_str, i32 noundef 32, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.83, ptr noundef nonnull %a.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i108 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 12) #17
  %tobool38.not = icmp eq ptr %call7.i.i108, null
  br i1 %tobool38.not, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end41:                                         ; preds = %if.end31
  %lio_vport42 = getelementptr inbounds %struct.efct_lio_vport_list_t, ptr %call7.i.i108, i32 0, i32 1
  %49 = ptrtoint ptr %lio_vport42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i, ptr %lio_vport42, align 8
  %50 = getelementptr inbounds i8, ptr %vport_id, i32 16
  %51 = call ptr @memset(ptr %50, i32 0, i32 80)
  %port_name = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vport_id, i32 0, i32 1
  %52 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %30, ptr %port_name, align 8
  %53 = ptrtoint ptr %vport_id to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %40, ptr %vport_id, align 8
  %roles = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vport_id, i32 0, i32 2
  %54 = ptrtoint ptr %roles to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %roles, align 8
  %vport_type = getelementptr inbounds %struct.fc_vport_identifiers, ptr %vport_id, i32 0, i32 4
  %55 = ptrtoint ptr %vport_type to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 7, ptr %vport_type, align 8
  %shost = getelementptr i8, ptr %.pn.i, i32 124
  %56 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %shost, align 8
  %call43 = call ptr @fc_vport_create(ptr noundef %57, i32 noundef 0, ptr noundef nonnull %vport_id) #13
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %efct.0.le.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %efct.0.le.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.133) #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  call void @kfree(ptr noundef nonnull %call7.i.i108) #13
  br label %cleanup

if.end50:                                         ; preds = %if.end41
  %fc_vport = getelementptr inbounds %struct.efct_lio_vport, ptr %call7.i.i, i32 0, i32 8
  %60 = ptrtoint ptr %fc_vport to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call43, ptr %fc_vport, align 8
  %efct_lio_lock = getelementptr i8, ptr %.pn.i, i32 60
  %call55 = call i32 @_raw_spin_lock_irqsave(ptr noundef %efct_lio_lock) #13
  %61 = ptrtoint ptr %call7.i.i108 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %call7.i.i108, ptr %call7.i.i108, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i108, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i108, ptr %prev.i, align 4
  %vport_list62 = getelementptr i8, ptr %.pn.i, i32 52
  %prev.i109 = getelementptr i8, ptr %.pn.i, i32 56
  %63 = ptrtoint ptr %prev.i109 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i109, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i108, ptr noundef %64, ptr noundef %vport_list62) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end50.list_add_tail.exit_crit_edge

if.end50.list_add_tail.exit_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %prev.i109 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i108, ptr %prev.i109, align 4
  %66 = ptrtoint ptr %call7.i.i108 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %vport_list62, ptr %call7.i.i108, align 8
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %call7.i.i108, ptr %64, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end50.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %efct_lio_lock, i32 noundef %call55) #13
  %vport_wwn = getelementptr inbounds %struct.efct_lio_vport, ptr %call7.i.i, i32 0, i32 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end48, %if.then39, %if.end26.cleanup_crit_edge, %do.end22, %efct_lio_parse_npiv_wwn.exit, %efct_lio_parse_wwn.exit.i, %lor.lhs.false9.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then8, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then8 ], [ %vport_wwn, %list_add_tail.exit ], [ inttoptr (i32 -12 to ptr), %do.end48 ], [ inttoptr (i32 -12 to ptr), %if.then39 ], [ inttoptr (i32 -6 to ptr), %do.end22 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %if.end26.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %efct_lio_parse_wwn.exit.i ], [ inttoptr (i32 -22 to ptr), %if.end.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false9.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %efct_lio_parse_npiv_wwn.exit ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %vport_id) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbuf) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_lio_npiv_drop_nport(ptr noundef readonly %wwn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wwn, i32 -56
  %efct1 = getelementptr i8, ptr %wwn, i32 256
  %0 = ptrtoint ptr %efct1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efct1, align 8
  %fc_vport = getelementptr i8, ptr %wwn, i32 264
  %2 = ptrtoint ptr %fc_vport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fc_vport, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %if.then

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @fc_vport_terminate(ptr noundef nonnull %3) #13
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  %efct_lio_lock = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 11, i32 11
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %efct_lio_lock) #13
  %vport_list = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 11, i32 10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body3
  %vport.0.in = phi ptr [ %vport_list, %do.body3 ], [ %vport.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %vport.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %vport.0 = load ptr, ptr %vport.0.in, align 4
  %cmp20.not = icmp eq ptr %vport.0, %vport_list
  br i1 %cmp20.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %lio_vport22 = getelementptr inbounds %struct.efct_lio_vport_list_t, ptr %vport.0, i32 0, i32 1
  %5 = ptrtoint ptr %lio_vport22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lio_vport22, align 4
  %cmp23 = icmp eq ptr %6, %add.ptr
  br i1 %cmp23, label %if.then25, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then25:                                        ; preds = %for.body
  %lio_vport22.le = getelementptr inbounds %struct.efct_lio_vport_list_t, ptr %vport.0, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vport.0) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then25.list_del.exit_crit_edge

if.then25.list_del.exit_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vport.0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %vport.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vport.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then25.list_del.exit_crit_edge
  %13 = ptrtoint ptr %vport.0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %vport.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %vport.0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %lio_vport22.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lio_vport22.le, align 4
  tail call void @kfree(ptr noundef %16) #13
  tail call void @kfree(ptr noundef %vport.0) #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %efct_lio_lock, i32 noundef %call6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @efct_lio_npiv_make_tpg(ptr noundef %wwn, ptr noundef %name) #0 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %wwn, i32 -56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #13
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %n, align 4, !annotation !391
  %efct1 = getelementptr i8, ptr %wwn, i32 256
  %1 = ptrtoint ptr %efct1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %efct1, align 8
  %strncmp = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.86, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %strncmp)
  %cmp67.not = icmp eq i32 %strncmp, 0
  br i1 %cmp67.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %name, i32 5
  %call.i = call i32 @_kstrtoul(ptr noundef %add.ptr3, i32 noundef 10, ptr noundef nonnull %n) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %4)
  %cmp5 = icmp ugt i32 %4, 65535
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp9.not = icmp eq i32 %4, 1
  br i1 %cmp9.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.135, i32 noundef %4) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 868) #17
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %vport = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %vport to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %vport, align 4
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  %conv = trunc i32 %10 to i16
  %tpgt = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %tpgt to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %tpgt, align 8
  %enabled = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %enabled, align 2
  %tpg_attrib = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %tpg_attrib, align 8
  %demo_mode_write_protect = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %demo_mode_write_protect, align 8
  %cache_dynamic_acls = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %cache_dynamic_acls, align 4
  %demo_mode_login_only = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %demo_mode_login_only to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %demo_mode_login_only, align 8
  %session_deletion_wait = getelementptr inbounds %struct.efct_lio_tpg, ptr %call7.i.i, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %session_deletion_wait to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %session_deletion_wait, align 4
  %call23 = call i32 @core_tpg_register(ptr noundef %wwn, ptr noundef nonnull %call7.i.i, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %tpg28 = getelementptr i8, ptr %wwn, i32 252
  %18 = ptrtoint ptr %tpg28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %tpg28, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_npiv_make_tpg.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_npiv_make_tpg, %if.then35)) #13
          to label %cleanup [label %if.then35], !srcloc !379

if.then35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tpgt, align 8
  %conv39 = zext i16 %22 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_npiv_make_tpg.__UNIQUE_ID_ddebug342, ptr noundef %dev37, ptr noundef nonnull @.str.137, i32 noundef %conv39) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end27, %if.then26, %if.end12.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ null, %if.then26 ], [ %call7.i.i, %if.then35 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end12.cleanup_crit_edge ], [ %call7.i.i, %if.end27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_lio_npiv_drop_tpg(ptr noundef %se_tpg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_npiv_drop_tpg.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_npiv_drop_tpg, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !379

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vport = getelementptr inbounds %struct.efct_lio_tpg, ptr %se_tpg, i32 0, i32 2
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 4
  %efct = getelementptr inbounds %struct.efct_lio_vport, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efct, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %tpgt = getelementptr inbounds %struct.efct_lio_tpg, ptr %se_tpg, i32 0, i32 4
  %6 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tpgt, align 4
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_npiv_drop_tpg.__UNIQUE_ID_ddebug343, ptr noundef %dev, ptr noundef nonnull @.str.139, i32 noundef %conv) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @core_tpg_deregister(ptr noundef %se_tpg) #13
  tail call void @kfree(ptr noundef %se_tpg) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_vport_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_vport_terminate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_npiv_tpg_enable_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %item, i32 594
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 2, !range !390
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.93, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_npiv_tpg_enable_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %op = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %vport = getelementptr i8, ptr %item, i32 564
  %0 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %op) #13
  %2 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %op, align 4, !annotation !391
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %op) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup75_crit_edge, label %if.end

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup75

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #16
  br label %cleanup75

if.end5:                                          ; preds = %if.end
  %efct6 = getelementptr inbounds %struct.efct_lio_vport, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %efct6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %efct6, align 8
  %efcport = getelementptr inbounds %struct.efct, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %efcport, align 4
  %7 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %op, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %8, label %if.end5.cleanup75_crit_edge [
    i32 1, label %if.then8
    i32 0, label %do.body42
  ]

if.end5.cleanup75_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup75

if.then8:                                         ; preds = %if.end5
  %enabled = getelementptr i8, ptr %item, i32 594
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %enabled, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_npiv_tpg_enable_store.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_npiv_tpg_enable_store, %if.then15)) #13
          to label %do.end18 [label %if.then15], !srcloc !379

if.then15:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %tpgt = getelementptr i8, ptr %item, i32 592
  %13 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tpgt, align 4
  %conv = zext i16 %14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_npiv_tpg_enable_store.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.96, i32 noundef %conv) #13
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %if.then8
  %domain = getelementptr inbounds %struct.efc, ptr %6, i32 0, i32 20
  %15 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %domain, align 8
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %if.end32, label %if.then20

if.then20:                                        ; preds = %do.end18
  %npiv_wwpn = getelementptr inbounds %struct.efct_lio_vport, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %npiv_wwpn to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %npiv_wwpn, align 8
  %npiv_wwnn = getelementptr inbounds %struct.efct_lio_vport, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %npiv_wwnn to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %npiv_wwnn, align 8
  %call22 = call i32 @efc_nport_vport_new(ptr noundef nonnull %16, i64 noundef %18, i64 noundef %20, i32 noundef -1, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.then20.cleanup75_crit_edge, label %do.end28

if.then20.cleanup75_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup75

do.end28:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %4, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.143) #16
  br label %cleanup75

if.end32:                                         ; preds = %do.end18
  %npiv_wwnn33 = getelementptr inbounds %struct.efct_lio_vport, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %npiv_wwnn33 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %npiv_wwnn33, align 8
  %npiv_wwpn34 = getelementptr inbounds %struct.efct_lio_vport, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %npiv_wwpn34 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %npiv_wwpn34, align 8
  %call35 = call ptr @efc_vport_create_spec(ptr noundef %6, i64 noundef %24, i64 noundef %26, i32 noundef -1, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef null, ptr noundef null) #13
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end32.cleanup75_crit_edge, label %if.end32.if.end74_crit_edge

if.end32.if.end74_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.end32.cleanup75_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup75

do.body42:                                        ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_lio_npiv_tpg_enable_store.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_lio_npiv_tpg_enable_store, %if.then54)) #13
          to label %do.end61 [label %if.then54], !srcloc !379

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %4, align 8
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %tpgt57 = getelementptr i8, ptr %item, i32 592
  %29 = ptrtoint ptr %tpgt57 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tpgt57, align 4
  %conv58 = zext i16 %30 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_lio_npiv_tpg_enable_store.__UNIQUE_ID_ddebug317, ptr noundef %dev56, ptr noundef nonnull @.str.98, i32 noundef %conv58) #13
  br label %do.end61

do.end61:                                         ; preds = %if.then54, %do.body42
  %enabled62 = getelementptr i8, ptr %item, i32 594
  %31 = ptrtoint ptr %enabled62 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %enabled62, align 2
  %domain63 = getelementptr inbounds %struct.efc, ptr %6, i32 0, i32 20
  %32 = ptrtoint ptr %domain63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %domain63, align 8
  %tobool64.not = icmp eq ptr %33, null
  br i1 %tobool64.not, label %do.end61.if.end74_crit_edge, label %if.then65

do.end61.if.end74_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then65:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %efcport, align 4
  %npiv_wwpn68 = getelementptr inbounds %struct.efct_lio_vport, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %npiv_wwpn68 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %npiv_wwpn68, align 8
  %npiv_wwnn69 = getelementptr inbounds %struct.efct_lio_vport, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %npiv_wwnn69 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %npiv_wwnn69, align 8
  %call70 = call i32 @efc_nport_vport_del(ptr noundef %35, ptr noundef nonnull %33, i64 noundef %37, i64 noundef %39) #13
  br label %cleanup75

if.end74:                                         ; preds = %do.end61.if.end74_crit_edge, %if.end32.if.end74_crit_edge
  br label %cleanup75

cleanup75:                                        ; preds = %if.end74, %if.then65, %if.end32.cleanup75_crit_edge, %do.end28, %if.then20.cleanup75_crit_edge, %if.end5.cleanup75_crit_edge, %do.end, %entry.cleanup75_crit_edge
  %retval.1 = phi i32 [ %count, %if.end74 ], [ %count, %if.then65 ], [ -22, %do.end ], [ -22, %entry.cleanup75_crit_edge ], [ %call22, %do.end28 ], [ %count, %if.then20.cleanup75_crit_edge ], [ -12, %if.end32.cleanup75_crit_edge ], [ -22, %if.end5.cleanup75_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %op) #13
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_nport_vport_new(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efc_vport_create_spec(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_nport_vport_del(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_npiv_tpg_attrib_generate_node_acls_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_attrib = getelementptr i8, ptr %item, i32 568
  %0 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpg_attrib, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.100, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_npiv_tpg_attrib_generate_node_acls_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg_attrib = getelementptr i8, ptr %item, i32 568
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !391
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %2) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %tpg_attrib to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tpg_attrib, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_dynamic_acls = getelementptr i8, ptr %item, i32 572
  %0 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cache_dynamic_acls, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.100, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !391
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %2) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %cache_dynamic_acls = getelementptr i8, ptr %item, i32 572
  %3 = ptrtoint ptr %cache_dynamic_acls to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cache_dynamic_acls, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %demo_mode_write_protect = getelementptr i8, ptr %item, i32 576
  %0 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_write_protect, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.100, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !391
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %2) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %demo_mode_write_protect = getelementptr i8, ptr %item, i32 576
  %3 = ptrtoint ptr %demo_mode_write_protect to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %demo_mode_write_protect, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %prod_mode_write_protect = getelementptr i8, ptr %item, i32 580
  %0 = ptrtoint ptr %prod_mode_write_protect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prod_mode_write_protect, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.100, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !391
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %2) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prod_mode_write_protect = getelementptr i8, ptr %item, i32 580
  %3 = ptrtoint ptr %prod_mode_write_protect to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %prod_mode_write_protect, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_npiv_tpg_attrib_demo_mode_login_only_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %demo_mode_login_only = getelementptr i8, ptr %item, i32 584
  %0 = ptrtoint ptr %demo_mode_login_only to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demo_mode_login_only, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.100, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_npiv_tpg_attrib_demo_mode_login_only_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !391
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %2) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %demo_mode_login_only = getelementptr i8, ptr %item, i32 584
  %3 = ptrtoint ptr %demo_mode_login_only to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %demo_mode_login_only, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_npiv_tpg_attrib_session_deletion_wait_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %session_deletion_wait = getelementptr i8, ptr %item, i32 588
  %0 = ptrtoint ptr %session_deletion_wait to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %session_deletion_wait, align 4, !range !390
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.100, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_lio_npiv_tpg_attrib_session_deletion_wait_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !391
  %call.i = call i32 @_kstrtoul(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %call.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %2) #16
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  %session_deletion_wait = getelementptr i8, ptr %item, i32 588
  %frombool = zext i1 %tobool to i8
  %3 = ptrtoint ptr %session_deletion_wait to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %session_deletion_wait, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -22, %do.end9 ], [ %count, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 197)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 197)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !70, !72, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !103, !105, !106, !107, !108, !110, !111, !113, !114, !115, !117, !119, !120, !121, !123, !124, !126, !127, !128, !130, !131, !133, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !179, !180, !181, !183, !184, !185, !186, !188, !190, !192, !194, !196, !197, !198, !200, !201, !203, !204, !205, !207, !209, !210, !212, !214, !215, !216, !217, !219, !220, !222, !223, !225, !226, !228, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !241, !242, !243, !244, !245, !246, !247, !249, !250, !251, !252, !253, !254, !255, !257, !258, !259, !260, !261, !262, !263, !265, !266, !267, !268, !269, !270, !271, !273, !274, !275, !276, !277, !278, !279, !281, !283, !285, !287, !288, !289, !290, !292, !293, !295, !296, !297, !299, !300, !301, !302, !304, !305, !307, !308, !309, !311, !313, !315, !316, !317, !318, !320, !322, !323, !324, !326, !328, !330, !331, !332, !333, !334, !335, !337, !338, !339, !340, !341, !342, !344, !345, !346, !347, !348, !349, !351, !352, !353, !354, !355, !356, !358, !359, !360, !361, !362, !363, !365, !366, !367, !368, !369}
!llvm.module.flags = !{!370, !371, !372, !373, !374, !375, !376, !377}
!llvm.ident = !{!378}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1124, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @efct_scsi_tgt_new_device.__UNIQUE_ID_ddebug345, !1, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1134, i32 11}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1136, i32 3}
!11 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @efct_scsi_tgt_new_device._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @efct_scsi_tgt_new_device._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @efct_scsi_tgt_new_device.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1140, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1158, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @efct_scsi_tgt_new_nport.__UNIQUE_ID_ddebug346, !19, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1167, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @efct_scsi_tgt_del_nport.__UNIQUE_ID_ddebug347, !23, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!26 = !{ptr @efct_scsi_new_initiator.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1252, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1307, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @efct_scsi_del_initiator._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @efct_scsi_del_initiator._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @efct_scsi_del_initiator.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1320, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1366, i32 10}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1370, i32 10}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1374, i32 10}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1378, i32 10}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1384, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @efct_scsi_recv_cmd.__UNIQUE_ID_ddebug350, !45, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1390, i32 3}
!50 = !{ptr @efct_scsi_recv_cmd._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @efct_scsi_recv_cmd._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1401, i32 3}
!54 = !{ptr @efct_scsi_recv_cmd._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @efct_scsi_recv_cmd._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1427, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @efct_scsi_recv_tmf.__UNIQUE_ID_ddebug351, !57, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1681, i32 3}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @efct_scsi_tgt_driver_init._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @efct_scsi_tgt_driver_init._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @efct_scsi_tgt_driver_init._entry.31, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1686, i32 3}
!67 = !{ptr @efct_scsi_tgt_driver_init._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @lio_wq, !69, !"lio_wq", i1 false, i1 false}
!69 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 17, i32 33}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/elx/efct/../libefc_sli/sli4.h", i32 3744, i32 3}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @sli_get_max_sgl._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @sli_get_max_sgl._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1195, i32 3}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @efct_lio_setup_session._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @efct_lio_setup_session._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1204, i32 38}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1209, i32 3}
!85 = !{ptr @efct_lio_setup_session._entry.39, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @efct_lio_setup_session._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1218, i32 2}
!89 = !{ptr @efct_lio_setup_session.__UNIQUE_ID_ddebug348, !88, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1222, i32 3}
!92 = !{ptr @efct_lio_setup_session._entry.43, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @efct_lio_setup_session._entry_ptr.45, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1063, i32 4}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @efct_get_vport_tpg.__UNIQUE_ID_ddebug344, !95, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 25, i32 28}
!100 = !{ptr @efct_session_cb.__key, !101, !"__key", i1 false, i1 false}
!101 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1107, i32 2}
!102 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1272, i32 3}
!105 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @efct_lio_remove_session._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @efct_lio_remove_session._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1278, i32 2}
!110 = !{ptr @efct_lio_remove_session.__UNIQUE_ID_ddebug349, !109, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 660, i32 2}
!113 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @efct_lio_null_tmf_done.__UNIQUE_ID_ddebug337, !112, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!115 = !{ptr @efct_lio_ops, !116, !"efct_lio_ops", i1 false, i1 false}
!116 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1601, i32 44}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 348, i32 2}
!119 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @efct_lio_close_session.__UNIQUE_ID_ddebug319, !118, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 351, i32 3}
!123 = !{ptr @efct_lio_close_session.__UNIQUE_ID_ddebug320, !122, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 446, i32 2}
!126 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @efct_lio_write_pending.__UNIQUE_ID_ddebug323, !125, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 453, i32 4}
!130 = !{ptr @efct_lio_write_pending.__UNIQUE_ID_ddebug324, !129, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 594, i32 3}
!133 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @efct_lio_datamove_done.__UNIQUE_ID_ddebug330, !132, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 598, i32 2}
!137 = !{ptr @efct_lio_datamove_done.__UNIQUE_ID_ddebug331, !136, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 604, i32 4}
!140 = !{ptr @efct_lio_datamove_done.__UNIQUE_ID_ddebug332, !139, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 614, i32 4}
!143 = !{ptr @efct_lio_datamove_done.__UNIQUE_ID_ddebug333, !142, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 620, i32 3}
!146 = !{ptr @efct_lio_datamove_done.__UNIQUE_ID_ddebug334, !145, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 625, i32 3}
!149 = !{ptr @efct_lio_datamove_done.__UNIQUE_ID_ddebug335, !148, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 578, i32 3}
!152 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @efct_lio_send_resp.__UNIQUE_ID_ddebug329, !151, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 415, i32 3}
!156 = !{ptr @efct_lio_status_done.__UNIQUE_ID_ddebug321, !155, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 422, i32 2}
!159 = !{ptr @efct_lio_status_done.__UNIQUE_ID_ddebug322, !158, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 497, i32 5}
!162 = !{ptr @efct_lio_queue_data_in.__UNIQUE_ID_ddebug325, !161, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!163 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 506, i32 4}
!165 = !{ptr @efct_lio_queue_data_in.__UNIQUE_ID_ddebug326, !164, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 678, i32 2}
!168 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @efct_lio_queue_status.__UNIQUE_ID_ddebug338, !167, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 711, i32 2}
!172 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @efct_lio_queue_tm_rsp.__UNIQUE_ID_ddebug339, !171, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 647, i32 2}
!176 = !{ptr @efct_lio_tmf_done.__UNIQUE_ID_ddebug336, !175, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 308, i32 2}
!179 = !{ptr @.str.80, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @efct_lio_abort_tgt_cb.__UNIQUE_ID_ddebug318, !178, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!181 = !{ptr @.str.81, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 760, i32 3}
!183 = !{ptr @.str.82, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @efct_lio_make_nport._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @efct_lio_make_nport._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.83, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 771, i32 4}
!188 = !{ptr @.str.84, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 36, i32 9}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 41, i32 9}
!192 = !{ptr @.str.86, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 910, i32 19}
!194 = !{ptr @.str.87, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 936, i32 2}
!196 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @efct_lio_make_tpg.__UNIQUE_ID_ddebug340, !195, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!198 = !{ptr @xa_init_flags.__key, !199, !"__key", i1 false, i1 false}
!199 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!200 = !{ptr @.str.89, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 950, i32 2}
!203 = !{ptr @.str.91, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @efct_lio_drop_tpg.__UNIQUE_ID_ddebug341, !202, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!205 = !{ptr @efct_lio_tpg_attrs, !206, !"efct_lio_tpg_attrs", i1 false, i1 false}
!206 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1595, i32 35}
!207 = !{ptr @.str.92, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1594, i32 1}
!209 = !{ptr @efct_lio_tpg_attr_enable, !208, !"efct_lio_tpg_attr_enable", i1 false, i1 false}
!210 = !{ptr @.str.93, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 85, i32 35}
!212 = !{ptr @.str.94, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 100, i32 3}
!214 = !{ptr @.str.95, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @efct_lio_tpg_enable_store._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @efct_lio_tpg_enable_store._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.96, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 114, i32 3}
!219 = !{ptr @efct_lio_tpg_enable_store.__UNIQUE_ID_ddebug313, !218, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!220 = !{ptr @.str.97, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 119, i32 4}
!222 = !{ptr @efct_lio_tpg_enable_store.__UNIQUE_ID_ddebug314, !221, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!223 = !{ptr @.str.98, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 123, i32 3}
!225 = !{ptr @efct_lio_tpg_enable_store.__UNIQUE_ID_ddebug315, !224, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!226 = !{ptr @efct_lio_tpg_attrib_attrs, !227, !"efct_lio_tpg_attrib_attrs", i1 false, i1 false}
!227 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1528, i32 35}
!228 = !{ptr @.str.99, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1521, i32 1}
!230 = !{ptr @efct_lio_tpg_attrib_attr_generate_node_acls, !229, !"efct_lio_tpg_attrib_attr_generate_node_acls", i1 false, i1 false}
!231 = !{ptr @.str.100, !229, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.101, !229, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.102, !229, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @efct_lio_tpg_attrib_generate_node_acls_store._entry, !229, !"_entry", i1 false, i1 false}
!235 = !{ptr @efct_lio_tpg_attrib_generate_node_acls_store._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.104, !229, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @efct_lio_tpg_attrib_generate_node_acls_store._entry.103, !229, !"_entry", i1 false, i1 false}
!238 = !{ptr @efct_lio_tpg_attrib_generate_node_acls_store._entry_ptr.105, !229, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.106, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1522, i32 1}
!241 = !{ptr @efct_lio_tpg_attrib_attr_cache_dynamic_acls, !240, !"efct_lio_tpg_attrib_attr_cache_dynamic_acls", i1 false, i1 false}
!242 = !{ptr @.str.107, !240, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @efct_lio_tpg_attrib_cache_dynamic_acls_store._entry, !240, !"_entry", i1 false, i1 false}
!244 = !{ptr @efct_lio_tpg_attrib_cache_dynamic_acls_store._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @efct_lio_tpg_attrib_cache_dynamic_acls_store._entry.108, !240, !"_entry", i1 false, i1 false}
!246 = !{ptr @efct_lio_tpg_attrib_cache_dynamic_acls_store._entry_ptr.109, !240, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.110, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1523, i32 1}
!249 = !{ptr @efct_lio_tpg_attrib_attr_demo_mode_write_protect, !248, !"efct_lio_tpg_attrib_attr_demo_mode_write_protect", i1 false, i1 false}
!250 = !{ptr @.str.111, !248, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @efct_lio_tpg_attrib_demo_mode_write_protect_store._entry, !248, !"_entry", i1 false, i1 false}
!252 = !{ptr @efct_lio_tpg_attrib_demo_mode_write_protect_store._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @efct_lio_tpg_attrib_demo_mode_write_protect_store._entry.112, !248, !"_entry", i1 false, i1 false}
!254 = !{ptr @efct_lio_tpg_attrib_demo_mode_write_protect_store._entry_ptr.113, !248, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.114, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1524, i32 1}
!257 = !{ptr @efct_lio_tpg_attrib_attr_prod_mode_write_protect, !256, !"efct_lio_tpg_attrib_attr_prod_mode_write_protect", i1 false, i1 false}
!258 = !{ptr @.str.115, !256, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @efct_lio_tpg_attrib_prod_mode_write_protect_store._entry, !256, !"_entry", i1 false, i1 false}
!260 = !{ptr @efct_lio_tpg_attrib_prod_mode_write_protect_store._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @efct_lio_tpg_attrib_prod_mode_write_protect_store._entry.116, !256, !"_entry", i1 false, i1 false}
!262 = !{ptr @efct_lio_tpg_attrib_prod_mode_write_protect_store._entry_ptr.117, !256, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.118, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1525, i32 1}
!265 = !{ptr @efct_lio_tpg_attrib_attr_demo_mode_login_only, !264, !"efct_lio_tpg_attrib_attr_demo_mode_login_only", i1 false, i1 false}
!266 = !{ptr @.str.119, !264, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @efct_lio_tpg_attrib_demo_mode_login_only_store._entry, !264, !"_entry", i1 false, i1 false}
!268 = !{ptr @efct_lio_tpg_attrib_demo_mode_login_only_store._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @efct_lio_tpg_attrib_demo_mode_login_only_store._entry.120, !264, !"_entry", i1 false, i1 false}
!270 = !{ptr @efct_lio_tpg_attrib_demo_mode_login_only_store._entry_ptr.121, !264, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.122, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1526, i32 1}
!273 = !{ptr @efct_lio_tpg_attrib_attr_session_deletion_wait, !272, !"efct_lio_tpg_attrib_attr_session_deletion_wait", i1 false, i1 false}
!274 = !{ptr @.str.123, !272, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @efct_lio_tpg_attrib_session_deletion_wait_store._entry, !272, !"_entry", i1 false, i1 false}
!276 = !{ptr @efct_lio_tpg_attrib_session_deletion_wait_store._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @efct_lio_tpg_attrib_session_deletion_wait_store._entry.124, !272, !"_entry", i1 false, i1 false}
!278 = !{ptr @efct_lio_tpg_attrib_session_deletion_wait_store._entry_ptr.125, !272, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.126, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1638, i32 19}
!281 = !{ptr @efct_lio_npiv_ops, !282, !"efct_lio_npiv_ops", i1 false, i1 false}
!282 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1636, i32 44}
!283 = !{ptr @.str.127, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 794, i32 20}
!285 = !{ptr @.str.128, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 797, i32 3}
!287 = !{ptr @.str.129, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @efct_lio_npiv_make_nport._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @efct_lio_npiv_make_nport._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @efct_lio_npiv_make_nport._entry.130, !291, !"_entry", i1 false, i1 false}
!291 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 812, i32 3}
!292 = !{ptr @efct_lio_npiv_make_nport._entry_ptr.131, !291, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.133, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 845, i32 3}
!295 = !{ptr @efct_lio_npiv_make_nport._entry.132, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @efct_lio_npiv_make_nport._entry_ptr.134, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.135, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 974, i32 3}
!299 = !{ptr @.str.136, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @efct_lio_npiv_make_tpg._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @efct_lio_npiv_make_tpg._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.137, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 999, i32 2}
!304 = !{ptr @efct_lio_npiv_make_tpg.__UNIQUE_ID_ddebug342, !303, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!305 = !{ptr @.str.138, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1010, i32 2}
!307 = !{ptr @.str.139, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @efct_lio_npiv_drop_tpg.__UNIQUE_ID_ddebug343, !306, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!309 = !{ptr @efct_lio_npiv_tpg_attrs, !310, !"efct_lio_npiv_tpg_attrs", i1 false, i1 false}
!310 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1598, i32 35}
!311 = !{ptr @efct_lio_npiv_tpg_attr_enable, !312, !"efct_lio_npiv_tpg_attr_enable", i1 false, i1 false}
!312 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1597, i32 1}
!313 = !{ptr @.str.140, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 162, i32 3}
!315 = !{ptr @.str.141, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @efct_lio_npiv_tpg_enable_store._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @efct_lio_npiv_tpg_enable_store._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @efct_lio_npiv_tpg_enable_store.__UNIQUE_ID_ddebug316, !319, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!319 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 171, i32 3}
!320 = !{ptr @.str.143, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 182, i32 5}
!322 = !{ptr @efct_lio_npiv_tpg_enable_store._entry.142, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @efct_lio_npiv_tpg_enable_store._entry_ptr.144, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @efct_lio_npiv_tpg_enable_store.__UNIQUE_ID_ddebug317, !325, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!325 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 194, i32 3}
!326 = !{ptr @efct_lio_npiv_tpg_attrib_attrs, !327, !"efct_lio_npiv_tpg_attrib_attrs", i1 false, i1 false}
!327 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1584, i32 35}
!328 = !{ptr @efct_lio_npiv_tpg_attrib_attr_generate_node_acls, !329, !"efct_lio_npiv_tpg_attrib_attr_generate_node_acls", i1 false, i1 false}
!329 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1577, i32 1}
!330 = !{ptr @.str.145, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry.146, !329, !"_entry", i1 false, i1 false}
!334 = !{ptr @efct_lio_npiv_tpg_attrib_generate_node_acls_store._entry_ptr.147, !329, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @efct_lio_npiv_tpg_attrib_attr_cache_dynamic_acls, !336, !"efct_lio_npiv_tpg_attrib_attr_cache_dynamic_acls", i1 false, i1 false}
!336 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1578, i32 1}
!337 = !{ptr @.str.148, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry.149, !336, !"_entry", i1 false, i1 false}
!341 = !{ptr @efct_lio_npiv_tpg_attrib_cache_dynamic_acls_store._entry_ptr.150, !336, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @efct_lio_npiv_tpg_attrib_attr_demo_mode_write_protect, !343, !"efct_lio_npiv_tpg_attrib_attr_demo_mode_write_protect", i1 false, i1 false}
!343 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1579, i32 1}
!344 = !{ptr @.str.151, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry.152, !343, !"_entry", i1 false, i1 false}
!348 = !{ptr @efct_lio_npiv_tpg_attrib_demo_mode_write_protect_store._entry_ptr.153, !343, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @efct_lio_npiv_tpg_attrib_attr_prod_mode_write_protect, !350, !"efct_lio_npiv_tpg_attrib_attr_prod_mode_write_protect", i1 false, i1 false}
!350 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1580, i32 1}
!351 = !{ptr @.str.154, !350, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry, !350, !"_entry", i1 false, i1 false}
!353 = !{ptr @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry_ptr, !350, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry.155, !350, !"_entry", i1 false, i1 false}
!355 = !{ptr @efct_lio_npiv_tpg_attrib_prod_mode_write_protect_store._entry_ptr.156, !350, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @efct_lio_npiv_tpg_attrib_attr_demo_mode_login_only, !357, !"efct_lio_npiv_tpg_attrib_attr_demo_mode_login_only", i1 false, i1 false}
!357 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1581, i32 1}
!358 = !{ptr @.str.157, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry.158, !357, !"_entry", i1 false, i1 false}
!362 = !{ptr @efct_lio_npiv_tpg_attrib_demo_mode_login_only_store._entry_ptr.159, !357, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @efct_lio_npiv_tpg_attrib_attr_session_deletion_wait, !364, !"efct_lio_npiv_tpg_attrib_attr_session_deletion_wait", i1 false, i1 false}
!364 = !{!"../drivers/scsi/elx/efct/efct_lio.c", i32 1582, i32 1}
!365 = !{ptr @.str.160, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry.161, !364, !"_entry", i1 false, i1 false}
!369 = !{ptr @efct_lio_npiv_tpg_attrib_session_deletion_wait_store._entry_ptr.162, !364, !"_entry_ptr", i1 false, i1 false}
!370 = !{i32 1, !"wchar_size", i32 2}
!371 = !{i32 1, !"min_enum_size", i32 4}
!372 = !{i32 8, !"branch-target-enforcement", i32 0}
!373 = !{i32 8, !"sign-return-address", i32 0}
!374 = !{i32 8, !"sign-return-address-all", i32 0}
!375 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!376 = !{i32 7, !"uwtable", i32 1}
!377 = !{i32 7, !"frame-pointer", i32 2}
!378 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!379 = !{i64 2148980083, i64 2148980088, i64 2148980101, i64 2148980145, i64 2148980179, i64 2148980200}
!380 = !{i64 2148376826}
!381 = !{i64 2148292135, i64 2148292167, i64 2148292196, i64 2148292230, i64 2148292261, i64 2148292284}
!382 = !{i64 2148377055}
!383 = !{i64 2148379867}
!384 = !{i64 2148294600, i64 2148294632, i64 2148294661, i64 2148294695, i64 2148294726, i64 2148294749}
!385 = !{i64 2148380096}
!386 = !{i64 2148380946}
!387 = !{i64 2148295410, i64 2148295442, i64 2148295471, i64 2148295505, i64 2148295536, i64 2148295559}
!388 = !{!"branch_weights", i32 2000, i32 1}
!389 = !{i64 2149329922}
!390 = !{i8 0, i8 2}
!391 = !{!"auto-init"}
!392 = !{!"branch_weights", i32 1, i32 2000}
