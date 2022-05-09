; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/efct/efct_xport.c_pt.bc'
source_filename = "../drivers/scsi/elx/efct/efct_xport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.efct = type { ptr, [6 x ptr], i32, i8, i8, i8, [16 x %struct.efct_intr_context], i32, [32 x i8], i32, %struct.list_head, %struct.efct_scsi_tgt, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.efct_hw, i32, ptr, i32, %struct.xarray, i32, i32, ptr }
%struct.efct_intr_context = type { ptr, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.efct_xport = type { ptr, i64, i64, i32, %struct.atomic_t, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.timer_list, %union.efct_xport_stats_u, %struct.efct_xport_fcp_stats }
%union.efct_xport_stats_u = type { %struct.efct_xport_host_statistics }
%struct.efct_xport_host_statistics = type { %struct.completion, %struct.efct_xport_link_stats, %struct.efct_xport_host_stats }
%struct.efct_xport_link_stats = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efct_xport_host_stats = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efct_xport_fcp_stats = type { i64, i64, i64, i64, i64 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.fc_host_attrs = type { i64, i64, i64, i32, [32 x i8], i32, i32, i16, i32, i32, i32, i32, [64 x i8], [64 x i8], [256 x i8], [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [8 x i8], [256 x i8], i32, i32, i32, [32 x i8], i32, i64, [256 x i8], [256 x i8], i32, %struct.fc_fpin_stats, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i16, [20 x i8], ptr, [20 x i8], ptr, ptr, i8 }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.efct_hw_link_stat_counts = type { i8, i32 }
%struct.efct_hw_host_stat_counts = type { i32 }
%struct.__va_list = type { ptr }
%struct.efc = type { ptr, ptr, ptr, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.libefc_function_template, %struct.spinlock, i8, i8, i32, ptr, ptr, ptr, i64, i64, i8, i32, i32, ptr, %struct.atomic_t, i8, %struct.spinlock, %struct.list_head, i32 }
%struct.libefc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efc_domain = type { ptr, [32 x i8], %struct.list_head, %struct.kref, ptr, ptr, ptr, i32, i32, i32, i32, %struct.efc_dma, i64, %struct.efc_sm_ctx, i8, i8, i8, i8, i8, i8, i8, i8, %struct.efc_domain_record, [120 x i8], [120 x i8], %struct.xarray, ptr }
%struct.efc_sm_ctx = type { ptr, ptr, ptr }
%struct.efc_domain_record = type { i32, i32, [6 x i8], [8 x i8], %union.anon.84, i32, i32, i8, i8 }
%union.anon.84 = type { [512 x i8] }
%struct.efc_nport = type { %struct.list_head, %struct.kref, ptr, ptr, i32, [32 x i8], i8, i8, i8, i8, i8, ptr, i64, i64, ptr, ptr, i32, i32, %struct.efc_dma, [32 x i8], i64, i64, %struct.efc_sm_ctx, %struct.xarray, i8, i8, i8, i8, i32, i32, [120 x i8], i32 }
%struct.fc_vport = type { i32, i32, i64, i64, i32, i32, i32, [64 x i8], ptr, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.work_struct }
%struct.efct_vport = type { ptr, i8, %struct.fc_host_statistics, ptr, ptr, i64, i64 }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@efct_xport_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 88, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Can't setup hardware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efct_xport_attach\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/elx/efct/efct_xport.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efct_xport_attach._entry_ptr = internal global ptr @efct_xport_attach._entry, section ".printk_index", align 4
@efct_xport_attach._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 96, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't allocate IO pool\0A\00", [40 x i8] zeroinitializer }, align 32
@efct_xport_attach._entry_ptr.7 = internal global ptr @efct_xport_attach._entry.5, section ".printk_index", align 4
@efct_xport_initialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&xport->io_pending_lock\00", [40 x i8] zeroinitializer }, align 32
@efct_xport_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 231, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efct_hw_init failure\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"efct_xport_initialize\00", [42 x i8] zeroinitializer }, align 32
@efct_xport_initialize._entry_ptr = internal global ptr @efct_xport_initialize._entry, section ".printk_index", align 4
@efct_xport_initialize._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 237, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize target\0A\00", [35 x i8] zeroinitializer }, align 32
@efct_xport_initialize._entry_ptr.13 = internal global ptr @efct_xport_initialize._entry.11, section ".printk_index", align 4
@efct_xport_initialize._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 243, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to initialize initiator\0A\00", [32 x i8] zeroinitializer }, align 32
@efct_xport_initialize._entry_ptr.16 = internal global ptr @efct_xport_initialize._entry.14, section ".printk_index", align 4
@efct_xport_status.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"efct\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efct_xport_status\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sem wait failed\0A\00", [47 x i8] zeroinitializer }, align 32
@efct_xport_status.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@efct_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr null, ptr null, ptr null, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 64, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@efct_scsi_new_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 383, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate Scsi_Host struct\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efct_scsi_new_device\00", [43 x i8] zeroinitializer }, align 32
@efct_scsi_new_device._entry_ptr = internal global ptr @efct_scsi_new_device._entry, section ".printk_index", align 4
@efct_xport_fc_tt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@efct_scsi_new_device.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"transport template=%p\0A\00", [41 x i8] zeroinitializer }, align 32
@efct_scsi_new_device.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed scsi_add_host_with_dma\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Emulex %s FV%s DV%s\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1.0.0.0\00", [24 x i8] zeroinitializer }, align 32
@efct_attach_fc_transport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013failed to attach EFCT with fc transport\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"efct_attach_fc_transport\00", [39 x i8] zeroinitializer }, align 32
@efct_attach_fc_transport._entry_ptr = internal global ptr @efct_attach_fc_transport._entry, section ".printk_index", align 4
@efct_attach_vport_fc_transport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.28, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"efct_attach_vport_fc_transport\00", [33 x i8] zeroinitializer }, align 32
@efct_attach_vport_fc_transport._entry_ptr = internal global ptr @efct_attach_vport_fc_transport._entry, section ".printk_index", align 4
@efct_scsi_reg_fc_transport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: failed to attach to scsi_transport_*\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"efct_scsi_reg_fc_transport\00", [37 x i8] zeroinitializer }, align 32
@efct_scsi_reg_fc_transport._entry_ptr = internal global ptr @efct_scsi_reg_fc_transport._entry, section ".printk_index", align 4
@efct_vport_fc_tt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@efct_scsi_reg_fc_transport._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@efct_scsi_reg_fc_transport._entry_ptr.32 = internal global ptr @efct_scsi_reg_fc_transport._entry.31, section ".printk_index", align 4
@efct_xport_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 542, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Can't init port\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_xport_control\00", [45 x i8] zeroinitializer }, align 32
@efct_xport_control._entry_ptr = internal global ptr @efct_xport_control._entry, section ".printk_index", align 4
@efct_xport_control._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 550, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"port shutdown failed\0A\00", [42 x i8] zeroinitializer }, align 32
@efct_xport_control._entry_ptr.37 = internal global ptr @efct_xport_control._entry.35, section ".printk_index", align 4
@efct_xport_control.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.34, ptr @.str.2, ptr @.str.38, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Waiting %d seconds for domain shutdown\0A\00", [56 x i8] zeroinitializer }, align 32
@efct_xport_control._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.34, ptr @.str.2, i32 585, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Domain shutdown timed out!!\0A\00", [35 x i8] zeroinitializer }, align 32
@efct_xport_control._entry_ptr.41 = internal global ptr @efct_xport_control._entry.39, section ".printk_index", align 4
@efct_xport_control.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.34, ptr @.str.2, ptr @.str.42, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" WWNN %016llx\0A\00", [17 x i8] zeroinitializer }, align 32
@efct_xport_control.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.34, ptr @.str.2, ptr @.str.43, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" WWPN %016llx\0A\00", [17 x i8] zeroinitializer }, align 32
@efct_release_fc_transport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013releasing transport layer\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"efct_release_fc_transport\00", [38 x i8] zeroinitializer }, align 32
@efct_release_fc_transport._entry_ptr = internal global ptr @efct_release_fc_transport._entry, section ".printk_index", align 4
@efct_scsi_del_device.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efct_scsi_del_device\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unregistering with Transport Layer\0A\00", [60 x i8] zeroinitializer }, align 32
@efct_scsi_del_device.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unregistering with SCSI Midlayer\0A\00", [62 x i8] zeroinitializer }, align 32
@efct_scsi_new_vport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.49, ptr @.str.2, i32 907, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efct_scsi_new_vport\00", [44 x i8] zeroinitializer }, align 32
@efct_scsi_new_vport._entry_ptr = internal global ptr @efct_scsi_new_vport._entry, section ".printk_index", align 4
@efct_scsi_new_vport.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vport transport template=%p\0A\00", [35 x i8] zeroinitializer }, align 32
@efct_scsi_new_vport.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.49, ptr @.str.2, ptr @.str.23, i8 0, i8 -23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@efct_scsi_del_vport.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 -18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efct_scsi_del_vport\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unregistering vport with Transport Layer\0A\00", [54 x i8] zeroinitializer }, align 32
@efct_scsi_del_vport.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.51, ptr @.str.2, ptr @.str.53, i8 0, i8 -17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unregistering vport with SCSI Midlayer\0A\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@efct_xport_config_stats_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: failed to locate EFCT device\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"efct_xport_config_stats_timer\00", [34 x i8] zeroinitializer }, align 32
@efct_xport_config_stats_timer._entry_ptr = internal global ptr @efct_xport_config_stats_timer._entry, section ".printk_index", align 4
@efct_xport_config_stats_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&xport->stats_timer)\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@efct_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@efct_debugfs_count = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sessions\00", [23 x i8] zeroinitializer }, align 32
@efct_xport_init_debugfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to create debugfs entry for sessions\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"efct_xport_init_debugfs\00", [40 x i8] zeroinitializer }, align 32
@efct_xport_init_debugfs._entry_ptr = internal global ptr @efct_xport_init_debugfs._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sli_get_max_sgl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.63, i32 3745, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported SGL page sizes %#x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sli_get_max_sgl\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/scsi/elx/efct/../libefc/../libefc_sli/sli4.h\00", [43 x i8] zeroinitializer }, align 32
@sli_get_max_sgl._entry_ptr = internal global ptr @sli_get_max_sgl._entry, section ".printk_index", align 4
@efct_xport_functions = internal global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efct_get_host_port_id, ptr @efct_get_host_port_type, ptr @efct_get_host_port_state, ptr null, ptr @efct_get_host_speed, ptr @efct_get_host_fabric_name, ptr null, ptr null, ptr @efct_get_stats, ptr @efct_reset_stats, ptr @efct_issue_lip, ptr null, ptr null, ptr null, ptr @efct_vport_create, ptr @efct_vport_disable, ptr @efct_vport_delete, ptr null, ptr null, i32 4, i32 128, i32 0, i8 -1, i8 120, i8 7, i8 -16 }, [48 x i8] zeroinitializer }, align 32
@efct_get_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013efct_xport_status returned non 0 - %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efct_get_stats\00", [17 x i8] zeroinitializer }, align 32
@efct_get_stats._entry_ptr = internal global ptr @efct_get_stats._entry, section ".printk_index", align 4
@efct_reset_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.67, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efct_reset_stats\00", [47 x i8] zeroinitializer }, align 32
@efct_reset_stats._entry_ptr = internal global ptr @efct_reset_stats._entry, section ".printk_index", align 4
@efct_issue_lip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: shost=%p vport=%p efct=%p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efct_issue_lip\00", [17 x i8] zeroinitializer }, align 32
@efct_issue_lip._entry_ptr = internal global ptr @efct_issue_lip._entry, section ".printk_index", align 4
@efct_issue_lip.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.69, ptr @.str.2, ptr @.str.71, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EFCT_XPORT_PORT_ONLINE failed\0A\00", [33 x i8] zeroinitializer }, align 32
@efct_vport_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 980, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to create vport\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efct_vport_create\00", [46 x i8] zeroinitializer }, align 32
@efct_vport_create._entry_ptr = internal global ptr @efct_vport_create._entry, section ".printk_index", align 4
@efct_vport_delete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: vport delete failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efct_vport_delete\00", [46 x i8] zeroinitializer }, align 32
@efct_vport_delete._entry_ptr = internal global ptr @efct_vport_delete._entry, section ".printk_index", align 4
@efct_vport_functions = internal global { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 }, [48 x i8] } { { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i8 } { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efct_get_host_port_id, ptr @efct_get_host_vport_type, ptr @efct_get_host_port_state, ptr null, ptr @efct_get_host_speed, ptr @efct_get_host_fabric_name, ptr null, ptr null, ptr @efct_get_stats, ptr @efct_reset_stats, ptr @efct_issue_lip, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4, i32 128, i32 0, i8 -1, i8 120, i8 7, i8 -16 }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.77 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.78 = internal global [11 x i64] [i64 9, i64 32, i64 1000, i64 2000, i64 4000, i64 8000, i64 10000, i64 16000, i64 32000, i64 64000, i64 128000]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 88, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 96, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 220, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 231, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 237, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 243, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 315, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant [14 x i8] c"efct_template\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 13, i32 34 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 383, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"efct_xport_fc_tt\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 23, i32 40 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 412, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 418, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 425, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 426, i32 33 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 448, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 461, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 472, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"efct_vport_fc_tt\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 24, i32 40 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 478, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 541, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 550, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 580, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 585, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 608, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 625, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 651, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 669, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 671, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 907, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 926, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 954, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 957, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 196, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 207, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [18 x i8] c"efct_debugfs_root\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 10, i32 23 }
@___asan_gen_.280 = private unnamed_addr constant [19 x i8] c"efct_debugfs_count\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 11, i32 17 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 50, i32 47 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 53, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 87, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [46 x i8] c"../drivers/scsi/elx/efct/../libefc_sli/sli4.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 3744, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant [21 x i8] c"efct_xport_functions\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1019, i32 36 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 817, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 867, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 878, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 893, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 980, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1008, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant [21 x i8] c"efct_vport_functions\00", align 1
@___asan_gen_.362 = private constant [38 x i8] c"../drivers/scsi/elx/efct/efct_xport.c\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 1068, i32 36 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @efct_attach_fc_transport._entry, ptr @efct_attach_fc_transport._entry_ptr, ptr @efct_attach_vport_fc_transport._entry, ptr @efct_attach_vport_fc_transport._entry_ptr, ptr @efct_get_stats._entry, ptr @efct_get_stats._entry_ptr, ptr @efct_issue_lip._entry, ptr @efct_issue_lip._entry_ptr, ptr @efct_release_fc_transport._entry, ptr @efct_release_fc_transport._entry_ptr, ptr @efct_reset_stats._entry, ptr @efct_reset_stats._entry_ptr, ptr @efct_scsi_new_device._entry, ptr @efct_scsi_new_device._entry_ptr, ptr @efct_scsi_new_vport._entry, ptr @efct_scsi_new_vport._entry_ptr, ptr @efct_scsi_reg_fc_transport._entry, ptr @efct_scsi_reg_fc_transport._entry.31, ptr @efct_scsi_reg_fc_transport._entry_ptr, ptr @efct_scsi_reg_fc_transport._entry_ptr.32, ptr @efct_vport_create._entry, ptr @efct_vport_create._entry_ptr, ptr @efct_vport_delete._entry, ptr @efct_vport_delete._entry_ptr, ptr @efct_xport_attach._entry, ptr @efct_xport_attach._entry.5, ptr @efct_xport_attach._entry_ptr, ptr @efct_xport_attach._entry_ptr.7, ptr @efct_xport_config_stats_timer._entry, ptr @efct_xport_config_stats_timer._entry_ptr, ptr @efct_xport_control._entry, ptr @efct_xport_control._entry.35, ptr @efct_xport_control._entry.39, ptr @efct_xport_control._entry_ptr, ptr @efct_xport_control._entry_ptr.37, ptr @efct_xport_control._entry_ptr.41, ptr @efct_xport_init_debugfs._entry, ptr @efct_xport_init_debugfs._entry_ptr, ptr @efct_xport_initialize._entry, ptr @efct_xport_initialize._entry.11, ptr @efct_xport_initialize._entry.14, ptr @efct_xport_initialize._entry_ptr, ptr @efct_xport_initialize._entry_ptr.13, ptr @efct_xport_initialize._entry_ptr.16, ptr @sli_get_max_sgl._entry, ptr @sli_get_max_sgl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @efct_xport_initialize.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @efct_template, ptr @.str.20, ptr @.str.21, ptr @efct_xport_fc_tt, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @efct_vport_fc_tt, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @efct_xport_config_stats_timer.__key, ptr @.str.56, ptr @efct_debugfs_root, ptr @efct_debugfs_count, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @init_completion.__key, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @efct_xport_functions, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @efct_vport_functions], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_xport_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_xport_attach._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_xport_initialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_xport_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_xport_initialize._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_xport_initialize._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_new_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_xport_fc_tt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_attach_fc_transport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_attach_vport_fc_transport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_reg_fc_transport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_vport_fc_tt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_reg_fc_transport._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_xport_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_xport_control._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_xport_control._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_release_fc_transport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_scsi_new_vport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_xport_config_stats_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_xport_config_stats_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_debugfs_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_xport_init_debugfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sli_get_max_sgl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_xport_functions to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_get_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_reset_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_issue_lip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_vport_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_vport_delete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_vport_functions to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @efct_xport_alloc(ptr noundef %efct) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 432) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %efct, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_xport_attach(ptr nocapture noundef %xport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xport, align 8
  %hw = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call i32 @efct_hw_setup(ptr noundef %hw, ptr noundef %1, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %desc = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %7) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %filter_def = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %filter_def to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %filter_def, align 4
  %call4 = tail call i32 @efct_hw_parse_filter(ptr noundef %hw, ptr noundef %9) #12
  %n_sgl = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19, i32 9, i32 6
  %10 = ptrtoint ptr %n_sgl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_sgl, align 8
  %call6 = tail call ptr @efct_io_pool_create(ptr noundef %1, i32 noundef %11) #12
  %io_pool = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 6
  %12 = ptrtoint ptr %io_pool to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call6, ptr %io_pool, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %do.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.6) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -12, %do.end12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_parse_filter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efct_io_pool_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_xport_initialize(ptr noundef %xport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xport, align 8
  %io_pending_lock = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %io_pending_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @efct_xport_initialize.__key, i16 noundef signext 3) #12
  %io_pending_list = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 8
  %2 = ptrtoint ptr %io_pending_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %io_pending_list, ptr %io_pending_list, align 4
  %prev.i = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %io_pending_list, ptr %prev.i, align 4
  %io_active_count = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_active_count, i32 noundef 4) #12
  %4 = ptrtoint ptr %io_active_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %io_active_count, align 4
  %io_pending_count = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 13
  %call.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending_count, i32 noundef 4) #12
  %5 = ptrtoint ptr %io_pending_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %io_pending_count, align 4
  %io_total_free = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 10
  %call.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_total_free, i32 noundef 4) #12
  %6 = ptrtoint ptr %io_total_free to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %io_total_free, align 4
  %io_total_pending = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 11
  %call.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_total_pending, i32 noundef 4) #12
  %7 = ptrtoint ptr %io_total_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %io_total_pending, align 4
  %io_alloc_failed_count = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 4
  %call.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_alloc_failed_count, i32 noundef 4) #12
  %8 = ptrtoint ptr %io_alloc_failed_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %io_alloc_failed_count, align 4
  %io_pending_recursing = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 14
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_pending_recursing, i32 noundef 4) #12
  %9 = ptrtoint ptr %io_pending_recursing to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %io_pending_recursing, align 4
  %hw = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19
  %call2 = tail call i32 @efct_hw_init(ptr noundef %hw) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call i32 @efct_scsi_tgt_new_device(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end14, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.12) #16
  br label %hw_init_out

if.end14:                                         ; preds = %if.end
  %call15 = tail call i32 @efct_scsi_new_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.15) #16
  %call25 = tail call i32 @efct_scsi_tgt_del_device(ptr noundef %1) #12
  br label %hw_init_out

if.end23:                                         ; preds = %if.end14
  tail call fastcc void @efct_xport_config_stats_timer(ptr noundef %1)
  %16 = load ptr, ptr @efct_debugfs_root, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end23.if.end.i_crit_edge

if.end23.if.end.i_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.17, ptr noundef null) #12
  store ptr %call.i, ptr @efct_debugfs_root, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @efct_debugfs_count, i32 noundef 4) #12
  store volatile i32 0, ptr @efct_debugfs_count, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end23.if.end.i_crit_edge
  %sess_debugfs_dir.i = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 26
  %17 = ptrtoint ptr %sess_debugfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sess_debugfs_dir.i, align 8
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  %19 = load ptr, ptr @efct_debugfs_root, align 4
  %call3.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.57, ptr noundef %19) #12
  %20 = ptrtoint ptr %sess_debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call3.i, ptr %sess_debugfs_dir.i, align 8
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.58) #16
  br label %cleanup

if.end8.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @efct_debugfs_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @efct_debugfs_count, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @efct_debugfs_count, ptr nonnull @efct_debugfs_count, i32 1, ptr nonnull elementtype(i32) @efct_debugfs_count) #12, !srcloc !194
  br label %cleanup

hw_init_out:                                      ; preds = %do.end20, %do.end11
  %rc.0 = phi i32 [ %call6, %do.end11 ], [ %call15, %do.end20 ]
  tail call void @efct_hw_teardown(ptr noundef %hw) #12
  br label %cleanup

cleanup:                                          ; preds = %hw_init_out, %if.end8.i, %do.end.i, %if.end.i.cleanup_crit_edge, %do.end5
  %retval.0 = phi i32 [ %call2, %do.end5 ], [ %rc.0, %hw_init_out ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end8.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_tgt_new_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_new_device(ptr noundef %efct) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scsi_host_alloc(ptr noundef nonnull @efct_template, i32 noundef 280) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efct, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %shost1 = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 14
  %2 = ptrtoint ptr %shost1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %shost1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 53
  %3 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %efct, ptr %hostdata, align 8
  %hw = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19
  %n_io = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 9, i32 5
  %4 = ptrtoint ptr %n_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_io, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 26
  %6 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %can_queue, align 4
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 24
  %7 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 16, ptr %max_cmd_len, align 4
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 21
  %8 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65535, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 22
  %9 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 4294967295, ptr %max_lun, align 8
  %sgl_page_sizes.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 32
  %10 = ptrtoint ptr %sgl_page_sizes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sgl_page_sizes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 1
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pci.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 1
  %12 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, i32 noundef %11) #16
  br label %sli_get_max_sgl.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %max_sgl_pages.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 33
  %14 = ptrtoint ptr %max_sgl_pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_sgl_pages.i, align 4
  %.tr = trunc i32 %15 to i16
  %phi.cast = shl i16 %.tr, 8
  br label %sli_get_max_sgl.exit

sli_get_max_sgl.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i90 = phi i16 [ 0, %do.end.i ], [ %phi.cast, %if.end.i ]
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 28
  %16 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %retval.0.i90, ptr %sg_tablesize, align 2
  %17 = load ptr, ptr @efct_xport_fc_tt, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 12
  %18 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %transportt, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_new_device.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_new_device, %if.then10)) #12
          to label %do.end15 [label %if.then10], !srcloc !195

if.then10:                                        ; preds = %sli_get_max_sgl.exit
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %efct, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = load ptr, ptr @efct_xport_fc_tt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_new_device.__UNIQUE_ID_ddebug315, ptr noundef %dev12, ptr noundef nonnull @.str.22, ptr noundef %21) #12
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %sli_get_max_sgl.exit
  %22 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %efct, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %call20 = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call, ptr noundef %dev17, ptr noundef %dev17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end41, label %do.body23

do.body23:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_new_device.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_new_device, %if.then35)) #12
          to label %cleanup [label %if.then35], !srcloc !195

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %efct, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_new_device.__UNIQUE_ID_ddebug316, ptr noundef %dev37, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end41:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 51
  %26 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shost_data, align 8
  %symbolic_name = getelementptr inbounds %struct.fc_host_attrs, ptr %27, i32 0, i32 28
  %model = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 18
  %28 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %model, align 8
  %fw_name = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 21
  %call46 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %symbolic_name, i32 noundef 256, ptr noundef nonnull @.str.24, ptr noundef %29, ptr noundef %fw_name, ptr noundef nonnull @.str.25)
  %30 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shost_data, align 8
  %supported_classes = getelementptr inbounds %struct.fc_host_attrs, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %supported_classes to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %supported_classes, align 8
  %link_module_type.i.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 11
  %33 = ptrtoint ptr %link_module_type.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %link_module_type.i.i, align 4
  %conv.i.i = zext i16 %34 to i32
  %and.i = lshr i32 %conv.i.i, 2
  %35 = and i32 %and.i, 3
  %and.2.i = lshr i32 %conv.i.i, 3
  %36 = and i32 %and.2.i, 8
  %37 = or i32 %36, %35
  %38 = and i32 %and.2.i, 16
  %39 = or i32 %37, %38
  %and.4.i = lshr i32 %conv.i.i, 4
  %40 = and i32 %and.4.i, 32
  %41 = or i32 %39, %40
  %42 = and i32 %and.4.i, 64
  %43 = or i32 %41, %42
  %and.6.i = shl nuw nsw i32 %conv.i.i, 1
  %44 = and i32 %and.6.i, 4096
  %45 = or i32 %43, %44
  %46 = and i32 %and.6.i, 8192
  %47 = or i32 %45, %46
  %48 = load ptr, ptr %shost_data, align 8
  %supported_speeds = getelementptr inbounds %struct.fc_host_attrs, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %supported_speeds to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %47, ptr %supported_speeds, align 4
  %call51 = tail call i64 @efct_get_wwnn(ptr noundef %hw) #12
  %50 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %shost_data, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %call51, ptr %51, align 8
  %call54 = tail call i64 @efct_get_wwpn(ptr noundef %hw) #12
  %53 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %shost_data, align 8
  %port_name = getelementptr inbounds %struct.fc_host_attrs, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %port_name to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %call54, ptr %port_name, align 8
  %56 = load ptr, ptr %shost_data, align 8
  %max_npiv_vports = getelementptr inbounds %struct.fc_host_attrs, ptr %56, i32 0, i32 7
  %57 = ptrtoint ptr %max_npiv_vports to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 128, ptr %max_npiv_vports, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then35, %do.body23, %do.end
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -12, %do.end ], [ -5, %if.then35 ], [ -5, %do.body23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efct_xport_config_stats_timer(ptr noundef %efct) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %efct, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %xport1 = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 12
  %0 = ptrtoint ptr %xport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xport1, align 8
  %hw = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19
  %fc_xport_stats = getelementptr inbounds %struct.efct_xport, ptr %1, i32 0, i32 17
  %call2 = tail call i32 @efct_hw_get_link_stats(ptr noundef %hw, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @efct_xport_async_link_stats_cb, ptr noundef %fc_xport_stats) #12
  %call5 = tail call i32 @efct_hw_get_host_stats(ptr noundef %hw, i8 noundef zeroext 0, ptr noundef nonnull @efct_xport_async_host_stats_cb, ptr noundef %fc_xport_stats) #12
  %stats_timer = getelementptr inbounds %struct.efct_xport, ptr %1, i32 0, i32 16
  tail call void @init_timer_key(ptr noundef %stats_timer, ptr noundef nonnull @efct_xport_stats_timer_cb, i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef nonnull @efct_xport_config_stats_timer.__key) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 300
  %call11 = tail call i32 @mod_timer(ptr noundef %stats_timer, i32 noundef %add) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_tgt_del_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efct_hw_teardown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_xport_status(ptr nocapture noundef %xport, i32 noundef %cmd, ptr noundef %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xport, align 8
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb4
    i32 2, label %sw.bb8
    i32 4, label %sw.bb11
    i32 5, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %configured_link_state = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 15
  %3 = ptrtoint ptr %configured_link_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %configured_link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %configured_link_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %configured_link_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %6 = ptrtoint ptr %configured_link_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %configured_link_state, align 4
  %8 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %result, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %speed.i = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19, i32 42, i32 3
  %9 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %result, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %result, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %speed.i80 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19, i32 42, i32 3
  %13 = ptrtoint ptr %speed.i80 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed.i80, align 4
  %15 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %result, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %xport12 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %xport12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xport12, align 8
  %fc_xport_stats = getelementptr inbounds %struct.efct_xport, ptr %17, i32 0, i32 17
  %18 = call ptr @memcpy(ptr %result, ptr %fc_xport_stats, i32 220)
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %19 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %result, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %result, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @init_completion.__key) #12
  %hw14 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19
  %call15 = tail call i32 @efct_hw_get_link_stats(ptr noundef %hw14, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull @efct_xport_link_stats_cb, ptr noundef %result) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end17, label %sw.bb13.sw.epilog_crit_edge

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end17:                                         ; preds = %sw.bb13
  %call19 = tail call i32 @wait_for_completion_interruptible(ptr noundef %result) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end28, label %do.body

do.body:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_xport_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_xport_status, %if.then26)) #12
          to label %sw.epilog [label %if.then26], !srcloc !195

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_xport_status.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.19) #12
  br label %sw.epilog

if.end28:                                         ; preds = %if.end17
  %call30 = tail call i32 @efct_hw_get_host_stats(ptr noundef %hw14, i8 noundef zeroext 1, ptr noundef nonnull @efct_xport_host_stats_cb, ptr noundef %result) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.sw.epilog_crit_edge

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end33:                                         ; preds = %if.end28
  %call35 = tail call i32 @wait_for_completion_interruptible(ptr noundef %result) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end33.sw.epilog_crit_edge, label %do.body38

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_xport_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_xport_status, %if.then50)) #12
          to label %sw.epilog [label %if.then50], !srcloc !195

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_xport_status.__UNIQUE_ID_ddebug314, ptr noundef %dev52, ptr noundef nonnull @.str.19) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then50, %do.body38, %if.end33.sw.epilog_crit_edge, %if.end28.sw.epilog_crit_edge, %if.then26, %do.body, %sw.bb13.sw.epilog_crit_edge, %sw.bb11, %sw.bb8, %if.else, %if.then6, %if.end, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ %call15, %sw.bb13.sw.epilog_crit_edge ], [ %call30, %if.end28.sw.epilog_crit_edge ], [ 0, %if.end33.sw.epilog_crit_edge ], [ 0, %sw.bb11 ], [ 0, %sw.bb8 ], [ 0, %if.then6 ], [ 0, %if.else ], [ 0, %if.end ], [ -5, %if.then26 ], [ -5, %if.then50 ], [ -5, %entry.sw.epilog_crit_edge ], [ -5, %do.body ], [ -5, %do.body38 ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_get_link_stats(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_xport_link_stats_cb(i32 noundef %status, i32 noundef %num_counters, ptr nocapture noundef readonly %counters, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %counter = getelementptr inbounds %struct.efct_hw_link_stat_counts, ptr %counters, i32 0, i32 1
  %0 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %counter, align 4
  %link_failure_error_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 1, i32 24
  %2 = ptrtoint ptr %link_failure_error_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %link_failure_error_count, align 4
  %counter2 = getelementptr %struct.efct_hw_link_stat_counts, ptr %counters, i32 1, i32 1
  %3 = ptrtoint ptr %counter2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %counter2, align 4
  %loss_of_sync_error_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 1, i32 25
  %5 = ptrtoint ptr %loss_of_sync_error_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %loss_of_sync_error_count, align 4
  %counter5 = getelementptr %struct.efct_hw_link_stat_counts, ptr %counters, i32 3, i32 1
  %6 = ptrtoint ptr %counter5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %counter5, align 4
  %primitive_sequence_error_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 1, i32 27
  %8 = ptrtoint ptr %primitive_sequence_error_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %primitive_sequence_error_count, align 4
  %counter8 = getelementptr %struct.efct_hw_link_stat_counts, ptr %counters, i32 4, i32 1
  %9 = ptrtoint ptr %counter8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %counter8, align 4
  %invalid_transmission_word_error_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 1, i32 28
  %11 = ptrtoint ptr %invalid_transmission_word_error_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %invalid_transmission_word_error_count, align 4
  %counter11 = getelementptr %struct.efct_hw_link_stat_counts, ptr %counters, i32 5, i32 1
  %12 = ptrtoint ptr %counter11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %counter11, align 4
  %crc_error_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 1, i32 29
  %14 = ptrtoint ptr %crc_error_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %crc_error_count, align 4
  tail call void @complete(ptr noundef %arg) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_get_host_stats(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_xport_host_stats_cb(i32 noundef %status, i32 noundef %num_counters, ptr nocapture noundef readonly %counters, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %counters, align 4
  %transmit_kbyte_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %transmit_kbyte_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %transmit_kbyte_count, align 4
  %arrayidx1 = getelementptr %struct.efct_hw_host_stat_counts, ptr %counters, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %receive_kbyte_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %receive_kbyte_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %receive_kbyte_count, align 4
  %arrayidx4 = getelementptr %struct.efct_hw_host_stat_counts, ptr %counters, i32 2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %transmit_frame_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %transmit_frame_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %transmit_frame_count, align 4
  %arrayidx7 = getelementptr %struct.efct_hw_host_stat_counts, ptr %counters, i32 3
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7, align 4
  %receive_frame_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %receive_frame_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %receive_frame_count, align 4
  tail call void @complete(ptr noundef %arg) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @efct_get_wwnn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @efct_get_wwpn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_attach_fc_transport() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fc_attach_transport(ptr noundef nonnull @efct_xport_functions) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_attach_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_attach_vport_fc_transport() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fc_attach_transport(ptr noundef nonnull @efct_vport_functions) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_reg_fc_transport() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @fc_attach_transport(ptr noundef nonnull @efct_xport_functions) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  store ptr null, ptr @efct_xport_fc_tt, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #16
  br label %return

if.end:                                           ; preds = %entry
  store ptr %call.i, ptr @efct_xport_fc_tt, align 4
  %call.i10 = tail call ptr @fc_attach_transport(ptr noundef nonnull @efct_vport_functions) #12
  %tobool.not.i11 = icmp eq ptr %call.i10, null
  br i1 %tobool.not.i11, label %do.end6, label %efct_attach_vport_fc_transport.exit

efct_attach_vport_fc_transport.exit:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %call.i10, ptr @efct_vport_fc_tt, align 4
  br label %return

do.end6:                                          ; preds = %if.end
  %call1.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #16
  store ptr null, ptr @efct_vport_fc_tt, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #16
  %0 = load ptr, ptr @efct_xport_fc_tt, align 4
  %tobool.not.i14 = icmp eq ptr %0, null
  br i1 %tobool.not.i14, label %do.end6.efct_release_fc_transport.exit_crit_edge, label %do.end.i16

do.end6.efct_release_fc_transport.exit_crit_edge: ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %efct_release_fc_transport.exit

do.end.i16:                                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #16
  br label %efct_release_fc_transport.exit

efct_release_fc_transport.exit:                   ; preds = %do.end.i16, %do.end6.efct_release_fc_transport.exit_crit_edge
  tail call void @fc_release_transport(ptr noundef %0) #12
  store ptr null, ptr @efct_xport_fc_tt, align 4
  br label %return

return:                                           ; preds = %efct_release_fc_transport.exit, %efct_attach_vport_fc_transport.exit, %do.end
  %retval.0 = phi i32 [ -5, %efct_release_fc_transport.exit ], [ -5, %do.end ], [ 0, %efct_attach_vport_fc_transport.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_release_fc_transport(ptr noundef %transport_template) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %transport_template, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @fc_release_transport(ptr noundef %transport_template) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_scsi_release_fc_transport() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @efct_xport_fc_tt, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.efct_release_fc_transport.exit_crit_edge, label %do.end.i

entry.efct_release_fc_transport.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %efct_release_fc_transport.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #16
  br label %efct_release_fc_transport.exit

efct_release_fc_transport.exit:                   ; preds = %do.end.i, %entry.efct_release_fc_transport.exit_crit_edge
  tail call void @fc_release_transport(ptr noundef %0) #12
  store ptr null, ptr @efct_xport_fc_tt, align 4
  %1 = load ptr, ptr @efct_vport_fc_tt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %efct_release_fc_transport.exit.if.end_crit_edge, label %efct_release_fc_transport.exit4

efct_release_fc_transport.exit.if.end_crit_edge:  ; preds = %efct_release_fc_transport.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

efct_release_fc_transport.exit4:                  ; preds = %efct_release_fc_transport.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #16
  tail call void @fc_release_transport(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %efct_release_fc_transport.exit4, %efct_release_fc_transport.exit.if.end_crit_edge
  store ptr null, ptr @efct_vport_fc_tt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_xport_detach(ptr noundef %xport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xport, align 8
  %call = tail call i32 @efct_scsi_tgt_del_device(ptr noundef %1) #12
  tail call void @efct_scsi_del_device(ptr noundef %1)
  %pprev.i.i = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 16, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %stats_timer = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 16
  %call4 = tail call i32 @del_timer(ptr noundef %stats_timer) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hw = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19
  tail call void @efct_hw_teardown(ptr noundef %hw) #12
  %sess_debugfs_dir.i = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %sess_debugfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess_debugfs_dir.i, align 8
  tail call void @debugfs_remove(ptr noundef %5) #12
  %6 = ptrtoint ptr %sess_debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sess_debugfs_dir.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @efct_debugfs_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @efct_debugfs_count, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @efct_debugfs_count, ptr nonnull @efct_debugfs_count, i32 1, ptr nonnull elementtype(i32) @efct_debugfs_count) #12, !srcloc !196
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @efct_debugfs_count, i32 noundef 4) #12
  %8 = load volatile i32, ptr @efct_debugfs_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.efct_xport_delete_debugfs.exit_crit_edge

if.end.efct_xport_delete_debugfs.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %efct_xport_delete_debugfs.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = load ptr, ptr @efct_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %9) #12
  store ptr null, ptr @efct_debugfs_root, align 4
  br label %efct_xport_delete_debugfs.exit

efct_xport_delete_debugfs.exit:                   ; preds = %if.then.i, %if.end.efct_xport_delete_debugfs.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_scsi_del_device(ptr nocapture noundef %efct) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shost = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 14
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_del_device.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_del_device, %if.then4)) #12
          to label %do.end [label %if.then4], !srcloc !195

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efct, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_del_device.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.47) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %4 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost, align 8
  tail call void @fc_remove_host(ptr noundef %5) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_del_device.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_del_device, %if.then19)) #12
          to label %do.end23 [label %if.then19], !srcloc !195

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %efct, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_del_device.__UNIQUE_ID_ddebug321, ptr noundef %dev21, ptr noundef nonnull @.str.48) #12
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.end
  %8 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost, align 8
  tail call void @scsi_remove_host(ptr noundef %9) #12
  %10 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost, align 8
  tail call void @scsi_host_put(ptr noundef %11) #12
  %12 = ptrtoint ptr %shost to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %shost, align 8
  br label %return

return:                                           ; preds = %do.end23, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_xport_control(ptr nocapture noundef %xport, i32 noundef %cmd, ...) local_unnamed_addr #0 align 64 {
entry:
  %argp = alloca %struct.__va_list, align 4
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argp) #12
  %0 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %argp, align 4, !annotation !197
  %1 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xport, align 8
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb15
    i32 5, label %sw.bb78
    i32 6, label %sw.bb97
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %hw = getelementptr inbounds %struct.efct, ptr %2, i32 0, i32 19
  %call = tail call i32 @efct_hw_port_control(ptr noundef %hw, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %desc = getelementptr inbounds %struct.efct, ptr %2, i32 0, i32 17
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef %7) #16
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %configured_link_state = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 15
  %8 = ptrtoint ptr %configured_link_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %configured_link_state, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %hw3 = getelementptr inbounds %struct.efct, ptr %2, i32 0, i32 19
  %call4 = tail call i32 @efct_hw_port_control(ptr noundef %hw3, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else12, label %do.end9

do.end9:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.36) #16
  br label %sw.epilog

if.else12:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %configured_link_state13 = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 15
  %11 = ptrtoint ptr %configured_link_state13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %configured_link_state13, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #12
  %12 = getelementptr inbounds i8, ptr %done, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 52)
  %sli = getelementptr inbounds %struct.efct, ptr %2, i32 0, i32 19, i32 1
  %call17 = tail call zeroext i1 @sli_reset_required(ptr noundef %sli) #12
  br i1 %call17, label %if.then18, label %if.else25

if.then18:                                        ; preds = %sw.bb15
  %efcport = getelementptr inbounds %struct.efct, ptr %2, i32 0, i32 13
  %14 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %efcport, align 4
  %domain19 = getelementptr inbounds %struct.efc, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %domain19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %domain19, align 8
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %if.then18.if.end28_crit_edge, label %if.then21

if.then18.if.end28_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %call23 = tail call i32 @efc_domain_cb(ptr noundef %15, i32 noundef 6, ptr noundef nonnull %17) #12
  br label %if.end28

if.else25:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  %hw16 = getelementptr inbounds %struct.efct, ptr %2, i32 0, i32 19
  %call27 = tail call i32 @efct_hw_port_control(ptr noundef %hw16, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.then21, %if.then18.if.end28_crit_edge
  %18 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @init_completion.__key) #12
  %efcport29 = getelementptr inbounds %struct.efct, ptr %2, i32 0, i32 13
  %19 = ptrtoint ptr %efcport29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %efcport29, align 4
  call void @efc_register_domain_free_cb(ptr noundef %20, ptr noundef nonnull @efct_xport_domain_free_cb, ptr noundef nonnull %done) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_xport_control.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_xport_control, %if.then35)) #12
          to label %do.end40 [label %if.then35], !srcloc !195

if.then35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %2, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_xport_control.__UNIQUE_ID_ddebug317, ptr noundef %dev37, ptr noundef nonnull @.str.38, i32 noundef 30) #12
  br label %do.end40

do.end40:                                         ; preds = %if.then35, %if.end28
  %call.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 30000000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 3000
  %call42 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done, i32 noundef %spec.select.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.end47, label %do.end40.if.end75_crit_edge

do.end40.if.end75_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

do.end47:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %2, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.40) #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 586, i32 noundef 9, ptr noundef null) #12
  br label %if.end75

if.end75:                                         ; preds = %do.end47, %do.end40.if.end75_crit_edge
  %25 = ptrtoint ptr %efcport29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %efcport29, align 4
  call void @efc_register_domain_free_cb(ptr noundef %26, ptr noundef null, ptr noundef null) #12
  %27 = ptrtoint ptr %efcport29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %efcport29, align 4
  call void @efc_vport_del_all(ptr noundef %28) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #12
  br label %sw.epilog

sw.bb78:                                          ; preds = %entry
  call void @llvm.va_start(ptr nonnull %argp)
  %29 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %29)
  %argp.cur = load ptr, ptr %argp, align 4
  %30 = ptrtoint ptr %argp.cur to i32
  %31 = add i32 %30, 7
  %32 = and i32 %31, -8
  %argp.cur.aligned = inttoptr i32 %32 to ptr
  %argp.next = getelementptr inbounds i8, ptr %argp.cur.aligned, i32 8
  store ptr %argp.next, ptr %argp, align 4
  %33 = ptrtoint ptr %argp.cur.aligned to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %argp.cur.aligned, align 8
  call void @llvm.va_end(ptr nonnull %argp)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_xport_control.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_xport_control, %if.then91)) #12
          to label %do.end96 [label %if.then91], !srcloc !195

if.then91:                                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %2, align 8
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_xport_control.__UNIQUE_ID_ddebug318, ptr noundef %dev93, ptr noundef nonnull @.str.42, i64 noundef %34) #12
  br label %do.end96

do.end96:                                         ; preds = %if.then91, %sw.bb78
  %req_wwnn = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 2
  %37 = ptrtoint ptr %req_wwnn to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %34, ptr %req_wwnn, align 8
  br label %sw.epilog

sw.bb97:                                          ; preds = %entry
  call void @llvm.va_start(ptr nonnull %argp)
  %38 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %38)
  %argp.cur98 = load ptr, ptr %argp, align 4
  %39 = ptrtoint ptr %argp.cur98 to i32
  %40 = add i32 %39, 7
  %41 = and i32 %40, -8
  %argp.cur98.aligned = inttoptr i32 %41 to ptr
  %argp.next99 = getelementptr inbounds i8, ptr %argp.cur98.aligned, i32 8
  store ptr %argp.next99, ptr %argp, align 4
  %42 = ptrtoint ptr %argp.cur98.aligned to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %argp.cur98.aligned, align 8
  call void @llvm.va_end(ptr nonnull %argp)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_xport_control.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_xport_control, %if.then112)) #12
          to label %do.end117 [label %if.then112], !srcloc !195

if.then112:                                       ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %2, align 8
  %dev114 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_xport_control.__UNIQUE_ID_ddebug319, ptr noundef %dev114, ptr noundef nonnull @.str.43, i64 noundef %43) #12
  br label %do.end117

do.end117:                                        ; preds = %if.then112, %sw.bb97
  %req_wwpn = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 1
  %46 = ptrtoint ptr %req_wwpn to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %43, ptr %req_wwpn, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end117, %do.end96, %if.end75, %if.else12, %do.end9, %if.else, %do.end, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %do.end117 ], [ 0, %do.end96 ], [ 0, %if.end75 ], [ 0, %do.end9 ], [ 0, %if.else12 ], [ %call, %do.end ], [ 0, %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argp) #12
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_port_control(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sli_reset_required(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efc_domain_cb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_register_domain_free_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_xport_domain_free_cb(ptr nocapture noundef readnone %efc, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %arg) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @efc_vport_del_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efct_xport_free(ptr noundef %xport) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %xport, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %io_pool = getelementptr inbounds %struct.efct_xport, ptr %xport, i32 0, i32 6
  %0 = ptrtoint ptr %io_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_pool, align 4
  %call = tail call i32 @efct_io_pool_free(ptr noundef %1) #12
  tail call void @kfree(ptr noundef nonnull %xport) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_io_pool_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_release_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efct_scsi_new_vport(ptr noundef %efct, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @scsi_host_alloc(ptr noundef nonnull @efct_template, i32 noundef 280) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efct, align 8
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %efct, ptr %hostdata, align 8
  %is_vport = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %is_vport to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %is_vport, align 4
  %n_io = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 9, i32 5
  %4 = ptrtoint ptr %n_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_io, align 4
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 26
  %6 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %can_queue, align 4
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 24
  %7 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 16, ptr %max_cmd_len, align 4
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 21
  %8 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65535, ptr %max_id, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 22
  %9 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 4294967295, ptr %max_lun, align 8
  %sgl_page_sizes.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 32
  %10 = ptrtoint ptr %sgl_page_sizes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sgl_page_sizes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 1
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pci.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 1
  %12 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.61, i32 noundef %11) #16
  br label %sli_get_max_sgl.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %max_sgl_pages.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 33
  %14 = ptrtoint ptr %max_sgl_pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_sgl_pages.i, align 4
  %.tr = trunc i32 %15 to i16
  %phi.cast = shl i16 %.tr, 8
  br label %sli_get_max_sgl.exit

sli_get_max_sgl.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i78 = phi i16 [ 0, %do.end.i ], [ %phi.cast, %if.end.i ]
  %sg_tablesize = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 28
  %16 = ptrtoint ptr %sg_tablesize to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %retval.0.i78, ptr %sg_tablesize, align 2
  %17 = load ptr, ptr @efct_vport_fc_tt, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 12
  %18 = ptrtoint ptr %transportt to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %transportt, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_new_vport.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_new_vport, %if.then10)) #12
          to label %do.end15 [label %if.then10], !srcloc !195

if.then10:                                        ; preds = %sli_get_max_sgl.exit
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %efct, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = load ptr, ptr @efct_vport_fc_tt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_new_vport.__UNIQUE_ID_ddebug324, ptr noundef %dev12, ptr noundef nonnull @.str.50, ptr noundef %21) #12
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %sli_get_max_sgl.exit
  %22 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %efct, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %call18 = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call, ptr noundef %dev, ptr noundef %dev17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end39, label %do.body21

do.body21:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_new_vport.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_new_vport, %if.then33)) #12
          to label %cleanup [label %if.then33], !srcloc !195

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %efct, align 8
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_new_vport.__UNIQUE_ID_ddebug325, ptr noundef %dev35, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end39:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #14
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 0, i32 51
  %26 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shost_data, align 8
  %symbolic_name = getelementptr inbounds %struct.fc_host_attrs, ptr %27, i32 0, i32 28
  %model = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 18
  %28 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %model, align 8
  %fw_name = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 21
  %call44 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %symbolic_name, i32 noundef 256, ptr noundef nonnull @.str.24, ptr noundef %29, ptr noundef %fw_name, ptr noundef nonnull @.str.25)
  %30 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shost_data, align 8
  %supported_classes = getelementptr inbounds %struct.fc_host_attrs, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %supported_classes to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %supported_classes, align 8
  %link_module_type.i.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 11
  %33 = ptrtoint ptr %link_module_type.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %link_module_type.i.i, align 4
  %conv.i.i = zext i16 %34 to i32
  %and.i = lshr i32 %conv.i.i, 2
  %35 = and i32 %and.i, 3
  %and.2.i = lshr i32 %conv.i.i, 3
  %36 = and i32 %and.2.i, 8
  %37 = or i32 %36, %35
  %38 = and i32 %and.2.i, 16
  %39 = or i32 %37, %38
  %and.4.i = lshr i32 %conv.i.i, 4
  %40 = and i32 %and.4.i, 32
  %41 = or i32 %39, %40
  %42 = and i32 %and.4.i, 64
  %43 = or i32 %41, %42
  %and.6.i = shl nuw nsw i32 %conv.i.i, 1
  %44 = and i32 %and.6.i, 4096
  %45 = or i32 %43, %44
  %46 = and i32 %and.6.i, 8192
  %47 = or i32 %45, %46
  %48 = load ptr, ptr %shost_data, align 8
  %supported_speeds = getelementptr inbounds %struct.fc_host_attrs, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %supported_speeds to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %47, ptr %supported_speeds, align 4
  %shost48 = getelementptr inbounds %struct.Scsi_Host, ptr %call, i32 1, i32 13, i32 0, i32 0, i32 2
  %50 = ptrtoint ptr %shost48 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call, ptr %shost48, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then33, %do.body21, %do.end
  %retval.0 = phi ptr [ %hostdata, %if.end39 ], [ null, %do.end ], [ null, %if.then33 ], [ null, %do.body21 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efct_scsi_del_vport(ptr nocapture noundef readonly %efct, ptr noundef %shost) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %shost, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_del_vport.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_del_vport, %if.then4)) #12
          to label %do.end [label %if.then4], !srcloc !195

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efct, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_del_vport.__UNIQUE_ID_ddebug326, ptr noundef %dev, ptr noundef nonnull @.str.52) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  tail call void @fc_remove_host(ptr noundef nonnull %shost) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_del_vport.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_scsi_del_vport, %if.then17)) #12
          to label %do.end21 [label %if.then17], !srcloc !195

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efct, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_del_vport.__UNIQUE_ID_ddebug327, ptr noundef %dev19, ptr noundef nonnull @.str.53) #12
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %do.end
  tail call void @scsi_remove_host(ptr noundef nonnull %shost) #12
  tail call void @scsi_host_put(ptr noundef nonnull %shost) #12
  br label %return

return:                                           ; preds = %do.end21, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end21 ], [ -5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efct_xport_async_link_stats_cb(i32 noundef %status, i32 noundef %num_counters, ptr nocapture noundef readonly %counters, ptr nocapture noundef writeonly %arg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %counter = getelementptr inbounds %struct.efct_hw_link_stat_counts, ptr %counters, i32 0, i32 1
  %0 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %counter, align 4
  %link_failure_error_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 1, i32 24
  %2 = ptrtoint ptr %link_failure_error_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %link_failure_error_count, align 4
  %counter2 = getelementptr %struct.efct_hw_link_stat_counts, ptr %counters, i32 1, i32 1
  %3 = ptrtoint ptr %counter2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %counter2, align 4
  %loss_of_sync_error_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 1, i32 25
  %5 = ptrtoint ptr %loss_of_sync_error_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %loss_of_sync_error_count, align 4
  %counter5 = getelementptr %struct.efct_hw_link_stat_counts, ptr %counters, i32 3, i32 1
  %6 = ptrtoint ptr %counter5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %counter5, align 4
  %primitive_sequence_error_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 1, i32 27
  %8 = ptrtoint ptr %primitive_sequence_error_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %primitive_sequence_error_count, align 4
  %counter8 = getelementptr %struct.efct_hw_link_stat_counts, ptr %counters, i32 4, i32 1
  %9 = ptrtoint ptr %counter8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %counter8, align 4
  %invalid_transmission_word_error_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 1, i32 28
  %11 = ptrtoint ptr %invalid_transmission_word_error_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %invalid_transmission_word_error_count, align 4
  %counter11 = getelementptr %struct.efct_hw_link_stat_counts, ptr %counters, i32 5, i32 1
  %12 = ptrtoint ptr %counter11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %counter11, align 4
  %crc_error_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 1, i32 29
  %14 = ptrtoint ptr %crc_error_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %crc_error_count, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efct_xport_async_host_stats_cb(i32 noundef %status, i32 noundef %num_counters, ptr nocapture noundef readonly %counters, ptr nocapture noundef writeonly %arg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %counters, align 4
  %transmit_kbyte_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %transmit_kbyte_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %transmit_kbyte_count, align 4
  %arrayidx1 = getelementptr %struct.efct_hw_host_stat_counts, ptr %counters, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1, align 4
  %receive_kbyte_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %receive_kbyte_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %receive_kbyte_count, align 4
  %arrayidx4 = getelementptr %struct.efct_hw_host_stat_counts, ptr %counters, i32 2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %transmit_frame_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %transmit_frame_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %transmit_frame_count, align 4
  %arrayidx7 = getelementptr %struct.efct_hw_host_stat_counts, ptr %counters, i32 3
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7, align 4
  %receive_frame_count = getelementptr inbounds %struct.efct_xport_host_statistics, ptr %arg, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %receive_frame_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %receive_frame_count, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_xport_stats_timer_cb(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -120
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @efct_xport_config_stats_timer(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efct_get_host_port_id(ptr nocapture noundef readonly %shost) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %efcport = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efcport, align 4
  %domain = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %nport3 = getelementptr inbounds %struct.efc_domain, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %nport3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nport3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %fc_id = getelementptr inbounds %struct.efc_nport, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %fc_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fc_id, align 4
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %10 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost_data, align 8
  %port_id = getelementptr inbounds %struct.fc_host_attrs, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %port_id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efct_get_host_port_type(ptr nocapture noundef readonly %shost) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %efcport = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efcport, align 4
  %domain = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %land.lhs.true

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %nport = getelementptr inbounds %struct.efc_domain, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nport, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end22_crit_edge, label %if.then

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then:                                          ; preds = %land.lhs.true
  %is_loop = getelementptr inbounds %struct.efc_domain, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %is_loop to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_loop, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.else, label %if.then.if.end22_crit_edge

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.else:                                          ; preds = %if.then
  %is_vport = getelementptr inbounds %struct.efc_nport, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %is_vport to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_vport, align 8, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  br i1 %tobool10.not, label %if.else12, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.else12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %topology = getelementptr inbounds %struct.efc_nport, ptr %7, i32 0, i32 29
  %12 = ptrtoint ptr %topology to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %topology, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %switch.selectcmp = icmp eq i32 %13, 0
  %switch.select = select i1 %switch.selectcmp, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch.selectcmp31 = icmp eq i32 %13, 2
  %switch.select32 = select i1 %switch.selectcmp31, i32 6, i32 %switch.select
  br label %if.end22

if.end22:                                         ; preds = %if.else12, %if.else.if.end22_crit_edge, %if.then.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  %type.1 = phi i32 [ 0, %land.lhs.true.if.end22_crit_edge ], [ 0, %entry.if.end22_crit_edge ], [ 5, %if.then.if.end22_crit_edge ], [ 7, %if.else.if.end22_crit_edge ], [ %switch.select32, %if.else12 ]
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %14 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost_data, align 8
  %port_type = getelementptr inbounds %struct.fc_host_attrs, ptr %15, i32 0, i32 23
  %16 = ptrtoint ptr %port_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %type.1, ptr %port_type, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efct_get_host_port_state(ptr nocapture noundef readonly %shost) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %xport = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xport, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %speed.i.i = getelementptr inbounds %struct.efct, ptr %5, i32 0, i32 19, i32 42, i32 3
  %6 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5.i = icmp eq i32 %7, 0
  %shost_data2 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %8 = ptrtoint ptr %shost_data2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost_data2, align 8
  %port_state3 = getelementptr inbounds %struct.fc_host_attrs, ptr %9, i32 0, i32 24
  %. = select i1 %cmp5.i, i32 3, i32 2
  %10 = ptrtoint ptr %port_state3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %., ptr %port_state3, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efct_get_host_speed(ptr nocapture noundef readonly %shost) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %efcport = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efcport, align 4
  %domain = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nport = getelementptr inbounds %struct.efc_domain, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %nport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nport, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.then6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %lor.lhs.false
  %xport = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xport, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %speed.i80.i = getelementptr inbounds %struct.efct, ptr %11, i32 0, i32 19, i32 42, i32 3
  %12 = ptrtoint ptr %speed.i80.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed.i80.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %13, label %if.then6.cleanup_crit_edge [
    i32 1000, label %sw.bb
    i32 2000, label %sw.bb7
    i32 4000, label %sw.bb8
    i32 8000, label %sw.bb9
    i32 10000, label %sw.bb10
    i32 16000, label %sw.bb11
    i32 32000, label %sw.bb12
    i32 64000, label %sw.bb13
    i32 128000, label %sw.bb14
  ]

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb7:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb8:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb9:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb10:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb11:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb12:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb13:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb14:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb, %if.then6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %fc_speed.0.sink = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ], [ 8192, %sw.bb14 ], [ 4096, %sw.bb13 ], [ 64, %sw.bb12 ], [ 32, %sw.bb11 ], [ 4, %sw.bb10 ], [ 16, %sw.bb9 ], [ 8, %sw.bb8 ], [ 2, %sw.bb7 ], [ 1, %sw.bb ]
  %shost_data16 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %15 = ptrtoint ptr %shost_data16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shost_data16, align 8
  %speed17 = getelementptr inbounds %struct.fc_host_attrs, ptr %16, i32 0, i32 26
  %17 = ptrtoint ptr %speed17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %fc_speed.0.sink, ptr %speed17, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efct_get_host_fabric_name(ptr nocapture noundef readonly %shost) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %efcport = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efcport, align 4
  %domain = getelementptr inbounds %struct.efc, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fl_wwnn = getelementptr inbounds %struct.efc_domain, ptr %5, i32 0, i32 24, i32 28
  %6 = ptrtoint ptr %fl_wwnn to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %fl_wwnn, align 1
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %8 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost_data, align 8
  %fabric_name = getelementptr inbounds %struct.fc_host_attrs, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %fabric_name to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %7, ptr %fabric_name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @efct_get_stats(ptr noundef %shost) #0 align 64 {
cleanup:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %xport2 = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %xport2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xport2, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %xport12.i = getelementptr inbounds %struct.efct, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %xport12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xport12.i, align 8
  %stats.sroa.4.0.fc_xport_stats.i.sroa_idx = getelementptr inbounds %struct.efct_xport, ptr %7, i32 0, i32 17, i32 0, i32 1, i32 24
  %8 = ptrtoint ptr %stats.sroa.4.0.fc_xport_stats.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %stats.sroa.4.0.copyload = load i32, ptr %stats.sroa.4.0.fc_xport_stats.i.sroa_idx, align 8
  %stats.sroa.5.0.fc_xport_stats.i.sroa_idx = getelementptr inbounds %struct.efct_xport, ptr %7, i32 0, i32 17, i32 0, i32 1, i32 25
  %9 = ptrtoint ptr %stats.sroa.5.0.fc_xport_stats.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %stats.sroa.5.0.copyload = load i32, ptr %stats.sroa.5.0.fc_xport_stats.i.sroa_idx, align 4
  %stats.sroa.664.0.fc_xport_stats.i.sroa_idx = getelementptr inbounds %struct.efct_xport, ptr %7, i32 0, i32 17, i32 0, i32 1, i32 27
  %10 = ptrtoint ptr %stats.sroa.664.0.fc_xport_stats.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %stats.sroa.664.0.copyload = load i32, ptr %stats.sroa.664.0.fc_xport_stats.i.sroa_idx, align 4
  %stats.sroa.7.0.fc_xport_stats.i.sroa_idx = getelementptr inbounds %struct.efct_xport, ptr %7, i32 0, i32 17, i32 0, i32 1, i32 28
  %11 = ptrtoint ptr %stats.sroa.7.0.fc_xport_stats.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %stats.sroa.7.0.copyload = load i32, ptr %stats.sroa.7.0.fc_xport_stats.i.sroa_idx, align 8
  %stats.sroa.8.0.fc_xport_stats.i.sroa_idx = getelementptr inbounds %struct.efct_xport, ptr %7, i32 0, i32 17, i32 0, i32 1, i32 29
  %12 = ptrtoint ptr %stats.sroa.8.0.fc_xport_stats.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %stats.sroa.8.0.copyload = load i32, ptr %stats.sroa.8.0.fc_xport_stats.i.sroa_idx, align 4
  %stats.sroa.965.0.fc_xport_stats.i.sroa_idx = getelementptr inbounds %struct.efct_xport, ptr %7, i32 0, i32 17, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %stats.sroa.965.0.fc_xport_stats.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %stats.sroa.965.0.copyload = load i32, ptr %stats.sroa.965.0.fc_xport_stats.i.sroa_idx, align 4
  %stats.sroa.10.0.fc_xport_stats.i.sroa_idx = getelementptr inbounds %struct.efct_xport, ptr %7, i32 0, i32 17, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %stats.sroa.10.0.fc_xport_stats.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %stats.sroa.10.0.copyload = load i32, ptr %stats.sroa.10.0.fc_xport_stats.i.sroa_idx, align 8
  %stats.sroa.11.0.fc_xport_stats.i.sroa_idx = getelementptr inbounds %struct.efct_xport, ptr %7, i32 0, i32 17, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %stats.sroa.11.0.fc_xport_stats.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %stats.sroa.11.0.copyload = load i32, ptr %stats.sroa.11.0.fc_xport_stats.i.sroa_idx, align 4
  %stats.sroa.12.0.fc_xport_stats.i.sroa_idx = getelementptr inbounds %struct.efct_xport, ptr %7, i32 0, i32 17, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %stats.sroa.12.0.fc_xport_stats.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %stats.sroa.12.0.copyload = load i32, ptr %stats.sroa.12.0.fc_xport_stats.i.sroa_idx, align 8
  %conv = zext i32 %stats.sroa.5.0.copyload to i64
  %fc_host_stats = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 1
  %loss_of_sync_count = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 1, i32 3
  %17 = ptrtoint ptr %loss_of_sync_count to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %loss_of_sync_count, align 8
  %conv5 = zext i32 %stats.sroa.4.0.copyload to i64
  %link_failure_count = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 1, i32 1
  %18 = ptrtoint ptr %link_failure_count to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv5, ptr %link_failure_count, align 8
  %conv8 = zext i32 %stats.sroa.664.0.copyload to i64
  %prim_seq_protocol_err_count = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 1, i32 4, i32 2
  %19 = ptrtoint ptr %prim_seq_protocol_err_count to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv8, ptr %prim_seq_protocol_err_count, align 8
  %conv11 = zext i32 %stats.sroa.7.0.copyload to i64
  %invalid_tx_word_count = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 1, i32 4, i32 6
  %20 = ptrtoint ptr %invalid_tx_word_count to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv11, ptr %invalid_tx_word_count, align 8
  %conv14 = zext i32 %stats.sroa.8.0.copyload to i64
  %invalid_crc_count = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 2
  %21 = ptrtoint ptr %invalid_crc_count to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv14, ptr %invalid_crc_count, align 8
  %mul = shl i32 %stats.sroa.965.0.copyload, 8
  %conv16 = zext i32 %mul to i64
  %tx_words = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 3
  %22 = ptrtoint ptr %tx_words to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv16, ptr %tx_words, align 8
  %mul19 = shl i32 %stats.sroa.10.0.copyload, 8
  %conv20 = zext i32 %mul19 to i64
  %rx_words = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 3, i32 0, i32 0, i32 4
  %23 = ptrtoint ptr %rx_words to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv20, ptr %rx_words, align 8
  %conv23 = zext i32 %stats.sroa.11.0.copyload to i64
  %tx_frames = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 2
  %24 = ptrtoint ptr %tx_frames to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv23, ptr %tx_frames, align 8
  %conv26 = zext i32 %stats.sroa.12.0.copyload to i64
  %rx_frames = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 3, i32 0, i32 0, i32 2
  %25 = ptrtoint ptr %rx_frames to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv26, ptr %rx_frames, align 8
  %fcp_stats = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 18
  %input_requests = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 18, i32 2
  %26 = ptrtoint ptr %input_requests to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %input_requests, align 8
  %fcp_input_requests = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 3, i32 1
  %28 = ptrtoint ptr %fcp_input_requests to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %fcp_input_requests, align 8
  %output_requests = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 18, i32 3
  %29 = ptrtoint ptr %output_requests to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %output_requests, align 8
  %fcp_output_requests = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5
  %31 = ptrtoint ptr %fcp_output_requests to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %fcp_output_requests, align 8
  %output_bytes = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 18, i32 1
  %32 = ptrtoint ptr %output_bytes to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %output_bytes, align 8
  %shr = lshr i64 %33, 20
  %fcp_output_megabytes = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 7
  %34 = ptrtoint ptr %fcp_output_megabytes to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %shr, ptr %fcp_output_megabytes, align 8
  %35 = ptrtoint ptr %fcp_stats to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %fcp_stats, align 8
  %shr34 = lshr i64 %36, 20
  %fcp_input_megabytes = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 3
  %37 = ptrtoint ptr %fcp_input_megabytes to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %shr34, ptr %fcp_input_megabytes, align 8
  %control_requests = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 18, i32 4
  %38 = ptrtoint ptr %control_requests to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %control_requests, align 8
  %fcp_control_requests = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 1, i32 1
  %40 = ptrtoint ptr %fcp_control_requests to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %fcp_control_requests, align 8
  ret ptr %fc_host_stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_reset_stats(ptr nocapture noundef readonly %shost) #0 align 64 {
entry:
  %dummy = alloca %union.efct_xport_stats_u, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  call void @llvm.lifetime.start.p0(i64 220, ptr nonnull %dummy) #12
  %2 = call ptr @memset(ptr %dummy, i32 255, i32 220)
  %xport = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xport, align 8
  %call = call i32 @efct_xport_status(ptr noundef %4, i32 noundef 5, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %call) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 220, ptr nonnull %dummy) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_issue_lip(ptr noundef %shost) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %shost, null
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %spec.select = select i1 %tobool.not, ptr null, ptr %hostdata
  %tobool1.not = icmp eq ptr %spec.select, null
  br i1 %tobool1.not, label %entry.do.end_crit_edge, label %cond.end5

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

cond.end5:                                        ; preds = %entry
  %0 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec.select, align 8
  %tobool10.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %cond.end5.do.end_crit_edge, label %if.end

cond.end5.do.end_crit_edge:                       ; preds = %cond.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %cond.end5.do.end_crit_edge, %entry.do.end_crit_edge
  %cond669 = phi ptr [ %1, %cond.end5.do.end_crit_edge ], [ null, %entry.do.end_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, ptr noundef %shost, ptr noundef %spec.select, ptr noundef %cond669) #16
  br label %cleanup

if.end:                                           ; preds = %cond.end5
  %xport = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xport, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hw3.i = getelementptr inbounds %struct.efct, ptr %5, i32 0, i32 19
  %call4.i = tail call i32 @efct_hw_port_control(ptr noundef %hw3.i, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.else12.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %dev11.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.36) #16
  br label %if.end24

if.else12.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %configured_link_state13.i = getelementptr inbounds %struct.efct_xport, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %configured_link_state13.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %configured_link_state13.i, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else12.i, %do.end9.i
  %9 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xport, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %hw.i = getelementptr inbounds %struct.efct, ptr %12, i32 0, i32 19
  %call.i = tail call i32 @efct_hw_port_control(ptr noundef %hw.i, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %efct_xport_control.exit64.thread, label %do.body29

efct_xport_control.exit64.thread:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %configured_link_state.i = getelementptr inbounds %struct.efct_xport, ptr %10, i32 0, i32 15
  %13 = ptrtoint ptr %configured_link_state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %configured_link_state.i, align 4
  br label %cleanup

do.body29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %12, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %desc.i = getelementptr inbounds %struct.efct, ptr %12, i32 0, i32 17
  %16 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.33, ptr noundef %17) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_issue_lip.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_issue_lip, %if.then41)) #12
          to label %cleanup [label %if.then41], !srcloc !195

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_issue_lip.__UNIQUE_ID_ddebug323, ptr noundef %dev43, ptr noundef nonnull @.str.71) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %do.body29, %efct_xport_control.exit64.thread, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.then41 ], [ 0, %efct_xport_control.exit64.thread ], [ 0, %do.body29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_vport_create(ptr noundef %fc_vport, i1 noundef zeroext %disable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fc_vport, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end:                                         ; preds = %entry
  %shost1 = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 9
  %0 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost1, align 8
  %tobool2.not = icmp eq ptr %1, null
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %tobool7.not56 = icmp eq ptr %hostdata, null
  %tobool7.not = select i1 %tobool2.not, i1 true, i1 %tobool7.not56
  br i1 %tobool7.not, label %cond.end.cleanup_crit_edge, label %cond.end11

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.end11:                                       ; preds = %cond.end
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata, align 8
  %tobool16.not = icmp eq ptr %3, null
  br i1 %tobool16.not, label %cond.end11.cleanup_crit_edge, label %if.end

cond.end11.cleanup_crit_edge:                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end11
  %dev = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 14
  %call = tail call ptr @efct_scsi_new_vport(ptr noundef nonnull %3, ptr noundef %dev)
  %tobool17.not = icmp eq ptr %call, null
  br i1 %tobool17.not, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.72) #16
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %fc_vport21 = getelementptr inbounds %struct.efct_vport, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %fc_vport21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fc_vport, ptr %fc_vport21, align 4
  %port_name = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 3
  %7 = ptrtoint ptr %port_name to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %port_name, align 8
  %npiv_wwpn = getelementptr inbounds %struct.efct_vport, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %npiv_wwpn to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %npiv_wwpn, align 8
  %node_name = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 2
  %10 = ptrtoint ptr %node_name to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %node_name, align 8
  %npiv_wwnn = getelementptr inbounds %struct.efct_vport, ptr %call, i32 0, i32 6
  %12 = ptrtoint ptr %npiv_wwnn to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %npiv_wwnn, align 8
  %shost23 = getelementptr inbounds %struct.efct_vport, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %shost23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %shost23, align 8
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 51
  %15 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shost_data, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %11, ptr %16, align 8
  %18 = load i64, ptr %npiv_wwpn, align 8
  %19 = load ptr, ptr %shost23, align 8
  %shost_data27 = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 51
  %20 = ptrtoint ptr %shost_data27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shost_data27, align 8
  %port_name28 = getelementptr inbounds %struct.fc_host_attrs, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %port_name28 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %18, ptr %port_name28, align 8
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %23 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dd_data, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call, ptr %24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end, %cond.end11.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -5, %cond.end11.cleanup_crit_edge ], [ -5, %do.end ], [ -5, %cond.end.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efct_vport_disable(ptr nocapture noundef readnone %fc_vport, i1 noundef zeroext %disable) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_vport_delete(ptr nocapture noundef readonly %fc_vport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %fc_vport, i32 0, i32 8
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %cond.end6

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

cond.end6:                                        ; preds = %entry
  %shost1 = getelementptr inbounds %struct.efct_vport, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost1, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %cond.end6.do.end_crit_edge, label %do.body.i

cond.end6.do.end_crit_edge:                       ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.body.i:                                        ; preds = %cond.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_del_vport.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_vport_delete, %if.then4.i)) #12
          to label %do.end.i [label %if.then4.i], !srcloc !195

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_del_vport.__UNIQUE_ID_ddebug326, ptr noundef %dev.i, ptr noundef nonnull @.str.52) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  tail call void @fc_remove_host(ptr noundef nonnull %5) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_scsi_del_vport.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_vport_delete, %if.then17.i)) #12
          to label %efct_scsi_del_vport.exit [label %if.then17.i], !srcloc !195

if.then17.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %dev19.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_scsi_del_vport.__UNIQUE_ID_ddebug327, ptr noundef %dev19.i, ptr noundef nonnull @.str.53) #12
  br label %efct_scsi_del_vport.exit

efct_scsi_del_vport.exit:                         ; preds = %if.then17.i, %do.end.i
  tail call void @scsi_remove_host(ptr noundef nonnull %5) #12
  tail call void @scsi_host_put(ptr noundef nonnull %5) #12
  br label %if.end

do.end:                                           ; preds = %cond.end6.do.end_crit_edge, %entry.do.end_crit_edge
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %efct_scsi_del_vport.exit
  %retval.0.i23 = phi i32 [ -5, %do.end ], [ 0, %efct_scsi_del_vport.exit ]
  ret i32 %retval.0.i23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @efct_get_host_vport_type(ptr nocapture noundef readonly %shost) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shost_data = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 51
  %0 = ptrtoint ptr %shost_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost_data, align 8
  %port_type = getelementptr inbounds %struct.fc_host_attrs, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %port_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7, ptr %port_type, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !105, !107, !108, !110, !112, !113, !114, !116, !117, !119, !121, !123, !124, !125, !126, !128, !129, !131, !133, !134, !135, !136, !138, !140, !142, !143, !145, !147, !148, !149, !150, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !172, !173, !175, !176, !177, !178, !180, !181, !182, !183}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 88, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @efct_xport_attach._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @efct_xport_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 96, i32 3}
!10 = !{ptr @efct_xport_attach._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @efct_xport_attach._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @efct_xport_initialize.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 220, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 231, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @efct_xport_initialize._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @efct_xport_initialize._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 237, i32 3}
!22 = !{ptr @efct_xport_initialize._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @efct_xport_initialize._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 243, i32 3}
!26 = !{ptr @efct_xport_initialize._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @efct_xport_initialize._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 315, i32 4}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @efct_xport_status.__UNIQUE_ID_ddebug313, !29, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!33 = !{ptr @efct_xport_status.__UNIQUE_ID_ddebug314, !34, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!34 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 330, i32 4}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 383, i32 3}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @efct_scsi_new_device._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @efct_scsi_new_device._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 412, i32 2}
!42 = !{ptr @efct_scsi_new_device.__UNIQUE_ID_ddebug315, !41, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 418, i32 3}
!45 = !{ptr @efct_scsi_new_device.__UNIQUE_ID_ddebug316, !44, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 425, i32 8}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 426, i32 33}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 448, i32 3}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @efct_attach_fc_transport._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @efct_attach_fc_transport._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 461, i32 3}
!57 = !{ptr @efct_attach_vport_fc_transport._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @efct_attach_vport_fc_transport._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 472, i32 3}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @efct_scsi_reg_fc_transport._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @efct_scsi_reg_fc_transport._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @efct_scsi_reg_fc_transport._entry.31, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 478, i32 3}
!66 = !{ptr @efct_scsi_reg_fc_transport._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 541, i32 4}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @efct_xport_control._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @efct_xport_control._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 550, i32 4}
!74 = !{ptr @efct_xport_control._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @efct_xport_control._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 580, i32 3}
!78 = !{ptr @efct_xport_control.__UNIQUE_ID_ddebug317, !77, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 585, i32 4}
!81 = !{ptr @efct_xport_control._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @efct_xport_control._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 608, i32 3}
!85 = !{ptr @efct_xport_control.__UNIQUE_ID_ddebug318, !84, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 625, i32 3}
!88 = !{ptr @efct_xport_control.__UNIQUE_ID_ddebug319, !87, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 651, i32 3}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @efct_release_fc_transport._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @efct_release_fc_transport._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 669, i32 2}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @efct_scsi_del_device.__UNIQUE_ID_ddebug320, !95, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 671, i32 2}
!100 = !{ptr @efct_scsi_del_device.__UNIQUE_ID_ddebug321, !99, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 907, i32 3}
!103 = !{ptr @efct_scsi_new_vport._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @efct_scsi_new_vport._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 926, i32 2}
!107 = !{ptr @efct_scsi_new_vport.__UNIQUE_ID_ddebug324, !106, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!108 = !{ptr @efct_scsi_new_vport.__UNIQUE_ID_ddebug325, !109, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!109 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 932, i32 3}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 954, i32 3}
!112 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @efct_scsi_del_vport.__UNIQUE_ID_ddebug326, !111, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 957, i32 3}
!116 = !{ptr @efct_scsi_del_vport.__UNIQUE_ID_ddebug327, !115, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!117 = !{ptr @efct_xport_fc_tt, !118, !"efct_xport_fc_tt", i1 false, i1 false}
!118 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 23, i32 40}
!119 = !{ptr @efct_vport_fc_tt, !120, !"efct_vport_fc_tt", i1 false, i1 false}
!120 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 24, i32 40}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 196, i32 3}
!123 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @efct_xport_config_stats_timer._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @efct_xport_config_stats_timer._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @efct_xport_config_stats_timer.__key, !127, !"__key", i1 false, i1 false}
!127 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 207, i32 2}
!128 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 50, i32 47}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 53, i32 4}
!133 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @efct_xport_init_debugfs._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @efct_xport_init_debugfs._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @efct_debugfs_root, !137, !"efct_debugfs_root", i1 false, i1 false}
!137 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 10, i32 23}
!138 = !{ptr @efct_debugfs_count, !139, !"efct_debugfs_count", i1 false, i1 false}
!139 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 11, i32 17}
!140 = !{ptr @init_completion.__key, !141, !"__key", i1 false, i1 false}
!141 = !{!"../include/linux/completion.h", i32 87, i32 2}
!142 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @efct_template, !144, !"efct_template", i1 false, i1 false}
!144 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 13, i32 34}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/elx/efct/../libefc_sli/sli4.h", i32 3744, i32 3}
!147 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @sli_get_max_sgl._entry, !146, !"_entry", i1 false, i1 false}
!150 = !{ptr @sli_get_max_sgl._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @efct_xport_functions, !152, !"efct_xport_functions", i1 false, i1 false}
!152 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 1019, i32 36}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 817, i32 3}
!155 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @efct_get_stats._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @efct_get_stats._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 867, i32 3}
!160 = !{ptr @efct_reset_stats._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @efct_reset_stats._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 878, i32 3}
!164 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @efct_issue_lip._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @efct_issue_lip._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = distinct !{null, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 890, i32 3}
!169 = distinct !{null, !168, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!170 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 893, i32 3}
!172 = !{ptr @efct_issue_lip.__UNIQUE_ID_ddebug323, !171, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!173 = !{ptr @.str.72, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 980, i32 3}
!175 = !{ptr @.str.73, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @efct_vport_create._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @efct_vport_create._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 1008, i32 3}
!180 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @efct_vport_delete._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @efct_vport_delete._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @efct_vport_functions, !184, !"efct_vport_functions", i1 false, i1 false}
!184 = !{!"../drivers/scsi/elx/efct/efct_xport.c", i32 1068, i32 36}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!194 = !{i64 2148369277, i64 2148369303, i64 2148369332, i64 2148369366, i64 2148369397, i64 2148369420}
!195 = !{i64 2148982654, i64 2148982659, i64 2148982672, i64 2148982716, i64 2148982750, i64 2148982771}
!196 = !{i64 2148371742, i64 2148371768, i64 2148371797, i64 2148371831, i64 2148371862, i64 2148371885}
!197 = !{!"auto-init"}
!198 = !{i8 0, i8 2}
