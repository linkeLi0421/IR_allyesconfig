; ModuleID = '/llk/IR_all_yes/drivers/scsi/mpt3sas/mpt3sas_transport.c_pt.bc'
source_filename = "../drivers/scsi/mpt3sas/mpt3sas_transport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sas_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.MPT3SAS_ADAPTER = type { %struct.list_head, ptr, i8, i32, [32 x i8], [24 x i8], [64 x i8], ptr, ptr, i32, i32, i32, i8, i32, i8, [20 x i8], ptr, %struct.delayed_work, [20 x i8], ptr, %struct.spinlock, %struct.list_head, ptr, i8, i32, i8, i16, i8, i8, %struct.mutex, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i16, ptr, i16, ptr, i32, ptr, i32, i8, i32, i32, %struct.atomic64_t, %struct.atomic64_t, i8, i16, i8, i8, i32, i32, i32, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, ptr, ptr, ptr, ptr, i16, i16, ptr, ptr, ptr, [4 x i32], i32, ptr, [4 x i32], i8, i8, i16, i16, i16, i16, i8, %struct.mpt3sas_facts, %struct.mpt3sas_facts, ptr, %struct._MPI2_CONFIG_PAGE_MAN_0, %struct.Mpi2ManufacturingPage10_t, %struct.Mpi2ManufacturingPage11_t, %struct._MPI2_CONFIG_PAGE_BIOS_2, %struct._MPI2_CONFIG_PAGE_BIOS_3, %struct._MPI2_CONFIG_PAGE_IOC_8, %struct._MPI2_CONFIG_PAGE_IO_UNIT_0, %struct._MPI2_CONFIG_PAGE_IO_UNIT_1, %struct._MPI2_CONFIG_PAGE_IO_UNIT_8, %struct._MPI2_CONFIG_PAGE_IOC_1, %struct._boot_device, %struct._boot_device, %struct._boot_device, %struct._sas_node, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i8, i16, i32, i32, ptr, ptr, i16, ptr, i16, i16, ptr, i32, ptr, i16, i16, i16, i16, ptr, i32, i32, ptr, %struct.spinlock, i32, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.list_head, ptr, i32, i16, i16, i16, i32, i16, i16, i16, ptr, i32, i16, ptr, %struct.list_head, i16, ptr, i32, i16, ptr, %struct.list_head, ptr, i32, ptr, i16, ptr, i32, i32, i32, ptr, i16, ptr, i32, ptr, i32, i16, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, %struct.list_head, i8, i8, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, %struct.mutex, [3 x ptr], [3 x i32], [3 x i32], [3 x i8], [3 x i32], [3 x [23 x i32]], [3 x i32], i32, i32, %struct.htb_rel_query, i8, i8, i8, i8, i8, i8, %struct.spinlock, i8, i8, ptr, %struct.SL_WH_MASTER_TRIGGER_T, %struct.SL_WH_EVENT_TRIGGERS_T, %struct.SL_WH_SCSI_TRIGGERS_T, %struct.SL_WH_MPI_TRIGGERS_T, i8, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct._internal_cmd = type { %struct.mutex, %struct.completion, ptr, ptr, i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mpt3sas_facts = type { i16, i16, i8, i8, i8, i16, i16, i32, i8, i8, i8, i8, i16, i16, i32, %union.mpi3_version_union, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i8 }
%union.mpi3_version_union = type { i32 }
%struct._MPI2_CONFIG_PAGE_MAN_0 = type { %struct._MPI2_CONFIG_PAGE_HEADER, [16 x i8], [8 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct._MPI2_CONFIG_PAGE_HEADER = type { i8, i8, i8, i8 }
%struct.Mpi2ManufacturingPage10_t = type { %struct._MPI2_CONFIG_PAGE_HEADER, i8, i8, i16, i32, i32, i32, i32, i32, i32, [18 x i32] }
%struct.Mpi2ManufacturingPage11_t = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32, i8, i8, i8, i8, [8 x i32], i16, i8, i8, [7 x i32], i8, i8, i8, i8, i16, i16, i8, i8, i16, i32 }
%struct._MPI2_CONFIG_PAGE_BIOS_2 = type <{ %struct._MPI2_CONFIG_PAGE_HEADER, i32, i32, i32, i32, i32, i32, i8, i8, i16, %union._MPI2_MPI2_BIOSPAGE2_BOOT_DEVICE, i8, i8, i16, %union._MPI2_MPI2_BIOSPAGE2_BOOT_DEVICE, i8, i8, i16, %union._MPI2_MPI2_BIOSPAGE2_BOOT_DEVICE }>
%union._MPI2_MPI2_BIOSPAGE2_BOOT_DEVICE = type { %struct._MPI2_BOOT_DEVICE_SAS_WWID }
%struct._MPI2_BOOT_DEVICE_SAS_WWID = type { i64, [8 x i8], i32, i32 }
%struct._MPI2_CONFIG_PAGE_BIOS_3 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32, i32, [4 x %struct._MPI2_ADAPTER_INFO], i32, [4 x %struct._MPI2_ADAPTER_ORDER_AUX] }
%struct._MPI2_ADAPTER_INFO = type { i8, i8, i16 }
%struct._MPI2_ADAPTER_ORDER_AUX = type { i64, i32, i32 }
%struct._MPI2_CONFIG_PAGE_IOC_8 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct._MPI2_CONFIG_PAGE_IO_UNIT_0 = type <{ %struct._MPI2_CONFIG_PAGE_HEADER, i64, %union._MPI2_VERSION_UNION, %union._MPI2_VERSION_UNION }>
%union._MPI2_VERSION_UNION = type { i32 }
%struct._MPI2_CONFIG_PAGE_IO_UNIT_1 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32 }
%struct._MPI2_CONFIG_PAGE_IO_UNIT_8 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32, i32, i8, i8, i16, [1 x %struct._MPI2_IOUNIT8_SENSOR] }
%struct._MPI2_IOUNIT8_SENSOR = type { i16, i16, [4 x i16], i32, i32, i32 }
%struct._MPI2_CONFIG_PAGE_IOC_1 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32, i32, i8, i8, i8, i8, i32, i32 }
%struct._boot_device = type { i32, ptr }
%struct._sas_node = type { %struct.list_head, ptr, i8, i64, i16, i64, i16, i64, i8, i8, ptr, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.htb_rel_query = type { i16, i16, i32, [2 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.SL_WH_MASTER_TRIGGER_T = type { i32 }
%struct.SL_WH_EVENT_TRIGGERS_T = type { i32, [20 x %struct.SL_WH_EVENT_TRIGGER_T] }
%struct.SL_WH_EVENT_TRIGGER_T = type { i16, i16 }
%struct.SL_WH_SCSI_TRIGGERS_T = type { i32, [20 x %struct.SL_WH_SCSI_TRIGGER_T] }
%struct.SL_WH_SCSI_TRIGGER_T = type { i8, i8, i8, i8 }
%struct.SL_WH_MPI_TRIGGERS_T = type { i32, [20 x %struct.SL_WH_MPI_TRIGGER_T] }
%struct.SL_WH_MPI_TRIGGER_T = type { i16, i16, i32 }
%struct.list_head = type { ptr, ptr }
%struct._MPI2_DEFAULT_REPLY = type { i16, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i32 }
%struct._sas_phy = type { %struct.list_head, %struct.sas_identify, %struct.sas_identify, ptr, i8, i16, i16, i8, i8, ptr }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct._sas_port = type { %struct.list_head, i8, %struct.sas_identify, ptr, ptr, ptr, %struct.list_head }
%struct.hba_port = type { %struct.list_head, i64, i32, i8, i8, i32, %struct.list_head }
%struct._sas_device = type { %struct.list_head, ptr, i64, i64, i16, i64, i16, i64, i16, i64, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], %struct.kref, i8, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.virtual_phy = type { %struct.list_head, i64, i32, i8 }
%struct.sas_rphy = type { %struct.device, %struct.sas_identify, %struct.list_head, ptr, i32 }
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
%struct._MPI2_CONFIG_PAGE_SAS_DEV_0 = type <{ %struct._MPI2_CONFIG_EXTENDED_PAGE_HEADER, i16, i16, i64, i16, i8, i8, i16, i8, i8, i32, i16, i8, i8, i64, i8, i8, i8, i8, [4 x i32], i32 }>
%struct._MPI2_CONFIG_EXTENDED_PAGE_HEADER = type { i8, i8, i8, i8, i16, i8, i8 }
%struct._MPI2_CONFIG_REPLY = type { i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i32, %struct._MPI2_CONFIG_PAGE_HEADER }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }
%struct.rep_manu_request = type { i8, i8, i8, i8 }
%struct._MPI2_SMP_PASSTHROUGH_REQUEST = type { i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i32, i64, i32, i32, %union._MPI2_SIMPLE_SGE_UNION }
%union._MPI2_SIMPLE_SGE_UNION = type { %union._MPI2_IEEE_SGE_SIMPLE_UNION }
%union._MPI2_IEEE_SGE_SIMPLE_UNION = type { %struct._MPI2_IEEE_SGE_SIMPLE64 }
%struct._MPI2_IEEE_SGE_SIMPLE64 = type { i64, i32, i16, i8, i8 }
%struct._MPI2_SMP_PASSTHROUGH_REPLY = type { i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i8, i8, i16, i32, i32, [4 x i8] }
%struct.sas_expander_device = type { i32, i32, [9 x i8], [17 x i8], [5 x i8], [9 x i8], i16, i8, %struct.sas_rphy }
%struct.sas_phy = type { %struct.device, i32, i32, %struct.sas_identify, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr }
%struct._MPI2_CONFIG_PAGE_SAS_PHY_1 = type { %struct._MPI2_CONFIG_EXTENDED_PAGE_HEADER, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.phy_error_log_request = type { i8, i8, i8, i8, [5 x i8], i8, [2 x i8] }
%struct._MPI2_SAS_IOUNIT_CONTROL_REPLY = type { i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i32 }
%struct._MPI2_SAS_IOUNIT_CONTROL_REQUEST = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i8, i16, i64, i32, i32, i32 }>
%struct._MPI2_CONFIG_PAGE_SASIOUNIT_0 = type { %struct._MPI2_CONFIG_EXTENDED_PAGE_HEADER, i32, i8, i8, i16, [1 x %struct._MPI2_SAS_IO_UNIT0_PHY_DATA] }
%struct._MPI2_SAS_IO_UNIT0_PHY_DATA = type { i8, i8, i8, i8, i32, i16, i16, i32, i32 }
%struct._MPI2_CONFIG_PAGE_SASIOUNIT_1 = type { %struct._MPI2_CONFIG_EXTENDED_PAGE_HEADER, i16, i16, i16, i16, i8, i8, i8, i8, [1 x %struct._MPI2_SAS_IO_UNIT1_PHY_DATA] }
%struct._MPI2_SAS_IO_UNIT1_PHY_DATA = type { i8, i8, i8, i8, i32, i16, i16 }
%struct._MPI2_CONFIG_PAGE_SAS_PHY_0 = type { %struct._MPI2_CONFIG_EXTENDED_PAGE_HEADER, i16, i16, i16, i8, i8, i32, i8, i8, i8, i8, i32, i8, i8, i16 }
%struct.sas_phy_linkrates = type { i32, i32 }
%struct.bsg_job = type { ptr, %struct.kref, i32, ptr, ptr, i32, i32, %struct.bsg_buffer, %struct.bsg_buffer, i32, i32, ptr, ptr, ptr }
%struct.bsg_buffer = type { i32, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.phy_control_request = type { i8, i8, i8, i8, i16, [3 x i8], i8, i8, [13 x i8], i64, i8, i8, [6 x i8] }

@mpt3sas_transport_port_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: failure at %s:%d/%s()!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mpt3sas_transport_port_add\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/scsi/mpt3sas/mpt3sas_transport.c\00", [55 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_add._entry_ptr = internal global ptr @mpt3sas_transport_port_add._entry, section ".printk_index", align 4
@mpt3sas_transport_port_add._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_add._entry_ptr.4 = internal global ptr @mpt3sas_transport_port_add._entry.3, section ".printk_index", align 4
@mpt3sas_transport_port_add._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s: %s: Could not find parent sas_address(0x%016llx)!\0A\00", [39 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_add._entry_ptr.7 = internal global ptr @mpt3sas_transport_port_add._entry.5, section ".printk_index", align 4
@mpt3sas_transport_port_add._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_add._entry_ptr.9 = internal global ptr @mpt3sas_transport_port_add._entry.8, section ".printk_index", align 4
@mpt3sas_transport_port_add._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_add._entry_ptr.11 = internal global ptr @mpt3sas_transport_port_add._entry.10, section ".printk_index", align 4
@mpt3sas_transport_port_add._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_add._entry_ptr.13 = internal global ptr @mpt3sas_transport_port_add._entry.12, section ".printk_index", align 4
@mpt3sas_transport_port_add._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_add._entry_ptr.15 = internal global ptr @mpt3sas_transport_port_add._entry.14, section ".printk_index", align 4
@mpt3sas_transport_port_add._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_add._entry_ptr.17 = internal global ptr @mpt3sas_transport_port_add._entry.16, section ".printk_index", align 4
@mpt3sas_transport_port_add._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_add._entry_ptr.19 = internal global ptr @mpt3sas_transport_port_add._entry.18, section ".printk_index", align 4
@mpt3sas_transport_port_add._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_add._entry_ptr.21 = internal global ptr @mpt3sas_transport_port_add._entry.20, section ".printk_index", align 4
@mpt3sas_transport_port_add._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 801, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"add: handle(0x%04x), sas_addr(0x%016llx), phy(%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_add._entry_ptr.26 = internal global ptr @mpt3sas_transport_port_add._entry.22, section ".printk_index", align 4
@mpt3sas_transport_port_add._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_add._entry_ptr.28 = internal global ptr @mpt3sas_transport_port_add._entry.27, section ".printk_index", align 4
@mpt3sas_transport_port_add._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.1, ptr @.str.2, i32 841, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"add: handle(0x%04x), sas_addr(0x%016llx)\0A\00", [54 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_add._entry_ptr.31 = internal global ptr @mpt3sas_transport_port_add._entry.29, section ".printk_index", align 4
@mpt3sas_transport_port_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016%s: remove vphy entry: %p of port:%p,from %d port's vphys list\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mpt3sas_transport_port_remove\00", [34 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_remove._entry_ptr = internal global ptr @mpt3sas_transport_port_remove._entry, section ".printk_index", align 4
@mpt3sas_transport_port_remove._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016%s: remove hba_port entry: %p port: %d from hba_port list\0A\00", [35 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_remove._entry_ptr.36 = internal global ptr @mpt3sas_transport_port_remove._entry.34, section ".printk_index", align 4
@mpt3sas_transport_port_remove._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016%s: clearing sas_address from hba_port entry: %p port: %d from hba_port list\0A\00", [48 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_remove._entry_ptr.39 = internal global ptr @mpt3sas_transport_port_remove._entry.37, section ".printk_index", align 4
@mpt3sas_transport_port_remove._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.2, i32 986, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"remove: sas_addr(0x%016llx), phy(%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_remove._entry_ptr.42 = internal global ptr @mpt3sas_transport_port_remove._entry.40, section ".printk_index", align 4
@mpt3sas_transport_port_remove._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.2, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: %s: removed: sas_addr(0x%016llx)\0A\00", [56 x i8] zeroinitializer }, align 32
@mpt3sas_transport_port_remove._entry_ptr.45 = internal global ptr @mpt3sas_transport_port_remove._entry.43, section ".printk_index", align 4
@mpt3sas_transport_add_host_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.46, ptr @.str.2, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mpt3sas_transport_add_host_phy\00", [33 x i8] zeroinitializer }, align 32
@mpt3sas_transport_add_host_phy._entry_ptr = internal global ptr @mpt3sas_transport_add_host_phy._entry, section ".printk_index", align 4
@mpt3sas_transport_add_host_phy._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.46, ptr @.str.2, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_add_host_phy._entry_ptr.48 = internal global ptr @mpt3sas_transport_add_host_phy._entry.47, section ".printk_index", align 4
@mpt3sas_transport_add_host_phy._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.46, ptr @.str.2, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_add_host_phy._entry_ptr.50 = internal global ptr @mpt3sas_transport_add_host_phy._entry.49, section ".printk_index", align 4
@mpt3sas_transport_add_host_phy._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.46, ptr @.str.2, i32 1063, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"add: handle(0x%04x), sas_addr(0x%016llx)\0A\09attached_handle(0x%04x), sas_addr(0x%016llx)\0A\00", [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_add_host_phy._entry_ptr.53 = internal global ptr @mpt3sas_transport_add_host_phy._entry.51, section ".printk_index", align 4
@mpt3sas_transport_add_expander_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.54, ptr @.str.2, i32 1090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mpt3sas_transport_add_expander_phy\00", [61 x i8] zeroinitializer }, align 32
@mpt3sas_transport_add_expander_phy._entry_ptr = internal global ptr @mpt3sas_transport_add_expander_phy._entry, section ".printk_index", align 4
@mpt3sas_transport_add_expander_phy._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.54, ptr @.str.2, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_add_expander_phy._entry_ptr.56 = internal global ptr @mpt3sas_transport_add_expander_phy._entry.55, section ".printk_index", align 4
@mpt3sas_transport_add_expander_phy._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.54, ptr @.str.2, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_add_expander_phy._entry_ptr.58 = internal global ptr @mpt3sas_transport_add_expander_phy._entry.57, section ".printk_index", align 4
@mpt3sas_transport_add_expander_phy._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.54, ptr @.str.2, i32 1134, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_transport_add_expander_phy._entry_ptr.60 = internal global ptr @mpt3sas_transport_add_expander_phy._entry.59, section ".printk_index", align 4
@mpt3sas_transport_update_links._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1205, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"refresh: parent sas_addr(0x%016llx),\0A\09link_rate(0x%02x), phy(%d)\0A\09attached_handle(0x%04x), sas_addr(0x%016llx)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mpt3sas_transport_update_links\00", [33 x i8] zeroinitializer }, align 32
@mpt3sas_transport_update_links._entry_ptr = internal global ptr @mpt3sas_transport_update_links._entry, section ".printk_index", align 4
@mpt3sas_transport_functions = dso_local global { %struct.sas_function_template, [60 x i8] } { %struct.sas_function_template { ptr @_transport_get_linkerrors, ptr @_transport_get_enclosure_identifier, ptr @_transport_get_bay_identifier, ptr @_transport_phy_reset, ptr @_transport_phy_enable, ptr null, ptr null, ptr @_transport_phy_speed, ptr @_transport_smp_handler }, [60 x i8] zeroinitializer }, align 32
@mpt3sas_transport_template = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@_transport_add_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 559, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"add: sas_addr(0x%016llx), phy(%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_transport_add_phy\00", [45 x i8] zeroinitializer }, align 32
@_transport_add_phy._entry_ptr = internal global ptr @_transport_add_phy._entry, section ".printk_index", align 4
@_transport_delete_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 511, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"remove: sas_addr(0x%016llx)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_transport_delete_port\00", [41 x i8] zeroinitializer }, align 32
@_transport_delete_port._entry_ptr = internal global ptr @_transport_delete_port._entry, section ".printk_index", align 4
@_transport_delete_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.67, ptr @.str.2, i32 537, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_transport_delete_phy\00", [42 x i8] zeroinitializer }, align 32
@_transport_delete_phy._entry_ptr = internal global ptr @_transport_delete_phy._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_transport_set_identify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: %s: host reset in progress!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_transport_set_identify\00", [40 x i8] zeroinitializer }, align 32
@_transport_set_identify._entry_ptr = internal global ptr @_transport_set_identify._entry, section ".printk_index", align 4
@_transport_set_identify._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.69, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_set_identify._entry_ptr.71 = internal global ptr @_transport_set_identify._entry.70, section ".printk_index", align 4
@_transport_set_identify._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.69, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s: handle(0x%04x), ioc_status(0x%04x) failure at %s:%d/%s()!\0A\00", [63 x i8] zeroinitializer }, align 32
@_transport_set_identify._entry_ptr.74 = internal global ptr @_transport_set_identify._entry.72, section ".printk_index", align 4
@_transport_expander_report_manufacture._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.75, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"_transport_expander_report_manufacture\00", [57 x i8] zeroinitializer }, align 32
@_transport_expander_report_manufacture._entry_ptr = internal global ptr @_transport_expander_report_manufacture._entry, section ".printk_index", align 4
@_transport_expander_report_manufacture._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: %s: transport_cmds in use\0A\00", [63 x i8] zeroinitializer }, align 32
@_transport_expander_report_manufacture._entry_ptr.78 = internal global ptr @_transport_expander_report_manufacture._entry.76, section ".printk_index", align 4
@_transport_expander_report_manufacture._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: %s: failed obtaining a smid\0A\00", [61 x i8] zeroinitializer }, align 32
@_transport_expander_report_manufacture._entry_ptr.81 = internal global ptr @_transport_expander_report_manufacture._entry.79, section ".printk_index", align 4
@_transport_expander_report_manufacture._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013failure at %s:%d/%s()!\0A\00", [38 x i8] zeroinitializer }, align 32
@_transport_expander_report_manufacture._entry_ptr.84 = internal global ptr @_transport_expander_report_manufacture._entry.82, section ".printk_index", align 4
@_transport_expander_report_manufacture._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s: report_manufacture - send to sas_addr(0x%016llx)\0A\00", [40 x i8] zeroinitializer }, align 32
@_transport_expander_report_manufacture._entry_ptr.87 = internal global ptr @_transport_expander_report_manufacture._entry.85, section ".printk_index", align 4
@_transport_expander_report_manufacture._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.75, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s: %s: timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@_transport_expander_report_manufacture._entry_ptr.90 = internal global ptr @_transport_expander_report_manufacture._entry.88, section ".printk_index", align 4
@_transport_expander_report_manufacture._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.75, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: report_manufacture - complete\0A\00", [59 x i8] zeroinitializer }, align 32
@_transport_expander_report_manufacture._entry_ptr.93 = internal global ptr @_transport_expander_report_manufacture._entry.91, section ".printk_index", align 4
@_transport_expander_report_manufacture._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.75, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: report_manufacture - reply data transfer size(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@_transport_expander_report_manufacture._entry_ptr.96 = internal global ptr @_transport_expander_report_manufacture._entry.94, section ".printk_index", align 4
@_transport_expander_report_manufacture._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.75, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: report_manufacture - no reply\0A\00", [59 x i8] zeroinitializer }, align 32
@_transport_expander_report_manufacture._entry_ptr.99 = internal global ptr @_transport_expander_report_manufacture._entry.97, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@_debug_dump_mf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.103, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\016mf:\0A\09\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_debug_dump_mf\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/scsi/mpt3sas/mpt3sas_debug.h\00", [59 x i8] zeroinitializer }, align 32
@_debug_dump_mf._entry_ptr = internal global ptr @_debug_dump_mf._entry, section ".printk_index", align 4
@_debug_dump_mf._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.102, ptr @.str.103, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016\0A\09\00", [27 x i8] zeroinitializer }, align 32
@_debug_dump_mf._entry_ptr.106 = internal global ptr @_debug_dump_mf._entry.104, section ".printk_index", align 4
@_debug_dump_mf._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.102, ptr @.str.103, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\016%08x \00", [24 x i8] zeroinitializer }, align 32
@_debug_dump_mf._entry_ptr.109 = internal global ptr @_debug_dump_mf._entry.107, section ".printk_index", align 4
@_debug_dump_mf._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.102, ptr @.str.103, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@_debug_dump_mf._entry_ptr.112 = internal global ptr @_debug_dump_mf._entry.110, section ".printk_index", align 4
@_transport_get_linkerrors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.113, ptr @.str.2, i32 1433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_transport_get_linkerrors\00", [38 x i8] zeroinitializer }, align 32
@_transport_get_linkerrors._entry_ptr = internal global ptr @_transport_get_linkerrors._entry, section ".printk_index", align 4
@_transport_get_linkerrors._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.2, i32 1441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s: phy(%d), ioc_status (0x%04x), loginfo(0x%08x)\0A\00", [43 x i8] zeroinitializer }, align 32
@_transport_get_linkerrors._entry_ptr.116 = internal global ptr @_transport_get_linkerrors._entry.114, section ".printk_index", align 4
@_transport_get_expander_phy_error_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.117, ptr @.str.2, i32 1274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"_transport_get_expander_phy_error_log\00", [58 x i8] zeroinitializer }, align 32
@_transport_get_expander_phy_error_log._entry_ptr = internal global ptr @_transport_get_expander_phy_error_log._entry, section ".printk_index", align 4
@_transport_get_expander_phy_error_log._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.117, ptr @.str.2, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_get_expander_phy_error_log._entry_ptr.119 = internal global ptr @_transport_get_expander_phy_error_log._entry.118, section ".printk_index", align 4
@_transport_get_expander_phy_error_log._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.117, ptr @.str.2, i32 1293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_get_expander_phy_error_log._entry_ptr.121 = internal global ptr @_transport_get_expander_phy_error_log._entry.120, section ".printk_index", align 4
@_transport_get_expander_phy_error_log._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.117, ptr @.str.2, i32 1307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_get_expander_phy_error_log._entry_ptr.123 = internal global ptr @_transport_get_expander_phy_error_log._entry.122, section ".printk_index", align 4
@_transport_get_expander_phy_error_log._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.117, ptr @.str.2, i32 1340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s: phy_error_log - send to sas_addr(0x%016llx), phy(%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@_transport_get_expander_phy_error_log._entry_ptr.126 = internal global ptr @_transport_get_expander_phy_error_log._entry.124, section ".printk_index", align 4
@_transport_get_expander_phy_error_log._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.117, ptr @.str.2, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_get_expander_phy_error_log._entry_ptr.128 = internal global ptr @_transport_get_expander_phy_error_log._entry.127, section ".printk_index", align 4
@_transport_get_expander_phy_error_log._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.117, ptr @.str.2, i32 1354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: phy_error_log - complete\0A\00", [32 x i8] zeroinitializer }, align 32
@_transport_get_expander_phy_error_log._entry_ptr.131 = internal global ptr @_transport_get_expander_phy_error_log._entry.129, section ".printk_index", align 4
@_transport_get_expander_phy_error_log._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.117, ptr @.str.2, i32 1362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: phy_error_log - reply data transfer size(%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@_transport_get_expander_phy_error_log._entry_ptr.134 = internal global ptr @_transport_get_expander_phy_error_log._entry.132, section ".printk_index", align 4
@_transport_get_expander_phy_error_log._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.117, ptr @.str.2, i32 1373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: phy_error_log - function_result(%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@_transport_get_expander_phy_error_log._entry_ptr.137 = internal global ptr @_transport_get_expander_phy_error_log._entry.135, section ".printk_index", align 4
@_transport_get_expander_phy_error_log._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.117, ptr @.str.2, i32 1386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: phy_error_log - no reply\0A\00", [32 x i8] zeroinitializer }, align 32
@_transport_get_expander_phy_error_log._entry_ptr.140 = internal global ptr @_transport_get_expander_phy_error_log._entry.138, section ".printk_index", align 4
@_transport_phy_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.141, ptr @.str.2, i32 1730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_transport_phy_reset\00", [43 x i8] zeroinitializer }, align 32
@_transport_phy_reset._entry_ptr = internal global ptr @_transport_phy_reset._entry, section ".printk_index", align 4
@_transport_phy_reset._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.141, ptr @.str.2, i32 1737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: phy(%d), ioc_status(0x%04x), loginfo(0x%08x)\0A\00", [44 x i8] zeroinitializer }, align 32
@_transport_phy_reset._entry_ptr.144 = internal global ptr @_transport_phy_reset._entry.142, section ".printk_index", align 4
@_transport_expander_phy_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.145, ptr @.str.2, i32 1565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"_transport_expander_phy_control\00", [32 x i8] zeroinitializer }, align 32
@_transport_expander_phy_control._entry_ptr = internal global ptr @_transport_expander_phy_control._entry, section ".printk_index", align 4
@_transport_expander_phy_control._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.145, ptr @.str.2, i32 1572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_expander_phy_control._entry_ptr.147 = internal global ptr @_transport_expander_phy_control._entry.146, section ".printk_index", align 4
@_transport_expander_phy_control._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.145, ptr @.str.2, i32 1584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_expander_phy_control._entry_ptr.149 = internal global ptr @_transport_expander_phy_control._entry.148, section ".printk_index", align 4
@_transport_expander_phy_control._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.145, ptr @.str.2, i32 1598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_expander_phy_control._entry_ptr.151 = internal global ptr @_transport_expander_phy_control._entry.150, section ".printk_index", align 4
@_transport_expander_phy_control._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.145, ptr @.str.2, i32 1636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s: phy_control - send to sas_addr(0x%016llx), phy(%d), opcode(%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@_transport_expander_phy_control._entry_ptr.154 = internal global ptr @_transport_expander_phy_control._entry.152, section ".printk_index", align 4
@_transport_expander_phy_control._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.145, ptr @.str.2, i32 1642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_expander_phy_control._entry_ptr.156 = internal global ptr @_transport_expander_phy_control._entry.155, section ".printk_index", align 4
@_transport_expander_phy_control._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.145, ptr @.str.2, i32 1650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: phy_control - complete\0A\00", [34 x i8] zeroinitializer }, align 32
@_transport_expander_phy_control._entry_ptr.159 = internal global ptr @_transport_expander_phy_control._entry.157, section ".printk_index", align 4
@_transport_expander_phy_control._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.145, ptr @.str.2, i32 1658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: phy_control - reply data transfer size(%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@_transport_expander_phy_control._entry_ptr.162 = internal global ptr @_transport_expander_phy_control._entry.160, section ".printk_index", align 4
@_transport_expander_phy_control._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.145, ptr @.str.2, i32 1669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: phy_control - function_result(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@_transport_expander_phy_control._entry_ptr.165 = internal global ptr @_transport_expander_phy_control._entry.163, section ".printk_index", align 4
@_transport_expander_phy_control._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.145, ptr @.str.2, i32 1674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: phy_control - no reply\0A\00", [34 x i8] zeroinitializer }, align 32
@_transport_expander_phy_control._entry_ptr.168 = internal global ptr @_transport_expander_phy_control._entry.166, section ".printk_index", align 4
@_transport_phy_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.169, ptr @.str.2, i32 1788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_transport_phy_enable\00", [42 x i8] zeroinitializer }, align 32
@_transport_phy_enable._entry_ptr = internal global ptr @_transport_phy_enable._entry, section ".printk_index", align 4
@_transport_phy_enable._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.169, ptr @.str.2, i32 1795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_phy_enable._entry_ptr.171 = internal global ptr @_transport_phy_enable._entry.170, section ".printk_index", align 4
@_transport_phy_enable._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.169, ptr @.str.2, i32 1803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_phy_enable._entry_ptr.173 = internal global ptr @_transport_phy_enable._entry.172, section ".printk_index", align 4
@_transport_phy_enable._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.169, ptr @.str.2, i32 1813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\013%s: discovery is active on port = %d, phy = %d: unable to enable/disable phys, try again later!\0A\00", [61 x i8] zeroinitializer }, align 32
@_transport_phy_enable._entry_ptr.176 = internal global ptr @_transport_phy_enable._entry.174, section ".printk_index", align 4
@_transport_phy_enable._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.169, ptr @.str.2, i32 1829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_phy_enable._entry_ptr.178 = internal global ptr @_transport_phy_enable._entry.177, section ".printk_index", align 4
@_transport_phy_enable._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.169, ptr @.str.2, i32 1836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_phy_enable._entry_ptr.180 = internal global ptr @_transport_phy_enable._entry.179, section ".printk_index", align 4
@_transport_phy_enable._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.169, ptr @.str.2, i32 1844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_phy_enable._entry_ptr.182 = internal global ptr @_transport_phy_enable._entry.181, section ".printk_index", align 4
@_transport_phy_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.183, ptr @.str.2, i32 1940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_transport_phy_speed\00", [43 x i8] zeroinitializer }, align 32
@_transport_phy_speed._entry_ptr = internal global ptr @_transport_phy_speed._entry, section ".printk_index", align 4
@_transport_phy_speed._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.183, ptr @.str.2, i32 1947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_phy_speed._entry_ptr.185 = internal global ptr @_transport_phy_speed._entry.184, section ".printk_index", align 4
@_transport_phy_speed._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.183, ptr @.str.2, i32 1955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_phy_speed._entry_ptr.187 = internal global ptr @_transport_phy_speed._entry.186, section ".printk_index", align 4
@_transport_phy_speed._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.183, ptr @.str.2, i32 1975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_phy_speed._entry_ptr.189 = internal global ptr @_transport_phy_speed._entry.188, section ".printk_index", align 4
@_transport_smp_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.190, ptr @.str.2, i32 2061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_transport_smp_handler\00", [41 x i8] zeroinitializer }, align 32
@_transport_smp_handler._entry_ptr = internal global ptr @_transport_smp_handler._entry, section ".printk_index", align 4
@_transport_smp_handler._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.190, ptr @.str.2, i32 2072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_smp_handler._entry_ptr.192 = internal global ptr @_transport_smp_handler._entry.191, section ".printk_index", align 4
@_transport_smp_handler._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.190, ptr @.str.2, i32 2099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_smp_handler._entry_ptr.194 = internal global ptr @_transport_smp_handler._entry.193, section ".printk_index", align 4
@_transport_smp_handler._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.190, ptr @.str.2, i32 2121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: %s: sending smp request\0A\00", [33 x i8] zeroinitializer }, align 32
@_transport_smp_handler._entry_ptr.197 = internal global ptr @_transport_smp_handler._entry.195, section ".printk_index", align 4
@_transport_smp_handler._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.190, ptr @.str.2, i32 2128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_transport_smp_handler._entry_ptr.199 = internal global ptr @_transport_smp_handler._entry.198, section ".printk_index", align 4
@_transport_smp_handler._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.190, ptr @.str.2, i32 2138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: %s - complete\0A\00", [43 x i8] zeroinitializer }, align 32
@_transport_smp_handler._entry_ptr.202 = internal global ptr @_transport_smp_handler._entry.200, section ".printk_index", align 4
@_transport_smp_handler._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.190, ptr @.str.2, i32 2142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: %s: no reply\0A\00", [44 x i8] zeroinitializer }, align 32
@_transport_smp_handler._entry_ptr.205 = internal global ptr @_transport_smp_handler._entry.203, section ".printk_index", align 4
@_transport_smp_handler._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.190, ptr @.str.2, i32 2152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: %s: reply data transfer size(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@_transport_smp_handler._entry_ptr.208 = internal global ptr @_transport_smp_handler._entry.206, section ".printk_index", align 4
@switch.table.mpt3sas_transport_add_host_phy = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 0, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table.mpt3sas_transport_add_host_phy.209 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 0, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table.mpt3sas_transport_add_host_phy.210 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 0, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table.mpt3sas_transport_add_host_phy.211 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 0, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table.mpt3sas_transport_add_host_phy.212 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 0, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table.mpt3sas_transport_add_expander_phy = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 0, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table.mpt3sas_transport_add_expander_phy.213 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 0, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table.mpt3sas_transport_add_expander_phy.214 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 0, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table.mpt3sas_transport_add_expander_phy.215 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 0, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table.mpt3sas_transport_add_expander_phy.216 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 0, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table.mpt3sas_transport_update_links = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1, i32 16, i32 0, i32 4, i32 5, i32 0, i32 0, i32 8, i32 9, i32 10, i32 11], [52 x i8] zeroinitializer }, align 32
@switch.table._transport_phy_speed = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 0, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table._transport_phy_speed.217 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 0, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table._transport_phy_speed.218 = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 8, i32 9, i32 10, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 16, i32 0, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.219 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 697, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 705, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 718, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 725, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 731, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 757, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 765, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 775, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 783, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 789, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 797, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 830, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 839, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 923, i32 5 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 948, i32 5 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 962, i32 5 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 982, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 995, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1020, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1026, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1050, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1056, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1089, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1095, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1121, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1127, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1199, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant [28 x i8] c"mpt3sas_transport_functions\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 2178, i32 30 }
@___asan_gen_.361 = private unnamed_addr constant [27 x i8] c"mpt3sas_transport_template\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 2188, i32 33 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 557, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 509, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 535, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 211, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 217, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 225, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 371, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 378, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 390, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 404, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 429, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 437, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 445, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 452, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 478, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.464, i32 87, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 159, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 162, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 163, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant [40 x i8] c"../drivers/scsi/mpt3sas/mpt3sas_debug.h\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.494, i32 165, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1432, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1438, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1274, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1281, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1293, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1306, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1337, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1346, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1354, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1360, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1371, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1385, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1729, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1735, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1565, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1572, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1584, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1597, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1633, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1642, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1650, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1656, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1667, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1673, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1787, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1794, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1802, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1812, i32 4 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1828, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1835, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1843, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1939, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1946, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1954, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1974, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 2061, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 2071, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 2099, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 2120, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 2128, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 2138, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 2141, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.694 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.695 = private constant [44 x i8] c"../drivers/scsi/mpt3sas/mpt3sas_transport.c\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 2149, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant [44 x i8] c"switch.table.mpt3sas_transport_add_host_phy\00", align 1
@___asan_gen_.698 = private unnamed_addr constant [48 x i8] c"switch.table.mpt3sas_transport_add_host_phy.209\00", align 1
@___asan_gen_.699 = private unnamed_addr constant [48 x i8] c"switch.table.mpt3sas_transport_add_host_phy.210\00", align 1
@___asan_gen_.700 = private unnamed_addr constant [48 x i8] c"switch.table.mpt3sas_transport_add_host_phy.211\00", align 1
@___asan_gen_.701 = private unnamed_addr constant [48 x i8] c"switch.table.mpt3sas_transport_add_host_phy.212\00", align 1
@___asan_gen_.702 = private unnamed_addr constant [48 x i8] c"switch.table.mpt3sas_transport_add_expander_phy\00", align 1
@___asan_gen_.703 = private unnamed_addr constant [52 x i8] c"switch.table.mpt3sas_transport_add_expander_phy.213\00", align 1
@___asan_gen_.704 = private unnamed_addr constant [52 x i8] c"switch.table.mpt3sas_transport_add_expander_phy.214\00", align 1
@___asan_gen_.705 = private unnamed_addr constant [52 x i8] c"switch.table.mpt3sas_transport_add_expander_phy.215\00", align 1
@___asan_gen_.706 = private unnamed_addr constant [52 x i8] c"switch.table.mpt3sas_transport_add_expander_phy.216\00", align 1
@___asan_gen_.707 = private unnamed_addr constant [44 x i8] c"switch.table.mpt3sas_transport_update_links\00", align 1
@___asan_gen_.708 = private unnamed_addr constant [34 x i8] c"switch.table._transport_phy_speed\00", align 1
@___asan_gen_.709 = private unnamed_addr constant [38 x i8] c"switch.table._transport_phy_speed.217\00", align 1
@___asan_gen_.710 = private unnamed_addr constant [38 x i8] c"switch.table._transport_phy_speed.218\00", align 1
@llvm.compiler.used = appending global [262 x ptr] [ptr @_debug_dump_mf._entry, ptr @_debug_dump_mf._entry.104, ptr @_debug_dump_mf._entry.107, ptr @_debug_dump_mf._entry.110, ptr @_debug_dump_mf._entry_ptr, ptr @_debug_dump_mf._entry_ptr.106, ptr @_debug_dump_mf._entry_ptr.109, ptr @_debug_dump_mf._entry_ptr.112, ptr @_transport_add_phy._entry, ptr @_transport_add_phy._entry_ptr, ptr @_transport_delete_phy._entry, ptr @_transport_delete_phy._entry_ptr, ptr @_transport_delete_port._entry, ptr @_transport_delete_port._entry_ptr, ptr @_transport_expander_phy_control._entry, ptr @_transport_expander_phy_control._entry.146, ptr @_transport_expander_phy_control._entry.148, ptr @_transport_expander_phy_control._entry.150, ptr @_transport_expander_phy_control._entry.152, ptr @_transport_expander_phy_control._entry.155, ptr @_transport_expander_phy_control._entry.157, ptr @_transport_expander_phy_control._entry.160, ptr @_transport_expander_phy_control._entry.163, ptr @_transport_expander_phy_control._entry.166, ptr @_transport_expander_phy_control._entry_ptr, ptr @_transport_expander_phy_control._entry_ptr.147, ptr @_transport_expander_phy_control._entry_ptr.149, ptr @_transport_expander_phy_control._entry_ptr.151, ptr @_transport_expander_phy_control._entry_ptr.154, ptr @_transport_expander_phy_control._entry_ptr.156, ptr @_transport_expander_phy_control._entry_ptr.159, ptr @_transport_expander_phy_control._entry_ptr.162, ptr @_transport_expander_phy_control._entry_ptr.165, ptr @_transport_expander_phy_control._entry_ptr.168, ptr @_transport_expander_report_manufacture._entry, ptr @_transport_expander_report_manufacture._entry.76, ptr @_transport_expander_report_manufacture._entry.79, ptr @_transport_expander_report_manufacture._entry.82, ptr @_transport_expander_report_manufacture._entry.85, ptr @_transport_expander_report_manufacture._entry.88, ptr @_transport_expander_report_manufacture._entry.91, ptr @_transport_expander_report_manufacture._entry.94, ptr @_transport_expander_report_manufacture._entry.97, ptr @_transport_expander_report_manufacture._entry_ptr, ptr @_transport_expander_report_manufacture._entry_ptr.78, ptr @_transport_expander_report_manufacture._entry_ptr.81, ptr @_transport_expander_report_manufacture._entry_ptr.84, ptr @_transport_expander_report_manufacture._entry_ptr.87, ptr @_transport_expander_report_manufacture._entry_ptr.90, ptr @_transport_expander_report_manufacture._entry_ptr.93, ptr @_transport_expander_report_manufacture._entry_ptr.96, ptr @_transport_expander_report_manufacture._entry_ptr.99, ptr @_transport_get_expander_phy_error_log._entry, ptr @_transport_get_expander_phy_error_log._entry.118, ptr @_transport_get_expander_phy_error_log._entry.120, ptr @_transport_get_expander_phy_error_log._entry.122, ptr @_transport_get_expander_phy_error_log._entry.124, ptr @_transport_get_expander_phy_error_log._entry.127, ptr @_transport_get_expander_phy_error_log._entry.129, ptr @_transport_get_expander_phy_error_log._entry.132, ptr @_transport_get_expander_phy_error_log._entry.135, ptr @_transport_get_expander_phy_error_log._entry.138, ptr @_transport_get_expander_phy_error_log._entry_ptr, ptr @_transport_get_expander_phy_error_log._entry_ptr.119, ptr @_transport_get_expander_phy_error_log._entry_ptr.121, ptr @_transport_get_expander_phy_error_log._entry_ptr.123, ptr @_transport_get_expander_phy_error_log._entry_ptr.126, ptr @_transport_get_expander_phy_error_log._entry_ptr.128, ptr @_transport_get_expander_phy_error_log._entry_ptr.131, ptr @_transport_get_expander_phy_error_log._entry_ptr.134, ptr @_transport_get_expander_phy_error_log._entry_ptr.137, ptr @_transport_get_expander_phy_error_log._entry_ptr.140, ptr @_transport_get_linkerrors._entry, ptr @_transport_get_linkerrors._entry.114, ptr @_transport_get_linkerrors._entry_ptr, ptr @_transport_get_linkerrors._entry_ptr.116, ptr @_transport_phy_enable._entry, ptr @_transport_phy_enable._entry.170, ptr @_transport_phy_enable._entry.172, ptr @_transport_phy_enable._entry.174, ptr @_transport_phy_enable._entry.177, ptr @_transport_phy_enable._entry.179, ptr @_transport_phy_enable._entry.181, ptr @_transport_phy_enable._entry_ptr, ptr @_transport_phy_enable._entry_ptr.171, ptr @_transport_phy_enable._entry_ptr.173, ptr @_transport_phy_enable._entry_ptr.176, ptr @_transport_phy_enable._entry_ptr.178, ptr @_transport_phy_enable._entry_ptr.180, ptr @_transport_phy_enable._entry_ptr.182, ptr @_transport_phy_reset._entry, ptr @_transport_phy_reset._entry.142, ptr @_transport_phy_reset._entry_ptr, ptr @_transport_phy_reset._entry_ptr.144, ptr @_transport_phy_speed._entry, ptr @_transport_phy_speed._entry.184, ptr @_transport_phy_speed._entry.186, ptr @_transport_phy_speed._entry.188, ptr @_transport_phy_speed._entry_ptr, ptr @_transport_phy_speed._entry_ptr.185, ptr @_transport_phy_speed._entry_ptr.187, ptr @_transport_phy_speed._entry_ptr.189, ptr @_transport_set_identify._entry, ptr @_transport_set_identify._entry.70, ptr @_transport_set_identify._entry.72, ptr @_transport_set_identify._entry_ptr, ptr @_transport_set_identify._entry_ptr.71, ptr @_transport_set_identify._entry_ptr.74, ptr @_transport_smp_handler._entry, ptr @_transport_smp_handler._entry.191, ptr @_transport_smp_handler._entry.193, ptr @_transport_smp_handler._entry.195, ptr @_transport_smp_handler._entry.198, ptr @_transport_smp_handler._entry.200, ptr @_transport_smp_handler._entry.203, ptr @_transport_smp_handler._entry.206, ptr @_transport_smp_handler._entry_ptr, ptr @_transport_smp_handler._entry_ptr.192, ptr @_transport_smp_handler._entry_ptr.194, ptr @_transport_smp_handler._entry_ptr.197, ptr @_transport_smp_handler._entry_ptr.199, ptr @_transport_smp_handler._entry_ptr.202, ptr @_transport_smp_handler._entry_ptr.205, ptr @_transport_smp_handler._entry_ptr.208, ptr @mpt3sas_transport_add_expander_phy._entry, ptr @mpt3sas_transport_add_expander_phy._entry.55, ptr @mpt3sas_transport_add_expander_phy._entry.57, ptr @mpt3sas_transport_add_expander_phy._entry.59, ptr @mpt3sas_transport_add_expander_phy._entry_ptr, ptr @mpt3sas_transport_add_expander_phy._entry_ptr.56, ptr @mpt3sas_transport_add_expander_phy._entry_ptr.58, ptr @mpt3sas_transport_add_expander_phy._entry_ptr.60, ptr @mpt3sas_transport_add_host_phy._entry, ptr @mpt3sas_transport_add_host_phy._entry.47, ptr @mpt3sas_transport_add_host_phy._entry.49, ptr @mpt3sas_transport_add_host_phy._entry.51, ptr @mpt3sas_transport_add_host_phy._entry_ptr, ptr @mpt3sas_transport_add_host_phy._entry_ptr.48, ptr @mpt3sas_transport_add_host_phy._entry_ptr.50, ptr @mpt3sas_transport_add_host_phy._entry_ptr.53, ptr @mpt3sas_transport_port_add._entry, ptr @mpt3sas_transport_port_add._entry.10, ptr @mpt3sas_transport_port_add._entry.12, ptr @mpt3sas_transport_port_add._entry.14, ptr @mpt3sas_transport_port_add._entry.16, ptr @mpt3sas_transport_port_add._entry.18, ptr @mpt3sas_transport_port_add._entry.20, ptr @mpt3sas_transport_port_add._entry.22, ptr @mpt3sas_transport_port_add._entry.27, ptr @mpt3sas_transport_port_add._entry.29, ptr @mpt3sas_transport_port_add._entry.3, ptr @mpt3sas_transport_port_add._entry.5, ptr @mpt3sas_transport_port_add._entry.8, ptr @mpt3sas_transport_port_add._entry_ptr, ptr @mpt3sas_transport_port_add._entry_ptr.11, ptr @mpt3sas_transport_port_add._entry_ptr.13, ptr @mpt3sas_transport_port_add._entry_ptr.15, ptr @mpt3sas_transport_port_add._entry_ptr.17, ptr @mpt3sas_transport_port_add._entry_ptr.19, ptr @mpt3sas_transport_port_add._entry_ptr.21, ptr @mpt3sas_transport_port_add._entry_ptr.26, ptr @mpt3sas_transport_port_add._entry_ptr.28, ptr @mpt3sas_transport_port_add._entry_ptr.31, ptr @mpt3sas_transport_port_add._entry_ptr.4, ptr @mpt3sas_transport_port_add._entry_ptr.7, ptr @mpt3sas_transport_port_add._entry_ptr.9, ptr @mpt3sas_transport_port_remove._entry, ptr @mpt3sas_transport_port_remove._entry.34, ptr @mpt3sas_transport_port_remove._entry.37, ptr @mpt3sas_transport_port_remove._entry.40, ptr @mpt3sas_transport_port_remove._entry.43, ptr @mpt3sas_transport_port_remove._entry_ptr, ptr @mpt3sas_transport_port_remove._entry_ptr.36, ptr @mpt3sas_transport_port_remove._entry_ptr.39, ptr @mpt3sas_transport_port_remove._entry_ptr.42, ptr @mpt3sas_transport_port_remove._entry_ptr.45, ptr @mpt3sas_transport_update_links._entry, ptr @mpt3sas_transport_update_links._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.52, ptr @.str.54, ptr @.str.61, ptr @.str.62, ptr @mpt3sas_transport_functions, ptr @mpt3sas_transport_template, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @init_completion.__key, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.125, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.145, ptr @.str.153, ptr @.str.158, ptr @.str.161, ptr @.str.164, ptr @.str.167, ptr @.str.169, ptr @.str.175, ptr @.str.183, ptr @.str.190, ptr @.str.196, ptr @.str.201, ptr @.str.204, ptr @.str.207, ptr @switch.table.mpt3sas_transport_add_host_phy, ptr @switch.table.mpt3sas_transport_add_host_phy.209, ptr @switch.table.mpt3sas_transport_add_host_phy.210, ptr @switch.table.mpt3sas_transport_add_host_phy.211, ptr @switch.table.mpt3sas_transport_add_host_phy.212, ptr @switch.table.mpt3sas_transport_add_expander_phy, ptr @switch.table.mpt3sas_transport_add_expander_phy.213, ptr @switch.table.mpt3sas_transport_add_expander_phy.214, ptr @switch.table.mpt3sas_transport_add_expander_phy.215, ptr @switch.table.mpt3sas_transport_add_expander_phy.216, ptr @switch.table.mpt3sas_transport_update_links, ptr @switch.table._transport_phy_speed, ptr @switch.table._transport_phy_speed.217, ptr @switch.table._transport_phy_speed.218], section "llvm.metadata"
@0 = internal global [173 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_add._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_add._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_add._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_add._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_add._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_add._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_add._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_add._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_add._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_add._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_add._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_add._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_remove._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_remove._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_remove._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_port_remove._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_add_host_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_add_host_phy._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_add_host_phy._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_add_host_phy._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_add_expander_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_add_expander_phy._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_add_expander_phy._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_add_expander_phy._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_update_links._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_functions to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_transport_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_add_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_delete_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_delete_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_set_identify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_set_identify._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_set_identify._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_report_manufacture._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_report_manufacture._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_report_manufacture._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_report_manufacture._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_report_manufacture._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_report_manufacture._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_report_manufacture._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_report_manufacture._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_report_manufacture._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_mf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_mf._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_mf._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_mf._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_get_linkerrors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_get_linkerrors._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_get_expander_phy_error_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_get_expander_phy_error_log._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_get_expander_phy_error_log._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_get_expander_phy_error_log._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_get_expander_phy_error_log._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_get_expander_phy_error_log._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_get_expander_phy_error_log._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_get_expander_phy_error_log._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_get_expander_phy_error_log._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_get_expander_phy_error_log._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_phy_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_phy_reset._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_phy_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_phy_control._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_phy_control._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_phy_control._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_phy_control._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_phy_control._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_phy_control._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_phy_control._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_phy_control._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_expander_phy_control._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_phy_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_phy_enable._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_phy_enable._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_phy_enable._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_phy_enable._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_phy_enable._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_phy_enable._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_phy_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_phy_speed._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_phy_speed._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_phy_speed._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_smp_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_smp_handler._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_smp_handler._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_smp_handler._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_smp_handler._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_smp_handler._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_smp_handler._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_transport_smp_handler._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpt3sas_transport_add_host_phy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpt3sas_transport_add_host_phy.209 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpt3sas_transport_add_host_phy.210 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpt3sas_transport_add_host_phy.211 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpt3sas_transport_add_host_phy.212 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpt3sas_transport_add_expander_phy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpt3sas_transport_add_expander_phy.213 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpt3sas_transport_add_expander_phy.214 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpt3sas_transport_add_expander_phy.215 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpt3sas_transport_add_expander_phy.216 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpt3sas_transport_update_links to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._transport_phy_speed to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._transport_phy_speed.217 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._transport_phy_speed.218 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mpt3sas_transport_done(ptr noundef %ioc, i16 noundef zeroext %smid, i8 noundef zeroext %msix_index, i32 noundef %reply) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mpt3sas_base_get_reply_virt_addr(ptr noundef %ioc, i32 noundef %reply) #10
  %status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76, i32 4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %1)
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %smid3 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76, i32 5
  %2 = ptrtoint ptr %smid3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %smid3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %smid)
  %cmp6.not = icmp eq i16 %3, %smid
  br i1 %cmp6.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %4 = or i16 %1, 1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %status, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end9.if.end23_crit_edge, label %if.then14

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %reply16 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76, i32 2
  %6 = ptrtoint ptr %reply16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reply16, align 4
  %MsgLength = getelementptr inbounds %struct._MPI2_DEFAULT_REPLY, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %MsgLength to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %MsgLength, align 2
  %conv17 = zext i8 %9 to i32
  %mul = shl nuw nsw i32 %conv17, 2
  %10 = call ptr @memcpy(ptr %7, ptr %call, i32 %mul)
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %status, align 4
  %13 = or i16 %12, 4
  store i16 %13, ptr %status, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %if.end9.if.end23_crit_edge
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %status, align 4
  %16 = and i16 %15, -3
  store i16 %16, ptr %status, align 4
  %done = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76, i32 1
  tail call void @complete(ptr noundef %done) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i8 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_base_get_reply_virt_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_transport_add_phy_to_an_existing_port(ptr nocapture readnone %ioc, ptr noundef readonly %sas_node, ptr noundef %mpt3sas_phy, i64 noundef %sas_address, ptr noundef readnone %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_belongs_to_port = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 7
  %0 = ptrtoint ptr %phy_belongs_to_port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_belongs_to_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %tobool.not = icmp eq ptr %port, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %entry
  %sas_port_list = getelementptr inbounds %struct._sas_node, ptr %sas_node, i32 0, i32 12
  %2 = ptrtoint ptr %sas_port_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %mpt3sas_port.057 = load ptr, ptr %sas_port_list, align 4
  %cmp5.not58 = icmp eq ptr %mpt3sas_port.057, %sas_port_list
  br i1 %cmp5.not58, label %if.end3.cleanup_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc35.for.body_crit_edge, %if.end3.for.body_crit_edge
  %mpt3sas_port.059 = phi ptr [ %mpt3sas_port.0, %for.inc35.for.body_crit_edge ], [ %mpt3sas_port.057, %if.end3.for.body_crit_edge ]
  %sas_address7 = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.059, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %sas_address7 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sas_address7, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %sas_address)
  %cmp8.not = icmp eq i64 %4, %sas_address
  br i1 %cmp8.not, label %if.end11, label %for.body.for.inc35_crit_edge

for.body.for.inc35_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc35

if.end11:                                         ; preds = %for.body
  %hba_port = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.059, i32 0, i32 5
  %5 = ptrtoint ptr %hba_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hba_port, align 8
  %cmp12.not = icmp eq ptr %6, %port
  br i1 %cmp12.not, label %if.end15, label %if.end11.for.inc35_crit_edge

if.end11.for.inc35_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc35

if.end15:                                         ; preds = %if.end11
  %phy_list = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.059, i32 0, i32 6
  br label %for.cond20

for.cond20:                                       ; preds = %for.body25.for.cond20_crit_edge, %if.end15
  %phy_srch.0.in = phi ptr [ %phy_list, %if.end15 ], [ %phy_srch.0, %for.body25.for.cond20_crit_edge ]
  %7 = ptrtoint ptr %phy_srch.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %phy_srch.0 = load ptr, ptr %phy_srch.0.in, align 4
  %cmp22.not = icmp eq ptr %phy_srch.0, %phy_list
  br i1 %cmp22.not, label %for.end, label %for.body25

for.body25:                                       ; preds = %for.cond20
  %cmp26 = icmp eq ptr %phy_srch.0, %mpt3sas_phy
  br i1 %cmp26, label %for.body25.cleanup_crit_edge, label %for.body25.for.cond20_crit_edge

for.body25.for.cond20_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond20

for.body25.cleanup_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.cond20
  %phy.i = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 3
  %8 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy.i, align 8
  %phy_id.i = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 4
  %10 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %phy_id.i, align 4
  %conv.i = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.24, ptr noundef %9, ptr noundef nonnull @.str.63, i64 noundef %sas_address, i32 noundef %conv.i) #13
  %prev.i.i = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.059, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mpt3sas_phy, ptr noundef %13, ptr noundef %phy_list) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end._transport_add_phy.exit_crit_edge

for.end._transport_add_phy.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_add_phy.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mpt3sas_phy, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %mpt3sas_phy to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %phy_list, ptr %mpt3sas_phy, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %mpt3sas_phy, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %mpt3sas_phy, ptr %13, align 4
  br label %_transport_add_phy.exit

_transport_add_phy.exit:                          ; preds = %if.end.i.i.i, %for.end._transport_add_phy.exit_crit_edge
  %num_phys.i = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.059, i32 0, i32 1
  %18 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_phys.i, align 8
  %inc.i = add i8 %19, 1
  store i8 %inc.i, ptr %num_phys.i, align 8
  %port.i = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.059, i32 0, i32 4
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port.i, align 4
  %22 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy.i, align 8
  tail call void @sas_port_add_phy(ptr noundef %21, ptr noundef %23) #10
  %24 = ptrtoint ptr %phy_belongs_to_port to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %phy_belongs_to_port, align 2
  br label %cleanup

for.inc35:                                        ; preds = %if.end11.for.inc35_crit_edge, %for.body.for.inc35_crit_edge
  %25 = ptrtoint ptr %mpt3sas_port.059 to i32
  call void @__asan_load4_noabort(i32 %25)
  %mpt3sas_port.0 = load ptr, ptr %mpt3sas_port.059, align 4
  %cmp5.not = icmp eq ptr %mpt3sas_port.0, %sas_port_list
  br i1 %cmp5.not, label %for.inc35.cleanup_crit_edge, label %for.inc35.for.body_crit_edge

for.inc35.for.body_crit_edge:                     ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc35.cleanup_crit_edge:                      ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc35.cleanup_crit_edge, %_transport_add_phy.exit, %for.body25.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_transport_del_phy_from_an_existing_port(ptr noundef %ioc, ptr noundef readonly %sas_node, ptr noundef %mpt3sas_phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_belongs_to_port = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 7
  %0 = ptrtoint ptr %phy_belongs_to_port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_belongs_to_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sas_port_list = getelementptr inbounds %struct._sas_node, ptr %sas_node, i32 0, i32 12
  %2 = ptrtoint ptr %sas_port_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sas_port_list, align 4
  %cmp9.not61 = icmp eq ptr %3, %sas_port_list
  br i1 %cmp9.not61, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.loopexit:                                ; preds = %for.cond15
  %cmp9.not = icmp eq ptr %next.063, %sas_port_list
  br i1 %cmp9.not, label %for.cond.loopexit.cleanup_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %if.end.for.body_crit_edge
  %mpt3sas_port.062 = phi ptr [ %next.063, %for.cond.loopexit.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %mpt3sas_port.062 to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.063 = load ptr, ptr %mpt3sas_port.062, align 8
  %phy_list = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.062, i32 0, i32 6
  br label %for.cond15

for.cond15:                                       ; preds = %for.body20.for.cond15_crit_edge, %for.body
  %phy_srch.0.in = phi ptr [ %phy_list, %for.body ], [ %phy_srch.0, %for.body20.for.cond15_crit_edge ]
  %5 = ptrtoint ptr %phy_srch.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %phy_srch.0 = load ptr, ptr %phy_srch.0.in, align 4
  %cmp17.not = icmp eq ptr %phy_srch.0, %phy_list
  br i1 %cmp17.not, label %for.cond.loopexit, label %for.body20

for.body20:                                       ; preds = %for.cond15
  %cmp21.not = icmp eq ptr %phy_srch.0, %mpt3sas_phy
  br i1 %cmp21.not, label %if.end24, label %for.body20.for.cond15_crit_edge

for.body20.for.cond15_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond15

if.end24:                                         ; preds = %for.body20
  %num_phys = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.062, i32 0, i32 1
  %6 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_phys, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp26 = icmp eq i8 %7, 1
  br i1 %cmp26, label %land.lhs.true, label %if.end24.if.else_crit_edge

if.end24.if.else_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end24
  %shost_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 27
  %8 = ptrtoint ptr %shost_recovery to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shost_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then28, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then28:                                        ; preds = %land.lhs.true
  %remote_identify.i = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.062, i32 0, i32 2
  %sas_address1.i = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.062, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %sas_address1.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sas_address1.i, align 8
  %hba_port.i = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.062, i32 0, i32 5
  %12 = ptrtoint ptr %hba_port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hba_port.i, align 8
  %14 = ptrtoint ptr %remote_identify.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %remote_identify.i, align 8
  %port4.i = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.062, i32 0, i32 4
  %16 = ptrtoint ptr %port4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %port4.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.24, ptr noundef %17, ptr noundef nonnull @.str.65, i64 noundef %11) #13
  %logging_level.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %18 = ptrtoint ptr %logging_level.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %logging_level.i, align 8
  %or.i = or i32 %19, 262144
  store i32 %or.i, ptr %logging_level.i, align 8
  %20 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.then28._transport_delete_port.exit_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then28.if.then7.i_crit_edge
    i32 3, label %if.then28.if.then7.i_crit_edge69
  ]

if.then28.if.then7.i_crit_edge69:                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.then28.if.then7.i_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7.i

if.then28._transport_delete_port.exit_crit_edge:  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_delete_port.exit

if.then.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mpt3sas_device_remove_by_sas_address(ptr noundef %ioc, i64 noundef %11, ptr noundef %13) #10
  br label %_transport_delete_port.exit

if.then7.i:                                       ; preds = %if.then28.if.then7.i_crit_edge, %if.then28.if.then7.i_crit_edge69
  tail call void @mpt3sas_expander_remove(ptr noundef %ioc, i64 noundef %11, ptr noundef %13) #10
  br label %_transport_delete_port.exit

_transport_delete_port.exit:                      ; preds = %if.then7.i, %if.then.i, %if.then28._transport_delete_port.exit_crit_edge
  %21 = ptrtoint ptr %logging_level.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %logging_level.i, align 8
  %and.i = and i32 %22, -262145
  store i32 %and.i, ptr %logging_level.i, align 8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end24.if.else_crit_edge
  %sas_address1.i58 = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.062, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %sas_address1.i58 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %sas_address1.i58, align 8
  %phy.i = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 3
  %25 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy.i, align 8
  %phy_id.i = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 4
  %27 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %phy_id.i, align 4
  %conv.i = zext i8 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.24, ptr noundef %26, ptr noundef nonnull @.str.41, i64 noundef %24, i32 noundef %conv.i) #13
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mpt3sas_phy) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else._transport_delete_phy.exit_crit_edge

if.else._transport_delete_phy.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_delete_phy.exit

if.end.i.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %mpt3sas_phy, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %31 = ptrtoint ptr %mpt3sas_phy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mpt3sas_phy, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %_transport_delete_phy.exit

_transport_delete_phy.exit:                       ; preds = %if.end.i.i.i, %if.else._transport_delete_phy.exit_crit_edge
  %35 = ptrtoint ptr %mpt3sas_phy to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %mpt3sas_phy, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mpt3sas_phy, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_phys, align 8
  %dec.i = add i8 %38, -1
  store i8 %dec.i, ptr %num_phys, align 8
  %port.i = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.062, i32 0, i32 4
  %39 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port.i, align 4
  %41 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy.i, align 8
  tail call void @sas_port_delete_phy(ptr noundef %40, ptr noundef %42) #10
  %43 = ptrtoint ptr %phy_belongs_to_port to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %phy_belongs_to_port, align 2
  br label %cleanup

cleanup:                                          ; preds = %_transport_delete_phy.exit, %_transport_delete_port.exit, %for.cond.loopexit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mpt3sas_transport_port_add(ptr noundef %ioc, i16 noundef zeroext %handle, i64 noundef %sas_address, ptr noundef %hba_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hba_port, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.2, i32 noundef 698, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #14
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %do.end6, label %if.end11

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name8 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name8, ptr noundef nonnull @.str.2, i32 noundef 706, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %phy_list = getelementptr inbounds %struct._sas_port, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %phy_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %phy_list, ptr %phy_list, align 4
  %prev.i440 = getelementptr inbounds %struct._sas_port, ptr %call7.i.i, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i440 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %phy_list, ptr %prev.i440, align 8
  %sas_node_lock = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 120
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_node_lock) #10
  %sas_address1.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 117, i32 3
  %5 = ptrtoint ptr %sas_address1.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %sas_address1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %sas_address)
  %cmp.i = icmp eq i64 %6, %sas_address
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %sas_hba.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 117
  br label %_transport_sas_node_find_by_sas_address.exit

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @mpt3sas_scsih_expander_find_by_sas_address(ptr noundef %ioc, i64 noundef %sas_address, ptr noundef nonnull %hba_port) #10
  br label %_transport_sas_node_find_by_sas_address.exit

_transport_sas_node_find_by_sas_address.exit:     ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %sas_hba.i, %if.then.i ], [ %call.i, %if.else.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_node_lock, i32 noundef %call16) #10
  %tobool23.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool23.not, label %do.end27, label %if.end32

do.end27:                                         ; preds = %_transport_sas_node_find_by_sas_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name29 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name29, ptr noundef nonnull @.str.1, i64 noundef %sas_address) #13
  br label %out_fail

if.end32:                                         ; preds = %_transport_sas_node_find_by_sas_address.exit
  %remote_identify = getelementptr inbounds %struct._sas_port, ptr %call7.i.i, i32 0, i32 2
  %call33 = tail call fastcc i32 @_transport_set_identify(ptr noundef %ioc, i16 noundef zeroext %handle, ptr noundef %remote_identify)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end43, label %do.end38

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %name40 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name40, ptr noundef nonnull @.str.2, i32 noundef 726, ptr noundef nonnull @.str.1) #13
  br label %out_fail

if.end43:                                         ; preds = %if.end32
  %7 = ptrtoint ptr %remote_identify to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %remote_identify, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp45 = icmp eq i32 %8, 0
  br i1 %cmp45, label %do.end50, label %if.end55

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %name52 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name52, ptr noundef nonnull @.str.2, i32 noundef 732, ptr noundef nonnull @.str.1) #13
  br label %out_fail

if.end55:                                         ; preds = %if.end43
  %hba_port56 = getelementptr inbounds %struct._sas_port, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %hba_port56 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %hba_port, ptr %hba_port56, align 8
  %sas_address58 = getelementptr inbounds %struct._sas_port, ptr %call7.i.i, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %sas_address58 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sas_address58, align 8
  %num_phys.i = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp32.not.i = icmp eq i8 %13, 0
  br i1 %cmp32.not.i, label %if.end55.for.end_crit_edge, label %for.body.lr.ph.i

if.end55.for.end_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph.i:                                 ; preds = %if.end55
  %phy.i = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy.i, align 8
  %arrayidx.i = getelementptr %struct._sas_phy, ptr %15, i32 %i.033.i
  %sas_address2.i = getelementptr %struct._sas_phy, ptr %15, i32 %i.033.i, i32 2, i32 3
  %16 = ptrtoint ptr %sas_address2.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sas_address2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %11)
  %cmp3.not.i = icmp eq i64 %17, %11
  br i1 %cmp3.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %port7.i = getelementptr %struct._sas_phy, ptr %15, i32 %i.033.i, i32 9
  %18 = ptrtoint ptr %port7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port7.i, align 4
  %cmp8.not.i = icmp eq ptr %19, %hba_port
  br i1 %cmp8.not.i, label %if.end11.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end11.i:                                       ; preds = %if.end.i
  %phy_belongs_to_port.i = getelementptr %struct._sas_phy, ptr %15, i32 %i.033.i, i32 7
  %20 = ptrtoint ptr %phy_belongs_to_port.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %phy_belongs_to_port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp15.i = icmp eq i8 %21, 1
  br i1 %cmp15.i, label %if.then17.i, label %if.end11.i.for.inc.i_crit_edge

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mpt3sas_transport_del_phy_from_an_existing_port(ptr noundef %ioc, ptr noundef nonnull %retval.0.i, ptr noundef %arrayidx.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then17.i, %if.end11.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %22 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_phys.i, align 4
  %conv.i = zext i8 %23 to i32
  %cmp.i441 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i441, label %for.inc.i.for.body.i_crit_edge, label %_transport_sanity_check.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

_transport_sanity_check.exit:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp60453.not = icmp eq i8 %23, 0
  br i1 %cmp60453.not, label %_transport_sanity_check.exit.for.end_crit_edge, label %for.body.lr.ph

_transport_sanity_check.exit.for.end_crit_edge:   ; preds = %_transport_sanity_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %_transport_sanity_check.exit
  %phy = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 11
  %num_phys80 = getelementptr inbounds %struct._sas_port, ptr %call7.i.i, i32 0, i32 1
  %handle81 = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 4
  %num_phys83 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 117, i32 2
  %phy_mask = getelementptr inbounds %struct.hba_port, ptr %hba_port, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0455 = phi i32 [ 0, %for.body.lr.ph ], [ %inc105, %for.inc.for.body_crit_edge ]
  %vphy.0454 = phi ptr [ null, %for.body.lr.ph ], [ %vphy.1, %for.inc.for.body_crit_edge ]
  %24 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy, align 8
  %arrayidx = getelementptr %struct._sas_phy, ptr %25, i32 %i.0455
  %sas_address63 = getelementptr %struct._sas_phy, ptr %25, i32 %i.0455, i32 2, i32 3
  %26 = ptrtoint ptr %sas_address63 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %sas_address63, align 8
  %28 = ptrtoint ptr %sas_address58 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sas_address58, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %29)
  %cmp66.not = icmp eq i64 %27, %29
  br i1 %cmp66.not, label %if.end69, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end69:                                         ; preds = %for.body
  %port72 = getelementptr %struct._sas_phy, ptr %25, i32 %i.0455, i32 9
  %30 = ptrtoint ptr %port72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port72, align 4
  %cmp73.not = icmp eq ptr %31, %hba_port
  br i1 %cmp73.not, label %if.end76, label %if.end69.for.inc_crit_edge

if.end69.for.inc_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end76:                                         ; preds = %if.end69
  %32 = ptrtoint ptr %prev.i440 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i440, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %33, ptr noundef %phy_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end76.list_add_tail.exit_crit_edge

if.end76.list_add_tail.exit_crit_edge:            ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %prev.i440 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx, ptr %prev.i440, align 8
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %phy_list, ptr %arrayidx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %arrayidx, ptr %33, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end76.list_add_tail.exit_crit_edge
  %38 = ptrtoint ptr %num_phys80 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_phys80, align 8
  %inc = add i8 %39, 1
  store i8 %inc, ptr %num_phys80, align 8
  %40 = ptrtoint ptr %handle81 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %handle81, align 8
  %42 = ptrtoint ptr %num_phys83 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_phys83, align 4
  %44 = zext i8 %43 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %44)
  %cmp85.not = icmp ugt i16 %41, %44
  br i1 %cmp85.not, label %list_add_tail.exit.for.inc_crit_edge, label %if.then87

list_add_tail.exit.for.inc_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then87:                                        ; preds = %list_add_tail.exit
  %45 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy, align 8
  %hba_vphy = getelementptr %struct._sas_phy, ptr %46, i32 %i.0455, i32 8
  %47 = ptrtoint ptr %hba_vphy to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %hba_vphy, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool90.not = icmp eq i8 %48, 0
  br i1 %tobool90.not, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl nuw i32 1, %i.0455
  %49 = ptrtoint ptr %phy_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %phy_mask, align 8
  %or = or i32 %50, %shl
  store i32 %or, ptr %phy_mask, align 8
  br label %for.inc

if.end92:                                         ; preds = %if.then87
  %call93 = tail call ptr @mpt3sas_get_vphy_by_phy(ptr noundef %ioc, ptr noundef nonnull %hba_port, i32 noundef %i.0455) #10
  %tobool94.not = icmp eq ptr %call93, null
  br i1 %tobool94.not, label %do.end98, label %if.end92.for.inc_crit_edge

if.end92.for.inc_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end98:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  %name100 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name100, ptr noundef nonnull @.str.2, i32 noundef 758, ptr noundef nonnull @.str.1) #13
  br label %out_fail

for.inc:                                          ; preds = %if.end92.for.inc_crit_edge, %if.then91, %list_add_tail.exit.for.inc_crit_edge, %if.end69.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %vphy.1 = phi ptr [ %vphy.0454, %for.body.for.inc_crit_edge ], [ %vphy.0454, %if.end69.for.inc_crit_edge ], [ %call93, %if.end92.for.inc_crit_edge ], [ %vphy.0454, %if.then91 ], [ %vphy.0454, %list_add_tail.exit.for.inc_crit_edge ]
  %inc105 = add nuw nsw i32 %i.0455, 1
  %51 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_phys.i, align 4
  %conv59 = zext i8 %52 to i32
  %cmp60 = icmp ult i32 %inc105, %conv59
  br i1 %cmp60, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %_transport_sanity_check.exit.for.end_crit_edge, %if.end55.for.end_crit_edge
  %vphy.0.lcssa = phi ptr [ null, %_transport_sanity_check.exit.for.end_crit_edge ], [ null, %if.end55.for.end_crit_edge ], [ %vphy.1, %for.inc.for.end_crit_edge ]
  %num_phys106 = getelementptr inbounds %struct._sas_port, ptr %call7.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %num_phys106 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_phys106, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool107.not = icmp eq i8 %54, 0
  br i1 %tobool107.not, label %do.end111, label %if.end116

do.end111:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %name113 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name113, ptr noundef nonnull @.str.2, i32 noundef 766, ptr noundef nonnull @.str.1) #13
  br label %out_fail

if.end116:                                        ; preds = %for.end
  %55 = ptrtoint ptr %remote_identify to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %remote_identify, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp119 = icmp eq i32 %56, 1
  br i1 %cmp119, label %if.then121, label %if.end116.if.end136_crit_edge

if.end116.if.end136_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

if.then121:                                       ; preds = %if.end116
  %57 = ptrtoint ptr %sas_address58 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %sas_address58, align 8
  %59 = ptrtoint ptr %hba_port56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hba_port56, align 8
  %call125 = tail call ptr @mpt3sas_get_sdev_by_addr(ptr noundef %ioc, i64 noundef %58, ptr noundef %60) #10
  %tobool126.not = icmp eq ptr %call125, null
  br i1 %tobool126.not, label %do.end130, label %if.end135

do.end130:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  %name132 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name132, ptr noundef nonnull @.str.2, i32 noundef 776, ptr noundef nonnull @.str.1) #13
  br label %out_fail

if.end135:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #12
  %pend_sas_rphy_add = getelementptr inbounds %struct._sas_device, ptr %call125, i32 0, i32 18
  %61 = ptrtoint ptr %pend_sas_rphy_add to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %pend_sas_rphy_add, align 2
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end116.if.end136_crit_edge
  %sas_device.0 = phi ptr [ %call125, %if.end135 ], [ null, %if.end116.if.end136_crit_edge ]
  %parent_dev = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 1
  %62 = ptrtoint ptr %parent_dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent_dev, align 8
  %tobool137.not = icmp eq ptr %63, null
  br i1 %tobool137.not, label %do.end141, label %if.end146

do.end141:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  %name143 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name143, ptr noundef nonnull @.str.2, i32 noundef 784, ptr noundef nonnull @.str.1) #13
  br label %out_fail

if.end146:                                        ; preds = %if.end136
  %call148 = tail call ptr @sas_port_alloc_num(ptr noundef nonnull %63) #10
  %call149 = tail call i32 @sas_port_add(ptr noundef %call148) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %for.cond163.preheader, label %do.end154

for.cond163.preheader:                            ; preds = %if.end146
  %64 = ptrtoint ptr %phy_list to i32
  call void @__asan_load4_noabort(i32 %64)
  %mpt3sas_phy.0457 = load ptr, ptr %phy_list, align 4
  %cmp166.not458 = icmp eq ptr %mpt3sas_phy.0457, %phy_list
  br i1 %cmp166.not458, label %for.cond163.preheader.for.end187_crit_edge, label %for.body168.lr.ph

for.cond163.preheader.for.end187_crit_edge:       ; preds = %for.cond163.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end187

for.body168.lr.ph:                                ; preds = %for.cond163.preheader
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %conv174 = zext i16 %handle to i32
  br label %for.body168

do.end154:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  %name156 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name156, ptr noundef nonnull @.str.2, i32 noundef 790, ptr noundef nonnull @.str.1) #13
  br label %out_fail

for.body168:                                      ; preds = %if.end178.for.body168_crit_edge, %for.body168.lr.ph
  %mpt3sas_phy.0459 = phi ptr [ %mpt3sas_phy.0457, %for.body168.lr.ph ], [ %mpt3sas_phy.0, %if.end178.for.body168_crit_edge ]
  %65 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %logging_level, align 8
  %and = and i32 %66, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool169.not = icmp eq i32 %and, 0
  br i1 %tobool169.not, label %for.body168.if.end178_crit_edge, label %do.end173

for.body168.if.end178_crit_edge:                  ; preds = %for.body168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

do.end173:                                        ; preds = %for.body168
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %sas_address58 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %sas_address58, align 8
  %phy_id = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy.0459, i32 0, i32 4
  %69 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %phy_id, align 4
  %conv177 = zext i8 %70 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.24, ptr noundef %call148, ptr noundef nonnull @.str.23, i32 noundef %conv174, i64 noundef %68, i32 noundef %conv177) #13
  br label %if.end178

if.end178:                                        ; preds = %do.end173, %for.body168.if.end178_crit_edge
  %phy179 = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy.0459, i32 0, i32 3
  %71 = ptrtoint ptr %phy179 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy179, align 8
  tail call void @sas_port_add_phy(ptr noundef %call148, ptr noundef %72) #10
  %phy_belongs_to_port = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy.0459, i32 0, i32 7
  %73 = ptrtoint ptr %phy_belongs_to_port to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %phy_belongs_to_port, align 2
  %port180 = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy.0459, i32 0, i32 9
  %74 = ptrtoint ptr %port180 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %hba_port, ptr %port180, align 4
  %75 = ptrtoint ptr %mpt3sas_phy.0459 to i32
  call void @__asan_load4_noabort(i32 %75)
  %mpt3sas_phy.0 = load ptr, ptr %mpt3sas_phy.0459, align 4
  %cmp166.not = icmp eq ptr %mpt3sas_phy.0, %phy_list
  br i1 %cmp166.not, label %if.end178.for.end187_crit_edge, label %if.end178.for.body168_crit_edge

if.end178.for.body168_crit_edge:                  ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body168

if.end178.for.end187_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end187

for.end187:                                       ; preds = %if.end178.for.end187_crit_edge, %for.cond163.preheader.for.end187_crit_edge
  %port188 = getelementptr inbounds %struct._sas_port, ptr %call7.i.i, i32 0, i32 4
  %76 = ptrtoint ptr %port188 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call148, ptr %port188, align 4
  %77 = ptrtoint ptr %remote_identify to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %remote_identify, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp191 = icmp eq i32 %78, 1
  br i1 %cmp191, label %if.then193, label %if.else212

if.then193:                                       ; preds = %for.end187
  %call194 = tail call ptr @sas_end_device_alloc(ptr noundef %call148) #10
  %rphy195 = getelementptr inbounds %struct._sas_device, ptr %sas_device.0, i32 0, i32 26
  %79 = ptrtoint ptr %rphy195 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call194, ptr %rphy195, align 8
  %handle196 = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 4
  %80 = ptrtoint ptr %handle196 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %handle196, align 8
  %num_phys199 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 117, i32 2
  %82 = ptrtoint ptr %num_phys199 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %num_phys199, align 4
  %84 = zext i8 %83 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %81, i16 %84)
  %cmp201.not = icmp ugt i16 %81, %84
  br i1 %cmp201.not, label %if.then193.if.end228_crit_edge, label %if.then203

if.then193.if.end228_crit_edge:                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

if.then203:                                       ; preds = %if.then193
  %tobool204.not = icmp eq ptr %vphy.0.lcssa, null
  %sas_address206 = getelementptr inbounds %struct._sas_device, ptr %sas_device.0, i32 0, i32 2
  %85 = ptrtoint ptr %sas_address206 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %sas_address206, align 8
  br i1 %tobool204.not, label %if.then205, label %if.else

if.then205:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #12
  %sas_address207 = getelementptr inbounds %struct.hba_port, ptr %hba_port, i32 0, i32 1
  %87 = ptrtoint ptr %sas_address207 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %sas_address207, align 8
  br label %if.end228

if.else:                                          ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #12
  %sas_address209 = getelementptr inbounds %struct.virtual_phy, ptr %vphy.0.lcssa, i32 0, i32 1
  %88 = ptrtoint ptr %sas_address209 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %86, ptr %sas_address209, align 8
  br label %if.end228

if.else212:                                       ; preds = %for.end187
  %call215 = tail call ptr @sas_expander_alloc(ptr noundef %call148, i32 noundef %78) #10
  %handle216 = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 4
  %89 = ptrtoint ptr %handle216 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %handle216, align 8
  %num_phys219 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 117, i32 2
  %91 = ptrtoint ptr %num_phys219 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %num_phys219, align 4
  %93 = zext i8 %92 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %93)
  %cmp221.not = icmp ugt i16 %90, %93
  br i1 %cmp221.not, label %if.else212.if.end228_crit_edge, label %if.then223

if.else212.if.end228_crit_edge:                   ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

if.then223:                                       ; preds = %if.else212
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %sas_address58 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %sas_address58, align 8
  %sas_address226 = getelementptr inbounds %struct.hba_port, ptr %hba_port, i32 0, i32 1
  %96 = ptrtoint ptr %sas_address226 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %sas_address226, align 8
  br label %if.end228

if.end228:                                        ; preds = %if.then223, %if.else212.if.end228_crit_edge, %if.else, %if.then205, %if.then193.if.end228_crit_edge
  %rphy.0 = phi ptr [ %call194, %if.else ], [ %call194, %if.then205 ], [ %call194, %if.then193.if.end228_crit_edge ], [ %call215, %if.then223 ], [ %call215, %if.else212.if.end228_crit_edge ]
  %identify = getelementptr inbounds %struct.sas_rphy, ptr %rphy.0, i32 0, i32 1
  %97 = call ptr @memcpy(ptr %identify, ptr %remote_identify, i32 32)
  %call230 = tail call i32 @sas_rphy_add(ptr noundef %rphy.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %if.end228.if.end240_crit_edge, label %do.end235

if.end228.if.end240_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240

do.end235:                                        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #12
  %name237 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name237, ptr noundef nonnull @.str.2, i32 noundef 831, ptr noundef nonnull @.str.1) #13
  br label %if.end240

if.end240:                                        ; preds = %do.end235, %if.end228.if.end240_crit_edge
  %98 = ptrtoint ptr %remote_identify to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %remote_identify, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp243 = icmp eq i32 %99, 1
  br i1 %cmp243, label %if.then245, label %if.end240.do.end250_crit_edge

if.end240.do.end250_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end250

if.then245:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  %pend_sas_rphy_add246 = getelementptr inbounds %struct._sas_device, ptr %sas_device.0, i32 0, i32 18
  %100 = ptrtoint ptr %pend_sas_rphy_add246 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %pend_sas_rphy_add246, align 2
  tail call fastcc void @sas_device_put(ptr noundef %sas_device.0)
  br label %do.end250

do.end250:                                        ; preds = %if.then245, %if.end240.do.end250_crit_edge
  %conv252 = zext i16 %handle to i32
  %101 = ptrtoint ptr %sas_address58 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %sas_address58, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %rphy.0, ptr noundef nonnull @.str.30, i32 noundef %conv252, i64 noundef %102) #13
  %rphy255 = getelementptr inbounds %struct._sas_port, ptr %call7.i.i, i32 0, i32 3
  %103 = ptrtoint ptr %rphy255 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %rphy.0, ptr %rphy255, align 8
  %call265 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_node_lock) #10
  %sas_port_list = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 12
  %prev.i443 = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 12, i32 1
  %104 = ptrtoint ptr %prev.i443 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %prev.i443, align 4
  %call.i.i444 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %105, ptr noundef %sas_port_list) #10
  br i1 %call.i.i444, label %if.end.i.i446, label %do.end250.list_add_tail.exit447_crit_edge

do.end250.list_add_tail.exit447_crit_edge:        ; preds = %do.end250
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit447

if.end.i.i446:                                    ; preds = %do.end250
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %prev.i443 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call7.i.i, ptr %prev.i443, align 4
  %107 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %sas_port_list, ptr %call7.i.i, align 8
  %108 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %105, ptr %prev.i, align 4
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %call7.i.i, ptr %105, align 4
  br label %list_add_tail.exit447

list_add_tail.exit447:                            ; preds = %if.end.i.i446, %do.end250.list_add_tail.exit447_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_node_lock, i32 noundef %call265) #10
  %110 = ptrtoint ptr %remote_identify to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %remote_identify, align 8
  %112 = and i32 %111, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %112)
  %switch = icmp eq i32 %112, 2
  br i1 %switch, label %if.then280, label %list_add_tail.exit447.cleanup_crit_edge

list_add_tail.exit447.cleanup_crit_edge:          ; preds = %list_add_tail.exit447
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then280:                                       ; preds = %list_add_tail.exit447
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %sas_address58 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %sas_address58, align 8
  %add.ptr285 = getelementptr i8, ptr %rphy.0, i32 -56
  %port_id = getelementptr inbounds %struct.hba_port, ptr %hba_port, i32 0, i32 3
  %115 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %port_id, align 4
  tail call fastcc void @_transport_expander_report_manufacture(ptr noundef %ioc, i64 noundef %114, ptr noundef %add.ptr285, i8 noundef zeroext %116)
  br label %cleanup

out_fail:                                         ; preds = %do.end154, %do.end141, %do.end130, %do.end111, %do.end98, %do.end50, %do.end38, %do.end27
  %117 = ptrtoint ptr %phy_list to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %phy_list, align 4
  %cmp301.not460 = icmp eq ptr %118, %phy_list
  br i1 %cmp301.not460, label %out_fail.for.end312_crit_edge, label %out_fail.for.body304_crit_edge

out_fail.for.body304_crit_edge:                   ; preds = %out_fail
  br label %for.body304

out_fail.for.end312_crit_edge:                    ; preds = %out_fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end312

for.body304:                                      ; preds = %list_del.exit.for.body304_crit_edge, %out_fail.for.body304_crit_edge
  %mpt3sas_phy.1461 = phi ptr [ %next.0, %list_del.exit.for.body304_crit_edge ], [ %118, %out_fail.for.body304_crit_edge ]
  %119 = ptrtoint ptr %mpt3sas_phy.1461 to i32
  call void @__asan_load4_noabort(i32 %119)
  %next.0 = load ptr, ptr %mpt3sas_phy.1461, align 8
  %call.i.i448 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mpt3sas_phy.1461) #10
  br i1 %call.i.i448, label %if.end.i.i449, label %for.body304.list_del.exit_crit_edge

for.body304.list_del.exit_crit_edge:              ; preds = %for.body304
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i449:                                    ; preds = %for.body304
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mpt3sas_phy.1461, i32 0, i32 1
  %120 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i.i, align 4
  %122 = ptrtoint ptr %mpt3sas_phy.1461 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mpt3sas_phy.1461, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev1.i.i.i, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %123, ptr %121, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i449, %for.body304.list_del.exit_crit_edge
  %126 = ptrtoint ptr %mpt3sas_phy.1461 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr inttoptr (i32 256 to ptr), ptr %mpt3sas_phy.1461, align 4
  %prev.i450 = getelementptr inbounds %struct.list_head, ptr %mpt3sas_phy.1461, i32 0, i32 1
  %127 = ptrtoint ptr %prev.i450 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i450, align 4
  %cmp301.not = icmp eq ptr %next.0, %phy_list
  br i1 %cmp301.not, label %list_del.exit.for.end312_crit_edge, label %list_del.exit.for.body304_crit_edge

list_del.exit.for.body304_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body304

list_del.exit.for.end312_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end312

for.end312:                                       ; preds = %list_del.exit.for.end312_crit_edge, %out_fail.for.end312_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end312, %if.then280, %list_add_tail.exit447.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi ptr [ null, %for.end312 ], [ null, %do.end6 ], [ null, %do.end ], [ %call7.i.i, %list_add_tail.exit447.cleanup_crit_edge ], [ %call7.i.i, %if.then280 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_transport_set_identify(ptr noundef %ioc, i16 noundef zeroext %handle, ptr nocapture noundef %identify) unnamed_addr #0 align 64 {
entry:
  %sas_device_pg0 = alloca %struct._MPI2_CONFIG_PAGE_SAS_DEV_0, align 4
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %sas_device_pg0) #10
  %0 = call ptr @memset(ptr %sas_device_pg0, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #10
  %1 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %shost_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 27
  %2 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  %3 = ptrtoint ptr %shost_recovery to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shost_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %pci_error_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 34
  %5 = ptrtoint ptr %pci_error_recovery to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pci_error_recovery, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name, ptr noundef nonnull @.str.69) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv3 = zext i16 %handle to i32
  %call4 = call i32 @mpt3sas_config_get_sas_device_pg0(ptr noundef %ioc, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %sas_device_pg0, i32 noundef 536870912, i32 noundef %conv3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end14, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name11 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name11, ptr noundef nonnull @.str.2, i32 noundef 218, ptr noundef nonnull @.str.69) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 2
  %9 = and i16 %8, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not = icmp eq i16 %9, 0
  br i1 %cmp.not, label %if.end26, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  %and = zext i16 %10 to i32
  %name22 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name22, i32 noundef %conv3, i32 noundef %and, ptr noundef nonnull @.str.2, i32 noundef 226, ptr noundef nonnull @.str.69) #13
  br label %cleanup

if.end26:                                         ; preds = %if.end14
  %11 = call ptr @memset(ptr %identify, i32 0, i32 32)
  %DeviceInfo = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_SAS_DEV_0, ptr %sas_device_pg0, i32 0, i32 10
  %12 = ptrtoint ptr %DeviceInfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DeviceInfo, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %SASAddress = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_SAS_DEV_0, ptr %sas_device_pg0, i32 0, i32 3
  %15 = ptrtoint ptr %SASAddress to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %SASAddress, align 4
  %17 = call i64 @llvm.bswap.i64(i64 %16)
  %sas_address = getelementptr inbounds %struct.sas_identify, ptr %identify, i32 0, i32 3
  %18 = ptrtoint ptr %sas_address to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %sas_address, align 8
  %PhyNum = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_SAS_DEV_0, ptr %sas_device_pg0, i32 0, i32 5
  %19 = ptrtoint ptr %PhyNum to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %PhyNum, align 2
  %phy_identifier = getelementptr inbounds %struct.sas_identify, ptr %identify, i32 0, i32 4
  %21 = ptrtoint ptr %phy_identifier to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %phy_identifier, align 8
  %and27 = and i32 %14, 7
  %and27.off = add nsw i32 %and27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and27.off)
  %switch = icmp ult i32 %and27.off, 3
  br i1 %switch, label %sw.epilog.sink.split, label %if.end26.sw.epilog_crit_edge

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %identify to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and27, ptr %identify, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end26.sw.epilog_crit_edge
  %and34 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %sw.epilog.if.end37_crit_edge, label %if.then36

sw.epilog.if.end37_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then36:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %initiator_port_protocols = getelementptr inbounds %struct.sas_identify, ptr %identify, i32 0, i32 1
  %23 = ptrtoint ptr %initiator_port_protocols to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %initiator_port_protocols, align 4
  %or = or i32 %24, 8
  store i32 %or, ptr %initiator_port_protocols, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %sw.epilog.if.end37_crit_edge
  %and38 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end43_crit_edge, label %if.then40

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %initiator_port_protocols41 = getelementptr inbounds %struct.sas_identify, ptr %identify, i32 0, i32 1
  %25 = ptrtoint ptr %initiator_port_protocols41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %initiator_port_protocols41, align 4
  %or42 = or i32 %26, 4
  store i32 %or42, ptr %initiator_port_protocols41, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
  %and44 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end49_crit_edge, label %if.then46

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %initiator_port_protocols47 = getelementptr inbounds %struct.sas_identify, ptr %identify, i32 0, i32 1
  %27 = ptrtoint ptr %initiator_port_protocols47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %initiator_port_protocols47, align 4
  %or48 = or i32 %28, 2
  store i32 %or48, ptr %initiator_port_protocols47, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end43.if.end49_crit_edge
  %and50 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end55_crit_edge, label %if.then52

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %initiator_port_protocols53 = getelementptr inbounds %struct.sas_identify, ptr %identify, i32 0, i32 1
  %29 = ptrtoint ptr %initiator_port_protocols53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %initiator_port_protocols53, align 4
  %or54 = or i32 %30, 1
  store i32 %or54, ptr %initiator_port_protocols53, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end49.if.end55_crit_edge
  %and56 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end60_crit_edge, label %if.then58

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %target_port_protocols = getelementptr inbounds %struct.sas_identify, ptr %identify, i32 0, i32 2
  %31 = ptrtoint ptr %target_port_protocols to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %target_port_protocols, align 8
  %or59 = or i32 %32, 8
  store i32 %or59, ptr %target_port_protocols, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end55.if.end60_crit_edge
  %and61 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end66_crit_edge, label %if.then63

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %target_port_protocols64 = getelementptr inbounds %struct.sas_identify, ptr %identify, i32 0, i32 2
  %33 = ptrtoint ptr %target_port_protocols64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %target_port_protocols64, align 8
  %or65 = or i32 %34, 4
  store i32 %or65, ptr %target_port_protocols64, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end60.if.end66_crit_edge
  %and67 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end72_crit_edge, label %if.then69

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %target_port_protocols70 = getelementptr inbounds %struct.sas_identify, ptr %identify, i32 0, i32 2
  %35 = ptrtoint ptr %target_port_protocols70 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %target_port_protocols70, align 8
  %or71 = or i32 %36, 2
  store i32 %or71, ptr %target_port_protocols70, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end66.if.end72_crit_edge
  %and73 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.cleanup_crit_edge, label %if.then75

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %target_port_protocols76 = getelementptr inbounds %struct.sas_identify, ptr %identify, i32 0, i32 2
  %37 = ptrtoint ptr %target_port_protocols76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %target_port_protocols76, align 8
  %or77 = or i32 %38, 1
  store i32 %or77, ptr %target_port_protocols76, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %if.end72.cleanup_crit_edge, %do.end20, %do.end9, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ -6, %do.end9 ], [ -5, %do.end20 ], [ 0, %if.then75 ], [ 0, %if.end72.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %sas_device_pg0) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_get_vphy_by_phy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_get_sdev_by_addr(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_port_alloc_num(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_port_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_add_phy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_end_device_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_expander_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_rphy_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sas_device_put(ptr noundef %s) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %refcount = getelementptr inbounds %struct._sas_device, ptr %s, i32 0, i32 23
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !349
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !350
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !351

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !352
  tail call void @kfree(ptr noundef %s) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_transport_expander_report_manufacture(ptr noundef %ioc, i64 noundef %sas_address, ptr noundef %edev, i8 noundef zeroext %port_id) unnamed_addr #0 align 64 {
entry:
  %data_out_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_out_dma) #10
  %0 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data_out_dma, align 4, !annotation !353
  %shost_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 27
  %1 = ptrtoint ptr %shost_recovery to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %shost_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %pci_error_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 34
  %3 = ptrtoint ptr %pci_error_recovery to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pci_error_recovery, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name, ptr noundef nonnull @.str.75) #13
  br label %cleanup175

if.end:                                           ; preds = %lor.lhs.false
  %transport_cmds = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76
  tail call void @mutex_lock_nested(ptr noundef %transport_cmds, i32 noundef 0) #10
  %status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76, i32 4
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp.not = icmp eq i16 %6, -32768
  br i1 %cmp.not, label %if.end14, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name11 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name11, ptr noundef nonnull @.str.75) #13
  br label %out

if.end14:                                         ; preds = %if.end
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %status, align 4
  %call17 = tail call i32 @mpt3sas_wait_for_ioc(ptr noundef %ioc, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end20:                                         ; preds = %if.end14
  %transport_cb_idx = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 65
  %8 = ptrtoint ptr %transport_cb_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %transport_cb_idx, align 2
  %call21 = tail call zeroext i16 @mpt3sas_base_get_smid(ptr noundef %ioc, i8 noundef zeroext %9) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call21)
  %tobool22.not = icmp eq i16 %call21, 0
  br i1 %tobool22.not, label %do.end26, label %if.end31

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %name28 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name28, ptr noundef nonnull @.str.75) #13
  br label %out

if.end31:                                         ; preds = %if.end20
  %call32 = tail call ptr @mpt3sas_base_get_msg_frame(ptr noundef %ioc, i16 noundef zeroext %call21) #10
  %smid34 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76, i32 5
  %10 = ptrtoint ptr %smid34 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %call21, ptr %smid34, align 2
  %pdev = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 7
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 64, ptr noundef nonnull %data_out_dma, i32 noundef 3264, i32 noundef 0) #10
  %tobool36.not = icmp eq ptr %call.i, null
  br i1 %tobool36.not, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.2, i32 noundef 405, ptr noundef nonnull @.str.75) #13
  call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %call21) #10
  br label %out

if.end43:                                         ; preds = %if.end31
  %13 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_out_dma, align 4
  %add44 = add i32 %14, 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 64, ptr %call.i, align 1
  %function = getelementptr inbounds %struct.rep_manu_request, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %function to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %function, align 1
  %reserved = getelementptr inbounds %struct.rep_manu_request, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %reserved, align 1
  %request_length = getelementptr inbounds %struct.rep_manu_request, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %request_length to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %request_length, align 1
  %19 = call ptr @memset(ptr %call32, i32 0, i32 48)
  %Function = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32, i32 0, i32 3
  %20 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 26, ptr %Function, align 1
  %PhysicalPort = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32, i32 0, i32 1
  %21 = ptrtoint ptr %PhysicalPort to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %port_id, ptr %PhysicalPort, align 1
  %22 = call i64 @llvm.bswap.i64(i64 %sas_address)
  %SASAddress = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32, i32 0, i32 11
  %23 = ptrtoint ptr %SASAddress to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %SASAddress, align 4
  %RequestDataLength = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32, i32 0, i32 4
  %24 = ptrtoint ptr %RequestDataLength to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1024, ptr %RequestDataLength, align 4
  %SGL = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32, i32 0, i32 14
  %build_sg = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 83
  %25 = ptrtoint ptr %build_sg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %build_sg, align 8
  %27 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_out_dma, align 4
  call void %26(ptr noundef %ioc, ptr noundef %SGL, i32 noundef %28, i32 noundef 4, i32 noundef %add44, i32 noundef 60) #10
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %29 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %logging_level, align 8
  %and = and i32 %30, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.end43.if.end55_crit_edge, label %do.end50

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %name52 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name52, i64 noundef %sas_address) #13
  br label %if.end55

if.end55:                                         ; preds = %do.end50, %if.end43.if.end55_crit_edge
  %done = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76, i32 1
  %31 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @init_completion.__key) #10
  %put_smid_default = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 247
  %32 = ptrtoint ptr %put_smid_default to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %put_smid_default, align 8
  call void %33(ptr noundef %ioc, i16 noundef zeroext %call21) #10
  %call59 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 1000) #10
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %status, align 4
  %36 = and i16 %35, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool64.not = icmp eq i16 %36, 0
  br i1 %tobool64.not, label %do.end68, label %if.end80

do.end68:                                         ; preds = %if.end55
  %name70 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name70, ptr noundef nonnull @.str.75) #13
  call fastcc void @_debug_dump_mf(ptr noundef %call32)
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %status, align 4
  %39 = and i16 %38, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool77.not.not = icmp eq i16 %39, 0
  br i1 %tobool77.not.not, label %if.then162, label %do.end68.if.then168_crit_edge

do.end68.if.then168_crit_edge:                    ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then168

if.end80:                                         ; preds = %if.end55
  %40 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %logging_level, align 8
  %and82 = and i32 %41, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end80.if.end92_crit_edge, label %do.end87

if.end80.if.end92_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

do.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %name89 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name89) #13
  br label %if.end92

if.end92:                                         ; preds = %do.end87, %if.end80.if.end92_crit_edge
  %42 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %status, align 4
  %44 = and i16 %43, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool97.not = icmp eq i16 %44, 0
  br i1 %tobool97.not, label %if.else, label %if.then98

if.then98:                                        ; preds = %if.end92
  %reply = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76, i32 2
  %45 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reply, align 4
  %47 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %logging_level, align 8
  %and102 = and i32 %48, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.then98.if.end113_crit_edge, label %do.end107

if.then98.if.end113_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

do.end107:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  %name109 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %ResponseDataLength = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REPLY, ptr %46, i32 0, i32 4
  %49 = ptrtoint ptr %ResponseDataLength to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ResponseDataLength, align 4
  %51 = call i16 @llvm.bswap.i16(i16 %50)
  %conv111 = zext i16 %51 to i32
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %name109, i32 noundef %conv111) #13
  br label %if.end113

if.end113:                                        ; preds = %do.end107, %if.then98.if.end113_crit_edge
  %ResponseDataLength114 = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REPLY, ptr %46, i32 0, i32 4
  %52 = ptrtoint ptr %ResponseDataLength114 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ResponseDataLength114, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15360, i16 %53)
  %cmp116.not = icmp eq i16 %53, 15360
  br i1 %cmp116.not, label %if.end119, label %if.end113.if.then168_crit_edge

if.end113.if.then168_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then168

if.end119:                                        ; preds = %if.end113
  %vendor_id = getelementptr inbounds %struct.sas_expander_device, ptr %edev, i32 0, i32 2
  %vendor_id121 = getelementptr i8, ptr %call.i, i32 16
  %call123 = call ptr @strncpy(ptr noundef %vendor_id, ptr noundef %vendor_id121, i32 noundef 8)
  %product_id = getelementptr inbounds %struct.sas_expander_device, ptr %edev, i32 0, i32 3
  %product_id125 = getelementptr i8, ptr %call.i, i32 24
  %call127 = call ptr @strncpy(ptr noundef %product_id, ptr noundef %product_id125, i32 noundef 16)
  %product_rev = getelementptr inbounds %struct.sas_expander_device, ptr %edev, i32 0, i32 4
  %product_rev129 = getelementptr i8, ptr %call.i, i32 40
  %call131 = call ptr @strncpy(ptr noundef %product_rev, ptr noundef %product_rev129, i32 noundef 4)
  %sas_format = getelementptr i8, ptr %call.i, i32 12
  %54 = ptrtoint ptr %sas_format to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sas_format, align 2
  %56 = and i8 %55, 1
  %and133 = zext i8 %56 to i32
  %57 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and133, ptr %edev, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool135.not = icmp eq i8 %56, 0
  br i1 %tobool135.not, label %if.end119.if.then168_crit_edge, label %if.then136

if.end119.if.then168_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then168

if.then136:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #12
  %component_vendor_id = getelementptr inbounds %struct.sas_expander_device, ptr %edev, i32 0, i32 5
  %component_vendor_id138 = getelementptr i8, ptr %call.i, i32 44
  %call140 = call ptr @strncpy(ptr noundef %component_vendor_id, ptr noundef %component_vendor_id138, i32 noundef 8)
  %component_id = getelementptr i8, ptr %call.i, i32 52
  %58 = ptrtoint ptr %component_id to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %component_id, align 1
  %conv141 = zext i8 %59 to i16
  %shl = shl nuw i16 %conv141, 8
  %arrayidx142 = getelementptr i8, ptr %call.i, i32 53
  %60 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx142, align 1
  %conv143 = zext i8 %61 to i16
  %or = or i16 %shl, %conv143
  %component_id145 = getelementptr inbounds %struct.sas_expander_device, ptr %edev, i32 0, i32 6
  %62 = ptrtoint ptr %component_id145 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %or, ptr %component_id145, align 8
  %component_revision_id = getelementptr i8, ptr %call.i, i32 54
  %63 = ptrtoint ptr %component_revision_id to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %component_revision_id, align 2
  %component_revision_id146 = getelementptr inbounds %struct.sas_expander_device, ptr %edev, i32 0, i32 7
  %65 = ptrtoint ptr %component_revision_id146 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %component_revision_id146, align 2
  br label %if.then168

if.else:                                          ; preds = %if.end92
  %66 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %logging_level, align 8
  %and149 = and i32 %67, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.else.if.then168_crit_edge, label %do.end154

if.else.if.then168_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then168

do.end154:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %name156 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name156) #13
  br label %if.then168

if.then162:                                       ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #12
  %call163 = call i32 @mpt3sas_base_hard_reset_handler(ptr noundef %ioc, i32 noundef 0) #10
  br label %if.then168

out:                                              ; preds = %do.end40, %do.end26, %if.end14.out_crit_edge, %do.end9
  %68 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -32768, ptr %status, align 4
  br label %if.end172

if.then168:                                       ; preds = %if.then162, %do.end154, %if.else.if.then168_crit_edge, %if.then136, %if.end119.if.then168_crit_edge, %if.end113.if.then168_crit_edge, %do.end68.if.then168_crit_edge
  %69 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 -32768, ptr %status, align 4
  %70 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev, align 4
  %dev170 = getelementptr inbounds %struct.pci_dev, ptr %71, i32 0, i32 44
  %72 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %data_out_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev170, i32 noundef 64, ptr noundef nonnull %call.i, i32 noundef %73, i32 noundef 0) #10
  br label %if.end172

if.end172:                                        ; preds = %if.then168, %out
  call void @mutex_unlock(ptr noundef %transport_cmds) #10
  br label %cleanup175

cleanup175:                                       ; preds = %if.end172, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_out_dma) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_transport_port_remove(ptr noundef %ioc, i64 noundef %sas_address, i64 noundef %sas_address_parent, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %port, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1:                                         ; preds = %entry
  %sas_node_lock = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 120
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_node_lock) #10
  %sas_address1.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 117, i32 3
  %0 = ptrtoint ptr %sas_address1.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sas_address1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %sas_address_parent)
  %cmp.i = icmp eq i64 %1, %sas_address_parent
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %sas_hba.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 117
  br label %_transport_sas_node_find_by_sas_address.exit

if.else.i:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @mpt3sas_scsih_expander_find_by_sas_address(ptr noundef %ioc, i64 noundef %sas_address_parent, ptr noundef nonnull %port) #10
  br label %_transport_sas_node_find_by_sas_address.exit

_transport_sas_node_find_by_sas_address.exit:     ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %sas_hba.i, %if.then.i ], [ %call.i, %if.else.i ]
  %tobool6.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %_transport_sas_node_find_by_sas_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_node_lock, i32 noundef %call2) #10
  br label %cleanup

if.end9:                                          ; preds = %_transport_sas_node_find_by_sas_address.exit
  %sas_port_list = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 12
  %2 = ptrtoint ptr %sas_port_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sas_port_list, align 4
  %cmp18.not334 = icmp eq ptr %3, %sas_port_list
  br i1 %cmp18.not334, label %if.end9.if.then37.critedge_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.if.then37.critedge_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9.for.body_crit_edge
  %mpt3sas_port.0335 = phi ptr [ %next.0336, %for.inc.for.body_crit_edge ], [ %3, %if.end9.for.body_crit_edge ]
  %4 = ptrtoint ptr %mpt3sas_port.0335 to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.0336 = load ptr, ptr %mpt3sas_port.0335, align 8
  %sas_address20 = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.0335, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %sas_address20 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %sas_address20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %sas_address)
  %cmp21.not = icmp eq i64 %6, %sas_address
  br i1 %cmp21.not, label %if.end24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end24:                                         ; preds = %for.body
  %hba_port25 = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.0335, i32 0, i32 5
  %7 = ptrtoint ptr %hba_port25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hba_port25, align 8
  %cmp26.not = icmp eq ptr %8, %port
  br i1 %cmp26.not, label %if.end29, label %if.end24.for.inc_crit_edge

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end29:                                         ; preds = %if.end24
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mpt3sas_port.0335) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_del.exit_crit_edge

if.end29.list_del.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mpt3sas_port.0335, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %mpt3sas_port.0335 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mpt3sas_port.0335, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end29.list_del.exit_crit_edge
  %15 = ptrtoint ptr %mpt3sas_port.0335 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %mpt3sas_port.0335, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mpt3sas_port.0335, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %handle = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 4
  %17 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %handle, align 8
  %num_phys = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 117, i32 2
  %19 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_phys, align 4
  %21 = zext i8 %20 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %21)
  %cmp42.not = icmp ugt i16 %18, %21
  br i1 %cmp42.not, label %list_del.exit.if.end150_crit_edge, label %land.lhs.true

list_del.exit.if.end150_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

for.inc:                                          ; preds = %if.end24.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp18.not = icmp eq ptr %next.0336, %sas_port_list
  br i1 %cmp18.not, label %for.inc.if.then37.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.then37.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.critedge

if.then37.critedge:                               ; preds = %for.inc.if.then37.critedge_crit_edge, %if.end9.if.then37.critedge_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_node_lock, i32 noundef %call2) #10
  br label %cleanup

land.lhs.true:                                    ; preds = %list_del.exit
  %multipath_on_hba = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 249
  %22 = ptrtoint ptr %multipath_on_hba to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %multipath_on_hba, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool45.not = icmp eq i8 %23, 0
  br i1 %tobool45.not, label %land.lhs.true.if.end150_crit_edge, label %if.then46

land.lhs.true.if.end150_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then46:                                        ; preds = %land.lhs.true
  %vphys_mask = getelementptr inbounds %struct.hba_port, ptr %port, i32 0, i32 5
  %24 = ptrtoint ptr %vphys_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vphys_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool47.not = icmp eq i32 %25, 0
  br i1 %tobool47.not, label %if.then46.if.end84_crit_edge, label %if.then48

if.then46.if.end84_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then48:                                        ; preds = %if.then46
  %vphys_list = getelementptr inbounds %struct.hba_port, ptr %port, i32 0, i32 6
  %26 = ptrtoint ptr %vphys_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vphys_list, align 4
  %cmp60.not338 = icmp eq ptr %27, %vphys_list
  br i1 %cmp60.not338, label %if.then48.if.end84_crit_edge, label %for.body63.lr.ph

if.then48.if.end84_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

for.body63.lr.ph:                                 ; preds = %if.then48
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %port_id = getelementptr inbounds %struct.hba_port, ptr %port, i32 0, i32 3
  br label %for.body63

for.body63:                                       ; preds = %for.inc77.for.body63_crit_edge, %for.body63.lr.ph
  %vphy.0339 = phi ptr [ %27, %for.body63.lr.ph ], [ %vphy_next.0341, %for.inc77.for.body63_crit_edge ]
  %28 = ptrtoint ptr %vphy.0339 to i32
  call void @__asan_load4_noabort(i32 %28)
  %vphy_next.0341 = load ptr, ptr %vphy.0339, align 8
  %sas_address64 = getelementptr inbounds %struct.virtual_phy, ptr %vphy.0339, i32 0, i32 1
  %29 = ptrtoint ptr %sas_address64 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %sas_address64, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %sas_address)
  %cmp65.not = icmp eq i64 %30, %sas_address
  br i1 %cmp65.not, label %do.end71, label %for.body63.for.inc77_crit_edge

for.body63.for.inc77_crit_edge:                   ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc77

do.end71:                                         ; preds = %for.body63
  %31 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %port_id, align 4
  %conv73 = zext i8 %32 to i32
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name, ptr noundef %vphy.0339, ptr noundef nonnull %port, i32 noundef %conv73) #13
  %phy_mask = getelementptr inbounds %struct.virtual_phy, ptr %vphy.0339, i32 0, i32 2
  %33 = ptrtoint ptr %phy_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phy_mask, align 8
  %neg = xor i32 %34, -1
  %35 = ptrtoint ptr %vphys_mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vphys_mask, align 8
  %and = and i32 %36, %neg
  store i32 %and, ptr %vphys_mask, align 8
  %call.i.i311 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vphy.0339) #10
  br i1 %call.i.i311, label %if.end.i.i314, label %do.end71.list_del.exit316_crit_edge

do.end71.list_del.exit316_crit_edge:              ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit316

if.end.i.i314:                                    ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i312 = getelementptr inbounds %struct.list_head, ptr %vphy.0339, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i312 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i312, align 4
  %39 = ptrtoint ptr %vphy.0339 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vphy.0339, align 4
  %prev1.i.i.i313 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i313 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i313, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit316

list_del.exit316:                                 ; preds = %if.end.i.i314, %do.end71.list_del.exit316_crit_edge
  %43 = ptrtoint ptr %vphy.0339 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %vphy.0339, align 4
  %prev.i315 = getelementptr inbounds %struct.list_head, ptr %vphy.0339, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i315 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i315, align 4
  tail call void @kfree(ptr noundef %vphy.0339) #10
  br label %for.inc77

for.inc77:                                        ; preds = %list_del.exit316, %for.body63.for.inc77_crit_edge
  %cmp60.not = icmp eq ptr %vphy_next.0341, %vphys_list
  br i1 %cmp60.not, label %for.inc77.if.end84_crit_edge, label %for.inc77.for.body63_crit_edge

for.inc77.for.body63_crit_edge:                   ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body63

for.inc77.if.end84_crit_edge:                     ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.end84:                                         ; preds = %for.inc77.if.end84_crit_edge, %if.then48.if.end84_crit_edge, %if.then46.if.end84_crit_edge
  %port_table_list = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 250
  br label %for.cond94

for.cond94:                                       ; preds = %for.body100.for.cond94_crit_edge, %if.end84
  %hba_port.0.in = phi ptr [ %port_table_list, %if.end84 ], [ %hba_port.0, %for.body100.for.cond94_crit_edge ]
  %45 = ptrtoint ptr %hba_port.0.in to i32
  call void @__asan_load4_noabort(i32 %45)
  %hba_port.0 = load ptr, ptr %hba_port.0.in, align 4
  %cmp97.not = icmp eq ptr %hba_port.0, %port_table_list
  br i1 %cmp97.not, label %for.cond94.if.end150_crit_edge, label %for.body100

for.cond94.if.end150_crit_edge:                   ; preds = %for.cond94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

for.body100:                                      ; preds = %for.cond94
  %cmp101.not = icmp eq ptr %hba_port.0, %port
  br i1 %cmp101.not, label %if.end104, label %for.body100.for.cond94_crit_edge

for.body100.for.cond94_crit_edge:                 ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond94

if.end104:                                        ; preds = %for.body100
  %sas_address105 = getelementptr inbounds %struct.hba_port, ptr %port, i32 0, i32 1
  %46 = ptrtoint ptr %sas_address105 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %sas_address105, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %sas_address)
  %cmp106 = icmp eq i64 %47, %sas_address
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool109.not = icmp eq i64 %47, 0
  %or.cond = or i1 %cmp106, %tobool109.not
  br i1 %or.cond, label %land.lhs.true110, label %if.end104.if.else_crit_edge

if.end104.if.else_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true110:                                 ; preds = %if.end104
  %48 = ptrtoint ptr %vphys_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vphys_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool112.not = icmp eq i32 %49, 0
  br i1 %tobool112.not, label %do.end116, label %land.lhs.true110.if.else_crit_edge

land.lhs.true110.if.else_crit_edge:               ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.end116:                                        ; preds = %land.lhs.true110
  %name118 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %port_id120 = getelementptr inbounds %struct.hba_port, ptr %port, i32 0, i32 3
  %50 = ptrtoint ptr %port_id120 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %port_id120, align 4
  %conv121 = zext i8 %51 to i32
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name118, ptr noundef nonnull %port, i32 noundef %conv121) #13
  %call.i.i317 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %port) #10
  br i1 %call.i.i317, label %if.end.i.i320, label %do.end116.list_del.exit322_crit_edge

do.end116.list_del.exit322_crit_edge:             ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit322

if.end.i.i320:                                    ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i318 = getelementptr inbounds %struct.list_head, ptr %port, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i318 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i318, align 4
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port, align 4
  %prev1.i.i.i319 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i319 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i319, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del.exit322

list_del.exit322:                                 ; preds = %if.end.i.i320, %do.end116.list_del.exit322_crit_edge
  %58 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %port, align 4
  %prev.i321 = getelementptr inbounds %struct.list_head, ptr %port, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i321 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i321, align 4
  tail call void @kfree(ptr noundef nonnull %port) #10
  br label %if.end150

if.else:                                          ; preds = %land.lhs.true110.if.else_crit_edge, %if.end104.if.else_crit_edge
  br i1 %cmp106, label %land.lhs.true127, label %if.else.if.end150_crit_edge

if.else.if.end150_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

land.lhs.true127:                                 ; preds = %if.else
  %60 = ptrtoint ptr %vphys_mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vphys_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool129.not = icmp eq i32 %61, 0
  br i1 %tobool129.not, label %land.lhs.true127.if.end150_crit_edge, label %do.end133

land.lhs.true127.if.end150_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

do.end133:                                        ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #12
  %name135 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %port_id137 = getelementptr inbounds %struct.hba_port, ptr %port, i32 0, i32 3
  %62 = ptrtoint ptr %port_id137 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %port_id137, align 4
  %conv138 = zext i8 %63 to i32
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name135, ptr noundef nonnull %port, i32 noundef %conv138) #13
  %64 = ptrtoint ptr %sas_address105 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %sas_address105, align 8
  br label %if.end150

if.end150:                                        ; preds = %do.end133, %land.lhs.true127.if.end150_crit_edge, %if.else.if.end150_crit_edge, %list_del.exit322, %for.cond94.if.end150_crit_edge, %land.lhs.true.if.end150_crit_edge, %list_del.exit.if.end150_crit_edge
  %num_phys152 = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 2
  %65 = ptrtoint ptr %num_phys152 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %num_phys152, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %cmp154343.not = icmp eq i8 %66, 0
  br i1 %cmp154343.not, label %if.end150.for.end167_crit_edge, label %for.body156.lr.ph

if.end150.for.end167_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end167

for.body156.lr.ph:                                ; preds = %if.end150
  %phy = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 11
  br label %for.body156

for.body156:                                      ; preds = %for.inc166.for.body156_crit_edge, %for.body156.lr.ph
  %i.0344 = phi i32 [ 0, %for.body156.lr.ph ], [ %inc, %for.inc166.for.body156_crit_edge ]
  %67 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %phy, align 8
  %sas_address158 = getelementptr %struct._sas_phy, ptr %68, i32 %i.0344, i32 2, i32 3
  %69 = ptrtoint ptr %sas_address158 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %sas_address158, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %sas_address)
  %cmp159 = icmp eq i64 %70, %sas_address
  br i1 %cmp159, label %if.then161, label %for.body156.for.inc166_crit_edge

for.body156.for.inc166_crit_edge:                 ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc166

if.then161:                                       ; preds = %for.body156
  call void @__sanitizer_cov_trace_pc() #12
  %remote_identify157 = getelementptr %struct._sas_phy, ptr %68, i32 %i.0344, i32 2
  %71 = call ptr @memset(ptr %remote_identify157, i32 0, i32 32)
  br label %for.inc166

for.inc166:                                       ; preds = %if.then161, %for.body156.for.inc166_crit_edge
  %inc = add nuw nsw i32 %i.0344, 1
  %72 = ptrtoint ptr %num_phys152 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_phys152, align 4
  %conv153 = zext i8 %73 to i32
  %cmp154 = icmp ult i32 %inc, %conv153
  br i1 %cmp154, label %for.inc166.for.body156_crit_edge, label %for.inc166.for.end167_crit_edge

for.inc166.for.end167_crit_edge:                  ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end167

for.inc166.for.body156_crit_edge:                 ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body156

for.end167:                                       ; preds = %for.inc166.for.end167_crit_edge, %if.end150.for.end167_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_node_lock, i32 noundef %call2) #10
  %phy_list = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.0335, i32 0, i32 6
  %74 = ptrtoint ptr %phy_list to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %phy_list, align 4
  %cmp180.not347 = icmp eq ptr %75, %phy_list
  br i1 %cmp180.not347, label %for.end167.for.end207_crit_edge, label %for.body183.lr.ph

for.end167.for.end207_crit_edge:                  ; preds = %for.end167
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end207

for.body183.lr.ph:                                ; preds = %for.end167
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %port190 = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.0335, i32 0, i32 4
  %remove_host = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 33
  br label %for.body183

for.body183:                                      ; preds = %list_del.exit328.for.body183_crit_edge, %for.body183.lr.ph
  %mpt3sas_phy.0348 = phi ptr [ %75, %for.body183.lr.ph ], [ %next_phy.0350, %list_del.exit328.for.body183_crit_edge ]
  %76 = ptrtoint ptr %mpt3sas_phy.0348 to i32
  call void @__asan_load4_noabort(i32 %76)
  %next_phy.0350 = load ptr, ptr %mpt3sas_phy.0348, align 8
  %77 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %logging_level, align 8
  %and184 = and i32 %78, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %for.body183.if.end194_crit_edge, label %do.end189

for.body183.if.end194_crit_edge:                  ; preds = %for.body183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

do.end189:                                        ; preds = %for.body183
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %port190 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %port190, align 4
  %81 = ptrtoint ptr %sas_address20 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %sas_address20, align 8
  %phy_id = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy.0348, i32 0, i32 4
  %83 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %phy_id, align 4
  %conv193 = zext i8 %84 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.24, ptr noundef %80, ptr noundef nonnull @.str.41, i64 noundef %82, i32 noundef %conv193) #13
  br label %if.end194

if.end194:                                        ; preds = %do.end189, %for.body183.if.end194_crit_edge
  %phy_belongs_to_port = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy.0348, i32 0, i32 7
  %85 = ptrtoint ptr %phy_belongs_to_port to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %phy_belongs_to_port, align 2
  %86 = ptrtoint ptr %remove_host to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %remove_host, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool195.not = icmp eq i8 %87, 0
  br i1 %tobool195.not, label %if.then196, label %if.end194.if.end199_crit_edge

if.end194.if.end199_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

if.then196:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %port190 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %port190, align 4
  %phy198 = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy.0348, i32 0, i32 3
  %90 = ptrtoint ptr %phy198 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %phy198, align 8
  tail call void @sas_port_delete_phy(ptr noundef %89, ptr noundef %91) #10
  br label %if.end199

if.end199:                                        ; preds = %if.then196, %if.end194.if.end199_crit_edge
  %call.i.i323 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mpt3sas_phy.0348) #10
  br i1 %call.i.i323, label %if.end.i.i326, label %if.end199.list_del.exit328_crit_edge

if.end199.list_del.exit328_crit_edge:             ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit328

if.end.i.i326:                                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i324 = getelementptr inbounds %struct.list_head, ptr %mpt3sas_phy.0348, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i324 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i324, align 4
  %94 = ptrtoint ptr %mpt3sas_phy.0348 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mpt3sas_phy.0348, align 4
  %prev1.i.i.i325 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i.i325 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev1.i.i.i325, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %95, ptr %93, align 4
  br label %list_del.exit328

list_del.exit328:                                 ; preds = %if.end.i.i326, %if.end199.list_del.exit328_crit_edge
  %98 = ptrtoint ptr %mpt3sas_phy.0348 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 256 to ptr), ptr %mpt3sas_phy.0348, align 4
  %prev.i327 = getelementptr inbounds %struct.list_head, ptr %mpt3sas_phy.0348, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i327 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i327, align 4
  %cmp180.not = icmp eq ptr %next_phy.0350, %phy_list
  br i1 %cmp180.not, label %list_del.exit328.for.end207_crit_edge, label %list_del.exit328.for.body183_crit_edge

list_del.exit328.for.body183_crit_edge:           ; preds = %list_del.exit328
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body183

list_del.exit328.for.end207_crit_edge:            ; preds = %list_del.exit328
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end207

for.end207:                                       ; preds = %list_del.exit328.for.end207_crit_edge, %for.end167.for.end207_crit_edge
  %remove_host208 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 33
  %100 = ptrtoint ptr %remove_host208 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %remove_host208, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool209.not = icmp eq i8 %101, 0
  br i1 %tobool209.not, label %if.then210, label %for.end207.do.end215_crit_edge

for.end207.do.end215_crit_edge:                   ; preds = %for.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end215

if.then210:                                       ; preds = %for.end207
  call void @__sanitizer_cov_trace_pc() #12
  %port211 = getelementptr inbounds %struct._sas_port, ptr %mpt3sas_port.0335, i32 0, i32 4
  %102 = ptrtoint ptr %port211 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %port211, align 4
  tail call void @sas_port_delete(ptr noundef %103) #10
  br label %do.end215

do.end215:                                        ; preds = %if.then210, %for.end207.do.end215_crit_edge
  %name217 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name217, ptr noundef nonnull @.str.33, i64 noundef %sas_address) #13
  tail call void @kfree(ptr noundef %mpt3sas_port.0335) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end215, %if.then37.critedge, %if.then7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_delete_phy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_transport_add_host_phy(ptr noundef %ioc, ptr noundef %mpt3sas_phy, [8 x i32] %phy_pg0.coerce, ptr noundef %parent_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_pg0.coerce.fca.3.extract = extractvalue [8 x i32] %phy_pg0.coerce, 3
  %phy_pg0.sroa.3.12.extract.shift = lshr i32 %phy_pg0.coerce.fca.3.extract, 16
  %phy_pg0.sroa.3.12.extract.trunc = trunc i32 %phy_pg0.sroa.3.12.extract.shift to i16
  %phy_pg0.coerce.fca.5.extract = extractvalue [8 x i32] %phy_pg0.coerce, 5
  %phy_pg0.sroa.6.20.extract.shift = lshr i32 %phy_pg0.coerce.fca.5.extract, 24
  %phy_pg0.sroa.9.20.extract.shift = lshr i32 %phy_pg0.coerce.fca.5.extract, 16
  %phy_pg0.coerce.fca.7.extract = extractvalue [8 x i32] %phy_pg0.coerce, 7
  %phy_pg0.sroa.12.28.extract.shift = lshr i32 %phy_pg0.coerce.fca.7.extract, 24
  %phy_id = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 4
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_id, align 4
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %mpt3sas_phy to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mpt3sas_phy, ptr %mpt3sas_phy, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mpt3sas_phy, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mpt3sas_phy, ptr %prev.i, align 4
  %call = tail call ptr @sas_phy_alloc(ptr noundef %parent_dev, i32 noundef %conv) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.2, i32 noundef 1021, ptr noundef nonnull @.str.46) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %handle = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 5
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %handle, align 2
  %identify = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 1
  %call2 = tail call fastcc i32 @_transport_set_identify(ptr noundef %ioc, i16 noundef zeroext %5, ptr noundef %identify)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end12, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name9 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name9, ptr noundef nonnull @.str.2, i32 noundef 1027, ptr noundef nonnull @.str.46) #13
  tail call void @sas_phy_free(ptr noundef nonnull %call) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %identify13 = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %identify13, ptr %identify, i32 32)
  %7 = tail call i16 @llvm.bswap.i16(i16 %phy_pg0.sroa.3.12.extract.trunc)
  %attached_handle = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 6
  %8 = ptrtoint ptr %attached_handle to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %attached_handle, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %phy_pg0.sroa.3.12.extract.trunc)
  %tobool16.not = icmp eq i16 %phy_pg0.sroa.3.12.extract.trunc, 0
  br i1 %tobool16.not, label %if.end12.if.end20_crit_edge, label %if.then17

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %remote_identify = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 2
  %call19 = tail call fastcc i32 @_transport_set_identify(ptr noundef %ioc, i16 noundef zeroext %7, ptr noundef %remote_identify)
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end12.if.end20_crit_edge
  %9 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %phy_id, align 4
  %phy_identifier = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %phy_identifier to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %phy_identifier, align 8
  %12 = trunc i32 %phy_pg0.sroa.12.28.extract.shift to i4
  %switch.tableidx = xor i4 %12, -8
  %13 = sext i4 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %13)
  %14 = icmp ult i4 %switch.tableidx, -2
  br i1 %14, label %switch.lookup, label %if.end20._transport_convert_phy_link_rate.exit_crit_edge

if.end20._transport_convert_phy_link_rate.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_convert_phy_link_rate.exit

switch.lookup:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %15 = zext i4 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.mpt3sas_transport_add_host_phy, i32 0, i32 %15
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_transport_convert_phy_link_rate.exit

_transport_convert_phy_link_rate.exit:            ; preds = %switch.lookup, %if.end20._transport_convert_phy_link_rate.exit_crit_edge
  %rc.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end20._transport_convert_phy_link_rate.exit_crit_edge ]
  %negotiated_linkrate = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %negotiated_linkrate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %rc.0.i, ptr %negotiated_linkrate, align 8
  %18 = trunc i32 %phy_pg0.sroa.9.20.extract.shift to i4
  %switch.tableidx146 = xor i4 %18, -8
  %19 = sext i4 %switch.tableidx146 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %19)
  %20 = icmp ult i4 %switch.tableidx146, -2
  br i1 %20, label %switch.lookup145, label %_transport_convert_phy_link_rate.exit._transport_convert_phy_link_rate.exit114_crit_edge

_transport_convert_phy_link_rate.exit._transport_convert_phy_link_rate.exit114_crit_edge: ; preds = %_transport_convert_phy_link_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_convert_phy_link_rate.exit114

switch.lookup145:                                 ; preds = %_transport_convert_phy_link_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %21 = zext i4 %switch.tableidx146 to i32
  %switch.gep148 = getelementptr inbounds [14 x i32], ptr @switch.table.mpt3sas_transport_add_host_phy.209, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep148 to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load149 = load i32, ptr %switch.gep148, align 4
  br label %_transport_convert_phy_link_rate.exit114

_transport_convert_phy_link_rate.exit114:         ; preds = %switch.lookup145, %_transport_convert_phy_link_rate.exit._transport_convert_phy_link_rate.exit114_crit_edge
  %rc.0.i113 = phi i32 [ %switch.load149, %switch.lookup145 ], [ 0, %_transport_convert_phy_link_rate.exit._transport_convert_phy_link_rate.exit114_crit_edge ]
  %minimum_linkrate_hw = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 5
  %23 = ptrtoint ptr %minimum_linkrate_hw to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %rc.0.i113, ptr %minimum_linkrate_hw, align 4
  %conv26 = lshr i32 %phy_pg0.coerce.fca.5.extract, 20
  %24 = trunc i32 %conv26 to i4
  %switch.tableidx151 = xor i4 %24, -8
  %25 = sext i4 %switch.tableidx151 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %25)
  %26 = icmp ult i4 %switch.tableidx151, -2
  br i1 %26, label %switch.lookup150, label %_transport_convert_phy_link_rate.exit114._transport_convert_phy_link_rate.exit124_crit_edge

_transport_convert_phy_link_rate.exit114._transport_convert_phy_link_rate.exit124_crit_edge: ; preds = %_transport_convert_phy_link_rate.exit114
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_convert_phy_link_rate.exit124

switch.lookup150:                                 ; preds = %_transport_convert_phy_link_rate.exit114
  call void @__sanitizer_cov_trace_pc() #12
  %27 = zext i4 %switch.tableidx151 to i32
  %switch.gep153 = getelementptr inbounds [14 x i32], ptr @switch.table.mpt3sas_transport_add_host_phy.210, i32 0, i32 %27
  %28 = ptrtoint ptr %switch.gep153 to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load154 = load i32, ptr %switch.gep153, align 4
  br label %_transport_convert_phy_link_rate.exit124

_transport_convert_phy_link_rate.exit124:         ; preds = %switch.lookup150, %_transport_convert_phy_link_rate.exit114._transport_convert_phy_link_rate.exit124_crit_edge
  %rc.0.i123 = phi i32 [ %switch.load154, %switch.lookup150 ], [ 0, %_transport_convert_phy_link_rate.exit114._transport_convert_phy_link_rate.exit124_crit_edge ]
  %maximum_linkrate_hw = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 7
  %29 = ptrtoint ptr %maximum_linkrate_hw to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rc.0.i123, ptr %maximum_linkrate_hw, align 4
  %30 = trunc i32 %phy_pg0.sroa.6.20.extract.shift to i4
  %switch.tableidx156 = xor i4 %30, -8
  %31 = sext i4 %switch.tableidx156 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %31)
  %32 = icmp ult i4 %switch.tableidx156, -2
  br i1 %32, label %switch.lookup155, label %_transport_convert_phy_link_rate.exit124._transport_convert_phy_link_rate.exit134_crit_edge

_transport_convert_phy_link_rate.exit124._transport_convert_phy_link_rate.exit134_crit_edge: ; preds = %_transport_convert_phy_link_rate.exit124
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_convert_phy_link_rate.exit134

switch.lookup155:                                 ; preds = %_transport_convert_phy_link_rate.exit124
  call void @__sanitizer_cov_trace_pc() #12
  %33 = zext i4 %switch.tableidx156 to i32
  %switch.gep158 = getelementptr inbounds [14 x i32], ptr @switch.table.mpt3sas_transport_add_host_phy.211, i32 0, i32 %33
  %34 = ptrtoint ptr %switch.gep158 to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load159 = load i32, ptr %switch.gep158, align 4
  br label %_transport_convert_phy_link_rate.exit134

_transport_convert_phy_link_rate.exit134:         ; preds = %switch.lookup155, %_transport_convert_phy_link_rate.exit124._transport_convert_phy_link_rate.exit134_crit_edge
  %rc.0.i133 = phi i32 [ %switch.load159, %switch.lookup155 ], [ 0, %_transport_convert_phy_link_rate.exit124._transport_convert_phy_link_rate.exit134_crit_edge ]
  %minimum_linkrate = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 6
  %35 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %rc.0.i133, ptr %minimum_linkrate, align 8
  %36 = lshr i32 %phy_pg0.coerce.fca.5.extract, 28
  %trunc = trunc i32 %36 to i4
  %switch.tableidx161 = xor i4 %trunc, -8
  %37 = sext i4 %switch.tableidx161 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %37)
  %38 = icmp ult i4 %switch.tableidx161, -2
  br i1 %38, label %switch.lookup160, label %_transport_convert_phy_link_rate.exit134._transport_convert_phy_link_rate.exit144_crit_edge

_transport_convert_phy_link_rate.exit134._transport_convert_phy_link_rate.exit144_crit_edge: ; preds = %_transport_convert_phy_link_rate.exit134
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_convert_phy_link_rate.exit144

switch.lookup160:                                 ; preds = %_transport_convert_phy_link_rate.exit134
  call void @__sanitizer_cov_trace_pc() #12
  %39 = zext i4 %switch.tableidx161 to i32
  %switch.gep163 = getelementptr inbounds [14 x i32], ptr @switch.table.mpt3sas_transport_add_host_phy.212, i32 0, i32 %39
  %40 = ptrtoint ptr %switch.gep163 to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load164 = load i32, ptr %switch.gep163, align 4
  br label %_transport_convert_phy_link_rate.exit144

_transport_convert_phy_link_rate.exit144:         ; preds = %switch.lookup160, %_transport_convert_phy_link_rate.exit134._transport_convert_phy_link_rate.exit144_crit_edge
  %rc.0.i143 = phi i32 [ %switch.load164, %switch.lookup160 ], [ 0, %_transport_convert_phy_link_rate.exit134._transport_convert_phy_link_rate.exit144_crit_edge ]
  %maximum_linkrate = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 8
  %41 = ptrtoint ptr %maximum_linkrate to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %rc.0.i143, ptr %maximum_linkrate, align 8
  %port = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 9
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port, align 4
  %hostdata = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 14
  %44 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %hostdata, align 4
  %call43 = tail call i32 @sas_phy_add(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end53, label %do.end48

do.end48:                                         ; preds = %_transport_convert_phy_link_rate.exit144
  call void @__sanitizer_cov_trace_pc() #12
  %name50 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name50, ptr noundef nonnull @.str.2, i32 noundef 1051, ptr noundef nonnull @.str.46) #13
  tail call void @sas_phy_free(ptr noundef nonnull %call) #10
  br label %cleanup

if.end53:                                         ; preds = %_transport_convert_phy_link_rate.exit144
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %45 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %logging_level, align 8
  %and54 = and i32 %46, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.if.end67_crit_edge, label %do.end59

if.end53.if.end67_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %handle, align 2
  %conv61 = zext i16 %48 to i32
  %sas_address = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %sas_address, align 8
  %51 = ptrtoint ptr %attached_handle to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %attached_handle, align 8
  %conv64 = zext i16 %52 to i32
  %sas_address66 = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 2, i32 3
  %53 = ptrtoint ptr %sas_address66 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %sas_address66, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %call, ptr noundef nonnull @.str.52, i32 noundef %conv61, i64 noundef %50, i32 noundef %conv64, i64 noundef %54) #13
  br label %if.end67

if.end67:                                         ; preds = %do.end59, %if.end53.if.end67_crit_edge
  %phy68 = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 3
  %55 = ptrtoint ptr %phy68 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call, ptr %phy68, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %do.end48, %do.end7, %do.end
  %retval.0 = phi i32 [ -1, %do.end7 ], [ -1, %do.end48 ], [ 0, %if.end67 ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_phy_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_phy_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_phy_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_transport_add_expander_phy(ptr noundef %ioc, ptr noundef %mpt3sas_phy, [11 x i32] %expander_pg1.coerce, ptr noundef %parent_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %expander_pg1.coerce.fca.4.extract = extractvalue [11 x i32] %expander_pg1.coerce, 4
  %expander_pg1.sroa.4.16.extract.shift = lshr i32 %expander_pg1.coerce.fca.4.extract, 24
  %expander_pg1.sroa.7.16.extract.shift = lshr i32 %expander_pg1.coerce.fca.4.extract, 16
  %expander_pg1.sroa.9.16.extract.trunc = trunc i32 %expander_pg1.coerce.fca.4.extract to i16
  %expander_pg1.coerce.fca.7.extract = extractvalue [11 x i32] %expander_pg1.coerce, 7
  %phy_id = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 4
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_id, align 4
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %mpt3sas_phy to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mpt3sas_phy, ptr %mpt3sas_phy, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mpt3sas_phy, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mpt3sas_phy, ptr %prev.i, align 4
  %call = tail call ptr @sas_phy_alloc(ptr noundef %parent_dev, i32 noundef %conv) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.2, i32 noundef 1090, ptr noundef nonnull @.str.54) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %handle = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 5
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %handle, align 2
  %identify = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 1
  %call2 = tail call fastcc i32 @_transport_set_identify(ptr noundef %ioc, i16 noundef zeroext %5, ptr noundef %identify)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end12, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name9 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name9, ptr noundef nonnull @.str.2, i32 noundef 1096, ptr noundef nonnull @.str.54) #13
  tail call void @sas_phy_free(ptr noundef nonnull %call) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %identify13 = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %identify13, ptr %identify, i32 32)
  %7 = tail call i16 @llvm.bswap.i16(i16 %expander_pg1.sroa.9.16.extract.trunc)
  %attached_handle = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 6
  %8 = ptrtoint ptr %attached_handle to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %attached_handle, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %expander_pg1.sroa.9.16.extract.trunc)
  %tobool16.not = icmp eq i16 %expander_pg1.sroa.9.16.extract.trunc, 0
  br i1 %tobool16.not, label %if.end12.if.end20_crit_edge, label %if.then17

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %remote_identify = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 2
  %call19 = tail call fastcc i32 @_transport_set_identify(ptr noundef %ioc, i16 noundef zeroext %7, ptr noundef %remote_identify)
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end12.if.end20_crit_edge
  %9 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %phy_id, align 4
  %phy_identifier = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %phy_identifier to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %phy_identifier, align 8
  %12 = trunc i32 %expander_pg1.coerce.fca.7.extract to i4
  %switch.tableidx = xor i4 %12, -8
  %13 = sext i4 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %13)
  %14 = icmp ult i4 %switch.tableidx, -2
  br i1 %14, label %switch.lookup, label %if.end20._transport_convert_phy_link_rate.exit_crit_edge

if.end20._transport_convert_phy_link_rate.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_convert_phy_link_rate.exit

switch.lookup:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %15 = zext i4 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.mpt3sas_transport_add_expander_phy, i32 0, i32 %15
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_transport_convert_phy_link_rate.exit

_transport_convert_phy_link_rate.exit:            ; preds = %switch.lookup, %if.end20._transport_convert_phy_link_rate.exit_crit_edge
  %rc.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end20._transport_convert_phy_link_rate.exit_crit_edge ]
  %negotiated_linkrate = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %negotiated_linkrate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %rc.0.i, ptr %negotiated_linkrate, align 8
  %18 = trunc i32 %expander_pg1.sroa.7.16.extract.shift to i4
  %switch.tableidx146 = xor i4 %18, -8
  %19 = sext i4 %switch.tableidx146 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %19)
  %20 = icmp ult i4 %switch.tableidx146, -2
  br i1 %20, label %switch.lookup145, label %_transport_convert_phy_link_rate.exit._transport_convert_phy_link_rate.exit114_crit_edge

_transport_convert_phy_link_rate.exit._transport_convert_phy_link_rate.exit114_crit_edge: ; preds = %_transport_convert_phy_link_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_convert_phy_link_rate.exit114

switch.lookup145:                                 ; preds = %_transport_convert_phy_link_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %21 = zext i4 %switch.tableidx146 to i32
  %switch.gep148 = getelementptr inbounds [14 x i32], ptr @switch.table.mpt3sas_transport_add_expander_phy.213, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep148 to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load149 = load i32, ptr %switch.gep148, align 4
  br label %_transport_convert_phy_link_rate.exit114

_transport_convert_phy_link_rate.exit114:         ; preds = %switch.lookup145, %_transport_convert_phy_link_rate.exit._transport_convert_phy_link_rate.exit114_crit_edge
  %rc.0.i113 = phi i32 [ %switch.load149, %switch.lookup145 ], [ 0, %_transport_convert_phy_link_rate.exit._transport_convert_phy_link_rate.exit114_crit_edge ]
  %minimum_linkrate_hw = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 5
  %23 = ptrtoint ptr %minimum_linkrate_hw to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %rc.0.i113, ptr %minimum_linkrate_hw, align 4
  %conv26 = lshr i32 %expander_pg1.coerce.fca.4.extract, 20
  %24 = trunc i32 %conv26 to i4
  %switch.tableidx151 = xor i4 %24, -8
  %25 = sext i4 %switch.tableidx151 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %25)
  %26 = icmp ult i4 %switch.tableidx151, -2
  br i1 %26, label %switch.lookup150, label %_transport_convert_phy_link_rate.exit114._transport_convert_phy_link_rate.exit124_crit_edge

_transport_convert_phy_link_rate.exit114._transport_convert_phy_link_rate.exit124_crit_edge: ; preds = %_transport_convert_phy_link_rate.exit114
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_convert_phy_link_rate.exit124

switch.lookup150:                                 ; preds = %_transport_convert_phy_link_rate.exit114
  call void @__sanitizer_cov_trace_pc() #12
  %27 = zext i4 %switch.tableidx151 to i32
  %switch.gep153 = getelementptr inbounds [14 x i32], ptr @switch.table.mpt3sas_transport_add_expander_phy.214, i32 0, i32 %27
  %28 = ptrtoint ptr %switch.gep153 to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load154 = load i32, ptr %switch.gep153, align 4
  br label %_transport_convert_phy_link_rate.exit124

_transport_convert_phy_link_rate.exit124:         ; preds = %switch.lookup150, %_transport_convert_phy_link_rate.exit114._transport_convert_phy_link_rate.exit124_crit_edge
  %rc.0.i123 = phi i32 [ %switch.load154, %switch.lookup150 ], [ 0, %_transport_convert_phy_link_rate.exit114._transport_convert_phy_link_rate.exit124_crit_edge ]
  %maximum_linkrate_hw = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 7
  %29 = ptrtoint ptr %maximum_linkrate_hw to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rc.0.i123, ptr %maximum_linkrate_hw, align 4
  %30 = trunc i32 %expander_pg1.sroa.4.16.extract.shift to i4
  %switch.tableidx156 = xor i4 %30, -8
  %31 = sext i4 %switch.tableidx156 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %31)
  %32 = icmp ult i4 %switch.tableidx156, -2
  br i1 %32, label %switch.lookup155, label %_transport_convert_phy_link_rate.exit124._transport_convert_phy_link_rate.exit134_crit_edge

_transport_convert_phy_link_rate.exit124._transport_convert_phy_link_rate.exit134_crit_edge: ; preds = %_transport_convert_phy_link_rate.exit124
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_convert_phy_link_rate.exit134

switch.lookup155:                                 ; preds = %_transport_convert_phy_link_rate.exit124
  call void @__sanitizer_cov_trace_pc() #12
  %33 = zext i4 %switch.tableidx156 to i32
  %switch.gep158 = getelementptr inbounds [14 x i32], ptr @switch.table.mpt3sas_transport_add_expander_phy.215, i32 0, i32 %33
  %34 = ptrtoint ptr %switch.gep158 to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load159 = load i32, ptr %switch.gep158, align 4
  br label %_transport_convert_phy_link_rate.exit134

_transport_convert_phy_link_rate.exit134:         ; preds = %switch.lookup155, %_transport_convert_phy_link_rate.exit124._transport_convert_phy_link_rate.exit134_crit_edge
  %rc.0.i133 = phi i32 [ %switch.load159, %switch.lookup155 ], [ 0, %_transport_convert_phy_link_rate.exit124._transport_convert_phy_link_rate.exit134_crit_edge ]
  %minimum_linkrate = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 6
  %35 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %rc.0.i133, ptr %minimum_linkrate, align 8
  %36 = lshr i32 %expander_pg1.coerce.fca.4.extract, 28
  %trunc = trunc i32 %36 to i4
  %switch.tableidx161 = xor i4 %trunc, -8
  %37 = sext i4 %switch.tableidx161 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %37)
  %38 = icmp ult i4 %switch.tableidx161, -2
  br i1 %38, label %switch.lookup160, label %_transport_convert_phy_link_rate.exit134._transport_convert_phy_link_rate.exit144_crit_edge

_transport_convert_phy_link_rate.exit134._transport_convert_phy_link_rate.exit144_crit_edge: ; preds = %_transport_convert_phy_link_rate.exit134
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_convert_phy_link_rate.exit144

switch.lookup160:                                 ; preds = %_transport_convert_phy_link_rate.exit134
  call void @__sanitizer_cov_trace_pc() #12
  %39 = zext i4 %switch.tableidx161 to i32
  %switch.gep163 = getelementptr inbounds [14 x i32], ptr @switch.table.mpt3sas_transport_add_expander_phy.216, i32 0, i32 %39
  %40 = ptrtoint ptr %switch.gep163 to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load164 = load i32, ptr %switch.gep163, align 4
  br label %_transport_convert_phy_link_rate.exit144

_transport_convert_phy_link_rate.exit144:         ; preds = %switch.lookup160, %_transport_convert_phy_link_rate.exit134._transport_convert_phy_link_rate.exit144_crit_edge
  %rc.0.i143 = phi i32 [ %switch.load164, %switch.lookup160 ], [ 0, %_transport_convert_phy_link_rate.exit134._transport_convert_phy_link_rate.exit144_crit_edge ]
  %maximum_linkrate = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 8
  %41 = ptrtoint ptr %maximum_linkrate to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %rc.0.i143, ptr %maximum_linkrate, align 8
  %port = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 9
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port, align 4
  %hostdata = getelementptr inbounds %struct.sas_phy, ptr %call, i32 0, i32 14
  %44 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %hostdata, align 4
  %call43 = tail call i32 @sas_phy_add(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end53, label %do.end48

do.end48:                                         ; preds = %_transport_convert_phy_link_rate.exit144
  call void @__sanitizer_cov_trace_pc() #12
  %name50 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name50, ptr noundef nonnull @.str.2, i32 noundef 1122, ptr noundef nonnull @.str.54) #13
  tail call void @sas_phy_free(ptr noundef nonnull %call) #10
  br label %cleanup

if.end53:                                         ; preds = %_transport_convert_phy_link_rate.exit144
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %45 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %logging_level, align 8
  %and54 = and i32 %46, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.if.end67_crit_edge, label %do.end59

if.end53.if.end67_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %handle, align 2
  %conv61 = zext i16 %48 to i32
  %sas_address = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %sas_address, align 8
  %51 = ptrtoint ptr %attached_handle to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %attached_handle, align 8
  %conv64 = zext i16 %52 to i32
  %sas_address66 = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 2, i32 3
  %53 = ptrtoint ptr %sas_address66 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %sas_address66, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %call, ptr noundef nonnull @.str.52, i32 noundef %conv61, i64 noundef %50, i32 noundef %conv64, i64 noundef %54) #13
  br label %if.end67

if.end67:                                         ; preds = %do.end59, %if.end53.if.end67_crit_edge
  %phy68 = getelementptr inbounds %struct._sas_phy, ptr %mpt3sas_phy, i32 0, i32 3
  %55 = ptrtoint ptr %phy68 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call, ptr %phy68, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %do.end48, %do.end7, %do.end
  %retval.0 = phi i32 [ -1, %do.end7 ], [ -1, %do.end48 ], [ 0, %if.end67 ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_transport_update_links(ptr noundef %ioc, i64 noundef %sas_address, i16 noundef zeroext %handle, i8 noundef zeroext %phy_number, i8 noundef zeroext %link_rate, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shost_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 27
  %0 = ptrtoint ptr %shost_recovery to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %shost_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pci_error_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 34
  %2 = ptrtoint ptr %pci_error_recovery to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pci_error_recovery, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %do.body3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false
  %sas_node_lock = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 120
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_node_lock) #10
  %sas_address1.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 117, i32 3
  %4 = ptrtoint ptr %sas_address1.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sas_address1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %sas_address)
  %cmp.i = icmp eq i64 %5, %sas_address
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %sas_hba.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 117
  br label %_transport_sas_node_find_by_sas_address.exit

if.else.i:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @mpt3sas_scsih_expander_find_by_sas_address(ptr noundef %ioc, i64 noundef %sas_address, ptr noundef %port) #10
  br label %_transport_sas_node_find_by_sas_address.exit

_transport_sas_node_find_by_sas_address.exit:     ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %sas_hba.i, %if.then.i ], [ %call.i, %if.else.i ]
  %tobool9.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %_transport_sas_node_find_by_sas_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_node_lock, i32 noundef %call5) #10
  br label %cleanup

if.end12:                                         ; preds = %_transport_sas_node_find_by_sas_address.exit
  %phy = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 11
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 8
  %idxprom = zext i8 %phy_number to i32
  %arrayidx = getelementptr %struct._sas_phy, ptr %7, i32 %idxprom
  %attached_handle = getelementptr %struct._sas_phy, ptr %7, i32 %idxprom, i32 6
  %8 = ptrtoint ptr %attached_handle to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %handle, ptr %attached_handle, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_node_lock, i32 noundef %call5) #10
  %conv14 = zext i16 %handle to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %handle)
  %tobool15.not = icmp ne i16 %handle, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %link_rate)
  %cmp17 = icmp ugt i8 %link_rate, 7
  %or.cond = and i1 %tobool15.not, %cmp17
  %remote_identify = getelementptr %struct._sas_phy, ptr %7, i32 %idxprom, i32 2
  br i1 %or.cond, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end12
  %call20 = tail call fastcc i32 @_transport_set_identify(ptr noundef %ioc, i16 noundef zeroext %handle, ptr noundef %remote_identify)
  %handle21 = getelementptr inbounds %struct._sas_node, ptr %retval.0.i, i32 0, i32 4
  %9 = ptrtoint ptr %handle21 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %handle21, align 8
  %num_phys = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 117, i32 2
  %11 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_phys, align 4
  %13 = zext i8 %12 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %13)
  %cmp24.not = icmp ugt i16 %10, %13
  br i1 %cmp24.not, label %if.then19.if.end48_crit_edge, label %land.lhs.true26

if.then19.if.end48_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

land.lhs.true26:                                  ; preds = %if.then19
  %multipath_on_hba = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 249
  %14 = ptrtoint ptr %multipath_on_hba to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %multipath_on_hba, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool28.not = icmp eq i8 %15, 0
  br i1 %tobool28.not, label %land.lhs.true26.if.end48_crit_edge, label %if.then29

land.lhs.true26.if.end48_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then29:                                        ; preds = %land.lhs.true26
  %port_table_list = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 250
  %16 = ptrtoint ptr %port_table_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %hba_port.0114 = load ptr, ptr %port_table_list, align 4
  %cmp32.not115 = icmp eq ptr %hba_port.0114, %port_table_list
  br i1 %cmp32.not115, label %if.then29.if.end48_crit_edge, label %for.body.lr.ph

if.then29.if.end48_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

for.body.lr.ph:                                   ; preds = %if.then29
  %phy_id = getelementptr %struct._sas_phy, ptr %7, i32 %idxprom, i32 4
  %phy_mask = getelementptr inbounds %struct.hba_port, ptr %port, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %hba_port.0116 = phi ptr [ %hba_port.0114, %for.body.lr.ph ], [ %hba_port.0, %for.inc.for.body_crit_edge ]
  %sas_address34 = getelementptr inbounds %struct.hba_port, ptr %hba_port.0116, i32 0, i32 1
  %17 = ptrtoint ptr %sas_address34 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sas_address34, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %sas_address)
  %cmp35 = icmp eq i64 %18, %sas_address
  %cmp38 = icmp eq ptr %hba_port.0116, %port
  %or.cond113 = select i1 %cmp35, i1 %cmp38, i1 false
  br i1 %or.cond113, label %if.then40, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %phy_id, align 4
  %conv41 = zext i8 %20 to i32
  %shl = shl nuw i32 1, %conv41
  %21 = ptrtoint ptr %phy_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phy_mask, align 8
  %or = or i32 %shl, %22
  store i32 %or, ptr %phy_mask, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %hba_port.0116 to i32
  call void @__asan_load4_noabort(i32 %23)
  %hba_port.0 = load ptr, ptr %hba_port.0116, align 4
  %cmp32.not = icmp eq ptr %hba_port.0, %port_table_list
  br i1 %cmp32.not, label %for.inc.if.end48_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end48_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.end48:                                         ; preds = %for.inc.if.end48_crit_edge, %if.then29.if.end48_crit_edge, %land.lhs.true26.if.end48_crit_edge, %if.then19.if.end48_crit_edge
  %sas_address50 = getelementptr %struct._sas_phy, ptr %7, i32 %idxprom, i32 2, i32 3
  %24 = ptrtoint ptr %sas_address50 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sas_address50, align 8
  tail call void @mpt3sas_transport_add_phy_to_an_existing_port(ptr undef, ptr noundef nonnull %retval.0.i, ptr noundef %arrayidx, i64 noundef %25, ptr noundef %port)
  br label %if.end52

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %26 = call ptr @memset(ptr %remote_identify, i32 0, i32 32)
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.end48
  %phy53 = getelementptr %struct._sas_phy, ptr %7, i32 %idxprom, i32 3
  %27 = ptrtoint ptr %phy53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy53, align 8
  %tobool54.not = icmp eq ptr %28, null
  br i1 %tobool54.not, label %if.end52.if.end58_crit_edge, label %if.then55

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then55:                                        ; preds = %if.end52
  %switch.tableidx = add i8 %link_rate, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %29 = icmp ult i8 %switch.tableidx, 11
  br i1 %29, label %switch.lookup, label %if.then55._transport_convert_phy_link_rate.exit_crit_edge

if.then55._transport_convert_phy_link_rate.exit_crit_edge: ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_convert_phy_link_rate.exit

switch.lookup:                                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %30 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.mpt3sas_transport_update_links, i32 0, i32 %30
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_transport_convert_phy_link_rate.exit

_transport_convert_phy_link_rate.exit:            ; preds = %switch.lookup, %if.then55._transport_convert_phy_link_rate.exit_crit_edge
  %rc.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then55._transport_convert_phy_link_rate.exit_crit_edge ]
  %negotiated_linkrate = getelementptr inbounds %struct.sas_phy, ptr %28, i32 0, i32 4
  %32 = ptrtoint ptr %negotiated_linkrate to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %rc.0.i, ptr %negotiated_linkrate, align 8
  br label %if.end58

if.end58:                                         ; preds = %_transport_convert_phy_link_rate.exit, %if.end52.if.end58_crit_edge
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %33 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %logging_level, align 8
  %and = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %if.end58.cleanup_crit_edge, label %do.end63

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end63:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %phy53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy53, align 8
  %conv65 = zext i8 %link_rate to i32
  %sas_address69 = getelementptr %struct._sas_phy, ptr %7, i32 %idxprom, i32 2, i32 3
  %37 = ptrtoint ptr %sas_address69 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %sas_address69, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.24, ptr noundef %36, ptr noundef nonnull @.str.61, i64 noundef %sas_address, i32 noundef %conv65, i32 noundef %idxprom, i32 noundef %conv14, i64 noundef %38) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.end58.cleanup_crit_edge, %if.then10, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_transport_get_linkerrors(ptr nocapture noundef %phy) #0 align 64 {
entry:
  %data_out_dma.i = alloca i32, align 4
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  %phy_pg1 = alloca %struct._MPI2_CONFIG_PAGE_SAS_PHY_1, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  %dev.addr.0.i.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.phy_to_ioc.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

while.body.i.i.phy_to_ioc.exit_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_to_ioc.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %phy_to_ioc.exit

phy_to_ioc.exit:                                  ; preds = %while.end.i.i, %while.body.i.i.phy_to_ioc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.phy_to_ioc.exit_crit_edge ]
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #10
  %4 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %5 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 12
  %6 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %phy_pg1) #10
  %7 = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_SAS_PHY_1, ptr %phy_pg1, i32 0, i32 2
  %8 = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_SAS_PHY_1, ptr %phy_pg1, i32 0, i32 3
  %9 = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_SAS_PHY_1, ptr %phy_pg1, i32 0, i32 4
  %10 = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_SAS_PHY_1, ptr %phy_pg1, i32 0, i32 5
  %hostdata = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 14
  %11 = call ptr @memset(ptr %phy_pg1, i32 255, i32 28)
  %12 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hostdata, align 4
  %port_id1 = getelementptr inbounds %struct.hba_port, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %port_id1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_id1, align 4
  %sas_node_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 11
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_node_lock) #10
  %sas_address = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sas_address, align 8
  %call9 = tail call ptr @mpt3sas_get_port_by_id(ptr noundef %hostdata.i.i, i8 noundef zeroext %15, i8 noundef zeroext 0) #10
  %sas_address1.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 5, i32 5, i32 7
  %18 = ptrtoint ptr %sas_address1.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sas_address1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %17)
  %cmp.i = icmp eq i64 %19, %17
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %phy_to_ioc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sas_hba.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 5, i32 5, i32 1, i32 1
  br label %_transport_sas_node_find_by_sas_address.exit

if.else.i:                                        ; preds = %phy_to_ioc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @mpt3sas_scsih_expander_find_by_sas_address(ptr noundef %hostdata.i.i, i64 noundef %17, ptr noundef %call9) #10
  br label %_transport_sas_node_find_by_sas_address.exit

_transport_sas_node_find_by_sas_address.exit:     ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %sas_hba.i, %if.then.i ], [ %call.i, %if.else.i ]
  %cmp11 = icmp eq ptr %retval.0.i, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_node_lock, i32 noundef %call5) #10
  br i1 %cmp11, label %_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge, label %if.end

_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge: ; preds = %_transport_sas_node_find_by_sas_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %_transport_sas_node_find_by_sas_address.exit
  %20 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sas_address, align 8
  %22 = ptrtoint ptr %sas_address1.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sas_address1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %23)
  %cmp18.not = icmp eq i64 %21, %23
  br i1 %cmp18.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_out_dma.i) #10
  %24 = ptrtoint ptr %data_out_dma.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %data_out_dma.i, align 4, !annotation !353
  %shost_recovery.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 13, i32 13, i32 3, i32 1
  %25 = ptrtoint ptr %shost_recovery.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %shost_recovery.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then20.do.end.i_crit_edge

if.then20.do.end.i_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then20
  %pci_error_recovery.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 37, i32 9
  %27 = ptrtoint ptr %pci_error_recovery.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pci_error_recovery.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool2.not.i = icmp eq i8 %28, 0
  br i1 %tobool2.not.i, label %if.end.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then20.do.end.i_crit_edge
  %name.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name.i, ptr noundef nonnull @.str.117) #13
  br label %_transport_get_expander_phy_error_log.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %transport_cmds.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 49, i32 11, i32 3
  tail call void @mutex_lock_nested(ptr noundef %transport_cmds.i, i32 noundef 0) #10
  %status.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %hostdata.i.i, i32 0, i32 76, i32 4
  %29 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %30)
  %cmp.not.i = icmp eq i16 %30, -32768
  br i1 %cmp.not.i, label %if.end14.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %name11.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name11.i, ptr noundef nonnull @.str.117) #13
  br label %out.thread.i

if.end14.i:                                       ; preds = %if.end.i
  %31 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 2, ptr %status.i, align 4
  %call17.i = tail call i32 @mpt3sas_wait_for_ioc(ptr noundef %hostdata.i.i, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.out.thread.i_crit_edge

if.end14.i.out.thread.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread.i

if.end20.i:                                       ; preds = %if.end14.i
  %transport_cb_idx.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %hostdata.i.i, i32 0, i32 65
  %32 = ptrtoint ptr %transport_cb_idx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %transport_cb_idx.i, align 2
  %call21.i = tail call zeroext i16 @mpt3sas_base_get_smid(ptr noundef %hostdata.i.i, i8 noundef zeroext %33) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call21.i)
  %tobool22.not.i = icmp eq i16 %call21.i, 0
  br i1 %tobool22.not.i, label %do.end26.i, label %if.end31.i

do.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %name28.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name28.i, ptr noundef nonnull @.str.117) #13
  br label %out.thread.i

if.end31.i:                                       ; preds = %if.end20.i
  %call32.i = tail call ptr @mpt3sas_base_get_msg_frame(ptr noundef %hostdata.i.i, i16 noundef zeroext %call21.i) #10
  %smid34.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %hostdata.i.i, i32 0, i32 76, i32 5
  %34 = ptrtoint ptr %smid34.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %call21.i, ptr %smid34.i, align 2
  %pdev.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 5, i32 5, i32 1
  %35 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %call.i.i73 = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 40, ptr noundef nonnull %data_out_dma.i, i32 noundef 3264, i32 noundef 0) #10
  %tobool36.not.i = icmp eq ptr %call.i.i73, null
  br i1 %tobool36.not.i, label %do.end40.i, label %if.end43.i

do.end40.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.2, i32 noundef 1307, ptr noundef nonnull @.str.117) #13
  call void @mpt3sas_base_free_smid(ptr noundef %hostdata.i.i, i16 noundef zeroext %call21.i) #10
  br label %out.thread.i

if.end43.i:                                       ; preds = %if.end31.i
  %37 = getelementptr inbounds i8, ptr %call.i.i73, i32 4
  %38 = call ptr @memset(ptr %37, i32 0, i32 36)
  %39 = ptrtoint ptr %call.i.i73 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 64, ptr %call.i.i73, align 1
  %function.i = getelementptr inbounds %struct.phy_error_log_request, ptr %call.i.i73, i32 0, i32 1
  %40 = ptrtoint ptr %function.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 17, ptr %function.i, align 1
  %request_length.i = getelementptr inbounds %struct.phy_error_log_request, ptr %call.i.i73, i32 0, i32 3
  %41 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %request_length.i, align 1
  %allocated_response_length.i = getelementptr inbounds %struct.phy_error_log_request, ptr %call.i.i73, i32 0, i32 2
  %42 = ptrtoint ptr %allocated_response_length.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %allocated_response_length.i, align 1
  %number.i = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 1
  %43 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %number.i, align 8
  %conv44.i = trunc i32 %44 to i8
  %phy_identifier.i = getelementptr inbounds %struct.phy_error_log_request, ptr %call.i.i73, i32 0, i32 5
  %45 = ptrtoint ptr %phy_identifier.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv44.i, ptr %phy_identifier.i, align 1
  %46 = call ptr @memset(ptr %call32.i, i32 0, i32 48)
  %Function.i = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32.i, i32 0, i32 3
  %47 = ptrtoint ptr %Function.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 26, ptr %Function.i, align 1
  %48 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hostdata, align 4
  %tobool.not.i.i75 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i75, label %if.end43.i._transport_get_port_id_by_sas_phy.exit.i_crit_edge, label %if.then.i.i

if.end43.i._transport_get_port_id_by_sas_phy.exit.i_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_get_port_id_by_sas_phy.exit.i

if.then.i.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %port_id1.i.i = getelementptr inbounds %struct.hba_port, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %port_id1.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %port_id1.i.i, align 4
  br label %_transport_get_port_id_by_sas_phy.exit.i

_transport_get_port_id_by_sas_phy.exit.i:         ; preds = %if.then.i.i, %if.end43.i._transport_get_port_id_by_sas_phy.exit.i_crit_edge
  %port_id.0.i.i = phi i8 [ %51, %if.then.i.i ], [ -1, %if.end43.i._transport_get_port_id_by_sas_phy.exit.i_crit_edge ]
  %PhysicalPort.i = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32.i, i32 0, i32 1
  %52 = ptrtoint ptr %PhysicalPort.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %port_id.0.i.i, ptr %PhysicalPort.i, align 1
  %VF_ID.i = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32.i, i32 0, i32 8
  %53 = ptrtoint ptr %VF_ID.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %VF_ID.i, align 1
  %VP_ID.i = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32.i, i32 0, i32 7
  %54 = ptrtoint ptr %VP_ID.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %VP_ID.i, align 4
  %55 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %sas_address, align 8
  %57 = call i64 @llvm.bswap.i64(i64 %56) #10
  %SASAddress.i = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32.i, i32 0, i32 11
  %58 = ptrtoint ptr %SASAddress.i to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 %57, ptr %SASAddress.i, align 4
  %RequestDataLength.i = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32.i, i32 0, i32 4
  %59 = ptrtoint ptr %RequestDataLength.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 3072, ptr %RequestDataLength.i, align 4
  %SGL.i = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32.i, i32 0, i32 14
  %build_sg.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 50, i32 9, i32 5, i32 7
  %60 = ptrtoint ptr %build_sg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %build_sg.i, align 8
  %62 = ptrtoint ptr %data_out_dma.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data_out_dma.i, align 4
  %add.i = add i32 %63, 12
  call void %61(ptr noundef %hostdata.i.i, ptr noundef %SGL.i, i32 noundef %63, i32 noundef 12, i32 noundef %add.i, i32 noundef 28) #10
  %logging_level.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 5, i32 5, i32 3
  %64 = ptrtoint ptr %logging_level.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %logging_level.i, align 8
  %and.i = and i32 %65, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool46.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool46.not.i, label %_transport_get_port_id_by_sas_phy.exit.i.if.end58.i_crit_edge, label %do.end50.i

_transport_get_port_id_by_sas_phy.exit.i.if.end58.i_crit_edge: ; preds = %_transport_get_port_id_by_sas_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

do.end50.i:                                       ; preds = %_transport_get_port_id_by_sas_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %name52.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %66 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %sas_address, align 8
  %68 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %number.i, align 8
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %name52.i, i64 noundef %67, i32 noundef %69) #13
  br label %if.end58.i

if.end58.i:                                       ; preds = %do.end50.i, %_transport_get_port_id_by_sas_phy.exit.i.if.end58.i_crit_edge
  %done.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 49, i32 12, i32 5, i32 1, i32 0, i32 4
  %70 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 49, i32 12, i32 5, i32 1, i32 0, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @init_completion.__key) #10
  %put_smid_default.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 50, i32 9, i32 5, i32 1, i32 1
  %71 = ptrtoint ptr %put_smid_default.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %put_smid_default.i, align 8
  call void %72(ptr noundef %hostdata.i.i, i16 noundef zeroext %call21.i) #10
  %call62.i = call i32 @wait_for_completion_timeout(ptr noundef %done.i, i32 noundef 1000) #10
  %73 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %status.i, align 4
  %75 = and i16 %74, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool67.not.i = icmp eq i16 %75, 0
  br i1 %tobool67.not.i, label %issue_host_reset.i, label %if.end83.i

if.end83.i:                                       ; preds = %if.end58.i
  %76 = ptrtoint ptr %logging_level.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %logging_level.i, align 8
  %and85.i = and i32 %77, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %if.end83.i.if.end95.i_crit_edge, label %do.end90.i

if.end83.i.if.end95.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i

do.end90.i:                                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  %name92.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call94.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %name92.i) #13
  br label %if.end95.i

if.end95.i:                                       ; preds = %do.end90.i, %if.end83.i.if.end95.i_crit_edge
  %78 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %status.i, align 4
  %80 = and i16 %79, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool100.not.i = icmp eq i16 %80, 0
  br i1 %tobool100.not.i, label %if.else.i76, label %if.then101.i

if.then101.i:                                     ; preds = %if.end95.i
  %reply.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %hostdata.i.i, i32 0, i32 76, i32 2
  %81 = ptrtoint ptr %reply.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reply.i, align 4
  %83 = ptrtoint ptr %logging_level.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %logging_level.i, align 8
  %and104.i = and i32 %84, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %if.then101.i.if.end115.i_crit_edge, label %do.end109.i

if.then101.i.if.end115.i_crit_edge:               ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115.i

do.end109.i:                                      ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #12
  %name111.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %ResponseDataLength.i = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REPLY, ptr %82, i32 0, i32 4
  %85 = ptrtoint ptr %ResponseDataLength.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %ResponseDataLength.i, align 4
  %87 = call i16 @llvm.bswap.i16(i16 %86) #10
  %conv113.i = zext i16 %87 to i32
  %call114.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %name111.i, i32 noundef %conv113.i) #13
  br label %if.end115.i

if.end115.i:                                      ; preds = %do.end109.i, %if.then101.i.if.end115.i_crit_edge
  %ResponseDataLength116.i = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REPLY, ptr %82, i32 0, i32 4
  %88 = ptrtoint ptr %ResponseDataLength116.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %ResponseDataLength116.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7168, i16 %89)
  %cmp118.not.i = icmp eq i16 %89, 7168
  br i1 %cmp118.not.i, label %if.end121.i, label %if.end115.i.if.then155.i_crit_edge

if.end115.i.if.then155.i_crit_edge:               ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then155.i

if.end121.i:                                      ; preds = %if.end115.i
  %90 = ptrtoint ptr %logging_level.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %logging_level.i, align 8
  %and123.i = and i32 %91, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123.i)
  %tobool124.not.i = icmp eq i32 %and123.i, 0
  br i1 %tobool124.not.i, label %if.end121.i.if.end134.i_crit_edge, label %do.end128.i

if.end121.i.if.end134.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134.i

do.end128.i:                                      ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #12
  %name130.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %function_result.i = getelementptr i8, ptr %call.i.i73, i32 14
  %92 = ptrtoint ptr %function_result.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %function_result.i, align 2
  %conv132.i = zext i8 %93 to i32
  %call133.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %name130.i, i32 noundef %conv132.i) #13
  br label %if.end134.i

if.end134.i:                                      ; preds = %do.end128.i, %if.end121.i.if.end134.i_crit_edge
  %invalid_dword.i = getelementptr i8, ptr %call.i.i73, i32 24
  %94 = ptrtoint ptr %invalid_dword.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %invalid_dword.i, align 4
  %invalid_dword_count.i = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 9
  %96 = ptrtoint ptr %invalid_dword_count.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %invalid_dword_count.i, align 4
  %running_disparity_error.i = getelementptr i8, ptr %call.i.i73, i32 28
  %97 = ptrtoint ptr %running_disparity_error.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %running_disparity_error.i, align 4
  %running_disparity_error_count.i = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 10
  %99 = ptrtoint ptr %running_disparity_error_count.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %running_disparity_error_count.i, align 8
  %loss_of_dword_sync.i = getelementptr i8, ptr %call.i.i73, i32 32
  %100 = ptrtoint ptr %loss_of_dword_sync.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %loss_of_dword_sync.i, align 4
  %loss_of_dword_sync_count.i = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 11
  %102 = ptrtoint ptr %loss_of_dword_sync_count.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %loss_of_dword_sync_count.i, align 4
  %phy_reset_problem.i = getelementptr i8, ptr %call.i.i73, i32 36
  %103 = ptrtoint ptr %phy_reset_problem.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %phy_reset_problem.i, align 4
  %phy_reset_problem_count.i = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 12
  %105 = ptrtoint ptr %phy_reset_problem_count.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %phy_reset_problem_count.i, align 8
  br label %if.then155.i

if.else.i76:                                      ; preds = %if.end95.i
  %106 = ptrtoint ptr %logging_level.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %logging_level.i, align 8
  %and136.i = and i32 %107, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %tobool137.not.i = icmp eq i32 %and136.i, 0
  br i1 %tobool137.not.i, label %if.else.i76.if.then155.i_crit_edge, label %do.end141.i

if.else.i76.if.then155.i_crit_edge:               ; preds = %if.else.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then155.i

do.end141.i:                                      ; preds = %if.else.i76
  call void @__sanitizer_cov_trace_pc() #12
  %name143.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call145.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %name143.i) #13
  br label %if.then155.i

issue_host_reset.i:                               ; preds = %if.end58.i
  %name73.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call75.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name73.i, ptr noundef nonnull @.str.117) #13
  call fastcc void @_debug_dump_mf(ptr noundef %call32.i) #10
  %108 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %status.i, align 4
  %110 = and i16 %109, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool80.not.not.i = icmp eq i16 %110, 0
  br i1 %tobool80.not.not.i, label %if.then149.i, label %issue_host_reset.i.if.then155.i_crit_edge

issue_host_reset.i.if.then155.i_crit_edge:        ; preds = %issue_host_reset.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then155.i

if.then149.i:                                     ; preds = %issue_host_reset.i
  call void @__sanitizer_cov_trace_pc() #12
  %call150.i = call i32 @mpt3sas_base_hard_reset_handler(ptr noundef %hostdata.i.i, i32 noundef 0) #10
  br label %if.then155.i

out.thread.i:                                     ; preds = %do.end40.i, %do.end26.i, %if.end14.i.out.thread.i_crit_edge, %do.end9.i
  %rc.1.ph.i = phi i32 [ -11, %do.end26.i ], [ -12, %do.end40.i ], [ %call17.i, %if.end14.i.out.thread.i_crit_edge ], [ -11, %do.end9.i ]
  %111 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 -32768, ptr %status.i, align 4
  br label %if.end158.i

if.then155.i:                                     ; preds = %if.then149.i, %issue_host_reset.i.if.then155.i_crit_edge, %do.end141.i, %if.else.i76.if.then155.i_crit_edge, %if.end134.i, %if.end115.i.if.then155.i_crit_edge
  %rc.1.i = phi i32 [ -22, %if.end115.i.if.then155.i_crit_edge ], [ -22, %if.then149.i ], [ -22, %issue_host_reset.i.if.then155.i_crit_edge ], [ -22, %if.else.i76.if.then155.i_crit_edge ], [ -22, %do.end141.i ], [ 0, %if.end134.i ]
  %112 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -32768, ptr %status.i, align 4
  %113 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev.i, align 4
  %dev157.i = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  %115 = ptrtoint ptr %data_out_dma.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %data_out_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev157.i, i32 noundef 40, ptr noundef nonnull %call.i.i73, i32 noundef %116, i32 noundef 0) #10
  br label %if.end158.i

if.end158.i:                                      ; preds = %if.then155.i, %out.thread.i
  %rc.1253.i = phi i32 [ %rc.1.ph.i, %out.thread.i ], [ %rc.1.i, %if.then155.i ]
  call void @mutex_unlock(ptr noundef %transport_cmds.i) #10
  br label %_transport_get_expander_phy_error_log.exit

_transport_get_expander_phy_error_log.exit:       ; preds = %if.end158.i, %do.end.i
  %retval.0.i77 = phi i32 [ -14, %do.end.i ], [ %rc.1253.i, %if.end158.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_out_dma.i) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %number = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 1
  %117 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %number, align 8
  %call23 = call i32 @mpt3sas_config_get_phy_pg1(ptr noundef %hostdata.i.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %phy_pg1, i32 noundef %118) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool.not = icmp eq i32 %call23, 0
  br i1 %tobool.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.2, i32 noundef 1433, ptr noundef nonnull @.str.113) #13
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %119 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool32.not = icmp eq i16 %120, 0
  br i1 %tobool32.not, label %lor.lhs.false, label %if.end30.do.end37_crit_edge

if.end30.do.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

lor.lhs.false:                                    ; preds = %if.end30
  %121 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool33.not = icmp eq i32 %122, 0
  br i1 %tobool33.not, label %lor.lhs.false.if.end46_crit_edge, label %lor.lhs.false.do.end37_crit_edge

lor.lhs.false.do.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.end37:                                         ; preds = %lor.lhs.false.do.end37_crit_edge, %if.end30.do.end37_crit_edge
  %name39 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %123 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %number, align 8
  %125 = call i16 @llvm.bswap.i16(i16 %120)
  %conv43 = zext i16 %125 to i32
  %126 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %5, align 4
  %128 = call i32 @llvm.bswap.i32(i32 %127)
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %name39, i32 noundef %124, i32 noundef %conv43, i32 noundef %128) #13
  br label %if.end46

if.end46:                                         ; preds = %do.end37, %lor.lhs.false.if.end46_crit_edge
  %129 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %7, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %130)
  %invalid_dword_count = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 9
  %132 = ptrtoint ptr %invalid_dword_count to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %invalid_dword_count, align 4
  %133 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %8, align 4
  %135 = call i32 @llvm.bswap.i32(i32 %134)
  %running_disparity_error_count = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 10
  %136 = ptrtoint ptr %running_disparity_error_count to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %running_disparity_error_count, align 8
  %137 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %9, align 4
  %139 = call i32 @llvm.bswap.i32(i32 %138)
  %loss_of_dword_sync_count = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 11
  %140 = ptrtoint ptr %loss_of_dword_sync_count to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %loss_of_dword_sync_count, align 4
  %141 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %10, align 4
  %143 = call i32 @llvm.bswap.i32(i32 %142)
  %phy_reset_problem_count = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 12
  %144 = ptrtoint ptr %phy_reset_problem_count to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %phy_reset_problem_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end27, %_transport_get_expander_phy_error_log.exit, %_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i77, %_transport_get_expander_phy_error_log.exit ], [ -6, %do.end27 ], [ 0, %if.end46 ], [ -22, %_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %phy_pg1) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_transport_get_enclosure_identifier(ptr noundef %rphy, ptr nocapture noundef writeonly %identifier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %rphy, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  %dev.addr.0.i.i = phi ptr [ %3, %entry ], [ %5, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.rphy_to_ioc.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

while.body.i.i.rphy_to_ioc.exit_crit_edge:        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rphy_to_ioc.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %rphy_to_ioc.exit

rphy_to_ioc.exit:                                 ; preds = %while.end.i.i, %while.body.i.i.rphy_to_ioc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.rphy_to_ioc.exit_crit_edge ]
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 53
  %sas_device_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 13, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_device_lock) #10
  %call6 = tail call ptr @__mpt3sas_get_sdev_by_rphy(ptr noundef %hostdata.i.i, ptr noundef %rphy) #10
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %rphy_to_ioc.exit
  %enclosure_logical_id = getelementptr inbounds %struct._sas_device, ptr %call6, i32 0, i32 7
  %6 = ptrtoint ptr %enclosure_logical_id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %enclosure_logical_id, align 8
  %8 = ptrtoint ptr %identifier to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %identifier, align 8
  %refcount.i = getelementptr inbounds %struct._sas_device, ptr %call6, i32 0, i32 23
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !349
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !350
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !351

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !352
  tail call void @kfree(ptr noundef nonnull %call6) #10
  br label %if.end

if.else:                                          ; preds = %rphy_to_ioc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %identifier to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %identifier, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge
  %rc.0 = phi i32 [ -6, %if.else ], [ 0, %if.end5.i.i.i.i.i.if.end_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_device_lock, i32 noundef %call3) #10
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_transport_get_bay_identifier(ptr noundef %rphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %rphy, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  %dev.addr.0.i.i = phi ptr [ %3, %entry ], [ %5, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.rphy_to_ioc.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

while.body.i.i.rphy_to_ioc.exit_crit_edge:        ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rphy_to_ioc.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %rphy_to_ioc.exit

rphy_to_ioc.exit:                                 ; preds = %while.end.i.i, %while.body.i.i.rphy_to_ioc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.rphy_to_ioc.exit_crit_edge ]
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 53
  %sas_device_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 13, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_device_lock) #10
  %call6 = tail call ptr @__mpt3sas_get_sdev_by_rphy(ptr noundef %hostdata.i.i, ptr noundef %rphy) #10
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %rphy_to_ioc.exit.if.end_crit_edge, label %if.then

rphy_to_ioc.exit.if.end_crit_edge:                ; preds = %rphy_to_ioc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %rphy_to_ioc.exit
  %slot = getelementptr inbounds %struct._sas_device, ptr %call6, i32 0, i32 13
  %6 = ptrtoint ptr %slot to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %slot, align 4
  %conv7 = zext i16 %7 to i32
  %refcount.i = getelementptr inbounds %struct._sas_device, ptr %call6, i32 0, i32 23
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !349
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !350
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !351

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !352
  tail call void @kfree(ptr noundef nonnull %call6) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %rphy_to_ioc.exit.if.end_crit_edge
  %rc.0 = phi i32 [ -6, %rphy_to_ioc.exit.if.end_crit_edge ], [ %conv7, %if.end5.i.i.i.i.i.if.end_crit_edge ], [ %conv7, %if.then10.i.i.i.i.i ], [ %conv7, %if.then.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_device_lock, i32 noundef %call3) #10
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_transport_phy_reset(ptr nocapture noundef readonly %phy, i32 noundef %hard_reset) #0 align 64 {
entry:
  %mpi_reply = alloca %struct._MPI2_SAS_IOUNIT_CONTROL_REPLY, align 4
  %mpi_request = alloca %struct._MPI2_SAS_IOUNIT_CONTROL_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  %dev.addr.0.i.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.phy_to_ioc.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

while.body.i.i.phy_to_ioc.exit_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_to_ioc.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %phy_to_ioc.exit

phy_to_ioc.exit:                                  ; preds = %while.end.i.i, %while.body.i.i.phy_to_ioc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.phy_to_ioc.exit_crit_edge ]
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mpi_reply) #10
  %4 = getelementptr inbounds %struct._MPI2_SAS_IOUNIT_CONTROL_REPLY, ptr %mpi_reply, i32 0, i32 11
  %5 = getelementptr inbounds %struct._MPI2_SAS_IOUNIT_CONTROL_REPLY, ptr %mpi_reply, i32 0, i32 12
  %6 = call ptr @memset(ptr %mpi_reply, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #10
  %hostdata = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 14
  %7 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hostdata, align 4
  %port_id1 = getelementptr inbounds %struct.hba_port, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %port_id1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %port_id1, align 4
  %sas_node_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 11
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_node_lock) #10
  %sas_address = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %sas_address, align 8
  %call9 = tail call ptr @mpt3sas_get_port_by_id(ptr noundef %hostdata.i.i, i8 noundef zeroext %10, i8 noundef zeroext 0) #10
  %sas_address1.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 5, i32 5, i32 7
  %13 = ptrtoint ptr %sas_address1.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sas_address1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %12)
  %cmp.i = icmp eq i64 %14, %12
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %phy_to_ioc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sas_hba.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 5, i32 5, i32 1, i32 1
  br label %_transport_sas_node_find_by_sas_address.exit

if.else.i:                                        ; preds = %phy_to_ioc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @mpt3sas_scsih_expander_find_by_sas_address(ptr noundef %hostdata.i.i, i64 noundef %12, ptr noundef %call9) #10
  br label %_transport_sas_node_find_by_sas_address.exit

_transport_sas_node_find_by_sas_address.exit:     ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %sas_hba.i, %if.then.i ], [ %call.i, %if.else.i ]
  %cmp11 = icmp eq ptr %retval.0.i, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_node_lock, i32 noundef %call5) #10
  br i1 %cmp11, label %_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge, label %if.end

_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge: ; preds = %_transport_sas_node_find_by_sas_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %_transport_sas_node_find_by_sas_address.exit
  %15 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sas_address, align 8
  %17 = ptrtoint ptr %sas_address1.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sas_address1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp18.not = icmp eq i64 %16, %18
  br i1 %cmp18.not, label %if.end25, label %if.then20

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %hard_reset)
  %cmp21 = icmp eq i32 %hard_reset, 1
  %conv23 = select i1 %cmp21, i8 2, i8 1
  %call24 = tail call fastcc i32 @_transport_expander_phy_control(ptr noundef %hostdata.i.i, ptr noundef %phy, i8 noundef zeroext %conv23)
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %19 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_SAS_IOUNIT_CONTROL_REQUEST, ptr %mpi_request, i32 0, i32 3
  %20 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 27, ptr %Function, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hard_reset)
  %tobool.not = icmp eq i32 %hard_reset, 0
  %conv27 = select i1 %tobool.not, i8 6, i8 7
  %21 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv27, ptr %mpi_request, align 4
  %number = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 1
  %22 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %number, align 8
  %conv28 = trunc i32 %23 to i8
  %PhyNum = getelementptr inbounds %struct._MPI2_SAS_IOUNIT_CONTROL_REQUEST, ptr %mpi_request, i32 0, i32 11
  %24 = ptrtoint ptr %PhyNum to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv28, ptr %PhyNum, align 2
  %call29 = call i32 @mpt3sas_base_sas_iounit_control(ptr noundef %hostdata.i.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %mpi_request) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end37, label %do.end34

do.end34:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.2, i32 noundef 1730, ptr noundef nonnull @.str.141) #13
  br label %cleanup

if.end37:                                         ; preds = %if.end25
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool39.not = icmp eq i16 %26, 0
  br i1 %tobool39.not, label %lor.lhs.false, label %if.end37.do.end44_crit_edge

if.end37.do.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

lor.lhs.false:                                    ; preds = %if.end37
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool40.not = icmp eq i32 %28, 0
  br i1 %tobool40.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end44_crit_edge

lor.lhs.false.do.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end44:                                         ; preds = %lor.lhs.false.do.end44_crit_edge, %if.end37.do.end44_crit_edge
  %name46 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %29 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %number, align 8
  %31 = call i16 @llvm.bswap.i16(i16 %26)
  %conv50 = zext i16 %31 to i32
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %5, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %name46, i32 noundef %30, i32 noundef %conv50, i32 noundef %34) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %lor.lhs.false.cleanup_crit_edge, %do.end34, %if.then20, %_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.then20 ], [ -6, %do.end34 ], [ 0, %do.end44 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -22, %_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mpi_reply) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_transport_phy_enable(ptr nocapture noundef readonly %phy, i32 noundef %enable) #0 align 64 {
entry:
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  %dev.addr.0.i.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.phy_to_ioc.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

while.body.i.i.phy_to_ioc.exit_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_to_ioc.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %phy_to_ioc.exit

phy_to_ioc.exit:                                  ; preds = %while.end.i.i, %while.body.i.i.phy_to_ioc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.phy_to_ioc.exit_crit_edge ]
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #10
  %4 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %hostdata = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 14
  %5 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata, align 4
  %port_id1 = getelementptr inbounds %struct.hba_port, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %port_id1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_id1, align 4
  %sas_node_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 11
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_node_lock) #10
  %sas_address = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sas_address, align 8
  %call9 = tail call ptr @mpt3sas_get_port_by_id(ptr noundef %hostdata.i.i, i8 noundef zeroext %9, i8 noundef zeroext 0) #10
  %sas_address1.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 5, i32 5, i32 7
  %12 = ptrtoint ptr %sas_address1.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sas_address1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %11)
  %cmp.i = icmp eq i64 %13, %11
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %phy_to_ioc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sas_hba.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 5, i32 5, i32 1, i32 1
  br label %_transport_sas_node_find_by_sas_address.exit

if.else.i:                                        ; preds = %phy_to_ioc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @mpt3sas_scsih_expander_find_by_sas_address(ptr noundef %hostdata.i.i, i64 noundef %11, ptr noundef %call9) #10
  br label %_transport_sas_node_find_by_sas_address.exit

_transport_sas_node_find_by_sas_address.exit:     ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %sas_hba.i, %if.then.i ], [ %call.i, %if.else.i ]
  %cmp11 = icmp eq ptr %retval.0.i, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_node_lock, i32 noundef %call5) #10
  br i1 %cmp11, label %_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge, label %if.end

_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge: ; preds = %_transport_sas_node_find_by_sas_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %_transport_sas_node_find_by_sas_address.exit
  %14 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sas_address, align 8
  %16 = ptrtoint ptr %sas_address1.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sas_address1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %17)
  %cmp18.not = icmp eq i64 %15, %17
  br i1 %cmp18.not, label %if.end25, label %if.then20

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %enable)
  %cmp21 = icmp eq i32 %enable, 1
  %conv23 = select i1 %cmp21, i8 1, i8 3
  %call24 = tail call fastcc i32 @_transport_expander_phy_control(ptr noundef %hostdata.i.i, ptr noundef %phy, i8 noundef zeroext %conv23)
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %num_phys = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 5, i32 5, i32 6
  %18 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_phys, align 4
  %conv27 = zext i8 %19 to i16
  %mul = mul nuw nsw i16 %conv27, 20
  %add = add nuw nsw i16 %mul, 16
  %conv29 = zext i16 %add to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv29, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.2, i32 noundef 1788, ptr noundef nonnull @.str.169) #13
  br label %out

if.end37:                                         ; preds = %if.end25
  %call38 = call i32 @mpt3sas_config_get_sas_iounit_pg0(ptr noundef %hostdata.i.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end48, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %name45 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name45, ptr noundef nonnull @.str.2, i32 noundef 1795, ptr noundef nonnull @.str.169) #13
  br label %out

if.end48:                                         ; preds = %if.end37
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %4, align 2
  %22 = and i16 %21, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp52.not = icmp eq i16 %22, 0
  br i1 %cmp52.not, label %for.cond.preheader, label %do.end57

for.cond.preheader:                               ; preds = %if.end48
  %23 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp66281.not = icmp eq i8 %24, 0
  br i1 %cmp66281.not, label %for.cond.preheader.if.end85_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end85_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %name76 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  br label %for.body

do.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %name59 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name59, ptr noundef nonnull @.str.2, i32 noundef 1803, ptr noundef nonnull @.str.169) #13
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0283 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %discovery_active.0282 = phi i32 [ 0, %for.body.lr.ph ], [ %discovery_active.1, %for.inc.for.body_crit_edge ]
  %PortFlags = getelementptr %struct._MPI2_CONFIG_PAGE_SASIOUNIT_0, ptr %call9.i.i, i32 0, i32 5, i32 %i.0283, i32 1
  %25 = ptrtoint ptr %PortFlags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %PortFlags, align 1
  %27 = and i8 %26, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool70.not = icmp eq i8 %27, 0
  br i1 %tobool70.not, label %for.body.for.inc_crit_edge, label %do.end74

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end74:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct._MPI2_CONFIG_PAGE_SASIOUNIT_0, ptr %call9.i.i, i32 0, i32 5, i32 %i.0283
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 4
  %conv80 = zext i8 %29 to i32
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef %name76, i32 noundef %conv80, i32 noundef %i.0283) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end74, %for.body.for.inc_crit_edge
  %discovery_active.1 = phi i32 [ 1, %do.end74 ], [ %discovery_active.0282, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0283, 1
  %30 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_phys, align 4
  %conv65 = zext i8 %31 to i32
  %cmp66 = icmp ult i32 %inc, %conv65
  br i1 %cmp66, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %discovery_active.1)
  %tobool83.not = icmp eq i32 %discovery_active.1, 0
  br i1 %tobool83.not, label %for.end.if.end85_crit_edge, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.end.if.end85_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.end85:                                         ; preds = %for.end.if.end85_crit_edge, %for.cond.preheader.if.end85_crit_edge
  %.lcssa294 = phi i8 [ %31, %for.end.if.end85_crit_edge ], [ 0, %for.cond.preheader.if.end85_crit_edge ]
  %32 = zext i8 %.lcssa294 to i16
  %33 = mul nuw nsw i16 %32, 12
  %conv91 = add nuw nsw i16 %33, 20
  %conv92 = zext i16 %conv91 to i32
  %call9.i.i275 = call noalias align 128 ptr @__kmalloc(i32 noundef %conv92, i32 noundef 3520) #15
  %tobool94.not = icmp eq ptr %call9.i.i275, null
  br i1 %tobool94.not, label %do.end98, label %if.end103

do.end98:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %name100 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name100, ptr noundef nonnull @.str.2, i32 noundef 1829, ptr noundef nonnull @.str.169) #13
  br label %out

if.end103:                                        ; preds = %if.end85
  %call104 = call i32 @mpt3sas_config_get_sas_iounit_pg1(ptr noundef %hostdata.i.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %call9.i.i275, i16 noundef zeroext %conv91) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end114, label %do.end109

do.end109:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  %name111 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name111, ptr noundef nonnull @.str.2, i32 noundef 1836, ptr noundef nonnull @.str.169) #13
  br label %out

if.end114:                                        ; preds = %if.end103
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %4, align 2
  %36 = and i16 %35, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp120.not = icmp eq i16 %36, 0
  br i1 %cmp120.not, label %for.cond131.preheader, label %do.end125

for.cond131.preheader:                            ; preds = %if.end114
  %37 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp135287.not = icmp eq i8 %38, 0
  br i1 %cmp135287.not, label %for.cond131.preheader.for.end163_crit_edge, label %for.cond131.preheader.for.body137_crit_edge

for.cond131.preheader.for.body137_crit_edge:      ; preds = %for.cond131.preheader
  br label %for.body137

for.cond131.preheader.for.end163_crit_edge:       ; preds = %for.cond131.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end163

do.end125:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  %name127 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name127, ptr noundef nonnull @.str.2, i32 noundef 1844, ptr noundef nonnull @.str.169) #13
  br label %out

for.body137:                                      ; preds = %for.body137.for.body137_crit_edge, %for.cond131.preheader.for.body137_crit_edge
  %i.1288 = phi i32 [ %inc162, %for.body137.for.body137_crit_edge ], [ 0, %for.cond131.preheader.for.body137_crit_edge ]
  %arrayidx139 = getelementptr %struct._MPI2_CONFIG_PAGE_SASIOUNIT_0, ptr %call9.i.i, i32 0, i32 5, i32 %i.1288
  %39 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx139, align 4
  %arrayidx142 = getelementptr %struct._MPI2_CONFIG_PAGE_SASIOUNIT_1, ptr %call9.i.i275, i32 0, i32 9, i32 %i.1288
  %41 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx142, align 4
  %PortFlags146 = getelementptr %struct._MPI2_CONFIG_PAGE_SASIOUNIT_0, ptr %call9.i.i, i32 0, i32 5, i32 %i.1288, i32 1
  %42 = ptrtoint ptr %PortFlags146 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %PortFlags146, align 1
  %44 = and i8 %43, 1
  %PortFlags152 = getelementptr %struct._MPI2_CONFIG_PAGE_SASIOUNIT_1, ptr %call9.i.i275, i32 0, i32 9, i32 %i.1288, i32 1
  %45 = ptrtoint ptr %PortFlags152 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %PortFlags152, align 1
  %PhyFlags = getelementptr %struct._MPI2_CONFIG_PAGE_SASIOUNIT_0, ptr %call9.i.i, i32 0, i32 5, i32 %i.1288, i32 2
  %46 = ptrtoint ptr %PhyFlags to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %PhyFlags, align 2
  %48 = and i8 %47, 24
  %PhyFlags160 = getelementptr %struct._MPI2_CONFIG_PAGE_SASIOUNIT_1, ptr %call9.i.i275, i32 0, i32 9, i32 %i.1288, i32 2
  %49 = ptrtoint ptr %PhyFlags160 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %PhyFlags160, align 2
  %inc162 = add nuw nsw i32 %i.1288, 1
  %50 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %num_phys, align 4
  %conv134 = zext i8 %51 to i32
  %cmp135 = icmp ult i32 %inc162, %conv134
  br i1 %cmp135, label %for.body137.for.body137_crit_edge, label %for.body137.for.end163_crit_edge

for.body137.for.end163_crit_edge:                 ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end163

for.body137.for.body137_crit_edge:                ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body137

for.end163:                                       ; preds = %for.body137.for.end163_crit_edge, %for.cond131.preheader.for.end163_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool164.not = icmp eq i32 %enable, 0
  %number173 = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 1
  %52 = ptrtoint ptr %number173 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %number173, align 8
  %PhyFlags175 = getelementptr %struct._MPI2_CONFIG_PAGE_SASIOUNIT_1, ptr %call9.i.i275, i32 0, i32 9, i32 %53, i32 2
  %54 = ptrtoint ptr %PhyFlags175 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %PhyFlags175, align 2
  br i1 %tobool164.not, label %if.else, label %if.then165

if.then165:                                       ; preds = %for.end163
  call void @__sanitizer_cov_trace_pc() #12
  %56 = and i8 %55, -9
  %57 = ptrtoint ptr %PhyFlags175 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %PhyFlags175, align 2
  %call179.c257 = call i32 @mpt3sas_config_set_sas_iounit_pg1(ptr noundef %hostdata.i.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %call9.i.i275, i16 noundef zeroext %conv91) #10
  %call182 = call i32 @_transport_phy_reset(ptr noundef %phy, i32 noundef 0)
  br label %out

if.else:                                          ; preds = %for.end163
  call void @__sanitizer_cov_trace_pc() #12
  %58 = or i8 %55, 8
  %59 = ptrtoint ptr %PhyFlags175 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %PhyFlags175, align 2
  %call179.c = call i32 @mpt3sas_config_set_sas_iounit_pg1(ptr noundef %hostdata.i.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %call9.i.i275, i16 noundef zeroext %conv91) #10
  br label %out

out:                                              ; preds = %if.else, %if.then165, %do.end125, %do.end109, %do.end98, %for.end.out_crit_edge, %do.end57, %do.end43, %do.end34
  %rc.0 = phi i32 [ -6, %do.end43 ], [ -5, %do.end57 ], [ -6, %do.end109 ], [ -5, %do.end125 ], [ 0, %if.then165 ], [ -12, %do.end98 ], [ -12, %do.end34 ], [ -11, %for.end.out_crit_edge ], [ 0, %if.else ]
  %sas_iounit_pg1.0 = phi ptr [ null, %do.end43 ], [ null, %do.end57 ], [ %call9.i.i275, %do.end109 ], [ %call9.i.i275, %do.end125 ], [ %call9.i.i275, %if.then165 ], [ null, %do.end98 ], [ null, %do.end34 ], [ null, %for.end.out_crit_edge ], [ %call9.i.i275, %if.else ]
  call void @kfree(ptr noundef %sas_iounit_pg1.0) #10
  call void @kfree(ptr noundef %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then20, %_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.then20 ], [ %rc.0, %out ], [ -22, %_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_transport_phy_speed(ptr nocapture noundef %phy, ptr nocapture noundef %rates) #0 align 64 {
entry:
  %phy_pg0 = alloca %struct._MPI2_CONFIG_PAGE_SAS_PHY_0, align 4
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  %dev.addr.0.i.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.i.while.cond.i.i_crit_edge ]
  %call.i.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %parent.i.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i.i, label %while.body.i.i.phy_to_ioc.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

while.body.i.i.phy_to_ioc.exit_crit_edge:         ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %phy_to_ioc.exit

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %dev.addr.0.i.i, i32 -584
  br label %phy_to_ioc.exit

phy_to_ioc.exit:                                  ; preds = %while.end.i.i, %while.body.i.i.phy_to_ioc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %while.end.i.i ], [ null, %while.body.i.i.phy_to_ioc.exit_crit_edge ]
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %phy_pg0) #10
  %4 = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_SAS_PHY_0, ptr %phy_pg0, i32 0, i32 7
  %5 = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_SAS_PHY_0, ptr %phy_pg0, i32 0, i32 12
  %6 = call ptr @memset(ptr %phy_pg0, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #10
  %7 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %hostdata = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 14
  %8 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  %9 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hostdata, align 4
  %port_id1 = getelementptr inbounds %struct.hba_port, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %port_id1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port_id1, align 4
  %sas_node_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 11
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_node_lock) #10
  %sas_address = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sas_address, align 8
  %call9 = tail call ptr @mpt3sas_get_port_by_id(ptr noundef %hostdata.i.i, i8 noundef zeroext %12, i8 noundef zeroext 0) #10
  %sas_address1.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 5, i32 5, i32 7
  %15 = ptrtoint ptr %sas_address1.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sas_address1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %14)
  %cmp.i = icmp eq i64 %16, %14
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %phy_to_ioc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sas_hba.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 5, i32 5, i32 1, i32 1
  br label %_transport_sas_node_find_by_sas_address.exit

if.else.i:                                        ; preds = %phy_to_ioc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @mpt3sas_scsih_expander_find_by_sas_address(ptr noundef %hostdata.i.i, i64 noundef %14, ptr noundef %call9) #10
  br label %_transport_sas_node_find_by_sas_address.exit

_transport_sas_node_find_by_sas_address.exit:     ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %sas_hba.i, %if.then.i ], [ %call.i, %if.else.i ]
  %cmp11 = icmp eq ptr %retval.0.i, null
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_node_lock, i32 noundef %call5) #10
  br i1 %cmp11, label %_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge, label %if.end

_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge: ; preds = %_transport_sas_node_find_by_sas_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %_transport_sas_node_find_by_sas_address.exit
  %minimum_linkrate = getelementptr inbounds %struct.sas_phy_linkrates, ptr %rates, i32 0, i32 1
  %17 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %minimum_linkrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %minimum_linkrate16 = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 6
  %19 = ptrtoint ptr %minimum_linkrate16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %minimum_linkrate16, align 8
  br label %if.end25.sink.split

if.else:                                          ; preds = %if.end
  %minimum_linkrate_hw = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 5
  %21 = ptrtoint ptr %minimum_linkrate_hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %minimum_linkrate_hw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %22)
  %cmp19 = icmp ult i32 %18, %22
  br i1 %cmp19, label %if.else.if.end25.sink.split_crit_edge, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.else.if.end25.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.else.if.end25.sink.split_crit_edge, %if.then15
  %.sink = phi i32 [ %20, %if.then15 ], [ %22, %if.else.if.end25.sink.split_crit_edge ]
  %23 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %minimum_linkrate, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.else.if.end25_crit_edge
  %24 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool26.not = icmp eq i32 %25, 0
  br i1 %tobool26.not, label %if.then27, label %if.else30

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %maximum_linkrate28 = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 8
  %26 = ptrtoint ptr %maximum_linkrate28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %maximum_linkrate28, align 8
  br label %if.end38.sink.split

if.else30:                                        ; preds = %if.end25
  %maximum_linkrate_hw = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 7
  %28 = ptrtoint ptr %maximum_linkrate_hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %maximum_linkrate_hw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %29)
  %cmp32 = icmp ugt i32 %25, %29
  br i1 %cmp32, label %if.else30.if.end38.sink.split_crit_edge, label %if.else30.if.end38_crit_edge

if.else30.if.end38_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.else30.if.end38.sink.split_crit_edge:          ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %if.else30.if.end38.sink.split_crit_edge, %if.then27
  %.sink252 = phi i32 [ %27, %if.then27 ], [ %29, %if.else30.if.end38.sink.split_crit_edge ]
  %30 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink252, ptr %rates, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.else30.if.end38_crit_edge
  %31 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %sas_address, align 8
  %33 = ptrtoint ptr %sas_address1.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %sas_address1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %34)
  %cmp42.not = icmp eq i64 %32, %34
  br i1 %cmp42.not, label %if.end50, label %if.then44

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %minimum_linkrate, align 4
  %minimum_linkrate46 = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 6
  %37 = ptrtoint ptr %minimum_linkrate46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %minimum_linkrate46, align 8
  %38 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rates, align 4
  %maximum_linkrate48 = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 8
  %40 = ptrtoint ptr %maximum_linkrate48 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %maximum_linkrate48, align 8
  %call49 = tail call fastcc i32 @_transport_expander_phy_control(ptr noundef %hostdata.i.i, ptr noundef %phy, i8 noundef zeroext 1)
  br label %cleanup

if.end50:                                         ; preds = %if.end38
  %num_phys = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 5, i32 5, i32 6
  %41 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_phys, align 4
  %conv52 = zext i8 %42 to i16
  %mul = mul nuw nsw i16 %conv52, 12
  %add = add nuw nsw i16 %mul, 20
  %conv54 = zext i16 %add to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv54, i32 noundef 3520) #15
  %tobool56.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool56.not, label %do.end60, label %if.end63

do.end60:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull @.str.2, i32 noundef 1940, ptr noundef nonnull @.str.183) #13
  br label %out

if.end63:                                         ; preds = %if.end50
  %call64 = call i32 @mpt3sas_config_get_sas_iounit_pg1(ptr noundef %hostdata.i.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end74, label %do.end69

do.end69:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %name71 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name71, ptr noundef nonnull @.str.2, i32 noundef 1947, ptr noundef nonnull @.str.183) #13
  br label %out

if.end74:                                         ; preds = %if.end63
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %7, align 2
  %45 = and i16 %44, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp78.not = icmp eq i16 %45, 0
  br i1 %cmp78.not, label %for.cond.preheader, label %do.end83

for.cond.preheader:                               ; preds = %if.end74
  %46 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp92247.not = icmp eq i8 %47, 0
  br i1 %cmp92247.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %number = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 1
  %48 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %number, align 8
  %phy98 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 2, i32 10, i32 0, i32 0, i32 0, i32 4, i32 1
  br label %for.body

do.end83:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %name85 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name85, ptr noundef nonnull @.str.2, i32 noundef 1955, ptr noundef nonnull @.str.183) #13
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0248 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %i.0248)
  %cmp94.not = icmp eq i32 %49, %i.0248
  br i1 %cmp94.not, label %for.body.for.inc_crit_edge, label %if.then96

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then96:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %phy98 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy98, align 8
  %phy99 = getelementptr %struct._sas_phy, ptr %51, i32 %i.0248, i32 3
  %52 = ptrtoint ptr %phy99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %phy99, align 8
  %minimum_linkrate100 = getelementptr inbounds %struct.sas_phy, ptr %53, i32 0, i32 6
  %maximum_linkrate105 = getelementptr inbounds %struct.sas_phy, ptr %53, i32 0, i32 8
  br label %for.inc

for.inc:                                          ; preds = %if.then96, %for.body.for.inc_crit_edge
  %.sink254.in = phi ptr [ %maximum_linkrate105, %if.then96 ], [ %rates, %for.body.for.inc_crit_edge ]
  %.sink253.in = phi ptr [ %minimum_linkrate100, %if.then96 ], [ %minimum_linkrate, %for.body.for.inc_crit_edge ]
  %54 = ptrtoint ptr %.sink253.in to i32
  call void @__asan_load4_noabort(i32 %54)
  %.sink253 = load i32, ptr %.sink253.in, align 4
  %55 = ptrtoint ptr %.sink254.in to i32
  call void @__asan_load4_noabort(i32 %55)
  %.sink254 = load i32, ptr %.sink254.in, align 4
  %shl = shl i32 %.sink254, 4
  %add106 = add i32 %shl, %.sink253
  %conv107.sink = trunc i32 %add106 to i8
  %56 = getelementptr %struct._MPI2_CONFIG_PAGE_SASIOUNIT_1, ptr %call9.i.i, i32 0, i32 9, i32 %i.0248, i32 3
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv107.sink, ptr %56, align 1
  %inc = add nuw nsw i32 %i.0248, 1
  %58 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %num_phys, align 4
  %conv91 = zext i8 %59 to i32
  %cmp92 = icmp ult i32 %inc, %conv91
  br i1 %cmp92, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call119 = call i32 @mpt3sas_config_set_sas_iounit_pg1(ptr noundef %hostdata.i.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %call9.i.i, i16 noundef zeroext %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end129, label %do.end124

do.end124:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %name126 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i.i, i32 1, i32 2, i32 1
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name126, ptr noundef nonnull @.str.2, i32 noundef 1975, ptr noundef nonnull @.str.183) #13
  br label %out

if.end129:                                        ; preds = %for.end
  %call130 = call i32 @_transport_phy_reset(ptr noundef %phy, i32 noundef 0)
  %number131 = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 1
  %60 = ptrtoint ptr %number131 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %number131, align 8
  %call132 = call i32 @mpt3sas_config_get_phy_pg0(ptr noundef %hostdata.i.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %phy_pg0, i32 noundef %61) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.then134, label %if.end129.out_crit_edge

if.end129.out_crit_edge:                          ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then134:                                       ; preds = %if.end129
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %4, align 4
  %trunc = trunc i8 %63 to i4
  %switch.tableidx = xor i4 %trunc, -8
  %64 = sext i4 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %64)
  %65 = icmp ult i4 %switch.tableidx, -2
  br i1 %65, label %switch.lookup, label %if.then134._transport_convert_phy_link_rate.exit_crit_edge

if.then134._transport_convert_phy_link_rate.exit_crit_edge: ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_convert_phy_link_rate.exit

switch.lookup:                                    ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #12
  %66 = zext i4 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table._transport_phy_speed, i32 0, i32 %66
  %67 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %67)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_transport_convert_phy_link_rate.exit

_transport_convert_phy_link_rate.exit:            ; preds = %switch.lookup, %if.then134._transport_convert_phy_link_rate.exit_crit_edge
  %rc.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then134._transport_convert_phy_link_rate.exit_crit_edge ]
  %minimum_linkrate139 = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 6
  %68 = ptrtoint ptr %minimum_linkrate139 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %rc.0.i, ptr %minimum_linkrate139, align 8
  %69 = lshr i8 %63, 4
  %trunc243 = trunc i8 %69 to i4
  %switch.tableidx257 = xor i4 %trunc243, -8
  %70 = sext i4 %switch.tableidx257 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %70)
  %71 = icmp ult i4 %switch.tableidx257, -2
  br i1 %71, label %switch.lookup256, label %_transport_convert_phy_link_rate.exit._transport_convert_phy_link_rate.exit232_crit_edge

_transport_convert_phy_link_rate.exit._transport_convert_phy_link_rate.exit232_crit_edge: ; preds = %_transport_convert_phy_link_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_convert_phy_link_rate.exit232

switch.lookup256:                                 ; preds = %_transport_convert_phy_link_rate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %72 = zext i4 %switch.tableidx257 to i32
  %switch.gep259 = getelementptr inbounds [14 x i32], ptr @switch.table._transport_phy_speed.217, i32 0, i32 %72
  %73 = ptrtoint ptr %switch.gep259 to i32
  call void @__asan_load4_noabort(i32 %73)
  %switch.load260 = load i32, ptr %switch.gep259, align 4
  br label %_transport_convert_phy_link_rate.exit232

_transport_convert_phy_link_rate.exit232:         ; preds = %switch.lookup256, %_transport_convert_phy_link_rate.exit._transport_convert_phy_link_rate.exit232_crit_edge
  %rc.0.i231 = phi i32 [ %switch.load260, %switch.lookup256 ], [ 0, %_transport_convert_phy_link_rate.exit._transport_convert_phy_link_rate.exit232_crit_edge ]
  %maximum_linkrate144 = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 8
  %74 = ptrtoint ptr %maximum_linkrate144 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %rc.0.i231, ptr %maximum_linkrate144, align 8
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %5, align 4
  %trunc244 = trunc i8 %76 to i4
  %switch.tableidx262 = xor i4 %trunc244, -8
  %77 = sext i4 %switch.tableidx262 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %77)
  %78 = icmp ult i4 %switch.tableidx262, -2
  br i1 %78, label %switch.lookup261, label %_transport_convert_phy_link_rate.exit232._transport_convert_phy_link_rate.exit242_crit_edge

_transport_convert_phy_link_rate.exit232._transport_convert_phy_link_rate.exit242_crit_edge: ; preds = %_transport_convert_phy_link_rate.exit232
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_convert_phy_link_rate.exit242

switch.lookup261:                                 ; preds = %_transport_convert_phy_link_rate.exit232
  call void @__sanitizer_cov_trace_pc() #12
  %79 = zext i4 %switch.tableidx262 to i32
  %switch.gep264 = getelementptr inbounds [14 x i32], ptr @switch.table._transport_phy_speed.218, i32 0, i32 %79
  %80 = ptrtoint ptr %switch.gep264 to i32
  call void @__asan_load4_noabort(i32 %80)
  %switch.load265 = load i32, ptr %switch.gep264, align 4
  br label %_transport_convert_phy_link_rate.exit242

_transport_convert_phy_link_rate.exit242:         ; preds = %switch.lookup261, %_transport_convert_phy_link_rate.exit232._transport_convert_phy_link_rate.exit242_crit_edge
  %rc.0.i241 = phi i32 [ %switch.load265, %switch.lookup261 ], [ 0, %_transport_convert_phy_link_rate.exit232._transport_convert_phy_link_rate.exit242_crit_edge ]
  %negotiated_linkrate = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 4
  %81 = ptrtoint ptr %negotiated_linkrate to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %rc.0.i241, ptr %negotiated_linkrate, align 8
  br label %out

out:                                              ; preds = %_transport_convert_phy_link_rate.exit242, %if.end129.out_crit_edge, %do.end124, %do.end83, %do.end69, %do.end60
  %rc.0 = phi i32 [ -6, %do.end69 ], [ -5, %do.end83 ], [ -6, %do.end124 ], [ 0, %if.end129.out_crit_edge ], [ 0, %_transport_convert_phy_link_rate.exit242 ], [ -12, %do.end60 ]
  call void @kfree(ptr noundef %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then44, %_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call49, %if.then44 ], [ %rc.0, %out ], [ -22, %_transport_sas_node_find_by_sas_address.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %phy_pg0) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_transport_smp_handler(ptr noundef %job, ptr noundef %shost, ptr noundef %rphy) #0 align 64 {
entry:
  %dma_addr_in = alloca i32, align 4
  %dma_addr_out = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr_in) #10
  %0 = ptrtoint ptr %dma_addr_in to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_addr_in, align 4, !annotation !353
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr_out) #10
  %1 = ptrtoint ptr %dma_addr_out to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dma_addr_out, align 4, !annotation !353
  %shost_recovery = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 3, i32 1
  %2 = ptrtoint ptr %shost_recovery to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shost_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %pci_error_recovery = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 37, i32 9
  %4 = ptrtoint ptr %pci_error_recovery to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pci_error_recovery, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 2, i32 1
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name, ptr noundef nonnull @.str.190) #13
  br label %job_done

if.end:                                           ; preds = %lor.lhs.false
  %transport_cmds = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 11, i32 3
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %transport_cmds, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.job_done_crit_edge

if.end.job_done_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %job_done

if.end7:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %hostdata.i, i32 0, i32 76, i32 4
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %7)
  %cmp.not = icmp eq i16 %7, -32768
  br i1 %cmp.not, label %if.end19, label %do.end14

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %name16 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 2, i32 1
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name16, ptr noundef nonnull @.str.190) #13
  br label %out

if.end19:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %status, align 4
  %pdev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %request_payload = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7
  %sg_cnt.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sg_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp sgt i32 %12, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end19
  %13 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %request_payload, align 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %14, ptr noundef nonnull %dma_addr_out, i32 noundef 3264, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.i.out_crit_edge, label %if.then27

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else.i:                                        ; preds = %if.end19
  %sg_list.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sg_list.i, align 4
  %call3.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %16, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.else.i.out_crit_edge, label %if.end25.thread

if.else.i.out_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end25.thread:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sg_list.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_address.i, align 4
  %21 = ptrtoint ptr %dma_addr_out to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dma_addr_out, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 4
  %22 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_length.i, align 4
  br label %if.end32

if.then27:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %request_payload, align 4
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 2
  %26 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sg_list, align 4
  %28 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sg_cnt.i, align 4
  %call31 = call i32 @sg_copy_to_buffer(ptr noundef %27, i32 noundef %29, ptr noundef nonnull %call.i.i, i32 noundef %25) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.end25.thread
  %dma_len_out.0.ph276 = phi i32 [ %25, %if.then27 ], [ %23, %if.end25.thread ]
  %addr_out.0271 = phi ptr [ %call.i.i, %if.then27 ], [ null, %if.end25.thread ]
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 4
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %reply_payload = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8
  %sg_cnt.i237 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %sg_cnt.i237 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sg_cnt.i237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i238 = icmp sgt i32 %33, 1
  br i1 %cmp.i238, label %if.then.i241, label %if.else.i246

if.then.i241:                                     ; preds = %if.end32
  %34 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reply_payload, align 4
  %call.i.i239 = call ptr @dma_alloc_attrs(ptr noundef %dev34, i32 noundef %35, ptr noundef nonnull %dma_addr_in, i32 noundef 3264, i32 noundef 0) #10
  %tobool.not.i240 = icmp eq ptr %call.i.i239, null
  br i1 %tobool.not.i240, label %if.then.i241.unmap_out_crit_edge, label %if.then.i241.if.end38_crit_edge

if.then.i241.if.end38_crit_edge:                  ; preds = %if.then.i241
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then.i241.unmap_out_crit_edge:                 ; preds = %if.then.i241
  call void @__sanitizer_cov_trace_pc() #12
  br label %unmap_out

if.else.i246:                                     ; preds = %if.end32
  %sg_list.i243 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 2
  %36 = ptrtoint ptr %sg_list.i243 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sg_list.i243, align 4
  %call3.i244 = call i32 @dma_map_sg_attrs(ptr noundef %dev34, ptr noundef %37, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i244)
  %tobool4.not.i245 = icmp eq i32 %call3.i244, 0
  br i1 %tobool4.not.i245, label %if.else.i246.unmap_out_crit_edge, label %if.end6.i249

if.else.i246.unmap_out_crit_edge:                 ; preds = %if.else.i246
  call void @__sanitizer_cov_trace_pc() #12
  br label %unmap_out

if.end6.i249:                                     ; preds = %if.else.i246
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %sg_list.i243 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sg_list.i243, align 4
  %dma_address.i247 = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dma_address.i247 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_address.i247, align 4
  %42 = ptrtoint ptr %dma_addr_in to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %dma_addr_in, align 4
  %dma_length.i248 = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 4
  br label %if.end38

if.end38:                                         ; preds = %if.end6.i249, %if.then.i241.if.end38_crit_edge
  %addr_in.0.ph = phi ptr [ null, %if.end6.i249 ], [ %call.i.i239, %if.then.i241.if.end38_crit_edge ]
  %dma_len_in.0.ph.in = phi ptr [ %dma_length.i248, %if.end6.i249 ], [ %reply_payload, %if.then.i241.if.end38_crit_edge ]
  %43 = ptrtoint ptr %dma_len_in.0.ph.in to i32
  call void @__asan_load4_noabort(i32 %43)
  %dma_len_in.0.ph = load i32, ptr %dma_len_in.0.ph.in, align 4
  %call39 = call i32 @mpt3sas_wait_for_ioc(ptr noundef %hostdata.i, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.unmap_in_crit_edge

if.end38.unmap_in_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %unmap_in

if.end42:                                         ; preds = %if.end38
  %transport_cb_idx = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %hostdata.i, i32 0, i32 65
  %44 = ptrtoint ptr %transport_cb_idx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %transport_cb_idx, align 2
  %call43 = call zeroext i16 @mpt3sas_base_get_smid(ptr noundef %hostdata.i, i8 noundef zeroext %45) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call43)
  %tobool44.not = icmp eq i16 %call43, 0
  br i1 %tobool44.not, label %do.end48, label %if.end53

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %name50 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 2, i32 1
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name50, ptr noundef nonnull @.str.190) #13
  br label %unmap_in

if.end53:                                         ; preds = %if.end42
  %call54 = call ptr @mpt3sas_base_get_msg_frame(ptr noundef %hostdata.i, i16 noundef zeroext %call43) #10
  %smid56 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %hostdata.i, i32 0, i32 76, i32 5
  %46 = ptrtoint ptr %smid56 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %call43, ptr %smid56, align 2
  %47 = call ptr @memset(ptr %call54, i32 0, i32 48)
  %Function = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call54, i32 0, i32 3
  %48 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 26, ptr %Function, align 1
  %call57 = call fastcc zeroext i8 @_transport_get_port_id_by_rphy(ptr noundef %hostdata.i, ptr noundef %rphy)
  %PhysicalPort = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call54, i32 0, i32 1
  %49 = ptrtoint ptr %PhysicalPort to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call57, ptr %PhysicalPort, align 1
  %tobool58.not = icmp eq ptr %rphy, null
  %sas_address59 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 2, i32 5, i32 5, i32 7
  %sas_address = getelementptr inbounds %struct.sas_rphy, ptr %rphy, i32 0, i32 1, i32 3
  %sas_address59.sink = select i1 %tobool58.not, ptr %sas_address59, ptr %sas_address
  %50 = ptrtoint ptr %sas_address59.sink to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %sas_address59.sink, align 8
  %52 = call i64 @llvm.bswap.i64(i64 %51)
  %SASAddress = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call54, i32 0, i32 11
  %53 = ptrtoint ptr %SASAddress to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %52, ptr %SASAddress, align 4
  %54 = trunc i32 %dma_len_out.0.ph276 to i16
  %conv60 = add i16 %54, -4
  %55 = call i16 @llvm.bswap.i16(i16 %conv60)
  %RequestDataLength = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call54, i32 0, i32 4
  %56 = ptrtoint ptr %RequestDataLength to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %RequestDataLength, align 4
  %SGL = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call54, i32 0, i32 14
  %build_sg = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 50, i32 9, i32 5, i32 7
  %57 = ptrtoint ptr %build_sg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %build_sg, align 8
  %59 = ptrtoint ptr %dma_addr_out to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_addr_out, align 4
  %sub61 = add i32 %dma_len_out.0.ph276, -4
  %61 = ptrtoint ptr %dma_addr_in to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_addr_in, align 4
  %sub62 = add i32 %dma_len_in.0.ph, -4
  call void %58(ptr noundef %hostdata.i, ptr noundef %SGL, i32 noundef %60, i32 noundef %sub61, i32 noundef %62, i32 noundef %sub62) #10
  %logging_level = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5, i32 5, i32 3
  %63 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %logging_level, align 8
  %and = and i32 %64, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  br i1 %tobool63.not, label %if.end53.if.end72_crit_edge, label %do.end67

if.end53.if.end72_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.end67:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %name69 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 2, i32 1
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %name69, ptr noundef nonnull @.str.190) #13
  br label %if.end72

if.end72:                                         ; preds = %do.end67, %if.end53.if.end72_crit_edge
  %done = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 12, i32 5, i32 1, i32 0, i32 4
  %65 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 49, i32 12, i32 5, i32 1, i32 0, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @init_completion.__key) #10
  %put_smid_default = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 9, i32 5, i32 1, i32 1
  %66 = ptrtoint ptr %put_smid_default to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %put_smid_default, align 8
  call void %67(ptr noundef %hostdata.i, i16 noundef zeroext %call43) #10
  %call76 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 1000) #10
  %68 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %status, align 4
  %70 = and i16 %69, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool81.not = icmp eq i16 %70, 0
  br i1 %tobool81.not, label %do.end85, label %if.end72.if.end98_crit_edge

if.end72.if.end98_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

do.end85:                                         ; preds = %if.end72
  %name87 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 2, i32 1
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name87, ptr noundef nonnull @.str.190) #13
  call fastcc void @_debug_dump_mf(ptr noundef %call54)
  %71 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %status, align 4
  %73 = and i16 %72, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool94.not = icmp eq i16 %73, 0
  br i1 %tobool94.not, label %if.then95, label %do.end85.if.end98_crit_edge

do.end85.if.end98_crit_edge:                      ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then95:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #12
  %call96 = call i32 @mpt3sas_base_hard_reset_handler(ptr noundef %hostdata.i, i32 noundef 0) #10
  br label %unmap_in

if.end98:                                         ; preds = %do.end85.if.end98_crit_edge, %if.end72.if.end98_crit_edge
  %74 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %logging_level, align 8
  %and100 = and i32 %75, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end98.if.end110_crit_edge, label %do.end105

if.end98.if.end110_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

do.end105:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %name107 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 2, i32 1
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef %name107, ptr noundef nonnull @.str.190) #13
  br label %if.end110

if.end110:                                        ; preds = %do.end105, %if.end98.if.end110_crit_edge
  %76 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %status, align 4
  %78 = and i16 %77, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool115.not = icmp eq i16 %78, 0
  br i1 %tobool115.not, label %if.then116, label %if.end129

if.then116:                                       ; preds = %if.end110
  %79 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %logging_level, align 8
  %and118 = and i32 %80, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.then116.unmap_in_crit_edge, label %do.end123

if.then116.unmap_in_crit_edge:                    ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  br label %unmap_in

do.end123:                                        ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #12
  %name125 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 2, i32 1
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef %name125, ptr noundef nonnull @.str.190) #13
  br label %unmap_in

if.end129:                                        ; preds = %if.end110
  %reply = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %hostdata.i, i32 0, i32 76, i32 2
  %81 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reply, align 4
  %83 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %logging_level, align 8
  %and132 = and i32 %84, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end129.if.end143_crit_edge, label %do.end137

if.end129.if.end143_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

do.end137:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  %name139 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 2, i32 1
  %ResponseDataLength = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REPLY, ptr %82, i32 0, i32 4
  %85 = ptrtoint ptr %ResponseDataLength to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %ResponseDataLength, align 4
  %87 = call i16 @llvm.bswap.i16(i16 %86)
  %conv141 = zext i16 %87 to i32
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name139, ptr noundef nonnull @.str.190, i32 noundef %conv141) #13
  br label %if.end143

if.end143:                                        ; preds = %do.end137, %if.end129.if.end143_crit_edge
  %reply144 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 4
  %88 = ptrtoint ptr %reply144 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reply144, align 4
  %90 = call ptr @memcpy(ptr %89, ptr %82, i32 28)
  %reply_len = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 6
  %91 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 28, ptr %reply_len, align 4
  %ResponseDataLength145 = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REPLY, ptr %82, i32 0, i32 4
  %92 = ptrtoint ptr %ResponseDataLength145 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %ResponseDataLength145, align 4
  %94 = call i16 @llvm.bswap.i16(i16 %93)
  %conv146 = zext i16 %94 to i32
  %tobool147.not = icmp eq ptr %addr_in.0.ph, null
  br i1 %tobool147.not, label %unmap_in.thread, label %unmap_in.thread293

unmap_in.thread:                                  ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pdev, align 4
  %dev158286 = getelementptr inbounds %struct.pci_dev, ptr %96, i32 0, i32 44
  br label %if.else.i255

unmap_in.thread293:                               ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  %sg_list150 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 2
  %97 = ptrtoint ptr %sg_list150 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sg_list150, align 4
  %99 = ptrtoint ptr %sg_cnt.i237 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sg_cnt.i237, align 4
  %101 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %reply_payload, align 4
  %call155 = call i32 @sg_copy_to_buffer(ptr noundef %98, i32 noundef %100, ptr noundef nonnull %addr_in.0.ph, i32 noundef %102) #10
  %103 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pdev, align 4
  %dev158296 = getelementptr inbounds %struct.pci_dev, ptr %104, i32 0, i32 44
  br label %if.then.i253

unmap_in:                                         ; preds = %do.end123, %if.then116.unmap_in_crit_edge, %if.then95, %do.end48, %if.end38.unmap_in_crit_edge
  %rc.0 = phi i32 [ %call39, %if.end38.unmap_in_crit_edge ], [ -110, %if.then95 ], [ -11, %do.end48 ], [ -6, %do.end123 ], [ -6, %if.then116.unmap_in_crit_edge ]
  %105 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev, align 4
  %dev158 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  %tobool.not.i252 = icmp eq ptr %addr_in.0.ph, null
  br i1 %tobool.not.i252, label %unmap_in.if.else.i255_crit_edge, label %unmap_in.if.then.i253_crit_edge

unmap_in.if.then.i253_crit_edge:                  ; preds = %unmap_in
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i253

unmap_in.if.else.i255_crit_edge:                  ; preds = %unmap_in
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i255

if.then.i253:                                     ; preds = %unmap_in.if.then.i253_crit_edge, %unmap_in.thread293
  %dev158300 = phi ptr [ %dev158296, %unmap_in.thread293 ], [ %dev158, %unmap_in.if.then.i253_crit_edge ]
  %rc.0299 = phi i32 [ 0, %unmap_in.thread293 ], [ %rc.0, %unmap_in.if.then.i253_crit_edge ]
  %reslen.0298 = phi i32 [ %conv146, %unmap_in.thread293 ], [ 0, %unmap_in.if.then.i253_crit_edge ]
  %107 = ptrtoint ptr %dma_addr_in to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dma_addr_in, align 4
  %109 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %reply_payload, align 4
  call void @dma_free_attrs(ptr noundef %dev158300, i32 noundef %110, ptr noundef nonnull %addr_in.0.ph, i32 noundef %108, i32 noundef 0) #10
  br label %unmap_out

if.else.i255:                                     ; preds = %unmap_in.if.else.i255_crit_edge, %unmap_in.thread
  %dev158292 = phi ptr [ %dev158286, %unmap_in.thread ], [ %dev158, %unmap_in.if.else.i255_crit_edge ]
  %rc.0291 = phi i32 [ 0, %unmap_in.thread ], [ %rc.0, %unmap_in.if.else.i255_crit_edge ]
  %reslen.0289 = phi i32 [ %conv146, %unmap_in.thread ], [ 0, %unmap_in.if.else.i255_crit_edge ]
  %sg_list.i254 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 2
  %111 = ptrtoint ptr %sg_list.i254 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sg_list.i254, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev158292, ptr noundef %112, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  br label %unmap_out

unmap_out:                                        ; preds = %if.else.i255, %if.then.i253, %if.else.i246.unmap_out_crit_edge, %if.then.i241.unmap_out_crit_edge
  %reslen.1 = phi i32 [ 0, %if.then.i241.unmap_out_crit_edge ], [ 0, %if.else.i246.unmap_out_crit_edge ], [ %reslen.0298, %if.then.i253 ], [ %reslen.0289, %if.else.i255 ]
  %rc.1 = phi i32 [ -12, %if.then.i241.unmap_out_crit_edge ], [ -12, %if.else.i246.unmap_out_crit_edge ], [ %rc.0299, %if.then.i253 ], [ %rc.0291, %if.else.i255 ]
  %113 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev, align 4
  %dev161 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  br i1 %cmp.i, label %if.then.i258, label %if.else.i260

if.then.i258:                                     ; preds = %unmap_out
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %dma_addr_out to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dma_addr_out, align 4
  %117 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %request_payload, align 4
  call void @dma_free_attrs(ptr noundef %dev161, i32 noundef %118, ptr noundef nonnull %addr_out.0271, i32 noundef %116, i32 noundef 0) #10
  br label %out

if.else.i260:                                     ; preds = %unmap_out
  call void @__sanitizer_cov_trace_pc() #12
  %sg_list.i259 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 2
  %119 = ptrtoint ptr %sg_list.i259 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sg_list.i259, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %dev161, ptr noundef %120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  br label %out

out:                                              ; preds = %if.else.i260, %if.then.i258, %if.else.i.out_crit_edge, %if.then.i.out_crit_edge, %do.end14
  %reslen.2 = phi i32 [ 0, %do.end14 ], [ 0, %if.then.i.out_crit_edge ], [ 0, %if.else.i.out_crit_edge ], [ %reslen.1, %if.then.i258 ], [ %reslen.1, %if.else.i260 ]
  %rc.2 = phi i32 [ -11, %do.end14 ], [ -12, %if.then.i.out_crit_edge ], [ -12, %if.else.i.out_crit_edge ], [ %rc.1, %if.then.i258 ], [ %rc.1, %if.else.i260 ]
  %121 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 -32768, ptr %status, align 4
  call void @mutex_unlock(ptr noundef %transport_cmds) #10
  br label %job_done

job_done:                                         ; preds = %out, %if.end.job_done_crit_edge, %do.end
  %reslen.3 = phi i32 [ 0, %do.end ], [ 0, %if.end.job_done_crit_edge ], [ %reslen.2, %out ]
  %rc.3 = phi i32 [ -14, %do.end ], [ %call4, %if.end.job_done_crit_edge ], [ %rc.2, %out ]
  call void @bsg_job_done(ptr noundef %job, i32 noundef %rc.3, i32 noundef %reslen.3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr_out) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr_in) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt3sas_device_remove_by_sas_address(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt3sas_expander_remove(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_scsih_expander_find_by_sas_address(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_get_sas_device_pg0(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_wait_for_ioc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mpt3sas_base_get_smid(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_base_get_msg_frame(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt3sas_base_free_smid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_debug_dump_mf(ptr nocapture noundef readonly %mpi_request) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #13
  br label %for.body

for.body:                                         ; preds = %do.end9.for.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %do.end9.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.01)
  %tobool.not = icmp ne i32 %i.01, 0
  %0 = and i32 %i.01, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp eq i32 %0, 0
  %or.cond = and i1 %tobool.not, %cmp1
  br i1 %or.cond, label %do.end4, label %for.body.do.end9_crit_edge

for.body.do.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end4, %for.body.do.end9_crit_edge
  %arrayidx = getelementptr i32, ptr %mpi_request, i32 %i.01
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %3) #13
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %do.end14, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end14:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_base_hard_reset_handler(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_get_port_by_id(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_get_phy_pg1(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__mpt3sas_get_sdev_by_rphy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_transport_expander_phy_control(ptr noundef %ioc, ptr nocapture noundef readonly %phy, i8 noundef zeroext %phy_operation) unnamed_addr #0 align 64 {
entry:
  %data_out_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_out_dma) #10
  %0 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data_out_dma, align 4, !annotation !353
  %shost_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 27
  %1 = ptrtoint ptr %shost_recovery to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %shost_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %pci_error_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 34
  %3 = ptrtoint ptr %pci_error_recovery to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pci_error_recovery, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name, ptr noundef nonnull @.str.145) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %transport_cmds = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76
  tail call void @mutex_lock_nested(ptr noundef %transport_cmds, i32 noundef 0) #10
  %status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76, i32 4
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp.not = icmp eq i16 %6, -32768
  br i1 %cmp.not, label %if.end14, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name11 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name11, ptr noundef nonnull @.str.145) #13
  br label %out.thread

if.end14:                                         ; preds = %if.end
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %status, align 4
  %call17 = tail call i32 @mpt3sas_wait_for_ioc(ptr noundef %ioc, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.out.thread_crit_edge

if.end14.out.thread_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.thread

if.end20:                                         ; preds = %if.end14
  %transport_cb_idx = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 65
  %8 = ptrtoint ptr %transport_cb_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %transport_cb_idx, align 2
  %call21 = tail call zeroext i16 @mpt3sas_base_get_smid(ptr noundef %ioc, i8 noundef zeroext %9) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call21)
  %tobool22.not = icmp eq i16 %call21, 0
  br i1 %tobool22.not, label %do.end26, label %if.end31

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %name28 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name28, ptr noundef nonnull @.str.145) #13
  br label %out.thread

if.end31:                                         ; preds = %if.end20
  %call32 = tail call ptr @mpt3sas_base_get_msg_frame(ptr noundef %ioc, i16 noundef zeroext %call21) #10
  %smid34 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76, i32 5
  %10 = ptrtoint ptr %smid34 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %call21, ptr %smid34, align 2
  %pdev = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 7
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 44, ptr noundef nonnull %data_out_dma, i32 noundef 3264, i32 noundef 0) #10
  %tobool36.not = icmp eq ptr %call.i, null
  br i1 %tobool36.not, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.2, i32 noundef 1598, ptr noundef nonnull @.str.145) #13
  call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %call21) #10
  br label %out.thread

if.end43:                                         ; preds = %if.end31
  %13 = getelementptr inbounds i8, ptr %call.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 64, ptr %call.i, align 8
  %function = getelementptr inbounds %struct.phy_control_request, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %function to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -111, ptr %function, align 1
  %request_length = getelementptr inbounds %struct.phy_control_request, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %request_length to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 9, ptr %request_length, align 1
  %allocated_response_length = getelementptr inbounds %struct.phy_control_request, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %allocated_response_length to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %allocated_response_length, align 2
  %number = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 1
  %19 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number, align 8
  %conv44 = trunc i32 %20 to i8
  %phy_identifier = getelementptr inbounds %struct.phy_control_request, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %phy_identifier to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv44, ptr %phy_identifier, align 1
  %phy_operation45 = getelementptr inbounds %struct.phy_control_request, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %phy_operation45 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %phy_operation, ptr %phy_operation45, align 2
  %minimum_linkrate = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 6
  %23 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %minimum_linkrate, align 8
  %.tr = trunc i32 %24 to i8
  %conv46 = shl i8 %.tr, 4
  %programmed_min_physical_link_rate = getelementptr inbounds %struct.phy_control_request, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %programmed_min_physical_link_rate to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv46, ptr %programmed_min_physical_link_rate, align 8
  %maximum_linkrate = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 8
  %26 = ptrtoint ptr %maximum_linkrate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %maximum_linkrate, align 8
  %.tr250 = trunc i32 %27 to i8
  %conv48 = shl i8 %.tr250, 4
  %programmed_max_physical_link_rate = getelementptr inbounds %struct.phy_control_request, ptr %call.i, i32 0, i32 11
  %28 = ptrtoint ptr %programmed_max_physical_link_rate to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv48, ptr %programmed_max_physical_link_rate, align 1
  %29 = call ptr @memset(ptr %call32, i32 0, i32 48)
  %Function = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32, i32 0, i32 3
  %30 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 26, ptr %Function, align 1
  %hostdata.i = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 14
  %31 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hostdata.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end43._transport_get_port_id_by_sas_phy.exit_crit_edge, label %if.then.i

if.end43._transport_get_port_id_by_sas_phy.exit_crit_edge: ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %_transport_get_port_id_by_sas_phy.exit

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %port_id1.i = getelementptr inbounds %struct.hba_port, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %port_id1.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port_id1.i, align 4
  br label %_transport_get_port_id_by_sas_phy.exit

_transport_get_port_id_by_sas_phy.exit:           ; preds = %if.then.i, %if.end43._transport_get_port_id_by_sas_phy.exit_crit_edge
  %port_id.0.i = phi i8 [ %34, %if.then.i ], [ -1, %if.end43._transport_get_port_id_by_sas_phy.exit_crit_edge ]
  %PhysicalPort = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32, i32 0, i32 1
  %35 = ptrtoint ptr %PhysicalPort to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %port_id.0.i, ptr %PhysicalPort, align 1
  %VF_ID = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32, i32 0, i32 8
  %36 = ptrtoint ptr %VF_ID to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %VF_ID, align 1
  %VP_ID = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32, i32 0, i32 7
  %37 = ptrtoint ptr %VP_ID to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %VP_ID, align 4
  %sas_address = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %sas_address, align 8
  %40 = call i64 @llvm.bswap.i64(i64 %39)
  %SASAddress = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32, i32 0, i32 11
  %41 = ptrtoint ptr %SASAddress to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %40, ptr %SASAddress, align 4
  %RequestDataLength = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32, i32 0, i32 4
  %42 = ptrtoint ptr %RequestDataLength to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 3072, ptr %RequestDataLength, align 4
  %SGL = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call32, i32 0, i32 14
  %build_sg = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 83
  %43 = ptrtoint ptr %build_sg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %build_sg, align 8
  %45 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_out_dma, align 4
  %add = add i32 %46, 40
  call void %44(ptr noundef %ioc, ptr noundef %SGL, i32 noundef %46, i32 noundef 40, i32 noundef %add, i32 noundef 4) #10
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %47 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %logging_level, align 8
  %and = and i32 %48, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %_transport_get_port_id_by_sas_phy.exit.if.end63_crit_edge, label %do.end54

_transport_get_port_id_by_sas_phy.exit.if.end63_crit_edge: ; preds = %_transport_get_port_id_by_sas_phy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

do.end54:                                         ; preds = %_transport_get_port_id_by_sas_phy.exit
  call void @__sanitizer_cov_trace_pc() #12
  %name56 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %49 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %sas_address, align 8
  %51 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %number, align 8
  %conv61 = zext i8 %phy_operation to i32
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %name56, i64 noundef %50, i32 noundef %52, i32 noundef %conv61) #13
  br label %if.end63

if.end63:                                         ; preds = %do.end54, %_transport_get_port_id_by_sas_phy.exit.if.end63_crit_edge
  %done = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76, i32 1
  %53 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @init_completion.__key) #10
  %put_smid_default = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 247
  %54 = ptrtoint ptr %put_smid_default to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %put_smid_default, align 8
  call void %55(ptr noundef %ioc, i16 noundef zeroext %call21) #10
  %call67 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 1000) #10
  %56 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %status, align 4
  %58 = and i16 %57, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool72.not = icmp eq i16 %58, 0
  br i1 %tobool72.not, label %issue_host_reset, label %if.end88

if.end88:                                         ; preds = %if.end63
  %59 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %logging_level, align 8
  %and90 = and i32 %60, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end88.if.end100_crit_edge, label %do.end95

if.end88.if.end100_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

do.end95:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %name97 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %name97) #13
  br label %if.end100

if.end100:                                        ; preds = %do.end95, %if.end88.if.end100_crit_edge
  %61 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %status, align 4
  %63 = and i16 %62, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool105.not = icmp eq i16 %63, 0
  br i1 %tobool105.not, label %if.else, label %if.then106

if.then106:                                       ; preds = %if.end100
  %reply = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 76, i32 2
  %64 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reply, align 4
  %66 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %logging_level, align 8
  %and109 = and i32 %67, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.then106.if.end120_crit_edge, label %do.end114

if.then106.if.end120_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

do.end114:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  %name116 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %ResponseDataLength = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REPLY, ptr %65, i32 0, i32 4
  %68 = ptrtoint ptr %ResponseDataLength to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %ResponseDataLength, align 4
  %70 = call i16 @llvm.bswap.i16(i16 %69)
  %conv118 = zext i16 %70 to i32
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef %name116, i32 noundef %conv118) #13
  br label %if.end120

if.end120:                                        ; preds = %do.end114, %if.then106.if.end120_crit_edge
  %ResponseDataLength121 = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REPLY, ptr %65, i32 0, i32 4
  %71 = ptrtoint ptr %ResponseDataLength121 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ResponseDataLength121, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %72)
  %cmp123.not = icmp eq i16 %72, 1024
  br i1 %cmp123.not, label %if.end126, label %if.end120.if.then160_crit_edge

if.end120.if.then160_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then160

if.end126:                                        ; preds = %if.end120
  %73 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %logging_level, align 8
  %and128 = and i32 %74, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end126.if.then160_crit_edge, label %do.end133

if.end126.if.then160_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then160

do.end133:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  %name135 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %function_result = getelementptr i8, ptr %call.i, i32 42
  %75 = ptrtoint ptr %function_result to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %function_result, align 1
  %conv137 = zext i8 %76 to i32
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef %name135, i32 noundef %conv137) #13
  br label %if.then160

if.else:                                          ; preds = %if.end100
  %77 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %logging_level, align 8
  %and141 = and i32 %78, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.else.if.then160_crit_edge, label %do.end146

if.else.if.then160_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then160

do.end146:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %name148 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef %name148) #13
  br label %if.then160

issue_host_reset:                                 ; preds = %if.end63
  %name78 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name78, ptr noundef nonnull @.str.145) #13
  call fastcc void @_debug_dump_mf(ptr noundef %call32)
  %79 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %status, align 4
  %81 = and i16 %80, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool85.not.not = icmp eq i16 %81, 0
  br i1 %tobool85.not.not, label %if.then154, label %issue_host_reset.if.then160_crit_edge

issue_host_reset.if.then160_crit_edge:            ; preds = %issue_host_reset
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then160

if.then154:                                       ; preds = %issue_host_reset
  call void @__sanitizer_cov_trace_pc() #12
  %call155 = call i32 @mpt3sas_base_hard_reset_handler(ptr noundef %ioc, i32 noundef 0) #10
  br label %if.then160

out.thread:                                       ; preds = %do.end40, %do.end26, %if.end14.out.thread_crit_edge, %do.end9
  %rc.1.ph = phi i32 [ -11, %do.end26 ], [ -12, %do.end40 ], [ %call17, %if.end14.out.thread_crit_edge ], [ -11, %do.end9 ]
  %82 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 -32768, ptr %status, align 4
  br label %if.end163

if.then160:                                       ; preds = %if.then154, %issue_host_reset.if.then160_crit_edge, %do.end146, %if.else.if.then160_crit_edge, %do.end133, %if.end126.if.then160_crit_edge, %if.end120.if.then160_crit_edge
  %rc.1 = phi i32 [ -22, %if.end120.if.then160_crit_edge ], [ -22, %if.then154 ], [ -22, %issue_host_reset.if.then160_crit_edge ], [ 0, %if.end126.if.then160_crit_edge ], [ 0, %do.end133 ], [ -22, %if.else.if.then160_crit_edge ], [ -22, %do.end146 ]
  %83 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 -32768, ptr %status, align 4
  %84 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev, align 4
  %dev162 = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %86 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %data_out_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev162, i32 noundef 44, ptr noundef nonnull %call.i, i32 noundef %87, i32 noundef 0) #10
  br label %if.end163

if.end163:                                        ; preds = %if.then160, %out.thread
  %rc.1257 = phi i32 [ %rc.1.ph, %out.thread ], [ %rc.1, %if.then160 ]
  call void @mutex_unlock(ptr noundef %transport_cmds) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end163, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ %rc.1257, %if.end163 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_out_dma) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_base_sas_iounit_control(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_get_sas_iounit_pg0(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_get_sas_iounit_pg1(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_set_sas_iounit_pg1(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_get_phy_pg0(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @_transport_get_port_id_by_rphy(ptr noundef %ioc, ptr noundef %rphy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rphy, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %identify = getelementptr inbounds %struct.sas_rphy, ptr %rphy, i32 0, i32 1
  %0 = ptrtoint ptr %identify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %identify, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 2, label %if.end.do.body5_crit_edge
    i32 3, label %if.end.do.body5_crit_edge80
    i32 1, label %do.body32
  ]

if.end.do.body5_crit_edge80:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

if.end.do.body5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body5:                                         ; preds = %if.end.do.body5_crit_edge, %if.end.do.body5_crit_edge80
  %sas_node_lock = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 120
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_node_lock) #10
  %sas_expander_list = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 118
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body5
  %sas_expander.0.in = phi ptr [ %sas_expander_list, %do.body5 ], [ %sas_expander.0, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %sas_expander.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %sas_expander.0 = load ptr, ptr %sas_expander.0.in, align 8
  %cmp12.not = icmp eq ptr %sas_expander.0, %sas_expander_list
  br i1 %cmp12.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %rphy14 = getelementptr inbounds %struct._sas_node, ptr %sas_expander.0, i32 0, i32 13
  %4 = ptrtoint ptr %rphy14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rphy14, align 4
  %cmp15 = icmp eq ptr %5, %rphy
  br i1 %cmp15, label %if.then17, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %port = getelementptr inbounds %struct._sas_node, ptr %sas_expander.0, i32 0, i32 10
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %port_id18 = getelementptr inbounds %struct.hba_port, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %port_id18 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_id18, align 4
  br label %for.end

for.end:                                          ; preds = %if.then17, %for.cond.for.end_crit_edge
  %port_id.0 = phi i8 [ %9, %if.then17 ], [ -1, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_node_lock, i32 noundef %call7) #10
  br label %cleanup

do.body32:                                        ; preds = %if.end
  %sas_device_lock = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 123
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_device_lock) #10
  %call44 = tail call ptr @__mpt3sas_get_sdev_by_rphy(ptr noundef %ioc, ptr noundef nonnull %rphy) #10
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %do.body32.if.end49_crit_edge, label %if.then46

do.body32.if.end49_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then46:                                        ; preds = %do.body32
  %port47 = getelementptr inbounds %struct._sas_device, ptr %call44, i32 0, i32 25
  %10 = ptrtoint ptr %port47 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port47, align 4
  %port_id48 = getelementptr inbounds %struct.hba_port, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %port_id48 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_id48, align 4
  %refcount.i = getelementptr inbounds %struct._sas_device, ptr %call44, i32 0, i32 23
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !349
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !350
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end49_crit_edge, label %if.then10.i.i.i.i.i, !prof !351

if.end5.i.i.i.i.i.if.end49_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %if.end49

if.then.i.i:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !352
  tail call void @kfree(ptr noundef nonnull %call44) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end49_crit_edge, %do.body32.if.end49_crit_edge
  %port_id.1 = phi i8 [ -1, %do.body32.if.end49_crit_edge ], [ %13, %if.end5.i.i.i.i.i.if.end49_crit_edge ], [ %13, %if.then10.i.i.i.i.i ], [ %13, %if.then.i.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_device_lock, i32 noundef %call39) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ -1, %entry.cleanup_crit_edge ], [ %port_id.0, %for.end ], [ %port_id.1, %if.end49 ], [ -1, %if.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bsg_job_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !99, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !171, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !212, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !256, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !284, !285, !287, !288, !289, !291, !292, !294, !295, !297, !298, !300, !301, !302, !304, !305, !307, !308, !310, !311, !313, !314, !315, !317, !318, !320, !321, !323, !324, !325, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339}
!llvm.module.flags = !{!340, !341, !342, !343, !344, !345, !346, !347}
!llvm.ident = !{!348}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 697, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mpt3sas_transport_port_add._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mpt3sas_transport_port_add._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @mpt3sas_transport_port_add._entry.3, !7, !"_entry", i1 false, i1 false}
!7 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 705, i32 3}
!8 = !{ptr @mpt3sas_transport_port_add._entry_ptr.4, !7, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 718, i32 3}
!11 = !{ptr @mpt3sas_transport_port_add._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @mpt3sas_transport_port_add._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @mpt3sas_transport_port_add._entry.8, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 725, i32 3}
!15 = !{ptr @mpt3sas_transport_port_add._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @mpt3sas_transport_port_add._entry.10, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 731, i32 3}
!18 = !{ptr @mpt3sas_transport_port_add._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @mpt3sas_transport_port_add._entry.12, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 757, i32 5}
!21 = !{ptr @mpt3sas_transport_port_add._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mpt3sas_transport_port_add._entry.14, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 765, i32 3}
!24 = !{ptr @mpt3sas_transport_port_add._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @mpt3sas_transport_port_add._entry.16, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 775, i32 4}
!27 = !{ptr @mpt3sas_transport_port_add._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mpt3sas_transport_port_add._entry.18, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 783, i32 3}
!30 = !{ptr @mpt3sas_transport_port_add._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @mpt3sas_transport_port_add._entry.20, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 789, i32 3}
!33 = !{ptr @mpt3sas_transport_port_add._entry_ptr.21, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 797, i32 4}
!36 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mpt3sas_transport_port_add._entry.22, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @mpt3sas_transport_port_add._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @mpt3sas_transport_port_add._entry.27, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 830, i32 3}
!42 = !{ptr @mpt3sas_transport_port_add._entry_ptr.28, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.30, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 839, i32 2}
!45 = !{ptr @mpt3sas_transport_port_add._entry.29, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mpt3sas_transport_port_add._entry_ptr.31, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.32, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 923, i32 5}
!49 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mpt3sas_transport_port_remove._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mpt3sas_transport_port_remove._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 948, i32 5}
!54 = !{ptr @mpt3sas_transport_port_remove._entry.34, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mpt3sas_transport_port_remove._entry_ptr.36, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.38, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 962, i32 5}
!58 = !{ptr @mpt3sas_transport_port_remove._entry.37, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mpt3sas_transport_port_remove._entry_ptr.39, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.41, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 982, i32 4}
!62 = !{ptr @mpt3sas_transport_port_remove._entry.40, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mpt3sas_transport_port_remove._entry_ptr.42, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.44, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 995, i32 2}
!66 = !{ptr @mpt3sas_transport_port_remove._entry.43, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mpt3sas_transport_port_remove._entry_ptr.45, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.46, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1020, i32 3}
!70 = !{ptr @mpt3sas_transport_add_host_phy._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mpt3sas_transport_add_host_phy._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @mpt3sas_transport_add_host_phy._entry.47, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1026, i32 3}
!74 = !{ptr @mpt3sas_transport_add_host_phy._entry_ptr.48, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @mpt3sas_transport_add_host_phy._entry.49, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1050, i32 3}
!77 = !{ptr @mpt3sas_transport_add_host_phy._entry_ptr.50, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.52, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1056, i32 3}
!80 = !{ptr @mpt3sas_transport_add_host_phy._entry.51, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mpt3sas_transport_add_host_phy._entry_ptr.53, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.54, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1089, i32 3}
!84 = !{ptr @mpt3sas_transport_add_expander_phy._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @mpt3sas_transport_add_expander_phy._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @mpt3sas_transport_add_expander_phy._entry.55, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1095, i32 3}
!88 = !{ptr @mpt3sas_transport_add_expander_phy._entry_ptr.56, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @mpt3sas_transport_add_expander_phy._entry.57, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1121, i32 3}
!91 = !{ptr @mpt3sas_transport_add_expander_phy._entry_ptr.58, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @mpt3sas_transport_add_expander_phy._entry.59, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1127, i32 3}
!94 = !{ptr @mpt3sas_transport_add_expander_phy._entry_ptr.60, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.61, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1199, i32 3}
!97 = !{ptr @.str.62, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mpt3sas_transport_update_links._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @mpt3sas_transport_update_links._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @mpt3sas_transport_functions, !101, !"mpt3sas_transport_functions", i1 false, i1 false}
!101 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 2178, i32 30}
!102 = !{ptr @mpt3sas_transport_template, !103, !"mpt3sas_transport_template", i1 false, i1 false}
!103 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 2188, i32 33}
!104 = !{ptr @.str.63, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 557, i32 2}
!106 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @_transport_add_phy._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @_transport_add_phy._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.65, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 509, i32 2}
!111 = !{ptr @.str.66, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @_transport_delete_port._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @_transport_delete_port._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.67, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 535, i32 2}
!116 = !{ptr @_transport_delete_phy._entry, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @_transport_delete_phy._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 211, i32 3}
!120 = !{ptr @.str.69, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @_transport_set_identify._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @_transport_set_identify._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @_transport_set_identify._entry.70, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 217, i32 3}
!125 = !{ptr @_transport_set_identify._entry_ptr.71, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 225, i32 3}
!128 = !{ptr @_transport_set_identify._entry.72, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @_transport_set_identify._entry_ptr.74, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.75, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 371, i32 3}
!132 = !{ptr @_transport_expander_report_manufacture._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @_transport_expander_report_manufacture._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.77, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 378, i32 3}
!136 = !{ptr @_transport_expander_report_manufacture._entry.76, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @_transport_expander_report_manufacture._entry_ptr.78, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.80, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 390, i32 3}
!140 = !{ptr @_transport_expander_report_manufacture._entry.79, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @_transport_expander_report_manufacture._entry_ptr.81, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.83, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 404, i32 3}
!144 = !{ptr @_transport_expander_report_manufacture._entry.82, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @_transport_expander_report_manufacture._entry_ptr.84, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.86, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 429, i32 2}
!148 = !{ptr @_transport_expander_report_manufacture._entry.85, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @_transport_expander_report_manufacture._entry_ptr.87, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.89, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 437, i32 3}
!152 = !{ptr @_transport_expander_report_manufacture._entry.88, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @_transport_expander_report_manufacture._entry_ptr.90, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.92, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 445, i32 2}
!156 = !{ptr @_transport_expander_report_manufacture._entry.91, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @_transport_expander_report_manufacture._entry_ptr.93, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.95, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 452, i32 3}
!160 = !{ptr @_transport_expander_report_manufacture._entry.94, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @_transport_expander_report_manufacture._entry_ptr.96, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.98, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 478, i32 3}
!164 = !{ptr @_transport_expander_report_manufacture._entry.97, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @_transport_expander_report_manufacture._entry_ptr.99, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @init_completion.__key, !167, !"__key", i1 false, i1 false}
!167 = !{!"../include/linux/completion.h", i32 87, i32 2}
!168 = !{ptr @.str.100, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.101, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 159, i32 2}
!171 = !{ptr @.str.102, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.103, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @_debug_dump_mf._entry, !170, !"_entry", i1 false, i1 false}
!174 = !{ptr @_debug_dump_mf._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.105, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 162, i32 4}
!177 = !{ptr @_debug_dump_mf._entry.104, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @_debug_dump_mf._entry_ptr.106, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.108, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 163, i32 3}
!181 = !{ptr @_debug_dump_mf._entry.107, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @_debug_dump_mf._entry_ptr.109, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.111, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 165, i32 2}
!185 = !{ptr @_debug_dump_mf._entry.110, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @_debug_dump_mf._entry_ptr.112, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.113, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1432, i32 3}
!189 = !{ptr @_transport_get_linkerrors._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @_transport_get_linkerrors._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.115, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1438, i32 3}
!193 = !{ptr @_transport_get_linkerrors._entry.114, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @_transport_get_linkerrors._entry_ptr.116, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.117, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1274, i32 3}
!197 = !{ptr @_transport_get_expander_phy_error_log._entry, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @_transport_get_expander_phy_error_log._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @_transport_get_expander_phy_error_log._entry.118, !200, !"_entry", i1 false, i1 false}
!200 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1281, i32 3}
!201 = !{ptr @_transport_get_expander_phy_error_log._entry_ptr.119, !200, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @_transport_get_expander_phy_error_log._entry.120, !203, !"_entry", i1 false, i1 false}
!203 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1293, i32 3}
!204 = !{ptr @_transport_get_expander_phy_error_log._entry_ptr.121, !203, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @_transport_get_expander_phy_error_log._entry.122, !206, !"_entry", i1 false, i1 false}
!206 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1306, i32 3}
!207 = !{ptr @_transport_get_expander_phy_error_log._entry_ptr.123, !206, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.125, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1337, i32 2}
!210 = !{ptr @_transport_get_expander_phy_error_log._entry.124, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @_transport_get_expander_phy_error_log._entry_ptr.126, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @_transport_get_expander_phy_error_log._entry.127, !213, !"_entry", i1 false, i1 false}
!213 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1346, i32 3}
!214 = !{ptr @_transport_get_expander_phy_error_log._entry_ptr.128, !213, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.130, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1354, i32 2}
!217 = !{ptr @_transport_get_expander_phy_error_log._entry.129, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @_transport_get_expander_phy_error_log._entry_ptr.131, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.133, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1360, i32 3}
!221 = !{ptr @_transport_get_expander_phy_error_log._entry.132, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @_transport_get_expander_phy_error_log._entry_ptr.134, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.136, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1371, i32 3}
!225 = !{ptr @_transport_get_expander_phy_error_log._entry.135, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @_transport_get_expander_phy_error_log._entry_ptr.137, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.139, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1385, i32 3}
!229 = !{ptr @_transport_get_expander_phy_error_log._entry.138, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @_transport_get_expander_phy_error_log._entry_ptr.140, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.141, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1729, i32 3}
!233 = !{ptr @_transport_phy_reset._entry, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @_transport_phy_reset._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.143, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1735, i32 3}
!237 = !{ptr @_transport_phy_reset._entry.142, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @_transport_phy_reset._entry_ptr.144, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.145, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1565, i32 3}
!241 = !{ptr @_transport_expander_phy_control._entry, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @_transport_expander_phy_control._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @_transport_expander_phy_control._entry.146, !244, !"_entry", i1 false, i1 false}
!244 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1572, i32 3}
!245 = !{ptr @_transport_expander_phy_control._entry_ptr.147, !244, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @_transport_expander_phy_control._entry.148, !247, !"_entry", i1 false, i1 false}
!247 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1584, i32 3}
!248 = !{ptr @_transport_expander_phy_control._entry_ptr.149, !247, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @_transport_expander_phy_control._entry.150, !250, !"_entry", i1 false, i1 false}
!250 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1597, i32 3}
!251 = !{ptr @_transport_expander_phy_control._entry_ptr.151, !250, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.153, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1633, i32 2}
!254 = !{ptr @_transport_expander_phy_control._entry.152, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @_transport_expander_phy_control._entry_ptr.154, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @_transport_expander_phy_control._entry.155, !257, !"_entry", i1 false, i1 false}
!257 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1642, i32 3}
!258 = !{ptr @_transport_expander_phy_control._entry_ptr.156, !257, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.158, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1650, i32 2}
!261 = !{ptr @_transport_expander_phy_control._entry.157, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @_transport_expander_phy_control._entry_ptr.159, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.161, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1656, i32 3}
!265 = !{ptr @_transport_expander_phy_control._entry.160, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @_transport_expander_phy_control._entry_ptr.162, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.164, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1667, i32 3}
!269 = !{ptr @_transport_expander_phy_control._entry.163, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @_transport_expander_phy_control._entry_ptr.165, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.167, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1673, i32 3}
!273 = !{ptr @_transport_expander_phy_control._entry.166, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @_transport_expander_phy_control._entry_ptr.168, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.169, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1787, i32 3}
!277 = !{ptr @_transport_phy_enable._entry, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @_transport_phy_enable._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @_transport_phy_enable._entry.170, !280, !"_entry", i1 false, i1 false}
!280 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1794, i32 3}
!281 = !{ptr @_transport_phy_enable._entry_ptr.171, !280, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @_transport_phy_enable._entry.172, !283, !"_entry", i1 false, i1 false}
!283 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1802, i32 3}
!284 = !{ptr @_transport_phy_enable._entry_ptr.173, !283, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.175, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1812, i32 4}
!287 = !{ptr @_transport_phy_enable._entry.174, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @_transport_phy_enable._entry_ptr.176, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @_transport_phy_enable._entry.177, !290, !"_entry", i1 false, i1 false}
!290 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1828, i32 3}
!291 = !{ptr @_transport_phy_enable._entry_ptr.178, !290, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @_transport_phy_enable._entry.179, !293, !"_entry", i1 false, i1 false}
!293 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1835, i32 3}
!294 = !{ptr @_transport_phy_enable._entry_ptr.180, !293, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @_transport_phy_enable._entry.181, !296, !"_entry", i1 false, i1 false}
!296 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1843, i32 3}
!297 = !{ptr @_transport_phy_enable._entry_ptr.182, !296, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.183, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1939, i32 3}
!300 = !{ptr @_transport_phy_speed._entry, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @_transport_phy_speed._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @_transport_phy_speed._entry.184, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1946, i32 3}
!304 = !{ptr @_transport_phy_speed._entry_ptr.185, !303, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @_transport_phy_speed._entry.186, !306, !"_entry", i1 false, i1 false}
!306 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1954, i32 3}
!307 = !{ptr @_transport_phy_speed._entry_ptr.187, !306, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @_transport_phy_speed._entry.188, !309, !"_entry", i1 false, i1 false}
!309 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 1974, i32 3}
!310 = !{ptr @_transport_phy_speed._entry_ptr.189, !309, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.190, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 2061, i32 3}
!313 = !{ptr @_transport_smp_handler._entry, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @_transport_smp_handler._entry_ptr, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @_transport_smp_handler._entry.191, !316, !"_entry", i1 false, i1 false}
!316 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 2071, i32 3}
!317 = !{ptr @_transport_smp_handler._entry_ptr.192, !316, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @_transport_smp_handler._entry.193, !319, !"_entry", i1 false, i1 false}
!319 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 2099, i32 3}
!320 = !{ptr @_transport_smp_handler._entry_ptr.194, !319, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.196, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 2120, i32 2}
!323 = !{ptr @_transport_smp_handler._entry.195, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @_transport_smp_handler._entry_ptr.197, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @_transport_smp_handler._entry.198, !326, !"_entry", i1 false, i1 false}
!326 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 2128, i32 3}
!327 = !{ptr @_transport_smp_handler._entry_ptr.199, !326, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.201, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 2138, i32 2}
!330 = !{ptr @_transport_smp_handler._entry.200, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @_transport_smp_handler._entry_ptr.202, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.204, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 2141, i32 3}
!334 = !{ptr @_transport_smp_handler._entry.203, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @_transport_smp_handler._entry_ptr.205, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.207, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/mpt3sas/mpt3sas_transport.c", i32 2149, i32 2}
!338 = !{ptr @_transport_smp_handler._entry.206, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @_transport_smp_handler._entry_ptr.208, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{i32 1, !"wchar_size", i32 2}
!341 = !{i32 1, !"min_enum_size", i32 4}
!342 = !{i32 8, !"branch-target-enforcement", i32 0}
!343 = !{i32 8, !"sign-return-address", i32 0}
!344 = !{i32 8, !"sign-return-address-all", i32 0}
!345 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!346 = !{i32 7, !"uwtable", i32 1}
!347 = !{i32 7, !"frame-pointer", i32 2}
!348 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!349 = !{i64 2148492756}
!350 = !{i64 2148407196, i64 2148407228, i64 2148407257, i64 2148407291, i64 2148407322, i64 2148407345}
!351 = !{!"branch_weights", i32 2000, i32 1}
!352 = !{i64 2149368870}
!353 = !{!"auto-init"}
