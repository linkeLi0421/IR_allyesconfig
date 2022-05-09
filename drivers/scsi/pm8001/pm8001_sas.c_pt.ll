; ModuleID = '/llk/IR_all_yes/drivers/scsi/pm8001/pm8001_sas.c_pt.bc'
source_filename = "../drivers/scsi/pm8001/pm8001_sas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pm8001_hba_info = type { [32 x i8], %struct.list_head, i32, %struct.spinlock, %struct.spinlock, ptr, ptr, [6 x %struct.pm8001_hba_memspace], %struct.mpi_mem_req, %struct.encrypt, %struct.forensic_data, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.main_cfg_table, %union.general_status_table, [64 x %struct.inbound_queue_table], [64 x %struct.outbound_queue_table], %struct.sas_phy_attribute_table, [8 x i8], ptr, ptr, i32, ptr, ptr, i32, ptr, [16 x %struct.pm8001_phy], [16 x %struct.pm8001_port], i32, i32, i32, ptr, ptr, i32, i32, [64 x [37 x i8]], [64 x %struct.tasklet_struct], i32, i32, i32, i32, i8, ptr, [64 x %struct.isr_param], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pm8001_hba_memspace = type { ptr, i64, i32 }
%struct.mpi_mem_req = type { i32, [261 x %struct.mpi_mem] }
%struct.mpi_mem = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.encrypt = type { i32, i32, i32, i32 }
%struct.forensic_data = type { i32, %union.anon.79 }
%union.anon.79 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32, i32, ptr }
%union.main_cfg_table = type { %struct.anon.84 }
%struct.anon.84 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.general_status_table = type { %struct.anon.85 }
%struct.anon.85 = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, [2 x i32], [8 x i32] }
%struct.inbound_queue_table = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %struct.spinlock }
%struct.outbound_queue_table = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.spinlock, i32 }
%struct.sas_phy_attribute_table = type { [16 x i32], [16 x i32] }
%struct.pm8001_phy = type { ptr, ptr, %struct.asd_sas_phy, %struct.sas_identify, ptr, i64, i32, ptr, i32, [32 x i8], i8, i8, i32, i32, ptr, i8, i8 }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.pm8001_port = type { %struct.asd_sas_port, i8, i16, i8, i8, %struct.list_head }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.102, i32 }
%union.anon.102 = type { ptr }
%struct.isr_param = type { ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%union.anon.78 = type { ptr }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.scsi_core = type { ptr }
%struct.sas_phy_linkrates = type { i32, i32 }
%struct.pm8001_chip_info = type { i32, i32, ptr }
%struct.pm8001_dispatch = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sas_phy = type { %struct.device, i32, i32, %struct.sas_identify, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.sas_task = type { ptr, %struct.spinlock, i32, i32, %union.anon.98, ptr, i32, i32, i8, %struct.task_status_struct, ptr, ptr, ptr, ptr }
%union.anon.98 = type { %struct.sas_smp_task }
%struct.sas_smp_task = type { %struct.scatterlist, %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.task_status_struct = type { i32, i32, i32, [96 x i8], i32, i32 }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.domain_device = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, [8 x i8], [3 x i8], [32 x i8], [101 x i8], %union.anon.92, ptr, i32, %struct.kref, [116 x i8] }
%union.anon.92 = type { %struct.sata_device }
%struct.sata_device = type { i32, i8, ptr, ptr, [112 x i8], %struct.smp_resp, [24 x i8], [44 x i8] }
%struct.smp_resp = type { i8, i8, i8, i8, %union.anon.94 }
%union.anon.94 = type { %struct.report_phy_sata_resp }
%struct.report_phy_sata_resp = type { [5 x i8], i8, i8, i8, i32, [8 x i8], %struct.dev_to_host_fis, i32, [8 x i8], i32 }
%struct.dev_to_host_fis = type { i8, i8, i8, i8, i8, %union.anon.95, %union.anon.96, i8, i8, i8, i8, i8, %union.anon.97, i8, i8, i8, i32 }
%union.anon.95 = type { i8 }
%union.anon.96 = type { i8 }
%union.anon.97 = type { i8 }
%struct.pm8001_ccb_info = type { ptr, i32, i32, i32, ptr, ptr, ptr, i8 }
%struct.pm8001_device = type { i32, ptr, i32, i32, ptr, ptr, i32, %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.expander_device = type { %struct.list_head, i32, i16, i8, i8, [8 x i8], ptr, ptr, %struct.mutex }
%struct.ex_phy = type { i32, i32, i32, i32, i8, i32, i32, [8 x i8], i8, i32, i32, i8, i32, ptr, ptr }
%struct.sas_rphy = type { %struct.device, %struct.sas_identify, %struct.list_head, ptr, i32 }
%struct.sas_task_slow = type { %struct.timer_list, %struct.completion, ptr }
%struct.pm8001_tmf_task = type { i8, i32 }
%struct.scsi_lun = type { [8 x i8] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }

@pm8001_phy_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s:: %s  %d:func 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pm8001_phy_control\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/pm8001/pm8001_sas.c\00", [63 x i8] zeroinitializer }, align 32
@pm8001_phy_control._entry_ptr = internal global ptr @pm8001_phy_control._entry, section ".printk_index", align 4
@pm8001_find_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s:: %s  %d:NO MATCHING DEVICE FOUND !!!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pm8001_find_dev\00", [16 x i8] zeroinitializer }, align 32
@pm8001_find_dev._entry_ptr = internal global ptr @pm8001_find_dev._entry, section ".printk_index", align 4
@pm8001_I_T_nexus_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s:: %s  %d:phy reset failed for device %x\0Awith rc %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pm8001_I_T_nexus_reset\00", [41 x i8] zeroinitializer }, align 32
@pm8001_I_T_nexus_reset._entry_ptr = internal global ptr @pm8001_I_T_nexus_reset._entry, section ".printk_index", align 4
@pm8001_I_T_nexus_reset._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 1046, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s:: %s  %d:task abort failed %x\0Awith rc %d\0A\00", [49 x i8] zeroinitializer }, align 32
@pm8001_I_T_nexus_reset._entry_ptr.9 = internal global ptr @pm8001_I_T_nexus_reset._entry.7, section ".printk_index", align 4
@pm8001_I_T_nexus_reset._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s:: %s  %d: for device[%x]:rc=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@pm8001_I_T_nexus_reset._entry_ptr.12 = internal global ptr @pm8001_I_T_nexus_reset._entry.10, section ".printk_index", align 4
@pm8001_I_T_nexus_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1077, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s:: %s  %d:I_T_Nexus handler invoked !!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pm8001_I_T_nexus_event_handler\00", [33 x i8] zeroinitializer }, align 32
@pm8001_I_T_nexus_event_handler._entry_ptr = internal global ptr @pm8001_I_T_nexus_event_handler._entry, section ".printk_index", align 4
@pm8001_I_T_nexus_event_handler._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.14, ptr @.str.2, i32 1117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pm8001_I_T_nexus_event_handler._entry_ptr.16 = internal global ptr @pm8001_I_T_nexus_event_handler._entry.15, section ".printk_index", align 4
@pm8001_lu_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:: %s  %d:for device[%x]:rc=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pm8001_lu_reset\00", [16 x i8] zeroinitializer }, align 32
@pm8001_lu_reset._entry_ptr = internal global ptr @pm8001_lu_reset._entry, section ".printk_index", align 4
@pm8001_query_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s:: %s  %d:Query:[%16ph]\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pm8001_query_task\00", [46 x i8] zeroinitializer }, align 32
@pm8001_query_task._entry_ptr = internal global ptr @pm8001_query_task._entry, section ".printk_index", align 4
@pm8001_query_task._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 1182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s:: %s  %d:The task is still in Lun\0A\00", [56 x i8] zeroinitializer }, align 32
@pm8001_query_task._entry_ptr.23 = internal global ptr @pm8001_query_task._entry.21, section ".printk_index", align 4
@pm8001_query_task._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 1188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016%s:: %s  %d:The task is not in Lun or failed, reset the phy\0A\00", [33 x i8] zeroinitializer }, align 32
@pm8001_query_task._entry_ptr.26 = internal global ptr @pm8001_query_task._entry.24, section ".printk_index", align 4
@pm8001_query_task._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.2, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013pm80xx: rc= %d\0A\00", [46 x i8] zeroinitializer }, align 32
@pm8001_query_task._entry_ptr.29 = internal global ptr @pm8001_query_task._entry.27, section ".printk_index", align 4
@pm8001_abort_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:: %s  %d:no tag for task:%p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pm8001_abort_task\00", [46 x i8] zeroinitializer }, align 32
@pm8001_abort_task._entry_ptr = internal global ptr @pm8001_abort_task._entry, section ".printk_index", align 4
@pm8001_abort_task._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s:: %s  %d:Waiting for local phy ctl\0A\00", [55 x i8] zeroinitializer }, align 32
@pm8001_abort_task._entry_ptr.34 = internal global ptr @pm8001_abort_task._entry.32, section ".printk_index", align 4
@pm8001_abort_task._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s:: %s  %d:Waiting for Port reset\0A\00", [58 x i8] zeroinitializer }, align 32
@pm8001_abort_task._entry_ptr.37 = internal global ptr @pm8001_abort_task._entry.35, section ".printk_index", align 4
@pm8001_abort_task._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.2, i32 1353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s:: %s  %d:rc= %d\0A\00", [42 x i8] zeroinitializer }, align 32
@pm8001_abort_task._entry_ptr.40 = internal global ptr @pm8001_abort_task._entry.38, section ".printk_index", align 4
@pm8001_clear_task_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:: %s  %d:I_T_L_Q clear task set[%x]\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pm8001_clear_task_set\00", [42 x i8] zeroinitializer }, align 32
@pm8001_clear_task_set._entry_ptr = internal global ptr @pm8001_clear_task_set._entry, section ".printk_index", align 4
@pm8001_port_formed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:: %s  %d:Received null port\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pm8001_port_formed\00", [45 x i8] zeroinitializer }, align 32
@pm8001_port_formed._entry_ptr = internal global ptr @pm8001_port_formed._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@pm8001_task_exec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s:: %s  %d:pm8001_task_exec device\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm8001_task_exec\00", [47 x i8] zeroinitializer }, align 32
@pm8001_task_exec._entry_ptr = internal global ptr @pm8001_task_exec._entry, section ".printk_index", align 4
@pm8001_task_exec._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 479, ptr @.str.50, ptr @.str.51 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unknown sas_task proto: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm8001_task_exec._entry_ptr.52 = internal global ptr @pm8001_task_exec._entry.48, section ".printk_index", align 4
@pm8001_task_exec._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s:: %s  %d:rc is %x\0A\00", [40 x i8] zeroinitializer }, align 32
@pm8001_task_exec._entry_ptr.55 = internal global ptr @pm8001_task_exec._entry.53, section ".printk_index", align 4
@pm8001_task_exec._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.47, ptr @.str.2, i32 500, ptr @.str.50, ptr @.str.51 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pm8001 exec failed[%d]!\0A\00", [39 x i8] zeroinitializer }, align 32
@pm8001_task_exec._entry_ptr.58 = internal global ptr @pm8001_task_exec._entry.56, section ".printk_index", align 4
@__tracepoint_pm80xx_request_complete = external dso_local global %struct.tracepoint, align 4
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/scsi/pm8001/pm80xx_tracepoints.h\00", [55 x i8] zeroinitializer }, align 32
@trace_pm80xx_request_complete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@pm8001_dev_found_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016%s:: %s  %d:Error: no attached dev:%016llx at ex:%016llx.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pm8001_dev_found_notify\00", [40 x i8] zeroinitializer }, align 32
@pm8001_dev_found_notify._entry_ptr = internal global ptr @pm8001_dev_found_notify._entry, section ".printk_index", align 4
@pm8001_dev_found_notify._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s:: %s  %d:Found device\0A\00", [36 x i8] zeroinitializer }, align 32
@pm8001_dev_found_notify._entry_ptr.66 = internal global ptr @pm8001_dev_found_notify._entry.64, section ".printk_index", align 4
@pm8001_alloc_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s:: %s  %d:max support %d devices, ignore ..\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm8001_alloc_dev\00", [47 x i8] zeroinitializer }, align 32
@pm8001_alloc_dev._entry_ptr = internal global ptr @pm8001_alloc_dev._entry, section ".printk_index", align 4
@pm8001_dev_gone_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s:: %s  %d:found dev[%d:%x] is gone.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pm8001_dev_gone_notify\00", [41 x i8] zeroinitializer }, align 32
@pm8001_dev_gone_notify._entry_ptr = internal global ptr @pm8001_dev_gone_notify._entry, section ".printk_index", align 4
@pm8001_dev_gone_notify._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s:: %s  %d:Found dev has gone.\0A\00", [61 x i8] zeroinitializer }, align 32
@pm8001_dev_gone_notify._entry_ptr.73 = internal global ptr @pm8001_dev_gone_notify._entry.71, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pm8001_exec_internal_task_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s:: %s  %d:Executing internal task failed\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pm8001_exec_internal_task_abort\00", [32 x i8] zeroinitializer }, align 32
@pm8001_exec_internal_task_abort._entry_ptr = internal global ptr @pm8001_exec_internal_task_abort._entry, section ".printk_index", align 4
@pm8001_exec_internal_task_abort._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s:: %s  %d:TMF task timeout.\0A\00", [63 x i8] zeroinitializer }, align 32
@pm8001_exec_internal_task_abort._entry_ptr.78 = internal global ptr @pm8001_exec_internal_task_abort._entry.76, section ".printk_index", align 4
@pm8001_exec_internal_task_abort._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016%s:: %s  %d: Task to dev %016llx response: 0x%x status 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@pm8001_exec_internal_task_abort._entry_ptr.81 = internal global ptr @pm8001_exec_internal_task_abort._entry.79, section ".printk_index", align 4
@__const.pm8001_issue_ssp_tmf.ssp_task = private unnamed_addr constant { i8, [8 x i8], i8, [2 x i8], i32, i8, [3 x i8], ptr } { i8 -1, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", i8 -1, [2 x i8] c"\FF\FF", i32 -1, i8 -1, [3 x i8] c"\FF\FF\FF", ptr inttoptr (i32 -1 to ptr) }, align 4
@pm8001_exec_internal_tmf_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.82, ptr @.str.2, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pm8001_exec_internal_tmf_task\00", [34 x i8] zeroinitializer }, align 32
@pm8001_exec_internal_tmf_task._entry_ptr = internal global ptr @pm8001_exec_internal_tmf_task._entry, section ".printk_index", align 4
@pm8001_exec_internal_tmf_task._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:: %s  %d:TMF task[%x]timeout.\0A\00", [60 x i8] zeroinitializer }, align 32
@pm8001_exec_internal_tmf_task._entry_ptr.85 = internal global ptr @pm8001_exec_internal_tmf_task._entry.83, section ".printk_index", align 4
@pm8001_exec_internal_tmf_task._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.2, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s:: %s  %d:Blocked task error.\0A\00", [61 x i8] zeroinitializer }, align 32
@pm8001_exec_internal_tmf_task._entry_ptr.88 = internal global ptr @pm8001_exec_internal_tmf_task._entry.86, section ".printk_index", align 4
@pm8001_exec_internal_tmf_task._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.82, ptr @.str.2, i32 806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s:: %s  %d: Task to dev %016llx response:0x%x status 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@pm8001_exec_internal_tmf_task._entry_ptr.91 = internal global ptr @pm8001_exec_internal_tmf_task._entry.89, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.92 = internal global [7 x i64] [i64 5, i64 8, i64 96, i64 97, i64 99, i64 100, i64 101]
@__sancov_gen_cov_switch_values.93 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 129, i64 130]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 8]
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 251, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 609, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1035, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1045, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1053, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1077, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1116, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1146, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1173, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1181, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1187, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1192, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1226, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1284, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1295, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1353, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1379, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1394, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 87, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 410, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 478, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 485, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 500, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [44 x i8] c"../drivers/scsi/pm8001/pm80xx_tracepoints.h\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 48, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 108, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 670, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 683, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 589, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 900, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 913, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 853, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 860, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 870, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 759, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 774, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 798, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.365 = private constant [36 x i8] c"../drivers/scsi/pm8001/pm8001_sas.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 802, i32 4 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @pm8001_I_T_nexus_event_handler._entry, ptr @pm8001_I_T_nexus_event_handler._entry.15, ptr @pm8001_I_T_nexus_event_handler._entry_ptr, ptr @pm8001_I_T_nexus_event_handler._entry_ptr.16, ptr @pm8001_I_T_nexus_reset._entry, ptr @pm8001_I_T_nexus_reset._entry.10, ptr @pm8001_I_T_nexus_reset._entry.7, ptr @pm8001_I_T_nexus_reset._entry_ptr, ptr @pm8001_I_T_nexus_reset._entry_ptr.12, ptr @pm8001_I_T_nexus_reset._entry_ptr.9, ptr @pm8001_abort_task._entry, ptr @pm8001_abort_task._entry.32, ptr @pm8001_abort_task._entry.35, ptr @pm8001_abort_task._entry.38, ptr @pm8001_abort_task._entry_ptr, ptr @pm8001_abort_task._entry_ptr.34, ptr @pm8001_abort_task._entry_ptr.37, ptr @pm8001_abort_task._entry_ptr.40, ptr @pm8001_alloc_dev._entry, ptr @pm8001_alloc_dev._entry_ptr, ptr @pm8001_clear_task_set._entry, ptr @pm8001_clear_task_set._entry_ptr, ptr @pm8001_dev_found_notify._entry, ptr @pm8001_dev_found_notify._entry.64, ptr @pm8001_dev_found_notify._entry_ptr, ptr @pm8001_dev_found_notify._entry_ptr.66, ptr @pm8001_dev_gone_notify._entry, ptr @pm8001_dev_gone_notify._entry.71, ptr @pm8001_dev_gone_notify._entry_ptr, ptr @pm8001_dev_gone_notify._entry_ptr.73, ptr @pm8001_exec_internal_task_abort._entry, ptr @pm8001_exec_internal_task_abort._entry.76, ptr @pm8001_exec_internal_task_abort._entry.79, ptr @pm8001_exec_internal_task_abort._entry_ptr, ptr @pm8001_exec_internal_task_abort._entry_ptr.78, ptr @pm8001_exec_internal_task_abort._entry_ptr.81, ptr @pm8001_exec_internal_tmf_task._entry, ptr @pm8001_exec_internal_tmf_task._entry.83, ptr @pm8001_exec_internal_tmf_task._entry.86, ptr @pm8001_exec_internal_tmf_task._entry.89, ptr @pm8001_exec_internal_tmf_task._entry_ptr, ptr @pm8001_exec_internal_tmf_task._entry_ptr.85, ptr @pm8001_exec_internal_tmf_task._entry_ptr.88, ptr @pm8001_exec_internal_tmf_task._entry_ptr.91, ptr @pm8001_find_dev._entry, ptr @pm8001_find_dev._entry_ptr, ptr @pm8001_lu_reset._entry, ptr @pm8001_lu_reset._entry_ptr, ptr @pm8001_phy_control._entry, ptr @pm8001_phy_control._entry_ptr, ptr @pm8001_port_formed._entry, ptr @pm8001_port_formed._entry_ptr, ptr @pm8001_query_task._entry, ptr @pm8001_query_task._entry.21, ptr @pm8001_query_task._entry.24, ptr @pm8001_query_task._entry.27, ptr @pm8001_query_task._entry_ptr, ptr @pm8001_query_task._entry_ptr.23, ptr @pm8001_query_task._entry_ptr.26, ptr @pm8001_query_task._entry_ptr.29, ptr @pm8001_task_exec._entry, ptr @pm8001_task_exec._entry.48, ptr @pm8001_task_exec._entry.53, ptr @pm8001_task_exec._entry.56, ptr @pm8001_task_exec._entry_ptr, ptr @pm8001_task_exec._entry_ptr.52, ptr @pm8001_task_exec._entry_ptr.55, ptr @pm8001_task_exec._entry_ptr.58, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @init_completion.__key, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.90], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_phy_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_find_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_I_T_nexus_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_I_T_nexus_reset._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_I_T_nexus_reset._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_I_T_nexus_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_I_T_nexus_event_handler._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_lu_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_query_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_query_task._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_query_task._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_query_task._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_abort_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_abort_task._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_abort_task._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_abort_task._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_clear_task_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_port_formed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_task_exec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_task_exec._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_task_exec._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_task_exec._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_dev_found_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_dev_found_notify._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_alloc_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_dev_gone_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_dev_gone_notify._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_exec_internal_task_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_exec_internal_task_abort._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_exec_internal_task_abort._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_exec_internal_tmf_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_exec_internal_tmf_task._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_exec_internal_tmf_task._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8001_exec_internal_tmf_task._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm8001_tag_free(ptr nocapture noundef readonly %pm8001_ha, i32 noundef %tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tags = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 38
  %0 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tags, align 8
  tail call void @_clear_bit(i32 noundef %tag, ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8001_tag_alloc(ptr noundef %pm8001_ha, ptr nocapture noundef writeonly %tag_out) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tags = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 38
  %0 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tags, align 8
  %bitmap_lock = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bitmap_lock) #9
  %tags_num = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 37
  %2 = ptrtoint ptr %tags_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tags_num, align 4
  %call5 = tail call i32 @_find_first_zero_bit_be(ptr noundef %1, i32 noundef %3) #9
  %4 = ptrtoint ptr %tags_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tags_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %5)
  %cmp7.not = icmp ult i32 %call5, %5
  br i1 %cmp7.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bitmap_lock, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef %call5, ptr noundef %1) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bitmap_lock, i32 noundef %call2) #9
  %6 = ptrtoint ptr %tag_out to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call5, ptr %tag_out, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -132, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm8001_tag_init(ptr nocapture noundef readonly %pm8001_ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tags_num = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 37
  %0 = ptrtoint ptr %tags_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tags_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp sgt i32 %1, 0
  br i1 %cmp4, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tags.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 38
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tags.i, align 8
  tail call void @_clear_bit(i32 noundef %i.05, ptr noundef %3) #9
  %inc = add nuw nsw i32 %i.05, 1
  %4 = ptrtoint ptr %tags_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tags_num, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8001_mem_alloc(ptr noundef %pdev, ptr nocapture noundef writeonly %virt_addr, ptr nocapture noundef writeonly %pphys_addr, ptr nocapture noundef writeonly %pphys_addr_hi, ptr nocapture noundef writeonly %pphys_addr_lo, i32 noundef %mem_size, i32 noundef %align) local_unnamed_addr #0 align 64 {
entry:
  %mem_dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_dma_handle) #9
  %0 = ptrtoint ptr %mem_dma_handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mem_dma_handle, align 4, !annotation !173
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %add = add i32 %align, %mem_size
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull %mem_dma_handle, i32 noundef 3264, i32 noundef 0) #9
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %align)
  %tobool.not = icmp eq i32 %align, 0
  %sub = add i32 %align, -1
  %narrow = select i1 %tobool.not, i32 0, i32 %sub
  %align_offset.0 = zext i32 %narrow to i64
  %1 = ptrtoint ptr %mem_dma_handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mem_dma_handle, align 4
  %3 = ptrtoint ptr %pphys_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pphys_addr, align 4
  %conv4 = zext i32 %2 to i64
  %add5 = add nuw nsw i64 %conv4, %align_offset.0
  %neg = xor i64 %align_offset.0, -1
  %and = and i64 %add5, %neg
  %idx.ext = trunc i64 %and to i32
  %add.ptr = getelementptr i8, ptr %call.i, i32 %idx.ext
  %idx.neg = sub i32 0, %2
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %4 = ptrtoint ptr %virt_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr6, ptr %virt_addr, align 4
  %shr = lshr i64 %add5, 32
  %conv8 = trunc i64 %shr to i32
  %5 = ptrtoint ptr %pphys_addr_hi to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv8, ptr %pphys_addr_hi, align 4
  %6 = ptrtoint ptr %pphys_addr_lo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %idx.ext, ptr %pphys_addr_lo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_dma_handle) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8001_phy_control(ptr nocapture noundef readonly %sas_phy, i32 noundef %func, ptr nocapture noundef readonly %funcdata) local_unnamed_addr #0 align 64 {
entry:
  %completion = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.asd_sas_phy, ptr %sas_phy, i32 0, i32 6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #9
  %2 = getelementptr inbounds i8, ptr %completion, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #9
  %ha = getelementptr inbounds %struct.asd_sas_phy, ptr %sas_phy, i32 0, i32 23
  %5 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lldd_ha, align 4
  %enable_completion = getelementptr %struct.pm8001_hba_info, ptr %8, i32 0, i32 39, i32 %1, i32 7
  %9 = ptrtoint ptr %enable_completion to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %completion, ptr %enable_completion, align 4
  %10 = zext i32 %func to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %func, label %do.body134 [
    i32 17, label %sw.bb
    i32 2, label %sw.bb24
    i32 1, label %sw.bb42
    i32 16, label %sw.bb60
    i32 3, label %sw.bb65
    i32 18, label %do.body98
  ]

sw.bb:                                            ; preds = %entry
  %minimum_linkrate = getelementptr inbounds %struct.sas_phy_linkrates, ptr %funcdata, i32 0, i32 1
  %11 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minimum_linkrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %minimum_linkrate7 = getelementptr %struct.pm8001_hba_info, ptr %8, i32 0, i32 39, i32 %1, i32 12
  %13 = ptrtoint ptr %minimum_linkrate7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %minimum_linkrate7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %14 = ptrtoint ptr %funcdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %funcdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool8.not, label %if.end.if.end14_crit_edge, label %if.then9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %maximum_linkrate13 = getelementptr %struct.pm8001_hba_info, ptr %8, i32 0, i32 39, i32 %1, i32 13
  %16 = ptrtoint ptr %maximum_linkrate13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %maximum_linkrate13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.if.end14_crit_edge
  %phy_state = getelementptr %struct.pm8001_hba_info, ptr %8, i32 0, i32 39, i32 %1, i32 11
  %17 = ptrtoint ptr %phy_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %phy_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp = icmp eq i8 %18, 0
  br i1 %cmp, label %if.then18, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %8, i32 0, i32 35
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dispatch, align 4
  %phy_start_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %phy_start_req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy_start_req, align 4
  %conv19 = trunc i32 %1 to i8
  %call = call i32 %24(ptr noundef %8, i8 noundef zeroext %conv19) #9
  call void @wait_for_completion(ptr noundef nonnull %completion) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14.if.end20_crit_edge
  %chip21 = getelementptr inbounds %struct.pm8001_hba_info, ptr %8, i32 0, i32 35
  %25 = ptrtoint ptr %chip21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip21, align 4
  %dispatch22 = getelementptr inbounds %struct.pm8001_chip_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dispatch22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dispatch22, align 4
  %phy_ctl_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %phy_ctl_req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy_ctl_req, align 4
  %call23 = call i32 %30(ptr noundef %8, i32 noundef %1, i32 noundef 1) #9
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %phy_state27 = getelementptr %struct.pm8001_hba_info, ptr %8, i32 0, i32 39, i32 %1, i32 11
  %31 = ptrtoint ptr %phy_state27 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %phy_state27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp29 = icmp eq i8 %32, 0
  br i1 %cmp29, label %if.then31, label %sw.bb24.if.end37_crit_edge

sw.bb24.if.end37_crit_edge:                       ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then31:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  %chip32 = getelementptr inbounds %struct.pm8001_hba_info, ptr %8, i32 0, i32 35
  %33 = ptrtoint ptr %chip32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip32, align 4
  %dispatch33 = getelementptr inbounds %struct.pm8001_chip_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dispatch33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dispatch33, align 4
  %phy_start_req34 = getelementptr inbounds %struct.pm8001_dispatch, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %phy_start_req34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy_start_req34, align 4
  %conv35 = trunc i32 %1 to i8
  %call36 = call i32 %38(ptr noundef %8, i8 noundef zeroext %conv35) #9
  call void @wait_for_completion(ptr noundef nonnull %completion) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %sw.bb24.if.end37_crit_edge
  %chip38 = getelementptr inbounds %struct.pm8001_hba_info, ptr %8, i32 0, i32 35
  %39 = ptrtoint ptr %chip38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip38, align 4
  %dispatch39 = getelementptr inbounds %struct.pm8001_chip_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dispatch39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dispatch39, align 4
  %phy_ctl_req40 = getelementptr inbounds %struct.pm8001_dispatch, ptr %42, i32 0, i32 19
  %43 = ptrtoint ptr %phy_ctl_req40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy_ctl_req40, align 4
  %call41 = call i32 %44(ptr noundef %8, i32 noundef %1, i32 noundef 2) #9
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  %phy_state45 = getelementptr %struct.pm8001_hba_info, ptr %8, i32 0, i32 39, i32 %1, i32 11
  %45 = ptrtoint ptr %phy_state45 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %phy_state45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp47 = icmp eq i8 %46, 0
  br i1 %cmp47, label %if.then49, label %sw.bb42.if.end55_crit_edge

sw.bb42.if.end55_crit_edge:                       ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then49:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  %chip50 = getelementptr inbounds %struct.pm8001_hba_info, ptr %8, i32 0, i32 35
  %47 = ptrtoint ptr %chip50 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chip50, align 4
  %dispatch51 = getelementptr inbounds %struct.pm8001_chip_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dispatch51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dispatch51, align 4
  %phy_start_req52 = getelementptr inbounds %struct.pm8001_dispatch, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %phy_start_req52 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy_start_req52, align 4
  %conv53 = trunc i32 %1 to i8
  %call54 = call i32 %52(ptr noundef %8, i8 noundef zeroext %conv53) #9
  call void @wait_for_completion(ptr noundef nonnull %completion) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %sw.bb42.if.end55_crit_edge
  %chip56 = getelementptr inbounds %struct.pm8001_hba_info, ptr %8, i32 0, i32 35
  %53 = ptrtoint ptr %chip56 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chip56, align 4
  %dispatch57 = getelementptr inbounds %struct.pm8001_chip_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dispatch57 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dispatch57, align 4
  %phy_ctl_req58 = getelementptr inbounds %struct.pm8001_dispatch, ptr %56, i32 0, i32 19
  %57 = ptrtoint ptr %phy_ctl_req58 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %phy_ctl_req58, align 4
  %call59 = call i32 %58(ptr noundef %8, i32 noundef %1, i32 noundef 1) #9
  br label %sw.epilog

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %chip61 = getelementptr inbounds %struct.pm8001_hba_info, ptr %8, i32 0, i32 35
  %59 = ptrtoint ptr %chip61 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chip61, align 4
  %dispatch62 = getelementptr inbounds %struct.pm8001_chip_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %dispatch62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dispatch62, align 4
  %phy_ctl_req63 = getelementptr inbounds %struct.pm8001_dispatch, ptr %62, i32 0, i32 19
  %63 = ptrtoint ptr %phy_ctl_req63 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy_ctl_req63, align 4
  %call64 = call i32 %64(ptr noundef %8, i32 noundef %1, i32 noundef 1) #9
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry
  %chip_id = getelementptr inbounds %struct.pm8001_hba_info, ptr %8, i32 0, i32 34
  %65 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp66.not = icmp eq i32 %66, 0
  %phy_state82 = getelementptr %struct.pm8001_hba_info, ptr %8, i32 0, i32 39, i32 %1, i32 11
  %67 = ptrtoint ptr %phy_state82 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %phy_state82, align 1
  br i1 %cmp66.not, label %if.else, label %if.then68

if.then68:                                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %68)
  %cmp73 = icmp eq i8 %68, 2
  br i1 %cmp73, label %if.then68.if.end92.sink.split_crit_edge, label %if.then68.if.end92_crit_edge

if.then68.if.end92_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then68.if.end92.sink.split_crit_edge:          ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.sink.split

if.else:                                          ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp84 = icmp eq i8 %68, 1
  br i1 %cmp84, label %if.else.if.end92.sink.split_crit_edge, label %if.else.if.end92_crit_edge

if.else.if.end92_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.else.if.end92.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.sink.split

if.end92.sink.split:                              ; preds = %if.else.if.end92.sink.split_crit_edge, %if.then68.if.end92.sink.split_crit_edge
  %sas_phy87 = getelementptr %struct.pm8001_hba_info, ptr %8, i32 0, i32 39, i32 %1, i32 2
  %oob_mode.i226 = getelementptr %struct.pm8001_hba_info, ptr %8, i32 0, i32 39, i32 %1, i32 2, i32 12
  %69 = ptrtoint ptr %oob_mode.i226 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %oob_mode.i226, align 4
  %linkrate.i227 = getelementptr %struct.pm8001_hba_info, ptr %8, i32 0, i32 39, i32 %1, i32 2, i32 13
  %70 = ptrtoint ptr %linkrate.i227 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %linkrate.i227, align 4
  %call89 = call i32 @sas_notify_phy_event(ptr noundef %sas_phy87, i32 noundef 0, i32 noundef 3264) #9
  %phy_attached90 = getelementptr %struct.pm8001_hba_info, ptr %8, i32 0, i32 39, i32 %1, i32 10
  %71 = ptrtoint ptr %phy_attached90 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %phy_attached90, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.end92.sink.split, %if.else.if.end92_crit_edge, %if.then68.if.end92_crit_edge
  %chip93 = getelementptr inbounds %struct.pm8001_hba_info, ptr %8, i32 0, i32 35
  %72 = ptrtoint ptr %chip93 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chip93, align 4
  %dispatch94 = getelementptr inbounds %struct.pm8001_chip_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %dispatch94 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dispatch94, align 4
  %phy_stop_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %75, i32 0, i32 16
  %76 = ptrtoint ptr %phy_stop_req to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %phy_stop_req, align 4
  %conv95 = trunc i32 %1 to i8
  %call96 = call i32 %77(ptr noundef %8, i8 noundef zeroext %conv95) #9
  br label %sw.epilog

do.body98:                                        ; preds = %entry
  %lock = getelementptr inbounds %struct.pm8001_hba_info, ptr %8, i32 0, i32 3
  %call103 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %chip_id106 = getelementptr inbounds %struct.pm8001_hba_info, ptr %8, i32 0, i32 34
  %78 = ptrtoint ptr %chip_id106 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %chip_id106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp107 = icmp eq i32 %79, 0
  br i1 %cmp107, label %if.then109, label %do.body98.if.end118_crit_edge

do.body98.if.end118_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then109:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp110 = icmp slt i32 %1, 4
  %cond = select i1 %cmp110, i32 196608, i32 262144
  %call112 = call i32 @pm8001_bar4_shift(ptr noundef %8, i32 noundef %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call112)
  %cmp113 = icmp eq i32 %call112, -1
  br i1 %cmp113, label %if.then115, label %if.then109.if.end118_crit_edge

if.then109.if.end118_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118

if.then115:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call103) #9
  br label %cleanup

if.end118:                                        ; preds = %if.then109.if.end118_crit_edge, %do.body98.if.end118_crit_edge
  %phy120 = getelementptr inbounds %struct.asd_sas_phy, ptr %sas_phy, i32 0, i32 4
  %80 = ptrtoint ptr %phy120 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %phy120, align 4
  %arrayidx121 = getelementptr %struct.pm8001_hba_info, ptr %8, i32 0, i32 7, i32 2
  %82 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx121, align 8
  %add.ptr = getelementptr i8, ptr %83, i32 4148
  %and = shl i32 %1, 14
  %mul = and i32 %and, 49152
  %add.ptr122 = getelementptr i8, ptr %add.ptr, i32 %mul
  %84 = ptrtoint ptr %add.ptr122 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr122, align 4
  %invalid_dword_count = getelementptr inbounds %struct.sas_phy, ptr %81, i32 0, i32 9
  %86 = ptrtoint ptr %invalid_dword_count to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %invalid_dword_count, align 4
  %arrayidx124 = getelementptr i32, ptr %add.ptr122, i32 1
  %87 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx124, align 4
  %running_disparity_error_count = getelementptr inbounds %struct.sas_phy, ptr %81, i32 0, i32 10
  %89 = ptrtoint ptr %running_disparity_error_count to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %running_disparity_error_count, align 8
  %arrayidx125 = getelementptr i32, ptr %add.ptr122, i32 3
  %90 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx125, align 4
  %loss_of_dword_sync_count = getelementptr inbounds %struct.sas_phy, ptr %81, i32 0, i32 11
  %92 = ptrtoint ptr %loss_of_dword_sync_count to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %loss_of_dword_sync_count, align 4
  %arrayidx126 = getelementptr i32, ptr %add.ptr122, i32 4
  %93 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx126, align 4
  %phy_reset_problem_count = getelementptr inbounds %struct.sas_phy, ptr %81, i32 0, i32 12
  %95 = ptrtoint ptr %phy_reset_problem_count to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %phy_reset_problem_count, align 8
  %96 = ptrtoint ptr %chip_id106 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %chip_id106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp128 = icmp eq i32 %97, 0
  br i1 %cmp128, label %if.then130, label %if.end118.if.end132_crit_edge

if.end118.if.end132_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then130:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %call131 = call i32 @pm8001_bar4_shift(ptr noundef %8, i32 noundef 0) #9
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end118.if.end132_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call103) #9
  br label %cleanup

do.body134:                                       ; preds = %entry
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %8, i32 0, i32 50
  %98 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %logging_level, align 4
  %and135 = and i32 %99, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %do.body134.sw.epilog_crit_edge, label %do.end142, !prof !174

do.body134.sw.epilog_crit_edge:                   ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end142:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #11
  %call144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %8, ptr noundef nonnull @.str.1, i32 noundef 251, i32 noundef %func) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end142, %do.body134.sw.epilog_crit_edge, %if.end92, %sw.bb60, %if.end55, %if.end37, %if.end20
  %rc.0 = phi i32 [ 0, %if.end92 ], [ 0, %sw.bb60 ], [ 0, %if.end55 ], [ 0, %if.end37 ], [ 0, %if.end20 ], [ -95, %do.end142 ], [ -95, %do.body134.sw.epilog_crit_edge ]
  call void @msleep(i32 noundef 300) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end132, %if.then115
  %retval.0 = phi i32 [ %rc.0, %sw.epilog ], [ -22, %if.then115 ], [ 0, %if.end132 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_notify_phy_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm8001_bar4_shift(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm8001_scan_start(ptr nocapture noundef readonly %shost) local_unnamed_addr #0 align 64 {
entry:
  %completion = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #9
  %2 = getelementptr inbounds i8, ptr %completion, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #9
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lldd_ha, align 4
  %chip_id = getelementptr inbounds %struct.pm8001_hba_info, ptr %6, i32 0, i32 34
  %7 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %6, i32 0, i32 35
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dispatch, align 4
  %sas_re_init_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %12, i32 0, i32 28
  %13 = ptrtoint ptr %sas_re_init_req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sas_re_init_req, align 4
  %call = call i32 %14(ptr noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %chip1 = getelementptr inbounds %struct.pm8001_hba_info, ptr %6, i32 0, i32 35
  %15 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip1, align 4
  %n_phy15 = getelementptr inbounds %struct.pm8001_chip_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %n_phy15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_phy15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp216.not = icmp eq i32 %18, 0
  br i1 %cmp216.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %enable_completion = getelementptr %struct.pm8001_hba_info, ptr %6, i32 0, i32 39, i32 %i.017, i32 7
  %19 = ptrtoint ptr %enable_completion to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %completion, ptr %enable_completion, align 4
  %20 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip1, align 4
  %dispatch4 = getelementptr inbounds %struct.pm8001_chip_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dispatch4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dispatch4, align 4
  %phy_start_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %phy_start_req to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_start_req, align 4
  %conv = trunc i32 %i.017 to i8
  %call5 = call i32 %25(ptr noundef %6, i8 noundef zeroext %conv) #9
  call void @wait_for_completion(ptr noundef nonnull %completion) #9
  call void @msleep(i32 noundef 300) #9
  %inc = add nuw i32 %i.017, 1
  %26 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip1, align 4
  %n_phy = getelementptr inbounds %struct.pm8001_chip_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %n_phy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_phy, align 4
  %cmp2 = icmp ult i32 %inc, %29
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8001_scan_finished(ptr nocapture noundef readonly %shost, i32 noundef %time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %time)
  %cmp = icmp ult i32 %time, 100
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %call = tail call i32 @sas_drain_work(ptr noundef %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_drain_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pm8001_get_ncq_tag(ptr nocapture noundef readonly %task, ptr nocapture noundef writeonly %tag) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 12
  %0 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uldd_task, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %command = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 14
  %2 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %command, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %3, label %if.then.cleanup_crit_edge [
    i8 97, label %if.then.if.then25_crit_edge
    i8 96, label %if.then.if.then25_crit_edge34
    i8 101, label %if.then.if.then25_crit_edge35
    i8 100, label %if.then.if.then25_crit_edge36
    i8 99, label %if.then.if.then25_crit_edge37
  ]

if.then.if.then25_crit_edge37:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then.if.then25_crit_edge36:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then.if.then25_crit_edge35:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then.if.then25_crit_edge34:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then.if.then25_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %if.then.if.then25_crit_edge, %if.then.if.then25_crit_edge34, %if.then.if.then25_crit_edge35, %if.then.if.then25_crit_edge36, %if.then.if.then25_crit_edge37
  %tag26 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %tag26 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tag26, align 4
  %7 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then25 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8001_queue_command(ptr noundef %task, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pm8001_task_exec(ptr noundef %task, i32 noundef 0, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm8001_task_exec(ptr noundef %task, i32 noundef %is_tmf, ptr noundef %tmf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %task_proto2 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 3
  %2 = ptrtoint ptr %task_proto2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %task_proto2, align 4
  %port3 = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %port3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %task_status = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9
  %6 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %task_status, align 4
  %stat = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 138, ptr %stat, align 4
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp.not = icmp eq i32 %9, 5
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %task_done = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 10
  %10 = ptrtoint ptr %task_done to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task_done, align 4
  tail call void %11(ptr noundef %task) #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 21
  %12 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ha.i, align 4
  %lldd_ha.i = getelementptr inbounds %struct.sas_ha_struct, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %lldd_ha.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lldd_ha.i, align 4
  %controller_fatal_error = getelementptr inbounds %struct.pm8001_hba_info, ptr %15, i32 0, i32 54
  %16 = ptrtoint ptr %controller_fatal_error to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %controller_fatal_error, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not = icmp eq i8 %17, 0
  br i1 %tobool7.not, label %do.body, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %task_status9 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9
  %18 = ptrtoint ptr %task_status9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %task_status9, align 4
  %task_done11 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 10
  %19 = ptrtoint ptr %task_done11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task_done11, align 4
  tail call void %20(ptr noundef %task) #9
  br label %cleanup

do.body:                                          ; preds = %if.end5
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %15, i32 0, i32 50
  %21 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %logging_level, align 4
  %and = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body.do.body23_crit_edge, label %do.end, !prof !174

do.body.do.body23_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %15, ptr noundef nonnull @.str.47, i32 noundef 410) #12
  br label %do.body23

do.body23:                                        ; preds = %do.end, %do.body.do.body23_crit_edge
  %lock = getelementptr inbounds %struct.pm8001_hba_info, ptr %15, i32 0, i32 3
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 4
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %24, i32 0, i32 20
  %25 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lldd_dev, align 128
  %parent.i = getelementptr inbounds %struct.domain_device, ptr %24, i32 0, i32 6
  %27 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i, align 64
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %do.body23.sas_find_local_port_id.exit_crit_edge, label %do.body23.while.body.i_crit_edge

do.body23.while.body.i_crit_edge:                 ; preds = %do.body23
  br label %while.body.i

do.body23.sas_find_local_port_id.exit_crit_edge:  ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sas_find_local_port_id.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body23.while.body.i_crit_edge
  %pdev.0.i = phi ptr [ %30, %while.body.i.while.body.i_crit_edge ], [ %28, %do.body23.while.body.i_crit_edge ]
  %parent2.i = getelementptr inbounds %struct.domain_device, ptr %pdev.0.i, i32 0, i32 6
  %29 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent2.i, align 64
  %tobool3.not.i = icmp eq ptr %30, null
  br i1 %tobool3.not.i, label %while.body.i.sas_find_local_port_id.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.sas_find_local_port_id.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sas_find_local_port_id.exit

sas_find_local_port_id.exit:                      ; preds = %while.body.i.sas_find_local_port_id.exit_crit_edge, %do.body23.sas_find_local_port_id.exit_crit_edge
  %dev.pn.i = phi ptr [ %24, %do.body23.sas_find_local_port_id.exit_crit_edge ], [ %pdev.0.i, %while.body.i.sas_find_local_port_id.exit_crit_edge ]
  %.pn.in.i = getelementptr inbounds %struct.domain_device, ptr %dev.pn.i, i32 0, i32 8
  %31 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %retval.2.in.i = getelementptr inbounds %struct.asd_sas_port, ptr %.pn.i, i32 0, i32 10
  %32 = ptrtoint ptr %retval.2.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %retval.2.i = load i32, ptr %retval.2.in.i, align 4
  %tobool36.not = icmp eq ptr %26, null
  br i1 %tobool36.not, label %sas_find_local_port_id.exit.if.then42_crit_edge, label %lor.lhs.false

sas_find_local_port_id.exit.if.then42_crit_edge:  ; preds = %sas_find_local_port_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

lor.lhs.false:                                    ; preds = %sas_find_local_port_id.exit
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp38 = icmp eq i32 %34, 0
  br i1 %cmp38, label %lor.lhs.false.if.then42_crit_edge, label %lor.lhs.false40

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %port_attached = getelementptr %struct.pm8001_hba_info, ptr %15, i32 0, i32 40, i32 %retval.2.i, i32 1
  %35 = ptrtoint ptr %port_attached to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %port_attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool41.not = icmp eq i8 %36, 0
  br i1 %tobool41.not, label %lor.lhs.false40.if.then42_crit_edge, label %if.end71

lor.lhs.false40.if.then42_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false40.if.then42_crit_edge, %lor.lhs.false.if.then42_crit_edge, %sas_find_local_port_id.exit.if.then42_crit_edge
  %37 = and i32 %3, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %.not24 = icmp eq i32 %37, 0
  %task_status67 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9
  %38 = ptrtoint ptr %task_status67 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %task_status67, align 4
  %stat69 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %stat69 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 138, ptr %stat69, align 4
  br i1 %.not24, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #9
  %task_done51 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 10
  %40 = ptrtoint ptr %task_done51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task_done51, align 4
  tail call void %41(ptr noundef %task) #9
  %call61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  br label %out_done

if.else:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  %task_done70 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 10
  %42 = ptrtoint ptr %task_done70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task_done70, align 4
  tail call void %43(ptr noundef %task) #9
  br label %out_done

if.end71:                                         ; preds = %lor.lhs.false40
  %tags.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %15, i32 0, i32 38
  %44 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tags.i, align 8
  %bitmap_lock.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %15, i32 0, i32 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bitmap_lock.i) #9
  %tags_num.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %15, i32 0, i32 37
  %46 = ptrtoint ptr %tags_num.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tags_num.i, align 4
  %call5.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %45, i32 noundef %47) #9
  %48 = ptrtoint ptr %tags_num.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tags_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %49)
  %cmp7.not.i = icmp ult i32 %call5.i, %49
  br i1 %cmp7.not.i, label %if.end75, label %pm8001_tag_alloc.exit

pm8001_tag_alloc.exit:                            ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bitmap_lock.i, i32 noundef %call2.i) #9
  %.pre = and i32 %3, 5
  br label %do.end141

if.end75:                                         ; preds = %if.end71
  tail call void @_set_bit(i32 noundef %call5.i, ptr noundef %45) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bitmap_lock.i, i32 noundef %call2.i) #9
  %ccb_info = getelementptr inbounds %struct.pm8001_hba_info, ptr %15, i32 0, i32 45
  %50 = ptrtoint ptr %ccb_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ccb_info, align 8
  %arrayidx76 = getelementptr %struct.pm8001_ccb_info, ptr %51, i32 %call5.i
  %52 = and i32 %3, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %.not = icmp eq i32 %52, 0
  %num_scatter = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 6
  %53 = ptrtoint ptr %num_scatter to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_scatter, align 4
  br i1 %.not, label %if.then79, label %if.end75.if.end92_crit_edge

if.end75.if.end92_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool80.not = icmp eq i32 %54, 0
  br i1 %tobool80.not, label %if.then79.if.end92_crit_edge, label %if.then81

if.then79.if.end92_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then81:                                        ; preds = %if.then79
  %dev82 = getelementptr inbounds %struct.pm8001_hba_info, ptr %15, i32 0, i32 6
  %55 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev82, align 8
  %scatter = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 5
  %57 = ptrtoint ptr %scatter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %scatter, align 4
  %data_dir = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 8
  %59 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load = load i8, ptr %data_dir, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv84 = zext i8 %bf.lshr to i32
  %call85 = tail call i32 @dma_map_sg_attrs(ptr noundef %56, ptr noundef %58, i32 noundef %54, i32 noundef %conv84, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then81.err_out_tag_crit_edge, label %if.then81.if.end92_crit_edge

if.then81.if.end92_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then81.err_out_tag_crit_edge:                  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_tag

if.end92:                                         ; preds = %if.then81.if.end92_crit_edge, %if.then79.if.end92_crit_edge, %if.end75.if.end92_crit_edge
  %n_elem.0 = phi i32 [ %call85, %if.then81.if.end92_crit_edge ], [ 0, %if.then79.if.end92_crit_edge ], [ %54, %if.end75.if.end92_crit_edge ]
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 11
  %60 = ptrtoint ptr %lldd_task to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx76, ptr %lldd_task, align 4
  %n_elem93 = getelementptr %struct.pm8001_ccb_info, ptr %51, i32 %call5.i, i32 1
  %61 = ptrtoint ptr %n_elem93 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %n_elem.0, ptr %n_elem93, align 4
  %ccb_tag = getelementptr %struct.pm8001_ccb_info, ptr %51, i32 %call5.i, i32 2
  %62 = ptrtoint ptr %ccb_tag to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call5.i, ptr %ccb_tag, align 4
  %63 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %task, ptr %arrayidx76, align 4
  %device = getelementptr %struct.pm8001_ccb_info, ptr %51, i32 %call5.i, i32 4
  %64 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %26, ptr %device, align 4
  %65 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %3, label %sw.epilog.thread [
    i32 2, label %sw.bb
    i32 8, label %sw.bb96
    i32 1, label %if.end92.sw.bb104_crit_edge
    i32 4, label %if.end92.sw.bb104_crit_edge25
  ]

if.end92.sw.bb104_crit_edge25:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb104

if.end92.sw.bb104_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb104

sw.bb:                                            ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %running_req = getelementptr inbounds %struct.pm8001_device, ptr %26, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %running_req, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %running_req, i32 1, i32 3, i32 1) #9
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %running_req, ptr %running_req, i32 1, ptr elementtype(i32) %running_req) #9, !srcloc !176
  %chip.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %15, i32 0, i32 35
  %67 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chip.i, align 4
  %dispatch.i = getelementptr inbounds %struct.pm8001_chip_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %dispatch.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dispatch.i, align 4
  %smp_req.i = getelementptr inbounds %struct.pm8001_dispatch, ptr %70, i32 0, i32 12
  %71 = ptrtoint ptr %smp_req.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %smp_req.i, align 4
  %call.i = tail call i32 %72(ptr noundef %15, ptr noundef %arrayidx76) #9
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.end92
  %running_req97 = getelementptr inbounds %struct.pm8001_device, ptr %26, i32 0, i32 7
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %running_req97, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %running_req97, i32 1, i32 3, i32 1) #9
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %running_req97, ptr %running_req97, i32 1, ptr elementtype(i32) %running_req97) #9, !srcloc !176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_tmf)
  %tobool98.not = icmp eq i32 %is_tmf, 0
  %chip.i7 = getelementptr inbounds %struct.pm8001_hba_info, ptr %15, i32 0, i32 35
  %74 = ptrtoint ptr %chip.i7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %chip.i7, align 4
  %dispatch.i8 = getelementptr inbounds %struct.pm8001_chip_info, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %dispatch.i8 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dispatch.i8, align 4
  br i1 %tobool98.not, label %if.else101, label %if.then99

if.then99:                                        ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #11
  %ssp_tm_req.i = getelementptr inbounds %struct.pm8001_dispatch, ptr %77, i32 0, i32 21
  %78 = ptrtoint ptr %ssp_tm_req.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ssp_tm_req.i, align 4
  %call.i6 = tail call i32 %79(ptr noundef %15, ptr noundef %arrayidx76, ptr noundef %tmf) #9
  br label %sw.epilog

if.else101:                                       ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #11
  %ssp_io_req.i = getelementptr inbounds %struct.pm8001_dispatch, ptr %77, i32 0, i32 13
  %80 = ptrtoint ptr %ssp_io_req.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ssp_io_req.i, align 4
  %call.i9 = tail call i32 %81(ptr noundef %15, ptr noundef %arrayidx76) #9
  br label %sw.epilog

sw.bb104:                                         ; preds = %if.end92.sw.bb104_crit_edge, %if.end92.sw.bb104_crit_edge25
  %running_req105 = getelementptr inbounds %struct.pm8001_device, ptr %26, i32 0, i32 7
  %call.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %running_req105, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %running_req105, i32 1, i32 3, i32 1) #9
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %running_req105, ptr %running_req105, i32 1, ptr elementtype(i32) %running_req105) #9, !srcloc !176
  %chip.i10 = getelementptr inbounds %struct.pm8001_hba_info, ptr %15, i32 0, i32 35
  %83 = ptrtoint ptr %chip.i10 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chip.i10, align 4
  %dispatch.i11 = getelementptr inbounds %struct.pm8001_chip_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %dispatch.i11 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dispatch.i11, align 4
  %sata_req.i = getelementptr inbounds %struct.pm8001_dispatch, ptr %86, i32 0, i32 14
  %87 = ptrtoint ptr %sata_req.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sata_req.i, align 4
  %call.i12 = tail call i32 %88(ptr noundef %15, ptr noundef %arrayidx76) #9
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  %dev110 = getelementptr inbounds %struct.pm8001_hba_info, ptr %15, i32 0, i32 6
  %89 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev110, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.50, ptr noundef %90, ptr noundef nonnull @.str.49, i32 noundef %3) #12
  br label %do.body113

sw.epilog:                                        ; preds = %sw.bb104, %if.else101, %if.then99, %sw.bb
  %rc.0 = phi i32 [ %call.i12, %sw.bb104 ], [ %call.i6, %if.then99 ], [ %call.i9, %if.else101 ], [ %call.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool111.not = icmp eq i32 %rc.0, 0
  br i1 %tobool111.not, label %if.end135, label %sw.epilog.do.body113_crit_edge

sw.epilog.do.body113_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body113

do.body113:                                       ; preds = %sw.epilog.do.body113_crit_edge, %sw.epilog.thread
  %rc.023 = phi i32 [ -22, %sw.epilog.thread ], [ %rc.0, %sw.epilog.do.body113_crit_edge ]
  %91 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %logging_level, align 4
  %and115 = and i32 %92, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %do.body113.do.end133_crit_edge, label %do.end126, !prof !174

do.body113.do.end133_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end133

do.end126:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #11
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %15, ptr noundef nonnull @.str.47, i32 noundef 485, i32 noundef %rc.023) #12
  br label %do.end133

do.end133:                                        ; preds = %do.end126, %do.body113.do.end133_crit_edge
  %running_req134 = getelementptr inbounds %struct.pm8001_device, ptr %26, i32 0, i32 7
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %running_req134, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %running_req134, i32 1, i32 3, i32 1) #9
  %93 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %running_req134, ptr %running_req134, i32 1, ptr elementtype(i32) %running_req134) #9, !srcloc !177
  br label %err_out_tag

if.end135:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %task_state_lock) #9
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 2
  %94 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %task_state_flags, align 4
  %or = or i32 %95, 16
  store i32 %or, ptr %task_state_flags, align 4
  tail call void @_raw_spin_unlock(ptr noundef %task_state_lock) #9
  br label %out_done

err_out_tag:                                      ; preds = %do.end133, %if.then81.err_out_tag_crit_edge
  %n_elem.1 = phi i32 [ %n_elem.0, %do.end133 ], [ 0, %if.then81.err_out_tag_crit_edge ]
  %rc.1 = phi i32 [ %rc.023, %do.end133 ], [ -12, %if.then81.err_out_tag_crit_edge ]
  %96 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tags.i, align 8
  tail call void @_clear_bit(i32 noundef %call5.i, ptr noundef %97) #9
  br label %do.end141

do.end141:                                        ; preds = %err_out_tag, %pm8001_tag_alloc.exit
  %.pre-phi = phi i32 [ %.pre, %pm8001_tag_alloc.exit ], [ %52, %err_out_tag ]
  %n_elem.2 = phi i32 [ 0, %pm8001_tag_alloc.exit ], [ %n_elem.1, %err_out_tag ]
  %rc.2 = phi i32 [ -132, %pm8001_tag_alloc.exit ], [ %rc.1, %err_out_tag ]
  %dev142 = getelementptr inbounds %struct.pm8001_hba_info, ptr %15, i32 0, i32 6
  %98 = ptrtoint ptr %dev142 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev142, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.50, ptr noundef %99, ptr noundef nonnull @.str.57, i32 noundef %rc.2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre-phi)
  %100 = icmp ne i32 %.pre-phi, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_elem.2)
  %tobool146.not = icmp eq i32 %n_elem.2, 0
  %or.cond = select i1 %100, i1 true, i1 %tobool146.not
  br i1 %or.cond, label %do.end141.out_done_crit_edge, label %if.then147

do.end141.out_done_crit_edge:                     ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_done

if.then147:                                       ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %dev142 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev142, align 8
  %scatter149 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 5
  %103 = ptrtoint ptr %scatter149 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %scatter149, align 4
  %num_scatter150 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 6
  %105 = ptrtoint ptr %num_scatter150 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_scatter150, align 4
  %data_dir151 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 8
  %107 = ptrtoint ptr %data_dir151 to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load152 = load i8, ptr %data_dir151, align 4
  %bf.lshr153 = lshr i8 %bf.load152, 6
  %conv154 = zext i8 %bf.lshr153 to i32
  tail call void @dma_unmap_sg_attrs(ptr noundef %102, ptr noundef %104, i32 noundef %106, i32 noundef %conv154, i32 noundef 0) #9
  br label %out_done

out_done:                                         ; preds = %if.then147, %do.end141.out_done_crit_edge, %if.end135, %if.else, %if.then45
  %flags.1 = phi i32 [ %call27, %do.end141.out_done_crit_edge ], [ %call27, %if.then147 ], [ %call61, %if.then45 ], [ %call27, %if.else ], [ %call27, %if.end135 ]
  %rc.3 = phi i32 [ %rc.2, %do.end141.out_done_crit_edge ], [ %rc.2, %if.then147 ], [ 0, %if.then45 ], [ 0, %if.else ], [ 0, %if.end135 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #9
  br label %cleanup

cleanup:                                          ; preds = %out_done, %if.then8, %if.then4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ %rc.3, %out_done ], [ 0, %if.then4 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm8001_ccb_task_free(ptr nocapture noundef readonly %pm8001_ha, ptr noundef %task, ptr nocapture noundef %ccb, i32 noundef %ccb_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ccb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ccb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 3
  %2 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %task_proto, align 4
  %4 = and i32 %3, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %if.then3, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %if.end
  %n_elem = getelementptr inbounds %struct.pm8001_ccb_info, ptr %ccb, i32 0, i32 1
  %5 = ptrtoint ptr %n_elem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_elem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.then3.if.end7thread-pre-split_crit_edge, label %if.then5

if.then3.if.end7thread-pre-split_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7thread-pre-split

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 6
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %scatter = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 5
  %9 = ptrtoint ptr %scatter to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scatter, align 4
  %num_scatter = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 6
  %11 = ptrtoint ptr %num_scatter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_scatter, align 4
  %data_dir = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 8
  %13 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %data_dir, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %conv = zext i8 %bf.lshr to i32
  tail call void @dma_unmap_sg_attrs(ptr noundef %8, ptr noundef %10, i32 noundef %12, i32 noundef %conv, i32 noundef 0) #9
  br label %if.end7thread-pre-split

if.end7thread-pre-split:                          ; preds = %if.then5, %if.then3.if.end7thread-pre-split_crit_edge
  %14 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %task_proto, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7thread-pre-split, %if.end.if.end7_crit_edge
  %15 = phi i32 [ %.pr, %if.end7thread-pre-split ], [ %3, %if.end.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cond33 = icmp eq i32 %15, 2
  br i1 %cond33, label %sw.bb, label %if.end7.sw.epilog_crit_edge

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %dev9 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 6
  %16 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev9, align 8
  %18 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4
  %smp_resp = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4, i32 0, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %17, ptr noundef %smp_resp, i32 noundef 1, i32 noundef 2, i32 noundef 0) #9
  %19 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev9, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %20, ptr noundef %18, i32 noundef 1, i32 noundef 1, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end7.sw.epilog_crit_edge
  %21 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %task_proto, align 4
  %23 = and i32 %22, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %.not58 = icmp eq i32 %23, 0
  br i1 %.not58, label %sw.epilog.if.end30_crit_edge, label %if.then15

sw.epilog.if.end30_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then15:                                        ; preds = %sw.epilog
  %uldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 12
  %24 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %uldd_task, align 4
  %device = getelementptr inbounds %struct.pm8001_ccb_info, ptr %ccb, i32 0, i32 4
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 41
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 8
  %tobool16.not = icmp eq ptr %27, null
  br i1 %tobool16.not, label %if.then15.cond.end_crit_edge, label %cond.true

if.then15.cond.end_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %attached_phy = getelementptr inbounds %struct.pm8001_device, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %attached_phy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %attached_phy, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then15.cond.end_crit_edge
  %cond = phi i32 [ %31, %cond.true ], [ 16, %if.then15.cond.end_crit_edge ]
  %tobool17.not = icmp eq ptr %25, null
  br i1 %tobool17.not, label %cond.end.cond.end21_crit_edge, label %cond.true18

cond.end.cond.end21_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end21

cond.true18:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %command = getelementptr inbounds %struct.ata_queued_cmd, ptr %25, i32 0, i32 4, i32 14
  %32 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %command, align 1
  %phi.cast = zext i8 %33 to i16
  br label %cond.end21

cond.end21:                                       ; preds = %cond.true18, %cond.end.cond.end21_crit_edge
  %cond22 = phi i16 [ %phi.cast, %cond.true18 ], [ 0, %cond.end.cond.end21_crit_edge ]
  br i1 %tobool16.not, label %cond.end21.cond.end28_crit_edge, label %cond.true25

cond.end21.cond.end28_crit_edge:                  ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end28

cond.true25:                                      ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #11
  %running_req = getelementptr inbounds %struct.pm8001_device, ptr %27, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %running_req, i32 noundef 4) #9
  %34 = ptrtoint ptr %running_req to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %running_req, align 4
  br label %cond.end28

cond.end28:                                       ; preds = %cond.true25, %cond.end21.cond.end28_crit_edge
  %cond29 = phi i32 [ %35, %cond.true25 ], [ -1, %cond.end21.cond.end28_crit_edge ]
  tail call fastcc void @trace_pm80xx_request_complete(i32 noundef %29, i32 noundef %cond, i32 noundef %ccb_idx, i16 noundef zeroext %cond22, i32 noundef %cond29)
  br label %if.end30

if.end30:                                         ; preds = %cond.end28, %sw.epilog.if.end30_crit_edge
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 11
  %36 = ptrtoint ptr %lldd_task to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %lldd_task, align 4
  %37 = ptrtoint ptr %ccb to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %ccb, align 4
  %ccb_tag = getelementptr inbounds %struct.pm8001_ccb_info, ptr %ccb, i32 0, i32 2
  %38 = ptrtoint ptr %ccb_tag to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %ccb_tag, align 4
  %open_retry = getelementptr inbounds %struct.pm8001_ccb_info, ptr %ccb, i32 0, i32 7
  %39 = ptrtoint ptr %open_retry to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %open_retry, align 4
  %tags.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 38
  %40 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tags.i, align 8
  tail call void @_clear_bit(i32 noundef %ccb_idx, ptr noundef %41) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_pm80xx_request_complete(i32 noundef %id, i32 noundef %phy_id, i32 noundef %htag, i16 noundef zeroext %ata_opcode, i32 noundef %running_req) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm80xx_request_complete, i32 0, i32 1), ptr blockaddress(@trace_pm80xx_request_complete, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !178

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !174

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !179
  %call42 = tail call i32 @__traceiter_pm80xx_request_complete(ptr noundef null, i32 noundef %id, i32 noundef %phy_id, i32 noundef %htag, i32 noundef 0, i16 noundef zeroext %ata_opcode, i32 noundef %running_req) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !180
  %13 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !174

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !181
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm80xx_request_complete, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm80xx_request_complete, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_pm80xx_request_complete.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_pm80xx_request_complete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 76, ptr noundef nonnull @.str.60) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !182
  %31 = tail call i32 @llvm.read_register.i32(metadata !163) #9
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pm8001_find_dev(ptr noundef %pm8001_ha, i32 noundef %device_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devices = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 44
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devices, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %dev.023 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %device_id1 = getelementptr %struct.pm8001_device, ptr %1, i32 %dev.023, i32 6
  %2 = ptrtoint ptr %device_id1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_id1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %device_id)
  %cmp2 = icmp eq i32 %3, %device_id
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.pm8001_device, ptr %1, i32 %dev.023
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %dev.023, 1
  %exitcond.not = icmp eq i32 %inc, 2048
  br i1 %exitcond.not, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %for.inc
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 50
  %4 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logging_level, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !174

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %pm8001_ha, ptr noundef nonnull @.str.4, i32 noundef 609) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %arrayidx, %if.then ], [ null, %do.body.cleanup_crit_edge ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @pm8001_free_dev(ptr nocapture noundef %pm8001_dev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.pm8001_device, ptr %pm8001_dev, i32 0, i32 3
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id1, align 4
  %2 = getelementptr inbounds i8, ptr %pm8001_dev, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 24)
  store i32 %1, ptr %id1, align 4
  %4 = ptrtoint ptr %pm8001_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pm8001_dev, align 4
  %device_id = getelementptr inbounds %struct.pm8001_device, ptr %pm8001_dev, i32 0, i32 6
  %5 = ptrtoint ptr %device_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2048, ptr %device_id, align 4
  %sas_device = getelementptr inbounds %struct.pm8001_device, ptr %pm8001_dev, i32 0, i32 1
  %6 = ptrtoint ptr %sas_device to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sas_device, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8001_dev_found(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %completion.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 64
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion.i) #9
  %2 = getelementptr inbounds i8, ptr %completion.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %4 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion.i, align 4
  call void @__init_swait_queue_head(ptr noundef %2, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #9
  %port.i.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port.i.i, align 4
  %ha.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ha.i.i, align 4
  %lldd_ha.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %lldd_ha.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lldd_ha.i.i, align 4
  %lock.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %10, i32 0, i32 3
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %devices.i.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %devices.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devices.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry
  %dev.027.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.pm8001_device, ptr %12, i32 %dev.027.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1.i.i = icmp eq i32 %14, 0
  br i1 %cmp1.i.i, label %pm8001_alloc_dev.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %dev.027.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 2048
  br i1 %exitcond.not.i.i, label %do.body.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i
  %logging_level.i.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %10, i32 0, i32 50
  %15 = ptrtoint ptr %logging_level.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %logging_level.i.i, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.then.i_crit_edge, label %do.end.i.i, !prof !174

do.body.i.i.if.then.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %10, ptr noundef nonnull @.str.68, i32 noundef 591, i32 noundef 2048) #12
  br label %if.then.i

pm8001_alloc_dev.exit.i:                          ; preds = %for.body.i.i
  %id.i.i = getelementptr %struct.pm8001_device, ptr %12, i32 %dev.027.i.i, i32 3
  %17 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %dev.027.i.i, ptr %id.i.i, align 4
  %18 = ptrtoint ptr %devices.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %devices.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.pm8001_device, ptr %19, i32 %dev.027.i.i
  %tobool.not.i = icmp eq ptr %arrayidx5.i.i, null
  br i1 %tobool.not.i, label %pm8001_alloc_dev.exit.i.if.then.i_crit_edge, label %if.end.i

pm8001_alloc_dev.exit.i.if.then.i_crit_edge:      ; preds = %pm8001_alloc_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %pm8001_alloc_dev.exit.i.if.then.i_crit_edge, %do.end.i.i, %do.body.i.i.if.then.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #9
  br label %pm8001_dev_found_notify.exit

if.end.i:                                         ; preds = %pm8001_alloc_dev.exit.i
  %sas_device.i = getelementptr %struct.pm8001_device, ptr %19, i32 %dev.027.i.i, i32 1
  %20 = ptrtoint ptr %sas_device.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %sas_device.i, align 4
  %lldd_dev.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %21 = ptrtoint ptr %lldd_dev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx5.i.i, ptr %lldd_dev.i, align 128
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %22 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dev_type.i, align 4
  %24 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx5.i.i, align 4
  %dcompletion.i = getelementptr %struct.pm8001_device, ptr %19, i32 %dev.027.i.i, i32 4
  %25 = ptrtoint ptr %dcompletion.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %completion.i, ptr %dcompletion.i, align 4
  %tobool9.not.i = icmp eq ptr %1, null
  br i1 %tobool9.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %dev_type10.i = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %dev_type10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dev_type10.i, align 4
  %28 = and i32 %27, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %for.cond.preheader.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  %30 = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 19
  %num_phys.i = getelementptr inbounds %struct.expander_device, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_phys.i, align 2
  %conv14.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp15139.not.i = icmp eq i8 %32, 0
  br i1 %cmp15139.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %ex_phy.i = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 19, i32 0, i32 4, i32 8
  %33 = ptrtoint ptr %ex_phy.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ex_phy.i, align 8
  %sas_addr.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %35 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %sas_addr.i, align 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %phy_id.0140.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %attached_sas_addr.i = getelementptr %struct.ex_phy, ptr %34, i32 %phy_id.0140.i, i32 7
  %37 = ptrtoint ptr %attached_sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %attached_sas_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %36)
  %cmp18.i = icmp eq i64 %38, %36
  br i1 %cmp18.i, label %if.then20.i, label %for.inc.i

if.then20.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %attached_phy.i = getelementptr %struct.pm8001_device, ptr %19, i32 %dev.027.i.i, i32 2
  %39 = ptrtoint ptr %attached_phy.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %phy_id.0140.i, ptr %attached_phy.i, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %phy_id.0140.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv14.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then20.i, %for.cond.preheader.i.for.end.i_crit_edge
  %phy_id.0134.i = phi i32 [ %phy_id.0140.i, %if.then20.i ], [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %conv14.i, %for.inc.i.for.end.i_crit_edge ]
  %40 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_phys.i, align 2
  %conv23.i = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %phy_id.0134.i, i32 %conv23.i)
  %cmp24.i = icmp eq i32 %phy_id.0134.i, %conv23.i
  br i1 %cmp24.i, label %do.body27.i, label %for.end.i.do.body54.i_crit_edge

for.end.i.do.body54.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54.i

do.body27.i:                                      ; preds = %for.end.i
  %logging_level.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %10, i32 0, i32 50
  %42 = ptrtoint ptr %logging_level.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %logging_level.i, align 4
  %and.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool28.not.i, label %do.body27.i.do.body54.i_crit_edge, label %do.end34.i, !prof !174

do.body27.i.do.body54.i_crit_edge:                ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54.i

do.end34.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #11
  %sas_addr37.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %44 = ptrtoint ptr %sas_addr37.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %sas_addr37.i, align 16
  %sas_addr39.i = getelementptr inbounds %struct.domain_device, ptr %1, i32 0, i32 15
  %46 = ptrtoint ptr %sas_addr39.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %sas_addr39.i, align 16
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %10, ptr noundef nonnull @.str.63, i32 noundef 673, i64 noundef %45, i64 noundef %47) #12
  br label %do.body54.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %48 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %49)
  %cmp47.i = icmp eq i32 %49, 5
  br i1 %cmp47.i, label %if.then49.i, label %if.else.i.do.body54.i_crit_edge

if.else.i.do.body54.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54.i

if.then49.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %rphy.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 14
  %50 = ptrtoint ptr %rphy.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rphy.i, align 4
  %phy_identifier.i = getelementptr inbounds %struct.sas_rphy, ptr %51, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %phy_identifier.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %phy_identifier.i, align 8
  %conv50.i = zext i8 %53 to i32
  %attached_phy51.i = getelementptr %struct.pm8001_device, ptr %19, i32 %dev.027.i.i, i32 2
  %54 = ptrtoint ptr %attached_phy51.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv50.i, ptr %attached_phy51.i, align 4
  br label %do.body54.i

do.body54.i:                                      ; preds = %if.then49.i, %if.else.i.do.body54.i_crit_edge, %do.end34.i, %do.body27.i.do.body54.i_crit_edge, %for.end.i.do.body54.i_crit_edge
  %flag.0.i = phi i32 [ 1, %if.then49.i ], [ 0, %if.else.i.do.body54.i_crit_edge ], [ 0, %do.body27.i.do.body54.i_crit_edge ], [ 0, %do.end34.i ], [ 0, %for.end.i.do.body54.i_crit_edge ]
  %logging_level55.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %10, i32 0, i32 50
  %55 = ptrtoint ptr %logging_level55.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %logging_level55.i, align 4
  %and56.i = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %do.body54.i.do.end74.i_crit_edge, label %do.end67.i, !prof !174

do.body54.i.do.end74.i_crit_edge:                 ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74.i

do.end67.i:                                       ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #11
  %call71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %10, ptr noundef nonnull @.str.63, i32 noundef 683) #12
  br label %do.end74.i

do.end74.i:                                       ; preds = %do.end67.i, %do.body54.i.do.end74.i_crit_edge
  %chip.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %10, i32 0, i32 35
  %57 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chip.i, align 4
  %dispatch.i = getelementptr inbounds %struct.pm8001_chip_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %dispatch.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dispatch.i, align 4
  %reg_dev_req.i = getelementptr inbounds %struct.pm8001_dispatch, ptr %60, i32 0, i32 17
  %61 = ptrtoint ptr %reg_dev_req.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_dev_req.i, align 4
  %call75.i = call i32 %62(ptr noundef %10, ptr noundef nonnull %arrayidx5.i.i, i32 noundef %flag.0.i) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #9
  call void @wait_for_completion(ptr noundef nonnull %completion.i) #9
  %63 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp78.i = icmp eq i32 %64, 1
  br i1 %cmp78.i, label %if.then80.i, label %do.end74.i.if.end81.i_crit_edge

do.end74.i.if.end81.i_crit_edge:                  ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81.i

if.then80.i:                                      ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @msleep(i32 noundef 50) #9
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then80.i, %do.end74.i.if.end81.i_crit_edge
  %flags82.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %10, i32 0, i32 2
  %65 = ptrtoint ptr %flags82.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %flags82.i, align 8
  br label %pm8001_dev_found_notify.exit

pm8001_dev_found_notify.exit:                     ; preds = %if.end81.i, %if.then.i
  %retval.0.i = phi i32 [ 0, %if.end81.i ], [ -1, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm8001_task_done(ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slow_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 13
  %0 = ptrtoint ptr %slow_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slow_task, align 4
  %call = tail call i32 @del_timer(ptr noundef %1) #9
  %2 = ptrtoint ptr %slow_task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slow_task, align 4
  %completion = getelementptr inbounds %struct.sas_task_slow, ptr %3, i32 0, i32 1
  tail call void @complete(ptr noundef %completion) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm8001_dev_gone(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pm8001_dev_gone_notify(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm8001_dev_gone_notify(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldd_dev, align 128
  %port.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha.i, align 4
  %lldd_ha.i = getelementptr inbounds %struct.sas_ha_struct, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %lldd_ha.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldd_ha.i, align 4
  %lock = getelementptr inbounds %struct.pm8001_hba_info, ptr %7, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body44, label %if.then

if.then:                                          ; preds = %entry
  %device_id6 = getelementptr inbounds %struct.pm8001_device, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %device_id6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_id6, align 4
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %7, i32 0, i32 50
  %10 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %logging_level, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then.do.end19_crit_edge, label %do.end14, !prof !174

if.then.do.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

do.end14:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %7, ptr noundef nonnull @.str.70, i32 noundef 901, i32 noundef %9, i32 noundef %13) #12
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %if.then.do.end19_crit_edge
  %running_req = getelementptr inbounds %struct.pm8001_device, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %running_req, i32 noundef 4) #9
  %14 = ptrtoint ptr %running_req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %running_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %do.end19.if.end42_crit_edge, label %if.then22

do.end19.if.end42_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then22:                                        ; preds = %do.end19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %call24 = tail call fastcc i32 @pm8001_exec_internal_task_abort(ptr noundef %7, ptr noundef nonnull %1, ptr noundef %dev, i32 noundef 1, i32 noundef 0)
  %call.i.i8990 = tail call zeroext i1 @__kasan_check_read(ptr noundef %running_req, i32 noundef 4) #9
  %16 = ptrtoint ptr %running_req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %running_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool27.not91 = icmp eq i32 %17, 0
  br i1 %tobool27.not91, label %if.then22.do.body29_crit_edge, label %if.then22.while.body_crit_edge

if.then22.while.body_crit_edge:                   ; preds = %if.then22
  br label %while.body

if.then22.do.body29_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then22.while.body_crit_edge
  tail call void @msleep(i32 noundef 20) #9
  %call.i.i89 = tail call zeroext i1 @__kasan_check_read(ptr noundef %running_req, i32 noundef 4) #9
  %18 = ptrtoint ptr %running_req to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %running_req, align 4
  %tobool27.not = icmp eq i32 %19, 0
  br i1 %tobool27.not, label %while.body.do.body29_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.do.body29_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

do.body29:                                        ; preds = %while.body.do.body29_crit_edge, %if.then22.do.body29_crit_edge
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  br label %if.end42

if.end42:                                         ; preds = %do.body29, %do.end19.if.end42_crit_edge
  %flags.0 = phi i32 [ %call37, %do.body29 ], [ %call3, %do.end19.if.end42_crit_edge ]
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %7, i32 0, i32 35
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dispatch, align 4
  %dereg_dev_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %dereg_dev_req to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dereg_dev_req, align 4
  %call43 = tail call i32 %25(ptr noundef %7, i32 noundef %9) #9
  %id1.i = getelementptr inbounds %struct.pm8001_device, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id1.i, align 4
  %28 = getelementptr inbounds i8, ptr %1, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 24)
  store i32 %27, ptr %id1.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %1, align 4
  %31 = ptrtoint ptr %device_id6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2048, ptr %device_id6, align 4
  %sas_device.i = getelementptr inbounds %struct.pm8001_device, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %sas_device.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %sas_device.i, align 4
  br label %if.end65

do.body44:                                        ; preds = %entry
  %logging_level45 = getelementptr inbounds %struct.pm8001_hba_info, ptr %7, i32 0, i32 50
  %33 = ptrtoint ptr %logging_level45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %logging_level45, align 4
  %and46 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body44.if.end65_crit_edge, label %do.end57, !prof !174

do.body44.if.end65_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.end57:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %7, ptr noundef nonnull @.str.70, i32 noundef 913) #12
  br label %if.end65

if.end65:                                         ; preds = %do.end57, %do.body44.if.end65_crit_edge, %if.end42
  %flags.1 = phi i32 [ %flags.0, %if.end42 ], [ %call3, %do.end57 ], [ %call3, %do.body44.if.end65_crit_edge ]
  %35 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %lldd_dev, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm8001_open_reject_retry(ptr noundef %pm8001_ha, ptr noundef readnone %task_to_close, ptr noundef readnone %device_to_close) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %pm8001_ha, null
  br i1 %cmp, label %entry.cleanup100_crit_edge, label %do.body1

entry.cleanup100_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup100

do.body1:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %ccb_info = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 45
  %tobool12.not = icmp eq ptr %device_to_close, null
  %devices = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 44
  %0 = ptrtoint ptr %devices to i32
  %tobool38.not = icmp eq ptr %task_to_close, null
  br label %for.body

for.body:                                         ; preds = %cleanup91.for.body_crit_edge, %do.body1
  %i.0152 = phi i32 [ 0, %do.body1 ], [ %inc, %cleanup91.for.body_crit_edge ]
  %flags.0151 = phi i32 [ %call3, %do.body1 ], [ %flags.2, %cleanup91.for.body_crit_edge ]
  %1 = ptrtoint ptr %ccb_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ccb_info, align 8
  %arrayidx = getelementptr %struct.pm8001_ccb_info, ptr %2, i32 %i.0152
  %device = getelementptr %struct.pm8001_ccb_info, ptr %2, i32 %i.0152, i32 4
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.cleanup91_crit_edge, label %lor.lhs.false

for.body.cleanup91_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup91

lor.lhs.false:                                    ; preds = %for.body
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp8 = icmp eq i32 %6, 0
  br i1 %cmp8, label %lor.lhs.false.cleanup91_crit_edge, label %if.end11

lor.lhs.false.cleanup91_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup91

if.end11:                                         ; preds = %lor.lhs.false
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %7 = ptrtoint ptr %4 to i32
  %sub = sub i32 %7, %0
  %8 = and i32 %sub, -65505
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %if.then13.if.end25_crit_edge, label %if.then13.cleanup91_crit_edge

if.then13.cleanup91_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup91

if.then13.if.end25_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else:                                          ; preds = %if.end11
  %cmp21.not = icmp eq ptr %4, %device_to_close
  br i1 %cmp21.not, label %if.else.if.end25_crit_edge, label %if.else.cleanup91_crit_edge

if.else.cleanup91_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup91

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %if.else.if.end25_crit_edge, %if.then13.if.end25_crit_edge
  %ccb_tag = getelementptr %struct.pm8001_ccb_info, ptr %2, i32 %i.0152, i32 2
  %9 = ptrtoint ptr %ccb_tag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ccb_tag, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %10, label %if.end31 [
    i32 0, label %if.end25.cleanup91_crit_edge
    i32 -1, label %if.end25.cleanup91_crit_edge154
  ]

if.end25.cleanup91_crit_edge154:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup91

if.end25.cleanup91_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup91

if.end31:                                         ; preds = %if.end25
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool33.not = icmp eq ptr %13, null
  br i1 %tobool33.not, label %if.end31.cleanup91_crit_edge, label %lor.lhs.false34

if.end31.cleanup91_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup91

lor.lhs.false34:                                  ; preds = %if.end31
  %task_done = getelementptr inbounds %struct.sas_task, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %task_done to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task_done, align 4
  %tobool35.not = icmp ne ptr %15, null
  %cmp39.not = icmp eq ptr %13, %task_to_close
  %or.cond150 = select i1 %tobool38.not, i1 true, i1 %cmp39.not
  %or.cond = select i1 %tobool35.not, i1 %or.cond150, i1 false
  br i1 %or.cond, label %if.end42, label %lor.lhs.false34.cleanup91_crit_edge

lor.lhs.false34.cleanup91_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup91

if.end42:                                         ; preds = %lor.lhs.false34
  %task_status = getelementptr inbounds %struct.sas_task, ptr %13, i32 0, i32 9
  %16 = ptrtoint ptr %task_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %task_status, align 4
  %stat = getelementptr inbounds %struct.sas_task, ptr %13, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 135, ptr %stat, align 4
  %open_rej_reason = getelementptr inbounds %struct.sas_task, ptr %13, i32 0, i32 9, i32 5
  %18 = ptrtoint ptr %open_rej_reason to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 18, ptr %open_rej_reason, align 4
  %running_req = getelementptr inbounds %struct.pm8001_device, ptr %4, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %running_req, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %running_req, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %running_req, ptr %running_req, i32 1, ptr elementtype(i32) %running_req) #9, !srcloc !177
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %13, i32 0, i32 1
  %call54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #9
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %task_state_flags, align 4
  %and60 = and i32 %21, -20
  %or = or i32 %and60, 2
  store i32 %or, ptr %task_state_flags, align 4
  %and63 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call54) #9
  tail call void @pm8001_ccb_task_free(ptr noundef nonnull %pm8001_ha, ptr noundef nonnull %13, ptr noundef %arrayidx, i32 noundef %10)
  br i1 %tobool64.not, label %if.else69, label %if.end42.cleanup91_crit_edge, !prof !174

if.end42.cleanup91_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup91

if.else69:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void @arm_heavy_mb() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0151) #9
  %22 = ptrtoint ptr %task_done to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task_done, align 4
  tail call void %23(ptr noundef nonnull %13) #9
  %call85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  br label %cleanup91

cleanup91:                                        ; preds = %if.else69, %if.end42.cleanup91_crit_edge, %lor.lhs.false34.cleanup91_crit_edge, %if.end31.cleanup91_crit_edge, %if.end25.cleanup91_crit_edge, %if.end25.cleanup91_crit_edge154, %if.else.cleanup91_crit_edge, %if.then13.cleanup91_crit_edge, %lor.lhs.false.cleanup91_crit_edge, %for.body.cleanup91_crit_edge
  %flags.2 = phi i32 [ %flags.0151, %lor.lhs.false.cleanup91_crit_edge ], [ %flags.0151, %for.body.cleanup91_crit_edge ], [ %flags.0151, %if.then13.cleanup91_crit_edge ], [ %flags.0151, %if.else.cleanup91_crit_edge ], [ %flags.0151, %if.end25.cleanup91_crit_edge ], [ %flags.0151, %if.end25.cleanup91_crit_edge154 ], [ %flags.0151, %lor.lhs.false34.cleanup91_crit_edge ], [ %flags.0151, %if.end31.cleanup91_crit_edge ], [ %call85, %if.else69 ], [ %flags.0151, %if.end42.cleanup91_crit_edge ]
  %inc = add nuw nsw i32 %i.0152, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end, label %cleanup91.for.body_crit_edge

cleanup91.for.body_crit_edge:                     ; preds = %cleanup91
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.2) #9
  br label %cleanup100

cleanup100:                                       ; preds = %for.end, %entry.cleanup100_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8001_I_T_nexus_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldd_dev, align 128
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %port.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha.i, align 4
  %lldd_ha.i = getelementptr inbounds %struct.sas_ha_struct, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %lldd_ha.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldd_ha.i, align 4
  %call3 = tail call ptr @sas_get_local_phy(ptr noundef nonnull %dev) #9
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_type.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %9, label %if.else [
    i32 5, label %if.end.if.then6_crit_edge
    i32 7, label %if.end.if.then6_crit_edge102
    i32 8, label %if.end.if.then6_crit_edge103
    i32 9, label %if.end.if.then6_crit_edge104
  ]

if.end.if.then6_crit_edge104:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end.if.then6_crit_edge103:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end.if.then6_crit_edge102:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.if.then6_crit_edge102, %if.end.if.then6_crit_edge103, %if.end.if.then6_crit_edge104
  %parent = getelementptr inbounds %struct.device, ptr %call3, i32 0, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %call8 = tail call i32 @scsi_is_host_device(ptr noundef %12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then6.out_crit_edge

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end11:                                         ; preds = %if.then6
  %call12 = tail call i32 @sas_phy_reset(ptr noundef %call3, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end24, label %do.body

do.body:                                          ; preds = %if.end11
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %7, i32 0, i32 50
  %13 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %logging_level, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.body.out_crit_edge, label %do.end, !prof !174

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %device_id = getelementptr inbounds %struct.pm8001_device, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_id, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef 1037, i32 noundef %16, i32 noundef %call12) #12
  br label %out

if.end24:                                         ; preds = %if.end11
  tail call void @msleep(i32 noundef 2000) #9
  %call25 = tail call fastcc i32 @pm8001_exec_internal_task_abort(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull %dev, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.do.body53_crit_edge, label %do.body28

if.end24.do.body53_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

do.body28:                                        ; preds = %if.end24
  %logging_level29 = getelementptr inbounds %struct.pm8001_hba_info, ptr %7, i32 0, i32 50
  %17 = ptrtoint ptr %logging_level29 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %logging_level29, align 4
  %and30 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body28.do.body53_crit_edge, label %do.end41, !prof !174

do.body28.do.body53_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

do.end41:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %device_id45 = getelementptr inbounds %struct.pm8001_device, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %device_id45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %device_id45, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef 1046, i32 noundef %20, i32 noundef %call25) #12
  br label %do.body53

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = tail call i32 @sas_phy_reset(ptr noundef %call3, i32 noundef 1) #9
  tail call void @msleep(i32 noundef 2000) #9
  br label %do.body53

do.body53:                                        ; preds = %if.else, %do.end41, %do.body28.do.body53_crit_edge, %if.end24.do.body53_crit_edge
  %rc.0 = phi i32 [ 0, %if.end24.do.body53_crit_edge ], [ %call51, %if.else ], [ 5, %do.end41 ], [ 5, %do.body28.do.body53_crit_edge ]
  %logging_level54 = getelementptr inbounds %struct.pm8001_hba_info, ptr %7, i32 0, i32 50
  %21 = ptrtoint ptr %logging_level54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %logging_level54, align 4
  %and55 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body53.out_crit_edge, label %do.end66, !prof !174

do.body53.out_crit_edge:                          ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end66:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %device_id70 = getelementptr inbounds %struct.pm8001_device, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %device_id70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %device_id70, align 4
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef 1054, i32 noundef %24, i32 noundef %rc.0) #12
  br label %out

out:                                              ; preds = %do.end66, %do.body53.out_crit_edge, %do.end, %do.body.out_crit_edge, %if.then6.out_crit_edge
  %rc.1 = phi i32 [ %rc.0, %do.end66 ], [ %rc.0, %do.body53.out_crit_edge ], [ 0, %if.then6.out_crit_edge ], [ 5, %do.end ], [ 5, %do.body.out_crit_edge ]
  tail call void @put_device(ptr noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_get_local_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_phy_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm8001_exec_internal_task_abort(ptr noundef %pm8001_ha, ptr noundef %pm8001_dev, ptr noundef %dev, i32 noundef %flag, i32 noundef %task_tag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tproto = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 13
  %tags.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 38
  %bitmap_lock.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 4
  %tags_num.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 37
  %ccb_info = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 45
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 35
  %conv = trunc i32 %flag to i8
  %logging_level61 = getelementptr inbounds %struct.pm8001_hba_info, ptr %pm8001_ha, i32 0, i32 50
  %sas_addr = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %do.end85.for.body_crit_edge, %entry
  %retry.0164 = phi i32 [ 0, %entry ], [ %inc, %do.end85.for.body_crit_edge ]
  %call = tail call ptr @sas_alloc_slow_task(i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call, align 4
  %1 = ptrtoint ptr %tproto to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tproto, align 8
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %task_proto to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %task_proto, align 4
  %task_done = getelementptr inbounds %struct.sas_task, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %task_done to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pm8001_task_done, ptr %task_done, align 4
  %slow_task = getelementptr inbounds %struct.sas_task, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %slow_task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slow_task, align 4
  %function = getelementptr inbounds %struct.timer_list, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pm8001_tmf_timedout, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 2000
  %9 = load ptr, ptr %slow_task, align 4
  %expires = getelementptr inbounds %struct.timer_list, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %expires, align 4
  %11 = load ptr, ptr %slow_task, align 4
  tail call void @add_timer(ptr noundef %11) #9
  %12 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tags.i, align 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bitmap_lock.i) #9
  %14 = ptrtoint ptr %tags_num.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tags_num.i, align 4
  %call5.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %13, i32 noundef %15) #9
  %16 = ptrtoint ptr %tags_num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tags_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %17)
  %cmp7.not.i = icmp ult i32 %call5.i, %17
  br i1 %cmp7.not.i, label %if.end9, label %pm8001_tag_alloc.exit

pm8001_tag_alloc.exit:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bitmap_lock.i, i32 noundef %call2.i) #9
  br label %do.end107

if.end9:                                          ; preds = %if.end
  tail call void @_set_bit(i32 noundef %call5.i, ptr noundef %13) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bitmap_lock.i, i32 noundef %call2.i) #9
  %18 = ptrtoint ptr %ccb_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ccb_info, align 8
  %arrayidx = getelementptr %struct.pm8001_ccb_info, ptr %19, i32 %call5.i
  %device = getelementptr %struct.pm8001_ccb_info, ptr %19, i32 %call5.i, i32 4
  %20 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pm8001_dev, ptr %device, align 4
  %ccb_tag10 = getelementptr %struct.pm8001_ccb_info, ptr %19, i32 %call5.i, i32 2
  %21 = ptrtoint ptr %ccb_tag10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call5.i, ptr %ccb_tag10, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %arrayidx, align 4
  %n_elem = getelementptr %struct.pm8001_ccb_info, ptr %19, i32 %call5.i, i32 1
  %23 = ptrtoint ptr %n_elem to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %n_elem, align 4
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dispatch, align 4
  %task_abort = getelementptr inbounds %struct.pm8001_dispatch, ptr %27, i32 0, i32 20
  %28 = ptrtoint ptr %task_abort to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task_abort, align 4
  %call12 = tail call i32 %29(ptr noundef %pm8001_ha, ptr noundef %pm8001_dev, i8 noundef zeroext %conv, i32 noundef %task_tag, i32 noundef %call5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %30 = ptrtoint ptr %slow_task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slow_task, align 4
  br i1 %tobool13.not, label %if.end27, label %if.then14

if.then14:                                        ; preds = %if.end9
  %call17 = tail call i32 @del_timer(ptr noundef %31) #9
  %32 = ptrtoint ptr %logging_level61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %logging_level61, align 4
  %and = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.then14.do.end107_crit_edge, label %do.end, !prof !174

if.then14.do.end107_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end107

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %pm8001_ha, ptr noundef nonnull @.str.75, i32 noundef 853) #12
  br label %do.end107

if.end27:                                         ; preds = %if.end9
  %completion = getelementptr inbounds %struct.sas_task_slow, ptr %31, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %completion) #9
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %call, i32 0, i32 2
  %34 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %task_state_flags, align 4
  %and29 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end53, label %do.body32

do.body32:                                        ; preds = %if.end27
  %36 = ptrtoint ptr %logging_level61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %logging_level61, align 4
  %and34 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body32.do.end107_crit_edge, label %do.end45, !prof !174

do.body32.do.end107_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end107

do.end45:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %pm8001_ha, ptr noundef nonnull @.str.75, i32 noundef 860) #12
  br label %do.end107

if.end53:                                         ; preds = %if.end27
  %task_status = getelementptr inbounds %struct.sas_task, ptr %call, i32 0, i32 9
  %38 = ptrtoint ptr %task_status to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %task_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp54 = icmp eq i32 %39, 0
  br i1 %cmp54, label %land.lhs.true, label %if.end53.do.body60_crit_edge

if.end53.do.body60_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60

land.lhs.true:                                    ; preds = %if.end53
  %stat = getelementptr inbounds %struct.sas_task, ptr %call, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp57 = icmp eq i32 %41, 0
  br i1 %cmp57, label %land.lhs.true.do.end107_crit_edge, label %land.lhs.true.do.body60_crit_edge

land.lhs.true.do.body60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60

land.lhs.true.do.end107_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end107

do.body60:                                        ; preds = %land.lhs.true.do.body60_crit_edge, %if.end53.do.body60_crit_edge
  %42 = ptrtoint ptr %logging_level61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %logging_level61, align 4
  %and62 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.body60.do.end85_crit_edge, label %do.end73, !prof !174

do.body60.do.end85_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85

do.end73:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %sas_addr, align 16
  %stat81 = getelementptr inbounds %struct.sas_task, ptr %call, i32 0, i32 9, i32 1
  %46 = ptrtoint ptr %stat81 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stat81, align 4
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %pm8001_ha, ptr noundef nonnull @.str.75, i32 noundef 874, i64 noundef %45, i32 noundef %39, i32 noundef %47) #12
  br label %do.end85

do.end85:                                         ; preds = %do.end73, %do.body60.do.end85_crit_edge
  tail call void @sas_free_task(ptr noundef nonnull %call) #9
  %inc = add nuw nsw i32 %retry.0164, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.end85.do.end107_crit_edge, label %do.end85.for.body_crit_edge

do.end85.for.body_crit_edge:                      ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end85.do.end107_crit_edge:                     ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end107

do.end107:                                        ; preds = %do.end85.do.end107_crit_edge, %land.lhs.true.do.end107_crit_edge, %do.end45, %do.body32.do.end107_crit_edge, %do.end, %if.then14.do.end107_crit_edge, %pm8001_tag_alloc.exit
  %task.1 = phi ptr [ %call, %pm8001_tag_alloc.exit ], [ %call, %do.end ], [ %call, %if.then14.do.end107_crit_edge ], [ %call, %do.end45 ], [ %call, %do.body32.do.end107_crit_edge ], [ null, %do.end85.do.end107_crit_edge ], [ %call, %land.lhs.true.do.end107_crit_edge ]
  %res.1 = phi i32 [ -132, %pm8001_tag_alloc.exit ], [ %call12, %do.end ], [ %call12, %if.then14.do.end107_crit_edge ], [ 5, %do.end45 ], [ 5, %do.body32.do.end107_crit_edge ], [ 5, %do.end85.do.end107_crit_edge ], [ 0, %land.lhs.true.do.end107_crit_edge ]
  tail call void @sas_free_task(ptr noundef %task.1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end107, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.1, %do.end107 ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8001_I_T_nexus_event_handler(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %completion_setstate = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup48_crit_edge, label %lor.lhs.false

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

lor.lhs.false:                                    ; preds = %entry
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldd_dev, align 128
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup48_crit_edge, label %if.end

lor.lhs.false.cleanup48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup48

if.end:                                           ; preds = %lor.lhs.false
  %port.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha.i, align 4
  %lldd_ha.i = getelementptr inbounds %struct.sas_ha_struct, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %lldd_ha.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lldd_ha.i, align 4
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %7, i32 0, i32 50
  %8 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %logging_level, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.do.end11_crit_edge, label %do.end, !prof !174

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %7, ptr noundef nonnull @.str.14, i32 noundef 1077) #12
  br label %do.end11

do.end11:                                         ; preds = %do.end, %if.end.do.end11_crit_edge
  %call12 = tail call ptr @sas_get_local_phy(ptr noundef nonnull %dev) #9
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_type.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %11, label %if.else [
    i32 5, label %do.end11.if.then15_crit_edge
    i32 7, label %do.end11.if.then15_crit_edge76
    i32 8, label %do.end11.if.then15_crit_edge77
    i32 9, label %do.end11.if.then15_crit_edge78
  ]

do.end11.if.then15_crit_edge78:                   ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

do.end11.if.then15_crit_edge77:                   ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

do.end11.if.then15_crit_edge76:                   ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

do.end11.if.then15_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.then15:                                        ; preds = %do.end11.if.then15_crit_edge, %do.end11.if.then15_crit_edge76, %do.end11.if.then15_crit_edge77, %do.end11.if.then15_crit_edge78
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion_setstate) #9
  %13 = getelementptr inbounds i8, ptr %completion_setstate, i32 4
  %14 = call ptr @memset(ptr %13, i32 255, i32 52)
  %15 = ptrtoint ptr %completion_setstate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %completion_setstate, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion_setstate, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #9
  %parent = getelementptr inbounds %struct.device, ptr %call12, i32 0, i32 1
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent, align 8
  %call18 = call i32 @scsi_is_host_device(ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = call fastcc i32 @pm8001_exec_internal_task_abort(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull %dev, i32 noundef 1, i32 noundef 0)
  call void @msleep(i32 noundef 100) #9
  call fastcc void @pm8001_dev_gone_notify(ptr noundef nonnull %dev)
  call void @msleep(i32 noundef 200) #9
  %call23 = call i32 @sas_phy_reset(ptr noundef %call12, i32 noundef 1) #9
  call void @msleep(i32 noundef 2000) #9
  %setds_completion = getelementptr inbounds %struct.pm8001_device, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %setds_completion to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %completion_setstate, ptr %setds_completion, align 4
  call void @wait_for_completion(ptr noundef nonnull %completion_setstate) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion_setstate) #9
  br label %do.body27

cleanup:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion_setstate) #9
  br label %out

if.else:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call fastcc i32 @pm8001_exec_internal_task_abort(ptr noundef %7, ptr noundef nonnull %1, ptr noundef nonnull %dev, i32 noundef 1, i32 noundef 0)
  tail call void @msleep(i32 noundef 100) #9
  tail call fastcc void @pm8001_dev_gone_notify(ptr noundef nonnull %dev)
  tail call void @msleep(i32 noundef 200) #9
  %call25 = tail call i32 @sas_phy_reset(ptr noundef %call12, i32 noundef 1) #9
  tail call void @msleep(i32 noundef 2000) #9
  br label %do.body27

do.body27:                                        ; preds = %if.else, %cleanup.thread
  %rc.1 = phi i32 [ %call25, %if.else ], [ %call23, %cleanup.thread ]
  %19 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %logging_level, align 4
  %and29 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body27.out_crit_edge, label %do.end40, !prof !174

do.body27.out_crit_edge:                          ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end40:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %device_id = getelementptr inbounds %struct.pm8001_device, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %device_id, align 4
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %7, ptr noundef nonnull @.str.14, i32 noundef 1117, i32 noundef %22, i32 noundef %rc.1) #12
  br label %out

out:                                              ; preds = %do.end40, %do.body27.out_crit_edge, %cleanup
  %rc.2 = phi i32 [ 0, %cleanup ], [ %rc.1, %do.end40 ], [ %rc.1, %do.body27.out_crit_edge ]
  call void @put_device(ptr noundef %call12) #9
  br label %cleanup48

cleanup48:                                        ; preds = %out, %lor.lhs.false.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.0 = phi i32 [ %rc.2, %out ], [ -1, %lor.lhs.false.cleanup48_crit_edge ], [ -1, %entry.cleanup48_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8001_lu_reset(ptr noundef %dev, ptr nocapture noundef readonly %lun) local_unnamed_addr #0 align 64 {
entry:
  %tmf_task = alloca %struct.pm8001_tmf_task, align 8
  %completion_setstate = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmf_task) #9
  %0 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tmf_task, align 8, !annotation !173
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lldd_dev, align 128
  %port.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port.i, align 4
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ha.i, align 4
  %lldd_ha.i = getelementptr inbounds %struct.sas_ha_struct, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %lldd_ha.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lldd_ha.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion_setstate) #9
  %9 = getelementptr inbounds i8, ptr %completion_setstate, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 52)
  %11 = ptrtoint ptr %completion_setstate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %completion_setstate, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion_setstate, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #9
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_type.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %13, label %if.else [
    i32 5, label %entry.if.then_crit_edge
    i32 7, label %entry.if.then_crit_edge32
    i32 8, label %entry.if.then_crit_edge33
    i32 9, label %entry.if.then_crit_edge34
  ]

entry.if.then_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge32, %entry.if.then_crit_edge33, %entry.if.then_crit_edge34
  %call2 = call ptr @sas_get_local_phy(ptr noundef %dev) #9
  %call3 = call fastcc i32 @pm8001_exec_internal_task_abort(ptr noundef %8, ptr noundef %2, ptr noundef %dev, i32 noundef 1, i32 noundef 0)
  %call4 = call i32 @sas_phy_reset(ptr noundef %call2, i32 noundef 1) #9
  call void @put_device(ptr noundef %call2) #9
  %setds_completion = getelementptr inbounds %struct.pm8001_device, ptr %2, i32 0, i32 5
  %15 = ptrtoint ptr %setds_completion to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %completion_setstate, ptr %setds_completion, align 4
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %8, i32 0, i32 35
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dispatch, align 4
  %set_dev_state_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %19, i32 0, i32 25
  %20 = ptrtoint ptr %set_dev_state_req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_dev_state_req, align 4
  %call5 = call i32 %21(ptr noundef %8, ptr noundef %2, i32 noundef 1) #9
  call void @wait_for_completion(ptr noundef nonnull %completion_setstate) #9
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %tmf_task, align 8
  %call6 = call fastcc i32 @pm8001_issue_ssp_tmf(ptr noundef %dev, ptr noundef %lun, ptr noundef nonnull %tmf_task)
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %rc.0 = phi i32 [ %call5, %if.then ], [ %call6, %if.else ]
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %8, i32 0, i32 50
  %23 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %logging_level, align 4
  %and = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.do.end16_crit_edge, label %do.end, !prof !174

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %device_id = getelementptr inbounds %struct.pm8001_device, ptr %2, i32 0, i32 6
  %25 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %device_id, align 4
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef 1147, i32 noundef %26, i32 noundef %rc.0) #12
  br label %do.end16

do.end16:                                         ; preds = %do.end, %do.body.do.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion_setstate) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmf_task) #9
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm8001_issue_ssp_tmf(ptr noundef %dev, ptr nocapture noundef readonly %lun, ptr noundef %tmf) unnamed_addr #0 align 64 {
entry:
  %completion_setstate.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tproto = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %tproto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tproto, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %lun to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %lun, align 1
  %port.i.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port.i.i, align 4
  %ha.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ha.i.i, align 4
  %lldd_ha.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %lldd_ha.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lldd_ha.i.i, align 4
  %lldd_dev.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %lldd_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lldd_dev.i, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion_setstate.i) #9
  %12 = getelementptr inbounds i8, ptr %completion_setstate.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 52)
  %14 = ptrtoint ptr %completion_setstate.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %completion_setstate.i, align 4
  call void @__init_swait_queue_head(ptr noundef %12, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #9
  %chip_id.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %9, i32 0, i32 34
  %setds_completion.i = getelementptr inbounds %struct.pm8001_device, ptr %11, i32 0, i32 5
  %chip.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %9, i32 0, i32 35
  %logging_level110.i = getelementptr inbounds %struct.pm8001_hba_info, ptr %9, i32 0, i32 50
  %sas_addr.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %do.end134.i.for.body.i_crit_edge, %if.end
  %retry.011.i = phi i32 [ 0, %if.end ], [ %inc.i, %do.end134.i.for.body.i_crit_edge ]
  %call1.i = call ptr @sas_alloc_slow_task(i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %for.body.i.pm8001_exec_internal_tmf_task.exit_crit_edge, label %if.end.i

for.body.i.pm8001_exec_internal_tmf_task.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm8001_exec_internal_tmf_task.exit

if.end.i:                                         ; preds = %for.body.i
  %15 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %call1.i, align 4
  %16 = ptrtoint ptr %tproto to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tproto, align 8
  %task_proto.i = getelementptr inbounds %struct.sas_task, ptr %call1.i, i32 0, i32 3
  %18 = ptrtoint ptr %task_proto.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %task_proto.i, align 4
  %19 = getelementptr inbounds %struct.sas_task, ptr %call1.i, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %19, align 4
  %ssp_task.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %19, i32 1
  %21 = ptrtoint ptr %ssp_task.sroa.4.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %3, ptr %ssp_task.sroa.4.0..sroa_idx, align 1
  %ssp_task.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %19, i32 9
  %22 = call ptr @memcpy(ptr %ssp_task.sroa.5.0..sroa_idx, ptr getelementptr inbounds ({ i8, [8 x i8], i8, [2 x i8], i32, i8, [3 x i8], ptr }, ptr @__const.pm8001_issue_ssp_tmf.ssp_task, i32 0, i32 2), i32 15)
  %task_done.i = getelementptr inbounds %struct.sas_task, ptr %call1.i, i32 0, i32 10
  %23 = ptrtoint ptr %task_done.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pm8001_task_done, ptr %task_done.i, align 4
  %slow_task.i = getelementptr inbounds %struct.sas_task, ptr %call1.i, i32 0, i32 13
  %24 = ptrtoint ptr %slow_task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %slow_task.i, align 4
  %function.i = getelementptr inbounds %struct.timer_list, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @pm8001_tmf_timedout, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %27, 2000
  %28 = load ptr, ptr %slow_task.i, align 4
  %expires.i = getelementptr inbounds %struct.timer_list, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i, ptr %expires.i, align 4
  %30 = load ptr, ptr %slow_task.i, align 4
  call void @add_timer(ptr noundef %30) #9
  %call7.i = call fastcc i32 @pm8001_task_exec(ptr noundef nonnull %call1.i, i32 noundef 1, ptr noundef %tmf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %31 = ptrtoint ptr %slow_task.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %slow_task.i, align 4
  br i1 %tobool8.not.i, label %if.end23.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  %call12.i = call i32 @del_timer(ptr noundef %32) #9
  %33 = ptrtoint ptr %logging_level110.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %logging_level110.i, align 4
  %and.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.then9.i.do.end156.i_crit_edge, label %do.end.i, !prof !174

if.then9.i.do.end156.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end156.i

do.end.i:                                         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %9, ptr noundef nonnull @.str.82, i32 noundef 759) #12
  br label %do.end156.i

if.end23.i:                                       ; preds = %if.end.i
  %completion.i = getelementptr inbounds %struct.sas_task_slow, ptr %32, i32 0, i32 1
  call void @wait_for_completion(ptr noundef %completion.i) #9
  %35 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chip_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp25.not.i = icmp eq i32 %36, 0
  br i1 %cmp25.not.i, label %if.end23.i.if.end28.i_crit_edge, label %if.then26.i

if.end23.i.if.end28.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %setds_completion.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %completion_setstate.i, ptr %setds_completion.i, align 4
  %38 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip.i, align 4
  %dispatch.i = getelementptr inbounds %struct.pm8001_chip_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dispatch.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dispatch.i, align 4
  %set_dev_state_req.i = getelementptr inbounds %struct.pm8001_dispatch, ptr %41, i32 0, i32 25
  %42 = ptrtoint ptr %set_dev_state_req.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_dev_state_req.i, align 4
  %call27.i = call i32 %43(ptr noundef %9, ptr noundef %11, i32 noundef 1) #9
  call void @wait_for_completion(ptr noundef nonnull %completion_setstate.i) #9
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end28.i_crit_edge
  %task_state_flags.i = getelementptr inbounds %struct.sas_task, ptr %call1.i, i32 0, i32 2
  %44 = ptrtoint ptr %task_state_flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %task_state_flags.i, align 4
  %and29.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end58.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end28.i
  %lldd_task.i = getelementptr inbounds %struct.sas_task, ptr %call1.i, i32 0, i32 11
  %46 = ptrtoint ptr %lldd_task.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lldd_task.i, align 4
  %48 = ptrtoint ptr %logging_level110.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %logging_level110.i, align 4
  %and34.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.then31.i.do.end53.i_crit_edge, label %do.end45.i, !prof !174

if.then31.i.do.end53.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53.i

do.end45.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %tmf to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %tmf, align 4
  %conv.i = zext i8 %51 to i32
  %call50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %9, ptr noundef nonnull @.str.82, i32 noundef 775, i32 noundef %conv.i) #12
  br label %do.end53.i

do.end53.i:                                       ; preds = %do.end45.i, %if.then31.i.do.end53.i_crit_edge
  %tobool54.not.i = icmp eq ptr %47, null
  br i1 %tobool54.not.i, label %do.end53.i.do.end156.i_crit_edge, label %if.then55.i

do.end53.i.do.end156.i_crit_edge:                 ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end156.i

if.then55.i:                                      ; preds = %do.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %47, align 4
  br label %do.end156.i

if.end58.i:                                       ; preds = %if.end28.i
  %task_status.i = getelementptr inbounds %struct.sas_task, ptr %call1.i, i32 0, i32 9
  %53 = ptrtoint ptr %task_status.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %task_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp59.i = icmp eq i32 %54, 0
  br i1 %cmp59.i, label %land.lhs.true.i, label %if.end58.i.do.body109.i_crit_edge

if.end58.i.do.body109.i_crit_edge:                ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body109.i

land.lhs.true.i:                                  ; preds = %if.end58.i
  %stat.i = getelementptr inbounds %struct.sas_task, ptr %call1.i, i32 0, i32 9, i32 1
  %55 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %stat.i, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %56, label %land.lhs.true.i.do.body109.i_crit_edge [
    i32 0, label %land.lhs.true.i.do.end156.i_crit_edge
    i32 129, label %if.then75.i
    i32 130, label %do.body88.i
  ]

land.lhs.true.i.do.end156.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end156.i

land.lhs.true.i.do.body109.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body109.i

if.then75.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %residual.i = getelementptr inbounds %struct.sas_task, ptr %call1.i, i32 0, i32 9, i32 4
  %58 = ptrtoint ptr %residual.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %residual.i, align 4
  br label %do.end156.i

do.body88.i:                                      ; preds = %land.lhs.true.i
  %60 = ptrtoint ptr %logging_level110.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %logging_level110.i, align 4
  %and90.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90.i)
  %tobool91.not.i = icmp eq i32 %and90.i, 0
  br i1 %tobool91.not.i, label %do.body88.i.do.end156.i_crit_edge, label %do.end101.i, !prof !174

do.body88.i.do.end156.i_crit_edge:                ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end156.i

do.end101.i:                                      ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #11
  %call105.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %9, ptr noundef nonnull @.str.82, i32 noundef 798) #12
  br label %do.end156.i

do.body109.i:                                     ; preds = %land.lhs.true.i.do.body109.i_crit_edge, %if.end58.i.do.body109.i_crit_edge
  %62 = ptrtoint ptr %logging_level110.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %logging_level110.i, align 4
  %and111.i = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %tobool112.not.i = icmp eq i32 %and111.i, 0
  br i1 %tobool112.not.i, label %do.body109.i.do.end134.i_crit_edge, label %do.end122.i, !prof !174

do.body109.i.do.end134.i_crit_edge:               ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end134.i

do.end122.i:                                      ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %sas_addr.i, align 16
  %stat130.i = getelementptr inbounds %struct.sas_task, ptr %call1.i, i32 0, i32 9, i32 1
  %66 = ptrtoint ptr %stat130.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %stat130.i, align 4
  %call131.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %9, ptr noundef nonnull @.str.82, i32 noundef 806, i64 noundef %65, i32 noundef %54, i32 noundef %67) #12
  br label %do.end134.i

do.end134.i:                                      ; preds = %do.end122.i, %do.body109.i.do.end134.i_crit_edge
  call void @sas_free_task(ptr noundef nonnull %call1.i) #9
  %inc.i = add nuw nsw i32 %retry.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %do.end134.i.do.end156.i_crit_edge, label %do.end134.i.for.body.i_crit_edge

do.end134.i.for.body.i_crit_edge:                 ; preds = %do.end134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end134.i.do.end156.i_crit_edge:                ; preds = %do.end134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end156.i

do.end156.i:                                      ; preds = %do.end134.i.do.end156.i_crit_edge, %do.end101.i, %do.body88.i.do.end156.i_crit_edge, %if.then75.i, %land.lhs.true.i.do.end156.i_crit_edge, %if.then55.i, %do.end53.i.do.end156.i_crit_edge, %do.end.i, %if.then9.i.do.end156.i_crit_edge
  %task.1.i = phi ptr [ %call1.i, %do.end.i ], [ %call1.i, %if.then9.i.do.end156.i_crit_edge ], [ %call1.i, %if.then75.i ], [ %call1.i, %if.then55.i ], [ %call1.i, %do.end53.i.do.end156.i_crit_edge ], [ %call1.i, %do.end101.i ], [ %call1.i, %do.body88.i.do.end156.i_crit_edge ], [ null, %do.end134.i.do.end156.i_crit_edge ], [ %call1.i, %land.lhs.true.i.do.end156.i_crit_edge ]
  %res.1.i = phi i32 [ %call7.i, %do.end.i ], [ %call7.i, %if.then9.i.do.end156.i_crit_edge ], [ %59, %if.then75.i ], [ -5, %if.then55.i ], [ -5, %do.end53.i.do.end156.i_crit_edge ], [ -90, %do.end101.i ], [ -90, %do.body88.i.do.end156.i_crit_edge ], [ -5, %do.end134.i.do.end156.i_crit_edge ], [ %56, %land.lhs.true.i.do.end156.i_crit_edge ]
  call void @sas_free_task(ptr noundef %task.1.i) #9
  br label %pm8001_exec_internal_tmf_task.exit

pm8001_exec_internal_tmf_task.exit:               ; preds = %do.end156.i, %for.body.i.pm8001_exec_internal_tmf_task.exit_crit_edge
  %retval.0.i = phi i32 [ %res.1.i, %do.end156.i ], [ -12, %for.body.i.pm8001_exec_internal_tmf_task.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion_setstate.i) #9
  br label %cleanup

cleanup:                                          ; preds = %pm8001_exec_internal_tmf_task.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %pm8001_exec_internal_tmf_task.exit ], [ 4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8001_query_task(ptr noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  %lun = alloca %struct.scsi_lun, align 8
  %tmf_task = alloca %struct.pm8001_tmf_task, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lun) #9
  %0 = ptrtoint ptr %lun to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %lun, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmf_task) #9
  %1 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %tmf_task, align 8, !annotation !173
  %tobool.not = icmp eq ptr %task, null
  br i1 %tobool.not, label %entry.cleanup82_crit_edge, label %lor.lhs.false, !prof !184

entry.cleanup82_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup82

lor.lhs.false:                                    ; preds = %entry
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 11
  %2 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_task, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup82_crit_edge, label %lor.rhs, !prof !184

lor.lhs.false.cleanup82_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup82

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.rhs.cleanup82_crit_edge, label %if.end, !prof !184

lor.rhs.cleanup82_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup82

if.end:                                           ; preds = %lor.rhs
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 3
  %6 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %task_proto, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.do.end79_crit_edge, label %if.then7

if.end.do.end79_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79

if.then7:                                         ; preds = %if.end
  %uldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 12
  %8 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uldd_task, align 4
  %port.i = getelementptr inbounds %struct.domain_device, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port.i, align 4
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ha.i, align 4
  %lldd_ha.i = getelementptr inbounds %struct.sas_ha_struct, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %lldd_ha.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lldd_ha.i, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %lun10 = getelementptr inbounds %struct.scsi_device, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %lun10 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %lun10, align 8
  call void @int_to_scsilun(i64 noundef %19, ptr noundef nonnull %lun) #9
  %20 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lldd_task, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then7.cleanup82_crit_edge, label %do.body

if.then7.cleanup82_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup82

do.body:                                          ; preds = %if.then7
  %ccb_tag.i = getelementptr inbounds %struct.pm8001_ccb_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ccb_tag.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ccb_tag.i, align 4
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %15, i32 0, i32 50
  %24 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %logging_level, align 4
  %and14 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body.do.end28_crit_edge, label %do.end, !prof !174

do.body.do.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end28

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %cmnd24 = getelementptr inbounds %struct.scsi_cmnd, ptr %9, i32 0, i32 16
  %26 = ptrtoint ptr %cmnd24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmnd24, align 4
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %15, ptr noundef nonnull @.str.20, i32 noundef 1173, ptr noundef %27) #12
  br label %do.end28

do.end28:                                         ; preds = %do.end, %do.body.do.end28_crit_edge
  %28 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -128, ptr %tmf_task, align 8
  %tag_of_task_to_be_managed = getelementptr inbounds %struct.pm8001_tmf_task, ptr %tmf_task, i32 0, i32 1
  %29 = ptrtoint ptr %tag_of_task_to_be_managed to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %23, ptr %tag_of_task_to_be_managed, align 4
  %call30 = call fastcc i32 @pm8001_issue_ssp_tmf(ptr noundef nonnull %5, ptr noundef nonnull %lun, ptr noundef nonnull %tmf_task)
  %30 = zext i32 %call30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %call30, label %do.end28.do.end79_crit_edge [
    i32 8, label %do.body31
    i32 5, label %do.end28.do.body53_crit_edge
    i32 0, label %do.end28.do.body53_crit_edge111
  ]

do.end28.do.body53_crit_edge111:                  ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

do.end28.do.body53_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53

do.end28.do.end79_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79

do.body31:                                        ; preds = %do.end28
  %31 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %logging_level, align 4
  %and33 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body31.do.end79_crit_edge, label %do.end44, !prof !174

do.body31.do.end79_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79

do.end44:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %15, ptr noundef nonnull @.str.20, i32 noundef 1182) #12
  br label %do.end79

do.body53:                                        ; preds = %do.end28.do.body53_crit_edge, %do.end28.do.body53_crit_edge111
  %33 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %logging_level, align 4
  %and55 = and i32 %34, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body53.do.end79_crit_edge, label %do.end66, !prof !174

do.body53.do.end79_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79

do.end66:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %15, ptr noundef nonnull @.str.20, i32 noundef 1188) #12
  br label %do.end79

do.end79:                                         ; preds = %do.end66, %do.body53.do.end79_crit_edge, %do.end44, %do.body31.do.end79_crit_edge, %do.end28.do.end79_crit_edge, %if.end.do.end79_crit_edge
  %rc.1 = phi i32 [ 5, %if.end.do.end79_crit_edge ], [ %call30, %do.body53.do.end79_crit_edge ], [ %call30, %do.end66 ], [ 8, %do.body31.do.end79_crit_edge ], [ 8, %do.end44 ], [ %call30, %do.end28.do.end79_crit_edge ]
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %rc.1) #12
  br label %cleanup82

cleanup82:                                        ; preds = %do.end79, %if.then7.cleanup82_crit_edge, %lor.rhs.cleanup82_crit_edge, %lor.lhs.false.cleanup82_crit_edge, %entry.cleanup82_crit_edge
  %retval.1 = phi i32 [ %rc.1, %do.end79 ], [ 5, %lor.rhs.cleanup82_crit_edge ], [ 5, %lor.lhs.false.cleanup82_crit_edge ], [ 5, %entry.cleanup82_crit_edge ], [ 5, %if.then7.cleanup82_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmf_task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lun) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8001_abort_task(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  %lun = alloca %struct.scsi_lun, align 8
  %tmf_task = alloca %struct.pm8001_tmf_task, align 8
  %slow_task = alloca %struct.sas_task_slow, align 4
  %completion_reset = alloca %struct.completion, align 4
  %completion57 = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lun) #9
  %0 = ptrtoint ptr %lun to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %lun, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmf_task) #9
  %1 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %tmf_task, align 8, !annotation !173
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %slow_task) #9
  %2 = call ptr @memset(ptr %slow_task, i32 255, i32 108)
  %tobool.not = icmp eq ptr %task, null
  br i1 %tobool.not, label %entry.cleanup237_crit_edge, label %lor.lhs.false, !prof !184

entry.cleanup237_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup237

lor.lhs.false:                                    ; preds = %entry
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 11
  %3 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lldd_task, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup237_crit_edge, label %lor.rhs, !prof !184

lor.lhs.false.cleanup237_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup237

lor.rhs:                                          ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %lor.rhs.cleanup237_crit_edge, label %if.end, !prof !184

lor.rhs.cleanup237_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup237

if.end:                                           ; preds = %lor.rhs
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lldd_dev, align 128
  %port.i = getelementptr inbounds %struct.domain_device, ptr %6, i32 0, i32 8
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port.i, align 4
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %10, i32 0, i32 21
  %11 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ha.i, align 4
  %lldd_ha.i = getelementptr inbounds %struct.sas_ha_struct, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %lldd_ha.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lldd_ha.i, align 4
  %attached_phy = getelementptr inbounds %struct.pm8001_device, ptr %8, i32 0, i32 2
  %15 = ptrtoint ptr %attached_phy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %attached_phy, align 4
  %chip = getelementptr inbounds %struct.pm8001_hba_info, ptr %14, i32 0, i32 35
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %dispatch = getelementptr inbounds %struct.pm8001_chip_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dispatch, align 4
  %fatal_errors = getelementptr inbounds %struct.pm8001_dispatch, ptr %20, i32 0, i32 29
  %21 = ptrtoint ptr %fatal_errors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fatal_errors, align 4
  %call8 = tail call i32 %22(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup237_crit_edge

if.end.cleanup237_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup237

if.end11:                                         ; preds = %if.end
  %23 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lldd_task, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %do.end, label %do.body17

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %14, ptr noundef nonnull @.str.31, i32 noundef 1226, ptr noundef nonnull %task) #12
  br label %cleanup237

do.body17:                                        ; preds = %if.end11
  %ccb_tag.i = getelementptr inbounds %struct.pm8001_ccb_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ccb_tag.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ccb_tag.i, align 4
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 1
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #9
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 2
  %27 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %task_state_flags, align 4
  %and = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end29, label %if.then27

if.then27:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call21) #9
  br label %cleanup237

if.end29:                                         ; preds = %do.body17
  %or = or i32 %28, 4
  %29 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or, ptr %task_state_flags, align 4
  %slow_task31 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 13
  %30 = ptrtoint ptr %slow_task31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slow_task31, align 4
  %cmp32 = icmp eq ptr %31, null
  br i1 %cmp32, label %if.then34, label %if.end29.if.end36_crit_edge

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %completion = getelementptr inbounds %struct.sas_task_slow, ptr %slow_task, i32 0, i32 1
  %32 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.sas_task_slow, ptr %slow_task, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #9
  %33 = ptrtoint ptr %slow_task31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %slow_task, ptr %slow_task31, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end29.if.end36_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call21) #9
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 3
  %34 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %task_proto, align 4
  %and38 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %uldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 12
  %36 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %uldd_task, align 4
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device, align 4
  %lun41 = getelementptr inbounds %struct.scsi_device, ptr %39, i32 0, i32 18
  %40 = ptrtoint ptr %lun41 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %lun41, align 8
  call void @int_to_scsilun(i64 noundef %41, ptr noundef nonnull %lun) #9
  %42 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %tmf_task, align 8
  %tag_of_task_to_be_managed = getelementptr inbounds %struct.pm8001_tmf_task, ptr %tmf_task, i32 0, i32 1
  %43 = ptrtoint ptr %tag_of_task_to_be_managed to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %26, ptr %tag_of_task_to_be_managed, align 4
  %call43 = call fastcc i32 @pm8001_issue_ssp_tmf(ptr noundef nonnull %6, ptr noundef nonnull %lun, ptr noundef nonnull %tmf_task)
  %sas_device = getelementptr inbounds %struct.pm8001_device, ptr %8, i32 0, i32 1
  %44 = ptrtoint ptr %sas_device to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sas_device, align 4
  %call44 = call fastcc i32 @pm8001_exec_internal_task_abort(ptr noundef %14, ptr noundef %8, ptr noundef %45, i32 noundef 0, i32 noundef %26)
  br label %do.body206

if.else:                                          ; preds = %if.end36
  %46 = and i32 %35, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %if.else195, label %if.then52

if.then52:                                        ; preds = %if.else
  %chip_id = getelementptr inbounds %struct.pm8001_hba_info, ptr %14, i32 0, i32 34
  %48 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %49)
  %cmp53 = icmp eq i32 %49, 8
  br i1 %cmp53, label %if.then55, label %if.else191

if.then55:                                        ; preds = %if.then52
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion_reset) #9
  %50 = getelementptr inbounds i8, ptr %completion_reset, i32 4
  %51 = call ptr @memset(ptr %50, i32 255, i32 52)
  %52 = ptrtoint ptr %completion_reset to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %completion_reset, align 4
  %wait.i333 = getelementptr inbounds %struct.completion, ptr %completion_reset, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i333, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion57) #9
  %53 = getelementptr inbounds i8, ptr %completion57, i32 4
  %54 = call ptr @memset(ptr %53, i32 255, i32 52)
  %55 = ptrtoint ptr %completion57 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %completion57, align 4
  %wait.i334 = getelementptr inbounds %struct.completion, ptr %completion57, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i334, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #9
  %phy59 = getelementptr inbounds %struct.pm8001_hba_info, ptr %14, i32 0, i32 39
  %port = getelementptr %struct.pm8001_phy, ptr %phy59, i32 %16, i32 1
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %port, align 4
  %port_id61 = getelementptr inbounds %struct.pm8001_port, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %port_id61 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %port_id61, align 1
  %conv62 = zext i8 %59 to i32
  %setds_completion = getelementptr inbounds %struct.pm8001_device, ptr %8, i32 0, i32 5
  %60 = ptrtoint ptr %setds_completion to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %completion57, ptr %setds_completion, align 4
  %61 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %chip, align 4
  %dispatch64 = getelementptr inbounds %struct.pm8001_chip_info, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %dispatch64 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dispatch64, align 4
  %set_dev_state_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %64, i32 0, i32 25
  %65 = ptrtoint ptr %set_dev_state_req to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %set_dev_state_req, align 4
  %call65 = call i32 %66(ptr noundef %14, ptr noundef %8, i32 noundef 3) #9
  call void @wait_for_completion(ptr noundef nonnull %completion57) #9
  %67 = ptrtoint ptr %completion57 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %completion57, align 4
  %port_reset_status = getelementptr %struct.pm8001_phy, ptr %phy59, i32 %16, i32 15
  %68 = ptrtoint ptr %port_reset_status to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %port_reset_status, align 4
  %reset_success = getelementptr %struct.pm8001_phy, ptr %phy59, i32 %16, i32 16
  %69 = ptrtoint ptr %reset_success to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %reset_success, align 1
  %enable_completion = getelementptr %struct.pm8001_phy, ptr %phy59, i32 %16, i32 7
  %70 = ptrtoint ptr %enable_completion to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %completion57, ptr %enable_completion, align 4
  %reset_completion = getelementptr %struct.pm8001_phy, ptr %phy59, i32 %16, i32 14
  %71 = ptrtoint ptr %reset_completion to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %completion_reset, ptr %reset_completion, align 8
  %72 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chip, align 4
  %dispatch67 = getelementptr inbounds %struct.pm8001_chip_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %dispatch67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dispatch67, align 4
  %phy_ctl_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %75, i32 0, i32 19
  %76 = ptrtoint ptr %phy_ctl_req to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %phy_ctl_req, align 4
  %call68 = call i32 %77(ptr noundef %14, i32 noundef %16, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.body74, label %if.then70

if.then70:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %enable_completion to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %enable_completion, align 4
  %79 = ptrtoint ptr %reset_completion to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %reset_completion, align 8
  br label %cleanup.thread

do.body74:                                        ; preds = %if.then55
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %14, i32 0, i32 50
  %80 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %logging_level, align 4
  %and75 = and i32 %81, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %do.body74.do.end93_crit_edge, label %do.end86, !prof !174

do.body74.do.end93_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end93

do.end86:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %14, ptr noundef nonnull @.str.31, i32 noundef 1285) #12
  br label %do.end93

do.end93:                                         ; preds = %do.end86, %do.body74.do.end93_crit_edge
  %call94 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %completion57, i32 noundef 2000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %do.end93.if.then99_crit_edge, label %lor.lhs.false96

do.end93.if.then99_crit_edge:                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then99

lor.lhs.false96:                                  ; preds = %do.end93
  %82 = ptrtoint ptr %reset_success to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %reset_success, align 1, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool98.not = icmp eq i8 %83, 0
  br i1 %tobool98.not, label %lor.lhs.false96.if.then99_crit_edge, label %do.body103

lor.lhs.false96.if.then99_crit_edge:              ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then99

if.then99:                                        ; preds = %lor.lhs.false96.if.then99_crit_edge, %do.end93.if.then99_crit_edge
  %84 = ptrtoint ptr %enable_completion to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %enable_completion, align 4
  %85 = ptrtoint ptr %reset_completion to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %reset_completion, align 8
  br label %if.end172

do.body103:                                       ; preds = %lor.lhs.false96
  %86 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %logging_level, align 4
  %and105 = and i32 %87, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %do.body103.do.end123_crit_edge, label %do.end116, !prof !174

do.body103.do.end123_crit_edge:                   ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end123

do.end116:                                        ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #11
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %14, ptr noundef nonnull @.str.31, i32 noundef 1296) #12
  br label %do.end123

do.end123:                                        ; preds = %do.end116, %do.body103.do.end123_crit_edge
  %call124 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %completion_reset, i32 noundef 2000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.then126, label %do.end123.if.end128_crit_edge

do.end123.if.end128_crit_edge:                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end128

if.then126:                                       ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %reset_completion to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %reset_completion, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %do.end123.if.end128_crit_edge
  %89 = ptrtoint ptr %port_reset_status to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %port_reset_status, align 4, !range !175
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool130.not = icmp eq i8 %90, 0
  br i1 %tobool130.not, label %if.end128.if.end172_crit_edge, label %if.end155, !prof !174

if.end128.if.end172_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.end155:                                        ; preds = %if.end128
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1303, i32 noundef 9, ptr noundef null) #9
  %91 = ptrtoint ptr %port_reset_status to i32
  call void @__asan_load1_noabort(i32 %91)
  %.pr = load i8, ptr %port_reset_status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool164.not = icmp eq i8 %.pr, 0
  br i1 %tobool164.not, label %if.end155.if.end172_crit_edge, label %if.then168

if.end155.if.end172_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end172

if.then168:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @pm8001_dev_gone_notify(ptr noundef nonnull %6)
  %92 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %chip, align 4
  %dispatch170 = getelementptr inbounds %struct.pm8001_chip_info, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %dispatch170 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dispatch170, align 4
  %hw_event_ack_req = getelementptr inbounds %struct.pm8001_dispatch, ptr %95, i32 0, i32 30
  %96 = ptrtoint ptr %hw_event_ack_req to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw_event_ack_req, align 4
  call void %97(ptr noundef %14, i32 noundef 0, i32 noundef 7, i32 noundef %conv62, i32 noundef %16, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup.thread

if.end172:                                        ; preds = %if.end155.if.end172_crit_edge, %if.end128.if.end172_crit_edge, %if.then99
  %sas_device173 = getelementptr inbounds %struct.pm8001_device, ptr %8, i32 0, i32 1
  %98 = ptrtoint ptr %sas_device173 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sas_device173, align 4
  %call174 = call fastcc i32 @pm8001_exec_internal_task_abort(ptr noundef %14, ptr noundef %8, ptr noundef %99, i32 noundef 1, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.end177, label %if.end172.cleanup.thread_crit_edge

if.end172.cleanup.thread_crit_edge:               ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end177:                                        ; preds = %if.end172
  %100 = ptrtoint ptr %slow_task31 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %slow_task31, align 4
  %completion179 = getelementptr inbounds %struct.sas_task_slow, ptr %101, i32 0, i32 1
  %call180 = call i32 @wait_for_completion_timeout(ptr noundef %completion179, i32 noundef 2000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end177.cleanup.thread_crit_edge, label %cleanup

if.end177.cleanup.thread_crit_edge:               ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end177.cleanup.thread_crit_edge, %if.end172.cleanup.thread_crit_edge, %if.then168, %if.then70
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion57) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion_reset) #9
  br label %do.body206

cleanup:                                          ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %completion57 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %completion57, align 4
  %103 = ptrtoint ptr %setds_completion to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %completion57, ptr %setds_completion, align 4
  %104 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chip, align 4
  %dispatch186 = getelementptr inbounds %struct.pm8001_chip_info, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %dispatch186 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dispatch186, align 4
  %set_dev_state_req187 = getelementptr inbounds %struct.pm8001_dispatch, ptr %107, i32 0, i32 25
  %108 = ptrtoint ptr %set_dev_state_req187 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %set_dev_state_req187, align 4
  %call188 = call i32 %109(ptr noundef %14, ptr noundef %8, i32 noundef 1) #9
  call void @wait_for_completion(ptr noundef nonnull %completion57) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion57) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion_reset) #9
  br label %do.body206

if.else191:                                       ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  %sas_device192 = getelementptr inbounds %struct.pm8001_device, ptr %8, i32 0, i32 1
  %110 = ptrtoint ptr %sas_device192 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sas_device192, align 4
  %call193 = call fastcc i32 @pm8001_exec_internal_task_abort(ptr noundef %14, ptr noundef %8, ptr noundef %111, i32 noundef 0, i32 noundef %26)
  br label %do.body206

if.else195:                                       ; preds = %if.else
  %and197 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %if.else195.do.body206_crit_edge, label %if.then199

if.else195.do.body206_crit_edge:                  ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body206

if.then199:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #11
  %sas_device200 = getelementptr inbounds %struct.pm8001_device, ptr %8, i32 0, i32 1
  %112 = ptrtoint ptr %sas_device200 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sas_device200, align 4
  %call201 = call fastcc i32 @pm8001_exec_internal_task_abort(ptr noundef %14, ptr noundef %8, ptr noundef %113, i32 noundef 0, i32 noundef %26)
  br label %do.body206

do.body206:                                       ; preds = %if.then199, %if.else195.do.body206_crit_edge, %if.else191, %cleanup, %cleanup.thread, %if.then40
  %rc.0 = phi i32 [ %call43, %if.then40 ], [ %call201, %if.then199 ], [ 5, %if.else195.do.body206_crit_edge ], [ 5, %cleanup.thread ], [ 0, %cleanup ], [ 0, %if.else191 ]
  %call214 = call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #9
  %114 = ptrtoint ptr %slow_task31 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %slow_task31, align 4
  %cmp220 = icmp eq ptr %115, %slow_task
  br i1 %cmp220, label %if.then222, label %do.body206.if.end224_crit_edge

do.body206.if.end224_crit_edge:                   ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end224

if.then222:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %slow_task31 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %slow_task31, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.then222, %do.body206.if.end224_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call214) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp226.not = icmp eq i32 %rc.0, 0
  br i1 %cmp226.not, label %if.end224.cleanup237_crit_edge, label %do.end231

if.end224.cleanup237_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup237

do.end231:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #11
  %call235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %14, ptr noundef nonnull @.str.31, i32 noundef 1353, i32 noundef %rc.0) #12
  br label %cleanup237

cleanup237:                                       ; preds = %do.end231, %if.end224.cleanup237_crit_edge, %if.then27, %do.end, %if.end.cleanup237_crit_edge, %lor.rhs.cleanup237_crit_edge, %lor.lhs.false.cleanup237_crit_edge, %entry.cleanup237_crit_edge
  %retval.0 = phi i32 [ 5, %do.end ], [ 0, %if.then27 ], [ 5, %lor.rhs.cleanup237_crit_edge ], [ 5, %if.end.cleanup237_crit_edge ], [ %rc.0, %do.end231 ], [ 0, %if.end224.cleanup237_crit_edge ], [ 5, %lor.lhs.false.cleanup237_crit_edge ], [ 5, %entry.cleanup237_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %slow_task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmf_task) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lun) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8001_abort_task_set(ptr noundef %dev, ptr nocapture noundef readonly %lun) local_unnamed_addr #0 align 64 {
entry:
  %tmf_task = alloca %struct.pm8001_tmf_task, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmf_task) #9
  %0 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 216172782113783807, ptr %tmf_task, align 8, !annotation !173
  %call = call fastcc i32 @pm8001_issue_ssp_tmf(ptr noundef %dev, ptr noundef %lun, ptr noundef nonnull %tmf_task)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmf_task) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8001_clear_aca(ptr noundef %dev, ptr nocapture noundef readonly %lun) local_unnamed_addr #0 align 64 {
entry:
  %tmf_task = alloca %struct.pm8001_tmf_task, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmf_task) #9
  %0 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 4683743612465315839, ptr %tmf_task, align 8, !annotation !173
  %call = call fastcc i32 @pm8001_issue_ssp_tmf(ptr noundef %dev, ptr noundef %lun, ptr noundef nonnull %tmf_task)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmf_task) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm8001_clear_task_set(ptr noundef %dev, ptr nocapture noundef readonly %lun) local_unnamed_addr #0 align 64 {
entry:
  %tmf_task = alloca %struct.pm8001_tmf_task, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmf_task) #9
  %0 = ptrtoint ptr %tmf_task to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 360287970189639679, ptr %tmf_task, align 8, !annotation !173
  %port.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port.i, align 4
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %2, i32 0, i32 21
  %3 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ha.i, align 4
  %lldd_ha.i = getelementptr inbounds %struct.sas_ha_struct, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %lldd_ha.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lldd_ha.i, align 4
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %6, i32 0, i32 50
  %7 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %logging_level, align 4
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !174

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %9 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lldd_dev, align 128
  %device_id = getelementptr inbounds %struct.pm8001_device, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %device_id, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %6, ptr noundef nonnull @.str.42, i32 noundef 1380, i32 noundef %12) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = call fastcc i32 @pm8001_issue_ssp_tmf(ptr noundef %dev, ptr noundef %lun, ptr noundef nonnull %tmf_task)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmf_task) #9
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm8001_port_formed(ptr nocapture noundef readonly %sas_phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ha = getelementptr inbounds %struct.asd_sas_phy, ptr %sas_phy, i32 0, i32 23
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %port = getelementptr inbounds %struct.asd_sas_phy, ptr %sas_phy, i32 0, i32 22
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  %logging_level = getelementptr inbounds %struct.pm8001_hba_info, ptr %3, i32 0, i32 50
  %6 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %logging_level, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !174

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %3, ptr noundef nonnull @.str.44, i32 noundef 1394) #12
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lldd_phy = getelementptr inbounds %struct.asd_sas_phy, ptr %sas_phy, i32 0, i32 24
  %8 = ptrtoint ptr %lldd_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lldd_phy, align 4
  %port2 = getelementptr inbounds %struct.pm8001_phy, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port2, align 4
  %lldd_port = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 23
  %12 = ptrtoint ptr %lldd_port to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %lldd_port, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pm80xx_request_complete(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_alloc_slow_task(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm8001_tmf_timedout(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %task1 = getelementptr inbounds %struct.sas_task_slow, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task1, align 4
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #9
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %task_state_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %3, 4
  %4 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %task_state_flags, align 4
  %slow_task = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %slow_task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slow_task, align 4
  %completion = getelementptr inbounds %struct.sas_task_slow, ptr %6, i32 0, i32 1
  tail call void @complete(ptr noundef %completion) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_free_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162}
!llvm.named.register.sp = !{!163}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 251, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pm8001_phy_control._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pm8001_phy_control._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 609, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pm8001_find_dev._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @pm8001_find_dev._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1035, i32 4}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @pm8001_I_T_nexus_reset._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @pm8001_I_T_nexus_reset._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1045, i32 4}
!18 = !{ptr @pm8001_I_T_nexus_reset._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @pm8001_I_T_nexus_reset._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1053, i32 2}
!22 = !{ptr @pm8001_I_T_nexus_reset._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @pm8001_I_T_nexus_reset._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1077, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pm8001_I_T_nexus_event_handler._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @pm8001_I_T_nexus_event_handler._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @pm8001_I_T_nexus_event_handler._entry.15, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1116, i32 2}
!31 = !{ptr @pm8001_I_T_nexus_event_handler._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1146, i32 2}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pm8001_lu_reset._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @pm8001_lu_reset._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1173, i32 3}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pm8001_query_task._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @pm8001_query_task._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1181, i32 4}
!44 = !{ptr @pm8001_query_task._entry.21, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pm8001_query_task._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1187, i32 4}
!48 = !{ptr @pm8001_query_task._entry.24, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pm8001_query_task._entry_ptr.26, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1192, i32 2}
!52 = !{ptr @pm8001_query_task._entry.27, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pm8001_query_task._entry_ptr.29, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1226, i32 3}
!56 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @pm8001_abort_task._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @pm8001_abort_task._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1284, i32 4}
!61 = !{ptr @pm8001_abort_task._entry.32, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @pm8001_abort_task._entry_ptr.34, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1295, i32 5}
!65 = !{ptr @pm8001_abort_task._entry.35, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @pm8001_abort_task._entry_ptr.37, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1353, i32 3}
!69 = !{ptr @pm8001_abort_task._entry.38, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @pm8001_abort_task._entry_ptr.40, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1379, i32 2}
!73 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @pm8001_clear_task_set._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @pm8001_clear_task_set._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 1394, i32 3}
!78 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @pm8001_port_formed._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @pm8001_port_formed._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @init_completion.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../include/linux/completion.h", i32 87, i32 2}
!83 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 410, i32 2}
!86 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @pm8001_task_exec._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @pm8001_task_exec._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 478, i32 4}
!91 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @pm8001_task_exec._entry.48, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @pm8001_task_exec._entry_ptr.52, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 485, i32 4}
!97 = !{ptr @pm8001_task_exec._entry.53, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @pm8001_task_exec._entry_ptr.55, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 500, i32 2}
!101 = !{ptr @pm8001_task_exec._entry.56, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @pm8001_task_exec._entry_ptr.58, !100, !"_entry_ptr", i1 false, i1 false}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../drivers/scsi/pm8001/pm80xx_tracepoints.h", i32 48, i32 1}
!105 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!106 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!107 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!110 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.62, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 670, i32 4}
!113 = !{ptr @.str.63, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @pm8001_dev_found_notify._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @pm8001_dev_found_notify._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 683, i32 2}
!118 = !{ptr @pm8001_dev_found_notify._entry.64, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @pm8001_dev_found_notify._entry_ptr.66, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 589, i32 3}
!122 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @pm8001_alloc_dev._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @pm8001_alloc_dev._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.69, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 900, i32 3}
!127 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @pm8001_dev_gone_notify._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @pm8001_dev_gone_notify._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 913, i32 3}
!132 = !{ptr @pm8001_dev_gone_notify._entry.71, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @pm8001_dev_gone_notify._entry_ptr.73, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 853, i32 4}
!136 = !{ptr @.str.75, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @pm8001_exec_internal_task_abort._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @pm8001_exec_internal_task_abort._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.77, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 860, i32 4}
!141 = !{ptr @pm8001_exec_internal_task_abort._entry.76, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @pm8001_exec_internal_task_abort._entry_ptr.78, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.80, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 870, i32 4}
!145 = !{ptr @pm8001_exec_internal_task_abort._entry.79, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @pm8001_exec_internal_task_abort._entry_ptr.81, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.82, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 759, i32 4}
!149 = !{ptr @pm8001_exec_internal_tmf_task._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @pm8001_exec_internal_tmf_task._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.84, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 774, i32 4}
!153 = !{ptr @pm8001_exec_internal_tmf_task._entry.83, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @pm8001_exec_internal_tmf_task._entry_ptr.85, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.87, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 798, i32 4}
!157 = !{ptr @pm8001_exec_internal_tmf_task._entry.86, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @pm8001_exec_internal_tmf_task._entry_ptr.88, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.90, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/pm8001/pm8001_sas.c", i32 802, i32 4}
!161 = !{ptr @pm8001_exec_internal_tmf_task._entry.89, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @pm8001_exec_internal_tmf_task._entry_ptr.91, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{!"sp"}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{!"auto-init"}
!174 = !{!"branch_weights", i32 2000, i32 1}
!175 = !{i8 0, i8 2}
!176 = !{i64 2148619630, i64 2148619656, i64 2148619685, i64 2148619719, i64 2148619750, i64 2148619773}
!177 = !{i64 2148622095, i64 2148622121, i64 2148622150, i64 2148622184, i64 2148622215, i64 2148622238}
!178 = !{i64 2148240356, i64 2148240361, i64 2148240374, i64 2148240418, i64 2148240452, i64 2148240473}
!179 = !{i64 2155960200}
!180 = !{i64 2155960517}
!181 = !{i64 2149965060}
!182 = !{i64 2149966096}
!183 = !{i64 2156049312}
!184 = !{!"branch_weights", i32 1, i32 2000}
