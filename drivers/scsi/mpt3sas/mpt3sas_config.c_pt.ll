; ModuleID = '/llk/IR_all_yes/drivers/scsi/mpt3sas/mpt3sas_config.c_pt.bc'
source_filename = "../drivers/scsi/mpt3sas/mpt3sas_config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct._MPI2_CONFIG_REQUEST = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i8, i8, i16, i32, %struct._MPI2_CONFIG_PAGE_HEADER, i32, %union._MPI2_SGE_IO_UNION }>
%union._MPI2_SGE_IO_UNION = type { %union._MPI2_IEEE_SGE_SIMPLE_UNION }
%union._MPI2_IEEE_SGE_SIMPLE_UNION = type { %struct._MPI2_IEEE_SGE_SIMPLE64 }
%struct._MPI2_IEEE_SGE_SIMPLE64 = type { i64, i32, i16, i8, i8 }
%struct.config_request = type { i16, ptr, i32 }
%struct._MPI2_CONFIG_REPLY = type { i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i32, %struct._MPI2_CONFIG_PAGE_HEADER }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }
%struct._MPI2_CONFIG_PAGE_SASIOUNIT_0 = type { %struct._MPI2_CONFIG_EXTENDED_PAGE_HEADER, i32, i8, i8, i16, [1 x %struct._MPI2_SAS_IO_UNIT0_PHY_DATA] }
%struct._MPI2_CONFIG_EXTENDED_PAGE_HEADER = type { i8, i8, i8, i8, i16, i8, i8 }
%struct._MPI2_SAS_IO_UNIT0_PHY_DATA = type { i8, i8, i8, i8, i32, i16, i16, i32, i32 }
%struct._MPI2_CONFIG_PAGE_RAID_VOL_0 = type <{ %struct._MPI2_CONFIG_PAGE_HEADER, i16, i8, i8, i32, %struct._MPI2_RAIDVOL0_SETTINGS, i64, i32, i16, i16, i8, i8, i16, i8, i8, i8, i8, [1 x %struct._MPI2_RAIDVOL0_PHYS_DISK] }>
%struct._MPI2_RAIDVOL0_SETTINGS = type { i16, i8, i8 }
%struct._MPI2_RAIDVOL0_PHYS_DISK = type { i8, i8, i8, i8 }
%struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_1 = type { %struct._MPI2_CONFIG_EXTENDED_PAGE_HEADER, i16, i16, [1 x %struct._MPI26_DRIVER_MASTER_TIGGER_ENTRY] }
%struct._MPI26_DRIVER_MASTER_TIGGER_ENTRY = type { i32 }
%struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_0 = type { %struct._MPI2_CONFIG_EXTENDED_PAGE_HEADER, i16, i16, [61 x i32] }
%struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_2 = type { %struct._MPI2_CONFIG_EXTENDED_PAGE_HEADER, i16, i16, [20 x %struct._MPI26_DRIVER_MPI_EVENT_TIGGER_ENTRY] }
%struct._MPI26_DRIVER_MPI_EVENT_TIGGER_ENTRY = type { i16, i16 }
%struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_3 = type { %struct._MPI2_CONFIG_EXTENDED_PAGE_HEADER, i16, i16, [20 x %struct._MPI26_DRIVER_SCSI_SENSE_TIGGER_ENTRY] }
%struct._MPI26_DRIVER_SCSI_SENSE_TIGGER_ENTRY = type { i8, i8, i8, i8 }
%struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_4 = type { %struct._MPI2_CONFIG_EXTENDED_PAGE_HEADER, i16, i16, [20 x %struct._MPI26_DRIVER_IOCSTATUS_LOGINFO_TIGGER_ENTRY] }
%struct._MPI26_DRIVER_IOCSTATUS_LOGINFO_TIGGER_ENTRY = type { i16, i16, i32 }
%struct._MPI2_CONFIG_PAGE_RAID_CONFIGURATION_0 = type { %struct._MPI2_CONFIG_EXTENDED_PAGE_HEADER, i8, i8, i8, i8, i32, [24 x i8], i32, i8, i8, i16, [1 x %struct._MPI2_RAIDCONFIG0_CONFIG_ELEMENT] }
%struct._MPI2_RAIDCONFIG0_CONFIG_ELEMENT = type { i16, i16, i8, i8, i16 }
%struct._MPI2_CONFIG_PAGE_RAID_VOL_1 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i16, i16, [24 x i8], [16 x i8], i64, i32, i32 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"config_done\00", [20 x i8] zeroinitializer }, align 32
@mpt3sas_config_update_driver_trigger_pg1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s: %s: Failed to get trigger pg1, ioc_status(0x%04x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mpt3sas_config_update_driver_trigger_pg1\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/scsi/mpt3sas/mpt3sas_config.c\00", [58 x i8] zeroinitializer }, align 32
@mpt3sas_config_update_driver_trigger_pg1._entry_ptr = internal global ptr @mpt3sas_config_update_driver_trigger_pg1._entry, section ".printk_index", align 4
@mpt3sas_config_update_driver_trigger_pg1._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_config_update_driver_trigger_pg1._entry_ptr.5 = internal global ptr @mpt3sas_config_update_driver_trigger_pg1._entry.4, section ".printk_index", align 4
@mpt3sas_config_update_driver_trigger_pg2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 2190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s: %s: Failed to get trigger pg2, ioc_status(0x%04x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mpt3sas_config_update_driver_trigger_pg2\00", [55 x i8] zeroinitializer }, align 32
@mpt3sas_config_update_driver_trigger_pg2._entry_ptr = internal global ptr @mpt3sas_config_update_driver_trigger_pg2._entry, section ".printk_index", align 4
@mpt3sas_config_update_driver_trigger_pg2._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 2223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_config_update_driver_trigger_pg2._entry_ptr.9 = internal global ptr @mpt3sas_config_update_driver_trigger_pg2._entry.8, section ".printk_index", align 4
@mpt3sas_config_update_driver_trigger_pg3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 2350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s: %s: Failed to get trigger pg3, ioc_status(0x%04x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mpt3sas_config_update_driver_trigger_pg3\00", [55 x i8] zeroinitializer }, align 32
@mpt3sas_config_update_driver_trigger_pg3._entry_ptr = internal global ptr @mpt3sas_config_update_driver_trigger_pg3._entry, section ".printk_index", align 4
@mpt3sas_config_update_driver_trigger_pg3._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 2382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_config_update_driver_trigger_pg3._entry_ptr.13 = internal global ptr @mpt3sas_config_update_driver_trigger_pg3._entry.12, section ".printk_index", align 4
@mpt3sas_config_update_driver_trigger_pg4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 2507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s: %s: Failed to get trigger pg4, ioc_status(0x%04x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mpt3sas_config_update_driver_trigger_pg4\00", [55 x i8] zeroinitializer }, align 32
@mpt3sas_config_update_driver_trigger_pg4._entry_ptr = internal global ptr @mpt3sas_config_update_driver_trigger_pg4._entry, section ".printk_index", align 4
@mpt3sas_config_update_driver_trigger_pg4._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 2538, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_config_update_driver_trigger_pg4._entry_ptr.17 = internal global ptr @mpt3sas_config_update_driver_trigger_pg4._entry.16, section ".printk_index", align 4
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"io_unit\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ioc\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bios\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"raid_volume\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"manufacturing\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"physdisk\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sas_io_unit\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sas_expander\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sas_device\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sas_phy\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"log\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"enclosure\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"raid_config\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"driver_mapping\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sas_port\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ext_manufacturing\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie_io_unit\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcie_switch\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcie_device\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcie_link\00", [22 x i8] zeroinitializer }, align 32
@_config_display_some_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s: %s: %s(%d), action(%d), form(0x%08x), smid(%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_config_display_some_debug\00", [37 x i8] zeroinitializer }, align 32
@_config_display_some_debug._entry_ptr = internal global ptr @_config_display_some_debug._entry, section ".printk_index", align 4
@_config_display_some_debug._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: \09iocstatus(0x%04x), loginfo(0x%08x)\0A\00", [53 x i8] zeroinitializer }, align 32
@_config_display_some_debug._entry_ptr.42 = internal global ptr @_config_display_some_debug._entry.40, section ".printk_index", align 4
@_config_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: %s: config_cmd in use\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_config_request\00", [16 x i8] zeroinitializer }, align 32
@_config_request._entry_ptr = internal global ptr @_config_request._entry, section ".printk_index", align 4
@_config_request._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: %s: attempting retry (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@_config_request._entry_ptr.47 = internal global ptr @_config_request._entry.45, section ".printk_index", align 4
@_config_request._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.3, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: %s: failed obtaining a smid\0A\00", [61 x i8] zeroinitializer }, align 32
@_config_request._entry_ptr.50 = internal global ptr @_config_request._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"config_request\00", [17 x i8] zeroinitializer }, align 32
@_config_request._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.44, ptr @.str.3, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: %s: command timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@_config_request._entry_ptr.54 = internal global ptr @_config_request._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"%s: %s: Firmware BUG: mpi_reply mismatch: Requested PageType(0x%02x) Reply PageType(0x%02x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"%s: %s: Firmware BUG: mpi_reply mismatch: Requested ExtPageType(0x%02x) Reply ExtPageType(0x%02x)\0A\00", [61 x i8] zeroinitializer }, align 32
@_config_request._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.44, ptr @.str.3, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: %s: retry (%d) completed!!\0A\00", [62 x i8] zeroinitializer }, align 32
@_config_request._entry_ptr.59 = internal global ptr @_config_request._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"%s: %s: Firmware BUG: config page mismatch: Requested PageType(0x%02x) Reply PageType(0x%02x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"%s: %s: Firmware BUG: config page mismatch: Requested ExtPageType(0x%02x) Reply ExtPageType(0x%02x)\0A\00", [59 x i8] zeroinitializer }, align 32
@_config_alloc_config_dma_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s: %s: dma_alloc_coherent failed asking for (%d) bytes!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"_config_alloc_config_dma_memory\00", [32 x i8] zeroinitializer }, align 32
@_config_alloc_config_dma_memory._entry_ptr = internal global ptr @_config_alloc_config_dma_memory._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@_debug_dump_mf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.67, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\016mf:\0A\09\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_debug_dump_mf\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/scsi/mpt3sas/mpt3sas_debug.h\00", [59 x i8] zeroinitializer }, align 32
@_debug_dump_mf._entry_ptr = internal global ptr @_debug_dump_mf._entry, section ".printk_index", align 4
@_debug_dump_mf._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.66, ptr @.str.67, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016\0A\09\00", [27 x i8] zeroinitializer }, align 32
@_debug_dump_mf._entry_ptr.70 = internal global ptr @_debug_dump_mf._entry.68, section ".printk_index", align 4
@_debug_dump_mf._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.66, ptr @.str.67, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\016%08x \00", [24 x i8] zeroinitializer }, align 32
@_debug_dump_mf._entry_ptr.73 = internal global ptr @_debug_dump_mf._entry.71, section ".printk_index", align 4
@_debug_dump_mf._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.66, ptr @.str.67, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@_debug_dump_mf._entry_ptr.76 = internal global ptr @_debug_dump_mf._entry.74, section ".printk_index", align 4
@_debug_dump_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.67, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\016reply:\0A\09\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_debug_dump_reply\00", [46 x i8] zeroinitializer }, align 32
@_debug_dump_reply._entry_ptr = internal global ptr @_debug_dump_reply._entry, section ".printk_index", align 4
@_debug_dump_reply._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.78, ptr @.str.67, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_debug_dump_reply._entry_ptr.80 = internal global ptr @_debug_dump_reply._entry.79, section ".printk_index", align 4
@_debug_dump_reply._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.78, ptr @.str.67, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_debug_dump_reply._entry_ptr.82 = internal global ptr @_debug_dump_reply._entry.81, section ".printk_index", align 4
@_debug_dump_reply._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.78, ptr @.str.67, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_debug_dump_reply._entry_ptr.84 = internal global ptr @_debug_dump_reply._entry.83, section ".printk_index", align 4
@_debug_dump_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.67, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016config:\0A\09\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_debug_dump_config\00", [45 x i8] zeroinitializer }, align 32
@_debug_dump_config._entry_ptr = internal global ptr @_debug_dump_config._entry, section ".printk_index", align 4
@_debug_dump_config._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.86, ptr @.str.67, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_debug_dump_config._entry_ptr.88 = internal global ptr @_debug_dump_config._entry.87, section ".printk_index", align 4
@_debug_dump_config._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.86, ptr @.str.67, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_debug_dump_config._entry_ptr.90 = internal global ptr @_debug_dump_config._entry.89, section ".printk_index", align 4
@_debug_dump_config._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.86, ptr @.str.67, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_debug_dump_config._entry_ptr.92 = internal global ptr @_debug_dump_config._entry.91, section ".printk_index", align 4
@mpt3sas_config_update_driver_trigger_pg0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.3, i32 1899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s: %s: Failed to get trigger pg0, ioc_status(0x%04x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mpt3sas_config_update_driver_trigger_pg0\00", [55 x i8] zeroinitializer }, align 32
@mpt3sas_config_update_driver_trigger_pg0._entry_ptr = internal global ptr @mpt3sas_config_update_driver_trigger_pg0._entry, section ".printk_index", align 4
@mpt3sas_config_update_driver_trigger_pg0._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.3, i32 1919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: %s: Failed to update trigger pg0, ioc_status(0x%04x)\0A\00", [36 x i8] zeroinitializer }, align 32
@mpt3sas_config_update_driver_trigger_pg0._entry_ptr.97 = internal global ptr @mpt3sas_config_update_driver_trigger_pg0._entry.95, section ".printk_index", align 4
@switch.table._config_display_some_debug = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.24, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 8, i64 9, i64 10, i64 15]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967234]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 4, i64 1, i64 2, i64 3]
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 270, i32 41 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2036, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2060, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2187, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2220, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2347, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2379, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2504, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 2535, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 107, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 110, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 113, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 116, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 119, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 122, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 127, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 130, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 133, i32 11 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 136, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 139, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 142, i32 11 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 145, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 148, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 151, i32 11 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 154, i32 11 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 157, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 160, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 163, i32 11 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 166, i32 11 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 175, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 184, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 309, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 357, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 370, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 383, i32 41 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 391, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 416, i32 10 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 430, i32 10 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 440, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 459, i32 11 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 475, i32 11 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 208, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 87, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 159, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 162, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 163, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 165, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 178, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 181, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 182, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 184, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 197, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 200, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 201, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant [40 x i8] c"../drivers/scsi/mpt3sas/mpt3sas_debug.h\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 203, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1896, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.372 = private constant [41 x i8] c"../drivers/scsi/mpt3sas/mpt3sas_config.c\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1916, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant [40 x i8] c"switch.table._config_display_some_debug\00", align 1
@llvm.compiler.used = appending global [122 x ptr] [ptr @_config_alloc_config_dma_memory._entry, ptr @_config_alloc_config_dma_memory._entry_ptr, ptr @_config_display_some_debug._entry, ptr @_config_display_some_debug._entry.40, ptr @_config_display_some_debug._entry_ptr, ptr @_config_display_some_debug._entry_ptr.42, ptr @_config_request._entry, ptr @_config_request._entry.45, ptr @_config_request._entry.48, ptr @_config_request._entry.52, ptr @_config_request._entry.57, ptr @_config_request._entry_ptr, ptr @_config_request._entry_ptr.47, ptr @_config_request._entry_ptr.50, ptr @_config_request._entry_ptr.54, ptr @_config_request._entry_ptr.59, ptr @_debug_dump_config._entry, ptr @_debug_dump_config._entry.87, ptr @_debug_dump_config._entry.89, ptr @_debug_dump_config._entry.91, ptr @_debug_dump_config._entry_ptr, ptr @_debug_dump_config._entry_ptr.88, ptr @_debug_dump_config._entry_ptr.90, ptr @_debug_dump_config._entry_ptr.92, ptr @_debug_dump_mf._entry, ptr @_debug_dump_mf._entry.68, ptr @_debug_dump_mf._entry.71, ptr @_debug_dump_mf._entry.74, ptr @_debug_dump_mf._entry_ptr, ptr @_debug_dump_mf._entry_ptr.70, ptr @_debug_dump_mf._entry_ptr.73, ptr @_debug_dump_mf._entry_ptr.76, ptr @_debug_dump_reply._entry, ptr @_debug_dump_reply._entry.79, ptr @_debug_dump_reply._entry.81, ptr @_debug_dump_reply._entry.83, ptr @_debug_dump_reply._entry_ptr, ptr @_debug_dump_reply._entry_ptr.80, ptr @_debug_dump_reply._entry_ptr.82, ptr @_debug_dump_reply._entry_ptr.84, ptr @mpt3sas_config_update_driver_trigger_pg0._entry, ptr @mpt3sas_config_update_driver_trigger_pg0._entry.95, ptr @mpt3sas_config_update_driver_trigger_pg0._entry_ptr, ptr @mpt3sas_config_update_driver_trigger_pg0._entry_ptr.97, ptr @mpt3sas_config_update_driver_trigger_pg1._entry, ptr @mpt3sas_config_update_driver_trigger_pg1._entry.4, ptr @mpt3sas_config_update_driver_trigger_pg1._entry_ptr, ptr @mpt3sas_config_update_driver_trigger_pg1._entry_ptr.5, ptr @mpt3sas_config_update_driver_trigger_pg2._entry, ptr @mpt3sas_config_update_driver_trigger_pg2._entry.8, ptr @mpt3sas_config_update_driver_trigger_pg2._entry_ptr, ptr @mpt3sas_config_update_driver_trigger_pg2._entry_ptr.9, ptr @mpt3sas_config_update_driver_trigger_pg3._entry, ptr @mpt3sas_config_update_driver_trigger_pg3._entry.12, ptr @mpt3sas_config_update_driver_trigger_pg3._entry_ptr, ptr @mpt3sas_config_update_driver_trigger_pg3._entry_ptr.13, ptr @mpt3sas_config_update_driver_trigger_pg4._entry, ptr @mpt3sas_config_update_driver_trigger_pg4._entry.16, ptr @mpt3sas_config_update_driver_trigger_pg4._entry_ptr, ptr @mpt3sas_config_update_driver_trigger_pg4._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @init_completion.__key, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.85, ptr @.str.86, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @switch.table._config_display_some_debug], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_config_update_driver_trigger_pg1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_config_update_driver_trigger_pg1._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_config_update_driver_trigger_pg2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_config_update_driver_trigger_pg2._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_config_update_driver_trigger_pg3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_config_update_driver_trigger_pg3._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_config_update_driver_trigger_pg4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_config_update_driver_trigger_pg4._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_config_display_some_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_config_display_some_debug._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_config_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_config_request._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_config_request._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_config_request._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_config_request._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_config_alloc_config_dma_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_mf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_mf._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_mf._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_mf._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_reply._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_reply._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_reply._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_config._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_config._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_config._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_config_update_driver_trigger_pg0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_config_update_driver_trigger_pg0._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table._config_display_some_debug to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mpt3sas_config_done(ptr noundef %ioc, i16 noundef zeroext %smid, i8 noundef zeroext %msix_index, i32 noundef %reply) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 80, i32 4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %1)
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %smid3 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 80, i32 5
  %2 = ptrtoint ptr %smid3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %smid3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %smid)
  %cmp6.not = icmp eq i16 %3, %smid
  br i1 %cmp6.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %4 = or i16 %1, 1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %status, align 4
  %call = tail call ptr @mpt3sas_base_get_reply_virt_addr(ptr noundef %ioc, i32 noundef %reply) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end9.if.end23_crit_edge, label %if.then14

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %status, align 4
  %8 = or i16 %7, 4
  store i16 %8, ptr %status, align 4
  %reply21 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 80, i32 2
  %9 = ptrtoint ptr %reply21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reply21, align 4
  %MsgLength = getelementptr inbounds %struct._MPI2_DEFAULT_REPLY, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %MsgLength to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %MsgLength, align 2
  %conv22 = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv22, 2
  %13 = call ptr @memcpy(ptr %10, ptr %call, i32 %mul)
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %if.end9.if.end23_crit_edge
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %status, align 4
  %16 = and i16 %15, -3
  store i16 %16, ptr %status, align 4
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %17 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %logging_level, align 8
  %and28 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end23.if.end31_crit_edge, label %if.then30

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @_config_display_some_debug(ptr noundef %ioc, i16 noundef zeroext %smid, ptr noundef nonnull @.str, ptr noundef %call)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end23.if.end31_crit_edge
  %19 = ptrtoint ptr %smid3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %smid3, align 2
  %done = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 80, i32 1
  tail call void @complete(ptr noundef %done) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i8 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_base_get_reply_virt_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_config_display_some_debug(ptr noundef %ioc, i16 noundef zeroext %smid, ptr noundef %calling_function_name, ptr noundef readonly %mpi_reply) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mpt3sas_base_get_msg_frame(ptr noundef %ioc, i16 noundef zeroext %smid) #8
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %call, i32 0, i32 14, i32 3
  %0 = ptrtoint ptr %PageType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %PageType, align 1
  %2 = and i8 %1, 15
  %and = zext i8 %2 to i32
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 0, label %entry.do.end_crit_edge
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 8, label %sw.bb3
    i32 9, label %sw.bb4
    i32 10, label %sw.bb5
    i32 15, label %sw.bb6
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb6:                                           ; preds = %entry
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ExtPageType, align 2
  %switch.tableidx = add i8 %5, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 15
  br i1 %6, label %switch.hole_check, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb6
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 32255, %switch.maskindex
  %7 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %switch.lobit.not = icmp eq i16 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %8 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [15 x ptr], ptr @switch.table._config_display_some_debug, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end

do.end:                                           ; preds = %switch.lookup, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.do.end_crit_edge
  %desc.0.ph = phi ptr [ @.str.19, %sw.bb1 ], [ @.str.20, %sw.bb2 ], [ @.str.21, %sw.bb3 ], [ @.str.22, %sw.bb4 ], [ @.str.23, %sw.bb5 ], [ @.str.18, %entry.do.end_crit_edge ], [ %switch.load, %switch.lookup ]
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %call, i32 0, i32 14, i32 2
  %10 = ptrtoint ptr %PageNumber to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %PageNumber, align 2
  %conv24 = zext i8 %11 to i32
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %call, align 4
  %conv25 = zext i8 %13 to i32
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %call, i32 0, i32 15
  %14 = ptrtoint ptr %PageAddress to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %PageAddress, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %conv26 = zext i16 %smid to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name, ptr noundef %calling_function_name, ptr noundef nonnull %desc.0.ph, i32 noundef %conv24, i32 noundef %conv25, i32 noundef %16, i32 noundef %conv26) #11
  %tobool28.not = icmp eq ptr %mpi_reply, null
  br i1 %tobool28.not, label %do.end.cleanup_crit_edge, label %if.end30

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %do.end
  %IOCStatus = getelementptr inbounds %struct._MPI2_DEFAULT_REPLY, ptr %mpi_reply, i32 0, i32 10
  %17 = ptrtoint ptr %IOCStatus to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %IOCStatus, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool32.not = icmp eq i16 %18, 0
  br i1 %tobool32.not, label %lor.lhs.false, label %if.end30.do.end37_crit_edge

if.end30.do.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

lor.lhs.false:                                    ; preds = %if.end30
  %IOCLogInfo = getelementptr inbounds %struct._MPI2_DEFAULT_REPLY, ptr %mpi_reply, i32 0, i32 11
  %19 = ptrtoint ptr %IOCLogInfo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %IOCLogInfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool33.not = icmp eq i32 %20, 0
  br i1 %tobool33.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end37_crit_edge

lor.lhs.false.do.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end37:                                         ; preds = %lor.lhs.false.do.end37_crit_edge, %if.end30.do.end37_crit_edge
  %21 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv42 = zext i16 %21 to i32
  %IOCLogInfo43 = getelementptr inbounds %struct._MPI2_DEFAULT_REPLY, ptr %mpi_reply, i32 0, i32 11
  %22 = ptrtoint ptr %IOCLogInfo43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %IOCLogInfo43, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef %conv42, i32 noundef %24) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_manufacturing_pg0(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 9, ptr %PageType, align 1
  %3 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %4 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %5(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 76)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef %mpi_request, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %config_page_sz) unnamed_addr #0 align 64 {
entry:
  %mem = alloca %struct.config_request, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mem) #8
  %config_cmds = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %config_cmds, i32 noundef 0) #8
  %status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 80, i32 4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %1)
  %cmp.not = icmp eq i16 %1, -32768
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name, ptr noundef nonnull @.str.44) #11
  tail call void @mutex_unlock(ptr noundef %config_cmds) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %mem, i32 0, i32 12)
  %VF_ID = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 8
  %3 = ptrtoint ptr %VF_ID to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %VF_ID, align 1
  %VP_ID = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 7
  %4 = ptrtoint ptr %VP_ID to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %VP_ID, align 4
  %tobool.not = icmp eq ptr %config_page, null
  br i1 %tobool.not, label %if.end.if.end78_crit_edge, label %if.then5

if.end.if.end78_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then5:                                         ; preds = %if.end
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 13
  %5 = ptrtoint ptr %Header to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %Header, align 4
  %Header6 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %7 = ptrtoint ptr %Header6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %Header6, align 4
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 13, i32 2
  %8 = ptrtoint ptr %PageNumber to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %PageNumber, align 2
  %PageNumber10 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %10 = ptrtoint ptr %PageNumber10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %PageNumber10, align 2
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 13, i32 3
  %11 = ptrtoint ptr %PageType to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %PageType, align 1
  %PageType13 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %13 = ptrtoint ptr %PageType13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %PageType13, align 1
  %PageLength = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %PageLength to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %PageLength, align 1
  %PageLength16 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %PageLength16 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %PageLength16, align 1
  %ExtPageLength = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 4
  %17 = ptrtoint ptr %ExtPageLength to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ExtPageLength, align 4
  %ExtPageLength17 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 4
  %19 = ptrtoint ptr %ExtPageLength17 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %ExtPageLength17, align 4
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 5
  %20 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ExtPageType, align 2
  %ExtPageType18 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %22 = ptrtoint ptr %ExtPageType18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %ExtPageType18, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool21.not = icmp eq i8 %15, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %conv25 = zext i8 %15 to i16
  br label %if.end32

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %ExtPageLength to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ExtPageLength, align 4
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then22
  %storemerge.in = phi i16 [ %25, %if.else ], [ %conv25, %if.then22 ]
  %storemerge = shl i16 %storemerge.in, 2
  %26 = ptrtoint ptr %mem to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge, ptr %mem, align 4
  %config_page_sz.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 138
  %27 = ptrtoint ptr %config_page_sz.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %config_page_sz.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %storemerge, i16 %28)
  %cmp.i = icmp ugt i16 %storemerge, %28
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end32
  %conv.i = zext i16 %storemerge to i32
  %pdev.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 7
  %29 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %page_dma.i = getelementptr inbounds %struct.config_request, ptr %mem, i32 0, i32 2
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %conv.i, ptr noundef %page_dma.i, i32 noundef 3264, i32 noundef 0) #8
  %page.i = getelementptr inbounds %struct.config_request, ptr %mem, i32 0, i32 1
  %31 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i, ptr %page.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %out.thread, label %if.then.i.if.end37_crit_edge

if.then.i.if.end37_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.else.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %config_page.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 139
  %32 = ptrtoint ptr %config_page.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config_page.i, align 8
  %page10.i = getelementptr inbounds %struct.config_request, ptr %mem, i32 0, i32 1
  %34 = ptrtoint ptr %page10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %page10.i, align 4
  %config_page_dma.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 140
  %35 = ptrtoint ptr %config_page_dma.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %config_page_dma.i, align 4
  %page_dma11.i = getelementptr inbounds %struct.config_request, ptr %mem, i32 0, i32 2
  %37 = ptrtoint ptr %page_dma11.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %page_dma11.i, align 4
  br label %if.end37

out.thread:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %38 = ptrtoint ptr %mem to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mem, align 4
  %conv8.i = zext i16 %39 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name.i, ptr noundef nonnull @.str.63, i32 noundef %conv8.i) #11
  %40 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %page.i, align 4
  %config_vaddr.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 141
  %42 = ptrtoint ptr %config_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %config_vaddr.i, align 8
  %43 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -32768, ptr %status, align 4
  call void @mutex_unlock(ptr noundef %config_cmds) #8
  br label %if.end392

if.end37:                                         ; preds = %if.else.i, %if.then.i.if.end37_crit_edge
  %page13.i13 = getelementptr inbounds %struct.config_request, ptr %mem, i32 0, i32 1
  %44 = ptrtoint ptr %page13.i13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %page13.i13, align 4
  %config_vaddr.i14 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 141
  %46 = ptrtoint ptr %config_vaddr.i14 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %config_vaddr.i14, align 8
  %47 = ptrtoint ptr %mpi_request to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %mpi_request, align 4
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %48, label %if.else56 [
    i8 2, label %if.end37.if.then45_crit_edge
    i8 4, label %if.end37.if.then45_crit_edge67
  ]

if.end37.if.then45_crit_edge67:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.end37.if.then45_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.then45:                                        ; preds = %if.end37.if.then45_crit_edge, %if.end37.if.then45_crit_edge67
  %base_add_sg_single = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 81
  %50 = ptrtoint ptr %base_add_sg_single to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base_add_sg_single, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  %52 = ptrtoint ptr %mem to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mem, align 4
  %conv47 = zext i16 %53 to i32
  %or = or i32 %conv47, -721420288
  %page_dma = getelementptr inbounds %struct.config_request, ptr %mem, i32 0, i32 2
  %54 = ptrtoint ptr %page_dma to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_dma, align 4
  call void %51(ptr noundef %PageBufferSGE, i32 noundef %or, i32 noundef %55) #8
  %56 = ptrtoint ptr %page13.i13 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %page13.i13, align 4
  %58 = ptrtoint ptr %mem to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %mem, align 4
  %60 = call i16 @llvm.umin.i16(i16 %59, i16 %config_page_sz)
  %cond = zext i16 %60 to i32
  %61 = call ptr @memcpy(ptr %57, ptr %config_page, i32 %cond)
  br label %if.end78

if.else56:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %conv57 = zext i16 %config_page_sz to i32
  %62 = call ptr @memset(ptr %config_page, i32 0, i32 %conv57)
  %base_add_sg_single58 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 81
  %63 = ptrtoint ptr %base_add_sg_single58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base_add_sg_single58, align 8
  %PageBufferSGE59 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  %65 = ptrtoint ptr %mem to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %mem, align 4
  %conv61 = zext i16 %66 to i32
  %or62 = or i32 %conv61, -788529152
  %page_dma63 = getelementptr inbounds %struct.config_request, ptr %mem, i32 0, i32 2
  %67 = ptrtoint ptr %page_dma63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %page_dma63, align 4
  call void %64(ptr noundef %PageBufferSGE59, i32 noundef %or62, i32 noundef %68) #8
  %69 = ptrtoint ptr %page13.i13 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %page13.i13, align 4
  %71 = ptrtoint ptr %mem to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %mem, align 4
  %73 = call i16 @llvm.umin.i16(i16 %72, i16 %config_page_sz)
  %74 = zext i16 %73 to i32
  %75 = call ptr @memset(ptr %70, i32 0, i32 %74)
  br label %if.end78

if.end78:                                         ; preds = %if.else56, %if.then45, %if.end.if.end78_crit_edge
  %name90 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %config_cb_idx = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 70
  %reply = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 80, i32 2
  %smid121 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 80, i32 5
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %done = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 80, i32 1
  %wait.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 80, i32 1, i32 1
  %put_smid_default = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 247
  %shost_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 27
  %pci_error_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 34
  br label %retry_config

retry_config:                                     ; preds = %retry_config.backedge, %if.end78
  %indvars.iv = phi i32 [ 0, %if.end78 ], [ %indvars.iv.next, %retry_config.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %tobool79.not = icmp eq i32 %indvars.iv, 0
  br i1 %tobool79.not, label %retry_config.if.end94_crit_edge, label %if.then80

retry_config.if.end94_crit_edge:                  ; preds = %retry_config
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then80:                                        ; preds = %retry_config
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp82 = icmp ugt i32 %indvars.iv, 2
  br i1 %cmp82, label %if.then80.free_mem.loopexit_crit_edge, label %do.end88

if.then80.free_mem.loopexit_crit_edge:            ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_mem.loopexit

do.end88:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name90, ptr noundef nonnull @.str.44, i32 noundef %indvars.iv) #11
  br label %if.end94

if.end94:                                         ; preds = %do.end88, %retry_config.if.end94_crit_edge
  %call95 = call i32 @mpt3sas_wait_for_ioc(ptr noundef %ioc, i32 noundef 15) #8
  %76 = zext i32 %call95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %call95, label %if.end94.free_mem.loopexit_crit_edge [
    i32 0, label %if.end102
    i32 -62, label %if.end94.free_mem_crit_edge
  ]

if.end94.free_mem_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_mem

if.end94.free_mem.loopexit_crit_edge:             ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_mem.loopexit

if.end102:                                        ; preds = %if.end94
  %77 = ptrtoint ptr %config_cb_idx to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %config_cb_idx, align 1
  %call103 = call zeroext i16 @mpt3sas_base_get_smid(ptr noundef %ioc, i8 noundef zeroext %78) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call103)
  %tobool104.not = icmp eq i16 %call103, 0
  br i1 %tobool104.not, label %do.end108, label %if.end115

do.end108:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name90, ptr noundef nonnull @.str.44) #11
  %79 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 -32768, ptr %status, align 4
  br label %free_mem

if.end115:                                        ; preds = %if.end102
  %80 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reply, align 4
  %82 = call ptr @memset(ptr %81, i32 0, i32 24)
  %83 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 2, ptr %status, align 4
  %call119 = call ptr @mpt3sas_base_get_msg_frame(ptr noundef %ioc, i16 noundef zeroext %call103) #8
  %84 = ptrtoint ptr %smid121 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %call103, ptr %smid121, align 2
  %85 = call ptr @memcpy(ptr %call119, ptr %mpi_request, i32 44)
  %86 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %logging_level, align 8
  %and = and i32 %87, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool122.not = icmp eq i32 %and, 0
  br i1 %tobool122.not, label %if.end115.if.end124_crit_edge, label %if.then123

if.end115.if.end124_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.then123:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @_config_display_some_debug(ptr noundef %ioc, i16 noundef zeroext %call103, ptr noundef nonnull @.str.51, ptr noundef null)
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end115.if.end124_crit_edge
  %88 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %done, align 4
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @init_completion.__key) #8
  %89 = ptrtoint ptr %put_smid_default to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %put_smid_default, align 8
  call void %90(ptr noundef %ioc, i16 noundef zeroext %call103) #8
  %call129 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 1500) #8
  %91 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %status, align 4
  %93 = and i16 %92, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool134.not = icmp eq i16 %93, 0
  br i1 %tobool134.not, label %if.then135, label %if.end173

if.then135:                                       ; preds = %if.end124
  %94 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %logging_level, align 8
  %and137 = and i32 %95, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.then139, label %if.then135.do.end143_crit_edge

if.then135.do.end143_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end143

if.then139:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @_config_display_some_debug(ptr noundef %ioc, i16 noundef zeroext %call103, ptr noundef nonnull @.str.51, ptr noundef null)
  br label %do.end143

do.end143:                                        ; preds = %if.then139, %if.then135.do.end143_crit_edge
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name90, ptr noundef nonnull @.str.44) #11
  %96 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %status, align 4
  %conv150 = trunc i16 %97 to i8
  %call151 = call zeroext i8 @mpt3sas_base_check_cmd_timeout(ptr noundef %ioc, i8 noundef zeroext %conv150, ptr noundef %mpi_request, i32 noundef 11) #8
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %98 = ptrtoint ptr %smid121 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %smid121, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %99, i16 %call103)
  %cmp156 = icmp eq i16 %99, %call103
  br i1 %cmp156, label %if.then158, label %do.end143.if.end159_crit_edge

do.end143.if.end159_crit_edge:                    ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.then158:                                       ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #10
  call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %call103) #8
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %do.end143.if.end159_crit_edge
  %100 = ptrtoint ptr %shost_recovery to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %shost_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool161.not = icmp eq i8 %101, 0
  br i1 %tobool161.not, label %lor.lhs.false162, label %if.end159.retry_config.backedge_crit_edge

if.end159.retry_config.backedge_crit_edge:        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry_config.backedge

lor.lhs.false162:                                 ; preds = %if.end159
  %102 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %status, align 4
  %104 = and i16 %103, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool167.not = icmp eq i16 %104, 0
  br i1 %tobool167.not, label %lor.lhs.false168, label %lor.lhs.false162.retry_config.backedge_crit_edge

lor.lhs.false162.retry_config.backedge_crit_edge: ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry_config.backedge

lor.lhs.false168:                                 ; preds = %lor.lhs.false162
  %105 = ptrtoint ptr %pci_error_recovery to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %pci_error_recovery, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool170.not = icmp eq i8 %106, 0
  br i1 %tobool170.not, label %lor.lhs.false168.free_mem.loopexit_crit_edge, label %lor.lhs.false168.retry_config.backedge_crit_edge

lor.lhs.false168.retry_config.backedge_crit_edge: ; preds = %lor.lhs.false168
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry_config.backedge

lor.lhs.false168.free_mem.loopexit_crit_edge:     ; preds = %lor.lhs.false168
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_mem.loopexit

retry_config.backedge:                            ; preds = %lor.lhs.false168.retry_config.backedge_crit_edge, %lor.lhs.false162.retry_config.backedge_crit_edge, %if.end159.retry_config.backedge_crit_edge
  br label %retry_config

if.end173:                                        ; preds = %if.end124
  %107 = and i16 %92, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool178.not = icmp eq i16 %107, 0
  br i1 %tobool178.not, label %if.end173.if.end245_crit_edge, label %if.then179

if.end173.if.end245_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

if.then179:                                       ; preds = %if.end173
  %108 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reply, align 4
  %110 = call ptr @memcpy(ptr %mpi_reply, ptr %109, i32 24)
  %PageType183 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %111 = ptrtoint ptr %PageType183 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %PageType183, align 1
  %113 = and i8 %112, 15
  %PageType187 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 13, i32 3
  %114 = ptrtoint ptr %PageType187 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %PageType187, align 1
  %116 = and i8 %115, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %113, i8 %116)
  %cmp190.not = icmp eq i8 %113, %116
  br i1 %cmp190.not, label %if.end211, label %if.then192

if.then192:                                       ; preds = %if.then179
  %117 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %logging_level, align 8
  %and194 = and i32 %118, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.then196, label %if.then192.if.end197_crit_edge

if.then192.if.end197_crit_edge:                   ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end197

if.then196:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @_config_display_some_debug(ptr noundef %ioc, i16 noundef zeroext %call103, ptr noundef nonnull @.str.51, ptr noundef null)
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %if.then192.if.end197_crit_edge
  %request_sz = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 145
  %119 = ptrtoint ptr %request_sz to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %request_sz, align 2
  %121 = lshr i16 %120, 2
  %div = zext i16 %121 to i32
  call fastcc void @_debug_dump_mf(ptr noundef %mpi_request, i32 noundef %div)
  %reply_sz = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 181
  %122 = ptrtoint ptr %reply_sz to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %reply_sz, align 4
  %124 = lshr i16 %123, 2
  %div200 = zext i16 %124 to i32
  call fastcc void @_debug_dump_reply(ptr noundef %mpi_reply, i32 noundef %div200)
  %125 = ptrtoint ptr %PageType183 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %PageType183, align 1
  %127 = and i8 %126, 15
  %and206 = zext i8 %127 to i32
  %128 = ptrtoint ptr %PageType187 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %PageType187, align 1
  %130 = and i8 %129, 15
  %and210 = zext i8 %130 to i32
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.55, ptr noundef %name90, ptr noundef nonnull @.str.44, i32 noundef %and206, i32 noundef %and210) #12
  unreachable

if.end211:                                        ; preds = %if.then179
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %113)
  %cmp216 = icmp eq i8 %113, 15
  br i1 %cmp216, label %land.lhs.true, label %if.end211.if.end242_crit_edge

if.end211.if.end242_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end242

land.lhs.true:                                    ; preds = %if.end211
  %ExtPageType218 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %131 = ptrtoint ptr %ExtPageType218 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %ExtPageType218, align 2
  %ExtPageType220 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 5
  %133 = ptrtoint ptr %ExtPageType220 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %ExtPageType220, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %132, i8 %134)
  %cmp222.not = icmp eq i8 %132, %134
  br i1 %cmp222.not, label %land.lhs.true.if.end242_crit_edge, label %if.then224

land.lhs.true.if.end242_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end242

if.then224:                                       ; preds = %land.lhs.true
  %135 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %logging_level, align 8
  %and226 = and i32 %136, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %if.then228, label %if.then224.if.end229_crit_edge

if.then224.if.end229_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end229

if.then228:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @_config_display_some_debug(ptr noundef %ioc, i16 noundef zeroext %call103, ptr noundef nonnull @.str.51, ptr noundef null)
  br label %if.end229

if.end229:                                        ; preds = %if.then228, %if.then224.if.end229_crit_edge
  %request_sz230 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 145
  %137 = ptrtoint ptr %request_sz230 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %request_sz230, align 2
  %139 = lshr i16 %138, 2
  %div232 = zext i16 %139 to i32
  call fastcc void @_debug_dump_mf(ptr noundef %mpi_request, i32 noundef %div232)
  %reply_sz233 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 181
  %140 = ptrtoint ptr %reply_sz233 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %reply_sz233, align 4
  %142 = lshr i16 %141, 2
  %div235 = zext i16 %142 to i32
  call fastcc void @_debug_dump_reply(ptr noundef %mpi_reply, i32 noundef %div235)
  %143 = ptrtoint ptr %ExtPageType218 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %ExtPageType218, align 2
  %conv239 = zext i8 %144 to i32
  %145 = ptrtoint ptr %ExtPageType220 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %ExtPageType220, align 2
  %conv241 = zext i8 %146 to i32
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.56, ptr noundef %name90, ptr noundef nonnull @.str.44, i32 noundef %conv239, i32 noundef %conv241) #12
  unreachable

if.end242:                                        ; preds = %land.lhs.true.if.end242_crit_edge, %if.end211.if.end242_crit_edge
  %IOCStatus = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %147 = ptrtoint ptr %IOCStatus to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %IOCStatus, align 2
  %149 = and i16 %148, -129
  %150 = call i16 @llvm.bswap.i16(i16 %149)
  %and244 = zext i16 %150 to i32
  br label %if.end245

if.end245:                                        ; preds = %if.end242, %if.end173.if.end245_crit_edge
  %ioc_status.0 = phi i32 [ %and244, %if.end242 ], [ -1, %if.end173.if.end245_crit_edge ]
  br i1 %tobool79.not, label %if.end245.if.end256_crit_edge, label %do.end250

if.end245.if.end256_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end256

do.end250:                                        ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #10
  %call255 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name90, ptr noundef nonnull @.str.44, i32 noundef %indvars.iv) #11
  br label %if.end256

if.end256:                                        ; preds = %do.end250, %if.end245.if.end256_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ioc_status.0)
  %cmp257 = icmp ne i32 %ioc_status.0, 0
  %brmerge = or i1 %tobool.not, %cmp257
  br i1 %brmerge, label %if.end256.free_mem_crit_edge, label %land.lhs.true261

if.end256.free_mem_crit_edge:                     ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_mem

land.lhs.true261:                                 ; preds = %if.end256
  %151 = ptrtoint ptr %mpi_request to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %mpi_request, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %152)
  %cmp264 = icmp eq i8 %152, 1
  br i1 %cmp264, label %if.then266, label %land.lhs.true261.free_mem_crit_edge

land.lhs.true261.free_mem_crit_edge:              ; preds = %land.lhs.true261
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_mem

if.then266:                                       ; preds = %land.lhs.true261
  %page267 = getelementptr inbounds %struct.config_request, ptr %mem, i32 0, i32 1
  %153 = ptrtoint ptr %page267 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %page267, align 4
  %tobool268.not = icmp eq ptr %154, null
  br i1 %tobool268.not, label %if.then266.if.end358_crit_edge, label %if.then269

if.then266.if.end358_crit_edge:                   ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end358

if.then269:                                       ; preds = %if.then266
  %PageType271 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %155 = ptrtoint ptr %PageType271 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %PageType271, align 1
  %157 = and i8 %156, 15
  %arrayidx = getelementptr i8, ptr %154, i32 3
  %158 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx, align 1
  %160 = and i8 %159, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %157, i8 %160)
  %cmp276.not = icmp eq i8 %157, %160
  br i1 %cmp276.not, label %if.end312, label %if.then278

if.then278:                                       ; preds = %if.then269
  %161 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %logging_level, align 8
  %and280 = and i32 %162, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280)
  %tobool281.not = icmp eq i32 %and280, 0
  br i1 %tobool281.not, label %if.then282, label %if.then278.if.end283_crit_edge

if.then278.if.end283_crit_edge:                   ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end283

if.then282:                                       ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @_config_display_some_debug(ptr noundef %ioc, i16 noundef zeroext %call103, ptr noundef nonnull @.str.51, ptr noundef null)
  br label %if.end283

if.end283:                                        ; preds = %if.then282, %if.then278.if.end283_crit_edge
  %request_sz284 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 145
  %163 = ptrtoint ptr %request_sz284 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %request_sz284, align 2
  %165 = lshr i16 %164, 2
  %div286 = zext i16 %165 to i32
  call fastcc void @_debug_dump_mf(ptr noundef %mpi_request, i32 noundef %div286)
  %reply_sz287 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 181
  %166 = ptrtoint ptr %reply_sz287 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %reply_sz287, align 4
  %168 = lshr i16 %167, 2
  %div289 = zext i16 %168 to i32
  call fastcc void @_debug_dump_reply(ptr noundef %mpi_reply, i32 noundef %div289)
  %169 = ptrtoint ptr %mem to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %mem, align 4
  %171 = call i16 @llvm.umin.i16(i16 %170, i16 %config_page_sz)
  %172 = lshr i16 %171, 2
  %div302 = zext i16 %172 to i32
  call fastcc void @_debug_dump_config(ptr noundef nonnull %154, i32 noundef %div302)
  %173 = ptrtoint ptr %PageType271 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %PageType271, align 1
  %175 = and i8 %174, 15
  %and308 = zext i8 %175 to i32
  %176 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx, align 1
  %178 = and i8 %177, 15
  %and311 = zext i8 %178 to i32
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.60, ptr noundef %name90, ptr noundef nonnull @.str.44, i32 noundef %and308, i32 noundef %and311) #12
  unreachable

if.end312:                                        ; preds = %if.then269
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %157)
  %cmp317 = icmp eq i8 %157, 15
  br i1 %cmp317, label %land.lhs.true319, label %if.end312.if.end358_crit_edge

if.end312.if.end358_crit_edge:                    ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end358

land.lhs.true319:                                 ; preds = %if.end312
  %ExtPageType320 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %179 = ptrtoint ptr %ExtPageType320 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %ExtPageType320, align 2
  %arrayidx322 = getelementptr i8, ptr %154, i32 6
  %181 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx322, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %180, i8 %182)
  %cmp324.not = icmp eq i8 %180, %182
  br i1 %cmp324.not, label %land.lhs.true319.if.end358_crit_edge, label %if.then326

land.lhs.true319.if.end358_crit_edge:             ; preds = %land.lhs.true319
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end358

if.then326:                                       ; preds = %land.lhs.true319
  %183 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %logging_level, align 8
  %and328 = and i32 %184, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and328)
  %tobool329.not = icmp eq i32 %and328, 0
  br i1 %tobool329.not, label %if.then330, label %if.then326.if.end331_crit_edge

if.then326.if.end331_crit_edge:                   ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end331

if.then330:                                       ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @_config_display_some_debug(ptr noundef %ioc, i16 noundef zeroext %call103, ptr noundef nonnull @.str.51, ptr noundef null)
  br label %if.end331

if.end331:                                        ; preds = %if.then330, %if.then326.if.end331_crit_edge
  %request_sz332 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 145
  %185 = ptrtoint ptr %request_sz332 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %request_sz332, align 2
  %187 = lshr i16 %186, 2
  %div334 = zext i16 %187 to i32
  call fastcc void @_debug_dump_mf(ptr noundef %mpi_request, i32 noundef %div334)
  %reply_sz335 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 181
  %188 = ptrtoint ptr %reply_sz335 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %reply_sz335, align 4
  %190 = lshr i16 %189, 2
  %div337 = zext i16 %190 to i32
  call fastcc void @_debug_dump_reply(ptr noundef %mpi_reply, i32 noundef %div337)
  %191 = ptrtoint ptr %mem to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %mem, align 4
  %193 = call i16 @llvm.umin.i16(i16 %192, i16 %config_page_sz)
  %194 = lshr i16 %193, 2
  %div350 = zext i16 %194 to i32
  call fastcc void @_debug_dump_config(ptr noundef nonnull %154, i32 noundef %div350)
  %195 = ptrtoint ptr %ExtPageType320 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %ExtPageType320, align 2
  %conv354 = zext i8 %196 to i32
  %197 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx322, align 1
  %conv356 = zext i8 %198 to i32
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.61, ptr noundef %name90, ptr noundef nonnull @.str.44, i32 noundef %conv354, i32 noundef %conv356) #12
  unreachable

if.end358:                                        ; preds = %land.lhs.true319.if.end358_crit_edge, %if.end312.if.end358_crit_edge, %if.then266.if.end358_crit_edge
  %199 = ptrtoint ptr %mem to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %mem, align 4
  %201 = call i16 @llvm.umin.i16(i16 %200, i16 %config_page_sz)
  %cond371 = zext i16 %201 to i32
  %202 = call ptr @memcpy(ptr %config_page, ptr %154, i32 %cond371)
  br label %free_mem

free_mem.loopexit:                                ; preds = %lor.lhs.false168.free_mem.loopexit_crit_edge, %if.end94.free_mem.loopexit_crit_edge, %if.then80.free_mem.loopexit_crit_edge
  %tobool380.not.ph = phi i1 [ true, %if.then80.free_mem.loopexit_crit_edge ], [ true, %if.end94.free_mem.loopexit_crit_edge ], [ false, %lor.lhs.false168.free_mem.loopexit_crit_edge ]
  %r.0.ph = phi i32 [ -14, %if.then80.free_mem.loopexit_crit_edge ], [ %call95, %if.end94.free_mem.loopexit_crit_edge ], [ 0, %lor.lhs.false168.free_mem.loopexit_crit_edge ]
  br label %free_mem

free_mem:                                         ; preds = %free_mem.loopexit, %if.end358, %land.lhs.true261.free_mem_crit_edge, %if.end256.free_mem_crit_edge, %do.end108, %if.end94.free_mem_crit_edge
  %tobool380.not = phi i1 [ true, %if.end256.free_mem_crit_edge ], [ true, %land.lhs.true261.free_mem_crit_edge ], [ true, %if.end358 ], [ true, %do.end108 ], [ %tobool380.not.ph, %free_mem.loopexit ], [ false, %if.end94.free_mem_crit_edge ]
  %r.0 = phi i32 [ 0, %if.end256.free_mem_crit_edge ], [ 0, %land.lhs.true261.free_mem_crit_edge ], [ 0, %if.end358 ], [ -11, %do.end108 ], [ %r.0.ph, %free_mem.loopexit ], [ -62, %if.end94.free_mem_crit_edge ]
  br i1 %tobool.not, label %free_mem.out_crit_edge, label %if.then374

free_mem.out_crit_edge:                           ; preds = %free_mem
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then374:                                       ; preds = %free_mem
  %203 = ptrtoint ptr %mem to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %mem, align 4
  %config_page_sz.i4 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 138
  %205 = ptrtoint ptr %config_page_sz.i4 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %config_page_sz.i4, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %204, i16 %206)
  %cmp.i5 = icmp ugt i16 %204, %206
  br i1 %cmp.i5, label %if.then.i11, label %if.then374.out_crit_edge

if.then374.out_crit_edge:                         ; preds = %if.then374
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i11:                                      ; preds = %if.then374
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i6 = zext i16 %204 to i32
  %pdev.i7 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 7
  %207 = ptrtoint ptr %pdev.i7 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %pdev.i7, align 4
  %dev.i8 = getelementptr inbounds %struct.pci_dev, ptr %208, i32 0, i32 44
  %page.i9 = getelementptr inbounds %struct.config_request, ptr %mem, i32 0, i32 1
  %209 = ptrtoint ptr %page.i9 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %page.i9, align 4
  %page_dma.i10 = getelementptr inbounds %struct.config_request, ptr %mem, i32 0, i32 2
  %211 = ptrtoint ptr %page_dma.i10 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %page_dma.i10, align 4
  call void @dma_free_attrs(ptr noundef %dev.i8, i32 noundef %conv.i6, ptr noundef %210, i32 noundef %212, i32 noundef 0) #8
  br label %out

out:                                              ; preds = %if.then.i11, %if.then374.out_crit_edge, %free_mem.out_crit_edge
  %213 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 -32768, ptr %status, align 4
  call void @mutex_unlock(ptr noundef %config_cmds) #8
  br i1 %tobool380.not, label %out.if.end392_crit_edge, label %if.then381

out.if.end392_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end392

if.then381:                                       ; preds = %out
  %drv_internal_flags = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 57
  %214 = ptrtoint ptr %drv_internal_flags to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %drv_internal_flags, align 8
  %and382 = and i32 %215, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and382)
  %tobool383.not = icmp eq i32 %and382, 0
  br i1 %tobool383.not, label %if.else386, label %if.then384

if.then384:                                       ; preds = %if.then381
  call void @__sanitizer_cov_trace_pc() #10
  %call385 = call i32 @mpt3sas_base_hard_reset_handler(ptr noundef %ioc, i32 noundef 0) #8
  br label %if.end392

if.else386:                                       ; preds = %if.then381
  %call387 = call i32 @mpt3sas_base_check_for_fault_and_issue_reset(ptr noundef %ioc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call387)
  %tobool388.not = icmp eq i32 %call387, 0
  br i1 %tobool388.not, label %if.else386.if.end392_crit_edge, label %if.else386.cleanup_crit_edge

if.else386.cleanup_crit_edge:                     ; preds = %if.else386
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else386.if.end392_crit_edge:                   ; preds = %if.else386
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end392

if.end392:                                        ; preds = %if.else386.if.end392_crit_edge, %if.then384, %out.if.end392_crit_edge, %out.thread
  %r.2 = phi i32 [ -14, %if.then384 ], [ %r.0, %out.if.end392_crit_edge ], [ -11, %if.else386.if.end392_crit_edge ], [ -12, %out.thread ]
  br label %cleanup

cleanup:                                          ; preds = %if.end392, %if.else386.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ %r.2, %if.end392 ], [ -14, %if.else386.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_manufacturing_pg7(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %sz) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 9, ptr %PageType, align 1
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 7, ptr %PageNumber, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %sz)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_manufacturing_pg10(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 9, ptr %PageType, align 1
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %PageNumber, align 2
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %4 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %5(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 104)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_manufacturing_pg11(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 9, ptr %PageType, align 1
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 11, ptr %PageNumber, align 2
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %4 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %5(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 92)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_set_manufacturing_pg11(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 9, ptr %PageType, align 1
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 11, ptr %PageNumber, align 2
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %4 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %5(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 92)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_bios_pg2(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %PageType, align 1
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %PageNumber, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 112)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_bios_pg3(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %PageType, align 1
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %PageNumber, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 96)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_iounit_pg0(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %PageType, align 1
  %3 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %4 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %5(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 20)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_iounit_pg1(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %PageType, align 1
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %PageNumber, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 8)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_set_iounit_pg1(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %PageType, align 1
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %PageNumber, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 8)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_iounit_pg3(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %sz) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %PageType, align 1
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %PageNumber, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %sz)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_iounit_pg8(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %PageType, align 1
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %PageNumber, align 2
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %4 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %5(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 40)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_ioc_pg8(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %PageType, align 1
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %PageNumber, align 2
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %4 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %5(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 24)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_ioc_pg1(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %PageType, align 1
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %PageNumber, align 2
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %4 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %5(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 24)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_set_ioc_pg1(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %PageType, align 1
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %PageNumber, align 2
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %4 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %5(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 24)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_sas_device_pg0(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i32 noundef %form, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 18, ptr %ExtPageType, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %handle, %form
  %7 = call i32 @llvm.bswap.i32(i32 %or)
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 15
  %8 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %PageAddress, align 4
  %9 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 68)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_sas_device_pg1(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i32 noundef %form, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 18, ptr %ExtPageType, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %Header, align 4
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %5 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %PageNumber, align 2
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %6 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %7(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %handle, %form
  %8 = call i32 @llvm.bswap.i32(i32 %or)
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 15
  %9 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %PageAddress, align 4
  %10 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 48)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_pcie_device_pg0(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i32 noundef %form, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 29, ptr %ExtPageType, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %handle, %form
  %7 = call i32 @llvm.bswap.i32(i32 %or)
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 15
  %8 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %PageAddress, align 4
  %9 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 56)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_pcie_iounit_pg1(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %sz) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 27, ptr %ExtPageType, align 2
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %PageNumber, align 2
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %sz)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_pcie_device_pg2(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i32 noundef %form, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 29, ptr %ExtPageType, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %Header, align 4
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %5 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %PageNumber, align 2
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %6 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %7(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %handle, %form
  %8 = call i32 @llvm.bswap.i32(i32 %or)
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 15
  %9 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %PageAddress, align 4
  %10 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 36)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_number_hba_phys(ptr noundef %ioc, ptr nocapture noundef writeonly %num_phys) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  %config_page = alloca %struct._MPI2_CONFIG_PAGE_SASIOUNIT_0, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #8
  %0 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %1 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %config_page) #8
  %2 = call ptr @memset(ptr %config_page, i32 255, i32 36)
  %3 = ptrtoint ptr %num_phys to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %num_phys, align 1
  %4 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %5 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %6 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %7 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %ExtPageType, align 2
  %8 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %9 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %10(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef nonnull %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %config_page, i16 noundef zeroext 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then6:                                         ; preds = %if.end
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %0, align 2
  %14 = and i16 %13, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp = icmp eq i16 %14, 0
  br i1 %cmp, label %if.then10, label %if.then6.out_crit_edge

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %NumPhys = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_SASIOUNIT_0, ptr %config_page, i32 0, i32 2
  %15 = ptrtoint ptr %NumPhys to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %NumPhys, align 4
  %17 = ptrtoint ptr %num_phys to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %num_phys, align 1
  br label %out

out:                                              ; preds = %if.then10, %if.then6.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end.out_crit_edge ], [ 0, %if.then10 ], [ 0, %if.then6.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %config_page) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_sas_iounit_pg0(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %sz) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 16, ptr %ExtPageType, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 5, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %sz)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_sas_iounit_pg1(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %sz) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 16, ptr %ExtPageType, align 2
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %PageNumber, align 2
  %5 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 9, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %6 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %7(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %sz)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_set_sas_iounit_pg1(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %sz) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 16, ptr %ExtPageType, align 2
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %PageNumber, align 2
  %5 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 9, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %6 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %7(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %mpi_request, align 4
  %9 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %sz)
  %10 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %mpi_request, align 4
  %call6 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %sz)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call6, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_expander_pg0(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i32 noundef %form, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 17, ptr %ExtPageType, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 6, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %handle, %form
  %7 = call i32 @llvm.bswap.i32(i32 %or)
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 15
  %8 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %PageAddress, align 4
  %9 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 60)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_expander_pg1(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i32 noundef %phy_number, i16 noundef zeroext %handle) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 17, ptr %ExtPageType, align 2
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %PageNumber, align 2
  %5 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %6 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %7(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %phy_number, 16
  %conv = zext i16 %handle to i32
  %or = or i32 %shl, %conv
  %or3 = or i32 %or, 268435456
  %8 = call i32 @llvm.bswap.i32(i32 %or3)
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 15
  %9 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %PageAddress, align 4
  %10 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %mpi_request, align 4
  %call5 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 44)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call5, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_enclosure_pg0(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i32 noundef %form, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 21, ptr %ExtPageType, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %handle, %form
  %7 = call i32 @llvm.bswap.i32(i32 %or)
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 15
  %8 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %PageAddress, align 4
  %9 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 40)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_phy_pg0(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i32 noundef %phy_number) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 19, ptr %ExtPageType, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call i32 @llvm.bswap.i32(i32 %phy_number)
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 15
  %8 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %PageAddress, align 4
  %9 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 32)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_phy_pg1(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i32 noundef %phy_number) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 19, ptr %ExtPageType, align 2
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %PageNumber, align 2
  %5 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %6 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %7(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call i32 @llvm.bswap.i32(i32 %phy_number)
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 15
  %9 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %PageAddress, align 4
  %10 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 28)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_raid_volume_pg1(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i32 noundef %form, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %PageType, align 1
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %3 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %PageNumber, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %handle, %form
  %7 = call i32 @llvm.bswap.i32(i32 %or)
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 15
  %8 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %PageAddress, align 4
  %9 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 64)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_number_pds(ptr noundef %ioc, i16 noundef zeroext %handle, ptr nocapture noundef writeonly %num_pds) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  %config_page = alloca %struct._MPI2_CONFIG_PAGE_RAID_VOL_0, align 4
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %config_page) #8
  %0 = call ptr @memset(ptr %config_page, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #8
  %1 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %2 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  %3 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %4 = ptrtoint ptr %num_pds to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %num_pds, align 1
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %5 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %6 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %PageType, align 1
  %7 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %8 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %9(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef nonnull %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %conv = zext i16 %handle to i32
  %or = or i32 %conv, 268435456
  %10 = call i32 @llvm.bswap.i32(i32 %or)
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 15
  %11 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %PageAddress, align 4
  %12 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %config_page, i16 noundef zeroext 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then6:                                         ; preds = %if.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 2
  %15 = and i16 %14, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp = icmp eq i16 %15, 0
  br i1 %cmp, label %if.then11, label %if.then6.out_crit_edge

if.then6.out_crit_edge:                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %NumPhysDisks = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RAID_VOL_0, ptr %config_page, i32 0, i32 13
  %16 = ptrtoint ptr %NumPhysDisks to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %NumPhysDisks, align 4
  %18 = ptrtoint ptr %num_pds to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %num_pds, align 1
  br label %out

out:                                              ; preds = %if.then11, %if.then6.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end.out_crit_edge ], [ 0, %if.then11 ], [ 0, %if.then6.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %config_page) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_raid_volume_pg0(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i32 noundef %form, i32 noundef %handle, i16 noundef zeroext %sz) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %PageType, align 1
  %3 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %4 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %5(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %handle, %form
  %6 = call i32 @llvm.bswap.i32(i32 %or)
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 15
  %7 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %PageAddress, align 4
  %8 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext %sz)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_phys_disk_pg0(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page, i32 noundef %form, i32 noundef %form_specific) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 10, ptr %PageType, align 1
  %3 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %4 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %5(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %form_specific, %form
  %6 = call i32 @llvm.bswap.i32(i32 %or)
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 15
  %7 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %PageAddress, align 4
  %8 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 120)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_driver_trigger_pg0(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -32, ptr %ExtPageType, align 2
  %4 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %5 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %6(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 256)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_driver_trigger_pg1(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -32, ptr %ExtPageType, align 2
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %PageNumber, align 2
  %5 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %6 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %7(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 16)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_update_driver_trigger_pg1(ptr noundef %ioc, ptr nocapture noundef readonly %master_tg, i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request.i71 = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  %mpi_request.i = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  %tg_pg1 = alloca %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_1, align 4
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tg_pg1) #8
  %0 = getelementptr inbounds %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_1, ptr %tg_pg1, i32 0, i32 1
  %1 = getelementptr inbounds %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_1, ptr %tg_pg1, i32 0, i32 3
  %2 = call ptr @memset(ptr %tg_pg1, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #8
  %3 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %4 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  %call = tail call fastcc i32 @mpt3sas_config_update_driver_trigger_pg0(ptr noundef %ioc, i16 noundef zeroext 1, i1 noundef zeroext %set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request.i) #8
  %5 = call ptr @memset(ptr %mpi_request.i, i32 0, i32 44)
  %Function.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 3
  %6 = ptrtoint ptr %Function.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %Function.i, align 1
  %Header.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14
  %PageType.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14, i32 3
  %7 = ptrtoint ptr %PageType.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 15, ptr %PageType.i, align 1
  %ExtPageType.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 5
  %8 = ptrtoint ptr %ExtPageType.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -32, ptr %ExtPageType.i, align 2
  %PageNumber.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14, i32 2
  %9 = ptrtoint ptr %PageNumber.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %PageNumber.i, align 2
  %10 = ptrtoint ptr %Header.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %Header.i, align 4
  %build_zero_len_sge_mpi.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %11 = ptrtoint ptr %build_zero_len_sge_mpi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %build_zero_len_sge_mpi.i, align 8
  %PageBufferSGE.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 16
  call void %12(ptr noundef %ioc, ptr noundef %PageBufferSGE.i) #8
  %call.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i, ptr noundef nonnull %mpi_reply, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mpt3sas_config_get_driver_trigger_pg1.exit, label %mpt3sas_config_get_driver_trigger_pg1.exit.thread

mpt3sas_config_get_driver_trigger_pg1.exit.thread: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i) #8
  br label %out

mpt3sas_config_get_driver_trigger_pg1.exit:       ; preds = %if.end
  %13 = ptrtoint ptr %mpi_request.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %mpi_request.i, align 4
  %call4.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg1, i16 noundef zeroext 16) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool3.not = icmp eq i32 %call4.i, 0
  br i1 %tobool3.not, label %if.end5, label %mpt3sas_config_get_driver_trigger_pg1.exit.out_crit_edge

mpt3sas_config_get_driver_trigger_pg1.exit.out_crit_edge: ; preds = %mpt3sas_config_get_driver_trigger_pg1.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %mpt3sas_config_get_driver_trigger_pg1.exit
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %3, align 2
  %16 = and i16 %15, -129
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv7 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.not = icmp eq i16 %16, 0
  br i1 %cmp.not, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.end5
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %18 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %logging_level, align 8
  %and10 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then9.out_crit_edge, label %do.end

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef nonnull @.str.2, i32 noundef %conv7) #11
  br label %out

if.end16:                                         ; preds = %if.end5
  br i1 %set, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 256, ptr %0, align 4
  %21 = ptrtoint ptr %master_tg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %master_tg, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  br label %if.end23

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %0, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then18
  %storemerge = phi i32 [ 0, %if.else ], [ %23, %if.then18 ]
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request.i71) #8
  %26 = call ptr @memset(ptr %mpi_request.i71, i32 0, i32 44)
  %Function.i72 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i71, i32 0, i32 3
  %27 = ptrtoint ptr %Function.i72 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %Function.i72, align 1
  %Header.i73 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i71, i32 0, i32 14
  %PageType.i74 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i71, i32 0, i32 14, i32 3
  %28 = ptrtoint ptr %PageType.i74 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 15, ptr %PageType.i74, align 1
  %ExtPageType.i75 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i71, i32 0, i32 5
  %29 = ptrtoint ptr %ExtPageType.i75 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -32, ptr %ExtPageType.i75, align 2
  %PageNumber.i76 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i71, i32 0, i32 14, i32 2
  %30 = ptrtoint ptr %PageNumber.i76 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %PageNumber.i76, align 2
  %31 = ptrtoint ptr %Header.i73 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %Header.i73, align 4
  %32 = ptrtoint ptr %build_zero_len_sge_mpi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %build_zero_len_sge_mpi.i, align 8
  %PageBufferSGE.i78 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i71, i32 0, i32 16
  call void %33(ptr noundef %ioc, ptr noundef %PageBufferSGE.i78) #8
  %call.i79 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i71, ptr noundef nonnull %mpi_reply, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i80 = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i80, label %_config_set_driver_trigger_pg1.exit, label %_config_set_driver_trigger_pg1.exit.thread

_config_set_driver_trigger_pg1.exit.thread:       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i71) #8
  br label %out

_config_set_driver_trigger_pg1.exit:              ; preds = %if.end23
  %34 = ptrtoint ptr %mpi_request.i71 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 2, ptr %mpi_request.i71, align 4
  %35 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i71, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg1, i16 noundef zeroext 16) #8
  %36 = ptrtoint ptr %mpi_request.i71 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 4, ptr %mpi_request.i71, align 4
  %call6.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i71, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg1, i16 noundef zeroext 16) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool25.not = icmp eq i32 %call6.i, 0
  br i1 %tobool25.not, label %if.end27, label %_config_set_driver_trigger_pg1.exit.out_crit_edge

_config_set_driver_trigger_pg1.exit.out_crit_edge: ; preds = %_config_set_driver_trigger_pg1.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end27:                                         ; preds = %_config_set_driver_trigger_pg1.exit
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %3, align 2
  %39 = and i16 %38, -129
  %40 = call i16 @llvm.bswap.i16(i16 %39)
  %conv32 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp33.not = icmp eq i16 %39, 0
  br i1 %cmp33.not, label %if.end27.cleanup_crit_edge, label %if.then35

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %if.end27
  %logging_level36 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %41 = ptrtoint ptr %logging_level36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %logging_level36, align 8
  %and37 = and i32 %42, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then35.out_crit_edge, label %do.end42

if.then35.out_crit_edge:                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end42:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %name44 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name44, ptr noundef nonnull @.str.2, i32 noundef %conv32) #11
  br label %out

out:                                              ; preds = %do.end42, %if.then35.out_crit_edge, %_config_set_driver_trigger_pg1.exit.out_crit_edge, %_config_set_driver_trigger_pg1.exit.thread, %do.end, %if.then9.out_crit_edge, %mpt3sas_config_get_driver_trigger_pg1.exit.out_crit_edge, %mpt3sas_config_get_driver_trigger_pg1.exit.thread
  %rc.0 = phi i32 [ %call4.i, %mpt3sas_config_get_driver_trigger_pg1.exit.out_crit_edge ], [ %call6.i, %_config_set_driver_trigger_pg1.exit.out_crit_edge ], [ -14, %do.end ], [ -14, %if.then9.out_crit_edge ], [ -14, %do.end42 ], [ -14, %if.then35.out_crit_edge ], [ %call.i, %mpt3sas_config_get_driver_trigger_pg1.exit.thread ], [ %call.i79, %_config_set_driver_trigger_pg1.exit.thread ]
  %lnot = xor i1 %set, true
  %call51 = call fastcc i32 @mpt3sas_config_update_driver_trigger_pg0(ptr noundef %ioc, i16 noundef zeroext 1, i1 noundef zeroext %lnot)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tg_pg1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpt3sas_config_update_driver_trigger_pg0(ptr noundef %ioc, i16 noundef zeroext %trigger_flag, i1 noundef zeroext %set) unnamed_addr #0 align 64 {
entry:
  %mpi_request.i67 = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  %mpi_request.i = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  %tg_pg0 = alloca %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_0, align 4
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tg_pg0) #8
  %0 = call ptr @memset(ptr %tg_pg0, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #8
  %1 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %2 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request.i) #8
  %3 = call ptr @memset(ptr %mpi_request.i, i32 0, i32 44)
  %Function.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 3
  %4 = ptrtoint ptr %Function.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %Function.i, align 1
  %Header.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14
  %PageType.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14, i32 3
  %5 = ptrtoint ptr %PageType.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 15, ptr %PageType.i, align 1
  %ExtPageType.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 5
  %6 = ptrtoint ptr %ExtPageType.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -32, ptr %ExtPageType.i, align 2
  %7 = ptrtoint ptr %Header.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %Header.i, align 4
  %build_zero_len_sge_mpi.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %8 = ptrtoint ptr %build_zero_len_sge_mpi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %build_zero_len_sge_mpi.i, align 8
  %PageBufferSGE.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 16
  call void %9(ptr noundef %ioc, ptr noundef %PageBufferSGE.i) #8
  %call.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i, ptr noundef nonnull %mpi_reply, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mpt3sas_config_get_driver_trigger_pg0.exit, label %mpt3sas_config_get_driver_trigger_pg0.exit.thread

mpt3sas_config_get_driver_trigger_pg0.exit.thread: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i) #8
  br label %cleanup

mpt3sas_config_get_driver_trigger_pg0.exit:       ; preds = %entry
  %10 = ptrtoint ptr %mpi_request.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %mpi_request.i, align 4
  %call4.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg0, i16 noundef zeroext 256) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %mpt3sas_config_get_driver_trigger_pg0.exit.cleanup_crit_edge

mpt3sas_config_get_driver_trigger_pg0.exit.cleanup_crit_edge: ; preds = %mpt3sas_config_get_driver_trigger_pg0.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mpt3sas_config_get_driver_trigger_pg0.exit
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 2
  %13 = and i16 %12, -129
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %conv2 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not = icmp eq i16 %13, 0
  br i1 %cmp.not, label %if.end11, label %if.then4

if.then4:                                         ; preds = %if.end
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %15 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %logging_level, align 8
  %and5 = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %do.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name, ptr noundef nonnull @.str.94, i32 noundef %conv2) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %TriggerFlags = getelementptr inbounds %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_0, ptr %tg_pg0, i32 0, i32 1
  %17 = ptrtoint ptr %TriggerFlags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %TriggerFlags, align 4
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %or66 = or i16 %19, %trigger_flag
  %neg = xor i16 %trigger_flag, -1
  %and20 = and i16 %19, %neg
  %flags.0 = select i1 %set, i16 %or66, i16 %and20
  %20 = call i16 @llvm.bswap.i16(i16 %flags.0)
  %TriggerFlags23 = getelementptr inbounds %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_0, ptr %tg_pg0, i32 0, i32 1
  %21 = ptrtoint ptr %TriggerFlags23 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %TriggerFlags23, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request.i67) #8
  %22 = call ptr @memset(ptr %mpi_request.i67, i32 0, i32 44)
  %Function.i68 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i67, i32 0, i32 3
  %23 = ptrtoint ptr %Function.i68 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %Function.i68, align 1
  %Header.i69 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i67, i32 0, i32 14
  %PageType.i70 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i67, i32 0, i32 14, i32 3
  %24 = ptrtoint ptr %PageType.i70 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 15, ptr %PageType.i70, align 1
  %ExtPageType.i71 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i67, i32 0, i32 5
  %25 = ptrtoint ptr %ExtPageType.i71 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -32, ptr %ExtPageType.i71, align 2
  %26 = ptrtoint ptr %Header.i69 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %Header.i69, align 4
  %27 = ptrtoint ptr %build_zero_len_sge_mpi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %build_zero_len_sge_mpi.i, align 8
  %PageBufferSGE.i73 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i67, i32 0, i32 16
  call void %28(ptr noundef %ioc, ptr noundef %PageBufferSGE.i73) #8
  %call.i74 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i67, ptr noundef nonnull %mpi_reply, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %_config_set_driver_trigger_pg0.exit, label %_config_set_driver_trigger_pg0.exit.thread

_config_set_driver_trigger_pg0.exit.thread:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i67) #8
  br label %cleanup

_config_set_driver_trigger_pg0.exit:              ; preds = %if.end11
  %29 = ptrtoint ptr %mpi_request.i67 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %mpi_request.i67, align 4
  %30 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i67, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg0, i16 noundef zeroext 256) #8
  %31 = ptrtoint ptr %mpi_request.i67 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %mpi_request.i67, align 4
  %call6.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i67, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg0, i16 noundef zeroext 256) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool25.not = icmp eq i32 %call6.i, 0
  br i1 %tobool25.not, label %if.end27, label %_config_set_driver_trigger_pg0.exit.cleanup_crit_edge

_config_set_driver_trigger_pg0.exit.cleanup_crit_edge: ; preds = %_config_set_driver_trigger_pg0.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %_config_set_driver_trigger_pg0.exit
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %1, align 2
  %34 = and i16 %33, -129
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %conv32 = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp33.not = icmp eq i16 %34, 0
  br i1 %cmp33.not, label %if.end27.cleanup_crit_edge, label %if.then35

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %if.end27
  %logging_level36 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %36 = ptrtoint ptr %logging_level36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %logging_level36, align 8
  %and37 = and i32 %37, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then35.cleanup_crit_edge, label %do.end42

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end42:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %name44 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name44, ptr noundef nonnull @.str.94, i32 noundef %conv32) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.then35.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %_config_set_driver_trigger_pg0.exit.cleanup_crit_edge, %_config_set_driver_trigger_pg0.exit.thread, %do.end, %if.then4.cleanup_crit_edge, %mpt3sas_config_get_driver_trigger_pg0.exit.cleanup_crit_edge, %mpt3sas_config_get_driver_trigger_pg0.exit.thread
  %retval.0 = phi i32 [ %call4.i, %mpt3sas_config_get_driver_trigger_pg0.exit.cleanup_crit_edge ], [ -14, %do.end ], [ -14, %if.then4.cleanup_crit_edge ], [ %call6.i, %_config_set_driver_trigger_pg0.exit.cleanup_crit_edge ], [ -14, %do.end42 ], [ -14, %if.then35.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ %call.i, %mpt3sas_config_get_driver_trigger_pg0.exit.thread ], [ %call.i74, %_config_set_driver_trigger_pg0.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tg_pg0) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_driver_trigger_pg2(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -32, ptr %ExtPageType, align 2
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %PageNumber, align 2
  %5 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %6 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %7(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 92)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_update_driver_trigger_pg2(ptr noundef %ioc, ptr nocapture noundef readonly %event_tg, i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request.i88 = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  %mpi_request.i = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  %tg_pg2 = alloca %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_2, align 2
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %tg_pg2) #8
  %0 = call ptr @memset(ptr %tg_pg2, i32 255, i32 92)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #8
  %1 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %2 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  %call = tail call fastcc i32 @mpt3sas_config_update_driver_trigger_pg0(ptr noundef %ioc, i16 noundef zeroext 2, i1 noundef zeroext %set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request.i) #8
  %3 = call ptr @memset(ptr %mpi_request.i, i32 0, i32 44)
  %Function.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 3
  %4 = ptrtoint ptr %Function.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %Function.i, align 1
  %Header.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14
  %PageType.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14, i32 3
  %5 = ptrtoint ptr %PageType.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 15, ptr %PageType.i, align 1
  %ExtPageType.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 5
  %6 = ptrtoint ptr %ExtPageType.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -32, ptr %ExtPageType.i, align 2
  %PageNumber.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14, i32 2
  %7 = ptrtoint ptr %PageNumber.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %PageNumber.i, align 2
  %8 = ptrtoint ptr %Header.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %Header.i, align 4
  %build_zero_len_sge_mpi.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %9 = ptrtoint ptr %build_zero_len_sge_mpi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %build_zero_len_sge_mpi.i, align 8
  %PageBufferSGE.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 16
  call void %10(ptr noundef %ioc, ptr noundef %PageBufferSGE.i) #8
  %call.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i, ptr noundef nonnull %mpi_reply, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mpt3sas_config_get_driver_trigger_pg2.exit, label %mpt3sas_config_get_driver_trigger_pg2.exit.thread

mpt3sas_config_get_driver_trigger_pg2.exit.thread: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i) #8
  br label %out

mpt3sas_config_get_driver_trigger_pg2.exit:       ; preds = %if.end
  %11 = ptrtoint ptr %mpi_request.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %mpi_request.i, align 4
  %call4.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg2, i16 noundef zeroext 92) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool3.not = icmp eq i32 %call4.i, 0
  br i1 %tobool3.not, label %if.end5, label %mpt3sas_config_get_driver_trigger_pg2.exit.out_crit_edge

mpt3sas_config_get_driver_trigger_pg2.exit.out_crit_edge: ; preds = %mpt3sas_config_get_driver_trigger_pg2.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %mpt3sas_config_get_driver_trigger_pg2.exit
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 2
  %14 = and i16 %13, -129
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %conv7 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not = icmp eq i16 %14, 0
  br i1 %cmp.not, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.end5
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %16 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %logging_level, align 8
  %and10 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then9.out_crit_edge, label %do.end

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, ptr noundef nonnull @.str.7, i32 noundef %conv7) #11
  br label %out

if.end16:                                         ; preds = %if.end5
  br i1 %set, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %18 = ptrtoint ptr %event_tg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %event_tg, align 4
  %conv19 = trunc i32 %19 to i16
  %20 = call i16 @llvm.bswap.i16(i16 %conv19)
  %NumMPIEventTrigger = getelementptr inbounds %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_2, ptr %tg_pg2, i32 0, i32 1
  %21 = ptrtoint ptr %NumMPIEventTrigger to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %NumMPIEventTrigger, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp20104 = icmp sgt i32 %19, 0
  br i1 %cmp20104, label %if.then18.for.body_crit_edge, label %if.then18.if.end30_crit_edge

if.then18.if.end30_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then18.for.body_crit_edge:                     ; preds = %if.then18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then18.for.body_crit_edge
  %i.0105 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then18.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.SL_WH_EVENT_TRIGGERS_T, ptr %event_tg, i32 0, i32 1, i32 %i.0105
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 4
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %arrayidx22 = getelementptr %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_2, ptr %tg_pg2, i32 0, i32 3, i32 %i.0105
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %arrayidx22, align 2
  %LogEntryQualifier = getelementptr %struct.SL_WH_EVENT_TRIGGERS_T, ptr %event_tg, i32 0, i32 1, i32 %i.0105, i32 1
  %26 = ptrtoint ptr %LogEntryQualifier to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %LogEntryQualifier, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %MPIEventCodeSpecific = getelementptr %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_2, ptr %tg_pg2, i32 0, i32 3, i32 %i.0105, i32 1
  %29 = ptrtoint ptr %MPIEventCodeSpecific to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %MPIEventCodeSpecific, align 2
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, %19
  br i1 %exitcond.not, label %for.body.if.end30_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %NumMPIEventTrigger27 = getelementptr inbounds %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_2, ptr %tg_pg2, i32 0, i32 1
  %30 = ptrtoint ptr %NumMPIEventTrigger27 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %NumMPIEventTrigger27, align 2
  %MPIEventTriggers28 = getelementptr inbounds %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_2, ptr %tg_pg2, i32 0, i32 3
  %31 = call ptr @memset(ptr %MPIEventTriggers28, i32 0, i32 80)
  br label %if.end30

if.end30:                                         ; preds = %if.else, %for.body.if.end30_crit_edge, %if.then18.if.end30_crit_edge
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request.i88) #8
  %32 = call ptr @memset(ptr %mpi_request.i88, i32 0, i32 44)
  %Function.i89 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i88, i32 0, i32 3
  %33 = ptrtoint ptr %Function.i89 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %Function.i89, align 1
  %Header.i90 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i88, i32 0, i32 14
  %PageType.i91 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i88, i32 0, i32 14, i32 3
  %34 = ptrtoint ptr %PageType.i91 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 15, ptr %PageType.i91, align 1
  %ExtPageType.i92 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i88, i32 0, i32 5
  %35 = ptrtoint ptr %ExtPageType.i92 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -32, ptr %ExtPageType.i92, align 2
  %PageNumber.i93 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i88, i32 0, i32 14, i32 2
  %36 = ptrtoint ptr %PageNumber.i93 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %PageNumber.i93, align 2
  %37 = ptrtoint ptr %Header.i90 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %Header.i90, align 4
  %38 = ptrtoint ptr %build_zero_len_sge_mpi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %build_zero_len_sge_mpi.i, align 8
  %PageBufferSGE.i95 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i88, i32 0, i32 16
  call void %39(ptr noundef %ioc, ptr noundef %PageBufferSGE.i95) #8
  %call.i96 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i88, ptr noundef nonnull %mpi_reply, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i97, label %_config_set_driver_trigger_pg2.exit, label %_config_set_driver_trigger_pg2.exit.thread

_config_set_driver_trigger_pg2.exit.thread:       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i88) #8
  br label %out

_config_set_driver_trigger_pg2.exit:              ; preds = %if.end30
  %40 = ptrtoint ptr %mpi_request.i88 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %mpi_request.i88, align 4
  %41 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i88, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg2, i16 noundef zeroext 92) #8
  %42 = ptrtoint ptr %mpi_request.i88 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 4, ptr %mpi_request.i88, align 4
  %call6.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i88, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg2, i16 noundef zeroext 92) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i88) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool32.not = icmp eq i32 %call6.i, 0
  br i1 %tobool32.not, label %if.end34, label %_config_set_driver_trigger_pg2.exit.out_crit_edge

_config_set_driver_trigger_pg2.exit.out_crit_edge: ; preds = %_config_set_driver_trigger_pg2.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end34:                                         ; preds = %_config_set_driver_trigger_pg2.exit
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %1, align 2
  %45 = and i16 %44, -129
  %46 = call i16 @llvm.bswap.i16(i16 %45)
  %conv39 = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp40.not = icmp eq i16 %45, 0
  br i1 %cmp40.not, label %if.end34.cleanup_crit_edge, label %if.then42

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %if.end34
  %logging_level43 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %47 = ptrtoint ptr %logging_level43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %logging_level43, align 8
  %and44 = and i32 %48, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.then42.out_crit_edge, label %do.end49

if.then42.out_crit_edge:                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end49:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %name51 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name51, ptr noundef nonnull @.str.7, i32 noundef %conv39) #11
  br label %out

out:                                              ; preds = %do.end49, %if.then42.out_crit_edge, %_config_set_driver_trigger_pg2.exit.out_crit_edge, %_config_set_driver_trigger_pg2.exit.thread, %do.end, %if.then9.out_crit_edge, %mpt3sas_config_get_driver_trigger_pg2.exit.out_crit_edge, %mpt3sas_config_get_driver_trigger_pg2.exit.thread
  %rc.0 = phi i32 [ %call4.i, %mpt3sas_config_get_driver_trigger_pg2.exit.out_crit_edge ], [ %call6.i, %_config_set_driver_trigger_pg2.exit.out_crit_edge ], [ -14, %do.end ], [ -14, %if.then9.out_crit_edge ], [ -14, %do.end49 ], [ -14, %if.then42.out_crit_edge ], [ %call.i, %mpt3sas_config_get_driver_trigger_pg2.exit.thread ], [ %call.i96, %_config_set_driver_trigger_pg2.exit.thread ]
  %lnot = xor i1 %set, true
  %call58 = call fastcc i32 @mpt3sas_config_update_driver_trigger_pg0(ptr noundef %ioc, i16 noundef zeroext 2, i1 noundef zeroext %lnot)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #8
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %tg_pg2) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_driver_trigger_pg3(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -32, ptr %ExtPageType, align 2
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %PageNumber, align 2
  %5 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %6 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %7(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 92)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_update_driver_trigger_pg3(ptr noundef %ioc, ptr nocapture noundef readonly %scsi_tg, i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request.i98 = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  %mpi_request.i = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  %tg_pg3 = alloca %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_3, align 2
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %tg_pg3) #8
  %0 = call ptr @memset(ptr %tg_pg3, i32 255, i32 92)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #8
  %1 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %2 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  %call = tail call fastcc i32 @mpt3sas_config_update_driver_trigger_pg0(ptr noundef %ioc, i16 noundef zeroext 4, i1 noundef zeroext %set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request.i) #8
  %3 = call ptr @memset(ptr %mpi_request.i, i32 0, i32 44)
  %Function.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 3
  %4 = ptrtoint ptr %Function.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %Function.i, align 1
  %Header.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14
  %PageType.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14, i32 3
  %5 = ptrtoint ptr %PageType.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 15, ptr %PageType.i, align 1
  %ExtPageType.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 5
  %6 = ptrtoint ptr %ExtPageType.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -32, ptr %ExtPageType.i, align 2
  %PageNumber.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14, i32 2
  %7 = ptrtoint ptr %PageNumber.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %PageNumber.i, align 2
  %8 = ptrtoint ptr %Header.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %Header.i, align 4
  %build_zero_len_sge_mpi.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %9 = ptrtoint ptr %build_zero_len_sge_mpi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %build_zero_len_sge_mpi.i, align 8
  %PageBufferSGE.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 16
  call void %10(ptr noundef %ioc, ptr noundef %PageBufferSGE.i) #8
  %call.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i, ptr noundef nonnull %mpi_reply, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mpt3sas_config_get_driver_trigger_pg3.exit, label %mpt3sas_config_get_driver_trigger_pg3.exit.thread

mpt3sas_config_get_driver_trigger_pg3.exit.thread: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i) #8
  br label %out

mpt3sas_config_get_driver_trigger_pg3.exit:       ; preds = %if.end
  %11 = ptrtoint ptr %mpi_request.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %mpi_request.i, align 4
  %call4.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg3, i16 noundef zeroext 92) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool3.not = icmp eq i32 %call4.i, 0
  br i1 %tobool3.not, label %if.end5, label %mpt3sas_config_get_driver_trigger_pg3.exit.out_crit_edge

mpt3sas_config_get_driver_trigger_pg3.exit.out_crit_edge: ; preds = %mpt3sas_config_get_driver_trigger_pg3.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %mpt3sas_config_get_driver_trigger_pg3.exit
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 2
  %14 = and i16 %13, -129
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %conv7 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not = icmp eq i16 %14, 0
  br i1 %cmp.not, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.end5
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %16 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %logging_level, align 8
  %and10 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then9.cleanup_crit_edge, label %do.end

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, ptr noundef nonnull @.str.11, i32 noundef %conv7) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  br i1 %set, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %18 = ptrtoint ptr %scsi_tg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scsi_tg, align 4
  %conv19 = trunc i32 %19 to i16
  %20 = call i16 @llvm.bswap.i16(i16 %conv19)
  %NumSCSISenseTrigger = getelementptr inbounds %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_3, ptr %tg_pg3, i32 0, i32 1
  %21 = ptrtoint ptr %NumSCSISenseTrigger to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %NumSCSISenseTrigger, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp20114 = icmp sgt i32 %19, 0
  br i1 %cmp20114, label %if.then18.for.body_crit_edge, label %if.then18.if.end37_crit_edge

if.then18.if.end37_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then18.for.body_crit_edge:                     ; preds = %if.then18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then18.for.body_crit_edge
  %i.0115 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then18.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.SL_WH_SCSI_TRIGGERS_T, ptr %scsi_tg, i32 0, i32 1, i32 %i.0115
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 4
  %arrayidx22 = getelementptr %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_3, ptr %tg_pg3, i32 0, i32 3, i32 %i.0115
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx22, align 2
  %ASC = getelementptr %struct.SL_WH_SCSI_TRIGGERS_T, ptr %scsi_tg, i32 0, i32 1, i32 %i.0115, i32 1
  %25 = ptrtoint ptr %ASC to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ASC, align 1
  %ASC28 = getelementptr %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_3, ptr %tg_pg3, i32 0, i32 3, i32 %i.0115, i32 1
  %27 = ptrtoint ptr %ASC28 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %ASC28, align 1
  %SenseKey = getelementptr %struct.SL_WH_SCSI_TRIGGERS_T, ptr %scsi_tg, i32 0, i32 1, i32 %i.0115, i32 2
  %28 = ptrtoint ptr %SenseKey to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %SenseKey, align 2
  %SenseKey33 = getelementptr %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_3, ptr %tg_pg3, i32 0, i32 3, i32 %i.0115, i32 2
  %30 = ptrtoint ptr %SenseKey33 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %SenseKey33, align 2
  %inc = add nuw nsw i32 %i.0115, 1
  %exitcond.not = icmp eq i32 %inc, %19
  br i1 %exitcond.not, label %for.body.if.end37_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %NumSCSISenseTrigger34 = getelementptr inbounds %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_3, ptr %tg_pg3, i32 0, i32 1
  %31 = ptrtoint ptr %NumSCSISenseTrigger34 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %NumSCSISenseTrigger34, align 2
  %SCSISenseTriggers35 = getelementptr inbounds %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_3, ptr %tg_pg3, i32 0, i32 3
  %32 = call ptr @memset(ptr %SCSISenseTriggers35, i32 0, i32 80)
  br label %if.end37

if.end37:                                         ; preds = %if.else, %for.body.if.end37_crit_edge, %if.then18.if.end37_crit_edge
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request.i98) #8
  %33 = call ptr @memset(ptr %mpi_request.i98, i32 0, i32 44)
  %Function.i99 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i98, i32 0, i32 3
  %34 = ptrtoint ptr %Function.i99 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %Function.i99, align 1
  %Header.i100 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i98, i32 0, i32 14
  %PageType.i101 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i98, i32 0, i32 14, i32 3
  %35 = ptrtoint ptr %PageType.i101 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 15, ptr %PageType.i101, align 1
  %ExtPageType.i102 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i98, i32 0, i32 5
  %36 = ptrtoint ptr %ExtPageType.i102 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -32, ptr %ExtPageType.i102, align 2
  %PageNumber.i103 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i98, i32 0, i32 14, i32 2
  %37 = ptrtoint ptr %PageNumber.i103 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %PageNumber.i103, align 2
  %38 = ptrtoint ptr %Header.i100 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %Header.i100, align 4
  %39 = ptrtoint ptr %build_zero_len_sge_mpi.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %build_zero_len_sge_mpi.i, align 8
  %PageBufferSGE.i105 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i98, i32 0, i32 16
  call void %40(ptr noundef %ioc, ptr noundef %PageBufferSGE.i105) #8
  %call.i106 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i98, ptr noundef nonnull %mpi_reply, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.not.i107 = icmp eq i32 %call.i106, 0
  br i1 %tobool.not.i107, label %_config_set_driver_trigger_pg3.exit, label %_config_set_driver_trigger_pg3.exit.thread

_config_set_driver_trigger_pg3.exit.thread:       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i98) #8
  br label %out

_config_set_driver_trigger_pg3.exit:              ; preds = %if.end37
  %41 = ptrtoint ptr %mpi_request.i98 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %mpi_request.i98, align 4
  %42 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i98, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg3, i16 noundef zeroext 92) #8
  %43 = ptrtoint ptr %mpi_request.i98 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 4, ptr %mpi_request.i98, align 4
  %call6.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i98, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg3, i16 noundef zeroext 92) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i98) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool39.not = icmp eq i32 %call6.i, 0
  br i1 %tobool39.not, label %if.end41, label %_config_set_driver_trigger_pg3.exit.out_crit_edge

_config_set_driver_trigger_pg3.exit.out_crit_edge: ; preds = %_config_set_driver_trigger_pg3.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end41:                                         ; preds = %_config_set_driver_trigger_pg3.exit
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %1, align 2
  %46 = and i16 %45, -129
  %47 = call i16 @llvm.bswap.i16(i16 %46)
  %conv46 = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp47.not = icmp eq i16 %46, 0
  br i1 %cmp47.not, label %if.end41.cleanup_crit_edge, label %if.then49

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then49:                                        ; preds = %if.end41
  %logging_level50 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %48 = ptrtoint ptr %logging_level50 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %logging_level50, align 8
  %and51 = and i32 %49, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.then49.cleanup_crit_edge, label %do.end56

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end56:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %name58 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name58, ptr noundef nonnull @.str.11, i32 noundef %conv46) #11
  br label %cleanup

out:                                              ; preds = %_config_set_driver_trigger_pg3.exit.out_crit_edge, %_config_set_driver_trigger_pg3.exit.thread, %mpt3sas_config_get_driver_trigger_pg3.exit.out_crit_edge, %mpt3sas_config_get_driver_trigger_pg3.exit.thread
  %rc.0 = phi i32 [ %call4.i, %mpt3sas_config_get_driver_trigger_pg3.exit.out_crit_edge ], [ %call6.i, %_config_set_driver_trigger_pg3.exit.out_crit_edge ], [ %call.i, %mpt3sas_config_get_driver_trigger_pg3.exit.thread ], [ %call.i106, %_config_set_driver_trigger_pg3.exit.thread ]
  %lnot = xor i1 %set, true
  %call65 = call fastcc i32 @mpt3sas_config_update_driver_trigger_pg0(ptr noundef %ioc, i16 noundef zeroext 4, i1 noundef zeroext %lnot)
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end56, %if.then49.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %do.end, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ %call, %entry.cleanup_crit_edge ], [ -14, %do.end ], [ -14, %if.then9.cleanup_crit_edge ], [ -14, %do.end56 ], [ -14, %if.then49.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #8
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %tg_pg3) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_driver_trigger_pg4(ptr noundef %ioc, ptr nocapture noundef %mpi_reply, ptr noundef %config_page) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  %0 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %1 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %Function, align 1
  %Header = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %3 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -32, ptr %ExtPageType, align 2
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %PageNumber, align 2
  %5 = ptrtoint ptr %Header to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %Header, align 4
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %6 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %7(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %mpi_request, align 4
  %call4 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef %mpi_reply, ptr noundef %config_page, i16 noundef zeroext 172)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_update_driver_trigger_pg4(ptr noundef %ioc, ptr nocapture noundef readonly %mpi_tg, i1 noundef zeroext %set) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request.i90 = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  %mpi_request.i = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  %tg_pg4 = alloca %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_4, align 4
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %tg_pg4) #8
  %0 = call ptr @memset(ptr %tg_pg4, i32 255, i32 172)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #8
  %1 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %2 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  %call = tail call fastcc i32 @mpt3sas_config_update_driver_trigger_pg0(ptr noundef %ioc, i16 noundef zeroext 8, i1 noundef zeroext %set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request.i) #8
  %3 = call ptr @memset(ptr %mpi_request.i, i32 0, i32 44)
  %Function.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 3
  %4 = ptrtoint ptr %Function.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %Function.i, align 1
  %Header.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14
  %PageType.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14, i32 3
  %5 = ptrtoint ptr %PageType.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 15, ptr %PageType.i, align 1
  %ExtPageType.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 5
  %6 = ptrtoint ptr %ExtPageType.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -32, ptr %ExtPageType.i, align 2
  %PageNumber.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14, i32 2
  %7 = ptrtoint ptr %PageNumber.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %PageNumber.i, align 2
  %8 = ptrtoint ptr %Header.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %Header.i, align 4
  %build_zero_len_sge_mpi.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %9 = ptrtoint ptr %build_zero_len_sge_mpi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %build_zero_len_sge_mpi.i, align 8
  %PageBufferSGE.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 16
  call void %10(ptr noundef %ioc, ptr noundef %PageBufferSGE.i) #8
  %call.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i, ptr noundef nonnull %mpi_reply, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mpt3sas_config_get_driver_trigger_pg4.exit, label %mpt3sas_config_get_driver_trigger_pg4.exit.thread

mpt3sas_config_get_driver_trigger_pg4.exit.thread: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i) #8
  br label %out

mpt3sas_config_get_driver_trigger_pg4.exit:       ; preds = %if.end
  %11 = ptrtoint ptr %mpi_request.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %mpi_request.i, align 4
  %call4.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg4, i16 noundef zeroext 172) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool3.not = icmp eq i32 %call4.i, 0
  br i1 %tobool3.not, label %if.end5, label %mpt3sas_config_get_driver_trigger_pg4.exit.out_crit_edge

mpt3sas_config_get_driver_trigger_pg4.exit.out_crit_edge: ; preds = %mpt3sas_config_get_driver_trigger_pg4.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %mpt3sas_config_get_driver_trigger_pg4.exit
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 2
  %14 = and i16 %13, -129
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %conv7 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not = icmp eq i16 %14, 0
  br i1 %cmp.not, label %if.end16, label %if.then9

if.then9:                                         ; preds = %if.end5
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %16 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %logging_level, align 8
  %and10 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then9.out_crit_edge, label %do.end

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef nonnull @.str.15, i32 noundef %conv7) #11
  br label %out

if.end16:                                         ; preds = %if.end5
  br i1 %set, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %18 = ptrtoint ptr %mpi_tg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mpi_tg, align 4
  %conv19 = trunc i32 %19 to i16
  %20 = call i16 @llvm.bswap.i16(i16 %conv19)
  %NumIOCStatusLogInfoTrigger = getelementptr inbounds %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_4, ptr %tg_pg4, i32 0, i32 1
  %21 = ptrtoint ptr %NumIOCStatusLogInfoTrigger to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %NumIOCStatusLogInfoTrigger, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp20106 = icmp sgt i32 %19, 0
  br i1 %cmp20106, label %if.then18.for.body_crit_edge, label %if.then18.if.end32_crit_edge

if.then18.if.end32_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then18.for.body_crit_edge:                     ; preds = %if.then18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then18.for.body_crit_edge
  %i.0107 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then18.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.SL_WH_MPI_TRIGGERS_T, ptr %mpi_tg, i32 0, i32 1, i32 %i.0107
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 4
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %arrayidx23 = getelementptr %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_4, ptr %tg_pg4, i32 0, i32 3, i32 %i.0107
  %25 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %arrayidx23, align 4
  %IocLogInfo = getelementptr %struct.SL_WH_MPI_TRIGGERS_T, ptr %mpi_tg, i32 0, i32 1, i32 %i.0107, i32 2
  %26 = ptrtoint ptr %IocLogInfo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %IocLogInfo, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %LogInfo = getelementptr %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_4, ptr %tg_pg4, i32 0, i32 3, i32 %i.0107, i32 2
  %29 = ptrtoint ptr %LogInfo to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %LogInfo, align 4
  %inc = add nuw nsw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, %19
  br i1 %exitcond.not, label %for.body.if.end32_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %NumIOCStatusLogInfoTrigger29 = getelementptr inbounds %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_4, ptr %tg_pg4, i32 0, i32 1
  %30 = ptrtoint ptr %NumIOCStatusLogInfoTrigger29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %NumIOCStatusLogInfoTrigger29, align 4
  %IOCStatusLoginfoTriggers30 = getelementptr inbounds %struct._MPI26_CONFIG_PAGE_DRIVER_TIGGER_4, ptr %tg_pg4, i32 0, i32 3
  %31 = call ptr @memset(ptr %IOCStatusLoginfoTriggers30, i32 0, i32 160)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.body.if.end32_crit_edge, %if.then18.if.end32_crit_edge
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request.i90) #8
  %32 = call ptr @memset(ptr %mpi_request.i90, i32 0, i32 44)
  %Function.i91 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i90, i32 0, i32 3
  %33 = ptrtoint ptr %Function.i91 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 4, ptr %Function.i91, align 1
  %Header.i92 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i90, i32 0, i32 14
  %PageType.i93 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i90, i32 0, i32 14, i32 3
  %34 = ptrtoint ptr %PageType.i93 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 15, ptr %PageType.i93, align 1
  %ExtPageType.i94 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i90, i32 0, i32 5
  %35 = ptrtoint ptr %ExtPageType.i94 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -32, ptr %ExtPageType.i94, align 2
  %PageNumber.i95 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i90, i32 0, i32 14, i32 2
  %36 = ptrtoint ptr %PageNumber.i95 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 4, ptr %PageNumber.i95, align 2
  %37 = ptrtoint ptr %Header.i92 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %Header.i92, align 4
  %38 = ptrtoint ptr %build_zero_len_sge_mpi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %build_zero_len_sge_mpi.i, align 8
  %PageBufferSGE.i97 = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i90, i32 0, i32 16
  call void %39(ptr noundef %ioc, ptr noundef %PageBufferSGE.i97) #8
  %call.i98 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i90, ptr noundef nonnull %mpi_reply, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i99 = icmp eq i32 %call.i98, 0
  br i1 %tobool.not.i99, label %_config_set_driver_trigger_pg4.exit, label %_config_set_driver_trigger_pg4.exit.thread

_config_set_driver_trigger_pg4.exit.thread:       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i90) #8
  br label %out

_config_set_driver_trigger_pg4.exit:              ; preds = %if.end32
  %40 = ptrtoint ptr %mpi_request.i90 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %mpi_request.i90, align 4
  %41 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i90, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg4, i16 noundef zeroext 172) #8
  %42 = ptrtoint ptr %mpi_request.i90 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 4, ptr %mpi_request.i90, align 4
  %call6.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i90, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %tg_pg4, i16 noundef zeroext 172) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i90) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool34.not = icmp eq i32 %call6.i, 0
  br i1 %tobool34.not, label %if.end36, label %_config_set_driver_trigger_pg4.exit.out_crit_edge

_config_set_driver_trigger_pg4.exit.out_crit_edge: ; preds = %_config_set_driver_trigger_pg4.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end36:                                         ; preds = %_config_set_driver_trigger_pg4.exit
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %1, align 2
  %45 = and i16 %44, -129
  %46 = call i16 @llvm.bswap.i16(i16 %45)
  %conv41 = zext i16 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp42.not = icmp eq i16 %45, 0
  br i1 %cmp42.not, label %if.end36.cleanup_crit_edge, label %if.then44

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then44:                                        ; preds = %if.end36
  %logging_level45 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %47 = ptrtoint ptr %logging_level45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %logging_level45, align 8
  %and46 = and i32 %48, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then44.out_crit_edge, label %do.end51

if.then44.out_crit_edge:                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end51:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %name53 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name53, ptr noundef nonnull @.str.15, i32 noundef %conv41) #11
  br label %out

out:                                              ; preds = %do.end51, %if.then44.out_crit_edge, %_config_set_driver_trigger_pg4.exit.out_crit_edge, %_config_set_driver_trigger_pg4.exit.thread, %do.end, %if.then9.out_crit_edge, %mpt3sas_config_get_driver_trigger_pg4.exit.out_crit_edge, %mpt3sas_config_get_driver_trigger_pg4.exit.thread
  %rc.0 = phi i32 [ %call4.i, %mpt3sas_config_get_driver_trigger_pg4.exit.out_crit_edge ], [ %call6.i, %_config_set_driver_trigger_pg4.exit.out_crit_edge ], [ -14, %do.end ], [ -14, %if.then9.out_crit_edge ], [ -14, %do.end51 ], [ -14, %if.then44.out_crit_edge ], [ %call.i, %mpt3sas_config_get_driver_trigger_pg4.exit.thread ], [ %call.i98, %_config_set_driver_trigger_pg4.exit.thread ]
  %lnot = xor i1 %set, true
  %call60 = call fastcc i32 @mpt3sas_config_update_driver_trigger_pg0(ptr noundef %ioc, i16 noundef zeroext 8, i1 noundef zeroext %lnot)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #8
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %tg_pg4) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_volume_handle(ptr noundef %ioc, i16 noundef zeroext %pd_handle, ptr nocapture noundef writeonly %volume_handle) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #8
  %0 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %1 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  %2 = ptrtoint ptr %volume_handle to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %volume_handle, align 2
  %3 = call ptr @memset(ptr %mpi_request, i32 0, i32 44)
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 3
  %4 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %Function, align 1
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 3
  %5 = ptrtoint ptr %PageType to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 15, ptr %PageType, align 1
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 5
  %6 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 22, ptr %ExtPageType, align 2
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 14, i32 2
  %7 = ptrtoint ptr %PageNumber to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %PageNumber, align 2
  %build_zero_len_sge_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %8 = ptrtoint ptr %build_zero_len_sge_mpi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %build_zero_len_sge_mpi, align 8
  %PageBufferSGE = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 16
  call void %9(ptr noundef %ioc, ptr noundef %PageBufferSGE) #8
  %call = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef nonnull %mpi_reply, ptr noundef null, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %10 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 4
  %11 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %mpi_request, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %10, align 4
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #13
  %tobool5.not = icmp eq ptr %call9.i, null
  br i1 %tobool5.not, label %if.end.out_crit_edge, label %while.cond.preheader

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.cond.preheader:                             ; preds = %if.end
  %PageAddress = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request, i32 0, i32 15
  %conv8 = trunc i32 %mul to i16
  %15 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -16777216, ptr %PageAddress, align 4
  %call975 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call975)
  %tobool10.not76 = icmp eq i32 %call975, 0
  br i1 %tobool10.not76, label %if.end12.lr.ph, label %while.cond.preheader.out_crit_edge

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end12.lr.ph:                                   ; preds = %while.cond.preheader
  %NumElements = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RAID_CONFIGURATION_0, ptr %call9.i, i32 0, i32 8
  %ConfigNum = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RAID_CONFIGURATION_0, ptr %call9.i, i32 0, i32 4
  br label %if.end12

if.end12:                                         ; preds = %for.end.if.end12_crit_edge, %if.end12.lr.ph
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %0, align 2
  %18 = and i16 %17, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.not = icmp eq i16 %18, 0
  br i1 %cmp.not, label %for.cond.preheader, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond.preheader:                               ; preds = %if.end12
  %19 = ptrtoint ptr %NumElements to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %NumElements, align 4
  %conv19 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp2072.not = icmp eq i8 %20, 0
  br i1 %cmp2072.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.073 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct._MPI2_CONFIG_PAGE_RAID_CONFIGURATION_0, ptr %call9.i, i32 0, i32 11, i32 %i.073
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 8
  %23 = lshr i16 %22, 8
  %trunc = trunc i16 %23 to i4
  %24 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.100)
  switch i4 %trunc, label %for.body.for.inc_crit_edge [
    i4 1, label %for.body.if.then31_crit_edge
    i4 3, label %for.body.if.then31_crit_edge92
    i4 2, label %for.body.out.sink.split_crit_edge
  ]

for.body.out.sink.split_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

for.body.if.then31_crit_edge92:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

for.body.if.then31_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then31:                                        ; preds = %for.body.if.then31_crit_edge, %for.body.if.then31_crit_edge92
  %PhysDiskDevHandle = getelementptr %struct._MPI2_CONFIG_PAGE_RAID_CONFIGURATION_0, ptr %call9.i, i32 0, i32 11, i32 %i.073, i32 4
  %25 = ptrtoint ptr %PhysDiskDevHandle to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %PhysDiskDevHandle, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %pd_handle)
  %cmp36 = icmp eq i16 %27, %pd_handle
  br i1 %cmp36, label %if.then38, label %if.then31.for.inc_crit_edge

if.then31.for.inc_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then38:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %VolDevHandle = getelementptr %struct._MPI2_CONFIG_PAGE_RAID_CONFIGURATION_0, ptr %call9.i, i32 0, i32 11, i32 %i.073, i32 1
  %28 = ptrtoint ptr %VolDevHandle to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %VolDevHandle, align 2
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  br label %out.sink.split

for.inc:                                          ; preds = %if.then31.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, %conv19
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %31 = ptrtoint ptr %ConfigNum to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ConfigNum, align 1
  %conv48 = zext i8 %32 to i32
  %33 = shl nuw i32 %conv48, 24
  %34 = ptrtoint ptr %PageAddress to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %PageAddress, align 4
  %call9 = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv8)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.end.if.end12_crit_edge, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

out.sink.split:                                   ; preds = %if.then38, %for.body.out.sink.split_crit_edge
  %.sink = phi i16 [ %30, %if.then38 ], [ 0, %for.body.out.sink.split_crit_edge ]
  %35 = ptrtoint ptr %volume_handle to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %.sink, ptr %volume_handle, align 2
  br label %out

out:                                              ; preds = %out.sink.split, %for.end.out_crit_edge, %if.end12.out_crit_edge, %while.cond.preheader.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %config_page.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ %call9.i, %while.cond.preheader.out_crit_edge ], [ %call9.i, %out.sink.split ], [ %call9.i, %if.end12.out_crit_edge ], [ %call9.i, %for.end.out_crit_edge ]
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ -1, %if.end.out_crit_edge ], [ %call975, %while.cond.preheader.out_crit_edge ], [ 0, %out.sink.split ], [ %call9, %for.end.out_crit_edge ], [ -1, %if.end12.out_crit_edge ]
  call void @kfree(ptr noundef %config_page.0) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request) #8
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_config_get_volume_wwid(ptr noundef %ioc, i16 noundef zeroext %volume_handle, ptr nocapture noundef writeonly %wwid) local_unnamed_addr #0 align 64 {
entry:
  %mpi_request.i = alloca %struct._MPI2_CONFIG_REQUEST, align 4
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  %raid_vol_pg1 = alloca %struct._MPI2_CONFIG_PAGE_RAID_VOL_1, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #8
  %0 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %raid_vol_pg1) #8
  %1 = call ptr @memset(ptr %raid_vol_pg1, i32 255, i32 64)
  %2 = ptrtoint ptr %wwid to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %wwid, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mpi_request.i) #8
  %3 = call ptr @memset(ptr %mpi_request.i, i32 0, i32 44)
  %Function.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 3
  %4 = ptrtoint ptr %Function.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %Function.i, align 1
  %Header.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14
  %PageType.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14, i32 3
  %5 = ptrtoint ptr %PageType.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %PageType.i, align 1
  %PageNumber.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 14, i32 2
  %6 = ptrtoint ptr %PageNumber.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %PageNumber.i, align 2
  %7 = ptrtoint ptr %Header.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %Header.i, align 4
  %build_zero_len_sge_mpi.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 88
  %8 = ptrtoint ptr %build_zero_len_sge_mpi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %build_zero_len_sge_mpi.i, align 8
  %PageBufferSGE.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 16
  call void %9(ptr noundef %ioc, ptr noundef %PageBufferSGE.i) #8
  %call.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i, ptr noundef nonnull %mpi_reply, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mpt3sas_config_get_raid_volume_pg1.exit, label %mpt3sas_config_get_raid_volume_pg1.exit.thread

mpt3sas_config_get_raid_volume_pg1.exit.thread:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i) #8
  br label %cleanup

mpt3sas_config_get_raid_volume_pg1.exit:          ; preds = %entry
  %conv = zext i16 %volume_handle to i32
  %or.i = or i32 %conv, 268435456
  %10 = call i32 @llvm.bswap.i32(i32 %or.i) #8
  %PageAddress.i = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %mpi_request.i, i32 0, i32 15
  %11 = ptrtoint ptr %PageAddress.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %PageAddress.i, align 4
  %12 = ptrtoint ptr %mpi_request.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %mpi_request.i, align 4
  %call4.i = call fastcc i32 @_config_request(ptr noundef %ioc, ptr noundef nonnull %mpi_request.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %raid_vol_pg1, i16 noundef zeroext 64) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mpi_request.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.then, label %mpt3sas_config_get_raid_volume_pg1.exit.cleanup_crit_edge

mpt3sas_config_get_raid_volume_pg1.exit.cleanup_crit_edge: ; preds = %mpt3sas_config_get_raid_volume_pg1.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %mpt3sas_config_get_raid_volume_pg1.exit
  call void @__sanitizer_cov_trace_pc() #10
  %WWID = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RAID_VOL_1, ptr %raid_vol_pg1, i32 0, i32 5
  %13 = ptrtoint ptr %WWID to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %WWID, align 4
  %15 = call i64 @llvm.bswap.i64(i64 %14)
  %16 = ptrtoint ptr %wwid to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %wwid, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %mpt3sas_config_get_raid_volume_pg1.exit.cleanup_crit_edge, %mpt3sas_config_get_raid_volume_pg1.exit.thread
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %mpt3sas_config_get_raid_volume_pg1.exit.cleanup_crit_edge ], [ -1, %mpt3sas_config_get_raid_volume_pg1.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %raid_vol_pg1) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_base_get_msg_frame(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_wait_for_ioc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mpt3sas_base_get_smid(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mpt3sas_base_check_cmd_timeout(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt3sas_base_free_smid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_debug_dump_mf(ptr nocapture noundef readonly %mpi_request, i32 noundef %sz) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz)
  %cmp21 = icmp sgt i32 %sz, 0
  br i1 %cmp21, label %entry.for.body_crit_edge, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %do.end9.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %do.end9.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.022)
  %tobool.not = icmp ne i32 %i.022, 0
  %0 = and i32 %i.022, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp eq i32 %0, 0
  %or.cond = and i1 %tobool.not, %cmp1
  br i1 %or.cond, label %do.end4, label %for.body.do.end9_crit_edge

for.body.do.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #11
  br label %do.end9

do.end9:                                          ; preds = %do.end4, %for.body.do.end9_crit_edge
  %arrayidx = getelementptr i32, ptr %mpi_request, i32 %i.022
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %3) #11
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %sz
  br i1 %exitcond.not, label %do.end9.do.end14_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end9.do.end14_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.end14:                                         ; preds = %do.end9.do.end14_crit_edge, %entry.do.end14_crit_edge
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_debug_dump_reply(ptr nocapture noundef readonly %mpi_request, i32 noundef %sz) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz)
  %cmp21 = icmp sgt i32 %sz, 0
  br i1 %cmp21, label %entry.for.body_crit_edge, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %do.end9.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %do.end9.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.022)
  %tobool.not = icmp ne i32 %i.022, 0
  %0 = and i32 %i.022, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp eq i32 %0, 0
  %or.cond = and i1 %tobool.not, %cmp1
  br i1 %or.cond, label %do.end4, label %for.body.do.end9_crit_edge

for.body.do.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #11
  br label %do.end9

do.end9:                                          ; preds = %do.end4, %for.body.do.end9_crit_edge
  %arrayidx = getelementptr i32, ptr %mpi_request, i32 %i.022
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %3) #11
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %sz
  br i1 %exitcond.not, label %do.end9.do.end14_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end9.do.end14_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.end14:                                         ; preds = %do.end9.do.end14_crit_edge, %entry.do.end14_crit_edge
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #11
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_debug_dump_config(ptr nocapture noundef readonly %mpi_request, i32 noundef %sz) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz)
  %cmp21 = icmp sgt i32 %sz, 0
  br i1 %cmp21, label %entry.for.body_crit_edge, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %do.end9.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %do.end9.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.022)
  %tobool.not = icmp ne i32 %i.022, 0
  %0 = and i32 %i.022, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp eq i32 %0, 0
  %or.cond = and i1 %tobool.not, %cmp1
  br i1 %or.cond, label %do.end4, label %for.body.do.end9_crit_edge

for.body.do.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #11
  br label %do.end9

do.end9:                                          ; preds = %do.end4, %for.body.do.end9_crit_edge
  %arrayidx = getelementptr i32, ptr %mpi_request, i32 %i.022
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %3) #11
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %sz
  br i1 %exitcond.not, label %do.end9.do.end14_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end9.do.end14_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

do.end14:                                         ; preds = %do.end9.do.end14_crit_edge, %entry.do.end14_crit_edge
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_base_hard_reset_handler(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_base_check_for_fault_and_issue_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !102, !103, !105, !107, !109, !110, !111, !113, !115, !117, !118, !119, !120, !122, !123, !125, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !173, !174, !176, !177}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 270, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 2036, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mpt3sas_config_update_driver_trigger_pg1._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @mpt3sas_config_update_driver_trigger_pg1._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mpt3sas_config_update_driver_trigger_pg1._entry.4, !9, !"_entry", i1 false, i1 false}
!9 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 2060, i32 3}
!10 = !{ptr @mpt3sas_config_update_driver_trigger_pg1._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 2187, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mpt3sas_config_update_driver_trigger_pg2._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @mpt3sas_config_update_driver_trigger_pg2._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @mpt3sas_config_update_driver_trigger_pg2._entry.8, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 2220, i32 3}
!18 = !{ptr @mpt3sas_config_update_driver_trigger_pg2._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 2347, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mpt3sas_config_update_driver_trigger_pg3._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @mpt3sas_config_update_driver_trigger_pg3._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mpt3sas_config_update_driver_trigger_pg3._entry.12, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 2379, i32 3}
!26 = !{ptr @mpt3sas_config_update_driver_trigger_pg3._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 2504, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mpt3sas_config_update_driver_trigger_pg4._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mpt3sas_config_update_driver_trigger_pg4._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mpt3sas_config_update_driver_trigger_pg4._entry.16, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 2535, i32 3}
!34 = !{ptr @mpt3sas_config_update_driver_trigger_pg4._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 107, i32 10}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 110, i32 10}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 113, i32 10}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 116, i32 10}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 119, i32 10}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 122, i32 10}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 127, i32 11}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 130, i32 11}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 133, i32 11}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 136, i32 11}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 139, i32 11}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 142, i32 11}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 145, i32 11}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 148, i32 11}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 151, i32 11}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 154, i32 11}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 157, i32 11}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 160, i32 11}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 163, i32 11}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 166, i32 11}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 175, i32 2}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @_config_display_some_debug._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @_config_display_some_debug._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 184, i32 3}
!82 = !{ptr @_config_display_some_debug._entry.40, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @_config_display_some_debug._entry_ptr.42, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 309, i32 3}
!86 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @_config_request._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @_config_request._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 357, i32 3}
!91 = !{ptr @_config_request._entry.45, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @_config_request._entry_ptr.47, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 370, i32 3}
!95 = !{ptr @_config_request._entry.48, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @_config_request._entry_ptr.50, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 383, i32 41}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 391, i32 3}
!101 = !{ptr @_config_request._entry.52, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @_config_request._entry_ptr.54, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 416, i32 10}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 430, i32 10}
!107 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 440, i32 3}
!109 = !{ptr @_config_request._entry.57, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @_config_request._entry_ptr.59, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 459, i32 11}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 475, i32 11}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 208, i32 4}
!117 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @_config_alloc_config_dma_memory._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @_config_alloc_config_dma_memory._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @init_completion.__key, !121, !"__key", i1 false, i1 false}
!121 = !{!"../include/linux/completion.h", i32 87, i32 2}
!122 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 159, i32 2}
!125 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @_debug_dump_mf._entry, !124, !"_entry", i1 false, i1 false}
!128 = !{ptr @_debug_dump_mf._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 162, i32 4}
!131 = !{ptr @_debug_dump_mf._entry.68, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @_debug_dump_mf._entry_ptr.70, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 163, i32 3}
!135 = !{ptr @_debug_dump_mf._entry.71, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @_debug_dump_mf._entry_ptr.73, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.75, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 165, i32 2}
!139 = !{ptr @_debug_dump_mf._entry.74, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @_debug_dump_mf._entry_ptr.76, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.77, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 178, i32 2}
!143 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @_debug_dump_reply._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @_debug_dump_reply._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @_debug_dump_reply._entry.79, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 181, i32 4}
!148 = !{ptr @_debug_dump_reply._entry_ptr.80, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @_debug_dump_reply._entry.81, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 182, i32 3}
!151 = !{ptr @_debug_dump_reply._entry_ptr.82, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @_debug_dump_reply._entry.83, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 184, i32 2}
!154 = !{ptr @_debug_dump_reply._entry_ptr.84, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 197, i32 2}
!157 = !{ptr @.str.86, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @_debug_dump_config._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @_debug_dump_config._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @_debug_dump_config._entry.87, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 200, i32 4}
!162 = !{ptr @_debug_dump_config._entry_ptr.88, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @_debug_dump_config._entry.89, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 201, i32 3}
!165 = !{ptr @_debug_dump_config._entry_ptr.90, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @_debug_dump_config._entry.91, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 203, i32 2}
!168 = !{ptr @_debug_dump_config._entry_ptr.92, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 1896, i32 3}
!171 = !{ptr @.str.94, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @mpt3sas_config_update_driver_trigger_pg0._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @mpt3sas_config_update_driver_trigger_pg0._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.96, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/mpt3sas/mpt3sas_config.c", i32 1916, i32 3}
!176 = !{ptr @mpt3sas_config_update_driver_trigger_pg0._entry.95, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @mpt3sas_config_update_driver_trigger_pg0._entry_ptr.97, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
