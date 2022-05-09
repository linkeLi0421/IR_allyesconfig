; ModuleID = '/llk/IR_all_yes/drivers/scsi/mpt3sas/mpt3sas_ctl.c_pt.bc'
source_filename = "../drivers/scsi/mpt3sas/mpt3sas_ctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MPT3SAS_ADAPTER = type { %struct.list_head, ptr, i8, i32, [32 x i8], [24 x i8], [64 x i8], ptr, ptr, i32, i32, i32, i8, i32, i8, [20 x i8], ptr, %struct.delayed_work, [20 x i8], ptr, %struct.spinlock, %struct.list_head, ptr, i8, i32, i8, i16, i8, i8, %struct.mutex, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i16, ptr, i16, ptr, i32, ptr, i32, i8, i32, i32, %struct.atomic64_t, %struct.atomic64_t, i8, i16, i8, i8, i32, i32, i32, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, ptr, ptr, ptr, ptr, i16, i16, ptr, ptr, ptr, [4 x i32], i32, ptr, [4 x i32], i8, i8, i16, i16, i16, i16, i8, %struct.mpt3sas_facts, %struct.mpt3sas_facts, ptr, %struct._MPI2_CONFIG_PAGE_MAN_0, %struct.Mpi2ManufacturingPage10_t, %struct.Mpi2ManufacturingPage11_t, %struct._MPI2_CONFIG_PAGE_BIOS_2, %struct._MPI2_CONFIG_PAGE_BIOS_3, %struct._MPI2_CONFIG_PAGE_IOC_8, %struct._MPI2_CONFIG_PAGE_IO_UNIT_0, %struct._MPI2_CONFIG_PAGE_IO_UNIT_1, %struct._MPI2_CONFIG_PAGE_IO_UNIT_8, %struct._MPI2_CONFIG_PAGE_IOC_1, %struct._boot_device, %struct._boot_device, %struct._boot_device, %struct._sas_node, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i8, i16, i32, i32, ptr, ptr, i16, ptr, i16, i16, ptr, i32, ptr, i16, i16, i16, i16, ptr, i32, i32, ptr, %struct.spinlock, i32, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.list_head, ptr, i32, i16, i16, i16, i32, i16, i16, i16, ptr, i32, i16, ptr, %struct.list_head, i16, ptr, i32, i16, ptr, %struct.list_head, ptr, i32, ptr, i16, ptr, i32, i32, i32, ptr, i16, ptr, i32, ptr, i32, i16, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, %struct.list_head, i8, i8, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, %struct.mutex, [3 x ptr], [3 x i32], [3 x i32], [3 x i8], [3 x i32], [3 x [23 x i32]], [3 x i32], i32, i32, %struct.htb_rel_query, i8, i8, i8, i8, i8, i8, %struct.spinlock, i8, i8, ptr, %struct.SL_WH_MASTER_TRIGGER_T, %struct.SL_WH_EVENT_TRIGGERS_T, %struct.SL_WH_SCSI_TRIGGERS_T, %struct.SL_WH_MPI_TRIGGERS_T, i8, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct._internal_cmd = type { %struct.mutex, %struct.completion, ptr, ptr, i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.htb_rel_query = type { i16, i16, i32, [2 x i32] }
%struct.SL_WH_MASTER_TRIGGER_T = type { i32 }
%struct.SL_WH_EVENT_TRIGGERS_T = type { i32, [20 x %struct.SL_WH_EVENT_TRIGGER_T] }
%struct.SL_WH_EVENT_TRIGGER_T = type { i16, i16 }
%struct.SL_WH_SCSI_TRIGGERS_T = type { i32, [20 x %struct.SL_WH_SCSI_TRIGGER_T] }
%struct.SL_WH_SCSI_TRIGGER_T = type { i8, i8, i8, i8 }
%struct.SL_WH_MPI_TRIGGERS_T = type { i32, [20 x %struct.SL_WH_MPI_TRIGGER_T] }
%struct.SL_WH_MPI_TRIGGER_T = type { i16, i16, i32 }
%struct._MPI2_DEFAULT_REPLY = type { i16, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i32 }
%struct._MPI2_SCSI_IO_REPLY = type { i16, i8, i8, i16, i8, i8, i8, i8, i16, i8, i8, i16, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32 }
%struct._MPI26_NVME_ENCAPSULATED_ERROR_REPLY = type { i16, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16 }
%struct._MPI2_CONFIG_REQUEST = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i8, i8, i16, i32, %struct._MPI2_CONFIG_PAGE_HEADER, i32, %union._MPI2_SGE_IO_UNION }>
%union._MPI2_SGE_IO_UNION = type { %union._MPI2_IEEE_SGE_SIMPLE_UNION }
%union._MPI2_IEEE_SGE_SIMPLE_UNION = type { %struct._MPI2_IEEE_SGE_SIMPLE64 }
%struct._MPI2_IEEE_SGE_SIMPLE64 = type { i64, i32, i16, i8, i8 }
%struct._MPI2_SCSI_IO_REQUEST = type { i16, i8, i8, i16, i8, i8, i8, i8, i16, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i32, i16, i16, [8 x i8], i32, %union._MPI2_SCSI_IO_CDB_UNION, %union._MPI2_SGE_IO_UNION }
%union._MPI2_SCSI_IO_CDB_UNION = type { %struct._MPI2_SCSI_IO_CDB_EEDP32 }
%struct._MPI2_SCSI_IO_CDB_EEDP32 = type { [20 x i8], i32, i16, i16, i32 }
%struct._sas_device = type { %struct.list_head, ptr, i64, i64, i16, i64, i16, i64, i16, i64, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8], %struct.kref, i8, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct._pcie_device = type { %struct.list_head, ptr, i64, i16, i32, i32, i32, i16, i8, i8, i8, i32, i16, i64, i8, [4 x i8], ptr, i8, i8, i16, %struct.kref }
%struct._MPI2_EVENT_NOTIFICATION_REPLY = type { i16, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, i32, [1 x i32] }
%struct.MPT3_IOCTL_EVENTS = type { i32, i32, [192 x i8] }
%struct._MPI2_DIAG_RELEASE_REQUEST = type { i8, i8, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct._MPI2_DIAG_RELEASE_REPLY = type { i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i32 }
%struct.mpt3_diag_register = type { %struct.mpt3_ioctl_header, i8, i8, i16, i32, [23 x i32], i32, i32 }
%struct.mpt3_ioctl_header = type { i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }
%struct._MPI2_DIAG_BUFFER_POST_REQUEST = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i32, i32, i32, [23 x i32] }>
%struct._MPI2_DIAG_BUFFER_POST_REPLY = type { i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i32, i32 }
%struct.DIAG_BUFFER_START = type { i32, i32, i8, [3 x i8], i32, i32, i32 }
%struct._MPI2_CONFIG_PAGE_IO_UNIT_3 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i8, i8, i16, [36 x i16] }
%struct._MPI2_CONFIG_REPLY = type { i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i32, %struct._MPI2_CONFIG_PAGE_HEADER }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.MPT3SAS_TARGET = type { ptr, i64, ptr, i16, i32, i32, i8, i8, ptr, ptr, ptr }
%struct._raid_device = type { %struct.list_head, ptr, ptr, i64, i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i64, i32, i32, [8 x i16] }
%struct.MPT3SAS_DEVICE = type { ptr, i32, i32, i8, i8, i8, i8, i8, i32 }
%struct.mpt3_ioctl_command = type { %struct.mpt3_ioctl_header, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [1 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.mpt3_ioctl_iocinfo = type { %struct.mpt3_ioctl_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8], i8, i8, i16, %struct.mpt3_ioctl_pci_info }
%struct.mpt3_ioctl_pci_info = type { %union.anon.86, i32 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct._MPI2_SGE_SIMPLE64 = type <{ i32, i64 }>
%struct._MPI2_REQUEST_HEADER = type { i16, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct._MPI26_NVME_ENCAPSULATED_REQUEST = type <{ i16, i8, i8, i16, i8, i8, i8, i8, i16, i32, i64, i16, i16, i32, [4 x i8] }>
%struct._MPI2_SCSI_TASK_MANAGE_REQUEST = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, [8 x i8], [7 x i32], i16, i16 }
%struct._MPI2_SMP_PASSTHROUGH_REQUEST = type { i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i32, i64, i32, i32, %union._MPI2_SIMPLE_SGE_UNION }
%union._MPI2_SIMPLE_SGE_UNION = type { %union._MPI2_IEEE_SGE_SIMPLE_UNION }
%struct._MPI2_TOOLBOX_MEM_MOVE_REQUEST = type { i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, %struct._MPI2_SGE_SIMPLE_UNION }
%struct._MPI2_SGE_SIMPLE_UNION = type <{ i32, %union.anon.84 }>
%union.anon.84 = type { i64 }
%struct._MPI2_SCSI_TASK_MANAGE_REPLY = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, i32 }
%struct.mpt3_ioctl_eventquery = type { %struct.mpt3_ioctl_header, i16, i16, [4 x i32] }
%struct.mpt3_ioctl_eventenable = type { %struct.mpt3_ioctl_header, [4 x i32] }
%struct.mpt3_ioctl_eventreport = type { %struct.mpt3_ioctl_header, [1 x %struct.MPT3_IOCTL_EVENTS] }
%struct.mpt3_ioctl_diag_reset = type { %struct.mpt3_ioctl_header }
%struct.mpt3_ioctl_btdh_mapping = type { %struct.mpt3_ioctl_header, i32, i32, i16, i16 }
%struct.mpt3_diag_unregister = type { %struct.mpt3_ioctl_header, i32 }
%struct.mpt3_diag_query = type { %struct.mpt3_ioctl_header, i8, i8, i16, i32, [23 x i32], i32, i32, i32 }
%struct.mpt3_diag_release = type { %struct.mpt3_ioctl_header, i32 }
%struct.mpt3_diag_read_buffer = type { %struct.mpt3_ioctl_header, i8, i8, i16, i32, i32, i32, [1 x i32] }
%struct.mpt3_addnl_diag_query = type { %struct.mpt3_ioctl_header, i32, %struct.htb_rel_query, [2 x i32] }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctl_done\00", [23 x i8] zeroinitializer }, align 32
@ctl_poll_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.99, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @ctl_poll_wait, i64 44), ptr getelementptr (i8, ptr @ctl_poll_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@async_queue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mpt3sas_ctl_pre_reset_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: %s: MPT3_IOC_PRE_RESET\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mpt3sas_ctl_pre_reset_handler\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/mpt3sas/mpt3sas_ctl.c\00", [61 x i8] zeroinitializer }, align 32
@mpt3sas_ctl_pre_reset_handler._entry_ptr = internal global ptr @mpt3sas_ctl_pre_reset_handler._entry, section ".printk_index", align 4
@mpt3sas_ctl_pre_reset_handler._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s: %s: Releasing the trace buffer due to adapter reset.\00", [37 x i8] zeroinitializer }, align 32
@mpt3sas_ctl_pre_reset_handler._entry_ptr.6 = internal global ptr @mpt3sas_ctl_pre_reset_handler._entry.4, section ".printk_index", align 4
@mpt3sas_ctl_clear_outstanding_ioctls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: %s: clear outstanding ioctl cmd\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mpt3sas_ctl_clear_outstanding_ioctls\00", [59 x i8] zeroinitializer }, align 32
@mpt3sas_ctl_clear_outstanding_ioctls._entry_ptr = internal global ptr @mpt3sas_ctl_clear_outstanding_ioctls._entry, section ".printk_index", align 4
@mpt3sas_ctl_reset_done_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: %s: MPT3_IOC_DONE_RESET\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mpt3sas_ctl_reset_done_handler\00", [33 x i8] zeroinitializer }, align 32
@mpt3sas_ctl_reset_done_handler._entry_ptr = internal global ptr @mpt3sas_ctl_reset_done_handler._entry, section ".printk_index", align 4
@mpt3sas_enable_diag_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 1817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: registering trace buffer support\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mpt3sas_enable_diag_buffer\00", [37 x i8] zeroinitializer }, align 32
@mpt3sas_enable_diag_buffer._entry_ptr = internal global ptr @mpt3sas_enable_diag_buffer._entry, section ".printk_index", align 4
@mpt3sas_enable_diag_buffer._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 1837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013%s: Min Trace Buff size (%d KB) greater than Max Trace Buff size (%d KB)\0A\00", [52 x i8] zeroinitializer }, align 32
@mpt3sas_enable_diag_buffer._entry_ptr.15 = internal global ptr @mpt3sas_enable_diag_buffer._entry.13, section ".printk_index", align 4
@mpt3sas_enable_diag_buffer._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 1839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Using zero Min Trace Buff Size\0A\00", [58 x i8] zeroinitializer }, align 32
@mpt3sas_enable_diag_buffer._entry_ptr.18 = internal global ptr @mpt3sas_enable_diag_buffer._entry.16, section ".printk_index", align 4
@mpt3sas_enable_diag_buffer._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.3, i32 1873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s: Cannot allocate trace buffer memory. Last memory tried = %d KB\0A\00", [58 x i8] zeroinitializer }, align 32
@mpt3sas_enable_diag_buffer._entry_ptr.21 = internal global ptr @mpt3sas_enable_diag_buffer._entry.19, section ".printk_index", align 4
@mpt3sas_enable_diag_buffer._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.3, i32 1877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: Trace buffer memory %d KB allocated\0A\00", [53 x i8] zeroinitializer }, align 32
@mpt3sas_enable_diag_buffer._entry_ptr.24 = internal global ptr @mpt3sas_enable_diag_buffer._entry.22, section ".printk_index", align 4
@mpt3sas_enable_diag_buffer._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.3, i32 1886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: registering snapshot buffer support\0A\00", [53 x i8] zeroinitializer }, align 32
@mpt3sas_enable_diag_buffer._entry_ptr.27 = internal global ptr @mpt3sas_enable_diag_buffer._entry.25, section ".printk_index", align 4
@mpt3sas_enable_diag_buffer._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.12, ptr @.str.3, i32 1895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: registering extended buffer support\0A\00", [53 x i8] zeroinitializer }, align 32
@mpt3sas_enable_diag_buffer._entry_ptr.30 = internal global ptr @mpt3sas_enable_diag_buffer._entry.28, section ".printk_index", align 4
@mpt3sas_send_diag_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 2130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\016%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mpt3sas_send_diag_release\00", [38 x i8] zeroinitializer }, align 32
@mpt3sas_send_diag_release._entry_ptr = internal global ptr @mpt3sas_send_diag_release._entry, section ".printk_index", align 4
@mpt3sas_send_diag_release._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 2144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: %s: skipping due to FAULT state\0A\00", [57 x i8] zeroinitializer }, align 32
@mpt3sas_send_diag_release._entry_ptr.35 = internal global ptr @mpt3sas_send_diag_release._entry.33, section ".printk_index", align 4
@mpt3sas_send_diag_release._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.3, i32 2150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: %s: ctl_cmd in use\0A\00", [38 x i8] zeroinitializer }, align 32
@mpt3sas_send_diag_release._entry_ptr.38 = internal global ptr @mpt3sas_send_diag_release._entry.36, section ".printk_index", align 4
@mpt3sas_send_diag_release._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.3, i32 2157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: %s: failed obtaining a smid\0A\00", [61 x i8] zeroinitializer }, align 32
@mpt3sas_send_diag_release._entry_ptr.41 = internal global ptr @mpt3sas_send_diag_release._entry.39, section ".printk_index", align 4
@mpt3sas_send_diag_release._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.3, i32 2180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013%s: In func: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@mpt3sas_send_diag_release._entry_ptr.44 = internal global ptr @mpt3sas_send_diag_release._entry.42, section ".printk_index", align 4
@mpt3sas_send_diag_release._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.32, ptr @.str.3, i32 2188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: %s: no reply message\0A\00", [36 x i8] zeroinitializer }, align 32
@mpt3sas_send_diag_release._entry_ptr.47 = internal global ptr @mpt3sas_send_diag_release._entry.45, section ".printk_index", align 4
@mpt3sas_send_diag_release._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.32, ptr @.str.3, i32 2199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: %s: success\0A\00", [45 x i8] zeroinitializer }, align 32
@mpt3sas_send_diag_release._entry_ptr.50 = internal global ptr @mpt3sas_send_diag_release._entry.48, section ".printk_index", align 4
@mpt3sas_send_diag_release._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.32, ptr @.str.3, i32 2203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: %s: ioc_status(0x%04x) log_info(0x%08x)\0A\00", [49 x i8] zeroinitializer }, align 32
@mpt3sas_send_diag_release._entry_ptr.53 = internal global ptr @mpt3sas_send_diag_release._entry.51, section ".printk_index", align 4
@mpt3sas_host_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mpt3sas_host_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mpt3sas_host_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mpt3sas_host_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mpt3sas_dev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mpt3sas_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mpt3sas_dev_groups = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mpt3sas_dev_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ctl_dev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 222, ptr @.str.224, ptr @ctl_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@mpt3sas_ctl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 4133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s can't register misc device [minor=%d]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mpt3sas_ctl_init\00", [47 x i8] zeroinitializer }, align 32
@mpt3sas_ctl_init._entry_ptr = internal global ptr @mpt3sas_ctl_init._entry, section ".printk_index", align 4
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpt3sas\00", [24 x i8] zeroinitializer }, align 32
@gen2_ctl_dev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 221, ptr @.str.455, ptr @ctl_gen2_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@mpt3sas_ctl_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 4141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mpt3sas_ctl_init._entry_ptr.58 = internal global ptr @mpt3sas_ctl_init._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpt2sas\00", [24 x i8] zeroinitializer }, align 32
@mpt3sas_ctl_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ctl_poll_wait\00", [17 x i8] zeroinitializer }, align 32
@mpt3sas_ioc_list = external dso_local global %struct.list_head, align 4
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"scsi_io, cmd(0x%02x), cdb_len(%d)\00", [62 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"task_mgmt\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ioc_init\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ioc_facts\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"config, type(0x%02x), ext_type(0x%02x), number(%d)\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port_facts\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"port_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"event_notification\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fw_download\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fw_upload\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"raid_action\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"raid_pass, cmd(0x%02x), cdb_len(%d)\00", [60 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sas_iounit_cntl\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sata_pass\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"diag_buffer_post\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"diag_release\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smp_passthrough\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"toolbox\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvme_encapsulated\00", [46 x i8] zeroinitializer }, align 32
@_ctl_display_some_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: %s: %s, smid(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_ctl_display_some_debug\00", [40 x i8] zeroinitializer }, align 32
@_ctl_display_some_debug._entry_ptr = internal global ptr @_ctl_display_some_debug._entry, section ".printk_index", align 4
@_ctl_display_some_debug._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.3, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: \09iocstatus(0x%04x), loginfo(0x%08x)\0A\00", [53 x i8] zeroinitializer }, align 32
@_ctl_display_some_debug._entry_ptr.84 = internal global ptr @_ctl_display_some_debug._entry.82, section ".printk_index", align 4
@_ctl_display_some_debug._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.3, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: \09sas_address(0x%016llx), phy(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@_ctl_display_some_debug._entry_ptr.87 = internal global ptr @_ctl_display_some_debug._entry.85, section ".printk_index", align 4
@_ctl_display_some_debug._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.81, ptr @.str.3, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014%s: \09enclosure_logical_id(0x%016llx), slot(%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@_ctl_display_some_debug._entry_ptr.90 = internal global ptr @_ctl_display_some_debug._entry.88, section ".printk_index", align 4
@_ctl_display_some_debug._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.81, ptr @.str.3, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: \09WWID(0x%016llx), port(%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@_ctl_display_some_debug._entry_ptr.93 = internal global ptr @_ctl_display_some_debug._entry.91, section ".printk_index", align 4
@_ctl_display_some_debug._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.81, ptr @.str.3, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_display_some_debug._entry_ptr.95 = internal global ptr @_ctl_display_some_debug._entry.94, section ".printk_index", align 4
@_ctl_display_some_debug._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.81, ptr @.str.3, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s: \09scsi_state(0x%02x), scsi_status(0x%02x)\0A\00", [48 x i8] zeroinitializer }, align 32
@_ctl_display_some_debug._entry_ptr.98 = internal global ptr @_ctl_display_some_debug._entry.96, section ".printk_index", align 4
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ctl_poll_wait.lock\00", [45 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.100, ptr @.str.3, i32 1564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_ctl_diag_register_2\00", [43 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr = internal global ptr @_ctl_diag_register_2._entry, section ".printk_index", align 4
@_ctl_diag_register_2._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.3, i32 1569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: %s: failed due to ioc not operational\0A\00", [51 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.103 = internal global ptr @_ctl_diag_register_2._entry.101, section ".printk_index", align 4
@_ctl_diag_register_2._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.100, ptr @.str.3, i32 1575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.105 = internal global ptr @_ctl_diag_register_2._entry.104, section ".printk_index", align 4
@_ctl_diag_register_2._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.100, ptr @.str.3, i32 1583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: %s: doesn't have capability for buffer_type(0x%02x)\0A\00", [37 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.108 = internal global ptr @_ctl_diag_register_2._entry.106, section ".printk_index", align 4
@_ctl_diag_register_2._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.100, ptr @.str.3, i32 1590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s: %s: Invalid UID(0x%08x), buffer_type(0x%02x)\0A\00", [44 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.111 = internal global ptr @_ctl_diag_register_2._entry.109, section ".printk_index", align 4
@_ctl_diag_register_2._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.100, ptr @.str.3, i32 1600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013%s: %s: buffer_type(0x%02x) is already registered by application with UID(0x%08x)\0A\00", [43 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.114 = internal global ptr @_ctl_diag_register_2._entry.112, section ".printk_index", align 4
@_ctl_diag_register_2._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.100, ptr @.str.3, i32 1627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016%s: %s: diag_buffer (%d) ownership changed. old-ID(0x%08x), new-ID(0x%08x)\0A\00", [50 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.117 = internal global ptr @_ctl_diag_register_2._entry.115, section ".printk_index", align 4
@_ctl_diag_register_2._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.100, ptr @.str.3, i32 1648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013%s: %s: already has a registered buffer for buffer_type(0x%02x)\0A\00", [61 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.120 = internal global ptr @_ctl_diag_register_2._entry.118, section ".printk_index", align 4
@_ctl_diag_register_2._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.100, ptr @.str.3, i32 1653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.122 = internal global ptr @_ctl_diag_register_2._entry.121, section ".printk_index", align 4
@_ctl_diag_register_2._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.100, ptr @.str.3, i32 1666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [130 x i8], [62 x i8] } { [130 x i8] c"\013%s: %s: already a buffer is allocated for buffer_type(0x%02x) of size %d bytes, so please try registering again with same size\0A\00", [62 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.125 = internal global ptr @_ctl_diag_register_2._entry.123, section ".printk_index", align 4
@_ctl_diag_register_2._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.100, ptr @.str.3, i32 1673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: %s: the requested_buffer_size is not 4 byte aligned\0A\00", [37 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.128 = internal global ptr @_ctl_diag_register_2._entry.126, section ".printk_index", align 4
@_ctl_diag_register_2._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.100, ptr @.str.3, i32 1679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.130 = internal global ptr @_ctl_diag_register_2._entry.129, section ".printk_index", align 4
@_ctl_diag_register_2._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.100, ptr @.str.3, i32 1719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013%s: %s: failed allocating memory for diag buffers, requested size(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.133 = internal global ptr @_ctl_diag_register_2._entry.131, section ".printk_index", align 4
@_ctl_diag_register_2._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.100, ptr @.str.3, i32 1741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: %s: diag_buffer(0x%p), dma(0x%llx), sz(%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.136 = internal global ptr @_ctl_diag_register_2._entry.134, section ".printk_index", align 4
@_ctl_diag_register_2._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.100, ptr @.str.3, i32 1755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.138 = internal global ptr @_ctl_diag_register_2._entry.137, section ".printk_index", align 4
@_ctl_diag_register_2._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.100, ptr @.str.3, i32 1761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.140 = internal global ptr @_ctl_diag_register_2._entry.139, section ".printk_index", align 4
@_ctl_diag_register_2._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.100, ptr @.str.3, i32 1772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.142 = internal global ptr @_ctl_diag_register_2._entry.141, section ".printk_index", align 4
@_ctl_diag_register_2._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.100, ptr @.str.3, i32 1776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_register_2._entry_ptr.144 = internal global ptr @_ctl_diag_register_2._entry.143, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mpt3sas_host_attrs = internal global { [28 x ptr], [48 x i8] } { [28 x ptr] [ptr @dev_attr_version_fw, ptr @dev_attr_version_bios, ptr @dev_attr_version_mpi, ptr @dev_attr_version_product, ptr @dev_attr_version_nvdata_persistent, ptr @dev_attr_version_nvdata_default, ptr @dev_attr_board_name, ptr @dev_attr_board_assembly, ptr @dev_attr_board_tracer, ptr @dev_attr_io_delay, ptr @dev_attr_device_delay, ptr @dev_attr_logging_level, ptr @dev_attr_fwfault_debug, ptr @dev_attr_fw_queue_depth, ptr @dev_attr_host_sas_address, ptr @dev_attr_ioc_reset_count, ptr @dev_attr_host_trace_buffer_size, ptr @dev_attr_host_trace_buffer, ptr @dev_attr_host_trace_buffer_enable, ptr @dev_attr_reply_queue_count, ptr @dev_attr_diag_trigger_master, ptr @dev_attr_diag_trigger_event, ptr @dev_attr_diag_trigger_scsi, ptr @dev_attr_diag_trigger_mpi, ptr @dev_attr_drv_support_bitmap, ptr @dev_attr_BRM_status, ptr @dev_attr_enable_sdev_max_qd, ptr null], [48 x i8] zeroinitializer }, align 32
@dev_attr_version_fw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_fw_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_version_bios = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_bios_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_version_mpi = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.149, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_mpi_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_version_product = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.151, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_product_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_version_nvdata_persistent = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.153, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_nvdata_persistent_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_version_nvdata_default = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.155, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_nvdata_default_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_board_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.156, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @board_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_board_assembly = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.157, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @board_assembly_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_board_tracer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.158, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @board_tracer_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_io_delay = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.159, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @io_delay_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_device_delay = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.161, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_delay_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_logging_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.162, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @logging_level_show, ptr @logging_level_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fwfault_debug = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.166, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fwfault_debug_show, ptr @fwfault_debug_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_queue_depth = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.171, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fw_queue_depth_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_sas_address = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.172, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @host_sas_address_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ioc_reset_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.174, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ioc_reset_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_trace_buffer_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.175, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @host_trace_buffer_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_trace_buffer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.180, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @host_trace_buffer_show, ptr @host_trace_buffer_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_host_trace_buffer_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.184, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @host_trace_buffer_enable_show, ptr @host_trace_buffer_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reply_queue_count = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.199, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @reply_queue_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_diag_trigger_master = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.200, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @diag_trigger_master_show, ptr @diag_trigger_master_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_diag_trigger_event = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.201, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @diag_trigger_event_show, ptr @diag_trigger_event_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_diag_trigger_scsi = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.202, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @diag_trigger_scsi_show, ptr @diag_trigger_scsi_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_diag_trigger_mpi = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.203, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @diag_trigger_mpi_show, ptr @diag_trigger_mpi_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_drv_support_bitmap = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.204, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @drv_support_bitmap_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_BRM_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.206, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @BRM_status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_enable_sdev_max_qd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.218, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enable_sdev_max_qd_show, ptr @enable_sdev_max_qd_store }, [36 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"version_fw\00", [21 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%02d.%02d.%02d.%02d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"version_bios\00", [19 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"version_mpi\00", [20 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%03x.%02x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"version_product\00", [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"version_nvdata_persistent\00", [38 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%08xh\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"version_nvdata_default\00", [41 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"board_name\00", [21 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"board_assembly\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"board_tracer\00", [19 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"io_delay\00", [23 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02d\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device_delay\00", [19 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"logging_level\00", [18 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@logging_level_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.3, i32 3099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: logging_level=%08xh\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"logging_level_store\00", [44 x i8] zeroinitializer }, align 32
@logging_level_store._entry_ptr = internal global ptr @logging_level_store._entry, section ".printk_index", align 4
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fwfault_debug\00", [18 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@fwfault_debug_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.3, i32 3135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: fwfault_debug=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fwfault_debug_store\00", [44 x i8] zeroinitializer }, align 32
@fwfault_debug_store._entry_ptr = internal global ptr @fwfault_debug_store._entry, section ".printk_index", align 4
@.str.171 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fw_queue_depth\00", [17 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"host_sas_address\00", [47 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%016llx\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioc_reset_count\00", [16 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"host_trace_buffer_size\00", [41 x i8] zeroinitializer }, align 32
@host_trace_buffer_size_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.3, i32 3287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: %s: host_trace_buffer is not registered\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"host_trace_buffer_size_show\00", [36 x i8] zeroinitializer }, align 32
@host_trace_buffer_size_show._entry_ptr = internal global ptr @host_trace_buffer_size_show._entry, section ".printk_index", align 4
@host_trace_buffer_size_show._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.3, i32 3294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@host_trace_buffer_size_show._entry_ptr.179 = internal global ptr @host_trace_buffer_size_show._entry.178, section ".printk_index", align 4
@.str.180 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"host_trace_buffer\00", [46 x i8] zeroinitializer }, align 32
@host_trace_buffer_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.181, ptr @.str.3, i32 3334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"host_trace_buffer_show\00", [41 x i8] zeroinitializer }, align 32
@host_trace_buffer_show._entry_ptr = internal global ptr @host_trace_buffer_show._entry, section ".printk_index", align 4
@host_trace_buffer_show._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.181, ptr @.str.3, i32 3341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@host_trace_buffer_show._entry_ptr.183 = internal global ptr @host_trace_buffer_show._entry.182, section ".printk_index", align 4
@.str.184 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"host_trace_buffer_enable\00", [39 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"off\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"release\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"post\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%9s\00", [28 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"post\00", [27 x i8] zeroinitializer }, align 32
@host_trace_buffer_enable_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.191, ptr @.str.3, i32 3429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: posting host trace buffers\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"host_trace_buffer_enable_store\00", [33 x i8] zeroinitializer }, align 32
@host_trace_buffer_enable_store._entry_ptr = internal global ptr @host_trace_buffer_enable_store._entry, section ".printk_index", align 4
@host_trace_buffer_enable_store._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.191, ptr @.str.3, i32 3466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s: Trace buffer %d KB allocated through sysfs\0A\00", [46 x i8] zeroinitializer }, align 32
@host_trace_buffer_enable_store._entry_ptr.194 = internal global ptr @host_trace_buffer_enable_store._entry.192, section ".printk_index", align 4
@.str.195 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"release\00", [24 x i8] zeroinitializer }, align 32
@host_trace_buffer_enable_store._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.191, ptr @.str.3, i32 3482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: releasing host trace buffer\0A\00", [61 x i8] zeroinitializer }, align 32
@host_trace_buffer_enable_store._entry_ptr.198 = internal global ptr @host_trace_buffer_enable_store._entry.196, section ".printk_index", align 4
@.str.199 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reply_queue_count\00", [46 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"diag_trigger_master\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.201 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"diag_trigger_event\00", [45 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"diag_trigger_scsi\00", [46 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"diag_trigger_mpi\00", [47 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drv_support_bitmap\00", [45 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BRM_status\00", [21 x i8] zeroinitializer }, align 32
@BRM_status_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.3, i32 3214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: %s: BRM attribute is only for warpdrive\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BRM_status_show\00", [16 x i8] zeroinitializer }, align 32
@BRM_status_show._entry_ptr = internal global ptr @BRM_status_show._entry, section ".printk_index", align 4
@BRM_status_show._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.208, ptr @.str.3, i32 3228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: %s: failed reading iounit_pg3\0A\00", [59 x i8] zeroinitializer }, align 32
@BRM_status_show._entry_ptr.211 = internal global ptr @BRM_status_show._entry.209, section ".printk_index", align 4
@BRM_status_show._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.208, ptr @.str.3, i32 3236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: %s: iounit_pg3 failed with ioc_status(0x%04x)\0A\00", [43 x i8] zeroinitializer }, align 32
@BRM_status_show._entry_ptr.214 = internal global ptr @BRM_status_show._entry.212, section ".printk_index", align 4
@BRM_status_show._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.208, ptr @.str.3, i32 3243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013%s: %s: iounit_pg3.GPIOCount less than 25 entries, detected (%d) entries\0A\00", [52 x i8] zeroinitializer }, align 32
@BRM_status_show._entry_ptr.217 = internal global ptr @BRM_status_show._entry.215, section ".printk_index", align 4
@.str.218 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enable_sdev_max_qd\00", [45 x i8] zeroinitializer }, align 32
@mpt3sas_dev_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_sas_address, ptr @dev_attr_sas_device_handle, ptr @dev_attr_sas_ncq_prio_supported, ptr @dev_attr_sas_ncq_prio_enable, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_sas_address = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.219, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sas_address_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sas_device_handle = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.220, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sas_device_handle_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sas_ncq_prio_supported = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.222, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sas_ncq_prio_supported_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sas_ncq_prio_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.223, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sas_ncq_prio_enable_show, ptr @sas_ncq_prio_enable_store }, [36 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sas_address\00", [20 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sas_device_handle\00", [46 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sas_ncq_prio_supported\00", [41 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sas_ncq_prio_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpt3ctl\00", [24 x i8] zeroinitializer }, align 32
@ctl_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ctl_poll, ptr @_ctl_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @_ctl_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@gioc_lock = external dso_local global %struct.spinlock, align 4
@_ctl_ioctl_main._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.3, i32 2601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013failure at %s:%d/%s()!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_ctl_ioctl_main\00", [16 x i8] zeroinitializer }, align 32
@_ctl_ioctl_main._entry_ptr = internal global ptr @_ctl_ioctl_main._entry, section ".printk_index", align 4
@_ctl_ioctl_main._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.3, i32 2651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_ioctl_main._entry_ptr.228 = internal global ptr @_ctl_ioctl_main._entry.227, section ".printk_index", align 4
@_ctl_ioctl_main._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.226, ptr @.str.3, i32 2712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: unsupported ioctl opcode(0x%08x)\0A\00", [56 x i8] zeroinitializer }, align 32
@_ctl_ioctl_main._entry_ptr.231 = internal global ptr @_ctl_ioctl_main._entry.229, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.232 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@_ctl_getiocinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.3, i32 1159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: %s: enter\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_ctl_getiocinfo\00", [16 x i8] zeroinitializer }, align 32
@_ctl_getiocinfo._entry_ptr = internal global ptr @_ctl_getiocinfo._entry, section ".printk_index", align 4
@.str.238 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"20.102.00.00\00", [19 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"40.100.00.00\00", [19 x i8] zeroinitializer }, align 32
@_ctl_getiocinfo._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.236, ptr @.str.3, i32 1196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_getiocinfo._entry_ptr.241 = internal global ptr @_ctl_getiocinfo._entry.240, section ".printk_index", align 4
@_ctl_do_mpt_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.242, ptr @.str.3, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_ctl_do_mpt_command\00", [44 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr = internal global ptr @_ctl_do_mpt_command._entry, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.242, ptr @.str.3, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: %s: failed obtaining a memory for mpi_request\0A\00", [43 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.245 = internal global ptr @_ctl_do_mpt_command._entry.243, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.242, ptr @.str.3, i32 712, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.247 = internal global ptr @_ctl_do_mpt_command._entry.246, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.242, ptr @.str.3, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.249 = internal global ptr @_ctl_do_mpt_command._entry.248, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.242, ptr @.str.3, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.251 = internal global ptr @_ctl_do_mpt_command._entry.250, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.242, ptr @.str.3, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.253 = internal global ptr @_ctl_do_mpt_command._entry.252, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.242, ptr @.str.3, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.255 = internal global ptr @_ctl_do_mpt_command._entry.254, section ".printk_index", align 4
@.str.256 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ctl_request\00", [20 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.242, ptr @.str.3, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s: HBA doesn't support NVMe. Rejecting NVMe Encapsulated request.\0A\00", [58 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.259 = internal global ptr @_ctl_do_mpt_command._entry.257, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.242, ptr @.str.3, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s: handle(0x%04x): ioctl failed due to device removal in progress\0A\00", [58 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.262 = internal global ptr @_ctl_do_mpt_command._entry.260, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.242, ptr @.str.3, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016%s: handle(0x%04x) :ioctl failed due to device removal in progress\0A\00", [58 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.265 = internal global ptr @_ctl_do_mpt_command._entry.263, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.242, ptr @.str.3, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: TASK_MGMT: handle(0x%04x), task_type(0x%02x)\0A\00", [44 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.268 = internal global ptr @_ctl_do_mpt_command._entry.266, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.242, ptr @.str.3, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.270 = internal global ptr @_ctl_do_mpt_command._entry.269, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.242, ptr @.str.3, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.272 = internal global ptr @_ctl_do_mpt_command._entry.271, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.242, ptr @.str.3, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.274 = internal global ptr @_ctl_do_mpt_command._entry.273, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.242, ptr @.str.3, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: Mpi2ToolboxMemMoveRequest_t request msg\0A\00", [49 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.277 = internal global ptr @_ctl_do_mpt_command._entry.275, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.242, ptr @.str.3, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.279 = internal global ptr @_ctl_do_mpt_command._entry.278, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.242, ptr @.str.3, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\016%s: TASK_MGMT: IOCStatus(0x%04x), IOCLogInfo(0x%08x), TerminationCount(0x%08x)\0A\00", [46 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.282 = internal global ptr @_ctl_do_mpt_command._entry.280, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.242, ptr @.str.3, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.284 = internal global ptr @_ctl_do_mpt_command._entry.283, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.242, ptr @.str.3, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.286 = internal global ptr @_ctl_do_mpt_command._entry.285, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.242, ptr @.str.3, i32 1083, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\016%s: Response buffer provided by application is NULL; Response data will not be returned\0A\00", [37 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.289 = internal global ptr @_ctl_do_mpt_command._entry.287, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.242, ptr @.str.3, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.291 = internal global ptr @_ctl_do_mpt_command._entry.290, section ".printk_index", align 4
@_ctl_do_mpt_command._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.242, ptr @.str.3, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: issue target reset: handle = (0x%04x)\0A\00", [51 x i8] zeroinitializer }, align 32
@_ctl_do_mpt_command._entry_ptr.294 = internal global ptr @_ctl_do_mpt_command._entry.292, section ".printk_index", align 4
@_debug_dump_mf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.295, ptr @.str.296, ptr @.str.297, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\016mf:\0A\09\00", [24 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_debug_dump_mf\00", [17 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/scsi/mpt3sas/mpt3sas_debug.h\00", [59 x i8] zeroinitializer }, align 32
@_debug_dump_mf._entry_ptr = internal global ptr @_debug_dump_mf._entry, section ".printk_index", align 4
@_debug_dump_mf._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.296, ptr @.str.297, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016\0A\09\00", [27 x i8] zeroinitializer }, align 32
@_debug_dump_mf._entry_ptr.300 = internal global ptr @_debug_dump_mf._entry.298, section ".printk_index", align 4
@_debug_dump_mf._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.296, ptr @.str.297, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\016%08x \00", [24 x i8] zeroinitializer }, align 32
@_debug_dump_mf._entry_ptr.303 = internal global ptr @_debug_dump_mf._entry.301, section ".printk_index", align 4
@_debug_dump_mf._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.305, ptr @.str.296, ptr @.str.297, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\016\0A\00", [28 x i8] zeroinitializer }, align 32
@_debug_dump_mf._entry_ptr.306 = internal global ptr @_debug_dump_mf._entry.304, section ".printk_index", align 4
@.str.307 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"abort_task\00", [21 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"query_task\00", [21 x i8] zeroinitializer }, align 32
@_ctl_set_task_mid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.310, ptr @.str.3, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: %s: handle(0x%04x), lun(%d), no active mid!!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_ctl_set_task_mid\00", [46 x i8] zeroinitializer }, align 32
@_ctl_set_task_mid._entry_ptr = internal global ptr @_ctl_set_task_mid._entry, section ".printk_index", align 4
@_ctl_set_task_mid._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.310, ptr @.str.3, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_set_task_mid._entry_ptr.312 = internal global ptr @_ctl_set_task_mid._entry.311, section ".printk_index", align 4
@_ctl_set_task_mid._entry.313 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.310, ptr @.str.3, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: %s: handle(0x%04x), lun(%d), task_mid(%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@_ctl_set_task_mid._entry_ptr.315 = internal global ptr @_ctl_set_task_mid._entry.313, section ".printk_index", align 4
@_ctl_eventquery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.316, ptr @.str.3, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_ctl_eventquery\00", [16 x i8] zeroinitializer }, align 32
@_ctl_eventquery._entry_ptr = internal global ptr @_ctl_eventquery._entry, section ".printk_index", align 4
@_ctl_eventquery._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.316, ptr @.str.3, i32 1219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_eventquery._entry_ptr.318 = internal global ptr @_ctl_eventquery._entry.317, section ".printk_index", align 4
@_ctl_eventquery._entry.319 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.316, ptr @.str.3, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_eventquery._entry_ptr.320 = internal global ptr @_ctl_eventquery._entry.319, section ".printk_index", align 4
@_ctl_eventenable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.321, ptr @.str.3, i32 1245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_ctl_eventenable\00", [47 x i8] zeroinitializer }, align 32
@_ctl_eventenable._entry_ptr = internal global ptr @_ctl_eventenable._entry, section ".printk_index", align 4
@_ctl_eventenable._entry.322 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.321, ptr @.str.3, i32 1250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_eventenable._entry_ptr.323 = internal global ptr @_ctl_eventenable._entry.322, section ".printk_index", align 4
@_ctl_eventenable._entry.324 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.321, ptr @.str.3, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_eventenable._entry_ptr.325 = internal global ptr @_ctl_eventenable._entry.324, section ".printk_index", align 4
@_ctl_eventreport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.326, ptr @.str.3, i32 1285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_ctl_eventreport\00", [47 x i8] zeroinitializer }, align 32
@_ctl_eventreport._entry_ptr = internal global ptr @_ctl_eventreport._entry, section ".printk_index", align 4
@_ctl_eventreport._entry.327 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.326, ptr @.str.3, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_eventreport._entry_ptr.328 = internal global ptr @_ctl_eventreport._entry.327, section ".printk_index", align 4
@_ctl_eventreport._entry.329 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.326, ptr @.str.3, i32 1306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_eventreport._entry_ptr.330 = internal global ptr @_ctl_eventreport._entry.329, section ".printk_index", align 4
@_ctl_do_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.331, ptr @.str.3, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"_ctl_do_reset\00", [18 x i8] zeroinitializer }, align 32
@_ctl_do_reset._entry_ptr = internal global ptr @_ctl_do_reset._entry, section ".printk_index", align 4
@_ctl_do_reset._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.331, ptr @.str.3, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_do_reset._entry_ptr.333 = internal global ptr @_ctl_do_reset._entry.332, section ".printk_index", align 4
@_ctl_do_reset._entry.334 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.335, ptr @.str.331, ptr @.str.3, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Ioctl: host reset: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@_ctl_do_reset._entry_ptr.336 = internal global ptr @_ctl_do_reset._entry.334, section ".printk_index", align 4
@.str.337 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUCCESS\00", [24 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FAILED\00", [25 x i8] zeroinitializer }, align 32
@_ctl_btdh_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.339, ptr @.str.3, i32 1467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_ctl_btdh_mapping\00", [46 x i8] zeroinitializer }, align 32
@_ctl_btdh_mapping._entry_ptr = internal global ptr @_ctl_btdh_mapping._entry, section ".printk_index", align 4
@_ctl_btdh_mapping._entry.340 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.339, ptr @.str.3, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_btdh_mapping._entry_ptr.341 = internal global ptr @_ctl_btdh_mapping._entry.340, section ".printk_index", align 4
@_ctl_btdh_mapping._entry.342 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.339, ptr @.str.3, i32 1482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_btdh_mapping._entry_ptr.343 = internal global ptr @_ctl_btdh_mapping._entry.342, section ".printk_index", align 4
@_ctl_diag_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.344, ptr @.str.3, i32 1920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_ctl_diag_register\00", [45 x i8] zeroinitializer }, align 32
@_ctl_diag_register._entry_ptr = internal global ptr @_ctl_diag_register._entry, section ".printk_index", align 4
@_ctl_diag_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.345, ptr @.str.3, i32 1953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_ctl_diag_unregister\00", [43 x i8] zeroinitializer }, align 32
@_ctl_diag_unregister._entry_ptr = internal global ptr @_ctl_diag_unregister._entry, section ".printk_index", align 4
@_ctl_diag_unregister._entry.346 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.345, ptr @.str.3, i32 1958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_unregister._entry_ptr.347 = internal global ptr @_ctl_diag_unregister._entry.346, section ".printk_index", align 4
@_ctl_diag_unregister._entry.348 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.349, ptr @.str.345, ptr @.str.3, i32 1963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: %s: buffer with unique_id(0x%08x) not found\0A\00", [45 x i8] zeroinitializer }, align 32
@_ctl_diag_unregister._entry_ptr.350 = internal global ptr @_ctl_diag_unregister._entry.348, section ".printk_index", align 4
@_ctl_diag_unregister._entry.351 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.345, ptr @.str.3, i32 1969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_unregister._entry_ptr.352 = internal global ptr @_ctl_diag_unregister._entry.351, section ".printk_index", align 4
@_ctl_diag_unregister._entry.353 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.345, ptr @.str.3, i32 1976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: %s: buffer_type(0x%02x) is not registered\0A\00", [47 x i8] zeroinitializer }, align 32
@_ctl_diag_unregister._entry_ptr.355 = internal global ptr @_ctl_diag_unregister._entry.353, section ".printk_index", align 4
@_ctl_diag_unregister._entry.356 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.357, ptr @.str.345, ptr @.str.3, i32 1982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: %s: buffer_type(0x%02x) has not been released\0A\00", [43 x i8] zeroinitializer }, align 32
@_ctl_diag_unregister._entry_ptr.358 = internal global ptr @_ctl_diag_unregister._entry.356, section ".printk_index", align 4
@_ctl_diag_unregister._entry.359 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.360, ptr @.str.345, ptr @.str.3, i32 1988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: %s: unique_id(0x%08x) is not registered\0A\00", [49 x i8] zeroinitializer }, align 32
@_ctl_diag_unregister._entry_ptr.361 = internal global ptr @_ctl_diag_unregister._entry.359, section ".printk_index", align 4
@_ctl_diag_unregister._entry.362 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @.str.345, ptr @.str.3, i32 1995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s: %s: doesn't have memory allocated for buffer_type(0x%02x)\0A\00", [63 x i8] zeroinitializer }, align 32
@_ctl_diag_unregister._entry_ptr.364 = internal global ptr @_ctl_diag_unregister._entry.362, section ".printk_index", align 4
@_ctl_diag_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.365, ptr @.str.3, i32 2036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_ctl_diag_query\00", [16 x i8] zeroinitializer }, align 32
@_ctl_diag_query._entry_ptr = internal global ptr @_ctl_diag_query._entry, section ".printk_index", align 4
@_ctl_diag_query._entry.366 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.365, ptr @.str.3, i32 2041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_query._entry_ptr.367 = internal global ptr @_ctl_diag_query._entry.366, section ".printk_index", align 4
@_ctl_diag_query._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.365, ptr @.str.3, i32 2048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_query._entry_ptr.369 = internal global ptr @_ctl_diag_query._entry.368, section ".printk_index", align 4
@_ctl_diag_query._entry.370 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.365, ptr @.str.3, i32 2057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_query._entry_ptr.371 = internal global ptr @_ctl_diag_query._entry.370, section ".printk_index", align 4
@_ctl_diag_query._entry.372 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.360, ptr @.str.365, ptr @.str.3, i32 2065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_query._entry_ptr.373 = internal global ptr @_ctl_diag_query._entry.372, section ".printk_index", align 4
@_ctl_diag_query._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.375, ptr @.str.365, ptr @.str.3, i32 2073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: %s: doesn't have buffer for buffer_type(0x%02x)\0A\00", [41 x i8] zeroinitializer }, align 32
@_ctl_diag_query._entry_ptr.376 = internal global ptr @_ctl_diag_query._entry.374, section ".printk_index", align 4
@_ctl_diag_query._entry.377 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.365, ptr @.str.3, i32 2104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: %s: unable to write mpt3_diag_query data @ %p\0A\00", [43 x i8] zeroinitializer }, align 32
@_ctl_diag_query._entry_ptr.379 = internal global ptr @_ctl_diag_query._entry.377, section ".printk_index", align 4
@_ctl_diag_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.380, ptr @.str.3, i32 2232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_ctl_diag_release\00", [46 x i8] zeroinitializer }, align 32
@_ctl_diag_release._entry_ptr = internal global ptr @_ctl_diag_release._entry, section ".printk_index", align 4
@_ctl_diag_release._entry.381 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.380, ptr @.str.3, i32 2237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_release._entry_ptr.382 = internal global ptr @_ctl_diag_release._entry.381, section ".printk_index", align 4
@_ctl_diag_release._entry.383 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.349, ptr @.str.380, ptr @.str.3, i32 2242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_release._entry_ptr.384 = internal global ptr @_ctl_diag_release._entry.383, section ".printk_index", align 4
@_ctl_diag_release._entry.385 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.380, ptr @.str.3, i32 2248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_release._entry_ptr.386 = internal global ptr @_ctl_diag_release._entry.385, section ".printk_index", align 4
@_ctl_diag_release._entry.387 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.380, ptr @.str.3, i32 2255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_release._entry_ptr.388 = internal global ptr @_ctl_diag_release._entry.387, section ".printk_index", align 4
@_ctl_diag_release._entry.389 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.360, ptr @.str.380, ptr @.str.3, i32 2261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_release._entry_ptr.390 = internal global ptr @_ctl_diag_release._entry.389, section ".printk_index", align 4
@_ctl_diag_release._entry.391 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.392, ptr @.str.380, ptr @.str.3, i32 2268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: %s: buffer_type(0x%02x) is already released\0A\00", [45 x i8] zeroinitializer }, align 32
@_ctl_diag_release._entry_ptr.393 = internal global ptr @_ctl_diag_release._entry.391, section ".printk_index", align 4
@_ctl_diag_release._entry.394 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @.str.380, ptr @.str.3, i32 2276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_release._entry_ptr.395 = internal global ptr @_ctl_diag_release._entry.394, section ".printk_index", align 4
@_ctl_diag_release._entry.396 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.397, ptr @.str.380, ptr @.str.3, i32 2288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013%s: %s: buffer_type(0x%02x) was released due to host reset\0A\00", [34 x i8] zeroinitializer }, align 32
@_ctl_diag_release._entry_ptr.398 = internal global ptr @_ctl_diag_release._entry.396, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.399, ptr @.str.3, i32 2322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_ctl_diag_read_buffer\00", [42 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr = internal global ptr @_ctl_diag_read_buffer._entry, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.400 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.399, ptr @.str.3, i32 2327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.401 = internal global ptr @_ctl_diag_read_buffer._entry.400, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.402 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.349, ptr @.str.399, ptr @.str.3, i32 2332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.403 = internal global ptr @_ctl_diag_read_buffer._entry.402, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.404 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.399, ptr @.str.3, i32 2338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.405 = internal global ptr @_ctl_diag_read_buffer._entry.404, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.406 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.360, ptr @.str.399, ptr @.str.3, i32 2344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.407 = internal global ptr @_ctl_diag_read_buffer._entry.406, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.408 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.375, ptr @.str.399, ptr @.str.3, i32 2351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.409 = internal global ptr @_ctl_diag_read_buffer._entry.408, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.410 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.411, ptr @.str.399, ptr @.str.3, i32 2359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013%s: %s: either the starting_offset or bytes_to_read are not 4 byte aligned\0A\00", [50 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.412 = internal global ptr @_ctl_diag_read_buffer._entry.410, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.413 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.414, ptr @.str.399, ptr @.str.3, i32 2370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: %s: diag_buffer(%p), offset(%d), sz(%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.415 = internal global ptr @_ctl_diag_read_buffer._entry.413, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.416 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.417, ptr @.str.399, ptr @.str.3, i32 2382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s: %s: Unable to write mpt_diag_read_buffer_t data @ %p\0A\00", [36 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.418 = internal global ptr @_ctl_diag_read_buffer._entry.416, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.419 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.420, ptr @.str.399, ptr @.str.3, i32 2391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: %s: Reregister buffer_type(0x%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.421 = internal global ptr @_ctl_diag_read_buffer._entry.419, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.422 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.423, ptr @.str.399, ptr @.str.3, i32 2396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: %s: buffer_type(0x%02x) is still registered\0A\00", [45 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.424 = internal global ptr @_ctl_diag_read_buffer._entry.422, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.425 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.399, ptr @.str.3, i32 2403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.426 = internal global ptr @_ctl_diag_read_buffer._entry.425, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.427 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.399, ptr @.str.3, i32 2410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.428 = internal global ptr @_ctl_diag_read_buffer._entry.427, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.429 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.399, ptr @.str.3, i32 2441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.430 = internal global ptr @_ctl_diag_read_buffer._entry.429, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.431 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.399, ptr @.str.3, i32 2447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.432 = internal global ptr @_ctl_diag_read_buffer._entry.431, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.433 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.399, ptr @.str.3, i32 2460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.434 = internal global ptr @_ctl_diag_read_buffer._entry.433, section ".printk_index", align 4
@_ctl_diag_read_buffer._entry.435 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.399, ptr @.str.3, i32 2464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_diag_read_buffer._entry_ptr.436 = internal global ptr @_ctl_diag_read_buffer._entry.435, section ".printk_index", align 4
@_ctl_addnl_diag_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.437, ptr @.str.438, ptr @.str.3, i32 2495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.437 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: failure at %s:%d/%s()!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.438 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_ctl_addnl_diag_query\00", [42 x i8] zeroinitializer }, align 32
@_ctl_addnl_diag_query._entry_ptr = internal global ptr @_ctl_addnl_diag_query._entry, section ".printk_index", align 4
@_ctl_addnl_diag_query._entry.439 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.438, ptr @.str.3, i32 2498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_addnl_diag_query._entry_ptr.440 = internal global ptr @_ctl_addnl_diag_query._entry.439, section ".printk_index", align 4
@_ctl_addnl_diag_query._entry.441 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.442, ptr @.str.438, ptr @.str.3, i32 2501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: %s: unique_id is(0x%08x)\0A\00", [32 x i8] zeroinitializer }, align 32
@_ctl_addnl_diag_query._entry_ptr.443 = internal global ptr @_ctl_addnl_diag_query._entry.441, section ".printk_index", align 4
@_ctl_addnl_diag_query._entry.444 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.349, ptr @.str.438, ptr @.str.3, i32 2507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_ctl_addnl_diag_query._entry_ptr.445 = internal global ptr @_ctl_addnl_diag_query._entry.444, section ".printk_index", align 4
@_ctl_addnl_diag_query._entry.446 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.447, ptr @.str.438, ptr @.str.3, i32 2514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.447 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: %s: buffer_type(0x%02x) is not registered\0A\00", [47 x i8] zeroinitializer }, align 32
@_ctl_addnl_diag_query._entry_ptr.448 = internal global ptr @_ctl_addnl_diag_query._entry.446, section ".printk_index", align 4
@_ctl_addnl_diag_query._entry.449 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.450, ptr @.str.438, ptr @.str.3, i32 2520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.450 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: %s: buffer_type(0x%02x) is not released\0A\00", [49 x i8] zeroinitializer }, align 32
@_ctl_addnl_diag_query._entry_ptr.451 = internal global ptr @_ctl_addnl_diag_query._entry.449, section ".printk_index", align 4
@_ctl_addnl_diag_query._entry.452 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.453, ptr @.str.438, ptr @.str.3, i32 2527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.453 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: %s: unable to write mpt3_addnl_diag_query data @ %p\0A\00", [37 x i8] zeroinitializer }, align 32
@_ctl_addnl_diag_query._entry_ptr.454 = internal global ptr @_ctl_addnl_diag_query._entry.452, section ".printk_index", align 4
@.str.455 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpt2ctl\00", [24 x i8] zeroinitializer }, align 32
@ctl_gen2_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ctl_poll, ptr @_ctl_mpt2_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @_ctl_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 22]
@__sancov_gen_cov_switch_values.456 = internal global [21 x i64] [i64 19, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 9, i64 18, i64 21, i64 22, i64 23, i64 26, i64 27, i64 28, i64 29, i64 30, i64 51]
@__sancov_gen_cov_switch_values.457 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 22]
@__sancov_gen_cov_switch_values.458 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 257]
@__sancov_gen_cov_switch_values.459 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.460 = internal global [15 x i64] [i64 13, i64 32, i64 3222031384, i64 3222293531, i64 3222293532, i64 3222817823, i64 3223079958, i64 3223342101, i64 3223342110, i64 3223866400, i64 3224914964, i64 3227274257, i64 3229109274, i64 3229371421, i64 3235138583]
@__sancov_gen_cov_switch_values.461 = internal global [5 x i64] [i64 3, i64 16, i64 512, i64 517, i64 518]
@__sancov_gen_cov_switch_values.462 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 22, i64 28, i64 51]
@__sancov_gen_cov_switch_values.463 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 9, i64 18, i64 22, i64 23, i64 26, i64 27, i64 28, i64 51]
@__sancov_gen_cov_switch_values.464 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 7]
@__sancov_gen_cov_switch_values.465 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 6, i64 8]
@__sancov_gen_cov_switch_values.466 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 26, i64 27]
@__sancov_gen_cov_switch_values.467 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 22, i64 51]
@__sancov_gen_cov_switch_values.468 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 22, i64 28]
@__sancov_gen_cov_switch_values.469 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 7]
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 304, i32 37 }
@___asan_gen_.473 = private unnamed_addr constant [14 x i8] c"ctl_poll_wait\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [12 x i8] c"async_queue\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 64, i32 30 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 467, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 479, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 496, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 515, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1817, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1834, i32 5 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1838, i32 5 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1871, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1876, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1886, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1895, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2129, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2142, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2150, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2157, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2178, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2188, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2199, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2201, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant [24 x i8] c"mpt3sas_host_attr_group\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3955, i32 37 }
@___asan_gen_.614 = private unnamed_addr constant [20 x i8] c"mpt3sas_host_groups\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3959, i32 31 }
@___asan_gen_.617 = private unnamed_addr constant [23 x i8] c"mpt3sas_dev_attr_group\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4075, i32 37 }
@___asan_gen_.620 = private unnamed_addr constant [19 x i8] c"mpt3sas_dev_groups\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4079, i32 31 }
@___asan_gen_.623 = private unnamed_addr constant [8 x i8] c"ctl_dev\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4106, i32 26 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4132, i32 4 }
@___asan_gen_.638 = private unnamed_addr constant [13 x i8] c"gen2_ctl_dev\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4112, i32 26 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4140, i32 4 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4143, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 110, i32 7 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 117, i32 10 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 120, i32 10 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 123, i32 10 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 131, i32 7 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 139, i32 10 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 142, i32 10 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 145, i32 10 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 148, i32 10 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 151, i32 10 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 154, i32 10 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 162, i32 7 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 169, i32 10 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 172, i32 10 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 175, i32 10 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 178, i32 10 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 181, i32 10 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 184, i32 10 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 187, i32 10 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 194, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 200, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 215, i32 4 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 218, i32 4 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 227, i32 5 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 231, i32 6 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 238, i32 4 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 65, i32 8 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1563, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1568, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1575, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1582, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1588, i32 3 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1598, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1623, i32 5 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1646, i32 5 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1652, i32 4 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1663, i32 4 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1672, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1679, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1718, i32 4 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1737, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1753, i32 3 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1761, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1772, i32 3 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1774, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.846 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.846, i32 87, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant [19 x i8] c"mpt3sas_host_attrs\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3924, i32 26 }
@___asan_gen_.851 = private unnamed_addr constant [20 x i8] c"dev_attr_version_fw\00", align 1
@___asan_gen_.854 = private unnamed_addr constant [22 x i8] c"dev_attr_version_bios\00", align 1
@___asan_gen_.857 = private unnamed_addr constant [21 x i8] c"dev_attr_version_mpi\00", align 1
@___asan_gen_.860 = private unnamed_addr constant [25 x i8] c"dev_attr_version_product\00", align 1
@___asan_gen_.863 = private unnamed_addr constant [35 x i8] c"dev_attr_version_nvdata_persistent\00", align 1
@___asan_gen_.866 = private unnamed_addr constant [32 x i8] c"dev_attr_version_nvdata_default\00", align 1
@___asan_gen_.869 = private unnamed_addr constant [20 x i8] c"dev_attr_board_name\00", align 1
@___asan_gen_.872 = private unnamed_addr constant [24 x i8] c"dev_attr_board_assembly\00", align 1
@___asan_gen_.875 = private unnamed_addr constant [22 x i8] c"dev_attr_board_tracer\00", align 1
@___asan_gen_.878 = private unnamed_addr constant [18 x i8] c"dev_attr_io_delay\00", align 1
@___asan_gen_.881 = private unnamed_addr constant [22 x i8] c"dev_attr_device_delay\00", align 1
@___asan_gen_.884 = private unnamed_addr constant [23 x i8] c"dev_attr_logging_level\00", align 1
@___asan_gen_.887 = private unnamed_addr constant [23 x i8] c"dev_attr_fwfault_debug\00", align 1
@___asan_gen_.890 = private unnamed_addr constant [24 x i8] c"dev_attr_fw_queue_depth\00", align 1
@___asan_gen_.893 = private unnamed_addr constant [26 x i8] c"dev_attr_host_sas_address\00", align 1
@___asan_gen_.896 = private unnamed_addr constant [25 x i8] c"dev_attr_ioc_reset_count\00", align 1
@___asan_gen_.899 = private unnamed_addr constant [32 x i8] c"dev_attr_host_trace_buffer_size\00", align 1
@___asan_gen_.902 = private unnamed_addr constant [27 x i8] c"dev_attr_host_trace_buffer\00", align 1
@___asan_gen_.905 = private unnamed_addr constant [34 x i8] c"dev_attr_host_trace_buffer_enable\00", align 1
@___asan_gen_.908 = private unnamed_addr constant [27 x i8] c"dev_attr_reply_queue_count\00", align 1
@___asan_gen_.911 = private unnamed_addr constant [29 x i8] c"dev_attr_diag_trigger_master\00", align 1
@___asan_gen_.914 = private unnamed_addr constant [28 x i8] c"dev_attr_diag_trigger_event\00", align 1
@___asan_gen_.917 = private unnamed_addr constant [27 x i8] c"dev_attr_diag_trigger_scsi\00", align 1
@___asan_gen_.920 = private unnamed_addr constant [26 x i8] c"dev_attr_diag_trigger_mpi\00", align 1
@___asan_gen_.923 = private unnamed_addr constant [28 x i8] c"dev_attr_drv_support_bitmap\00", align 1
@___asan_gen_.926 = private unnamed_addr constant [20 x i8] c"dev_attr_BRM_status\00", align 1
@___asan_gen_.929 = private unnamed_addr constant [28 x i8] c"dev_attr_enable_sdev_max_qd\00", align 1
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2818, i32 8 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2812, i32 34 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2843, i32 8 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2863, i32 8 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2860, i32 34 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2882, i32 8 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2880, i32 27 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2902, i32 8 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2899, i32 34 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2922, i32 8 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2941, i32 8 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2960, i32 8 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2979, i32 8 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3001, i32 8 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2999, i32 34 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3023, i32 8 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3102, i32 8 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3094, i32 18 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3098, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3138, i32 8 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3120, i32 34 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3130, i32 18 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3134, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3044, i32 8 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3067, i32 8 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3064, i32 34 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3159, i32 8 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3309, i32 8 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3286, i32 3 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3293, i32 3 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3369, i32 8 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3333, i32 3 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3340, i32 3 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3491, i32 8 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3394, i32 35 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3397, i32 35 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3399, i32 35 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3417, i32 18 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3420, i32 19 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3429, i32 3 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3464, i32 4 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3472, i32 26 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3482, i32 3 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3187, i32 8 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3569, i32 8 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3645, i32 8 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3719, i32 8 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3794, i32 8 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3817, i32 8 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3815, i32 34 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3256, i32 8 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3213, i32 3 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3227, i32 3 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3235, i32 3 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3242, i32 3 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3922, i32 8 }
@___asan_gen_.1148 = private unnamed_addr constant [18 x i8] c"mpt3sas_dev_attrs\00", align 1
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4067, i32 26 }
@___asan_gen_.1151 = private unnamed_addr constant [21 x i8] c"dev_attr_sas_address\00", align 1
@___asan_gen_.1154 = private unnamed_addr constant [27 x i8] c"dev_attr_sas_device_handle\00", align 1
@___asan_gen_.1157 = private unnamed_addr constant [32 x i8] c"dev_attr_sas_ncq_prio_supported\00", align 1
@___asan_gen_.1160 = private unnamed_addr constant [29 x i8] c"dev_attr_sas_ncq_prio_enable\00", align 1
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 3986, i32 8 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4008, i32 8 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4005, i32 34 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4026, i32 8 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4065, i32 8 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4108, i32 12 }
@___asan_gen_.1181 = private unnamed_addr constant [9 x i8] c"ctl_fops\00", align 1
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4085, i32 37 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2600, i32 3 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2650, i32 4 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2710, i32 3 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1206, i32 230, i32 6 }
@___asan_gen_.1206 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1206, i32 214, i32 2 }
@___asan_gen_.1209 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1209, i32 156, i32 2 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1158, i32 2 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1181, i32 31 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1189, i32 31 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1195, i32 3 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 685, i32 3 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 696, i32 3 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 711, i32 3 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 720, i32 4 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 759, i32 4 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 767, i32 4 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 779, i32 4 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 790, i32 37 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 798, i32 4 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 829, i32 4 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 849, i32 4 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 869, i32 3 }
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 887, i32 4 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 916, i32 5 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 937, i32 4 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 985, i32 5 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1035, i32 3 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1048, i32 3 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1058, i32 4 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1070, i32 4 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1083, i32 4 }
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1092, i32 4 }
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1106, i32 4 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1356, i32 159, i32 2 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1356, i32 162, i32 4 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1356, i32 163, i32 3 }
@___asan_gen_.1356 = private unnamed_addr constant [40 x i8] c"../drivers/scsi/mpt3sas/mpt3sas_debug.h\00", align 1
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1356, i32 165, i32 2 }
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 592, i32 10 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 594, i32 10 }
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 628, i32 3 }
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 642, i32 4 }
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 647, i32 2 }
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1213, i32 3 }
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1218, i32 2 }
@___asan_gen_.1393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1226, i32 3 }
@___asan_gen_.1399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1244, i32 3 }
@___asan_gen_.1402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1249, i32 2 }
@___asan_gen_.1405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1264, i32 3 }
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1284, i32 3 }
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1289, i32 2 }
@___asan_gen_.1417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1305, i32 3 }
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1327, i32 3 }
@___asan_gen_.1426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1336, i32 2 }
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1341, i32 2 }
@___asan_gen_.1444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1466, i32 3 }
@___asan_gen_.1447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1471, i32 2 }
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1481, i32 3 }
@___asan_gen_.1456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1919, i32 3 }
@___asan_gen_.1462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1952, i32 3 }
@___asan_gen_.1465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1957, i32 2 }
@___asan_gen_.1471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1962, i32 3 }
@___asan_gen_.1474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1968, i32 3 }
@___asan_gen_.1480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1975, i32 3 }
@___asan_gen_.1486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1981, i32 3 }
@___asan_gen_.1492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1987, i32 3 }
@___asan_gen_.1498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 1994, i32 3 }
@___asan_gen_.1504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2035, i32 3 }
@___asan_gen_.1507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2040, i32 2 }
@___asan_gen_.1510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2047, i32 3 }
@___asan_gen_.1513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2056, i32 4 }
@___asan_gen_.1516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2064, i32 4 }
@___asan_gen_.1522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2072, i32 3 }
@___asan_gen_.1528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2103, i32 3 }
@___asan_gen_.1534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2231, i32 3 }
@___asan_gen_.1537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2236, i32 2 }
@___asan_gen_.1540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2241, i32 3 }
@___asan_gen_.1543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2247, i32 3 }
@___asan_gen_.1546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2254, i32 3 }
@___asan_gen_.1549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2260, i32 3 }
@___asan_gen_.1555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2267, i32 3 }
@___asan_gen_.1558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2275, i32 3 }
@___asan_gen_.1564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2287, i32 3 }
@___asan_gen_.1570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2321, i32 3 }
@___asan_gen_.1573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2326, i32 2 }
@___asan_gen_.1576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2331, i32 3 }
@___asan_gen_.1579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2337, i32 3 }
@___asan_gen_.1582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2343, i32 3 }
@___asan_gen_.1585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2350, i32 3 }
@___asan_gen_.1591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2358, i32 3 }
@___asan_gen_.1597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2367, i32 2 }
@___asan_gen_.1603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2381, i32 3 }
@___asan_gen_.1609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2389, i32 2 }
@___asan_gen_.1615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2394, i32 3 }
@___asan_gen_.1618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2403, i32 3 }
@___asan_gen_.1621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2410, i32 3 }
@___asan_gen_.1624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2439, i32 3 }
@___asan_gen_.1627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2447, i32 3 }
@___asan_gen_.1630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2460, i32 3 }
@___asan_gen_.1633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2462, i32 3 }
@___asan_gen_.1642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2494, i32 3 }
@___asan_gen_.1645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2498, i32 2 }
@___asan_gen_.1651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2500, i32 3 }
@___asan_gen_.1654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2506, i32 3 }
@___asan_gen_.1660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2513, i32 3 }
@___asan_gen_.1666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2519, i32 3 }
@___asan_gen_.1667 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 2526, i32 3 }
@___asan_gen_.1673 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4114, i32 12 }
@___asan_gen_.1676 = private unnamed_addr constant [14 x i8] c"ctl_gen2_fops\00", align 1
@___asan_gen_.1677 = private constant [38 x i8] c"../drivers/scsi/mpt3sas/mpt3sas_ctl.c\00", align 1
@___asan_gen_.1678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1677, i32 4096, i32 37 }
@llvm.compiler.used = appending global [560 x ptr] [ptr @BRM_status_show._entry, ptr @BRM_status_show._entry.209, ptr @BRM_status_show._entry.212, ptr @BRM_status_show._entry.215, ptr @BRM_status_show._entry_ptr, ptr @BRM_status_show._entry_ptr.211, ptr @BRM_status_show._entry_ptr.214, ptr @BRM_status_show._entry_ptr.217, ptr @_ctl_addnl_diag_query._entry, ptr @_ctl_addnl_diag_query._entry.439, ptr @_ctl_addnl_diag_query._entry.441, ptr @_ctl_addnl_diag_query._entry.444, ptr @_ctl_addnl_diag_query._entry.446, ptr @_ctl_addnl_diag_query._entry.449, ptr @_ctl_addnl_diag_query._entry.452, ptr @_ctl_addnl_diag_query._entry_ptr, ptr @_ctl_addnl_diag_query._entry_ptr.440, ptr @_ctl_addnl_diag_query._entry_ptr.443, ptr @_ctl_addnl_diag_query._entry_ptr.445, ptr @_ctl_addnl_diag_query._entry_ptr.448, ptr @_ctl_addnl_diag_query._entry_ptr.451, ptr @_ctl_addnl_diag_query._entry_ptr.454, ptr @_ctl_btdh_mapping._entry, ptr @_ctl_btdh_mapping._entry.340, ptr @_ctl_btdh_mapping._entry.342, ptr @_ctl_btdh_mapping._entry_ptr, ptr @_ctl_btdh_mapping._entry_ptr.341, ptr @_ctl_btdh_mapping._entry_ptr.343, ptr @_ctl_diag_query._entry, ptr @_ctl_diag_query._entry.366, ptr @_ctl_diag_query._entry.368, ptr @_ctl_diag_query._entry.370, ptr @_ctl_diag_query._entry.372, ptr @_ctl_diag_query._entry.374, ptr @_ctl_diag_query._entry.377, ptr @_ctl_diag_query._entry_ptr, ptr @_ctl_diag_query._entry_ptr.367, ptr @_ctl_diag_query._entry_ptr.369, ptr @_ctl_diag_query._entry_ptr.371, ptr @_ctl_diag_query._entry_ptr.373, ptr @_ctl_diag_query._entry_ptr.376, ptr @_ctl_diag_query._entry_ptr.379, ptr @_ctl_diag_read_buffer._entry, ptr @_ctl_diag_read_buffer._entry.400, ptr @_ctl_diag_read_buffer._entry.402, ptr @_ctl_diag_read_buffer._entry.404, ptr @_ctl_diag_read_buffer._entry.406, ptr @_ctl_diag_read_buffer._entry.408, ptr @_ctl_diag_read_buffer._entry.410, ptr @_ctl_diag_read_buffer._entry.413, ptr @_ctl_diag_read_buffer._entry.416, ptr @_ctl_diag_read_buffer._entry.419, ptr @_ctl_diag_read_buffer._entry.422, ptr @_ctl_diag_read_buffer._entry.425, ptr @_ctl_diag_read_buffer._entry.427, ptr @_ctl_diag_read_buffer._entry.429, ptr @_ctl_diag_read_buffer._entry.431, ptr @_ctl_diag_read_buffer._entry.433, ptr @_ctl_diag_read_buffer._entry.435, ptr @_ctl_diag_read_buffer._entry_ptr, ptr @_ctl_diag_read_buffer._entry_ptr.401, ptr @_ctl_diag_read_buffer._entry_ptr.403, ptr @_ctl_diag_read_buffer._entry_ptr.405, ptr @_ctl_diag_read_buffer._entry_ptr.407, ptr @_ctl_diag_read_buffer._entry_ptr.409, ptr @_ctl_diag_read_buffer._entry_ptr.412, ptr @_ctl_diag_read_buffer._entry_ptr.415, ptr @_ctl_diag_read_buffer._entry_ptr.418, ptr @_ctl_diag_read_buffer._entry_ptr.421, ptr @_ctl_diag_read_buffer._entry_ptr.424, ptr @_ctl_diag_read_buffer._entry_ptr.426, ptr @_ctl_diag_read_buffer._entry_ptr.428, ptr @_ctl_diag_read_buffer._entry_ptr.430, ptr @_ctl_diag_read_buffer._entry_ptr.432, ptr @_ctl_diag_read_buffer._entry_ptr.434, ptr @_ctl_diag_read_buffer._entry_ptr.436, ptr @_ctl_diag_register._entry, ptr @_ctl_diag_register._entry_ptr, ptr @_ctl_diag_register_2._entry, ptr @_ctl_diag_register_2._entry.101, ptr @_ctl_diag_register_2._entry.104, ptr @_ctl_diag_register_2._entry.106, ptr @_ctl_diag_register_2._entry.109, ptr @_ctl_diag_register_2._entry.112, ptr @_ctl_diag_register_2._entry.115, ptr @_ctl_diag_register_2._entry.118, ptr @_ctl_diag_register_2._entry.121, ptr @_ctl_diag_register_2._entry.123, ptr @_ctl_diag_register_2._entry.126, ptr @_ctl_diag_register_2._entry.129, ptr @_ctl_diag_register_2._entry.131, ptr @_ctl_diag_register_2._entry.134, ptr @_ctl_diag_register_2._entry.137, ptr @_ctl_diag_register_2._entry.139, ptr @_ctl_diag_register_2._entry.141, ptr @_ctl_diag_register_2._entry.143, ptr @_ctl_diag_register_2._entry_ptr, ptr @_ctl_diag_register_2._entry_ptr.103, ptr @_ctl_diag_register_2._entry_ptr.105, ptr @_ctl_diag_register_2._entry_ptr.108, ptr @_ctl_diag_register_2._entry_ptr.111, ptr @_ctl_diag_register_2._entry_ptr.114, ptr @_ctl_diag_register_2._entry_ptr.117, ptr @_ctl_diag_register_2._entry_ptr.120, ptr @_ctl_diag_register_2._entry_ptr.122, ptr @_ctl_diag_register_2._entry_ptr.125, ptr @_ctl_diag_register_2._entry_ptr.128, ptr @_ctl_diag_register_2._entry_ptr.130, ptr @_ctl_diag_register_2._entry_ptr.133, ptr @_ctl_diag_register_2._entry_ptr.136, ptr @_ctl_diag_register_2._entry_ptr.138, ptr @_ctl_diag_register_2._entry_ptr.140, ptr @_ctl_diag_register_2._entry_ptr.142, ptr @_ctl_diag_register_2._entry_ptr.144, ptr @_ctl_diag_release._entry, ptr @_ctl_diag_release._entry.381, ptr @_ctl_diag_release._entry.383, ptr @_ctl_diag_release._entry.385, ptr @_ctl_diag_release._entry.387, ptr @_ctl_diag_release._entry.389, ptr @_ctl_diag_release._entry.391, ptr @_ctl_diag_release._entry.394, ptr @_ctl_diag_release._entry.396, ptr @_ctl_diag_release._entry_ptr, ptr @_ctl_diag_release._entry_ptr.382, ptr @_ctl_diag_release._entry_ptr.384, ptr @_ctl_diag_release._entry_ptr.386, ptr @_ctl_diag_release._entry_ptr.388, ptr @_ctl_diag_release._entry_ptr.390, ptr @_ctl_diag_release._entry_ptr.393, ptr @_ctl_diag_release._entry_ptr.395, ptr @_ctl_diag_release._entry_ptr.398, ptr @_ctl_diag_unregister._entry, ptr @_ctl_diag_unregister._entry.346, ptr @_ctl_diag_unregister._entry.348, ptr @_ctl_diag_unregister._entry.351, ptr @_ctl_diag_unregister._entry.353, ptr @_ctl_diag_unregister._entry.356, ptr @_ctl_diag_unregister._entry.359, ptr @_ctl_diag_unregister._entry.362, ptr @_ctl_diag_unregister._entry_ptr, ptr @_ctl_diag_unregister._entry_ptr.347, ptr @_ctl_diag_unregister._entry_ptr.350, ptr @_ctl_diag_unregister._entry_ptr.352, ptr @_ctl_diag_unregister._entry_ptr.355, ptr @_ctl_diag_unregister._entry_ptr.358, ptr @_ctl_diag_unregister._entry_ptr.361, ptr @_ctl_diag_unregister._entry_ptr.364, ptr @_ctl_display_some_debug._entry, ptr @_ctl_display_some_debug._entry.82, ptr @_ctl_display_some_debug._entry.85, ptr @_ctl_display_some_debug._entry.88, ptr @_ctl_display_some_debug._entry.91, ptr @_ctl_display_some_debug._entry.94, ptr @_ctl_display_some_debug._entry.96, ptr @_ctl_display_some_debug._entry_ptr, ptr @_ctl_display_some_debug._entry_ptr.84, ptr @_ctl_display_some_debug._entry_ptr.87, ptr @_ctl_display_some_debug._entry_ptr.90, ptr @_ctl_display_some_debug._entry_ptr.93, ptr @_ctl_display_some_debug._entry_ptr.95, ptr @_ctl_display_some_debug._entry_ptr.98, ptr @_ctl_do_mpt_command._entry, ptr @_ctl_do_mpt_command._entry.243, ptr @_ctl_do_mpt_command._entry.246, ptr @_ctl_do_mpt_command._entry.248, ptr @_ctl_do_mpt_command._entry.250, ptr @_ctl_do_mpt_command._entry.252, ptr @_ctl_do_mpt_command._entry.254, ptr @_ctl_do_mpt_command._entry.257, ptr @_ctl_do_mpt_command._entry.260, ptr @_ctl_do_mpt_command._entry.263, ptr @_ctl_do_mpt_command._entry.266, ptr @_ctl_do_mpt_command._entry.269, ptr @_ctl_do_mpt_command._entry.271, ptr @_ctl_do_mpt_command._entry.273, ptr @_ctl_do_mpt_command._entry.275, ptr @_ctl_do_mpt_command._entry.278, ptr @_ctl_do_mpt_command._entry.280, ptr @_ctl_do_mpt_command._entry.283, ptr @_ctl_do_mpt_command._entry.285, ptr @_ctl_do_mpt_command._entry.287, ptr @_ctl_do_mpt_command._entry.290, ptr @_ctl_do_mpt_command._entry.292, ptr @_ctl_do_mpt_command._entry_ptr, ptr @_ctl_do_mpt_command._entry_ptr.245, ptr @_ctl_do_mpt_command._entry_ptr.247, ptr @_ctl_do_mpt_command._entry_ptr.249, ptr @_ctl_do_mpt_command._entry_ptr.251, ptr @_ctl_do_mpt_command._entry_ptr.253, ptr @_ctl_do_mpt_command._entry_ptr.255, ptr @_ctl_do_mpt_command._entry_ptr.259, ptr @_ctl_do_mpt_command._entry_ptr.262, ptr @_ctl_do_mpt_command._entry_ptr.265, ptr @_ctl_do_mpt_command._entry_ptr.268, ptr @_ctl_do_mpt_command._entry_ptr.270, ptr @_ctl_do_mpt_command._entry_ptr.272, ptr @_ctl_do_mpt_command._entry_ptr.274, ptr @_ctl_do_mpt_command._entry_ptr.277, ptr @_ctl_do_mpt_command._entry_ptr.279, ptr @_ctl_do_mpt_command._entry_ptr.282, ptr @_ctl_do_mpt_command._entry_ptr.284, ptr @_ctl_do_mpt_command._entry_ptr.286, ptr @_ctl_do_mpt_command._entry_ptr.289, ptr @_ctl_do_mpt_command._entry_ptr.291, ptr @_ctl_do_mpt_command._entry_ptr.294, ptr @_ctl_do_reset._entry, ptr @_ctl_do_reset._entry.332, ptr @_ctl_do_reset._entry.334, ptr @_ctl_do_reset._entry_ptr, ptr @_ctl_do_reset._entry_ptr.333, ptr @_ctl_do_reset._entry_ptr.336, ptr @_ctl_eventenable._entry, ptr @_ctl_eventenable._entry.322, ptr @_ctl_eventenable._entry.324, ptr @_ctl_eventenable._entry_ptr, ptr @_ctl_eventenable._entry_ptr.323, ptr @_ctl_eventenable._entry_ptr.325, ptr @_ctl_eventquery._entry, ptr @_ctl_eventquery._entry.317, ptr @_ctl_eventquery._entry.319, ptr @_ctl_eventquery._entry_ptr, ptr @_ctl_eventquery._entry_ptr.318, ptr @_ctl_eventquery._entry_ptr.320, ptr @_ctl_eventreport._entry, ptr @_ctl_eventreport._entry.327, ptr @_ctl_eventreport._entry.329, ptr @_ctl_eventreport._entry_ptr, ptr @_ctl_eventreport._entry_ptr.328, ptr @_ctl_eventreport._entry_ptr.330, ptr @_ctl_getiocinfo._entry, ptr @_ctl_getiocinfo._entry.240, ptr @_ctl_getiocinfo._entry_ptr, ptr @_ctl_getiocinfo._entry_ptr.241, ptr @_ctl_ioctl_main._entry, ptr @_ctl_ioctl_main._entry.227, ptr @_ctl_ioctl_main._entry.229, ptr @_ctl_ioctl_main._entry_ptr, ptr @_ctl_ioctl_main._entry_ptr.228, ptr @_ctl_ioctl_main._entry_ptr.231, ptr @_ctl_set_task_mid._entry, ptr @_ctl_set_task_mid._entry.311, ptr @_ctl_set_task_mid._entry.313, ptr @_ctl_set_task_mid._entry_ptr, ptr @_ctl_set_task_mid._entry_ptr.312, ptr @_ctl_set_task_mid._entry_ptr.315, ptr @_debug_dump_mf._entry, ptr @_debug_dump_mf._entry.298, ptr @_debug_dump_mf._entry.301, ptr @_debug_dump_mf._entry.304, ptr @_debug_dump_mf._entry_ptr, ptr @_debug_dump_mf._entry_ptr.300, ptr @_debug_dump_mf._entry_ptr.303, ptr @_debug_dump_mf._entry_ptr.306, ptr @fwfault_debug_store._entry, ptr @fwfault_debug_store._entry_ptr, ptr @host_trace_buffer_enable_store._entry, ptr @host_trace_buffer_enable_store._entry.192, ptr @host_trace_buffer_enable_store._entry.196, ptr @host_trace_buffer_enable_store._entry_ptr, ptr @host_trace_buffer_enable_store._entry_ptr.194, ptr @host_trace_buffer_enable_store._entry_ptr.198, ptr @host_trace_buffer_show._entry, ptr @host_trace_buffer_show._entry.182, ptr @host_trace_buffer_show._entry_ptr, ptr @host_trace_buffer_show._entry_ptr.183, ptr @host_trace_buffer_size_show._entry, ptr @host_trace_buffer_size_show._entry.178, ptr @host_trace_buffer_size_show._entry_ptr, ptr @host_trace_buffer_size_show._entry_ptr.179, ptr @logging_level_store._entry, ptr @logging_level_store._entry_ptr, ptr @mpt3sas_ctl_clear_outstanding_ioctls._entry, ptr @mpt3sas_ctl_clear_outstanding_ioctls._entry_ptr, ptr @mpt3sas_ctl_init._entry, ptr @mpt3sas_ctl_init._entry.57, ptr @mpt3sas_ctl_init._entry_ptr, ptr @mpt3sas_ctl_init._entry_ptr.58, ptr @mpt3sas_ctl_pre_reset_handler._entry, ptr @mpt3sas_ctl_pre_reset_handler._entry.4, ptr @mpt3sas_ctl_pre_reset_handler._entry_ptr, ptr @mpt3sas_ctl_pre_reset_handler._entry_ptr.6, ptr @mpt3sas_ctl_reset_done_handler._entry, ptr @mpt3sas_ctl_reset_done_handler._entry_ptr, ptr @mpt3sas_enable_diag_buffer._entry, ptr @mpt3sas_enable_diag_buffer._entry.13, ptr @mpt3sas_enable_diag_buffer._entry.16, ptr @mpt3sas_enable_diag_buffer._entry.19, ptr @mpt3sas_enable_diag_buffer._entry.22, ptr @mpt3sas_enable_diag_buffer._entry.25, ptr @mpt3sas_enable_diag_buffer._entry.28, ptr @mpt3sas_enable_diag_buffer._entry_ptr, ptr @mpt3sas_enable_diag_buffer._entry_ptr.15, ptr @mpt3sas_enable_diag_buffer._entry_ptr.18, ptr @mpt3sas_enable_diag_buffer._entry_ptr.21, ptr @mpt3sas_enable_diag_buffer._entry_ptr.24, ptr @mpt3sas_enable_diag_buffer._entry_ptr.27, ptr @mpt3sas_enable_diag_buffer._entry_ptr.30, ptr @mpt3sas_send_diag_release._entry, ptr @mpt3sas_send_diag_release._entry.33, ptr @mpt3sas_send_diag_release._entry.36, ptr @mpt3sas_send_diag_release._entry.39, ptr @mpt3sas_send_diag_release._entry.42, ptr @mpt3sas_send_diag_release._entry.45, ptr @mpt3sas_send_diag_release._entry.48, ptr @mpt3sas_send_diag_release._entry.51, ptr @mpt3sas_send_diag_release._entry_ptr, ptr @mpt3sas_send_diag_release._entry_ptr.35, ptr @mpt3sas_send_diag_release._entry_ptr.38, ptr @mpt3sas_send_diag_release._entry_ptr.41, ptr @mpt3sas_send_diag_release._entry_ptr.44, ptr @mpt3sas_send_diag_release._entry_ptr.47, ptr @mpt3sas_send_diag_release._entry_ptr.50, ptr @mpt3sas_send_diag_release._entry_ptr.53, ptr @.str, ptr @ctl_poll_wait, ptr @async_queue, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @mpt3sas_host_attr_group, ptr @mpt3sas_host_groups, ptr @mpt3sas_dev_attr_group, ptr @mpt3sas_dev_groups, ptr @ctl_dev, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @gen2_ctl_dev, ptr @.str.59, ptr @mpt3sas_ctl_init.__key, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.124, ptr @.str.127, ptr @.str.132, ptr @.str.135, ptr @init_completion.__key, ptr @.str.145, ptr @mpt3sas_host_attrs, ptr @dev_attr_version_fw, ptr @dev_attr_version_bios, ptr @dev_attr_version_mpi, ptr @dev_attr_version_product, ptr @dev_attr_version_nvdata_persistent, ptr @dev_attr_version_nvdata_default, ptr @dev_attr_board_name, ptr @dev_attr_board_assembly, ptr @dev_attr_board_tracer, ptr @dev_attr_io_delay, ptr @dev_attr_device_delay, ptr @dev_attr_logging_level, ptr @dev_attr_fwfault_debug, ptr @dev_attr_fw_queue_depth, ptr @dev_attr_host_sas_address, ptr @dev_attr_ioc_reset_count, ptr @dev_attr_host_trace_buffer_size, ptr @dev_attr_host_trace_buffer, ptr @dev_attr_host_trace_buffer_enable, ptr @dev_attr_reply_queue_count, ptr @dev_attr_diag_trigger_master, ptr @dev_attr_diag_trigger_event, ptr @dev_attr_diag_trigger_scsi, ptr @dev_attr_diag_trigger_mpi, ptr @dev_attr_drv_support_bitmap, ptr @dev_attr_BRM_status, ptr @dev_attr_enable_sdev_max_qd, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.180, ptr @.str.181, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.193, ptr @.str.195, ptr @.str.197, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.218, ptr @mpt3sas_dev_attrs, ptr @dev_attr_sas_address, ptr @dev_attr_sas_device_handle, ptr @dev_attr_sas_ncq_prio_supported, ptr @dev_attr_sas_ncq_prio_enable, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @ctl_fops, ptr @.str.225, ptr @.str.226, ptr @.str.230, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.238, ptr @.str.239, ptr @.str.242, ptr @.str.244, ptr @.str.256, ptr @.str.258, ptr @.str.261, ptr @.str.264, ptr @.str.267, ptr @.str.276, ptr @.str.281, ptr @.str.288, ptr @.str.293, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.299, ptr @.str.302, ptr @.str.305, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.314, ptr @.str.316, ptr @.str.321, ptr @.str.326, ptr @.str.331, ptr @.str.335, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.344, ptr @.str.345, ptr @.str.349, ptr @.str.354, ptr @.str.357, ptr @.str.360, ptr @.str.363, ptr @.str.365, ptr @.str.375, ptr @.str.378, ptr @.str.380, ptr @.str.392, ptr @.str.397, ptr @.str.399, ptr @.str.411, ptr @.str.414, ptr @.str.417, ptr @.str.420, ptr @.str.423, ptr @.str.437, ptr @.str.438, ptr @.str.442, ptr @.str.447, ptr @.str.450, ptr @.str.453, ptr @.str.455, ptr @ctl_gen2_fops], section "llvm.metadata"
@0 = internal global [403 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctl_poll_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_queue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_ctl_pre_reset_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_ctl_pre_reset_handler._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_ctl_clear_outstanding_ioctls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_ctl_reset_done_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_enable_diag_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_enable_diag_buffer._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_enable_diag_buffer._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_enable_diag_buffer._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_enable_diag_buffer._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_enable_diag_buffer._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_enable_diag_buffer._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_send_diag_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_send_diag_release._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_send_diag_release._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_send_diag_release._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_send_diag_release._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_send_diag_release._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_send_diag_release._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_send_diag_release._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_host_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_host_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctl_dev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_ctl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen2_ctl_dev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_ctl_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_ctl_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_display_some_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_display_some_debug._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_display_some_debug._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_display_some_debug._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_display_some_debug._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_display_some_debug._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_display_some_debug._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register_2._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_host_attrs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_version_fw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_version_bios to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_version_mpi to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_version_product to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_version_nvdata_persistent to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_version_nvdata_default to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_board_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_board_assembly to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_board_tracer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_io_delay to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_device_delay to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_logging_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fwfault_debug to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_queue_depth to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_sas_address to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ioc_reset_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_trace_buffer_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_trace_buffer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_host_trace_buffer_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reply_queue_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_diag_trigger_master to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_diag_trigger_event to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_diag_trigger_scsi to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_diag_trigger_mpi to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_drv_support_bitmap to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_BRM_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enable_sdev_max_qd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logging_level_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fwfault_debug_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_trace_buffer_size_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_trace_buffer_size_show._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_trace_buffer_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_trace_buffer_show._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_trace_buffer_enable_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_trace_buffer_enable_store._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_trace_buffer_enable_store._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRM_status_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRM_status_show._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRM_status_show._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BRM_status_show._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_dev_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sas_address to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sas_device_handle to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sas_ncq_prio_supported to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sas_ncq_prio_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctl_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_ioctl_main._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_ioctl_main._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_ioctl_main._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_getiocinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_getiocinfo._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_mpt_command._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_mf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_mf._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_mf._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_debug_dump_mf._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_set_task_mid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_set_task_mid._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_set_task_mid._entry.313 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_eventquery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_eventquery._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_eventquery._entry.319 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_eventenable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_eventenable._entry.322 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_eventenable._entry.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_eventreport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_eventreport._entry.327 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_eventreport._entry.329 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_reset._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_do_reset._entry.334 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_btdh_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_btdh_mapping._entry.340 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_btdh_mapping._entry.342 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_unregister._entry.346 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_unregister._entry.348 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_unregister._entry.351 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_unregister._entry.353 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_unregister._entry.356 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_unregister._entry.359 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_unregister._entry.362 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_query._entry.366 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_query._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_query._entry.370 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_query._entry.372 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_query._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_query._entry.377 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_release._entry.381 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_release._entry.383 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_release._entry.385 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_release._entry.387 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_release._entry.389 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_release._entry.391 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_release._entry.394 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_release._entry.396 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.400 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.402 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.404 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.406 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.408 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.410 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.413 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.416 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.419 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.422 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.425 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.427 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.429 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.431 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.433 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_diag_read_buffer._entry.435 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_addnl_diag_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.438 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_addnl_diag_query._entry.439 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_addnl_diag_query._entry.441 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_addnl_diag_query._entry.444 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_addnl_diag_query._entry.446 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.447 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_addnl_diag_query._entry.449 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_ctl_addnl_diag_query._entry.452 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1667 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.453 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.455 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctl_gen2_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1676 to i32), i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mpt3sas_ctl_done(ptr noundef %ioc, i16 noundef zeroext %smid, i8 noundef zeroext %msix_index, i32 noundef %reply) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %1)
  %cmp = icmp eq i16 %1, -32768
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %smid3 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 5
  %2 = ptrtoint ptr %smid3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %smid3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %smid)
  %cmp6.not = icmp eq i16 %3, %smid
  br i1 %cmp6.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %4 = or i16 %1, 1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %status, align 4
  %call = tail call ptr @mpt3sas_base_get_reply_virt_addr(ptr noundef %ioc, i32 noundef %reply) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end9.if.end57_crit_edge, label %if.then14

if.end9.if.end57_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

if.then14:                                        ; preds = %if.end9
  %reply16 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 2
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
  %Function = getelementptr inbounds %struct._MPI2_DEFAULT_REPLY, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %Function to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %Function, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i8 %15, label %if.then14.if.end39_crit_edge [
    i8 0, label %if.then14.if.then30_crit_edge
    i8 22, label %if.then14.if.then30_crit_edge98
  ]

if.then14.if.then30_crit_edge98:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

if.then14.if.then30_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

if.then14.if.end39_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then30:                                        ; preds = %if.then14.if.then30_crit_edge, %if.then14.if.then30_crit_edge98
  %SCSIState = getelementptr inbounds %struct._MPI2_SCSI_IO_REPLY, ptr %call, i32 0, i32 10
  %17 = ptrtoint ptr %SCSIState to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %SCSIState, align 1
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool32.not = icmp eq i8 %19, 0
  br i1 %tobool32.not, label %if.then30.if.end39thread-pre-split_crit_edge, label %if.then33

if.then30.if.end39thread-pre-split_crit_edge:     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39thread-pre-split

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  %SenseCount = getelementptr inbounds %struct._MPI2_SCSI_IO_REPLY, ptr %call, i32 0, i32 14
  %20 = ptrtoint ptr %SenseCount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %SenseCount, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 96)
  %call36 = tail call ptr @mpt3sas_base_get_sense_buffer(ptr noundef %ioc, i16 noundef zeroext %smid) #16
  %sense = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 3
  %24 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sense, align 8
  %26 = call ptr @memcpy(ptr %25, ptr %call36, i32 %23)
  br label %if.end39thread-pre-split

if.end39thread-pre-split:                         ; preds = %if.then33, %if.then30.if.end39thread-pre-split_crit_edge
  %27 = ptrtoint ptr %Function to i32
  call void @__asan_load1_noabort(i32 %27)
  %.pr = load i8, ptr %Function, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.end39thread-pre-split, %if.then14.if.end39_crit_edge
  %28 = phi i8 [ %.pr, %if.end39thread-pre-split ], [ %15, %if.then14.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %28)
  %cmp42 = icmp eq i8 %28, 51
  br i1 %cmp42, label %if.then44, label %if.end39.if.end57_crit_edge

if.end39.if.end57_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  %ErrorResponseCount = getelementptr inbounds %struct._MPI26_NVME_ENCAPSULATED_ERROR_REPLY, ptr %call, i32 0, i32 12
  %29 = ptrtoint ptr %ErrorResponseCount to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ErrorResponseCount, align 4
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %32 = tail call i16 @llvm.umin.i16(i16 %31, i16 16)
  %cond52 = zext i16 %32 to i32
  %call53 = tail call ptr @mpt3sas_base_get_sense_buffer(ptr noundef %ioc, i16 noundef zeroext %smid) #16
  %sense55 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 3
  %33 = ptrtoint ptr %sense55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sense55, align 8
  %35 = call ptr @memcpy(ptr %34, ptr %call53, i32 %cond52)
  br label %if.end57

if.end57:                                         ; preds = %if.then44, %if.end39.if.end57_crit_edge, %if.end9.if.end57_crit_edge
  tail call fastcc void @_ctl_display_some_debug(ptr noundef %ioc, i16 noundef zeroext %smid, ptr noundef nonnull @.str, ptr noundef %call)
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %status, align 4
  %38 = and i16 %37, -3
  store i16 %38, ptr %status, align 4
  %done = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 1
  tail call void @complete(ptr noundef %done) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i8 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_base_get_reply_virt_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_base_get_sense_buffer(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_ctl_display_some_debug(ptr noundef %ioc, i16 noundef zeroext %smid, ptr noundef %calling_function_name, ptr noundef readonly %mpi_reply) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %0 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logging_level, align 8
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @mpt3sas_base_get_msg_frame(ptr noundef %ioc, i16 noundef zeroext %smid) #16
  %Function = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %Function to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %Function, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.456)
  switch i8 %3, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %if.end.do.end_crit_edge
    i8 2, label %sw.bb8
    i8 3, label %sw.bb9
    i8 4, label %sw.bb10
    i8 5, label %sw.bb21
    i8 6, label %sw.bb22
    i8 7, label %sw.bb23
    i8 9, label %sw.bb24
    i8 18, label %sw.bb25
    i8 21, label %sw.bb26
    i8 22, label %sw.bb27
    i8 27, label %sw.bb40
    i8 28, label %sw.bb41
    i8 29, label %sw.bb42
    i8 30, label %sw.bb43
    i8 26, label %sw.bb44
    i8 23, label %sw.bb45
    i8 51, label %sw.bb46
  ]

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %tmp_string = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 6
  %CDB = getelementptr inbounds %struct._MPI2_SCSI_IO_REQUEST, ptr %call, i32 0, i32 28
  %5 = ptrtoint ptr %CDB to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %CDB, align 4
  %conv1 = zext i8 %6 to i32
  %IoFlags = getelementptr inbounds %struct._MPI2_SCSI_IO_REQUEST, ptr %call, i32 0, i32 20
  %7 = ptrtoint ptr %IoFlags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %IoFlags, align 4
  %9 = lshr i16 %8, 8
  %10 = and i16 %9, 15
  %and3 = zext i16 %10 to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %tmp_string, i32 noundef 64, ptr noundef nonnull @.str.61, i32 noundef %conv1, i32 noundef %and3)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %tmp_string11 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 6
  %PageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %call, i32 0, i32 14, i32 3
  %11 = ptrtoint ptr %PageType to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %PageType, align 1
  %13 = and i8 %12, 15
  %and14 = zext i8 %13 to i32
  %ExtPageType = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %ExtPageType to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ExtPageType, align 2
  %conv15 = zext i8 %15 to i32
  %PageNumber = getelementptr inbounds %struct._MPI2_CONFIG_REQUEST, ptr %call, i32 0, i32 14, i32 2
  %16 = ptrtoint ptr %PageNumber to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %PageNumber, align 2
  %conv17 = zext i8 %17 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %tmp_string11, i32 noundef 64, ptr noundef nonnull @.str.65, i32 noundef %and14, i32 noundef %conv15, i32 noundef %conv17)
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %tmp_string29 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 6
  %CDB31 = getelementptr inbounds %struct._MPI2_SCSI_IO_REQUEST, ptr %call, i32 0, i32 28
  %18 = ptrtoint ptr %CDB31 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %CDB31, align 4
  %conv33 = zext i8 %19 to i32
  %IoFlags34 = getelementptr inbounds %struct._MPI2_SCSI_IO_REQUEST, ptr %call, i32 0, i32 20
  %20 = ptrtoint ptr %IoFlags34 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %IoFlags34, align 4
  %22 = lshr i16 %21, 8
  %23 = and i16 %22, 15
  %and36 = zext i16 %23 to i32
  %call37 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %tmp_string29, i32 noundef 64, ptr noundef nonnull @.str.72, i32 noundef %conv33, i32 noundef %and36)
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.bb42:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.bb43:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.bb45:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.bb46:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.epilog:                                        ; preds = %sw.bb27, %sw.bb10, %sw.bb
  %desc.0 = phi ptr [ %tmp_string29, %sw.bb27 ], [ %tmp_string11, %sw.bb10 ], [ %tmp_string, %sw.bb ]
  %tobool47.not = icmp eq ptr %desc.0, null
  br i1 %tobool47.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.do.end_crit_edge

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %sw.epilog.do.end_crit_edge, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb9, %sw.bb8, %if.end.do.end_crit_edge
  %desc.0202 = phi ptr [ %desc.0, %sw.epilog.do.end_crit_edge ], [ @.str.63, %sw.bb8 ], [ @.str.64, %sw.bb9 ], [ @.str.66, %sw.bb21 ], [ @.str.67, %sw.bb22 ], [ @.str.68, %sw.bb23 ], [ @.str.69, %sw.bb24 ], [ @.str.70, %sw.bb25 ], [ @.str.71, %sw.bb26 ], [ @.str.73, %sw.bb40 ], [ @.str.74, %sw.bb41 ], [ @.str.75, %sw.bb42 ], [ @.str.76, %sw.bb43 ], [ @.str.77, %sw.bb44 ], [ @.str.78, %sw.bb45 ], [ @.str.79, %sw.bb46 ], [ @.str.62, %if.end.do.end_crit_edge ]
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %conv51 = zext i16 %smid to i32
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name, ptr noundef %calling_function_name, ptr noundef nonnull %desc.0202, i32 noundef %conv51) #19
  %tobool53.not = icmp eq ptr %mpi_reply, null
  br i1 %tobool53.not, label %do.end.cleanup_crit_edge, label %if.end55

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end55:                                         ; preds = %do.end
  %IOCStatus = getelementptr inbounds %struct._MPI2_DEFAULT_REPLY, ptr %mpi_reply, i32 0, i32 10
  %24 = ptrtoint ptr %IOCStatus to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %IOCStatus, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool57.not = icmp eq i16 %25, 0
  br i1 %tobool57.not, label %lor.lhs.false, label %if.end55.do.end62_crit_edge

if.end55.do.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end62

lor.lhs.false:                                    ; preds = %if.end55
  %IOCLogInfo = getelementptr inbounds %struct._MPI2_DEFAULT_REPLY, ptr %mpi_reply, i32 0, i32 11
  %26 = ptrtoint ptr %IOCLogInfo to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %IOCLogInfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool58.not = icmp eq i32 %27, 0
  br i1 %tobool58.not, label %lor.lhs.false.if.end70_crit_edge, label %lor.lhs.false.do.end62_crit_edge

lor.lhs.false.do.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end62

lor.lhs.false.if.end70_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

do.end62:                                         ; preds = %lor.lhs.false.do.end62_crit_edge, %if.end55.do.end62_crit_edge
  %28 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv67 = zext i16 %28 to i32
  %IOCLogInfo68 = getelementptr inbounds %struct._MPI2_DEFAULT_REPLY, ptr %mpi_reply, i32 0, i32 11
  %29 = ptrtoint ptr %IOCLogInfo68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %IOCLogInfo68, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name, i32 noundef %conv67, i32 noundef %31) #19
  br label %if.end70

if.end70:                                         ; preds = %do.end62, %lor.lhs.false.if.end70_crit_edge
  %32 = ptrtoint ptr %Function to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %Function, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.457)
  switch i8 %33, label %if.end70.cleanup_crit_edge [
    i8 0, label %if.end70.if.then79_crit_edge
    i8 22, label %if.end70.if.then79_crit_edge206
  ]

if.end70.if.then79_crit_edge206:                  ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then79

if.end70.if.then79_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then79

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then79:                                        ; preds = %if.end70.if.then79_crit_edge, %if.end70.if.then79_crit_edge206
  %35 = ptrtoint ptr %mpi_reply to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %mpi_reply, align 4
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %call80 = tail call ptr @mpt3sas_get_sdev_by_handle(ptr noundef %ioc, i16 noundef zeroext %37) #16
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.then101.critedge, label %do.end85

do.end85:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #18
  %sas_address = getelementptr inbounds %struct._sas_device, ptr %call80, i32 0, i32 2
  %38 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %sas_address, align 8
  %phy = getelementptr inbounds %struct._sas_device, ptr %call80, i32 0, i32 14
  %40 = ptrtoint ptr %phy to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %phy, align 2
  %conv89 = zext i8 %41 to i32
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %name, i64 noundef %39, i32 noundef %conv89) #19
  %enclosure_logical_id = getelementptr inbounds %struct._sas_device, ptr %call80, i32 0, i32 7
  %42 = ptrtoint ptr %enclosure_logical_id to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %enclosure_logical_id, align 8
  %slot = getelementptr inbounds %struct._sas_device, ptr %call80, i32 0, i32 13
  %44 = ptrtoint ptr %slot to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %slot, align 4
  %conv97 = zext i16 %45 to i32
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name, i64 noundef %43, i32 noundef %conv97) #19
  tail call fastcc void @sas_device_put(ptr noundef nonnull %call80)
  br label %if.end130

if.then101.critedge:                              ; preds = %if.then79
  %46 = ptrtoint ptr %mpi_reply to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mpi_reply, align 4
  %48 = tail call i16 @llvm.bswap.i16(i16 %47)
  %call103 = tail call ptr @mpt3sas_get_pdev_by_handle(ptr noundef %ioc, i16 noundef zeroext %48) #16
  %tobool104.not = icmp eq ptr %call103, null
  br i1 %tobool104.not, label %if.then101.critedge.if.end130_crit_edge, label %do.end108

if.then101.critedge.if.end130_crit_edge:          ; preds = %if.then101.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end130

do.end108:                                        ; preds = %if.then101.critedge
  %wwid = getelementptr inbounds %struct._pcie_device, ptr %call103, i32 0, i32 2
  %49 = ptrtoint ptr %wwid to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %wwid, align 8
  %port_num = getelementptr inbounds %struct._pcie_device, ptr %call103, i32 0, i32 8
  %51 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %port_num, align 2
  %conv112 = zext i8 %52 to i32
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name, i64 noundef %50, i32 noundef %conv112) #19
  %enclosure_handle = getelementptr inbounds %struct._pcie_device, ptr %call103, i32 0, i32 12
  %53 = ptrtoint ptr %enclosure_handle to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %enclosure_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %cmp115.not = icmp eq i16 %54, 0
  br i1 %cmp115.not, label %do.end108.if.end128_crit_edge, label %do.end120

do.end108.if.end128_crit_edge:                    ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end128

do.end120:                                        ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #18
  %enclosure_logical_id124 = getelementptr inbounds %struct._pcie_device, ptr %call103, i32 0, i32 13
  %55 = ptrtoint ptr %enclosure_logical_id124 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %enclosure_logical_id124, align 8
  %slot125 = getelementptr inbounds %struct._pcie_device, ptr %call103, i32 0, i32 7
  %57 = ptrtoint ptr %slot125 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %slot125, align 8
  %conv126 = zext i16 %58 to i32
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name, i64 noundef %56, i32 noundef %conv126) #19
  br label %if.end128

if.end128:                                        ; preds = %do.end120, %do.end108.if.end128_crit_edge
  tail call fastcc void @pcie_device_put(ptr noundef nonnull %call103)
  br label %if.end130

if.end130:                                        ; preds = %if.end128, %if.then101.critedge.if.end130_crit_edge, %do.end85
  %SCSIState = getelementptr inbounds %struct._MPI2_SCSI_IO_REPLY, ptr %mpi_reply, i32 0, i32 10
  %59 = ptrtoint ptr %SCSIState to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %SCSIState, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool132.not = icmp eq i8 %60, 0
  br i1 %tobool132.not, label %lor.lhs.false133, label %if.end130.do.end139_crit_edge

if.end130.do.end139_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end139

lor.lhs.false133:                                 ; preds = %if.end130
  %SCSIStatus = getelementptr inbounds %struct._MPI2_SCSI_IO_REPLY, ptr %mpi_reply, i32 0, i32 9
  %61 = ptrtoint ptr %SCSIStatus to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %SCSIStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool135.not = icmp eq i8 %62, 0
  br i1 %tobool135.not, label %lor.lhs.false133.cleanup_crit_edge, label %lor.lhs.false133.do.end139_crit_edge

lor.lhs.false133.do.end139_crit_edge:             ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end139

lor.lhs.false133.cleanup_crit_edge:               ; preds = %lor.lhs.false133
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end139:                                        ; preds = %lor.lhs.false133.do.end139_crit_edge, %if.end130.do.end139_crit_edge
  %conv144 = zext i8 %60 to i32
  %SCSIStatus145 = getelementptr inbounds %struct._MPI2_SCSI_IO_REPLY, ptr %mpi_reply, i32 0, i32 9
  %63 = ptrtoint ptr %SCSIStatus145 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %SCSIStatus145, align 4
  %conv146 = zext i8 %64 to i32
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name, i32 noundef %conv144, i32 noundef %conv146) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end139, %lor.lhs.false133.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %do.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_ctl_add_to_event_log(ptr nocapture noundef %ioc, ptr nocapture noundef readonly %mpi_reply) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %event_log1 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 92
  %0 = ptrtoint ptr %event_log1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event_log1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %Event = getelementptr inbounds %struct._MPI2_EVENT_NOTIFICATION_REPLY, ptr %mpi_reply, i32 0, i32 12
  %2 = ptrtoint ptr %Event to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %Event, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = add i16 %4, -128
  call void @__sanitizer_cov_trace_const_cmp2(i16 -127, i16 %5)
  %6 = icmp ult i16 %5, -127
  br i1 %6, label %if.end15.thread, label %_ctl_check_event_type.exit

_ctl_check_event_type.exit:                       ; preds = %if.end
  %7 = and i16 %4, 31
  %rem.i = zext i16 %7 to i32
  %shl.i = shl nuw i32 1, %rem.i
  %div16.i = lshr i16 %4, 5
  %idxprom.i = zext i16 %div16.i to i32
  %arrayidx.i = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 90, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %9, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.not, label %if.end15, label %if.end15.thread58

if.end15:                                         ; preds = %_ctl_check_event_type.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 8448, i16 %3)
  %cmp17 = icmp eq i16 %3, 8448
  br i1 %cmp17, label %if.end15.if.then22_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15.if.then22_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

if.end15.thread58:                                ; preds = %_ctl_check_event_type.exit
  %event_context = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 91
  %10 = ptrtoint ptr %event_context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %event_context, align 8
  %rem = urem i32 %11, 200
  %conv = zext i16 %4 to i32
  %arrayidx = getelementptr %struct.MPT3_IOCTL_EVENTS, ptr %1, i32 %rem
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %arrayidx, align 4
  %13 = load i32, ptr %event_context, align 8
  %inc = add i32 %13, 1
  store i32 %inc, ptr %event_context, align 8
  %context = getelementptr %struct.MPT3_IOCTL_EVENTS, ptr %1, i32 %rem, i32 1
  %14 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %context, align 4
  %15 = ptrtoint ptr %mpi_reply to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mpi_reply, align 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %17)
  %cmp = icmp ult i16 %17, 48
  %conv8 = zext i16 %17 to i32
  %mul = shl nuw nsw i32 %conv8, 2
  %cond = select i1 %cmp, i32 %mul, i32 192
  %data = getelementptr %struct.MPT3_IOCTL_EVENTS, ptr %1, i32 %rem, i32 2
  %18 = call ptr @memset(ptr %data, i32 0, i32 192)
  %EventData = getelementptr inbounds %struct._MPI2_EVENT_NOTIFICATION_REPLY, ptr %mpi_reply, i32 0, i32 15
  %19 = call ptr @memcpy(ptr %data, ptr %EventData, i32 %cond)
  call void @__sanitizer_cov_trace_const_cmp2(i16 8448, i16 %3)
  %cmp1759 = icmp eq i16 %3, 8448
  br i1 %cmp1759, label %if.end15.thread58.if.then22_crit_edge, label %land.lhs.true

if.end15.thread58.if.then22_crit_edge:            ; preds = %if.end15.thread58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

if.end15.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 8448, i16 %3)
  %cmp1755 = icmp eq i16 %3, 8448
  br i1 %cmp1755, label %if.end15.thread.if.then22_crit_edge, label %if.end15.thread.cleanup_crit_edge

if.end15.thread.cleanup_crit_edge:                ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15.thread.if.then22_crit_edge:              ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

land.lhs.true:                                    ; preds = %if.end15.thread58
  %aen_event_read_flag = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 24
  %20 = ptrtoint ptr %aen_event_read_flag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %aen_event_read_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool21.not = icmp eq i32 %21, 0
  br i1 %tobool21.not, label %land.lhs.true.if.then22_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

if.then22:                                        ; preds = %land.lhs.true.if.then22_crit_edge, %if.end15.thread.if.then22_crit_edge, %if.end15.thread58.if.then22_crit_edge, %if.end15.if.then22_crit_edge
  %aen_event_read_flag23 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 24
  %22 = ptrtoint ptr %aen_event_read_flag23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %aen_event_read_flag23, align 4
  tail call void @__wake_up(ptr noundef nonnull @ctl_poll_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #16
  %23 = load ptr, ptr @async_queue, align 4
  %tobool24.not = icmp eq ptr %23, null
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %if.then25

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kill_fasync(ptr noundef nonnull @async_queue, i32 noundef 29, i32 noundef 1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.then22.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end15.thread.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mpt3sas_ctl_event_callback(ptr noundef %ioc, i8 noundef zeroext %msix_index, i32 noundef %reply) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mpt3sas_base_get_reply_virt_addr(ptr noundef %ioc, i32 noundef %reply) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mpt3sas_ctl_add_to_event_log(ptr noundef %ioc, ptr noundef nonnull %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i8 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_ctl_pre_reset_handler(ptr noundef %ioc) local_unnamed_addr #0 align 64 {
entry:
  %issue_reset = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %issue_reset) #16
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %0 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logging_level, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef nonnull @.str.2) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %name16 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %htb_rel = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 222
  %arrayidx = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %do.end14, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name16, ptr noundef nonnull @.str.2) #19
  %6 = ptrtoint ptr %htb_rel to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 5, ptr %htb_rel, align 4
  %call20 = call i32 @mpt3sas_send_diag_release(ptr noundef %ioc, i8 noundef zeroext 0, ptr noundef nonnull %issue_reset)
  br label %for.inc

for.inc:                                          ; preds = %do.end14, %if.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 1
  %9 = and i8 %8, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %do.end14.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

do.end14.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %call18.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name16, ptr noundef nonnull @.str.2) #19
  %11 = ptrtoint ptr %htb_rel to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 5, ptr %htb_rel, align 4
  %call20.1 = call i32 @mpt3sas_send_diag_release(ptr noundef %ioc, i8 noundef zeroext 1, ptr noundef nonnull %issue_reset)
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end14.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 1
  %14 = and i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %do.end14.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

do.end14.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  %call18.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name16, ptr noundef nonnull @.str.2) #19
  %16 = ptrtoint ptr %htb_rel to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 5, ptr %htb_rel, align 4
  %call20.2 = call i32 @mpt3sas_send_diag_release(ptr noundef %ioc, i8 noundef zeroext 2, ptr noundef nonnull %issue_reset)
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end14.2, %for.inc.1.for.inc.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %issue_reset) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpt3sas_send_diag_release(ptr noundef %ioc, i8 noundef zeroext %buffer_type, ptr nocapture noundef writeonly %issue_reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %0 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logging_level, align 8
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef nonnull @.str.32) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %issue_reset to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %issue_reset, align 1
  %call1 = tail call i32 @mpt3sas_base_get_iocstate(ptr noundef %ioc, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 536870912
  br i1 %cmp.not, label %if.end24, label %if.then2

if.then2:                                         ; preds = %if.end
  %idxprom = zext i8 %buffer_type to i32
  %arrayidx = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then2.if.end11_crit_edge, label %if.then5

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  %or = or i8 %4, 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or, ptr %arrayidx, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.then2.if.end11_crit_edge
  %7 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %logging_level, align 8
  %and13 = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end11.out_crit_edge, label %do.end18

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %name20 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name20, ptr noundef nonnull @.str.32) #19
  br label %out

if.end24:                                         ; preds = %if.end
  %status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 4
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %10)
  %cmp26.not = icmp eq i16 %10, -32768
  br i1 %cmp26.not, label %if.end36, label %do.end31

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %name33 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name33, ptr noundef nonnull @.str.32) #19
  br label %out

if.end36:                                         ; preds = %if.end24
  %ctl_cb_idx = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 67
  %11 = ptrtoint ptr %ctl_cb_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctl_cb_idx, align 8
  %call37 = tail call zeroext i16 @mpt3sas_base_get_smid(ptr noundef %ioc, i8 noundef zeroext %12) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call37)
  %tobool38.not = icmp eq i16 %call37, 0
  br i1 %tobool38.not, label %do.end42, label %if.end47

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %name44 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name44, ptr noundef nonnull @.str.32) #19
  br label %out

if.end47:                                         ; preds = %if.end36
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %status, align 4
  %reply = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 2
  %14 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reply, align 4
  %reply_sz = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 181
  %16 = ptrtoint ptr %reply_sz to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reply_sz, align 4
  %conv51 = zext i16 %17 to i32
  %18 = call ptr @memset(ptr %15, i32 0, i32 %conv51)
  %call52 = tail call ptr @mpt3sas_base_get_msg_frame(ptr noundef %ioc, i16 noundef zeroext %call37) #16
  %smid54 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 5
  %19 = ptrtoint ptr %smid54 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %call37, ptr %smid54, align 2
  %Function = getelementptr inbounds %struct._MPI2_DIAG_RELEASE_REQUEST, ptr %call52, i32 0, i32 3
  %20 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 30, ptr %Function, align 1
  %BufferType = getelementptr inbounds %struct._MPI2_DIAG_RELEASE_REQUEST, ptr %call52, i32 0, i32 1
  %21 = ptrtoint ptr %BufferType to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %buffer_type, ptr %BufferType, align 1
  %VF_ID = getelementptr inbounds %struct._MPI2_DIAG_RELEASE_REQUEST, ptr %call52, i32 0, i32 8
  %22 = ptrtoint ptr %VF_ID to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %VF_ID, align 1
  %VP_ID = getelementptr inbounds %struct._MPI2_DIAG_RELEASE_REQUEST, ptr %call52, i32 0, i32 7
  %23 = ptrtoint ptr %VP_ID to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %VP_ID, align 2
  %done = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 1
  %24 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.145, ptr noundef nonnull @init_completion.__key) #16
  %put_smid_default = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 247
  %25 = ptrtoint ptr %put_smid_default to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %put_smid_default, align 8
  tail call void %26(ptr noundef %ioc, i16 noundef zeroext %call37) #16
  %call58 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 1000) #16
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %status, align 4
  %conv61 = zext i16 %28 to i32
  %and62 = and i32 %conv61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.end68, label %if.end79

do.end68:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %name70 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name70, ptr noundef nonnull @.str.32) #19
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %status, align 4
  %conv75 = trunc i16 %30 to i8
  %call76 = tail call zeroext i8 @mpt3sas_base_check_cmd_timeout(ptr noundef %ioc, i8 noundef zeroext %conv75, ptr noundef %call52, i32 noundef 3) #16
  %31 = ptrtoint ptr %issue_reset to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call76, ptr %issue_reset, align 1
  br label %out

if.end79:                                         ; preds = %if.end47
  %and83 = and i32 %conv61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %cmp84 = icmp eq i32 %and83, 0
  br i1 %cmp84, label %do.end89, label %if.end94

do.end89:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  %name91 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name91, ptr noundef nonnull @.str.32) #19
  br label %out

if.end94:                                         ; preds = %if.end79
  %32 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reply, align 4
  %IOCStatus = getelementptr inbounds %struct._MPI2_DIAG_RELEASE_REPLY, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %IOCStatus to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %IOCStatus, align 2
  %36 = and i16 %35, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp101 = icmp eq i16 %36, 0
  br i1 %cmp101, label %if.then103, label %do.end124

if.then103:                                       ; preds = %if.end94
  %idxprom105 = zext i8 %buffer_type to i32
  %arrayidx106 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 %idxprom105
  %37 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx106, align 1
  %39 = or i8 %38, 2
  store i8 %39, ptr %arrayidx106, align 1
  %40 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %logging_level, align 8
  %and111 = and i32 %41, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.then103.out_crit_edge, label %do.end116

if.then103.out_crit_edge:                         ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end116:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #18
  %name118 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name118, ptr noundef nonnull @.str.32) #19
  br label %out

do.end124:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  %42 = tail call i16 @llvm.bswap.i16(i16 %36)
  %conv100 = zext i16 %42 to i32
  %name126 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %IOCLogInfo = getelementptr inbounds %struct._MPI2_DIAG_RELEASE_REPLY, ptr %33, i32 0, i32 12
  %43 = ptrtoint ptr %IOCLogInfo to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %IOCLogInfo, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name126, ptr noundef nonnull @.str.32, i32 noundef %conv100, i32 noundef %45) #19
  br label %out

out:                                              ; preds = %do.end124, %do.end116, %if.then103.out_crit_edge, %do.end89, %do.end68, %do.end42, %do.end31, %do.end18, %if.end11.out_crit_edge
  %rc.0 = phi i32 [ -11, %do.end31 ], [ -14, %do.end89 ], [ 0, %do.end116 ], [ 0, %if.then103.out_crit_edge ], [ -14, %do.end124 ], [ -14, %do.end68 ], [ -11, %do.end42 ], [ -11, %do.end18 ], [ -11, %if.end11.out_crit_edge ]
  %status132 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 4
  %46 = ptrtoint ptr %status132 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -32768, ptr %status132, align 4
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_ctl_clear_outstanding_ioctls(ptr noundef %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %0 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logging_level, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, ptr noundef nonnull @.str.8) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %status, align 4
  %4 = and i16 %3, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.not = icmp eq i16 %4, 0
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %or = or i16 %3, 8
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %or, ptr %status, align 4
  %smid = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 5
  %6 = ptrtoint ptr %smid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %smid, align 2
  tail call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %7) #16
  %done = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 1
  tail call void @complete(ptr noundef %done) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt3sas_base_free_smid(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_ctl_reset_done_handler(ptr noundef %ioc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %0 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logging_level, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name, ptr noundef nonnull @.str.10) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %if.end11, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %or = or i8 %3, 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %if.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.1, align 1
  %9 = and i8 %8, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %if.end11.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.end11.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %or.1 = or i8 %8, 4
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or.1, ptr %arrayidx.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end11.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.2, align 1
  %14 = and i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %if.end11.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.end11.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  %or.2 = or i8 %13, 4
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %or.2, ptr %arrayidx.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end11.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_enable_diag_buffer(ptr noundef %ioc, i8 noundef zeroext %bits_to_register) local_unnamed_addr #0 align 64 {
entry:
  %diag_register = alloca %struct.mpt3_diag_register, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %diag_register) #16
  %HostTraceBufferMaxSizeKB = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 106, i32 15
  %0 = ptrtoint ptr %HostTraceBufferMaxSizeKB to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %HostTraceBufferMaxSizeKB, align 4
  %conv = zext i16 %1 to i32
  %shl = shl nuw nsw i32 %conv, 10
  %2 = call ptr @memset(ptr %diag_register, i32 0, i32 120)
  %conv1 = zext i8 %bits_to_register to i32
  %and = and i32 %conv1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end91_crit_edge, label %do.end

entry.if.end91_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name) #19
  %diag_trigger_master = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 233
  %3 = ptrtoint ptr %diag_trigger_master to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %diag_trigger_master, align 8
  %buffer_type = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 2
  %4 = ptrtoint ptr %buffer_type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buffer_type, align 1
  %hba_mpi_version_belonged = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 86
  %5 = ptrtoint ptr %hba_mpi_version_belonged to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hba_mpi_version_belonged, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %6)
  %cmp = icmp eq i16 %6, 512
  %cond = select i1 %cmp, i32 117922048, i32 1112687437
  %unique_id = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 7
  %7 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %unique_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp4.not = icmp eq i16 %1, 0
  %requested_buffer_size35 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 6
  br i1 %cmp4.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end
  %8 = ptrtoint ptr %requested_buffer_size35 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl, ptr %requested_buffer_size35, align 4
  %HostTraceBufferMinSizeKB = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 106, i32 16
  %9 = ptrtoint ptr %HostTraceBufferMinSizeKB to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %HostTraceBufferMinSizeKB, align 2
  %conv8 = zext i16 %10 to i32
  %shl9 = shl nuw nsw i32 %conv8, 10
  %HostTraceBufferDecrementSizeKB = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 106, i32 13
  %11 = ptrtoint ptr %HostTraceBufferDecrementSizeKB to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %HostTraceBufferDecrementSizeKB, align 2
  %conv11 = zext i8 %12 to i32
  %shl12.neg = mul nsw i32 %conv11, -1024
  call void @__sanitizer_cov_trace_cmp4(i32 %shl9, i32 %shl)
  %cmp13 = icmp ugt i32 %shl9, %shl
  br i1 %cmp13, label %do.end18, label %if.then6.if.end_crit_edge

if.then6.if.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end18:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, i32 noundef %conv8, i32 noundef %conv) #19
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name) #19
  br label %if.end

if.end:                                           ; preds = %do.end18, %if.then6.if.end_crit_edge
  %min_trace_buff_size.0 = phi i32 [ 0, %do.end18 ], [ %shl9, %if.then6.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp31 = icmp eq i8 %12, 0
  %sub.neg = sub nsw i32 %min_trace_buff_size.0, %shl
  %spec.select = select i1 %cmp31, i32 %sub.neg, i32 %shl12.neg
  br label %if.end36

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %requested_buffer_size35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2097152, ptr %requested_buffer_size35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.end
  %decr_trace_buff_size.0.neg = phi i32 [ 0, %if.else ], [ %spec.select, %if.end ]
  %min_trace_buff_size.1 = phi i32 [ 0, %if.else ], [ %min_trace_buff_size.0, %if.end ]
  %call38157 = call fastcc i32 @_ctl_diag_register_2(ptr noundef %ioc, ptr noundef nonnull %diag_register)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call38157)
  %cmp39158 = icmp eq i32 %call38157, -12
  %cmp39.not159 = xor i1 %cmp39158, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_trace_buff_size.1)
  %tobool41.not = icmp eq i32 %min_trace_buff_size.1, 0
  %or.cond160 = select i1 %cmp39.not159, i1 true, i1 %tobool41.not
  br i1 %or.cond160, label %if.end36.do.end52_crit_edge, label %land.lhs.true42.lr.ph

if.end36.do.end52_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end52

land.lhs.true42.lr.ph:                            ; preds = %if.end36
  %requested_buffer_size48 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 6
  %sub43167 = add nsw i32 %shl, %decr_trace_buff_size.0.neg
  call void @__sanitizer_cov_trace_cmp4(i32 %sub43167, i32 %min_trace_buff_size.1)
  %cmp44.not168 = icmp ult i32 %sub43167, %min_trace_buff_size.1
  br i1 %cmp44.not168, label %land.lhs.true42.lr.ph.do.end52_crit_edge, label %land.lhs.true42.lr.ph.if.then46_crit_edge

land.lhs.true42.lr.ph.if.then46_crit_edge:        ; preds = %land.lhs.true42.lr.ph
  br label %if.then46

land.lhs.true42.lr.ph.do.end52_crit_edge:         ; preds = %land.lhs.true42.lr.ph
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end52

land.lhs.true42:                                  ; preds = %if.then46
  %sub43 = add i32 %sub43169, %decr_trace_buff_size.0.neg
  %cmp44.not = icmp ult i32 %sub43, %min_trace_buff_size.1
  br i1 %cmp44.not, label %land.lhs.true42.do.end58_crit_edge, label %land.lhs.true42.if.then46_crit_edge

land.lhs.true42.if.then46_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46

land.lhs.true42.do.end58_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end58

if.then46:                                        ; preds = %land.lhs.true42.if.then46_crit_edge, %land.lhs.true42.lr.ph.if.then46_crit_edge
  %sub43169 = phi i32 [ %sub43, %land.lhs.true42.if.then46_crit_edge ], [ %sub43167, %land.lhs.true42.lr.ph.if.then46_crit_edge ]
  %14 = ptrtoint ptr %requested_buffer_size48 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub43169, ptr %requested_buffer_size48, align 4
  %call38 = call fastcc i32 @_ctl_diag_register_2(ptr noundef %ioc, ptr noundef nonnull %diag_register)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call38)
  %cmp39 = icmp eq i32 %call38, -12
  br i1 %cmp39, label %land.lhs.true42, label %if.then46.if.else65_crit_edge

if.then46.if.else65_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else65

do.end52:                                         ; preds = %land.lhs.true42.lr.ph.do.end52_crit_edge, %if.end36.do.end52_crit_edge
  br i1 %cmp39158, label %do.end52.do.end58_crit_edge, label %do.end52.if.else65_crit_edge

do.end52.if.else65_crit_edge:                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else65

do.end52.do.end58_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end58

do.end58:                                         ; preds = %do.end52.do.end58_crit_edge, %land.lhs.true42.do.end58_crit_edge
  %requested_buffer_size62 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 6
  %15 = ptrtoint ptr %requested_buffer_size62 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %requested_buffer_size62, align 4
  %shr63 = lshr i32 %16, 10
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %shr63) #19
  br label %if.end91

if.else65:                                        ; preds = %do.end52.if.else65_crit_edge, %if.then46.if.else65_crit_edge
  %diag_buffer_status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216
  %17 = ptrtoint ptr %diag_buffer_status to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %diag_buffer_status, align 4
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool68.not = icmp eq i8 %19, 0
  br i1 %tobool68.not, label %if.else65.if.end91_crit_edge, label %do.end72

if.else65.if.end91_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

do.end72:                                         ; preds = %if.else65
  %requested_buffer_size76 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 6
  %20 = ptrtoint ptr %requested_buffer_size76 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %requested_buffer_size76, align 4
  %shr77 = lshr i32 %21, 10
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %shr77) #19
  %22 = ptrtoint ptr %hba_mpi_version_belonged to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hba_mpi_version_belonged, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %23)
  %cmp81.not = icmp eq i16 %23, 512
  br i1 %cmp81.not, label %do.end72.if.end91_crit_edge, label %if.then83

do.end72.if.end91_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end91

if.then83:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %diag_buffer_status to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %diag_buffer_status, align 4
  %26 = or i8 %25, 8
  store i8 %26, ptr %diag_buffer_status, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then83, %do.end72.if.end91_crit_edge, %if.else65.if.end91_crit_edge, %do.end58, %entry.if.end91_crit_edge
  %and93 = and i32 %conv1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end91.if.end107_crit_edge, label %do.end98

if.end91.if.end107_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end107

do.end98:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #18
  %name100 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name100) #19
  %buffer_type103 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 2
  %27 = ptrtoint ptr %buffer_type103 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %buffer_type103, align 1
  %requested_buffer_size104 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 6
  %28 = ptrtoint ptr %requested_buffer_size104 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2097152, ptr %requested_buffer_size104, align 4
  %unique_id105 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 7
  %29 = ptrtoint ptr %unique_id105 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 117922049, ptr %unique_id105, align 4
  %call106 = call fastcc i32 @_ctl_diag_register_2(ptr noundef %ioc, ptr noundef nonnull %diag_register)
  br label %if.end107

if.end107:                                        ; preds = %do.end98, %if.end91.if.end107_crit_edge
  %and109 = and i32 %conv1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end107.if.end123_crit_edge, label %do.end114

if.end107.if.end123_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end123

do.end114:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #18
  %name116 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name116) #19
  %buffer_type119 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 2
  %30 = ptrtoint ptr %buffer_type119 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %buffer_type119, align 1
  %requested_buffer_size120 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 6
  %31 = ptrtoint ptr %requested_buffer_size120 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2097152, ptr %requested_buffer_size120, align 4
  %unique_id121 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 7
  %32 = ptrtoint ptr %unique_id121 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 117922049, ptr %unique_id121, align 4
  %call122 = call fastcc i32 @_ctl_diag_register_2(ptr noundef %ioc, ptr noundef nonnull %diag_register)
  br label %if.end123

if.end123:                                        ; preds = %do.end114, %if.end107.if.end123_crit_edge
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %diag_register) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_diag_register_2(ptr noundef %ioc, ptr nocapture noundef readonly %diag_register) unnamed_addr #0 align 64 {
entry:
  %request_data_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %request_data_dma) #16
  %0 = ptrtoint ptr %request_data_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %request_data_dma, align 4, !annotation !822
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %1 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %logging_level, align 8
  %and = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef nonnull @.str.100) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = tail call i32 @mpt3sas_base_get_iocstate(ptr noundef %ioc, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 536870912
  br i1 %cmp.not, label %if.end10, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %name7 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %name7, ptr noundef nonnull @.str.100) #19
  br label %if.end412

if.end10:                                         ; preds = %if.end
  %status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 4
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %4)
  %cmp11.not = icmp eq i16 %4, -32768
  br i1 %cmp11.not, label %if.end21, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %name18 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name18, ptr noundef nonnull @.str.100) #19
  br label %if.end412

if.end21:                                         ; preds = %if.end10
  %buffer_type22 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 2
  %5 = ptrtoint ptr %buffer_type22 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buffer_type22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %7 = icmp ult i8 %6, 3
  br i1 %7, label %switch.lookup, label %if.end21.do.end28_crit_edge

if.end21.do.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end28

switch.lookup:                                    ; preds = %if.end21
  %switch.offset = add i8 %6, 3
  %IOCCapabilities10.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 101, i32 14
  %8 = ptrtoint ptr %IOCCapabilities10.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %IOCCapabilities10.i, align 4
  %10 = trunc i32 %9 to i8
  %11 = shl nuw nsw i8 1, %switch.offset
  %12 = and i8 %11, %10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool24.not = icmp eq i8 %12, 0
  br i1 %tobool24.not, label %switch.lookup.do.end28_crit_edge, label %if.end34

switch.lookup.do.end28_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end28

do.end28:                                         ; preds = %switch.lookup.do.end28_crit_edge, %if.end21.do.end28_crit_edge
  %name30 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %conv32 = zext i8 %6 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name30, ptr noundef nonnull @.str.100, i32 noundef %conv32) #19
  br label %cleanup

if.end34:                                         ; preds = %switch.lookup
  %unique_id = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 7
  %13 = ptrtoint ptr %unique_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %unique_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp35 = icmp eq i32 %14, 0
  br i1 %cmp35, label %do.end40, label %if.end47

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %name42 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %conv45 = zext i8 %6 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %name42, ptr noundef nonnull @.str.100, i32 noundef 0, i32 noundef %conv45) #19
  br label %cleanup

if.end47:                                         ; preds = %if.end34
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv48 = zext i8 %16 to i32
  %and55 = and i32 %conv48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %17 = and i32 %conv48, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %17)
  %18 = icmp eq i32 %17, 16
  br i1 %18, label %do.end60, label %if.end69

do.end60:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %name62 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %arrayidx67 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx67, align 4
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name62, ptr noundef nonnull @.str.100, i32 noundef %idxprom, i32 noundef %20) #19
  br label %cleanup

if.end69:                                         ; preds = %if.end47
  %and74 = and i32 %conv48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.else163, label %if.then76

if.then76:                                        ; preds = %if.end69
  %arrayidx79 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1112687437, i32 %22)
  %cmp80 = icmp eq i32 %22, 1112687437
  br i1 %cmp80, label %land.lhs.true82, label %if.then122

land.lhs.true82:                                  ; preds = %if.then76
  %arrayidx84 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 214, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx84, align 4
  %requested_buffer_size = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 6
  %25 = ptrtoint ptr %requested_buffer_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %requested_buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp85 = icmp eq i32 %24, %26
  br i1 %cmp85, label %if.then87, label %do.end155

if.then87:                                        ; preds = %land.lhs.true82
  br i1 %tobool56.not, label %if.then94, label %if.then87.if.end197_crit_edge

if.then87.if.end197_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end197

if.then94:                                        ; preds = %if.then87
  %27 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %logging_level, align 8
  %and96 = and i32 %28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.then94.if.end111_crit_edge, label %do.end101

if.then94.if.end111_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111

do.end101:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #18
  %name103 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name103, ptr noundef nonnull @.str.100, i32 noundef %idxprom, i32 noundef 1112687437, i32 noundef %14) #19
  br label %if.end111

if.end111:                                        ; preds = %do.end101, %if.then94.if.end111_crit_edge
  %29 = ptrtoint ptr %unique_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %unique_id, align 4
  %31 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx79, align 4
  br label %if.end412

if.then122:                                       ; preds = %if.then76
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %14)
  %cmp127.not = icmp eq i32 %22, %14
  br i1 %cmp127.not, label %lor.lhs.false, label %if.then122.do.end145_crit_edge

if.then122.do.end145_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end145

lor.lhs.false:                                    ; preds = %if.then122
  %arrayidx131 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 214, i32 %idxprom
  %32 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx131, align 4
  %requested_buffer_size132 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 6
  %34 = ptrtoint ptr %requested_buffer_size132 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %requested_buffer_size132, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp133.not = icmp ne i32 %33, %35
  %36 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool141.not = icmp eq i8 %36, 0
  %or.cond621 = select i1 %cmp133.not, i1 true, i1 %tobool141.not
  br i1 %or.cond621, label %lor.lhs.false.do.end145_crit_edge, label %lor.lhs.false.if.end197_crit_edge

lor.lhs.false.if.end197_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end197

lor.lhs.false.do.end145_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end145

do.end145:                                        ; preds = %lor.lhs.false.do.end145_crit_edge, %if.then122.do.end145_crit_edge
  %name147 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name147, ptr noundef nonnull @.str.100, i32 noundef %idxprom) #19
  br label %cleanup

do.end155:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #18
  %name157 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name157, ptr noundef nonnull @.str.100, i32 noundef %idxprom) #19
  br label %cleanup

if.else163:                                       ; preds = %if.end69
  %and168 = and i32 %conv48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.else163.if.end197_crit_edge, label %if.then170

if.else163.if.end197_crit_edge:                   ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end197

if.then170:                                       ; preds = %if.else163
  %arrayidx173 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 %idxprom
  %37 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1112687437, i32 %38)
  %cmp174.not = icmp eq i32 %38, 1112687437
  br i1 %cmp174.not, label %lor.lhs.false176, label %if.then170.do.end186_crit_edge

if.then170.do.end186_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end186

lor.lhs.false176:                                 ; preds = %if.then170
  %arrayidx179 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 214, i32 %idxprom
  %39 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx179, align 4
  %requested_buffer_size180 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 6
  %41 = ptrtoint ptr %requested_buffer_size180 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %requested_buffer_size180, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp181.not = icmp eq i32 %40, %42
  br i1 %cmp181.not, label %lor.lhs.false176.if.end197_crit_edge, label %lor.lhs.false176.do.end186_crit_edge

lor.lhs.false176.do.end186_crit_edge:             ; preds = %lor.lhs.false176
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end186

lor.lhs.false176.if.end197_crit_edge:             ; preds = %lor.lhs.false176
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end197

do.end186:                                        ; preds = %lor.lhs.false176.do.end186_crit_edge, %if.then170.do.end186_crit_edge
  %name188 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %arrayidx193 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 214, i32 %idxprom
  %43 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx193, align 4
  %call194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef %name188, ptr noundef nonnull @.str.100, i32 noundef %idxprom, i32 noundef %44) #19
  br label %cleanup

if.end197:                                        ; preds = %lor.lhs.false176.if.end197_crit_edge, %if.else163.if.end197_crit_edge, %lor.lhs.false.if.end197_crit_edge, %if.then87.if.end197_crit_edge
  %requested_buffer_size198 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 6
  %45 = ptrtoint ptr %requested_buffer_size198 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %requested_buffer_size198, align 4
  %rem = and i32 %46, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool199.not = icmp eq i32 %rem, 0
  br i1 %tobool199.not, label %if.end208, label %do.end203

do.end203:                                        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #18
  %name205 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name205, ptr noundef nonnull @.str.100) #19
  br label %cleanup

if.end208:                                        ; preds = %if.end197
  %ctl_cb_idx = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 67
  %47 = ptrtoint ptr %ctl_cb_idx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ctl_cb_idx, align 8
  %call209 = tail call zeroext i16 @mpt3sas_base_get_smid(ptr noundef %ioc, i8 noundef zeroext %48) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call209)
  %tobool210.not = icmp eq i16 %call209, 0
  br i1 %tobool210.not, label %do.end214, label %if.end219

do.end214:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #18
  %name216 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name216, ptr noundef nonnull @.str.100) #19
  br label %if.end412

if.end219:                                        ; preds = %if.end208
  %49 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 2, ptr %status, align 4
  %reply = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 2
  %50 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reply, align 4
  %reply_sz = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 181
  %52 = ptrtoint ptr %reply_sz to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %reply_sz, align 4
  %conv223 = zext i16 %53 to i32
  %54 = call ptr @memset(ptr %51, i32 0, i32 %conv223)
  %call224 = tail call ptr @mpt3sas_base_get_msg_frame(ptr noundef %ioc, i16 noundef zeroext %call209) #16
  %smid226 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 5
  %55 = ptrtoint ptr %smid226 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %call209, ptr %smid226, align 2
  %arrayidx228 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 213, i32 %idxprom
  %56 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx228, align 4
  %58 = ptrtoint ptr %requested_buffer_size198 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %requested_buffer_size198, align 4
  %60 = ptrtoint ptr %unique_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %unique_id, align 4
  %arrayidx233 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 %idxprom
  %62 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx233, align 4
  %htb_rel = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 222
  %63 = call ptr @memset(ptr %htb_rel, i32 0, i32 17)
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx, align 1
  %66 = and i8 %65, 8
  store i8 %66, ptr %arrayidx, align 1
  %arrayidx241 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom
  %product_specific243 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 5
  %67 = call ptr @memcpy(ptr %arrayidx241, ptr %product_specific243, i32 23)
  %diagnostic_flags = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 4
  %68 = ptrtoint ptr %diagnostic_flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %diagnostic_flags, align 4
  %arrayidx247 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 219, i32 %idxprom
  %70 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx247, align 4
  %tobool248.not = icmp eq ptr %57, null
  br i1 %tobool248.not, label %if.end219.if.then265_crit_edge, label %if.then249

if.end219.if.then265_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then265

if.then249:                                       ; preds = %if.end219
  %arrayidx251 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 215, i32 %idxprom
  %71 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx251, align 4
  %73 = ptrtoint ptr %request_data_dma to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %request_data_dma, align 4
  %arrayidx254 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 214, i32 %idxprom
  %74 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx254, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %75)
  %cmp255.not = icmp eq i32 %59, %75
  br i1 %cmp255.not, label %if.then249.if.end295_crit_edge, label %if.then257

if.then249.if.end295_crit_edge:                   ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end295

if.then257:                                       ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #18
  %pdev = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 7
  %76 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %75, ptr noundef nonnull %57, i32 noundef %72, i32 noundef 0) #16
  br label %if.then265

if.then265:                                       ; preds = %if.then257, %if.end219.if.then265_crit_edge
  %arrayidx268 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 214, i32 %idxprom
  %78 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %arrayidx268, align 4
  %arrayidx271 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 215, i32 %idxprom
  %79 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %arrayidx271, align 4
  %pdev272 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 7
  %80 = ptrtoint ptr %pdev272 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pdev272, align 4
  %dev273 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev273, i32 noundef %59, ptr noundef nonnull %request_data_dma, i32 noundef 3264, i32 noundef 0) #16
  %cmp275 = icmp eq ptr %call.i, null
  br i1 %cmp275, label %do.end280, label %if.end285

do.end280:                                        ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #18
  %name282 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %name282, ptr noundef nonnull @.str.100, i32 noundef %59) #19
  call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %call209) #16
  br label %if.end412

if.end285:                                        ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #18
  %82 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i, ptr %arrayidx228, align 4
  %83 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %59, ptr %arrayidx268, align 4
  %84 = ptrtoint ptr %request_data_dma to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %request_data_dma, align 4
  %86 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx271, align 4
  br label %if.end295

if.end295:                                        ; preds = %if.end285, %if.then249.if.end295_crit_edge
  %request_data.1 = phi ptr [ %call.i, %if.end285 ], [ %57, %if.then249.if.end295_crit_edge ]
  %Function = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 3
  %87 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 29, ptr %Function, align 1
  %88 = ptrtoint ptr %buffer_type22 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %buffer_type22, align 1
  %BufferType = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 1
  %90 = ptrtoint ptr %BufferType to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %BufferType, align 1
  %91 = ptrtoint ptr %diagnostic_flags to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %diagnostic_flags, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  %Flags = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 14
  %94 = ptrtoint ptr %Flags to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %Flags, align 4
  %95 = ptrtoint ptr %request_data_dma to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %request_data_dma, align 4
  %conv298 = zext i32 %96 to i64
  %97 = call i64 @llvm.bswap.i64(i64 %conv298)
  %BufferAddress = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 10
  %98 = ptrtoint ptr %BufferAddress to i32
  call void @__asan_storeN_noabort(i32 %98, i32 8)
  store i64 %97, ptr %BufferAddress, align 4
  %99 = call i32 @llvm.bswap.i32(i32 %59)
  %BufferLength = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 11
  %100 = ptrtoint ptr %BufferLength to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %BufferLength, align 4
  %VF_ID = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 8
  %101 = ptrtoint ptr %VF_ID to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %VF_ID, align 1
  %VP_ID = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 7
  %102 = ptrtoint ptr %VP_ID to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %VP_ID, align 4
  %103 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %logging_level, align 8
  %and300 = and i32 %104, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and300)
  %tobool301.not = icmp eq i32 %and300, 0
  br i1 %tobool301.not, label %if.end295.if.end312_crit_edge, label %do.end305

if.end295.if.end312_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end312

do.end305:                                        ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #18
  %name307 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call311 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %name307, ptr noundef nonnull @.str.100, ptr noundef nonnull %request_data.1, i64 noundef %conv298, i32 noundef %59) #19
  br label %if.end312

if.end312:                                        ; preds = %do.end305, %if.end295.if.end312_crit_edge
  %105 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx241, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  %arrayidx319 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 0
  %108 = ptrtoint ptr %arrayidx319 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %arrayidx319, align 4
  %arrayidx318.1 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 1
  %109 = ptrtoint ptr %arrayidx318.1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx318.1, align 4
  %111 = call i32 @llvm.bswap.i32(i32 %110)
  %arrayidx319.1 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 1
  %112 = ptrtoint ptr %arrayidx319.1 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %arrayidx319.1, align 4
  %arrayidx318.2 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 2
  %113 = ptrtoint ptr %arrayidx318.2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx318.2, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %114)
  %arrayidx319.2 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 2
  %116 = ptrtoint ptr %arrayidx319.2 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx319.2, align 4
  %arrayidx318.3 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 3
  %117 = ptrtoint ptr %arrayidx318.3 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx318.3, align 4
  %119 = call i32 @llvm.bswap.i32(i32 %118)
  %arrayidx319.3 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 3
  %120 = ptrtoint ptr %arrayidx319.3 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %arrayidx319.3, align 4
  %arrayidx318.4 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 4
  %121 = ptrtoint ptr %arrayidx318.4 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx318.4, align 4
  %123 = call i32 @llvm.bswap.i32(i32 %122)
  %arrayidx319.4 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 4
  %124 = ptrtoint ptr %arrayidx319.4 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx319.4, align 4
  %arrayidx318.5 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 5
  %125 = ptrtoint ptr %arrayidx318.5 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx318.5, align 4
  %127 = call i32 @llvm.bswap.i32(i32 %126)
  %arrayidx319.5 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 5
  %128 = ptrtoint ptr %arrayidx319.5 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %arrayidx319.5, align 4
  %arrayidx318.6 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 6
  %129 = ptrtoint ptr %arrayidx318.6 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx318.6, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %130)
  %arrayidx319.6 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 6
  %132 = ptrtoint ptr %arrayidx319.6 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx319.6, align 4
  %arrayidx318.7 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 7
  %133 = ptrtoint ptr %arrayidx318.7 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx318.7, align 4
  %135 = call i32 @llvm.bswap.i32(i32 %134)
  %arrayidx319.7 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 7
  %136 = ptrtoint ptr %arrayidx319.7 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %arrayidx319.7, align 4
  %arrayidx318.8 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 8
  %137 = ptrtoint ptr %arrayidx318.8 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx318.8, align 4
  %139 = call i32 @llvm.bswap.i32(i32 %138)
  %arrayidx319.8 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 8
  %140 = ptrtoint ptr %arrayidx319.8 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %arrayidx319.8, align 4
  %arrayidx318.9 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 9
  %141 = ptrtoint ptr %arrayidx318.9 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx318.9, align 4
  %143 = call i32 @llvm.bswap.i32(i32 %142)
  %arrayidx319.9 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 9
  %144 = ptrtoint ptr %arrayidx319.9 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %arrayidx319.9, align 4
  %arrayidx318.10 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 10
  %145 = ptrtoint ptr %arrayidx318.10 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx318.10, align 4
  %147 = call i32 @llvm.bswap.i32(i32 %146)
  %arrayidx319.10 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 10
  %148 = ptrtoint ptr %arrayidx319.10 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %arrayidx319.10, align 4
  %arrayidx318.11 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 11
  %149 = ptrtoint ptr %arrayidx318.11 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx318.11, align 4
  %151 = call i32 @llvm.bswap.i32(i32 %150)
  %arrayidx319.11 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 11
  %152 = ptrtoint ptr %arrayidx319.11 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %arrayidx319.11, align 4
  %arrayidx318.12 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 12
  %153 = ptrtoint ptr %arrayidx318.12 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx318.12, align 4
  %155 = call i32 @llvm.bswap.i32(i32 %154)
  %arrayidx319.12 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 12
  %156 = ptrtoint ptr %arrayidx319.12 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %arrayidx319.12, align 4
  %arrayidx318.13 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 13
  %157 = ptrtoint ptr %arrayidx318.13 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx318.13, align 4
  %159 = call i32 @llvm.bswap.i32(i32 %158)
  %arrayidx319.13 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 13
  %160 = ptrtoint ptr %arrayidx319.13 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %arrayidx319.13, align 4
  %arrayidx318.14 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 14
  %161 = ptrtoint ptr %arrayidx318.14 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx318.14, align 4
  %163 = call i32 @llvm.bswap.i32(i32 %162)
  %arrayidx319.14 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 14
  %164 = ptrtoint ptr %arrayidx319.14 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %arrayidx319.14, align 4
  %arrayidx318.15 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 15
  %165 = ptrtoint ptr %arrayidx318.15 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx318.15, align 4
  %167 = call i32 @llvm.bswap.i32(i32 %166)
  %arrayidx319.15 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 15
  %168 = ptrtoint ptr %arrayidx319.15 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %arrayidx319.15, align 4
  %arrayidx318.16 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 16
  %169 = ptrtoint ptr %arrayidx318.16 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx318.16, align 4
  %171 = call i32 @llvm.bswap.i32(i32 %170)
  %arrayidx319.16 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 16
  %172 = ptrtoint ptr %arrayidx319.16 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %arrayidx319.16, align 4
  %arrayidx318.17 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 17
  %173 = ptrtoint ptr %arrayidx318.17 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx318.17, align 4
  %175 = call i32 @llvm.bswap.i32(i32 %174)
  %arrayidx319.17 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 17
  %176 = ptrtoint ptr %arrayidx319.17 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %arrayidx319.17, align 4
  %arrayidx318.18 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 18
  %177 = ptrtoint ptr %arrayidx318.18 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx318.18, align 4
  %179 = call i32 @llvm.bswap.i32(i32 %178)
  %arrayidx319.18 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 18
  %180 = ptrtoint ptr %arrayidx319.18 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %arrayidx319.18, align 4
  %arrayidx318.19 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 19
  %181 = ptrtoint ptr %arrayidx318.19 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx318.19, align 4
  %183 = call i32 @llvm.bswap.i32(i32 %182)
  %arrayidx319.19 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 19
  %184 = ptrtoint ptr %arrayidx319.19 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %arrayidx319.19, align 4
  %arrayidx318.20 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 20
  %185 = ptrtoint ptr %arrayidx318.20 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx318.20, align 4
  %187 = call i32 @llvm.bswap.i32(i32 %186)
  %arrayidx319.20 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 20
  %188 = ptrtoint ptr %arrayidx319.20 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %arrayidx319.20, align 4
  %arrayidx318.21 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 21
  %189 = ptrtoint ptr %arrayidx318.21 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx318.21, align 4
  %191 = call i32 @llvm.bswap.i32(i32 %190)
  %arrayidx319.21 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 21
  %192 = ptrtoint ptr %arrayidx319.21 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %arrayidx319.21, align 4
  %arrayidx318.22 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %idxprom, i32 22
  %193 = ptrtoint ptr %arrayidx318.22 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx318.22, align 4
  %195 = call i32 @llvm.bswap.i32(i32 %194)
  %arrayidx319.22 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call224, i32 0, i32 15, i32 22
  %196 = ptrtoint ptr %arrayidx319.22 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %arrayidx319.22, align 4
  %done = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 1
  %197 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.145, ptr noundef nonnull @init_completion.__key) #16
  %put_smid_default = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 247
  %198 = ptrtoint ptr %put_smid_default to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %put_smid_default, align 8
  call void %199(ptr noundef %ioc, i16 noundef zeroext %call209) #16
  %call323 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 1000) #16
  %200 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %status, align 4
  %conv326 = zext i16 %201 to i32
  %and327 = and i32 %conv326, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327)
  %tobool328.not = icmp eq i32 %and327, 0
  br i1 %tobool328.not, label %issue_host_reset, label %if.end344

if.end344:                                        ; preds = %if.end312
  %and348 = and i32 %conv326, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and348)
  %cmp349 = icmp eq i32 %and348, 0
  br i1 %cmp349, label %do.end354, label %if.end359

do.end354:                                        ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #18
  %name356 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call358 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name356, ptr noundef nonnull @.str.100) #19
  br label %if.then403

if.end359:                                        ; preds = %if.end344
  %202 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %reply, align 4
  %IOCStatus = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REPLY, ptr %203, i32 0, i32 11
  %204 = ptrtoint ptr %IOCStatus to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %IOCStatus, align 2
  %206 = and i16 %205, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %206)
  %cmp366 = icmp eq i16 %206, 0
  br i1 %cmp366, label %if.then368, label %do.end389

if.then368:                                       ; preds = %if.end359
  %207 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx, align 1
  %209 = or i8 %208, 1
  store i8 %209, ptr %arrayidx, align 1
  %210 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %logging_level, align 8
  %and375 = and i32 %211, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and375)
  %tobool376.not = icmp eq i32 %and375, 0
  br i1 %tobool376.not, label %if.then368.if.end412_crit_edge, label %do.end380

if.then368.if.end412_crit_edge:                   ; preds = %if.then368
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end412

do.end380:                                        ; preds = %if.then368
  call void @__sanitizer_cov_trace_pc() #18
  %name382 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call384 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name382, ptr noundef nonnull @.str.100) #19
  br label %if.end412

do.end389:                                        ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #18
  %212 = call i16 @llvm.bswap.i16(i16 %206)
  %conv365 = zext i16 %212 to i32
  %name391 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %IOCLogInfo = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REPLY, ptr %203, i32 0, i32 12
  %213 = ptrtoint ptr %IOCLogInfo to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %IOCLogInfo, align 4
  %215 = call i32 @llvm.bswap.i32(i32 %214)
  %call394 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name391, ptr noundef nonnull @.str.100, i32 noundef %conv365, i32 noundef %215) #19
  br label %if.then403

issue_host_reset:                                 ; preds = %if.end312
  %name335 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name335, ptr noundef nonnull @.str.100) #19
  %216 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %status, align 4
  %conv340 = trunc i16 %217 to i8
  %call341 = call zeroext i8 @mpt3sas_base_check_cmd_timeout(ptr noundef %ioc, i8 noundef zeroext %conv340, ptr noundef %call224, i32 noundef 32) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call341)
  %phi.cmp = icmp eq i8 %call341, 0
  br i1 %phi.cmp, label %issue_host_reset.if.end412_crit_edge, label %if.then397

issue_host_reset.if.end412_crit_edge:             ; preds = %issue_host_reset
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end412

if.then397:                                       ; preds = %issue_host_reset
  call void @__sanitizer_cov_trace_pc() #18
  %call398 = call i32 @mpt3sas_base_hard_reset_handler(ptr noundef %ioc, i32 noundef 0) #16
  br label %if.end412

if.then403:                                       ; preds = %do.end389, %do.end354
  %pdev404 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 7
  %218 = ptrtoint ptr %pdev404 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pdev404, align 4
  %dev405 = getelementptr inbounds %struct.pci_dev, ptr %219, i32 0, i32 44
  %220 = ptrtoint ptr %request_data_dma to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %request_data_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev405, i32 noundef %59, ptr noundef nonnull %request_data.1, i32 noundef %221, i32 noundef 0) #16
  %222 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx, align 1
  %224 = and i8 %223, -9
  store i8 %224, ptr %arrayidx, align 1
  br label %if.end412

if.end412:                                        ; preds = %if.then403, %if.then397, %issue_host_reset.if.end412_crit_edge, %do.end380, %if.then368.if.end412_crit_edge, %do.end280, %do.end214, %if.end111, %do.end16, %do.end5
  %rc.1611 = phi i32 [ -14, %if.then403 ], [ 0, %if.end111 ], [ -11, %do.end214 ], [ 0, %issue_host_reset.if.end412_crit_edge ], [ 0, %if.then397 ], [ -12, %do.end280 ], [ -11, %do.end16 ], [ -11, %do.end5 ], [ 0, %if.then368.if.end412_crit_edge ], [ 0, %do.end380 ]
  %status414 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 4
  %225 = ptrtoint ptr %status414 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 -32768, ptr %status414, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end412, %do.end203, %do.end186, %do.end155, %do.end145, %do.end60, %do.end40, %do.end28
  %retval.0 = phi i32 [ %rc.1611, %if.end412 ], [ -22, %do.end40 ], [ -22, %do.end203 ], [ -22, %do.end145 ], [ -22, %do.end155 ], [ -22, %do.end186 ], [ -22, %do.end60 ], [ -1, %do.end28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %request_data_dma) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_base_get_iocstate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mpt3sas_base_get_smid(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_base_get_msg_frame(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mpt3sas_base_check_cmd_timeout(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_ctl_init(i16 noundef zeroext %hbas_to_enumerate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr null, ptr @async_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %hbas_to_enumerate)
  %cond = icmp eq i16 %hbas_to_enumerate, 1
  br i1 %cond, label %entry.if.then10_crit_edge, label %if.then

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then10

if.then:                                          ; preds = %entry
  %call = tail call i32 @misc_register(ptr noundef nonnull @ctl_dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %do.end, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.56, i32 noundef 222) #19
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %hbas_to_enumerate)
  %cmp8.not = icmp eq i16 %hbas_to_enumerate, 2
  br i1 %cmp8.not, label %if.end6.do.body21_crit_edge, label %if.end6.if.then10_crit_edge

if.end6.if.then10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then10

if.end6.do.body21_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body21

if.then10:                                        ; preds = %if.end6.if.then10_crit_edge, %entry.if.then10_crit_edge
  %call11 = tail call i32 @misc_register(ptr noundef nonnull @gen2_ctl_dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.then10.do.body21_crit_edge

if.then10.do.body21_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body21

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.59, i32 noundef 221) #19
  br label %do.body21

do.body21:                                        ; preds = %do.end16, %if.then10.do.body21_crit_edge, %if.end6.do.body21_crit_edge
  tail call void @__init_waitqueue_head(ptr noundef nonnull @ctl_poll_wait, ptr noundef nonnull @.str.60, ptr noundef nonnull @mpt3sas_ctl_init.__key) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_ctl_exit(i16 noundef zeroext %hbas_to_enumerate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mpt3sas_ioc_list to i32))
  %ioc.045 = load ptr, ptr @mpt3sas_ioc_list, align 4
  %cmp.not46 = icmp eq ptr %ioc.045, @mpt3sas_ioc_list
  br i1 %cmp.not46, label %entry.for.end16_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

entry.for.end16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end16

for.cond1.preheader:                              ; preds = %for.inc.2.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %ioc.047 = phi ptr [ %ioc.0, %for.inc.2.for.cond1.preheader_crit_edge ], [ %ioc.045, %entry.for.cond1.preheader_crit_edge ]
  %pdev = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc.047, i32 0, i32 7
  %arrayidx = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc.047, i32 0, i32 213, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.cond1.preheader.for.inc_crit_edge, label %if.end

for.cond1.preheader.for.inc_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %arrayidx4 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc.047, i32 0, i32 214, i32 0
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %arrayidx7 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc.047, i32 0, i32 215, i32 0
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0) #16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx10 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc.047, i32 0, i32 216, i32 0
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.cond1.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc.047, i32 0, i32 213, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %11, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %arrayidx4.1 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc.047, i32 0, i32 214, i32 1
  %14 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.1, align 4
  %arrayidx7.1 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc.047, i32 0, i32 215, i32 1
  %16 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7.1, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.1, i32 noundef %15, ptr noundef nonnull %11, i32 noundef %17, i32 noundef 0) #16
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx10.1 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc.047, i32 0, i32 216, i32 1
  %19 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx10.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc.047, i32 0, i32 213, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %21, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 4
  %dev.2 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %arrayidx4.2 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc.047, i32 0, i32 214, i32 2
  %24 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4.2, align 4
  %arrayidx7.2 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc.047, i32 0, i32 215, i32 2
  %26 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx7.2, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.2, i32 noundef %25, ptr noundef nonnull %21, i32 noundef %27, i32 noundef 0) #16
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx.2, align 4
  %arrayidx10.2 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc.047, i32 0, i32 216, i32 2
  %29 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx10.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %event_log = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc.047, i32 0, i32 92
  %30 = ptrtoint ptr %event_log to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %event_log, align 4
  tail call void @kfree(ptr noundef %31) #16
  %32 = ptrtoint ptr %ioc.047 to i32
  call void @__asan_load4_noabort(i32 %32)
  %ioc.0 = load ptr, ptr %ioc.047, align 4
  %cmp.not = icmp eq ptr %ioc.0, @mpt3sas_ioc_list
  br i1 %cmp.not, label %for.inc.2.for.end16_crit_edge, label %for.inc.2.for.cond1.preheader_crit_edge

for.inc.2.for.cond1.preheader_crit_edge:          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond1.preheader

for.inc.2.for.end16_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end16

for.end16:                                        ; preds = %for.inc.2.for.end16_crit_edge, %entry.for.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %hbas_to_enumerate)
  %cond = icmp eq i16 %hbas_to_enumerate, 1
  br i1 %cond, label %for.end16.if.then24_crit_edge, label %if.then19

for.end16.if.then24_crit_edge:                    ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

if.then19:                                        ; preds = %for.end16
  tail call void @misc_deregister(ptr noundef nonnull @ctl_dev) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %hbas_to_enumerate)
  %cmp22.not = icmp eq i16 %hbas_to_enumerate, 2
  br i1 %cmp22.not, label %if.then19.if.end25_crit_edge, label %if.then19.if.then24_crit_edge

if.then19.if.then24_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then24:                                        ; preds = %if.then19.if.then24_crit_edge, %for.end16.if.then24_crit_edge
  tail call void @misc_deregister(ptr noundef nonnull @gen2_ctl_dev) #16
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then19.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_get_sdev_by_handle(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sas_device_put(ptr noundef %s) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %refcount = getelementptr inbounds %struct._sas_device, ptr %s, i32 0, i32 23
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !823
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !824
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !825

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #16
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !826
  tail call void @kfree(ptr noundef %s) #16
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_get_pdev_by_handle(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcie_device_put(ptr noundef %p) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %refcount = getelementptr inbounds %struct._pcie_device, ptr %p, i32 0, i32 20
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !823
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #16, !srcloc !824
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !825

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #16
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !826
  tail call void @kfree(ptr noundef %p) #16
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_base_hard_reset_handler(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_fw_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %FWVersion = getelementptr i8, ptr %cdev, i32 2808
  %0 = ptrtoint ptr %FWVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %FWVersion, align 4
  %shr = lshr i32 %1, 24
  %and3 = lshr i32 %1, 16
  %shr4 = and i32 %and3, 255
  %and7 = lshr i32 %1, 8
  %shr8 = and i32 %and7, 255
  %and11 = and i32 %1, 255
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.147, i32 noundef %shr, i32 noundef %shr4, i32 noundef %shr8, i32 noundef %and11)
  ret i32 %call12
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_bios_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %BiosVersion = getelementptr i8, ptr %cdev, i32 3296
  %0 = ptrtoint ptr %BiosVersion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %BiosVersion, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %shr = lshr i32 %2, 24
  %and1 = lshr i32 %2, 16
  %shr2 = and i32 %and1, 255
  %and3 = lshr i32 %2, 8
  %shr4 = and i32 %and3, 255
  %and5 = and i32 %2, 255
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.147, i32 noundef %shr, i32 noundef %shr2, i32 noundef %shr4, i32 noundef %and5)
  ret i32 %call6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_mpi_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %facts = getelementptr i8, ptr %cdev, i32 2780
  %0 = ptrtoint ptr %facts to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %facts, align 4
  %conv = zext i16 %1 to i32
  %HeaderVersion = getelementptr i8, ptr %cdev, i32 2782
  %2 = ptrtoint ptr %HeaderVersion to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %HeaderVersion, align 2
  %4 = lshr i16 %3, 8
  %5 = zext i16 %4 to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.150, i32 noundef %conv, i32 noundef %5)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_product_show(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ChipName = getelementptr i8, ptr %cdev, i32 2908
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull @.str.152, ptr noundef %ChipName)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_nvdata_persistent_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %NvdataVersionPersistent = getelementptr i8, ptr %cdev, i32 3424
  %0 = ptrtoint ptr %NvdataVersionPersistent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %NvdataVersionPersistent, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.154, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_nvdata_default_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %NvdataVersionDefault = getelementptr i8, ptr %cdev, i32 3420
  %0 = ptrtoint ptr %NvdataVersionDefault to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %NvdataVersionDefault, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.154, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @board_name_show(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %BoardName = getelementptr i8, ptr %cdev, i32 2932
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull @.str.152, ptr noundef %BoardName)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @board_assembly_show(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %BoardAssembly = getelementptr i8, ptr %cdev, i32 2948
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull @.str.152, ptr noundef %BoardAssembly)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @board_tracer_show(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %BoardTracerNumber = getelementptr i8, ptr %cdev, i32 2964
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull @.str.152, ptr noundef %BoardTracerNumber)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @io_delay_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %io_missing_delay = getelementptr i8, ptr %cdev, i32 3840
  %0 = ptrtoint ptr %io_missing_delay to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %io_missing_delay, align 8
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.160, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_delay_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %device_missing_delay = getelementptr i8, ptr %cdev, i32 3842
  %0 = ptrtoint ptr %device_missing_delay to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_missing_delay, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.160, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @logging_level_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %logging_level = getelementptr i8, ptr %cdev, i32 1088
  %0 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logging_level, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.154, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @logging_level_store(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.163, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %logging_level = getelementptr i8, ptr %cdev, i32 1088
  %3 = ptrtoint ptr %logging_level to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %logging_level, align 8
  %name = getelementptr i8, ptr %cdev, i32 956
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef %name, i32 noundef %2) #19
  %call5 = call i32 @strlen(ptr noundef %buf) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwfault_debug_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fwfault_debug = getelementptr i8, ptr %cdev, i32 1092
  %0 = ptrtoint ptr %fwfault_debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fwfault_debug, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.167, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fwfault_debug_store(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.168, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %fwfault_debug = getelementptr i8, ptr %cdev, i32 1092
  %3 = ptrtoint ptr %fwfault_debug to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %fwfault_debug, align 4
  %name = getelementptr i8, ptr %cdev, i32 956
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef %name, i32 noundef %2) #19
  %call5 = call i32 @strlen(ptr noundef %buf) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_queue_depth_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %RequestCredit = getelementptr i8, ptr %cdev, i32 2800
  %0 = ptrtoint ptr %RequestCredit to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %RequestCredit, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.160, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host_sas_address_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sas_address = getelementptr i8, ptr %cdev, i32 3544
  %0 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sas_address, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.173, i64 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioc_reset_count_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc_reset_count = getelementptr i8, ptr %cdev, i32 1492
  %0 = ptrtoint ptr %ioc_reset_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ioc_reset_count, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.167, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host_trace_buffer_size_show(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %diag_buffer = getelementptr i8, ptr %cdev, i32 4344
  %0 = ptrtoint ptr %diag_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %diag_buffer, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr i8, ptr %cdev, i32 956
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %name, ptr noundef nonnull @.str.177) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %diag_buffer_status = getelementptr i8, ptr %cdev, i32 4380
  %2 = ptrtoint ptr %diag_buffer_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %diag_buffer_status, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %do.end8, label %if.end13

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %name10 = getelementptr i8, ptr %cdev, i32 956
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %name10, ptr noundef nonnull @.str.177) #19
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %DiagVersion = getelementptr inbounds %struct.DIAG_BUFFER_START, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %DiagVersion to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %DiagVersion, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.458)
  switch i32 %6, label %if.end13.if.end28_crit_edge [
    i32 0, label %if.end13.land.lhs.true_crit_edge
    i32 1, label %if.end13.land.lhs.true_crit_edge44
    i32 257, label %if.end13.land.lhs.true_crit_edge45
  ]

if.end13.land.lhs.true_crit_edge45:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end13.land.lhs.true_crit_edge44:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end13.land.lhs.true_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end13.land.lhs.true_crit_edge, %if.end13.land.lhs.true_crit_edge44, %if.end13.land.lhs.true_crit_edge45
  %Reserved3 = getelementptr inbounds %struct.DIAG_BUFFER_START, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %Reserved3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %Reserved3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279541831, i32 %9)
  %cmp25 = icmp eq i32 %9, 1279541831
  br i1 %cmp25, label %if.then27, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %land.lhs.true.if.end28_crit_edge, %if.end13.if.end28_crit_edge
  %size.0 = phi i32 [ %12, %if.then27 ], [ 0, %land.lhs.true.if.end28_crit_edge ], [ 0, %if.end13.if.end28_crit_edge ]
  %ring_buffer_sz = getelementptr i8, ptr %cdev, i32 4688
  %13 = ptrtoint ptr %ring_buffer_sz to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %size.0, ptr %ring_buffer_sz, align 8
  %call29 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.167, i32 noundef %size.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end8, %do.end
  %retval.0 = phi i32 [ 0, %do.end8 ], [ %call29, %if.end28 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host_trace_buffer_show(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %diag_buffer = getelementptr i8, ptr %cdev, i32 4344
  %0 = ptrtoint ptr %diag_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %diag_buffer, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr i8, ptr %cdev, i32 956
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %name, ptr noundef nonnull @.str.181) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %diag_buffer_status = getelementptr i8, ptr %cdev, i32 4380
  %2 = ptrtoint ptr %diag_buffer_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %diag_buffer_status, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %do.end8, label %if.end13

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %name10 = getelementptr i8, ptr %cdev, i32 956
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %name10, ptr noundef nonnull @.str.181) #19
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %ring_buffer_offset = getelementptr i8, ptr %cdev, i32 4684
  %5 = ptrtoint ptr %ring_buffer_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ring_buffer_offset, align 4
  %ring_buffer_sz = getelementptr i8, ptr %cdev, i32 4688
  %7 = ptrtoint ptr %ring_buffer_sz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ring_buffer_sz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp14 = icmp ult i32 %8, %6
  br i1 %cmp14, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %sub = sub i32 %8, %6
  %9 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4095)
  %add.ptr25 = getelementptr i8, ptr %1, i32 %6
  %10 = call ptr @memcpy(ptr %buf, ptr %add.ptr25, i32 %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ 0, %do.end8 ], [ %9, %if.end17 ], [ 0, %do.end ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host_trace_buffer_store(ptr nocapture noundef writeonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #8 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.168, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %ring_buffer_offset = getelementptr i8, ptr %cdev, i32 4684
  %3 = ptrtoint ptr %ring_buffer_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ring_buffer_offset, align 4
  %call2 = call i32 @strlen(ptr noundef %buf) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @host_trace_buffer_enable_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %diag_buffer = getelementptr i8, ptr %cdev, i32 4344
  %0 = ptrtoint ptr %diag_buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %diag_buffer, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %diag_buffer_status = getelementptr i8, ptr %cdev, i32 4380
  %2 = ptrtoint ptr %diag_buffer_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %diag_buffer_status, align 4
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.185, i32 5)
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %and7 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else11, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.186, i32 9)
  br label %cleanup

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %6 = call ptr @memcpy(ptr %buf, ptr @.str.187, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.else11, %if.then9, %if.then
  %retval.0 = phi i32 [ 4, %if.then ], [ 8, %if.then9 ], [ 5, %if.else11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host_trace_buffer_enable_store(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %str = alloca [10 x i8], align 1
  %diag_register = alloca %struct.mpt3_diag_register, align 4
  %issue_reset = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %cdev, i32 936
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %str) #16
  %0 = call ptr @memset(ptr %str, i32 0, i32 10)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %diag_register) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %issue_reset) #16
  %shost_recovery = getelementptr i8, ptr %cdev, i32 1324
  %1 = ptrtoint ptr %shost_recovery to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %shost_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %remove_host = getelementptr i8, ptr %cdev, i32 1466
  %3 = ptrtoint ptr %remove_host to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %remove_host, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %pci_error_recovery = getelementptr i8, ptr %cdev, i32 1467
  %5 = ptrtoint ptr %pci_error_recovery to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pci_error_recovery, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %is_driver_loading = getelementptr i8, ptr %cdev, i32 1469
  %7 = ptrtoint ptr %is_driver_loading to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_driver_loading, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %if.end, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %call9 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.188, ptr noundef nonnull %str)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 1
  br i1 %cmp.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %str, ptr noundef nonnull dereferenceable(5) @.str.189, i32 5) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool15.not = icmp eq i32 %bcmp, 0
  br i1 %tobool15.not, label %if.then16, label %if.else95

if.then16:                                        ; preds = %if.end12
  %diag_buffer = getelementptr i8, ptr %cdev, i32 4344
  %9 = ptrtoint ptr %diag_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %diag_buffer, align 8
  %tobool17.not = icmp eq ptr %10, null
  br i1 %tobool17.not, label %if.then16.if.end29_crit_edge, label %land.lhs.true

if.then16.if.end29_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

land.lhs.true:                                    ; preds = %if.then16
  %diag_buffer_status = getelementptr i8, ptr %cdev, i32 4380
  %11 = ptrtoint ptr %diag_buffer_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %diag_buffer_status, align 4
  %13 = and i8 %12, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %if.then16.if.end29_crit_edge
  %15 = call ptr @memset(ptr %diag_register, i32 0, i32 116)
  %name = getelementptr i8, ptr %cdev, i32 956
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %name) #19
  %buffer_type = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 2
  %16 = ptrtoint ptr %buffer_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %buffer_type, align 1
  %HostTraceBufferMaxSizeKB = getelementptr i8, ptr %cdev, i32 3164
  %17 = ptrtoint ptr %HostTraceBufferMaxSizeKB to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %HostTraceBufferMaxSizeKB, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp34.not = icmp eq i16 %18, 0
  br i1 %cmp34.not, label %if.end29.if.else_crit_edge, label %land.lhs.true36

if.end29.if.else_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true36:                                  ; preds = %if.end29
  %diag_buffer_sz = getelementptr i8, ptr %cdev, i32 4356
  %19 = ptrtoint ptr %diag_buffer_sz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %diag_buffer_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp38.not = icmp eq i32 %20, 0
  br i1 %cmp38.not, label %land.lhs.true36.if.else_crit_edge, label %land.lhs.true36.if.end63_crit_edge

land.lhs.true36.if.end63_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

land.lhs.true36.if.else_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.else:                                          ; preds = %land.lhs.true36.if.else_crit_edge, %if.end29.if.else_crit_edge
  %diag_buffer_sz43 = getelementptr i8, ptr %cdev, i32 4356
  %21 = ptrtoint ptr %diag_buffer_sz43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %diag_buffer_sz43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp45.not = icmp eq i32 %22, 0
  br i1 %cmp45.not, label %if.else.if.end63_crit_edge, label %land.lhs.true47

if.else.if.end63_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

land.lhs.true47:                                  ; preds = %if.else
  %diag_buffer_status48 = getelementptr i8, ptr %cdev, i32 4380
  %23 = ptrtoint ptr %diag_buffer_status48 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %diag_buffer_status48, align 4
  %25 = and i8 %24, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool52.not = icmp eq i8 %25, 0
  br i1 %tobool52.not, label %land.lhs.true47.if.end63_crit_edge, label %if.then53

land.lhs.true47.if.end63_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end63

if.then53:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #18
  %pdev = getelementptr i8, ptr %cdev, i32 1076
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %diag_buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %diag_buffer, align 8
  %diag_buffer_dma = getelementptr i8, ptr %cdev, i32 4368
  %30 = ptrtoint ptr %diag_buffer_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %diag_buffer_dma, align 8
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef %22, ptr noundef %29, i32 noundef %31, i32 noundef 0) #16
  %32 = ptrtoint ptr %diag_buffer to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %diag_buffer, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then53, %land.lhs.true47.if.end63_crit_edge, %if.else.if.end63_crit_edge, %land.lhs.true36.if.end63_crit_edge
  %.sink = phi i32 [ %20, %land.lhs.true36.if.end63_crit_edge ], [ 1048576, %if.then53 ], [ 1048576, %land.lhs.true47.if.end63_crit_edge ], [ 1048576, %if.else.if.end63_crit_edge ]
  %requested_buffer_size62 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 6
  %33 = ptrtoint ptr %requested_buffer_size62 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %requested_buffer_size62, align 4
  %hba_mpi_version_belonged = getelementptr i8, ptr %cdev, i32 2714
  %34 = ptrtoint ptr %hba_mpi_version_belonged to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hba_mpi_version_belonged, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %35)
  %cmp65 = icmp eq i16 %35, 512
  %cond = select i1 %cmp65, i32 117922048, i32 1112687437
  %unique_id = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 7
  %36 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond, ptr %unique_id, align 4
  %diag_buffer_status67 = getelementptr i8, ptr %cdev, i32 4380
  %37 = ptrtoint ptr %diag_buffer_status67 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %diag_buffer_status67, align 4
  %call69 = call fastcc i32 @_ctl_diag_register_2(ptr noundef %hostdata.i, ptr noundef nonnull %diag_register)
  %38 = ptrtoint ptr %diag_buffer_status67 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %diag_buffer_status67, align 4
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool74.not = icmp eq i8 %40, 0
  br i1 %tobool74.not, label %if.end63.out_crit_edge, label %do.end78

if.end63.out_crit_edge:                           ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end78:                                         ; preds = %if.end63
  %requested_buffer_size82 = getelementptr inbounds %struct.mpt3_diag_register, ptr %diag_register, i32 0, i32 6
  %41 = ptrtoint ptr %requested_buffer_size82 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %requested_buffer_size82, align 4
  %shr = lshr i32 %42, 10
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef %name, i32 noundef %shr) #19
  %43 = ptrtoint ptr %hba_mpi_version_belonged to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hba_mpi_version_belonged, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %44)
  %cmp86.not = icmp eq i16 %44, 512
  br i1 %cmp86.not, label %do.end78.out_crit_edge, label %if.then88

do.end78.out_crit_edge:                           ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then88:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #18
  %45 = ptrtoint ptr %diag_buffer_status67 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %diag_buffer_status67, align 4
  %47 = or i8 %46, 8
  store i8 %47, ptr %diag_buffer_status67, align 4
  br label %out

if.else95:                                        ; preds = %if.end12
  %bcmp167 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %str, ptr noundef nonnull dereferenceable(8) @.str.195, i32 8) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp167)
  %tobool98.not = icmp eq i32 %bcmp167, 0
  br i1 %tobool98.not, label %if.then99, label %if.else95.out_crit_edge

if.else95.out_crit_edge:                          ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then99:                                        ; preds = %if.else95
  %diag_buffer100 = getelementptr i8, ptr %cdev, i32 4344
  %48 = ptrtoint ptr %diag_buffer100 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %diag_buffer100, align 8
  %tobool102.not = icmp eq ptr %49, null
  br i1 %tobool102.not, label %if.then99.out_crit_edge, label %if.end104

if.then99.out_crit_edge:                          ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end104:                                        ; preds = %if.then99
  %diag_buffer_status105 = getelementptr i8, ptr %cdev, i32 4380
  %50 = ptrtoint ptr %diag_buffer_status105 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %diag_buffer_status105, align 4
  %52 = and i8 %51, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %53 = icmp eq i8 %52, 1
  br i1 %53, label %do.end122, label %if.end104.out_crit_edge

if.end104.out_crit_edge:                          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end122:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #18
  %name124 = getelementptr i8, ptr %cdev, i32 956
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef %name124) #19
  %htb_rel = getelementptr i8, ptr %cdev, i32 4692
  %54 = ptrtoint ptr %htb_rel to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 9, ptr %htb_rel, align 4
  %call127 = call i32 @mpt3sas_send_diag_release(ptr noundef %hostdata.i, i8 noundef zeroext 0, ptr noundef nonnull %issue_reset)
  br label %out

out:                                              ; preds = %do.end122, %if.end104.out_crit_edge, %if.then99.out_crit_edge, %if.else95.out_crit_edge, %if.then88, %do.end78.out_crit_edge, %if.end63.out_crit_edge, %land.lhs.true.out_crit_edge
  %call130 = call i32 @strlen(ptr noundef %buf) #20
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call130, %out ], [ -16, %lor.lhs.false6.cleanup_crit_edge ], [ -16, %lor.lhs.false3.cleanup_crit_edge ], [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %issue_reset) #16
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %diag_register) #16
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %str) #16
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reply_queue_count_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %IOCCapabilities = getelementptr i8, ptr %cdev, i32 2804
  %0 = ptrtoint ptr %IOCCapabilities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %IOCCapabilities, align 4
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %msix_enable = getelementptr i8, ptr %cdev, i32 1474
  %2 = ptrtoint ptr %msix_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msix_enable, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %reply_queue_count2 = getelementptr i8, ptr %cdev, i32 4196
  %4 = ptrtoint ptr %reply_queue_count2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reply_queue_count2, align 4
  %phi.cast = zext i8 %5 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %reply_queue_count.0 = phi i32 [ %phi.cast, %if.then ], [ 1, %land.lhs.true.if.end_crit_edge ], [ 1, %entry.if.end_crit_edge ]
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.167, i32 noundef %reply_queue_count.0)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @diag_trigger_master_show(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %diag_trigger_lock = getelementptr i8, ptr %cdev, i32 4716
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %diag_trigger_lock) #16
  %diag_trigger_master = getelementptr i8, ptr %cdev, i32 4768
  %0 = ptrtoint ptr %diag_trigger_master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %diag_trigger_master, align 8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %buf, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call4) #16
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @diag_trigger_master_store(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %cdev, i32 936
  %0 = tail call i32 @llvm.umin.i32(i32 %count, i32 4)
  %supports_trigger_pages = getelementptr i8, ptr %cdev, i32 5104
  %1 = ptrtoint ptr %supports_trigger_pages to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %supports_trigger_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %if.then

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body14

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4) #21
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = call ptr @memcpy(ptr %call7.i.i, ptr %buf, i32 %0)
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp ne i32 %6, 0
  %call9 = tail call i32 @mpt3sas_config_update_driver_trigger_pg1(ptr noundef %hostdata.i, ptr noundef nonnull %call7.i.i, i1 noundef zeroext %tobool5.not) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br i1 %tobool10.not, label %if.end.do.body14_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.do.body14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body14

do.body14:                                        ; preds = %if.end.do.body14_crit_edge, %entry.do.body14_crit_edge
  %diag_trigger_lock = getelementptr i8, ptr %cdev, i32 4716
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %diag_trigger_lock) #16
  %diag_trigger_master = getelementptr i8, ptr %cdev, i32 4768
  %7 = ptrtoint ptr %diag_trigger_master to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %diag_trigger_master, align 8
  %8 = call ptr @memcpy(ptr %diag_trigger_master, ptr %buf, i32 %0)
  %9 = load i32, ptr %diag_trigger_master, align 8
  %or = or i32 %9, 3
  store i32 %or, ptr %diag_trigger_master, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call18) #16
  br label %cleanup

cleanup:                                          ; preds = %do.body14, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %do.body14 ], [ -12, %if.then.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_update_driver_trigger_pg1(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @diag_trigger_event_show(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %diag_trigger_lock = getelementptr i8, ptr %cdev, i32 4716
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %diag_trigger_lock) #16
  %diag_trigger_event = getelementptr i8, ptr %cdev, i32 4772
  %0 = call ptr @memcpy(ptr %buf, ptr %diag_trigger_event, i32 84)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call4) #16
  ret i32 84
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @diag_trigger_event_store(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %cdev, i32 936
  %0 = tail call i32 @llvm.umin.i32(i32 %count, i32 84)
  %supports_trigger_pages = getelementptr i8, ptr %cdev, i32 5104
  %1 = ptrtoint ptr %supports_trigger_pages to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %supports_trigger_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %if.then

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body14

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 84) #21
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = call ptr @memcpy(ptr %call7.i.i, ptr %buf, i32 %0)
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp ne i32 %6, 0
  %call9 = tail call i32 @mpt3sas_config_update_driver_trigger_pg2(ptr noundef %hostdata.i, ptr noundef nonnull %call7.i.i, i1 noundef zeroext %tobool5.not) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br i1 %tobool10.not, label %if.end.do.body14_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.do.body14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body14

do.body14:                                        ; preds = %if.end.do.body14_crit_edge, %entry.do.body14_crit_edge
  %diag_trigger_lock = getelementptr i8, ptr %cdev, i32 4716
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %diag_trigger_lock) #16
  %diag_trigger_event = getelementptr i8, ptr %cdev, i32 4772
  %7 = call ptr @memset(ptr %diag_trigger_event, i32 0, i32 84)
  %8 = call ptr @memcpy(ptr %diag_trigger_event, ptr %buf, i32 %0)
  %9 = ptrtoint ptr %diag_trigger_event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %diag_trigger_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %10)
  %cmp24 = icmp ugt i32 %10, 20
  br i1 %cmp24, label %if.then26, label %do.body14.if.end29_crit_edge

do.body14.if.end29_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %diag_trigger_event to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 20, ptr %diag_trigger_event, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %do.body14.if.end29_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call18) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.end29 ], [ -12, %if.then.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_update_driver_trigger_pg2(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @diag_trigger_scsi_show(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %diag_trigger_lock = getelementptr i8, ptr %cdev, i32 4716
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %diag_trigger_lock) #16
  %diag_trigger_scsi = getelementptr i8, ptr %cdev, i32 4856
  %0 = call ptr @memcpy(ptr %buf, ptr %diag_trigger_scsi, i32 84)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call4) #16
  ret i32 84
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @diag_trigger_scsi_store(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %cdev, i32 936
  %0 = tail call i32 @llvm.umin.i32(i32 %count, i32 84)
  %supports_trigger_pages = getelementptr i8, ptr %cdev, i32 5104
  %1 = ptrtoint ptr %supports_trigger_pages to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %supports_trigger_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %if.then

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body14

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 84) #21
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = call ptr @memcpy(ptr %call7.i.i, ptr %buf, i32 %0)
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp ne i32 %6, 0
  %call9 = tail call i32 @mpt3sas_config_update_driver_trigger_pg3(ptr noundef %hostdata.i, ptr noundef nonnull %call7.i.i, i1 noundef zeroext %tobool5.not) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br i1 %tobool10.not, label %if.end.do.body14_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.do.body14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body14

do.body14:                                        ; preds = %if.end.do.body14_crit_edge, %entry.do.body14_crit_edge
  %diag_trigger_lock = getelementptr i8, ptr %cdev, i32 4716
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %diag_trigger_lock) #16
  %diag_trigger_scsi = getelementptr i8, ptr %cdev, i32 4856
  %7 = call ptr @memset(ptr %diag_trigger_scsi, i32 0, i32 84)
  %8 = call ptr @memcpy(ptr %diag_trigger_scsi, ptr %buf, i32 %0)
  %9 = ptrtoint ptr %diag_trigger_scsi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %diag_trigger_scsi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %10)
  %cmp24 = icmp ugt i32 %10, 20
  br i1 %cmp24, label %if.then26, label %do.body14.if.end29_crit_edge

do.body14.if.end29_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %diag_trigger_scsi to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 20, ptr %diag_trigger_scsi, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %do.body14.if.end29_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call18) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.end29 ], [ -12, %if.then.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_update_driver_trigger_pg3(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @diag_trigger_mpi_show(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %diag_trigger_lock = getelementptr i8, ptr %cdev, i32 4716
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %diag_trigger_lock) #16
  %diag_trigger_mpi = getelementptr i8, ptr %cdev, i32 4940
  %0 = call ptr @memcpy(ptr %buf, ptr %diag_trigger_mpi, i32 164)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call4) #16
  ret i32 164
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @diag_trigger_mpi_store(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %cdev, i32 936
  %0 = tail call i32 @llvm.umin.i32(i32 %count, i32 164)
  %supports_trigger_pages = getelementptr i8, ptr %cdev, i32 5104
  %1 = ptrtoint ptr %supports_trigger_pages to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %supports_trigger_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %if.then

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body14

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 164) #21
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %if.then
  %4 = call ptr @memcpy(ptr %call7.i.i, ptr %buf, i32 %0)
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp ne i32 %6, 0
  %call9 = tail call i32 @mpt3sas_config_update_driver_trigger_pg4(ptr noundef %hostdata.i, ptr noundef nonnull %call7.i.i, i1 noundef zeroext %tobool5.not) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br i1 %tobool10.not, label %if.end.do.body14_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.do.body14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body14

do.body14:                                        ; preds = %if.end.do.body14_crit_edge, %entry.do.body14_crit_edge
  %diag_trigger_lock = getelementptr i8, ptr %cdev, i32 4716
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %diag_trigger_lock) #16
  %diag_trigger_mpi = getelementptr i8, ptr %cdev, i32 4940
  %7 = call ptr @memset(ptr %diag_trigger_mpi, i32 0, i32 164)
  %8 = call ptr @memcpy(ptr %diag_trigger_mpi, ptr %buf, i32 %0)
  %9 = ptrtoint ptr %diag_trigger_mpi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %diag_trigger_mpi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %10)
  %cmp24 = icmp ugt i32 %10, 20
  br i1 %cmp24, label %if.then26, label %do.body14.if.end29_crit_edge

do.body14.if.end29_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %diag_trigger_mpi to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 20, ptr %diag_trigger_mpi, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %do.body14.if.end29_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %diag_trigger_lock, i32 noundef %call18) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.end29 ], [ -12, %if.then.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_update_driver_trigger_pg4(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drv_support_bitmap_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_support_bitmap = getelementptr i8, ptr %cdev, i32 1548
  %0 = ptrtoint ptr %drv_support_bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %drv_support_bitmap, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.205, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @BRM_status_show(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %io_unit_pg3 = alloca %struct._MPI2_CONFIG_PAGE_IO_UNIT_3, align 2
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %cdev, i32 936
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %io_unit_pg3) #16
  %0 = call ptr @memset(ptr %io_unit_pg3, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #16
  %1 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %is_warpdrive = getelementptr i8, ptr %cdev, i32 4709
  %2 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  %3 = ptrtoint ptr %is_warpdrive to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_warpdrive, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr i8, ptr %cdev, i32 956
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name, ptr noundef nonnull @.str.208) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %pci_access_mutex = getelementptr i8, ptr %cdev, i32 4252
  tail call void @mutex_lock_nested(ptr noundef %pci_access_mutex, i32 noundef 0) #16
  %pci_error_recovery = getelementptr i8, ptr %cdev, i32 1467
  %5 = ptrtoint ptr %pci_error_recovery to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pci_error_recovery, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %remove_host = getelementptr i8, ptr %cdev, i32 1466
  %7 = ptrtoint ptr %remove_host to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %remove_host, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.end7, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end7:                                          ; preds = %lor.lhs.false
  %9 = call ptr @memset(ptr %io_unit_pg3, i32 0, i32 80)
  %call9 = call i32 @mpt3sas_config_get_iounit_pg3(ptr noundef %hostdata.i, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %io_unit_pg3, i16 noundef zeroext 80) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.end19, label %do.end14

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %name16 = getelementptr i8, ptr %cdev, i32 956
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, ptr noundef %name16, ptr noundef nonnull @.str.208) #19
  br label %out

if.end19:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 2
  %12 = and i16 %11, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp23.not = icmp eq i16 %12, 0
  br i1 %cmp23.not, label %if.end34, label %do.end28

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %conv22 = zext i16 %13 to i32
  %name30 = getelementptr i8, ptr %cdev, i32 956
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef %name30, ptr noundef nonnull @.str.208, i32 noundef %conv22) #19
  br label %out

if.end34:                                         ; preds = %if.end19
  %GPIOCount = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_IO_UNIT_3, ptr %io_unit_pg3, i32 0, i32 1
  %14 = ptrtoint ptr %GPIOCount to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %GPIOCount, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %15)
  %cmp36 = icmp ult i8 %15, 25
  br i1 %cmp36, label %do.end41, label %if.end48

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %conv35 = zext i8 %15 to i32
  %name43 = getelementptr i8, ptr %cdev, i32 956
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef %name43, ptr noundef nonnull @.str.208, i32 noundef %conv35) #19
  br label %out

if.end48:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_IO_UNIT_3, ptr %io_unit_pg3, i32 0, i32 4, i32 24
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %18 = lshr i16 %17, 8
  %19 = and i16 %18, 1
  %and50 = zext i16 %19 to i32
  %call51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.167, i32 noundef %and50)
  br label %out

out:                                              ; preds = %if.end48, %do.end41, %do.end28, %do.end14, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ -22, %do.end14 ], [ -22, %do.end28 ], [ -22, %do.end41 ], [ %call51, %if.end48 ]
  call void @mutex_unlock(ptr noundef %pci_access_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %rc.0, %out ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %io_unit_pg3) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_get_iounit_pg3(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_sdev_max_qd_show(ptr nocapture noundef readonly %cdev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_sdev_max_qd = getelementptr i8, ptr %cdev, i32 1556
  %0 = ptrtoint ptr %enable_sdev_max_qd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable_sdev_max_qd, align 4, !range !827
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.167, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_sdev_max_qd_store(ptr noundef %cdev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %cdev, i32 936
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %call1 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.459)
  switch i32 %2, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb35
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %enable_sdev_max_qd = getelementptr i8, ptr %cdev, i32 1556
  %4 = ptrtoint ptr %enable_sdev_max_qd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enable_sdev_max_qd, align 4
  %shost2 = getelementptr i8, ptr %cdev, i32 944
  %5 = ptrtoint ptr %shost2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shost2, align 8
  %call3 = call ptr @__scsi_iterate_devices(ptr noundef %6, ptr noundef null) #16
  %tobool.not84 = icmp eq ptr %call3, null
  br i1 %tobool.not84, label %sw.bb.sw.epilog47_crit_edge, label %for.body.lr.ph

sw.bb.sw.epilog47_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog47

for.body.lr.ph:                                   ; preds = %sw.bb
  %max_nvme_qd = getelementptr i8, ptr %cdev, i32 2776
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %sdev.085 = phi ptr [ %call3, %for.body.lr.ph ], [ %call34, %for.inc.for.body_crit_edge ]
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %sdev.085, i32 0, i32 21
  %7 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hostdata, align 8
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end6.for.inc_crit_edge, label %if.end9

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end9:                                          ; preds = %if.end6
  %flags = getelementptr inbounds %struct.MPT3SAS_TARGET, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.else19, label %if.then11

if.then11:                                        ; preds = %if.end9
  %handle = getelementptr inbounds %struct.MPT3SAS_TARGET, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %handle, align 4
  %call12 = call ptr @mpt3sas_raid_device_find_by_handle(ptr noundef %hostdata.i, i16 noundef zeroext %14) #16
  %volume_type = getelementptr inbounds %struct._raid_device, ptr %call12, i32 0, i32 8
  %15 = ptrtoint ptr %volume_type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %volume_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cond56 = icmp eq i8 %16, 0
  br i1 %cond56, label %sw.bb13, label %if.then11.if.end32_crit_edge

if.then11.if.end32_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

sw.bb13:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  %device_info = getelementptr inbounds %struct._raid_device, ptr %call12, i32 0, i32 17
  %17 = ptrtoint ptr %device_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %device_info, align 4
  %and14 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %. = select i1 %tobool15.not, i16 32, i16 254
  br label %if.end32

if.else19:                                        ; preds = %if.end9
  %and21 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %max_nvme_qd to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_nvme_qd, align 8
  br label %if.end32

if.else25:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #18
  %sas_dev = getelementptr inbounds %struct.MPT3SAS_TARGET, ptr %10, i32 0, i32 9
  %21 = ptrtoint ptr %sas_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sas_dev, align 8
  %port_type = getelementptr inbounds %struct._sas_device, ptr %22, i32 0, i32 24
  %23 = ptrtoint ptr %port_type to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %port_type, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp27 = icmp ugt i8 %24, 1
  %cond.in.in.v = select i1 %cmp27, i32 2772, i32 2774
  %cond.in.in = getelementptr i8, ptr %cdev, i32 %cond.in.in.v
  %25 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %25)
  %cond.in = load i16, ptr %cond.in.in, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.else25, %if.then23, %sw.bb13, %if.then11.if.end32_crit_edge
  %qdepth.0.shrunk = phi i16 [ %20, %if.then23 ], [ %cond.in, %if.else25 ], [ %., %sw.bb13 ], [ 128, %if.then11.if.end32_crit_edge ]
  %qdepth.0 = zext i16 %qdepth.0.shrunk to i32
  call void @mpt3sas_scsih_change_queue_depth(ptr noundef nonnull %sdev.085, i32 noundef %qdepth.0) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %if.end6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %26 = ptrtoint ptr %shost2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shost2, align 8
  %call34 = call ptr @__scsi_iterate_devices(ptr noundef %27, ptr noundef nonnull %sdev.085) #16
  %tobool.not = icmp eq ptr %call34, null
  br i1 %tobool.not, label %for.inc.sw.epilog47_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.sw.epilog47_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog47

sw.bb35:                                          ; preds = %if.end
  %enable_sdev_max_qd36 = getelementptr i8, ptr %cdev, i32 1556
  %28 = ptrtoint ptr %enable_sdev_max_qd36 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %enable_sdev_max_qd36, align 4
  %shost37 = getelementptr i8, ptr %cdev, i32 944
  %29 = ptrtoint ptr %shost37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %shost37, align 8
  %call38 = call ptr @__scsi_iterate_devices(ptr noundef %30, ptr noundef null) #16
  %tobool40.not82 = icmp eq ptr %call38, null
  br i1 %tobool40.not82, label %sw.bb35.sw.epilog47_crit_edge, label %for.body41.lr.ph

sw.bb35.sw.epilog47_crit_edge:                    ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog47

for.body41.lr.ph:                                 ; preds = %sw.bb35
  %can_queue = getelementptr i8, ptr %cdev, i32 -1028
  br label %for.body41

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %for.body41.lr.ph
  %sdev.183 = phi ptr [ %call38, %for.body41.lr.ph ], [ %call44, %for.body41.for.body41_crit_edge ]
  %31 = ptrtoint ptr %can_queue to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %can_queue, align 4
  call void @mpt3sas_scsih_change_queue_depth(ptr noundef nonnull %sdev.183, i32 noundef %32) #16
  %33 = ptrtoint ptr %shost37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %shost37, align 8
  %call44 = call ptr @__scsi_iterate_devices(ptr noundef %34, ptr noundef nonnull %sdev.183) #16
  %tobool40.not = icmp eq ptr %call44, null
  br i1 %tobool40.not, label %for.body41.sw.epilog47_crit_edge, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body41

for.body41.sw.epilog47_crit_edge:                 ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog47

sw.epilog47:                                      ; preds = %for.body41.sw.epilog47_crit_edge, %sw.bb35.sw.epilog47_crit_edge, %for.inc.sw.epilog47_crit_edge, %sw.bb.sw.epilog47_crit_edge
  %call48 = call i32 @strlen(ptr noundef %buf) #20
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog47, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call48, %sw.epilog47 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_iterate_devices(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_raid_device_find_by_handle(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt3sas_scsih_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sas_address_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sas_address = getelementptr inbounds %struct.MPT3SAS_TARGET, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sas_address, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.173, i64 noundef %5)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sas_device_handle_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %handle = getelementptr inbounds %struct.MPT3SAS_TARGET, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %handle, align 4
  %conv = zext i16 %5 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.221, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sas_ncq_prio_supported_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %call = tail call zeroext i1 @scsih_ncq_prio_supp(ptr noundef %add.ptr) #16
  %conv = zext i1 %call to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.167, i32 noundef %conv) #16
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsih_ncq_prio_supp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sas_ncq_prio_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %ncq_prio_enable = getelementptr inbounds %struct.MPT3SAS_DEVICE, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ncq_prio_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ncq_prio_enable, align 4
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.167, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sas_ncq_prio_enable_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %ncq_prio_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ncq_prio_enable) #16
  %2 = ptrtoint ptr %ncq_prio_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ncq_prio_enable, align 1
  %call = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %ncq_prio_enable) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -408
  %call1 = call zeroext i1 @scsih_ncq_prio_supp(ptr noundef %add.ptr) #16
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %ncq_prio_enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ncq_prio_enable, align 1, !range !827
  %ncq_prio_enable5 = getelementptr inbounds %struct.MPT3SAS_DEVICE, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %ncq_prio_enable5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %ncq_prio_enable5, align 4
  %call6 = call i32 @strlen(ptr noundef %buf) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ncq_prio_enable) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_ctl_poll(ptr noundef %filep, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %1(ptr noundef %filep, ptr noundef nonnull @ctl_poll_wait, ptr noundef nonnull %wait) #16
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @gioc_lock) #16
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %poll_wait.exit
  %ioc.0.in = phi ptr [ @mpt3sas_ioc_list, %poll_wait.exit ], [ %ioc.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %ioc.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %ioc.0 = load ptr, ptr %ioc.0.in, align 4
  %cmp.not = icmp eq ptr %ioc.0, @mpt3sas_ioc_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %aen_event_read_flag = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc.0, i32 0, i32 24
  %3 = ptrtoint ptr %aen_event_read_flag to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %aen_event_read_flag, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 65, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @gioc_lock) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_ctl_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %call = tail call fastcc i32 @_ctl_ioctl_main(ptr noundef %file, i32 noundef %cmd, ptr noundef %0, i16 noundef zeroext 519)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_ctl_fasync(i32 noundef %fd, ptr noundef %filep, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %filep, i32 noundef %mode, ptr noundef nonnull @async_queue) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_ioctl_main(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr noundef %arg, i16 noundef zeroext %mpi_version) unnamed_addr #0 align 64 {
entry:
  %ioctl_header = alloca %struct.mpt3_ioctl_header, align 4
  %karg = alloca %struct.mpt3_ioctl_command, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ioctl_header) #16
  %0 = ptrtoint ptr %ioctl_header to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ioctl_header, align 4, !annotation !822
  %1 = getelementptr inbounds %struct.mpt3_ioctl_header, ptr %ioctl_header, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !822
  %3 = getelementptr inbounds %struct.mpt3_ioctl_header, ptr %ioctl_header, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !822
  tail call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 12, i32 -1226833920) #22, !srcloc !828
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !825

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ioctl_header, i32 noundef 12) #16
  %6 = call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !829
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ioctl_header, ptr noundef %arg, i32 noundef 12) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !825

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i43 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i43
  %add.ptr.i.i = getelementptr i8, ptr %ioctl_header, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i43)
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 2601, ptr noundef nonnull @.str.226) #19
  br label %cleanup159

if.end:                                           ; preds = %if.end.i.i
  %10 = ptrtoint ptr %ioctl_header to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ioctl_header, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @gioc_lock) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mpt3sas_ioc_list to i32))
  %ioc.033.i = load ptr, ptr @mpt3sas_ioc_list, align 4
  %cmp.not34.i = icmp eq ptr %ioc.033.i, @mpt3sas_ioc_list
  br i1 %cmp.not34.i, label %if.end._ctl_verify_adapter.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end._ctl_verify_adapter.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_verify_adapter.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 519, i16 %mpi_version)
  %cmp4.i = icmp eq i16 %mpi_version, 519
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ioc.035.i = phi ptr [ %ioc.033.i, %for.body.lr.ph.i ], [ %ioc.0.i, %for.inc.i.for.body.i_crit_edge ]
  %id.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc.035.i, i32 0, i32 2
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i)
  %cmp1.not.i = icmp eq i32 %11, %conv.i
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %hba_mpi_version_belonged.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc.035.i, i32 0, i32 86
  %14 = ptrtoint ptr %hba_mpi_version_belonged.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hba_mpi_version_belonged.i, align 2
  br i1 %cmp4.i, label %if.then6.i, label %if.else12.i

if.then6.i:                                       ; preds = %if.end.i
  %.off.i = add i16 %15, -517
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 2
  br i1 %switch.i, label %if.then6.i._ctl_verify_adapter.exit_crit_edge, label %if.then6.i.for.inc.i_crit_edge

if.then6.i.for.inc.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then6.i._ctl_verify_adapter.exit_crit_edge:    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_verify_adapter.exit

if.else12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %mpi_version)
  %cmp13.not.i = icmp eq i16 %15, %mpi_version
  br i1 %cmp13.not.i, label %if.else12.i._ctl_verify_adapter.exit_crit_edge, label %if.else12.i.for.inc.i_crit_edge

if.else12.i.for.inc.i_crit_edge:                  ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.else12.i._ctl_verify_adapter.exit_crit_edge:   ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_verify_adapter.exit

for.inc.i:                                        ; preds = %if.else12.i.for.inc.i_crit_edge, %if.then6.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %16 = ptrtoint ptr %ioc.035.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %ioc.0.i = load ptr, ptr %ioc.035.i, align 4
  %cmp.not.i = icmp eq ptr %ioc.0.i, @mpt3sas_ioc_list
  br i1 %cmp.not.i, label %for.inc.i._ctl_verify_adapter.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i._ctl_verify_adapter.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_verify_adapter.exit.thread

_ctl_verify_adapter.exit.thread:                  ; preds = %for.inc.i._ctl_verify_adapter.exit.thread_crit_edge, %if.end._ctl_verify_adapter.exit.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @gioc_lock) #16
  br label %cleanup159

_ctl_verify_adapter.exit:                         ; preds = %if.else12.i._ctl_verify_adapter.exit_crit_edge, %if.then6.i._ctl_verify_adapter.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @gioc_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp = icmp eq i32 %11, -1
  %tobool4.not = icmp eq ptr %ioc.035.i, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %_ctl_verify_adapter.exit.cleanup159_crit_edge, label %if.end6

_ctl_verify_adapter.exit.cleanup159_crit_edge:    ; preds = %_ctl_verify_adapter.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup159

if.end6:                                          ; preds = %_ctl_verify_adapter.exit
  %pci_access_mutex = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc.035.i, i32 0, i32 212
  call void @mutex_lock_nested(ptr noundef %pci_access_mutex, i32 noundef 0) #16
  %shost_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc.035.i, i32 0, i32 27
  %17 = ptrtoint ptr %shost_recovery to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %shost_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool8.not = icmp eq i8 %18, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %if.end6.out_unlock_pciaccess_crit_edge

if.end6.out_unlock_pciaccess_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock_pciaccess

lor.lhs.false9:                                   ; preds = %if.end6
  %pci_error_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc.035.i, i32 0, i32 34
  %19 = ptrtoint ptr %pci_error_recovery to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pci_error_recovery, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool11.not = icmp eq i8 %20, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false9.out_unlock_pciaccess_crit_edge

lor.lhs.false9.out_unlock_pciaccess_crit_edge:    ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock_pciaccess

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %is_driver_loading = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc.035.i, i32 0, i32 36
  %21 = ptrtoint ptr %is_driver_loading to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_driver_loading, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool14.not = icmp eq i8 %22, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false12.out_unlock_pciaccess_crit_edge

lor.lhs.false12.out_unlock_pciaccess_crit_edge:   ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock_pciaccess

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %remove_host = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc.035.i, i32 0, i32 33
  %23 = ptrtoint ptr %remove_host to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %remove_host, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool17.not = icmp eq i8 %24, 0
  br i1 %tobool17.not, label %if.end19, label %lor.lhs.false15.out_unlock_pciaccess_crit_edge

lor.lhs.false15.out_unlock_pciaccess_crit_edge:   ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock_pciaccess

if.end19:                                         ; preds = %lor.lhs.false15
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %25 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %f_flags, align 4
  %and = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  %ctl_cmds28 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc.035.i, i32 0, i32 79
  br i1 %tobool20.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end19
  %call24 = call i32 @mutex_trylock(ptr noundef %ctl_cmds28) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.out_unlock_pciaccess_crit_edge, label %if.then23.if.end34_crit_edge

if.then23.if.end34_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.then23.out_unlock_pciaccess_crit_edge:         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock_pciaccess

if.else:                                          ; preds = %if.end19
  %call30 = call i32 @mutex_lock_interruptible_nested(ptr noundef %ctl_cmds28, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else.if.end34_crit_edge, label %if.else.out_unlock_pciaccess_crit_edge

if.else.out_unlock_pciaccess_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock_pciaccess

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %if.then23.if.end34_crit_edge
  %27 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.460)
  switch i32 %cmd, label %sw.default [
    i32 -1067693039, label %if.then38
    i32 -1070052332, label %sw.bb41
    i32 -1071625195, label %if.then70
    i32 -1071887338, label %if.then78
    i32 -1059828713, label %sw.bb81
    i32 -1072935912, label %if.then88
    i32 -1072149473, label %if.then96
    i32 -1065858022, label %if.then104
    i32 -1072673764, label %if.then112
    i32 -1065595875, label %if.then120
    i32 -1072673765, label %if.then128
    i32 -1071625186, label %if.then136
    i32 -1071100896, label %if.then144
  ]

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %call39 = call fastcc i32 @_ctl_getiocinfo(ptr noundef nonnull %ioc.035.i, ptr noundef %arg)
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %karg) #16
  %28 = call ptr @memset(ptr %karg, i32 255, i32 56)
  call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i5 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i5, label %sw.bb41.if.then11.i.i21_crit_edge, label %land.lhs.true.i.i8

sw.bb41.if.then11.i.i21_crit_edge:                ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i21

land.lhs.true.i.i8:                               ; preds = %sw.bb41
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 56, i32 -1226833920) #22, !srcloc !828
  %asmresult.i.i6 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i6)
  %cmp.i6.i7 = icmp eq i32 %asmresult.i.i6, 0
  br i1 %cmp.i6.i7, label %if.end.i.i18, label %land.lhs.true.i.i8.if.then11.i.i21_crit_edge, !prof !825

land.lhs.true.i.i8.if.then11.i.i21_crit_edge:     ; preds = %land.lhs.true.i.i8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i21

if.end.i.i18:                                     ; preds = %land.lhs.true.i.i8
  %call.i.i.i9 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg, i32 noundef 56) #16
  %30 = call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i10 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i.i10 to ptr
  %cpu_domain.i.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i11) #13, !srcloc !829
  %and.i.i.i.i12 = and i32 %32, -13
  %or.i.i.i.i13 = or i32 %and.i.i.i.i12, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i13) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i14 = call i32 @arm_copy_from_user(ptr noundef nonnull %karg, ptr noundef %arg, i32 noundef 56) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i14)
  %tobool4.not.i.i17 = icmp eq i32 %call1.i.i.i14, 0
  br i1 %tobool4.not.i.i17, label %if.end50, label %if.end.i.i18.if.then11.i.i21_crit_edge, !prof !825

if.end.i.i18.if.then11.i.i21_crit_edge:           ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i21

if.then11.i.i21:                                  ; preds = %if.end.i.i18.if.then11.i.i21_crit_edge, %land.lhs.true.i.i8.if.then11.i.i21_crit_edge, %sw.bb41.if.then11.i.i21_crit_edge
  %res.0.i.i1653 = phi i32 [ %call1.i.i.i14, %if.end.i.i18.if.then11.i.i21_crit_edge ], [ 56, %sw.bb41.if.then11.i.i21_crit_edge ], [ 56, %land.lhs.true.i.i8.if.then11.i.i21_crit_edge ]
  %sub.i.i19 = sub i32 56, %res.0.i.i1653
  %add.ptr.i.i20 = getelementptr i8, ptr %karg, i32 %sub.i.i19
  %33 = call ptr @memset(ptr %add.ptr.i.i20, i32 0, i32 %res.0.i.i1653)
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 2651, ptr noundef nonnull @.str.226) #19
  br label %cleanup

if.end50:                                         ; preds = %if.end.i.i18
  %34 = ptrtoint ptr %karg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %karg, align 4
  %36 = ptrtoint ptr %ioctl_header to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ioctl_header, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp53.not = icmp eq i32 %35, %37
  br i1 %cmp53.not, label %if.then61, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then61:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  %mf = getelementptr inbounds %struct.mpt3_ioctl_command, ptr %arg, i32 0, i32 11
  %.fca.0.insert = insertvalue [14 x i32] poison, i32 %35, 0
  %.fca.1.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 1
  %38 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.1.insert = insertvalue [14 x i32] %.fca.0.insert, i32 %.fca.1.load, 1
  %.fca.2.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 2
  %39 = ptrtoint ptr %.fca.2.gep to i32
  call void @__asan_load4_noabort(i32 %39)
  %.fca.2.load = load i32, ptr %.fca.2.gep, align 4
  %.fca.2.insert = insertvalue [14 x i32] %.fca.1.insert, i32 %.fca.2.load, 2
  %.fca.3.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 3
  %40 = ptrtoint ptr %.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %40)
  %.fca.3.load = load i32, ptr %.fca.3.gep, align 4
  %.fca.3.insert = insertvalue [14 x i32] %.fca.2.insert, i32 %.fca.3.load, 3
  %.fca.4.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 4
  %41 = ptrtoint ptr %.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %.fca.4.load = load i32, ptr %.fca.4.gep, align 4
  %.fca.4.insert = insertvalue [14 x i32] %.fca.3.insert, i32 %.fca.4.load, 4
  %.fca.5.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 5
  %42 = ptrtoint ptr %.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %42)
  %.fca.5.load = load i32, ptr %.fca.5.gep, align 4
  %.fca.5.insert = insertvalue [14 x i32] %.fca.4.insert, i32 %.fca.5.load, 5
  %.fca.6.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 6
  %43 = ptrtoint ptr %.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %.fca.6.load = load i32, ptr %.fca.6.gep, align 4
  %.fca.6.insert = insertvalue [14 x i32] %.fca.5.insert, i32 %.fca.6.load, 6
  %.fca.7.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 7
  %44 = ptrtoint ptr %.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %.fca.7.load = load i32, ptr %.fca.7.gep, align 4
  %.fca.7.insert = insertvalue [14 x i32] %.fca.6.insert, i32 %.fca.7.load, 7
  %.fca.8.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 8
  %45 = ptrtoint ptr %.fca.8.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %.fca.8.load = load i32, ptr %.fca.8.gep, align 4
  %.fca.8.insert = insertvalue [14 x i32] %.fca.7.insert, i32 %.fca.8.load, 8
  %.fca.9.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 9
  %46 = ptrtoint ptr %.fca.9.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %.fca.9.load = load i32, ptr %.fca.9.gep, align 4
  %.fca.9.insert = insertvalue [14 x i32] %.fca.8.insert, i32 %.fca.9.load, 9
  %.fca.10.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 10
  %47 = ptrtoint ptr %.fca.10.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %.fca.10.load = load i32, ptr %.fca.10.gep, align 4
  %.fca.10.insert = insertvalue [14 x i32] %.fca.9.insert, i32 %.fca.10.load, 10
  %.fca.11.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 11
  %48 = ptrtoint ptr %.fca.11.gep to i32
  call void @__asan_load4_noabort(i32 %48)
  %.fca.11.load = load i32, ptr %.fca.11.gep, align 4
  %.fca.11.insert = insertvalue [14 x i32] %.fca.10.insert, i32 %.fca.11.load, 11
  %.fca.12.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 12
  %49 = ptrtoint ptr %.fca.12.gep to i32
  call void @__asan_load4_noabort(i32 %49)
  %.fca.12.load = load i32, ptr %.fca.12.gep, align 4
  %.fca.12.insert = insertvalue [14 x i32] %.fca.11.insert, i32 %.fca.12.load, 12
  %.fca.13.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 13
  %50 = ptrtoint ptr %.fca.13.gep to i32
  call void @__asan_load4_noabort(i32 %50)
  %.fca.13.load = load i32, ptr %.fca.13.gep, align 4
  %.fca.13.insert = insertvalue [14 x i32] %.fca.12.insert, i32 %.fca.13.load, 13
  %call62 = call fastcc i32 @_ctl_do_mpt_command(ptr noundef nonnull %ioc.035.i, [14 x i32] %.fca.13.insert, ptr noundef %mf)
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end50.cleanup_crit_edge, %if.then11.i.i21
  %ret.1 = phi i32 [ -14, %if.then11.i.i21 ], [ %call62, %if.then61 ], [ -22, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %karg) #16
  br label %sw.epilog

if.then70:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %call71 = call fastcc i32 @_ctl_eventquery(ptr noundef nonnull %ioc.035.i, ptr noundef %arg)
  br label %sw.epilog

if.then78:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %call79 = call fastcc i32 @_ctl_eventenable(ptr noundef nonnull %ioc.035.i, ptr noundef %arg)
  br label %sw.epilog

sw.bb81:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %call82 = call fastcc i32 @_ctl_eventreport(ptr noundef nonnull %ioc.035.i, ptr noundef %arg)
  br label %sw.epilog

if.then88:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %call89 = call fastcc i32 @_ctl_do_reset(ptr noundef nonnull %ioc.035.i, ptr noundef %arg)
  br label %sw.epilog

if.then96:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %call97 = call fastcc i32 @_ctl_btdh_mapping(ptr noundef nonnull %ioc.035.i, ptr noundef %arg)
  br label %sw.epilog

if.then104:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %call105 = call fastcc i32 @_ctl_diag_register(ptr noundef nonnull %ioc.035.i, ptr noundef %arg)
  br label %sw.epilog

if.then112:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %call113 = call fastcc i32 @_ctl_diag_unregister(ptr noundef nonnull %ioc.035.i, ptr noundef %arg)
  br label %sw.epilog

if.then120:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %call121 = call fastcc i32 @_ctl_diag_query(ptr noundef nonnull %ioc.035.i, ptr noundef %arg)
  br label %sw.epilog

if.then128:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %call129 = call fastcc i32 @_ctl_diag_release(ptr noundef nonnull %ioc.035.i, ptr noundef %arg)
  br label %sw.epilog

if.then136:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %call137 = call fastcc i32 @_ctl_diag_read_buffer(ptr noundef nonnull %ioc.035.i, ptr noundef %arg)
  br label %sw.epilog

if.then144:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  %call145 = call fastcc i32 @_ctl_addnl_diag_query(ptr noundef nonnull %ioc.035.i, ptr noundef %arg)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end34
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc.035.i, i32 0, i32 10
  %51 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %logging_level, align 8
  %and147 = and i32 %52, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %sw.default.sw.epilog_crit_edge, label %do.end152

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.end152:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc.035.i, i32 0, i32 4
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef %name, i32 noundef %cmd) #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end152, %sw.default.sw.epilog_crit_edge, %if.then144, %if.then136, %if.then128, %if.then120, %if.then112, %if.then104, %if.then96, %if.then88, %sw.bb81, %if.then78, %if.then70, %cleanup, %if.then38
  %ret.2 = phi i32 [ -515, %do.end152 ], [ -515, %sw.default.sw.epilog_crit_edge ], [ %call145, %if.then144 ], [ %call137, %if.then136 ], [ %call129, %if.then128 ], [ %call121, %if.then120 ], [ %call113, %if.then112 ], [ %call105, %if.then104 ], [ %call97, %if.then96 ], [ %call89, %if.then88 ], [ %call82, %sw.bb81 ], [ %call79, %if.then78 ], [ %call71, %if.then70 ], [ %ret.1, %cleanup ], [ %call39, %if.then38 ]
  %ctl_cmds156 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc.035.i, i32 0, i32 79
  call void @mutex_unlock(ptr noundef %ctl_cmds156) #16
  br label %out_unlock_pciaccess

out_unlock_pciaccess:                             ; preds = %sw.epilog, %if.else.out_unlock_pciaccess_crit_edge, %if.then23.out_unlock_pciaccess_crit_edge, %lor.lhs.false15.out_unlock_pciaccess_crit_edge, %lor.lhs.false12.out_unlock_pciaccess_crit_edge, %lor.lhs.false9.out_unlock_pciaccess_crit_edge, %if.end6.out_unlock_pciaccess_crit_edge
  %ret.3 = phi i32 [ %ret.2, %sw.epilog ], [ -11, %lor.lhs.false15.out_unlock_pciaccess_crit_edge ], [ -11, %lor.lhs.false12.out_unlock_pciaccess_crit_edge ], [ -11, %lor.lhs.false9.out_unlock_pciaccess_crit_edge ], [ -11, %if.end6.out_unlock_pciaccess_crit_edge ], [ -11, %if.then23.out_unlock_pciaccess_crit_edge ], [ -512, %if.else.out_unlock_pciaccess_crit_edge ]
  call void @mutex_unlock(ptr noundef %pci_access_mutex) #16
  br label %cleanup159

cleanup159:                                       ; preds = %out_unlock_pciaccess, %_ctl_verify_adapter.exit.cleanup159_crit_edge, %_ctl_verify_adapter.exit.thread, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ %ret.3, %out_unlock_pciaccess ], [ -19, %_ctl_verify_adapter.exit.cleanup159_crit_edge ], [ -19, %_ctl_verify_adapter.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ioctl_header) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_getiocinfo(ptr noundef %ioc, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %karg = alloca %struct.mpt3_ioctl_iocinfo, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %karg) #16
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %0 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %logging_level, align 8
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %name, ptr noundef nonnull @.str.236) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = call ptr @memset(ptr %karg, i32 0, i32 92)
  %pfacts = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 103
  %3 = ptrtoint ptr %pfacts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pfacts, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 2
  %conv = zext i8 %6 to i32
  %port_number = getelementptr inbounds %struct.mpt3_ioctl_iocinfo, ptr %karg, i32 0, i32 2
  %7 = ptrtoint ptr %port_number to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %port_number, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %pdev = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 7
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %revision, align 4
  %conv5 = zext i8 %11 to i32
  %hw_rev = getelementptr inbounds %struct.mpt3_ioctl_iocinfo, ptr %karg, i32 0, i32 4
  %12 = ptrtoint ptr %hw_rev to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv5, ptr %hw_rev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 8
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device, align 2
  %conv7 = zext i16 %14 to i32
  %pci_id = getelementptr inbounds %struct.mpt3_ioctl_iocinfo, ptr %karg, i32 0, i32 3
  %15 = ptrtoint ptr %pci_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv7, ptr %pci_id, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 10
  %16 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %subsystem_device, align 2
  %conv9 = zext i16 %17 to i32
  %subsystem_device10 = getelementptr inbounds %struct.mpt3_ioctl_iocinfo, ptr %karg, i32 0, i32 5
  %18 = ptrtoint ptr %subsystem_device10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv9, ptr %subsystem_device10, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 9
  %19 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %subsystem_vendor, align 4
  %conv12 = zext i16 %20 to i32
  %subsystem_vendor13 = getelementptr inbounds %struct.mpt3_ioctl_iocinfo, ptr %karg, i32 0, i32 6
  %21 = ptrtoint ptr %subsystem_vendor13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv12, ptr %subsystem_vendor13, align 4
  %bus = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 1
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %number, align 4
  %conv15 = zext i8 %25 to i32
  %pci_information = getelementptr inbounds %struct.mpt3_ioctl_iocinfo, ptr %karg, i32 0, i32 14
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 6
  %26 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %devfn, align 4
  %28 = shl i32 %27, 24
  %and26 = shl i32 %27, 24
  %bf.shl31 = and i32 %and26, 117440512
  %.masked = and i32 %28, -134217728
  %bf.clear32 = or i32 %.masked, %conv15
  %bf.set33 = or i32 %bf.clear32, %bf.shl31
  %29 = ptrtoint ptr %pci_information to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %bf.set33, ptr %pci_information, align 4
  %30 = load ptr, ptr %bus, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %domain_nr.i, align 8
  %segment_id = getelementptr inbounds %struct.mpt3_ioctl_iocinfo, ptr %karg, i32 0, i32 14, i32 1
  %33 = ptrtoint ptr %segment_id to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %segment_id, align 4
  %FWVersion = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 101, i32 15
  %34 = ptrtoint ptr %FWVersion to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %FWVersion, align 4
  %firmware_version = getelementptr inbounds %struct.mpt3_ioctl_iocinfo, ptr %karg, i32 0, i32 8
  %36 = ptrtoint ptr %firmware_version to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %firmware_version, align 4
  %driver_version = getelementptr inbounds %struct.mpt3_ioctl_iocinfo, ptr %karg, i32 0, i32 10
  %driver_name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 5
  %call40 = call ptr @strcpy(ptr noundef %driver_version, ptr noundef %driver_name) #20
  %strlen = call i32 @strlen(ptr %driver_version) #20
  %endptr = getelementptr i8, ptr %driver_version, i32 %strlen
  %37 = ptrtoint ptr %endptr to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 11520, ptr %endptr, align 1
  %hba_mpi_version_belonged = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 86
  %38 = ptrtoint ptr %hba_mpi_version_belonged to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hba_mpi_version_belonged, align 2
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.461)
  switch i16 %39, label %if.end4.sw.epilog_crit_edge [
    i16 512, label %sw.bb
    i16 517, label %if.end4.sw.bb52_crit_edge
    i16 518, label %if.end4.sw.bb52_crit_edge96
  ]

if.end4.sw.bb52_crit_edge96:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb52

if.end4.sw.bb52_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb52

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %is_warpdrive = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 224
  %41 = ptrtoint ptr %is_warpdrive to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_warpdrive, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool45.not = icmp eq i8 %42, 0
  %spec.select = select i1 %tobool45.not, i32 4, i32 5
  %43 = getelementptr inbounds %struct.mpt3_ioctl_iocinfo, ptr %karg, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.select, ptr %43, align 4
  %strlen90 = call i32 @strlen(ptr %driver_version) #20
  %endptr91 = getelementptr i8, ptr %driver_version, i32 %strlen90
  %45 = call ptr @memcpy(ptr %endptr91, ptr @.str.238, i32 13)
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end4.sw.bb52_crit_edge, %if.end4.sw.bb52_crit_edge96
  %is_gen35_ioc = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 240
  %46 = ptrtoint ptr %is_gen35_ioc to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %is_gen35_ioc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool53.not = icmp eq i8 %47, 0
  %spec.select95 = select i1 %tobool53.not, i32 6, i32 7
  %48 = getelementptr inbounds %struct.mpt3_ioctl_iocinfo, ptr %karg, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %spec.select95, ptr %48, align 4
  %strlen88 = call i32 @strlen(ptr %driver_version) #20
  %endptr89 = getelementptr i8, ptr %driver_version, i32 %strlen88
  %50 = call ptr @memcpy(ptr %endptr89, ptr @.str.239, i32 13)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb52, %sw.bb, %if.end4.sw.epilog_crit_edge
  %BiosVersion = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 108, i32 2
  %51 = ptrtoint ptr %BiosVersion to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %BiosVersion, align 8
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  %bios_version = getelementptr inbounds %struct.mpt3_ioctl_iocinfo, ptr %karg, i32 0, i32 9
  %54 = ptrtoint ptr %bios_version to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %bios_version, align 4
  call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 174) #16
  %call.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %sw.epilog.do.end67_crit_edge, label %if.end.i.i

sw.epilog.do.end67_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.end.i.i:                                       ; preds = %sw.epilog
  %55 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 92, i32 -1226833920) #22, !srcloc !832
  %asmresult.i.i = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.do.end67_crit_edge

if.end.i.i.do.end67_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %karg, i32 noundef 92) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %karg, i32 noundef 92) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool63.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool63.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.do.end67_crit_edge

copy_to_user.exit.do.end67_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end67:                                         ; preds = %copy_to_user.exit.do.end67_crit_edge, %if.end.i.i.do.end67_crit_edge, %sw.epilog.do.end67_crit_edge
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 1196, ptr noundef nonnull @.str.236) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %copy_to_user.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end67 ], [ 0, %copy_to_user.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %karg) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_do_mpt_command(ptr noundef %ioc, [14 x i32] %karg.coerce, ptr noundef %mf) unnamed_addr #0 align 64 {
entry:
  %karg = alloca %struct.mpt3_ioctl_command, align 4
  %data_out_dma = alloca i32, align 4
  %data_in_dma = alloca i32, align 4
  %tmp350 = alloca %struct._MPI2_SGE_SIMPLE64, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %karg.coerce.fca.0.extract = extractvalue [14 x i32] %karg.coerce, 0
  %0 = ptrtoint ptr %karg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %karg.coerce.fca.0.extract, ptr %karg, align 4
  %karg.coerce.fca.1.extract = extractvalue [14 x i32] %karg.coerce, 1
  %karg.coerce.fca.1.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 1
  %1 = ptrtoint ptr %karg.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %karg.coerce.fca.1.extract, ptr %karg.coerce.fca.1.gep, align 4
  %karg.coerce.fca.2.extract = extractvalue [14 x i32] %karg.coerce, 2
  %karg.coerce.fca.2.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 2
  %2 = ptrtoint ptr %karg.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %karg.coerce.fca.2.extract, ptr %karg.coerce.fca.2.gep, align 4
  %karg.coerce.fca.3.extract = extractvalue [14 x i32] %karg.coerce, 3
  %karg.coerce.fca.3.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 3
  %3 = ptrtoint ptr %karg.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %karg.coerce.fca.3.extract, ptr %karg.coerce.fca.3.gep, align 4
  %karg.coerce.fca.4.extract = extractvalue [14 x i32] %karg.coerce, 4
  %karg.coerce.fca.4.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 4
  %4 = ptrtoint ptr %karg.coerce.fca.4.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %karg.coerce.fca.4.extract, ptr %karg.coerce.fca.4.gep, align 4
  %karg.coerce.fca.5.extract = extractvalue [14 x i32] %karg.coerce, 5
  %karg.coerce.fca.5.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 5
  %5 = ptrtoint ptr %karg.coerce.fca.5.gep to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %karg.coerce.fca.5.extract, ptr %karg.coerce.fca.5.gep, align 4
  %karg.coerce.fca.6.extract = extractvalue [14 x i32] %karg.coerce, 6
  %karg.coerce.fca.6.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 6
  %6 = ptrtoint ptr %karg.coerce.fca.6.gep to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %karg.coerce.fca.6.extract, ptr %karg.coerce.fca.6.gep, align 4
  %karg.coerce.fca.7.extract = extractvalue [14 x i32] %karg.coerce, 7
  %karg.coerce.fca.7.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 7
  %7 = ptrtoint ptr %karg.coerce.fca.7.gep to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %karg.coerce.fca.7.extract, ptr %karg.coerce.fca.7.gep, align 4
  %karg.coerce.fca.8.extract = extractvalue [14 x i32] %karg.coerce, 8
  %karg.coerce.fca.8.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 8
  %8 = ptrtoint ptr %karg.coerce.fca.8.gep to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %karg.coerce.fca.8.extract, ptr %karg.coerce.fca.8.gep, align 4
  %karg.coerce.fca.9.extract = extractvalue [14 x i32] %karg.coerce, 9
  %karg.coerce.fca.9.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 9
  %9 = ptrtoint ptr %karg.coerce.fca.9.gep to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %karg.coerce.fca.9.extract, ptr %karg.coerce.fca.9.gep, align 4
  %karg.coerce.fca.10.extract = extractvalue [14 x i32] %karg.coerce, 10
  %karg.coerce.fca.10.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 10
  %10 = ptrtoint ptr %karg.coerce.fca.10.gep to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %karg.coerce.fca.10.extract, ptr %karg.coerce.fca.10.gep, align 4
  %karg.coerce.fca.11.extract = extractvalue [14 x i32] %karg.coerce, 11
  %karg.coerce.fca.11.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 11
  %11 = ptrtoint ptr %karg.coerce.fca.11.gep to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %karg.coerce.fca.11.extract, ptr %karg.coerce.fca.11.gep, align 4
  %karg.coerce.fca.12.extract = extractvalue [14 x i32] %karg.coerce, 12
  %karg.coerce.fca.12.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 12
  %12 = ptrtoint ptr %karg.coerce.fca.12.gep to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %karg.coerce.fca.12.extract, ptr %karg.coerce.fca.12.gep, align 4
  %karg.coerce.fca.13.extract = extractvalue [14 x i32] %karg.coerce, 13
  %karg.coerce.fca.13.gep = getelementptr inbounds [14 x i32], ptr %karg, i32 0, i32 13
  %13 = ptrtoint ptr %karg.coerce.fca.13.gep to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %karg.coerce.fca.13.extract, ptr %karg.coerce.fca.13.gep, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_out_dma) #16
  %14 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %data_out_dma, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_in_dma) #16
  %15 = ptrtoint ptr %data_in_dma to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %data_in_dma, align 4
  %status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 4
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %17)
  %cmp.not = icmp eq i16 %17, -32768
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, ptr noundef nonnull @.str.242) #19
  br label %cleanup627

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mpt3sas_wait_for_ioc(ptr noundef %ioc, i32 noundef 10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup627_crit_edge

if.end.cleanup627_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup627

if.end4:                                          ; preds = %if.end
  %request_sz = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 145
  %18 = ptrtoint ptr %request_sz to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %request_sz, align 2
  %conv5 = zext i16 %19 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv5, i32 noundef 3520) #23
  %tobool7.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool7.not, label %do.end11, label %if.end16

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %name13 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, ptr noundef %name13, ptr noundef nonnull @.str.242) #19
  br label %cleanup627

if.end16:                                         ; preds = %if.end4
  %20 = ptrtoint ptr %karg.coerce.fca.12.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %karg.coerce.fca.12.gep, align 4
  %mul = shl i32 %21, 2
  %22 = ptrtoint ptr %request_sz to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %request_sz, align 2
  %conv18 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv18)
  %cmp19 = icmp ugt i32 %mul, %conv18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %21)
  %cmp22 = icmp ugt i32 %21, 1073741823
  %or.cond = or i1 %cmp22, %cmp19
  br i1 %or.cond, label %if.end16.cleanup627_crit_edge, label %if.end8.i.i

if.end16.cleanup627_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup627

if.end8.i.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.do.end33_crit_edge, label %if.then27.i.i, !prof !825

land.rhs16.i.i.do.end33_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end33

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.232, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %do.end33

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef nonnull %call9.i.i, i32 noundef %mul, i1 noundef zeroext false) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %mf, i32 %mul, i32 -1226833920) #22, !srcloc !828
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !825

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef %mul) #16
  %25 = tail call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !829
  %and.i.i.i.i = and i32 %27, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !830
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i.i, ptr noundef %mf, i32 noundef %mul) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #16, !srcloc !830
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end36, label %if.then11.i.i, !prof !825

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %sub.i.i
  %28 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %do.end33

do.end33:                                         ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.do.end33_crit_edge
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 712, ptr noundef nonnull @.str.242) #19
  br label %cleanup627

if.end36:                                         ; preds = %if.end.i.i
  %Function = getelementptr inbounds %struct._MPI2_REQUEST_HEADER, ptr %call9.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %Function to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %Function, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp38 = icmp eq i8 %30, 1
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end36
  %ctl_cb_idx = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 67
  %31 = ptrtoint ptr %ctl_cb_idx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ctl_cb_idx, align 8
  %call41 = tail call zeroext i16 @mpt3sas_base_get_smid_hpr(ptr noundef %ioc, i8 noundef zeroext %32) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call41)
  %tobool42.not = icmp eq i16 %call41, 0
  br i1 %tobool42.not, label %do.end46, label %if.then40.if.end54_crit_edge

if.then40.if.end54_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54

do.end46:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  %name48 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name48, ptr noundef nonnull @.str.242) #19
  br label %cleanup627

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %scsiio_depth = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 144
  %33 = ptrtoint ptr %scsiio_depth to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %scsiio_depth, align 8
  %add = add i16 %34, -2
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then40.if.end54_crit_edge
  %smid.0 = phi i16 [ %call41, %if.then40.if.end54_crit_edge ], [ %add, %if.else ]
  %35 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 2, ptr %status, align 4
  %reply = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 2
  %36 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reply, align 4
  %reply_sz = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 181
  %38 = ptrtoint ptr %reply_sz to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %reply_sz, align 4
  %conv58 = zext i16 %39 to i32
  %40 = call ptr @memset(ptr %37, i32 0, i32 %conv58)
  %call59 = tail call ptr @mpt3sas_base_get_msg_frame(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  %41 = ptrtoint ptr %request_sz to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %request_sz, align 2
  %conv61 = zext i16 %42 to i32
  %43 = call ptr @memset(ptr %call59, i32 0, i32 %conv61)
  %44 = ptrtoint ptr %karg.coerce.fca.12.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %karg.coerce.fca.12.gep, align 4
  %mul63 = shl i32 %45, 2
  %46 = call ptr @memcpy(ptr %call59, ptr %call9.i.i, i32 %mul63)
  %smid65 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 5
  %47 = ptrtoint ptr %smid65 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %smid.0, ptr %smid65, align 2
  %48 = ptrtoint ptr %karg.coerce.fca.10.gep to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %karg.coerce.fca.10.gep, align 4
  %50 = ptrtoint ptr %karg.coerce.fca.9.gep to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %karg.coerce.fca.9.gep, align 4
  %52 = ptrtoint ptr %Function to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %Function, align 1
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.462)
  switch i8 %53, label %if.end54.if.end99_crit_edge [
    i8 0, label %if.end54.if.then90_crit_edge
    i8 22, label %if.end54.if.then90_crit_edge1148
    i8 1, label %if.end54.if.then90_crit_edge1149
    i8 28, label %if.end54.if.then90_crit_edge1150
    i8 51, label %if.end54.if.then90_crit_edge1151
  ]

if.end54.if.then90_crit_edge1151:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then90

if.end54.if.then90_crit_edge1150:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then90

if.end54.if.then90_crit_edge1149:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then90

if.end54.if.then90_crit_edge1148:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then90

if.end54.if.then90_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then90

if.end54.if.end99_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

if.then90:                                        ; preds = %if.end54.if.then90_crit_edge, %if.end54.if.then90_crit_edge1148, %if.end54.if.then90_crit_edge1149, %if.end54.if.then90_crit_edge1150, %if.end54.if.then90_crit_edge1151
  %55 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool91.not = icmp eq i16 %56, 0
  br i1 %tobool91.not, label %if.then90.if.then97_crit_edge, label %lor.lhs.false92

if.then90.if.then97_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then97

lor.lhs.false92:                                  ; preds = %if.then90
  %57 = tail call i16 @llvm.bswap.i16(i16 %56)
  %MaxDevHandle = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 101, i32 27
  %58 = ptrtoint ptr %MaxDevHandle to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %MaxDevHandle, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %59)
  %cmp95 = icmp ugt i16 %57, %59
  br i1 %cmp95, label %lor.lhs.false92.if.then97_crit_edge, label %lor.lhs.false92.if.end99_crit_edge

lor.lhs.false92.if.end99_crit_edge:               ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end99

lor.lhs.false92.if.then97_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then97

if.then97:                                        ; preds = %lor.lhs.false92.if.then97_crit_edge, %if.then90.if.then97_crit_edge
  tail call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %cleanup627

if.end99:                                         ; preds = %lor.lhs.false92.if.end99_crit_edge, %if.end54.if.end99_crit_edge
  %device_handle.0 = phi i16 [ %57, %lor.lhs.false92.if.end99_crit_edge ], [ -1, %if.end54.if.end99_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool100.not = icmp eq i32 %49, 0
  br i1 %tobool100.not, label %if.end99.if.end120_crit_edge, label %if.then101

if.end99.if.end120_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120

if.then101:                                       ; preds = %if.end99
  %pdev = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 7
  %60 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %49, ptr noundef nonnull %data_out_dma, i32 noundef 3264, i32 noundef 0) #16
  %tobool103.not = icmp eq ptr %call.i, null
  br i1 %tobool103.not, label %do.end107, label %if.end110

do.end107:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #18
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 760, ptr noundef nonnull @.str.242) #19
  call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %cleanup627

if.end110:                                        ; preds = %if.then101
  %62 = ptrtoint ptr %karg.coerce.fca.6.gep to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %karg.coerce.fca.6.gep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp9.i.i951 = icmp slt i32 %49, 0
  br i1 %cmp9.i.i951, label %land.rhs16.i.i954, label %if.then.i.i.i957

land.rhs16.i.i954:                                ; preds = %if.end110
  %.b71.i.i953 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i953, label %land.rhs16.i.i954.if.end619.thread1135_crit_edge, label %if.then27.i.i955, !prof !825

land.rhs16.i.i954.if.end619.thread1135_crit_edge: ; preds = %land.rhs16.i.i954
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end619.thread1135

if.then27.i.i955:                                 ; preds = %land.rhs16.i.i954
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.232, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %if.end619.thread1135

if.then.i.i.i957:                                 ; preds = %if.end110
  call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %49, i1 noundef zeroext false) #16
  call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i958 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i958, label %if.then.i.i.i957.if.then11.i.i975_crit_edge, label %land.lhs.true.i.i962

if.then.i.i.i957.if.then11.i.i975_crit_edge:      ; preds = %if.then.i.i.i957
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i975

land.lhs.true.i.i962:                             ; preds = %if.then.i.i.i957
  %64 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %63, i32 %49, i32 -1226833920) #22, !srcloc !828
  %asmresult.i.i960 = extractvalue { i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i960)
  %cmp.i6.i961 = icmp eq i32 %asmresult.i.i960, 0
  br i1 %cmp.i6.i961, label %if.end.i.i972, label %land.lhs.true.i.i962.if.then11.i.i975_crit_edge, !prof !825

land.lhs.true.i.i962.if.then11.i.i975_crit_edge:  ; preds = %land.lhs.true.i.i962
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i975

if.end.i.i972:                                    ; preds = %land.lhs.true.i.i962
  %call.i.i.i963 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef %49) #16
  %65 = call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i964 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i.i964 to ptr
  %cpu_domain.i.i.i.i.i965 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 4
  %67 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i965) #13, !srcloc !829
  %and.i.i.i.i966 = and i32 %67, -13
  %or.i.i.i.i967 = or i32 %and.i.i.i.i966, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i967) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i968 = call i32 @arm_copy_from_user(ptr noundef nonnull %call.i, ptr noundef %63, i32 noundef %49) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i968)
  %tobool4.not.i.i971 = icmp eq i32 %call1.i.i.i968, 0
  br i1 %tobool4.not.i.i971, label %if.end.i.i972.if.end120_crit_edge, label %if.end.i.i972.if.then11.i.i975_crit_edge, !prof !825

if.end.i.i972.if.then11.i.i975_crit_edge:         ; preds = %if.end.i.i972
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i975

if.end.i.i972.if.end120_crit_edge:                ; preds = %if.end.i.i972
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120

if.then11.i.i975:                                 ; preds = %if.end.i.i972.if.then11.i.i975_crit_edge, %land.lhs.true.i.i962.if.then11.i.i975_crit_edge, %if.then.i.i.i957.if.then11.i.i975_crit_edge
  %res.0.i.i9701072 = phi i32 [ %call1.i.i.i968, %if.end.i.i972.if.then11.i.i975_crit_edge ], [ %49, %if.then.i.i.i957.if.then11.i.i975_crit_edge ], [ %49, %land.lhs.true.i.i962.if.then11.i.i975_crit_edge ]
  %sub.i.i973 = sub i32 %49, %res.0.i.i9701072
  %add.ptr.i.i974 = getelementptr i8, ptr %call.i, i32 %sub.i.i973
  %68 = call ptr @memset(ptr %add.ptr.i.i974, i32 0, i32 %res.0.i.i9701072)
  br label %if.end619.thread1135

if.end619.thread1135:                             ; preds = %if.then11.i.i975, %if.then27.i.i955, %land.rhs16.i.i954.if.end619.thread1135_crit_edge
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 768, ptr noundef nonnull @.str.242) #19
  call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %if.then621

if.end120:                                        ; preds = %if.end.i.i972.if.end120_crit_edge, %if.end99.if.end120_crit_edge
  %data_out.0 = phi ptr [ null, %if.end99.if.end120_crit_edge ], [ %call.i, %if.end.i.i972.if.end120_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool121.not = icmp eq i32 %51, 0
  br i1 %tobool121.not, label %if.end120.if.end134_crit_edge, label %if.then122

if.end120.if.end134_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end134

if.then122:                                       ; preds = %if.end120
  %pdev123 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 7
  %69 = ptrtoint ptr %pdev123 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev123, align 4
  %dev124 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %call.i1056 = call ptr @dma_alloc_attrs(ptr noundef %dev124, i32 noundef %51, ptr noundef nonnull %data_in_dma, i32 noundef 3264, i32 noundef 0) #16
  %tobool126.not = icmp eq ptr %call.i1056, null
  br i1 %tobool126.not, label %do.end130, label %if.then122.if.end134_crit_edge

if.then122.if.end134_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end134

do.end130:                                        ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #18
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 780, ptr noundef nonnull @.str.242) #19
  call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %if.end619

if.end134:                                        ; preds = %if.then122.if.end134_crit_edge, %if.end120.if.end134_crit_edge
  %data_in.0 = phi ptr [ %call.i1056, %if.then122.if.end134_crit_edge ], [ null, %if.end120.if.end134_crit_edge ]
  %71 = ptrtoint ptr %karg.coerce.fca.12.gep to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %karg.coerce.fca.12.gep, align 4
  %mul136 = shl i32 %72, 2
  %add.ptr = getelementptr i8, ptr %call59, i32 %mul136
  call fastcc void @_ctl_display_some_debug(ptr noundef %ioc, i16 noundef zeroext %smid.0, ptr noundef nonnull @.str.256, ptr noundef null)
  %done = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 1
  %73 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.145, ptr noundef nonnull @init_completion.__key) #16
  %74 = ptrtoint ptr %Function to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %Function, align 1
  %76 = zext i8 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.463)
  switch i8 %75, label %if.end134.sw.default_crit_edge [
    i8 51, label %sw.bb
    i8 0, label %if.end134.sw.bb184_crit_edge
    i8 22, label %if.end134.sw.bb184_crit_edge1152
    i8 1, label %sw.bb214
    i8 26, label %sw.bb268
    i8 28, label %sw.bb308
    i8 9, label %if.end134.sw.bb330_crit_edge
    i8 18, label %if.end134.sw.bb330_crit_edge1153
    i8 23, label %sw.bb333
    i8 27, label %sw.bb387
  ]

if.end134.sw.bb330_crit_edge1153:                 ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb330

if.end134.sw.bb330_crit_edge:                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb330

if.end134.sw.bb184_crit_edge1152:                 ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb184

if.end134.sw.bb184_crit_edge:                     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb184

if.end134.sw.default_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.default

sw.bb:                                            ; preds = %if.end134
  %pcie_sg_lookup = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 149
  %77 = ptrtoint ptr %pcie_sg_lookup to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pcie_sg_lookup, align 8
  %tobool140.not = icmp eq ptr %78, null
  br i1 %tobool140.not, label %if.then141, label %if.end159

if.then141:                                       ; preds = %sw.bb
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %79 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %logging_level, align 8
  %and = and i32 %80, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool142.not = icmp eq i32 %and, 0
  br i1 %tobool142.not, label %if.then141.if.end151_crit_edge, label %do.end146

if.then141.if.end151_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end151

do.end146:                                        ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #18
  %name148 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258, ptr noundef %name148) #19
  br label %if.end151

if.end151:                                        ; preds = %do.end146, %if.then141.if.end151_crit_edge
  %81 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %logging_level, align 8
  %and153 = and i32 %82, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.end151.if.end158_crit_edge, label %if.then155

if.end151.if.end158_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end158

if.then155:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #18
  %83 = ptrtoint ptr %request_sz to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %request_sz, align 2
  %85 = lshr i16 %84, 2
  %div = zext i16 %85 to i32
  call fastcc void @_debug_dump_mf(ptr noundef %call59, i32 noundef %div)
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.end151.if.end158_crit_edge
  call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %if.end614

if.end159:                                        ; preds = %sw.bb
  %ErrorResponseBaseAddress = getelementptr inbounds %struct._MPI26_NVME_ENCAPSULATED_REQUEST, ptr %call59, i32 0, i32 10
  %86 = ptrtoint ptr %ErrorResponseBaseAddress to i32
  call void @__asan_storeN_noabort(i32 %86, i32 8)
  store i64 0, ptr %ErrorResponseBaseAddress, align 4
  %call162 = call i32 @mpt3sas_base_get_sense_buffer_dma(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  %87 = call i32 @llvm.bswap.i32(i32 %call162)
  %conv163 = zext i32 %87 to i64
  %88 = call i64 @llvm.bswap.i64(i64 %conv163)
  %89 = ptrtoint ptr %ErrorResponseBaseAddress to i32
  call void @__asan_loadN_noabort(i32 %89, i32 8)
  %90 = load i64, ptr %ErrorResponseBaseAddress, align 4
  %or = or i64 %88, %90
  store i64 %or, ptr %ErrorResponseBaseAddress, align 4
  %ErrorResponseAllocationLength = getelementptr inbounds %struct._MPI26_NVME_ENCAPSULATED_REQUEST, ptr %call59, i32 0, i32 11
  %91 = ptrtoint ptr %ErrorResponseAllocationLength to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 4096, ptr %ErrorResponseAllocationLength, align 4
  %sense = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 3
  %92 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sense, align 8
  %94 = call ptr @memset(ptr %93, i32 0, i32 16)
  %build_nvme_prp = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 89
  %95 = ptrtoint ptr %build_nvme_prp to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %build_nvme_prp, align 4
  %97 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %data_out_dma, align 4
  %99 = ptrtoint ptr %data_in_dma to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %data_in_dma, align 4
  call void %96(ptr noundef %ioc, i16 noundef zeroext %smid.0, ptr noundef %call59, i32 noundef %98, i32 noundef %49, i32 noundef %100, i32 noundef %51) #16
  %conv166 = zext i16 %device_handle.0 to i32
  %device_remove_in_progress = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 238
  %101 = ptrtoint ptr %device_remove_in_progress to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %device_remove_in_progress, align 4
  %div3.i = lshr i32 %conv166, 5
  %arrayidx.i = getelementptr i32, ptr %102, i32 %div3.i
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv166, 31
  %105 = shl nuw i32 1, %and.i
  %106 = and i32 %104, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool168.not = icmp eq i32 %106, 0
  br i1 %tobool168.not, label %if.end183, label %if.then169

if.then169:                                       ; preds = %if.end159
  %logging_level170 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %107 = ptrtoint ptr %logging_level170 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %logging_level170, align 8
  %and171 = and i32 %108, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  br i1 %tobool172.not, label %if.then169.if.end182_crit_edge, label %do.end176

if.then169.if.end182_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end182

do.end176:                                        ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #18
  %name178 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.261, ptr noundef %name178, i32 noundef %conv166) #19
  br label %if.end182

if.end182:                                        ; preds = %do.end176, %if.then169.if.end182_crit_edge
  call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %if.end614

if.end183:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #18
  call void @mpt3sas_base_put_smid_nvme_encap(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %sw.epilog

sw.bb184:                                         ; preds = %if.end134.sw.bb184_crit_edge, %if.end134.sw.bb184_crit_edge1152
  %SenseBufferLength = getelementptr inbounds %struct._MPI2_SCSI_IO_REQUEST, ptr %call59, i32 0, i32 11
  %109 = ptrtoint ptr %SenseBufferLength to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 96, ptr %SenseBufferLength, align 2
  %call185 = call i32 @mpt3sas_base_get_sense_buffer_dma(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  %SenseBufferLowAddress = getelementptr inbounds %struct._MPI2_SCSI_IO_REQUEST, ptr %call59, i32 0, i32 9
  %110 = ptrtoint ptr %SenseBufferLowAddress to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %call185, ptr %SenseBufferLowAddress, align 4
  %sense187 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 3
  %111 = ptrtoint ptr %sense187 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sense187, align 8
  %113 = call ptr @memset(ptr %112, i32 0, i32 96)
  %conv188 = zext i16 %device_handle.0 to i32
  %device_remove_in_progress189 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 238
  %114 = ptrtoint ptr %device_remove_in_progress189 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %device_remove_in_progress189, align 4
  %div3.i978 = lshr i32 %conv188, 5
  %arrayidx.i979 = getelementptr i32, ptr %115, i32 %div3.i978
  %116 = ptrtoint ptr %arrayidx.i979 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %arrayidx.i979, align 4
  %and.i980 = and i32 %conv188, 31
  %118 = shl nuw i32 1, %and.i980
  %119 = and i32 %117, %118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool191.not = icmp eq i32 %119, 0
  br i1 %tobool191.not, label %if.end206, label %if.then192

if.then192:                                       ; preds = %sw.bb184
  %logging_level193 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %120 = ptrtoint ptr %logging_level193 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %logging_level193, align 8
  %and194 = and i32 %121, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.then192.cleanup_crit_edge, label %do.end199

if.then192.cleanup_crit_edge:                     ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end199:                                        ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #18
  %name201 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, ptr noundef %name201, i32 noundef %conv188) #19
  br label %cleanup

if.end206:                                        ; preds = %sw.bb184
  %build_sg = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 83
  %122 = ptrtoint ptr %build_sg to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %build_sg, align 8
  %124 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %data_out_dma, align 4
  %126 = ptrtoint ptr %data_in_dma to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %data_in_dma, align 4
  call void %123(ptr noundef %ioc, ptr noundef %add.ptr, i32 noundef %125, i32 noundef %49, i32 noundef %127, i32 noundef %51) #16
  %128 = ptrtoint ptr %Function to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %Function, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %cmp209 = icmp eq i8 %129, 0
  br i1 %cmp209, label %if.then211, label %if.else212

if.then211:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #18
  %put_smid_scsi_io = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 244
  %130 = ptrtoint ptr %put_smid_scsi_io to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %put_smid_scsi_io, align 4
  call void %131(ptr noundef %ioc, i16 noundef zeroext %smid.0, i16 noundef zeroext %device_handle.0) #16
  br label %sw.epilog

if.else212:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #18
  %put_smid_default = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 247
  %132 = ptrtoint ptr %put_smid_default to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %put_smid_default, align 8
  call void %133(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %sw.epilog

cleanup:                                          ; preds = %do.end199, %if.then192.cleanup_crit_edge
  call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %if.end614

sw.bb214:                                         ; preds = %if.end134
  %logging_level215 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %134 = ptrtoint ptr %logging_level215 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %logging_level215, align 8
  %and216 = and i32 %135, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %tobool217.not = icmp eq i32 %and216, 0
  br i1 %tobool217.not, label %sw.bb214.if.end228_crit_edge, label %do.end221

sw.bb214.if.end228_crit_edge:                     ; preds = %sw.bb214
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end228

do.end221:                                        ; preds = %sw.bb214
  call void @__sanitizer_cov_trace_pc() #18
  %name223 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %136 = ptrtoint ptr %call59 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %call59, align 4
  %138 = call i16 @llvm.bswap.i16(i16 %137)
  %conv225 = zext i16 %138 to i32
  %TaskType = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REQUEST, ptr %call59, i32 0, i32 4
  %139 = ptrtoint ptr %TaskType to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %TaskType, align 1
  %conv226 = zext i8 %140 to i32
  %call227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267, ptr noundef %name223, i32 noundef %conv225, i32 noundef %conv226) #19
  br label %if.end228

if.end228:                                        ; preds = %do.end221, %sw.bb214.if.end228_crit_edge
  %got_task_abort_from_ioctl = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 28
  %141 = ptrtoint ptr %got_task_abort_from_ioctl to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %got_task_abort_from_ioctl, align 1
  %TaskType229 = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REQUEST, ptr %call59, i32 0, i32 4
  %142 = ptrtoint ptr %TaskType229 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %TaskType229, align 1
  %144 = zext i8 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.464)
  switch i8 %143, label %if.end228.if.end244_crit_edge [
    i8 1, label %if.end228.if.then238_crit_edge
    i8 7, label %if.end228.if.then238_crit_edge1154
  ]

if.end228.if.then238_crit_edge1154:               ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then238

if.end228.if.then238_crit_edge:                   ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then238

if.end228.if.end244_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end244

if.then238:                                       ; preds = %if.end228.if.then238_crit_edge, %if.end228.if.then238_crit_edge1154
  %call239 = call fastcc i32 @_ctl_set_task_mid(ptr noundef %ioc, ptr noundef nonnull %karg, ptr noundef %call59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %if.then238.if.end244_crit_edge, label %if.then241

if.then238.if.end244_crit_edge:                   ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end244

if.then241:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #18
  call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  %145 = ptrtoint ptr %got_task_abort_from_ioctl to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %got_task_abort_from_ioctl, align 1
  br label %if.end614

if.end244:                                        ; preds = %if.then238.if.end244_crit_edge, %if.end228.if.end244_crit_edge
  %146 = ptrtoint ptr %got_task_abort_from_ioctl to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %got_task_abort_from_ioctl, align 1
  %conv246 = zext i16 %device_handle.0 to i32
  %device_remove_in_progress247 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 238
  %147 = ptrtoint ptr %device_remove_in_progress247 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %device_remove_in_progress247, align 4
  %div3.i983 = lshr i32 %conv246, 5
  %arrayidx.i984 = getelementptr i32, ptr %148, i32 %div3.i983
  %149 = ptrtoint ptr %arrayidx.i984 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %arrayidx.i984, align 4
  %and.i985 = and i32 %conv246, 31
  %151 = shl nuw i32 1, %and.i985
  %152 = and i32 %150, %151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool249.not = icmp eq i32 %152, 0
  br i1 %tobool249.not, label %cleanup266, label %if.then250

if.then250:                                       ; preds = %if.end244
  %153 = ptrtoint ptr %logging_level215 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %logging_level215, align 8
  %and252 = and i32 %154, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  br i1 %tobool253.not, label %if.then250.if.end263_crit_edge, label %do.end257

if.then250.if.end263_crit_edge:                   ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end263

do.end257:                                        ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #18
  %name259 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, ptr noundef %name259, i32 noundef %conv246) #19
  br label %if.end263

if.end263:                                        ; preds = %do.end257, %if.then250.if.end263_crit_edge
  call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %if.end614

cleanup266:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #18
  %155 = ptrtoint ptr %call59 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %call59, align 4
  %157 = call i16 @llvm.bswap.i16(i16 %156)
  call void @mpt3sas_scsih_set_tm_flag(ptr noundef %ioc, i16 noundef zeroext %157) #16
  %build_sg_mpi = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 87
  %158 = ptrtoint ptr %build_sg_mpi to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %build_sg_mpi, align 4
  %160 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %data_out_dma, align 4
  %162 = ptrtoint ptr %data_in_dma to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %data_in_dma, align 4
  call void %159(ptr noundef %ioc, ptr noundef %add.ptr, i32 noundef %161, i32 noundef %49, i32 noundef %163, i32 noundef %51) #16
  %put_smid_hi_priority = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 246
  %164 = ptrtoint ptr %put_smid_hi_priority to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %put_smid_hi_priority, align 4
  call void %165(ptr noundef %ioc, i16 noundef zeroext %smid.0, i16 noundef zeroext 0) #16
  br label %sw.epilog

sw.bb268:                                         ; preds = %if.end134
  %multipath_on_hba = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 249
  %166 = ptrtoint ptr %multipath_on_hba to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %multipath_on_hba, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool269.not = icmp eq i8 %167, 0
  br i1 %tobool269.not, label %if.then270, label %sw.bb268.if.end271_crit_edge

sw.bb268.if.end271_crit_edge:                     ; preds = %sw.bb268
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end271

if.then270:                                       ; preds = %sw.bb268
  call void @__sanitizer_cov_trace_pc() #18
  %PhysicalPort = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call9.i.i, i32 0, i32 1
  %168 = ptrtoint ptr %PhysicalPort to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -1, ptr %PhysicalPort, align 1
  br label %if.end271

if.end271:                                        ; preds = %if.then270, %sw.bb268.if.end271_crit_edge
  %169 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %170)
  %tobool274.not = icmp sgt i8 %170, -1
  br i1 %tobool274.not, label %if.else276, label %if.then275

if.then275:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #18
  %SGL = getelementptr inbounds %struct._MPI2_SMP_PASSTHROUGH_REQUEST, ptr %call9.i.i, i32 0, i32 14
  br label %if.end288

if.else276:                                       ; preds = %if.end271
  %cmp277 = icmp eq ptr %data_out.0, null
  br i1 %cmp277, label %cleanup305, label %if.else276.if.end288_crit_edge, !prof !833

if.else276.if.end288_crit_edge:                   ; preds = %if.else276
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end288

if.end288:                                        ; preds = %if.else276.if.end288_crit_edge, %if.then275
  %data.0 = phi ptr [ %SGL, %if.then275 ], [ %data_out.0, %if.else276.if.end288_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data.0, i32 1
  %171 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -111, i8 %172)
  %cmp290 = icmp eq i8 %172, -111
  br i1 %cmp290, label %land.lhs.true, label %if.end288.cleanup305.thread_crit_edge

if.end288.cleanup305.thread_crit_edge:            ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup305.thread

land.lhs.true:                                    ; preds = %if.end288
  %arrayidx292 = getelementptr i8, ptr %data.0, i32 10
  %173 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx292, align 1
  %.off = add i8 %174, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then301, label %land.lhs.true.cleanup305.thread_crit_edge

land.lhs.true.cleanup305.thread_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup305.thread

if.then301:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %ioc_link_reset_in_progress = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 31
  %175 = ptrtoint ptr %ioc_link_reset_in_progress to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 1, ptr %ioc_link_reset_in_progress, align 8
  %ignore_loginfos = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 32
  %176 = ptrtoint ptr %ignore_loginfos to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 1, ptr %ignore_loginfos, align 1
  br label %cleanup305.thread

cleanup305.thread:                                ; preds = %if.then301, %land.lhs.true.cleanup305.thread_crit_edge, %if.end288.cleanup305.thread_crit_edge
  %build_sg303 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 83
  %177 = ptrtoint ptr %build_sg303 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %build_sg303, align 8
  %179 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %data_out_dma, align 4
  %181 = ptrtoint ptr %data_in_dma to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %data_in_dma, align 4
  call void %178(ptr noundef %ioc, ptr noundef %add.ptr, i32 noundef %180, i32 noundef %49, i32 noundef %182, i32 noundef %51) #16
  %put_smid_default304 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 247
  %183 = ptrtoint ptr %put_smid_default304 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %put_smid_default304, align 8
  call void %184(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %sw.epilog

cleanup305:                                       ; preds = %if.else276
  call void @__sanitizer_cov_trace_pc() #18
  %call286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 917, ptr noundef nonnull @.str.242) #19
  call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %if.end614

sw.bb308:                                         ; preds = %if.end134
  %conv309 = zext i16 %device_handle.0 to i32
  %device_remove_in_progress310 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 238
  %185 = ptrtoint ptr %device_remove_in_progress310 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %device_remove_in_progress310, align 4
  %div3.i988 = lshr i32 %conv309, 5
  %arrayidx.i989 = getelementptr i32, ptr %186, i32 %div3.i988
  %187 = ptrtoint ptr %arrayidx.i989 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %arrayidx.i989, align 4
  %and.i990 = and i32 %conv309, 31
  %189 = shl nuw i32 1, %and.i990
  %190 = and i32 %188, %189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool312.not = icmp eq i32 %190, 0
  br i1 %tobool312.not, label %if.end327, label %if.then313

if.then313:                                       ; preds = %sw.bb308
  %logging_level314 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %191 = ptrtoint ptr %logging_level314 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %logging_level314, align 8
  %and315 = and i32 %192, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and315)
  %tobool316.not = icmp eq i32 %and315, 0
  br i1 %tobool316.not, label %if.then313.if.end326_crit_edge, label %do.end320

if.then313.if.end326_crit_edge:                   ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end326

do.end320:                                        ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #18
  %name322 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, ptr noundef %name322, i32 noundef %conv309) #19
  br label %if.end326

if.end326:                                        ; preds = %do.end320, %if.then313.if.end326_crit_edge
  call void @mpt3sas_base_free_smid(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %if.end614

if.end327:                                        ; preds = %sw.bb308
  call void @__sanitizer_cov_trace_pc() #18
  %build_sg328 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 83
  %193 = ptrtoint ptr %build_sg328 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %build_sg328, align 8
  %195 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %data_out_dma, align 4
  %197 = ptrtoint ptr %data_in_dma to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %data_in_dma, align 4
  call void %194(ptr noundef %ioc, ptr noundef %add.ptr, i32 noundef %196, i32 noundef %49, i32 noundef %198, i32 noundef %51) #16
  %put_smid_default329 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 247
  %199 = ptrtoint ptr %put_smid_default329 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %put_smid_default329, align 8
  call void %200(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %sw.epilog

sw.bb330:                                         ; preds = %if.end134.sw.bb330_crit_edge, %if.end134.sw.bb330_crit_edge1153
  %build_sg331 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 83
  %201 = ptrtoint ptr %build_sg331 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %build_sg331, align 8
  %203 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %data_out_dma, align 4
  %205 = ptrtoint ptr %data_in_dma to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %data_in_dma, align 4
  call void %202(ptr noundef %ioc, ptr noundef %add.ptr, i32 noundef %204, i32 noundef %49, i32 noundef %206, i32 noundef %51) #16
  %put_smid_default332 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 247
  %207 = ptrtoint ptr %put_smid_default332 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %put_smid_default332, align 8
  call void %208(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %sw.epilog

sw.bb333:                                         ; preds = %if.end134
  %209 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %call9.i.i, align 128
  %211 = zext i8 %210 to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.465)
  switch i8 %210, label %if.else381 [
    i8 6, label %sw.bb333.if.then342_crit_edge
    i8 8, label %sw.bb333.if.then342_crit_edge1155
    i8 1, label %if.then349
  ]

sw.bb333.if.then342_crit_edge1155:                ; preds = %sw.bb333
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then342

sw.bb333.if.then342_crit_edge:                    ; preds = %sw.bb333
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then342

if.then342:                                       ; preds = %sw.bb333.if.then342_crit_edge, %sw.bb333.if.then342_crit_edge1155
  %build_sg343 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 83
  %212 = ptrtoint ptr %build_sg343 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %build_sg343, align 8
  %214 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %data_out_dma, align 4
  %216 = ptrtoint ptr %data_in_dma to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %data_in_dma, align 4
  call void %213(ptr noundef %ioc, ptr noundef %add.ptr, i32 noundef %215, i32 noundef %49, i32 noundef %217, i32 noundef %51) #16
  br label %if.end384

if.then349:                                       ; preds = %sw.bb333
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tmp350)
  %218 = ptrtoint ptr %tmp350 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 -1, ptr %tmp350, align 4
  %tmp350.4.tmp350.4.tmp350.4..sroa_idx = getelementptr inbounds i8, ptr %tmp350, i32 4
  %219 = ptrtoint ptr %tmp350.4.tmp350.4.tmp350.4..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %219, i32 8)
  store i64 -1, ptr %tmp350.4.tmp350.4.tmp350.4..sroa_idx, align 4
  %build_sg_mpi351 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 87
  %220 = ptrtoint ptr %build_sg_mpi351 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %build_sg_mpi351, align 4
  %222 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %data_out_dma, align 4
  %224 = ptrtoint ptr %data_in_dma to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %data_in_dma, align 4
  call void %221(ptr noundef %ioc, ptr noundef %add.ptr, i32 noundef %223, i32 noundef %49, i32 noundef %225, i32 noundef %51) #16
  %tobool121.not.not = xor i1 %tobool121.not, true
  %brmerge = select i1 %tobool100.not, i1 true, i1 %tobool121.not.not
  br i1 %brmerge, label %if.then349.if.end365_crit_edge, label %if.then355

if.then349.if.end365_crit_edge:                   ; preds = %if.then349
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end365

if.then355:                                       ; preds = %if.then349
  call void @__sanitizer_cov_trace_pc() #18
  %SGL356 = getelementptr inbounds %struct._MPI2_TOOLBOX_MEM_MOVE_REQUEST, ptr %call59, i32 0, i32 10
  %sge_size = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 143
  %226 = ptrtoint ptr %sge_size to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %sge_size, align 2
  %conv357 = zext i16 %227 to i32
  %add.ptr358 = getelementptr i8, ptr %SGL356, i32 %conv357
  %228 = call ptr @memcpy(ptr %tmp350, ptr %add.ptr358, i32 %conv357)
  %229 = call ptr @memcpy(ptr %add.ptr358, ptr %SGL356, i32 %conv357)
  %230 = load i16, ptr %sge_size, align 2
  %conv364 = zext i16 %230 to i32
  %231 = call ptr @memcpy(ptr %SGL356, ptr %tmp350, i32 %conv364)
  br label %if.end365

if.end365:                                        ; preds = %if.then355, %if.then349.if.end365_crit_edge
  %logging_level366 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %232 = ptrtoint ptr %logging_level366 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %logging_level366, align 8
  %and367 = and i32 %233, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and367)
  %tobool368.not = icmp eq i32 %and367, 0
  br i1 %tobool368.not, label %if.end365.if.end380_crit_edge, label %do.end372

if.end365.if.end380_crit_edge:                    ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end380

do.end372:                                        ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #18
  %name374 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call376 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, ptr noundef %name374) #19
  %234 = ptrtoint ptr %request_sz to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %request_sz, align 2
  %236 = lshr i16 %235, 2
  %div379 = zext i16 %236 to i32
  call fastcc void @_debug_dump_mf(ptr noundef %call59, i32 noundef %div379)
  br label %if.end380

if.end380:                                        ; preds = %do.end372, %if.end365.if.end380_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tmp350)
  br label %if.end384

if.else381:                                       ; preds = %sw.bb333
  call void @__sanitizer_cov_trace_pc() #18
  %build_sg_mpi382 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 87
  %237 = ptrtoint ptr %build_sg_mpi382 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %build_sg_mpi382, align 4
  %239 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %data_out_dma, align 4
  %241 = ptrtoint ptr %data_in_dma to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %data_in_dma, align 4
  call void %238(ptr noundef %ioc, ptr noundef %add.ptr, i32 noundef %240, i32 noundef %49, i32 noundef %242, i32 noundef %51) #16
  br label %if.end384

if.end384:                                        ; preds = %if.else381, %if.end380, %if.then342
  %put_smid_default385 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 247
  %243 = ptrtoint ptr %put_smid_default385 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %put_smid_default385, align 8
  call void %244(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %sw.epilog

sw.bb387:                                         ; preds = %if.end134
  %245 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %call9.i.i, align 128
  %247 = and i8 %246, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %247)
  %switch944 = icmp eq i8 %247, 6
  br i1 %switch944, label %if.then396, label %sw.bb387.sw.default_crit_edge

sw.bb387.sw.default_crit_edge:                    ; preds = %sw.bb387
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.default

if.then396:                                       ; preds = %sw.bb387
  call void @__sanitizer_cov_trace_pc() #18
  %ioc_link_reset_in_progress397 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 31
  %248 = ptrtoint ptr %ioc_link_reset_in_progress397 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 1, ptr %ioc_link_reset_in_progress397, align 8
  %ignore_loginfos398 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 32
  %249 = ptrtoint ptr %ignore_loginfos398 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 1, ptr %ignore_loginfos398, align 1
  br label %sw.default

sw.default:                                       ; preds = %if.then396, %sw.bb387.sw.default_crit_edge, %if.end134.sw.default_crit_edge
  %build_sg_mpi400 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 87
  %250 = ptrtoint ptr %build_sg_mpi400 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %build_sg_mpi400, align 4
  %252 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %data_out_dma, align 4
  %254 = ptrtoint ptr %data_in_dma to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %data_in_dma, align 4
  call void %251(ptr noundef %ioc, ptr noundef %add.ptr, i32 noundef %253, i32 noundef %49, i32 noundef %255, i32 noundef %51) #16
  %put_smid_default401 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 247
  %256 = ptrtoint ptr %put_smid_default401 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %put_smid_default401, align 8
  call void %257(ptr noundef %ioc, i16 noundef zeroext %smid.0) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end384, %sw.bb330, %if.end327, %cleanup305.thread, %cleanup266, %if.else212, %if.then211, %if.end183
  %258 = ptrtoint ptr %karg.coerce.fca.3.gep to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %karg.coerce.fca.3.gep, align 4
  %260 = call i32 @llvm.umax.i32(i32 %259, i32 10)
  %mul411 = mul i32 %260, 100
  %call412 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %mul411) #16
  %261 = ptrtoint ptr %Function to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %Function, align 1
  %263 = zext i8 %262 to i64
  call void @__sanitizer_cov_trace_switch(i64 %263, ptr @__sancov_gen_cov_switch_values.466)
  switch i8 %262, label %sw.epilog.if.end438_crit_edge [
    i8 1, label %if.then417
    i8 26, label %sw.epilog.land.lhs.true430_crit_edge
    i8 27, label %sw.epilog.land.lhs.true430_crit_edge1156
  ]

sw.epilog.land.lhs.true430_crit_edge1156:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true430

sw.epilog.land.lhs.true430_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true430

sw.epilog.if.end438_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end438

if.then417:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %264 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %call9.i.i, align 128
  %266 = call i16 @llvm.bswap.i16(i16 %265)
  call void @mpt3sas_scsih_clear_tm_flag(ptr noundef %ioc, i16 noundef zeroext %266) #16
  call void @mpt3sas_trigger_master(ptr noundef %ioc, i32 noundef 4) #16
  br label %if.end438

land.lhs.true430:                                 ; preds = %sw.epilog.land.lhs.true430_crit_edge, %sw.epilog.land.lhs.true430_crit_edge1156
  %ioc_link_reset_in_progress431 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 31
  %267 = ptrtoint ptr %ioc_link_reset_in_progress431 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %ioc_link_reset_in_progress431, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool433.not = icmp eq i8 %268, 0
  br i1 %tobool433.not, label %land.lhs.true430.if.end438_crit_edge, label %if.then434

land.lhs.true430.if.end438_crit_edge:             ; preds = %land.lhs.true430
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end438

if.then434:                                       ; preds = %land.lhs.true430
  call void @__sanitizer_cov_trace_pc() #18
  %269 = ptrtoint ptr %ioc_link_reset_in_progress431 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 0, ptr %ioc_link_reset_in_progress431, align 8
  %ignore_loginfos436 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 32
  %270 = ptrtoint ptr %ignore_loginfos436 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 0, ptr %ignore_loginfos436, align 1
  br label %if.end438

if.end438:                                        ; preds = %if.then434, %land.lhs.true430.if.end438_crit_edge, %if.then417, %sw.epilog.if.end438_crit_edge
  %271 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %status, align 4
  %273 = and i16 %272, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %273)
  %tobool443.not = icmp eq i16 %273, 0
  br i1 %tobool443.not, label %do.end448, label %if.end460

do.end448:                                        ; preds = %if.end438
  %name450 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call452 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name450, ptr noundef nonnull @.str.242) #19
  %274 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %status, align 4
  %conv455 = trunc i16 %275 to i8
  %276 = ptrtoint ptr %karg.coerce.fca.12.gep to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %karg.coerce.fca.12.gep, align 4
  %call457 = call zeroext i8 @mpt3sas_base_check_cmd_timeout(ptr noundef %ioc, i8 noundef zeroext %conv455, ptr noundef nonnull %call9.i.i, i32 noundef %277) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call457)
  %phi.cmp = icmp eq i8 %call457, 0
  br i1 %phi.cmp, label %do.end448.if.end614_crit_edge, label %if.then568

do.end448.if.end614_crit_edge:                    ; preds = %do.end448
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end614

if.end460:                                        ; preds = %if.end438
  %278 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %reply, align 4
  %Function463 = getelementptr inbounds %struct._MPI2_DEFAULT_REPLY, ptr %279, i32 0, i32 2
  %280 = ptrtoint ptr %Function463 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %Function463, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %281)
  %cmp465 = icmp eq i8 %281, 1
  br i1 %cmp465, label %land.lhs.true467, label %if.end460.if.end480_crit_edge

if.end460.if.end480_crit_edge:                    ; preds = %if.end460
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end480

land.lhs.true467:                                 ; preds = %if.end460
  %logging_level468 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %282 = ptrtoint ptr %logging_level468 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %logging_level468, align 8
  %and469 = and i32 %283, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and469)
  %tobool470.not = icmp eq i32 %and469, 0
  br i1 %tobool470.not, label %land.lhs.true467.if.end480_crit_edge, label %if.then471

land.lhs.true467.if.end480_crit_edge:             ; preds = %land.lhs.true467
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end480

if.then471:                                       ; preds = %land.lhs.true467
  call void @__sanitizer_cov_trace_pc() #18
  %name476 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %IOCStatus = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REPLY, ptr %279, i32 0, i32 11
  %284 = ptrtoint ptr %IOCStatus to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %IOCStatus, align 2
  %286 = call i16 @llvm.bswap.i16(i16 %285)
  %conv478 = zext i16 %286 to i32
  %IOCLogInfo = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REPLY, ptr %279, i32 0, i32 12
  %287 = ptrtoint ptr %IOCLogInfo to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %IOCLogInfo, align 4
  %289 = call i32 @llvm.bswap.i32(i32 %288)
  %TerminationCount = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REPLY, ptr %279, i32 0, i32 13
  %290 = ptrtoint ptr %TerminationCount to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %TerminationCount, align 4
  %292 = call i32 @llvm.bswap.i32(i32 %291)
  %call479 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281, ptr noundef %name476, i32 noundef %conv478, i32 noundef %289, i32 noundef %292) #19
  br label %if.end480

if.end480:                                        ; preds = %if.then471, %land.lhs.true467.if.end480_crit_edge, %if.end460.if.end480_crit_edge
  br i1 %tobool121.not, label %if.end480.if.end492_crit_edge, label %if.then482

if.end480.if.end492_crit_edge:                    ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end492

if.then482:                                       ; preds = %if.end480
  %293 = ptrtoint ptr %karg.coerce.fca.5.gep to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %karg.coerce.fca.5.gep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp9.i.i999 = icmp slt i32 %51, 0
  br i1 %cmp9.i.i999, label %land.rhs16.i.i1002, label %if.then.i.i.i1005

land.rhs16.i.i1002:                               ; preds = %if.then482
  %.b71.i.i1001 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i1001, label %land.rhs16.i.i1002.do.end488_crit_edge, label %if.then27.i.i1003, !prof !825

land.rhs16.i.i1002.do.end488_crit_edge:           ; preds = %land.rhs16.i.i1002
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end488

if.then27.i.i1003:                                ; preds = %land.rhs16.i.i1002
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.232, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %do.end488

if.then.i.i.i1005:                                ; preds = %if.then482
  call void @__check_object_size(ptr noundef %data_in.0, i32 noundef %51, i1 noundef zeroext true) #16
  call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 174) #16
  %call.i.i1006 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i1006, label %if.then.i.i.i1005.do.end488_crit_edge, label %if.end.i.i1010

if.then.i.i.i1005.do.end488_crit_edge:            ; preds = %if.then.i.i.i1005
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end488

if.end.i.i1010:                                   ; preds = %if.then.i.i.i1005
  %295 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %294, i32 %51, i32 -1226833920) #22, !srcloc !832
  %asmresult.i.i1008 = extractvalue { i32, i32 } %295, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1008)
  %cmp.i6.i1009 = icmp eq i32 %asmresult.i.i1008, 0
  br i1 %cmp.i6.i1009, label %copy_to_user.exit, label %if.end.i.i1010.do.end488_crit_edge

if.end.i.i1010.do.end488_crit_edge:               ; preds = %if.end.i.i1010
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end488

copy_to_user.exit:                                ; preds = %if.end.i.i1010
  %call.i.i.i1011 = call zeroext i1 @__kasan_check_read(ptr noundef %data_in.0, i32 noundef %51) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %294, ptr noundef %data_in.0, i32 noundef %51) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool484.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool484.not, label %copy_to_user.exit.if.end492_crit_edge, label %copy_to_user.exit.do.end488_crit_edge

copy_to_user.exit.do.end488_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end488

copy_to_user.exit.if.end492_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end492

do.end488:                                        ; preds = %copy_to_user.exit.do.end488_crit_edge, %if.end.i.i1010.do.end488_crit_edge, %if.then.i.i.i1005.do.end488_crit_edge, %if.then27.i.i1003, %land.rhs16.i.i1002.do.end488_crit_edge
  %call490 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 1059, ptr noundef nonnull @.str.242) #19
  br label %if.end614

if.end492:                                        ; preds = %copy_to_user.exit.if.end492_crit_edge, %if.end480.if.end492_crit_edge
  %296 = ptrtoint ptr %karg.coerce.fca.8.gep to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %karg.coerce.fca.8.gep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool493.not = icmp eq i32 %297, 0
  br i1 %tobool493.not, label %if.end492.if.end512_crit_edge, label %if.then494

if.end492.if.end512_crit_edge:                    ; preds = %if.end492
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end512

if.then494:                                       ; preds = %if.end492
  %298 = ptrtoint ptr %reply_sz to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %reply_sz, align 4
  %conv497 = zext i16 %299 to i32
  %300 = call i32 @llvm.umin.i32(i32 %297, i32 %conv497)
  %301 = ptrtoint ptr %karg.coerce.fca.4.gep to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %karg.coerce.fca.4.gep, align 4
  %303 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %reply, align 4
  call void @__check_object_size(ptr noundef %304, i32 noundef %300, i1 noundef zeroext true) #16
  call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 174) #16
  %call.i.i1022 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i1022, label %if.then494.copy_to_user.exit1031_crit_edge, label %if.end.i.i1026

if.then494.copy_to_user.exit1031_crit_edge:       ; preds = %if.then494
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit1031

if.end.i.i1026:                                   ; preds = %if.then494
  %305 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %302, i32 %300, i32 -1226833920) #22, !srcloc !832
  %asmresult.i.i1024 = extractvalue { i32, i32 } %305, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1024)
  %cmp.i6.i1025 = icmp eq i32 %asmresult.i.i1024, 0
  br i1 %cmp.i6.i1025, label %if.then2.i.i1029, label %if.end.i.i1026.copy_to_user.exit1031_crit_edge

if.end.i.i1026.copy_to_user.exit1031_crit_edge:   ; preds = %if.end.i.i1026
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit1031

if.then2.i.i1029:                                 ; preds = %if.end.i.i1026
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i1027 = call zeroext i1 @__kasan_check_read(ptr noundef %304, i32 noundef %300) #16
  %call.i12.i.i1028 = call i32 @arm_copy_to_user(ptr noundef %302, ptr noundef %304, i32 noundef %300) #16
  br label %copy_to_user.exit1031

copy_to_user.exit1031:                            ; preds = %if.then2.i.i1029, %if.end.i.i1026.copy_to_user.exit1031_crit_edge, %if.then494.copy_to_user.exit1031_crit_edge
  %n.addr.0.i1030 = phi i32 [ %300, %if.then494.copy_to_user.exit1031_crit_edge ], [ %call.i12.i.i1028, %if.then2.i.i1029 ], [ %300, %if.end.i.i1026.copy_to_user.exit1031_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i1030)
  %tobool504.not = icmp eq i32 %n.addr.0.i1030, 0
  br i1 %tobool504.not, label %copy_to_user.exit1031.if.end512_crit_edge, label %do.end508

copy_to_user.exit1031.if.end512_crit_edge:        ; preds = %copy_to_user.exit1031
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end512

do.end508:                                        ; preds = %copy_to_user.exit1031
  call void @__sanitizer_cov_trace_pc() #18
  %call510 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 1071, ptr noundef nonnull @.str.242) #19
  br label %if.end614

if.end512:                                        ; preds = %copy_to_user.exit1031.if.end512_crit_edge, %if.end492.if.end512_crit_edge
  %306 = ptrtoint ptr %karg.coerce.fca.11.gep to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %karg.coerce.fca.11.gep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %307)
  %tobool513.not = icmp eq i32 %307, 0
  br i1 %tobool513.not, label %if.end512.if.end614_crit_edge, label %land.lhs.true514

if.end512.if.end614_crit_edge:                    ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end614

land.lhs.true514:                                 ; preds = %if.end512
  %308 = ptrtoint ptr %Function to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %Function, align 1
  %310 = zext i8 %309 to i64
  call void @__sanitizer_cov_trace_switch(i64 %310, ptr @__sancov_gen_cov_switch_values.467)
  switch i8 %309, label %land.lhs.true514.if.end614_crit_edge [
    i8 0, label %land.lhs.true514.if.then529_crit_edge
    i8 22, label %land.lhs.true514.if.then529_crit_edge1157
    i8 51, label %land.lhs.true514.if.then529_crit_edge1158
  ]

land.lhs.true514.if.then529_crit_edge1158:        ; preds = %land.lhs.true514
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then529

land.lhs.true514.if.then529_crit_edge1157:        ; preds = %land.lhs.true514
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then529

land.lhs.true514.if.then529_crit_edge:            ; preds = %land.lhs.true514
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then529

land.lhs.true514.if.end614_crit_edge:             ; preds = %land.lhs.true514
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end614

if.then529:                                       ; preds = %land.lhs.true514.if.then529_crit_edge, %land.lhs.true514.if.then529_crit_edge1157, %land.lhs.true514.if.then529_crit_edge1158
  %311 = ptrtoint ptr %karg.coerce.fca.7.gep to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %karg.coerce.fca.7.gep, align 4
  %cmp530 = icmp eq ptr %312, null
  br i1 %cmp530, label %do.end535, label %if.end540

do.end535:                                        ; preds = %if.then529
  call void @__sanitizer_cov_trace_pc() #18
  %name537 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call539 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, ptr noundef %name537) #19
  br label %if.end614

if.end540:                                        ; preds = %if.then529
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %309)
  %cmp543 = icmp eq i8 %309, 51
  %cond545 = select i1 %cmp543, i32 16, i32 96
  %313 = call i32 @llvm.umin.i32(i32 %307, i32 %cond545)
  %sense556 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 3
  %314 = ptrtoint ptr %sense556 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %sense556, align 8
  call void @__check_object_size(ptr noundef %315, i32 noundef %313, i1 noundef zeroext true) #16
  call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 174) #16
  %call.i.i1041 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i1041, label %if.end540.do.end562_crit_edge, label %if.end.i.i1045

if.end540.do.end562_crit_edge:                    ; preds = %if.end540
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end562

if.end.i.i1045:                                   ; preds = %if.end540
  %316 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %312, i32 %313, i32 -1226833920) #22, !srcloc !832
  %asmresult.i.i1043 = extractvalue { i32, i32 } %316, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1043)
  %cmp.i6.i1044 = icmp eq i32 %asmresult.i.i1043, 0
  br i1 %cmp.i6.i1044, label %copy_to_user.exit1050, label %if.end.i.i1045.do.end562_crit_edge

if.end.i.i1045.do.end562_crit_edge:               ; preds = %if.end.i.i1045
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end562

copy_to_user.exit1050:                            ; preds = %if.end.i.i1045
  %call.i.i.i1046 = call zeroext i1 @__kasan_check_read(ptr noundef %315, i32 noundef %313) #16
  %call.i12.i.i1047 = call i32 @arm_copy_to_user(ptr noundef nonnull %312, ptr noundef %315, i32 noundef %313) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1047)
  %tobool558.not = icmp eq i32 %call.i12.i.i1047, 0
  br i1 %tobool558.not, label %copy_to_user.exit1050.if.end614_crit_edge, label %copy_to_user.exit1050.do.end562_crit_edge

copy_to_user.exit1050.do.end562_crit_edge:        ; preds = %copy_to_user.exit1050
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end562

copy_to_user.exit1050.if.end614_crit_edge:        ; preds = %copy_to_user.exit1050
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end614

do.end562:                                        ; preds = %copy_to_user.exit1050.do.end562_crit_edge, %if.end.i.i1045.do.end562_crit_edge, %if.end540.do.end562_crit_edge
  %call564 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 1093, ptr noundef nonnull @.str.242) #19
  br label %if.end614

if.then568:                                       ; preds = %do.end448
  %317 = ptrtoint ptr %Function to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %Function, align 1
  %319 = zext i8 %318 to i64
  call void @__sanitizer_cov_trace_switch(i64 %319, ptr @__sancov_gen_cov_switch_values.468)
  switch i8 %318, label %if.else608 [
    i8 0, label %if.then568.do.end586_crit_edge
    i8 22, label %if.then568.do.end586_crit_edge1159
    i8 28, label %if.then568.do.end586_crit_edge1160
  ]

if.then568.do.end586_crit_edge1160:               ; preds = %if.then568
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end586

if.then568.do.end586_crit_edge1159:               ; preds = %if.then568
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end586

if.then568.do.end586_crit_edge:                   ; preds = %if.then568
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end586

do.end586:                                        ; preds = %if.then568.do.end586_crit_edge, %if.then568.do.end586_crit_edge1159, %if.then568.do.end586_crit_edge1160
  %320 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %call9.i.i, align 128
  %322 = call i16 @llvm.bswap.i16(i16 %321)
  %conv591 = zext i16 %322 to i32
  %call592 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.293, ptr noundef %name450, i32 noundef %conv591) #19
  call void @mpt3sas_halt_firmware(ptr noundef %ioc) #16
  %323 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %call9.i.i, align 128
  %325 = call i16 @llvm.bswap.i16(i16 %324)
  %call594 = call ptr @mpt3sas_get_pdev_by_handle(ptr noundef %ioc, i16 noundef zeroext %325) #16
  %tobool595.not = icmp eq ptr %call594, null
  br i1 %tobool595.not, label %if.end614.critedge, label %land.lhs.true596

land.lhs.true596:                                 ; preds = %do.end586
  %tm_custom_handling = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 94
  %326 = ptrtoint ptr %tm_custom_handling to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %tm_custom_handling, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %tobool597.not = icmp eq i8 %327, 0
  br i1 %tobool597.not, label %land.lhs.true598, label %if.then613.critedge

land.lhs.true598:                                 ; preds = %land.lhs.true596
  %device_info = getelementptr inbounds %struct._pcie_device, ptr %call594, i32 0, i32 4
  %328 = ptrtoint ptr %device_info to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %device_info, align 4
  %and.i1057 = and i32 %329, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i1057)
  %cmp.i.not = icmp eq i32 %and.i1057, 4
  %330 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %call9.i.i, align 128
  %332 = call i16 @llvm.bswap.i16(i16 %331)
  br i1 %cmp.i.not, label %if.then613.critedge1146, label %out.thread1101

out.thread1101:                                   ; preds = %land.lhs.true598
  call void @__sanitizer_cov_trace_pc() #18
  %reset_timeout = getelementptr inbounds %struct._pcie_device, ptr %call594, i32 0, i32 17
  %333 = ptrtoint ptr %reset_timeout to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %reset_timeout, align 4
  %call603 = call i32 @mpt3sas_scsih_issue_locked_tm(ptr noundef %ioc, i16 noundef zeroext %332, i32 noundef 0, i32 noundef 0, i64 noundef 0, i8 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0, i8 noundef zeroext %334, i8 noundef zeroext 24) #16
  br label %if.then613

if.else608:                                       ; preds = %if.then568
  call void @__sanitizer_cov_trace_pc() #18
  %call609 = call i32 @mpt3sas_base_hard_reset_handler(ptr noundef %ioc, i32 noundef 0) #16
  br label %if.end614

if.then613.critedge:                              ; preds = %land.lhs.true596
  call void @__sanitizer_cov_trace_pc() #18
  %335 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %call9.i.i, align 128
  %337 = call i16 @llvm.bswap.i16(i16 %336)
  %call606.c1145 = call i32 @mpt3sas_scsih_issue_locked_tm(ptr noundef %ioc, i16 noundef zeroext %337, i32 noundef 0, i32 noundef 0, i64 noundef 0, i8 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0, i8 noundef zeroext 30, i8 noundef zeroext 0) #16
  br label %if.then613

if.then613.critedge1146:                          ; preds = %land.lhs.true598
  call void @__sanitizer_cov_trace_pc() #18
  %call606.c1147 = call i32 @mpt3sas_scsih_issue_locked_tm(ptr noundef %ioc, i16 noundef zeroext %332, i32 noundef 0, i32 noundef 0, i64 noundef 0, i8 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0, i8 noundef zeroext 30, i8 noundef zeroext 0) #16
  br label %if.then613

if.then613:                                       ; preds = %if.then613.critedge1146, %if.then613.critedge, %out.thread1101
  %refcount.i = getelementptr inbounds %struct._pcie_device, ptr %call594, i32 0, i32 20
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !823
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #16
  %338 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #16, !srcloc !824
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %338, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i1058, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then613
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end614_crit_edge, label %if.then10.i.i.i.i.i, !prof !825

if.end5.i.i.i.i.i.if.end614_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end614

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #16
  br label %if.end614

if.then.i.i1058:                                  ; preds = %if.then613
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !826
  call void @kfree(ptr noundef nonnull %call594) #16
  br label %if.end614

if.end614.critedge:                               ; preds = %do.end586
  call void @__sanitizer_cov_trace_pc() #18
  %339 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load2_noabort(i32 %339)
  %340 = load i16, ptr %call9.i.i, align 128
  %341 = call i16 @llvm.bswap.i16(i16 %340)
  %call606.c = call i32 @mpt3sas_scsih_issue_locked_tm(ptr noundef %ioc, i16 noundef zeroext %341, i32 noundef 0, i32 noundef 0, i64 noundef 0, i8 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0, i8 noundef zeroext 30, i8 noundef zeroext 0) #16
  br label %if.end614

if.end614:                                        ; preds = %if.end614.critedge, %if.then.i.i1058, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end614_crit_edge, %if.else608, %do.end562, %copy_to_user.exit1050.if.end614_crit_edge, %do.end535, %land.lhs.true514.if.end614_crit_edge, %if.end512.if.end614_crit_edge, %do.end508, %do.end488, %do.end448.if.end614_crit_edge, %if.end326, %cleanup305, %if.end263, %if.then241, %cleanup, %if.end182, %if.end158
  %ret.41095 = phi i32 [ -61, %if.end5.i.i.i.i.i.if.end614_crit_edge ], [ -61, %if.then10.i.i.i.i.i ], [ -61, %if.then.i.i1058 ], [ 0, %land.lhs.true514.if.end614_crit_edge ], [ 0, %if.end512.if.end614_crit_edge ], [ 0, %copy_to_user.exit1050.if.end614_crit_edge ], [ -22, %if.end158 ], [ -22, %if.end182 ], [ -22, %cleanup ], [ -22, %cleanup305 ], [ -22, %if.end326 ], [ 0, %do.end448.if.end614_crit_edge ], [ -61, %if.else608 ], [ -61, %do.end562 ], [ 0, %do.end535 ], [ -61, %do.end508 ], [ -61, %do.end488 ], [ 0, %if.then241 ], [ -22, %if.end263 ], [ -61, %if.end614.critedge ]
  %tobool615.not = icmp eq ptr %data_in.0, null
  br i1 %tobool615.not, label %if.end614.if.end619_crit_edge, label %if.then616

if.end614.if.end619_crit_edge:                    ; preds = %if.end614
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end619

if.then616:                                       ; preds = %if.end614
  call void @__sanitizer_cov_trace_pc() #18
  %pdev617 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 7
  %342 = ptrtoint ptr %pdev617 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %pdev617, align 4
  %dev618 = getelementptr inbounds %struct.pci_dev, ptr %343, i32 0, i32 44
  %344 = ptrtoint ptr %data_in_dma to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %data_in_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev618, i32 noundef %51, ptr noundef nonnull %data_in.0, i32 noundef %345, i32 noundef 0) #16
  br label %if.end619

if.end619:                                        ; preds = %if.then616, %if.end614.if.end619_crit_edge, %do.end130
  %ret.410951127 = phi i32 [ %ret.41095, %if.then616 ], [ %ret.41095, %if.end614.if.end619_crit_edge ], [ -12, %do.end130 ]
  %tobool620.not = icmp eq ptr %data_out.0, null
  br i1 %tobool620.not, label %if.end619.cleanup627_crit_edge, label %if.end619.if.then621_crit_edge

if.end619.if.then621_crit_edge:                   ; preds = %if.end619
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then621

if.end619.cleanup627_crit_edge:                   ; preds = %if.end619
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup627

if.then621:                                       ; preds = %if.end619.if.then621_crit_edge, %if.end619.thread1135
  %data_out.1109911251143 = phi ptr [ %call.i, %if.end619.thread1135 ], [ %data_out.0, %if.end619.if.then621_crit_edge ]
  %ret.4109511271141 = phi i32 [ -14, %if.end619.thread1135 ], [ %ret.410951127, %if.end619.if.then621_crit_edge ]
  %pdev622 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 7
  %346 = ptrtoint ptr %pdev622 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %pdev622, align 4
  %dev623 = getelementptr inbounds %struct.pci_dev, ptr %347, i32 0, i32 44
  %348 = ptrtoint ptr %data_out_dma to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %data_out_dma, align 4
  call void @dma_free_attrs(ptr noundef %dev623, i32 noundef %49, ptr noundef nonnull %data_out.1109911251143, i32 noundef %349, i32 noundef 0) #16
  br label %cleanup627

cleanup627:                                       ; preds = %if.then621, %if.end619.cleanup627_crit_edge, %do.end107, %if.then97, %do.end46, %do.end33, %if.end16.cleanup627_crit_edge, %do.end11, %if.end.cleanup627_crit_edge, %do.end
  %mpi_request.0110011241134 = phi ptr [ %call9.i.i, %if.end619.cleanup627_crit_edge ], [ %call9.i.i, %if.then621 ], [ %call9.i.i, %if.end16.cleanup627_crit_edge ], [ null, %do.end11 ], [ %call9.i.i, %do.end46 ], [ %call9.i.i, %do.end107 ], [ %call9.i.i, %if.then97 ], [ %call9.i.i, %do.end33 ], [ null, %if.end.cleanup627_crit_edge ], [ null, %do.end ]
  %ret.4109511271133 = phi i32 [ %ret.410951127, %if.end619.cleanup627_crit_edge ], [ %ret.4109511271141, %if.then621 ], [ -22, %if.end16.cleanup627_crit_edge ], [ -12, %do.end11 ], [ -11, %do.end46 ], [ -12, %do.end107 ], [ -22, %if.then97 ], [ -14, %do.end33 ], [ %call2, %if.end.cleanup627_crit_edge ], [ -11, %do.end ]
  call void @kfree(ptr noundef %mpi_request.0110011241134) #16
  %350 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 -32768, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_in_dma) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_out_dma) #16
  ret i32 %ret.4109511271133
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_eventquery(ptr noundef %ioc, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %karg = alloca %struct.mpt3_ioctl_eventquery, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %karg) #16
  %0 = getelementptr inbounds %struct.mpt3_ioctl_eventquery, ptr %karg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mpt3_ioctl_eventquery, ptr %karg, i32 0, i32 3
  %2 = call ptr @memset(ptr %karg, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 32, i32 -1226833920) #22
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !825

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg, i32 noundef 32) #16
  %4 = call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !829
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg, ptr noundef %arg, i32 noundef 32) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !825

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i36 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %entry.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i36
  %add.ptr.i.i = getelementptr i8, ptr %karg, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i36)
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i.i
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %8 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %logging_level, align 8
  %and = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end8.i.i27_crit_edge, label %do.end6

if.end.if.end8.i.i27_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i27

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %name, ptr noundef nonnull @.str.316) #19
  br label %if.end8.i.i27

if.end8.i.i27:                                    ; preds = %do.end6, %if.end.if.end8.i.i27_crit_edge
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 200, ptr %0, align 4
  %event_type = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 90
  %11 = call ptr @memcpy(ptr %1, ptr %event_type, i32 16)
  call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 174) #16
  %call.i.i28 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i28, label %if.end8.i.i27.cleanup.sink.split_crit_edge, label %copy_to_user.exit

if.end8.i.i27.cleanup.sink.split_crit_edge:       ; preds = %if.end8.i.i27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

copy_to_user.exit:                                ; preds = %if.end8.i.i27
  %call.i.i.i32 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %karg, i32 noundef 32) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %karg, i32 noundef 32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool13.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool13.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.cleanup.sink.split_crit_edge

copy_to_user.exit.cleanup.sink.split_crit_edge:   ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.sink.split:                               ; preds = %copy_to_user.exit.cleanup.sink.split_crit_edge, %if.end8.i.i27.cleanup.sink.split_crit_edge, %if.then11.i.i
  %.sink = phi i32 [ 1214, %if.then11.i.i ], [ 1227, %if.end8.i.i27.cleanup.sink.split_crit_edge ], [ 1227, %copy_to_user.exit.cleanup.sink.split_crit_edge ]
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef %.sink, ptr noundef nonnull @.str.316) #19
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %copy_to_user.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %karg) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_eventenable(ptr noundef %ioc, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %karg = alloca %struct.mpt3_ioctl_eventenable, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %karg) #16
  %0 = getelementptr inbounds %struct.mpt3_ioctl_eventenable, ptr %karg, i32 0, i32 1
  %1 = call ptr @memset(ptr %karg, i32 255, i32 28)
  tail call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 28, i32 -1226833920) #22, !srcloc !828
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !825

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg, i32 noundef 28) #16
  %3 = call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !829
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg, ptr noundef %arg, i32 noundef 28) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !825

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i39 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 28, %entry.if.then11.i.i_crit_edge ], [ 28, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 28, %res.0.i.i39
  %add.ptr.i.i = getelementptr i8, ptr %karg, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i39)
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i.i
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %7 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %logging_level, align 8
  %and = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %do.end6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %name, ptr noundef nonnull @.str.321) #19
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  %event_type = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 90
  %9 = call ptr @memcpy(ptr %event_type, ptr %0, i32 16)
  call void @mpt3sas_base_validate_event_type(ptr noundef %ioc, ptr noundef %event_type) #16
  %event_log = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 92
  %10 = ptrtoint ptr %event_log to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %event_log, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.end16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %event_context = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 91
  %12 = ptrtoint ptr %event_context to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %event_context, align 8
  %aen_event_read_flag = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 24
  %13 = ptrtoint ptr %aen_event_read_flag to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %aen_event_read_flag, align 4
  %call1.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 40000, i32 noundef 3520, i32 noundef 4) #23
  %14 = ptrtoint ptr %event_log to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call1.i.i.i.i, ptr %event_log, align 4
  %tobool20.not = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool20.not, label %if.end16.cleanup.sink.split_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end16.cleanup.sink.split_crit_edge, %if.then11.i.i
  %.sink = phi i32 [ 1245, %if.then11.i.i ], [ 1265, %if.end16.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -14, %if.then11.i.i ], [ -12, %if.end16.cleanup.sink.split_crit_edge ]
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef %.sink, ptr noundef nonnull @.str.321) #19
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end16.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %karg) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_eventreport(ptr noundef %ioc, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %karg = alloca %struct.mpt3_ioctl_eventreport, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 212, ptr nonnull %karg) #16
  %0 = call ptr @memset(ptr %karg, i32 255, i32 212)
  tail call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 212, i32 -1226833920) #22, !srcloc !828
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !825

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg, i32 noundef 212) #16
  %2 = call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !829
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg, ptr noundef %arg, i32 noundef 212) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !825

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i51 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 212, %entry.if.then11.i.i_crit_edge ], [ 212, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 212, %res.0.i.i51
  %add.ptr.i.i = getelementptr i8, ptr %karg, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i51)
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 1285, ptr noundef nonnull @.str.326) #19
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %6 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %logging_level, align 8
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %do.end6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %name, ptr noundef nonnull @.str.326) #19
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  %max_data_size = getelementptr inbounds %struct.mpt3_ioctl_header, ptr %karg, i32 0, i32 2
  %8 = ptrtoint ptr %max_data_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_data_size, align 4
  %sub = add i32 %9, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 40199, i32 %sub)
  %cmp = icmp ugt i32 %sub, 40199
  %div = udiv i32 %sub, 200
  %cond = select i1 %cmp, i32 200, i32 %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool11.not = icmp eq i32 %cond, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %lor.lhs.false

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end9
  %event_log = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 92
  %10 = ptrtoint ptr %event_log to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %event_log, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %mul = mul nuw i32 %cond, 200
  %event_data = getelementptr inbounds %struct.mpt3_ioctl_eventreport, ptr %arg, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end14
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.do.end22_crit_edge, label %if.then27.i.i, !prof !825

land.rhs16.i.i.do.end22_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.232, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %do.end22

if.then.i.i.i:                                    ; preds = %if.end14
  call void @__check_object_size(ptr noundef nonnull %11, i32 noundef %mul, i1 noundef zeroext true) #16
  call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 174) #16
  %call.i.i43 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i43, label %if.then.i.i.i.do.end22_crit_edge, label %if.end.i.i46

if.then.i.i.i.do.end22_crit_edge:                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22

if.end.i.i46:                                     ; preds = %if.then.i.i.i
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %event_data, i32 %mul, i32 -1226833920) #22, !srcloc !832
  %asmresult.i.i44 = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i44)
  %cmp.i6.i45 = icmp eq i32 %asmresult.i.i44, 0
  br i1 %cmp.i6.i45, label %copy_to_user.exit, label %if.end.i.i46.do.end22_crit_edge

if.end.i.i46.do.end22_crit_edge:                  ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22

copy_to_user.exit:                                ; preds = %if.end.i.i46
  %call.i.i.i47 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %11, i32 noundef %mul) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %event_data, ptr noundef nonnull %11, i32 noundef %mul) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool18.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool18.not, label %if.end25, label %copy_to_user.exit.do.end22_crit_edge

copy_to_user.exit.do.end22_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end22

do.end22:                                         ; preds = %copy_to_user.exit.do.end22_crit_edge, %if.end.i.i46.do.end22_crit_edge, %if.then.i.i.i.do.end22_crit_edge, %if.then27.i.i, %land.rhs16.i.i.do.end22_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 1306, ptr noundef nonnull @.str.326) #19
  br label %cleanup

if.end25:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  %aen_event_read_flag = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 24
  %13 = ptrtoint ptr %aen_event_read_flag to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %aen_event_read_flag, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end22, %lor.lhs.false.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ -14, %do.end22 ], [ 0, %if.end25 ], [ -61, %lor.lhs.false.cleanup_crit_edge ], [ -61, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 212, ptr nonnull %karg) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_do_reset(ptr noundef %ioc, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %karg = alloca %struct.mpt3_ioctl_diag_reset, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %karg) #16
  %0 = ptrtoint ptr %karg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %karg, align 4, !annotation !822
  %1 = getelementptr inbounds %struct.mpt3_ioctl_header, ptr %karg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !822
  %3 = getelementptr inbounds %struct.mpt3_ioctl_header, ptr %karg, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !822
  tail call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 12, i32 -1226833920) #22, !srcloc !828
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !825

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg, i32 noundef 12) #16
  %6 = call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !829
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg, ptr noundef %arg, i32 noundef 12) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !825

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i38 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %entry.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.0.i.i38
  %add.ptr.i.i = getelementptr i8, ptr %karg, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i38)
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 1328, ptr noundef nonnull @.str.331) #19
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %shost_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 27
  %10 = ptrtoint ptr %shost_recovery to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shost_recovery, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %pci_error_recovery = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 34
  %12 = ptrtoint ptr %pci_error_recovery to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pci_error_recovery, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %is_driver_loading = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 36
  %14 = ptrtoint ptr %is_driver_loading to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_driver_loading, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %if.end10, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %16 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %logging_level, align 8
  %and = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.if.end18_crit_edge, label %do.end15

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %name, ptr noundef nonnull @.str.331) #19
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.end10.if.end18_crit_edge
  %reset_from_user = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 223
  %18 = ptrtoint ptr %reset_from_user to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %reset_from_user, align 4
  %call19 = call i32 @mpt3sas_base_hard_reset_handler(ptr noundef %ioc, i32 noundef 0) #16
  %name24 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool26.not = icmp eq i32 %call19, 0
  %cond = select i1 %tobool26.not, ptr @.str.337, ptr @.str.338
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.335, ptr noundef %name24, ptr noundef nonnull %cond) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ 0, %if.end18 ], [ -11, %lor.lhs.false6.cleanup_crit_edge ], [ -11, %lor.lhs.false.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %karg) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_btdh_mapping(ptr noundef %ioc, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %karg = alloca %struct.mpt3_ioctl_btdh_mapping, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %karg) #16
  %0 = getelementptr inbounds %struct.mpt3_ioctl_btdh_mapping, ptr %karg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mpt3_ioctl_btdh_mapping, ptr %karg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mpt3_ioctl_btdh_mapping, ptr %karg, i32 0, i32 3
  %3 = call ptr @memset(ptr %karg, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 24, i32 -1226833920) #22
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !825

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg, i32 noundef 24) #16
  %5 = call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !829
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg, ptr noundef %arg, i32 noundef 24) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !825

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i110 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %entry.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i110
  %add.ptr.i.i = getelementptr i8, ptr %karg, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i110)
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i.i
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %9 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %logging_level, align 8
  %and = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %do.end6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef nonnull @.str.339) #19
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  %sas_device_list.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 121
  %11 = ptrtoint ptr %sas_device_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %sas_device_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %sas_device_list.i
  br i1 %cmp.i.not.i, label %if.end9.if.then12_crit_edge, label %do.body1.i

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

do.body1.i:                                       ; preds = %if.end9
  %sas_device_lock.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 123
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_device_lock.i) #16
  %13 = ptrtoint ptr %sas_device_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %sas_device.075.i = load ptr, ptr %sas_device_list.i, align 4
  %cmp9.not76.i = icmp eq ptr %sas_device.075.i, %sas_device_list.i
  br i1 %cmp9.not76.i, label %do.body1.i._ctl_btdh_search_sas_device.exit.thread115_crit_edge, label %for.body.lr.ph.i

do.body1.i._ctl_btdh_search_sas_device.exit.thread115_crit_edge: ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_btdh_search_sas_device.exit.thread115

for.body.lr.ph.i:                                 ; preds = %do.body1.i
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp11.i = icmp eq i32 %15, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sas_device.077.i = phi ptr [ %sas_device.075.i, %for.body.lr.ph.i ], [ %sas_device.0.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %cmp11.i, label %land.lhs.true.i, label %for.body.i.if.else.i_crit_edge

for.body.i.if.else.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp13.i = icmp eq i32 %17, -1
  br i1 %cmp13.i, label %land.lhs.true15.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true15.i:                                ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %2, align 4
  %handle17.i = getelementptr inbounds %struct._sas_device, ptr %sas_device.077.i, i32 0, i32 4
  %20 = ptrtoint ptr %handle17.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %handle17.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp19.i = icmp eq i16 %19, %21
  br i1 %cmp19.i, label %if.then21.i, label %land.lhs.true15.i.if.else.i_crit_edge

land.lhs.true15.i.if.else.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

if.then21.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #18
  %channel.i = getelementptr inbounds %struct._sas_device, ptr %sas_device.077.i, i32 0, i32 12
  %22 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel.i, align 8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %1, align 4
  %id23.i = getelementptr inbounds %struct._sas_device, ptr %sas_device.077.i, i32 0, i32 11
  %25 = ptrtoint ptr %id23.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id23.i, align 4
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %0, align 4
  br label %if.end14.thread120

if.else.i:                                        ; preds = %land.lhs.true15.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %for.body.i.if.else.i_crit_edge
  %channel26.i = getelementptr inbounds %struct._sas_device, ptr %sas_device.077.i, i32 0, i32 12
  %28 = ptrtoint ptr %channel26.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel26.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %29)
  %cmp27.i = icmp eq i32 %15, %29
  br i1 %cmp27.i, label %land.lhs.true29.i, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true29.i:                                ; preds = %if.else.i
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %0, align 4
  %id31.i = getelementptr inbounds %struct._sas_device, ptr %sas_device.077.i, i32 0, i32 11
  %32 = ptrtoint ptr %id31.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id31.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp32.i = icmp eq i32 %31, %33
  br i1 %cmp32.i, label %land.lhs.true34.i, label %land.lhs.true29.i.for.inc.i_crit_edge

land.lhs.true29.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true34.i:                                ; preds = %land.lhs.true29.i
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %35)
  %cmp37.i = icmp eq i16 %35, -1
  br i1 %cmp37.i, label %if.then39.i, label %land.lhs.true34.i.for.inc.i_crit_edge

land.lhs.true34.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then39.i:                                      ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #18
  %handle40.i = getelementptr inbounds %struct._sas_device, ptr %sas_device.077.i, i32 0, i32 4
  %36 = ptrtoint ptr %handle40.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %handle40.i, align 8
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %2, align 4
  br label %if.end14.thread120

for.inc.i:                                        ; preds = %land.lhs.true34.i.for.inc.i_crit_edge, %land.lhs.true29.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge
  %39 = ptrtoint ptr %sas_device.077.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %sas_device.0.i = load ptr, ptr %sas_device.077.i, align 4
  %cmp9.not.i = icmp eq ptr %sas_device.0.i, %sas_device_list.i
  br i1 %cmp9.not.i, label %for.inc.i._ctl_btdh_search_sas_device.exit.thread115_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i._ctl_btdh_search_sas_device.exit.thread115_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_btdh_search_sas_device.exit.thread115

_ctl_btdh_search_sas_device.exit.thread115:       ; preds = %for.inc.i._ctl_btdh_search_sas_device.exit.thread115_crit_edge, %do.body1.i._ctl_btdh_search_sas_device.exit.thread115_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_device_lock.i, i32 noundef %call3.i) #16
  br label %if.then12

if.end14.thread120:                               ; preds = %if.then39.i, %if.then21.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_device_lock.i, i32 noundef %call3.i) #16
  br label %if.end8.i.i38

if.then12:                                        ; preds = %_ctl_btdh_search_sas_device.exit.thread115, %if.end9.if.then12_crit_edge
  %pcie_device_list.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 124
  %40 = ptrtoint ptr %pcie_device_list.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %pcie_device_list.i, align 4
  %cmp.i.not.i45 = icmp eq ptr %41, %pcie_device_list.i
  br i1 %cmp.i.not.i45, label %if.then12.if.then16_crit_edge, label %do.body1.i48

if.then12.if.then16_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

do.body1.i48:                                     ; preds = %if.then12
  %pcie_device_lock.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 126
  %call3.i46 = call i32 @_raw_spin_lock_irqsave(ptr noundef %pcie_device_lock.i) #16
  %42 = ptrtoint ptr %pcie_device_list.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %pcie_device.075.i = load ptr, ptr %pcie_device_list.i, align 8
  %cmp9.not76.i47 = icmp eq ptr %pcie_device.075.i, %pcie_device_list.i
  br i1 %cmp9.not76.i47, label %do.body1.i48.if.end14.thread123_crit_edge, label %for.body.lr.ph.i53

do.body1.i48.if.end14.thread123_crit_edge:        ; preds = %do.body1.i48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.thread123

for.body.lr.ph.i53:                               ; preds = %do.body1.i48
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %cmp11.i50 = icmp eq i32 %44, -1
  br label %for.body.i54

for.body.i54:                                     ; preds = %for.inc.i74.for.body.i54_crit_edge, %for.body.lr.ph.i53
  %pcie_device.077.i = phi ptr [ %pcie_device.075.i, %for.body.lr.ph.i53 ], [ %pcie_device.0.i, %for.inc.i74.for.body.i54_crit_edge ]
  br i1 %cmp11.i50, label %land.lhs.true.i56, label %for.body.i54.if.else.i65_crit_edge

for.body.i54.if.else.i65_crit_edge:               ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i65

land.lhs.true.i56:                                ; preds = %for.body.i54
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp13.i55 = icmp eq i32 %46, -1
  br i1 %cmp13.i55, label %land.lhs.true15.i59, label %land.lhs.true.i56.if.else.i65_crit_edge

land.lhs.true.i56.if.else.i65_crit_edge:          ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i65

land.lhs.true15.i59:                              ; preds = %land.lhs.true.i56
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %2, align 4
  %handle17.i57 = getelementptr inbounds %struct._pcie_device, ptr %pcie_device.077.i, i32 0, i32 3
  %49 = ptrtoint ptr %handle17.i57 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %handle17.i57, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %50)
  %cmp19.i58 = icmp eq i16 %48, %50
  br i1 %cmp19.i58, label %if.then21.i62, label %land.lhs.true15.i59.if.else.i65_crit_edge

land.lhs.true15.i59.if.else.i65_crit_edge:        ; preds = %land.lhs.true15.i59
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i65

if.then21.i62:                                    ; preds = %land.lhs.true15.i59
  call void @__sanitizer_cov_trace_pc() #18
  %channel.i60 = getelementptr inbounds %struct._pcie_device, ptr %pcie_device.077.i, i32 0, i32 6
  %51 = ptrtoint ptr %channel.i60 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %channel.i60, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %1, align 4
  %id23.i61 = getelementptr inbounds %struct._pcie_device, ptr %pcie_device.077.i, i32 0, i32 5
  %54 = ptrtoint ptr %id23.i61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %id23.i61, align 8
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %0, align 4
  br label %if.end14

if.else.i65:                                      ; preds = %land.lhs.true15.i59.if.else.i65_crit_edge, %land.lhs.true.i56.if.else.i65_crit_edge, %for.body.i54.if.else.i65_crit_edge
  %channel26.i63 = getelementptr inbounds %struct._pcie_device, ptr %pcie_device.077.i, i32 0, i32 6
  %57 = ptrtoint ptr %channel26.i63 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %channel26.i63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %58)
  %cmp27.i64 = icmp eq i32 %44, %58
  br i1 %cmp27.i64, label %land.lhs.true29.i68, label %if.else.i65.for.inc.i74_crit_edge

if.else.i65.for.inc.i74_crit_edge:                ; preds = %if.else.i65
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i74

land.lhs.true29.i68:                              ; preds = %if.else.i65
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %0, align 4
  %id31.i66 = getelementptr inbounds %struct._pcie_device, ptr %pcie_device.077.i, i32 0, i32 5
  %61 = ptrtoint ptr %id31.i66 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id31.i66, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp32.i67 = icmp eq i32 %60, %62
  br i1 %cmp32.i67, label %land.lhs.true34.i70, label %land.lhs.true29.i68.for.inc.i74_crit_edge

land.lhs.true29.i68.for.inc.i74_crit_edge:        ; preds = %land.lhs.true29.i68
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i74

land.lhs.true34.i70:                              ; preds = %land.lhs.true29.i68
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %64)
  %cmp37.i69 = icmp eq i16 %64, -1
  br i1 %cmp37.i69, label %if.then39.i72, label %land.lhs.true34.i70.for.inc.i74_crit_edge

land.lhs.true34.i70.for.inc.i74_crit_edge:        ; preds = %land.lhs.true34.i70
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i74

if.then39.i72:                                    ; preds = %land.lhs.true34.i70
  call void @__sanitizer_cov_trace_pc() #18
  %handle40.i71 = getelementptr inbounds %struct._pcie_device, ptr %pcie_device.077.i, i32 0, i32 3
  %65 = ptrtoint ptr %handle40.i71 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %handle40.i71, align 8
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %2, align 4
  br label %if.end14

for.inc.i74:                                      ; preds = %land.lhs.true34.i70.for.inc.i74_crit_edge, %land.lhs.true29.i68.for.inc.i74_crit_edge, %if.else.i65.for.inc.i74_crit_edge
  %68 = ptrtoint ptr %pcie_device.077.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %pcie_device.0.i = load ptr, ptr %pcie_device.077.i, align 8
  %cmp9.not.i73 = icmp eq ptr %pcie_device.0.i, %pcie_device_list.i
  br i1 %cmp9.not.i73, label %for.inc.i74.if.end14.thread123_crit_edge, label %for.inc.i74.for.body.i54_crit_edge

for.inc.i74.for.body.i54_crit_edge:               ; preds = %for.inc.i74
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i54

for.inc.i74.if.end14.thread123_crit_edge:         ; preds = %for.inc.i74
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.thread123

if.end14.thread123:                               ; preds = %for.inc.i74.if.end14.thread123_crit_edge, %do.body1.i48.if.end14.thread123_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_device_lock.i, i32 noundef %call3.i46) #16
  br label %if.then16

if.end14:                                         ; preds = %if.then39.i72, %if.then21.i62
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pcie_device_lock.i, i32 noundef %call3.i46) #16
  br label %if.end8.i.i38

if.then16:                                        ; preds = %if.end14.thread123, %if.then12.if.then16_crit_edge
  %raid_device_list.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 127
  %69 = ptrtoint ptr %raid_device_list.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %raid_device_list.i, align 4
  %cmp.i.not.i78 = icmp eq ptr %70, %raid_device_list.i
  br i1 %cmp.i.not.i78, label %if.then16.if.end8.i.i38_crit_edge, label %do.body1.i80

if.then16.if.end8.i.i38_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i38

do.body1.i80:                                     ; preds = %if.then16
  %raid_device_lock.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 128
  %call3.i79 = call i32 @_raw_spin_lock_irqsave(ptr noundef %raid_device_lock.i) #16
  %71 = ptrtoint ptr %raid_device_list.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %raid_device.04.i = load ptr, ptr %raid_device_list.i, align 4
  %cmp9.not5.i = icmp eq ptr %raid_device.04.i, %raid_device_list.i
  br i1 %cmp9.not5.i, label %do.body1.i80.out.i107_crit_edge, label %for.body.lr.ph.i85

do.body1.i80.out.i107_crit_edge:                  ; preds = %do.body1.i80
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i107

for.body.lr.ph.i85:                               ; preds = %do.body1.i80
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp11.i82 = icmp eq i32 %73, -1
  br label %for.body.i86

for.body.i86:                                     ; preds = %for.inc.i106.for.body.i86_crit_edge, %for.body.lr.ph.i85
  %raid_device.06.i = phi ptr [ %raid_device.04.i, %for.body.lr.ph.i85 ], [ %raid_device.0.i, %for.inc.i106.for.body.i86_crit_edge ]
  br i1 %cmp11.i82, label %land.lhs.true.i88, label %for.body.i86.if.else.i97_crit_edge

for.body.i86.if.else.i97_crit_edge:               ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i97

land.lhs.true.i88:                                ; preds = %for.body.i86
  %74 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp13.i87 = icmp eq i32 %75, -1
  br i1 %cmp13.i87, label %land.lhs.true15.i91, label %land.lhs.true.i88.if.else.i97_crit_edge

land.lhs.true.i88.if.else.i97_crit_edge:          ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i97

land.lhs.true15.i91:                              ; preds = %land.lhs.true.i88
  %76 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %2, align 4
  %handle17.i89 = getelementptr inbounds %struct._raid_device, ptr %raid_device.06.i, i32 0, i32 4
  %78 = ptrtoint ptr %handle17.i89 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %handle17.i89, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %77, i16 %79)
  %cmp19.i90 = icmp eq i16 %77, %79
  br i1 %cmp19.i90, label %if.then21.i94, label %land.lhs.true15.i91.if.else.i97_crit_edge

land.lhs.true15.i91.if.else.i97_crit_edge:        ; preds = %land.lhs.true15.i91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i97

if.then21.i94:                                    ; preds = %land.lhs.true15.i91
  call void @__sanitizer_cov_trace_pc() #18
  %channel.i92 = getelementptr inbounds %struct._raid_device, ptr %raid_device.06.i, i32 0, i32 7
  %80 = ptrtoint ptr %channel.i92 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %channel.i92, align 8
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %1, align 4
  %id23.i93 = getelementptr inbounds %struct._raid_device, ptr %raid_device.06.i, i32 0, i32 6
  %83 = ptrtoint ptr %id23.i93 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %id23.i93, align 4
  %85 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %0, align 4
  br label %out.i107

if.else.i97:                                      ; preds = %land.lhs.true15.i91.if.else.i97_crit_edge, %land.lhs.true.i88.if.else.i97_crit_edge, %for.body.i86.if.else.i97_crit_edge
  %channel26.i95 = getelementptr inbounds %struct._raid_device, ptr %raid_device.06.i, i32 0, i32 7
  %86 = ptrtoint ptr %channel26.i95 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %channel26.i95, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %87)
  %cmp27.i96 = icmp eq i32 %73, %87
  br i1 %cmp27.i96, label %land.lhs.true29.i100, label %if.else.i97.for.inc.i106_crit_edge

if.else.i97.for.inc.i106_crit_edge:               ; preds = %if.else.i97
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i106

land.lhs.true29.i100:                             ; preds = %if.else.i97
  %88 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %0, align 4
  %id31.i98 = getelementptr inbounds %struct._raid_device, ptr %raid_device.06.i, i32 0, i32 6
  %90 = ptrtoint ptr %id31.i98 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %id31.i98, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp32.i99 = icmp eq i32 %89, %91
  br i1 %cmp32.i99, label %land.lhs.true34.i102, label %land.lhs.true29.i100.for.inc.i106_crit_edge

land.lhs.true29.i100.for.inc.i106_crit_edge:      ; preds = %land.lhs.true29.i100
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i106

land.lhs.true34.i102:                             ; preds = %land.lhs.true29.i100
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %93)
  %cmp37.i101 = icmp eq i16 %93, -1
  br i1 %cmp37.i101, label %if.then39.i104, label %land.lhs.true34.i102.for.inc.i106_crit_edge

land.lhs.true34.i102.for.inc.i106_crit_edge:      ; preds = %land.lhs.true34.i102
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i106

if.then39.i104:                                   ; preds = %land.lhs.true34.i102
  call void @__sanitizer_cov_trace_pc() #18
  %handle40.i103 = getelementptr inbounds %struct._raid_device, ptr %raid_device.06.i, i32 0, i32 4
  %94 = ptrtoint ptr %handle40.i103 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %handle40.i103, align 8
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %2, align 4
  br label %out.i107

for.inc.i106:                                     ; preds = %land.lhs.true34.i102.for.inc.i106_crit_edge, %land.lhs.true29.i100.for.inc.i106_crit_edge, %if.else.i97.for.inc.i106_crit_edge
  %97 = ptrtoint ptr %raid_device.06.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %raid_device.0.i = load ptr, ptr %raid_device.06.i, align 4
  %cmp9.not.i105 = icmp eq ptr %raid_device.0.i, %raid_device_list.i
  br i1 %cmp9.not.i105, label %for.inc.i106.out.i107_crit_edge, label %for.inc.i106.for.body.i86_crit_edge

for.inc.i106.for.body.i86_crit_edge:              ; preds = %for.inc.i106
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i86

for.inc.i106.out.i107_crit_edge:                  ; preds = %for.inc.i106
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i107

out.i107:                                         ; preds = %for.inc.i106.out.i107_crit_edge, %if.then39.i104, %if.then21.i94, %do.body1.i80.out.i107_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %raid_device_lock.i, i32 noundef %call3.i79) #16
  br label %if.end8.i.i38

if.end8.i.i38:                                    ; preds = %out.i107, %if.then16.if.end8.i.i38_crit_edge, %if.end14, %if.end14.thread120
  call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 174) #16
  %call.i.i39 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i39, label %if.end8.i.i38.cleanup.sink.split_crit_edge, label %copy_to_user.exit

if.end8.i.i38.cleanup.sink.split_crit_edge:       ; preds = %if.end8.i.i38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

copy_to_user.exit:                                ; preds = %if.end8.i.i38
  %call.i.i.i43 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %karg, i32 noundef 24) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %karg, i32 noundef 24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool20.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool20.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.cleanup.sink.split_crit_edge

copy_to_user.exit.cleanup.sink.split_crit_edge:   ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.sink.split:                               ; preds = %copy_to_user.exit.cleanup.sink.split_crit_edge, %if.end8.i.i38.cleanup.sink.split_crit_edge, %if.then11.i.i
  %.sink = phi i32 [ 1467, %if.then11.i.i ], [ 1482, %if.end8.i.i38.cleanup.sink.split_crit_edge ], [ 1482, %copy_to_user.exit.cleanup.sink.split_crit_edge ]
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef %.sink, ptr noundef nonnull @.str.339) #19
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %copy_to_user.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %karg) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_diag_register(ptr noundef %ioc, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %karg = alloca %struct.mpt3_diag_register, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %karg) #16
  %0 = call ptr @memset(ptr %karg, i32 255, i32 120)
  tail call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 120, i32 -1226833920) #22, !srcloc !828
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !825

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg, i32 noundef 120) #16
  %2 = call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !829
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg, ptr noundef %arg, i32 noundef 120) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !825

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i19 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 120, %entry.if.then11.i.i_crit_edge ], [ 120, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 120, %res.0.i.i19
  %add.ptr.i.i = getelementptr i8, ptr %karg, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i19)
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 1920, ptr noundef nonnull @.str.344) #19
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %call2 = call fastcc i32 @_ctl_diag_register_2(ptr noundef %ioc, ptr noundef nonnull %karg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %buffer_type = getelementptr inbounds %struct.mpt3_diag_register, ptr %karg, i32 0, i32 2
  %6 = ptrtoint ptr %buffer_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffer_type, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = and i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %or = or i8 %9, 16
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ 0, %if.then5 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %karg) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_diag_unregister(ptr noundef %ioc, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %karg = alloca %struct.mpt3_diag_unregister, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %karg) #16
  %0 = getelementptr inbounds %struct.mpt3_diag_unregister, ptr %karg, i32 0, i32 1
  %1 = call ptr @memset(ptr %karg, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 16, i32 -1226833920) #22, !srcloc !828
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !825

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg, i32 noundef 16) #16
  %3 = call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !829
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg, ptr noundef %arg, i32 noundef 16) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !825

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i174 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %entry.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i174
  %add.ptr.i.i = getelementptr i8, ptr %karg, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i174)
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 1953, ptr noundef nonnull @.str.345) #19
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %7 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %logging_level, align 8
  %and = and i32 %8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %do.end6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef nonnull @.str.345) #19
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %0, align 4
  %arrayidx.i = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp3.i = icmp eq i32 %12, %10
  br i1 %cmp3.i, label %if.end9._ctl_diag_capability.exit_crit_edge, label %for.inc.i

if.end9._ctl_diag_capability.exit_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_diag_capability.exit

for.inc.i:                                        ; preds = %if.end9
  %arrayidx.1.i = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %10)
  %cmp3.1.i = icmp eq i32 %14, %10
  br i1 %cmp3.1.i, label %for.inc.i._ctl_diag_capability.exit_crit_edge, label %for.inc.1.i

for.inc.i._ctl_diag_capability.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_diag_capability.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %10)
  %cmp3.2.i = icmp eq i32 %16, %10
  br i1 %cmp3.2.i, label %for.inc.1.i._ctl_diag_capability.exit_crit_edge, label %do.end15

for.inc.1.i._ctl_diag_capability.exit_crit_edge:  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_diag_capability.exit

do.end15:                                         ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  %name17 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.349, ptr noundef %name17, ptr noundef nonnull @.str.345, i32 noundef %10) #19
  br label %cleanup

_ctl_diag_capability.exit:                        ; preds = %for.inc.1.i._ctl_diag_capability.exit_crit_edge, %for.inc.i._ctl_diag_capability.exit_crit_edge, %if.end9._ctl_diag_capability.exit_crit_edge
  %conv178184 = phi i32 [ 1, %for.inc.i._ctl_diag_capability.exit_crit_edge ], [ 0, %if.end9._ctl_diag_capability.exit_crit_edge ], [ 2, %for.inc.1.i._ctl_diag_capability.exit_crit_edge ]
  %.sink20.i = phi i8 [ 4, %for.inc.i._ctl_diag_capability.exit_crit_edge ], [ 3, %if.end9._ctl_diag_capability.exit_crit_edge ], [ 5, %for.inc.1.i._ctl_diag_capability.exit_crit_edge ]
  %IOCCapabilities10.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 101, i32 14
  %17 = ptrtoint ptr %IOCCapabilities10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %IOCCapabilities10.i, align 4
  %19 = trunc i32 %18 to i8
  %20 = shl nuw nsw i8 1, %.sink20.i
  %21 = and i8 %20, %19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool23.not = icmp eq i8 %21, 0
  br i1 %tobool23.not, label %do.end27, label %if.end33

do.end27:                                         ; preds = %_ctl_diag_capability.exit
  call void @__sanitizer_cov_trace_pc() #18
  %name29 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name29, ptr noundef nonnull @.str.345, i32 noundef %conv178184) #19
  br label %cleanup

if.end33:                                         ; preds = %_ctl_diag_capability.exit
  %arrayidx = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 %conv178184
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %conv34 = zext i8 %23 to i32
  %and35 = and i32 %conv34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36 = icmp eq i32 %and35, 0
  br i1 %cmp36, label %do.end41, label %if.end47

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %name43 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.354, ptr noundef %name43, ptr noundef nonnull @.str.345, i32 noundef %conv178184) #19
  br label %cleanup

if.end47:                                         ; preds = %if.end33
  %and52 = and i32 %conv34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp53 = icmp eq i32 %and52, 0
  br i1 %cmp53, label %do.end58, label %if.end64

do.end58:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %name60 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.357, ptr noundef %name60, ptr noundef nonnull @.str.345, i32 noundef %conv178184) #19
  br label %cleanup

if.end64:                                         ; preds = %if.end47
  %arrayidx68 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 %conv178184
  %24 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %25)
  %cmp69.not = icmp eq i32 %10, %25
  br i1 %cmp69.not, label %if.end80, label %do.end74

do.end74:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  %name76 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.360, ptr noundef %name76, ptr noundef nonnull @.str.345, i32 noundef %10) #19
  br label %cleanup

if.end80:                                         ; preds = %if.end64
  %arrayidx82 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 213, i32 %conv178184
  %26 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx82, align 4
  %tobool83.not = icmp eq ptr %27, null
  br i1 %tobool83.not, label %do.end87, label %if.end93

do.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  %name89 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.363, ptr noundef %name89, ptr noundef nonnull @.str.345, i32 noundef %conv178184) #19
  br label %cleanup

if.end93:                                         ; preds = %if.end80
  %and98 = and i32 %conv34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.else, label %if.then100

if.then100:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1112687437, ptr %arrayidx68, align 4
  %29 = and i8 %23, -18
  br label %if.end126

if.else:                                          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx117 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 214, i32 %conv178184
  %30 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx117, align 4
  %arrayidx119 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 215, i32 %conv178184
  %32 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx119, align 4
  %pdev = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 7
  %34 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef %31, ptr noundef nonnull %27, i32 noundef %33, i32 noundef 0) #16
  %36 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx82, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.else, %if.then100
  %storemerge = phi i8 [ 0, %if.else ], [ %29, %if.then100 ]
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %storemerge, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end126, %do.end87, %do.end74, %do.end58, %do.end41, %do.end27, %do.end15, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ -22, %do.end15 ], [ -22, %do.end41 ], [ -22, %do.end58 ], [ -22, %do.end74 ], [ 0, %if.end126 ], [ -12, %do.end87 ], [ -1, %do.end27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %karg) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_diag_query(ptr noundef %ioc, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %karg = alloca %struct.mpt3_diag_query, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %karg) #16
  %0 = call ptr @memset(ptr %karg, i32 255, i32 124)
  tail call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 124, i32 -1226833920) #22
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !825

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg, i32 noundef 124) #16
  %2 = call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !829
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg, ptr noundef %arg, i32 noundef 124) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !825

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i203 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 124, %entry.if.then11.i.i_crit_edge ], [ 124, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 124, %res.0.i.i203
  %add.ptr.i.i = getelementptr i8, ptr %karg, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i203)
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 2036, ptr noundef nonnull @.str.365) #19
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %6 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %logging_level, align 8
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %do.end6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef nonnull @.str.365) #19
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  %application_flags = getelementptr inbounds %struct.mpt3_diag_query, ptr %karg, i32 0, i32 3
  %8 = ptrtoint ptr %application_flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %application_flags, align 2
  %buffer_type10 = getelementptr inbounds %struct.mpt3_diag_query, ptr %karg, i32 0, i32 2
  %9 = ptrtoint ptr %buffer_type10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buffer_type10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %11 = icmp ult i8 %10, 3
  br i1 %11, label %switch.lookup, label %if.end9.do.end16_crit_edge

if.end9.do.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end16

switch.lookup:                                    ; preds = %if.end9
  %switch.offset = add i8 %10, 3
  %IOCCapabilities10.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 101, i32 14
  %12 = ptrtoint ptr %IOCCapabilities10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %IOCCapabilities10.i, align 4
  %14 = trunc i32 %13 to i8
  %15 = shl nuw nsw i8 1, %switch.offset
  %16 = and i8 %15, %14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not = icmp eq i8 %16, 0
  br i1 %tobool12.not, label %switch.lookup.do.end16_crit_edge, label %if.end21

switch.lookup.do.end16_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end16

do.end16:                                         ; preds = %switch.lookup.do.end16_crit_edge, %if.end9.do.end16_crit_edge
  %name18 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %conv = zext i8 %10 to i32
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name18, ptr noundef nonnull @.str.365, i32 noundef %conv) #19
  br label %cleanup

if.end21:                                         ; preds = %switch.lookup
  %idxprom = zext i8 %10 to i32
  %arrayidx = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %19 = and i8 %18, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %do.end35, label %if.end42

do.end35:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %name37 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.354, ptr noundef %name37, ptr noundef nonnull @.str.365, i32 noundef %idxprom) #19
  br label %cleanup

if.end42:                                         ; preds = %if.end21
  %unique_id = getelementptr inbounds %struct.mpt3_diag_query, ptr %karg, i32 0, i32 8
  %21 = ptrtoint ptr %unique_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %unique_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool43.not = icmp eq i32 %22, 0
  br i1 %tobool43.not, label %if.end42.if.end61_crit_edge, label %if.then44

if.end42.if.end61_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.then44:                                        ; preds = %if.end42
  %arrayidx48 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp49.not = icmp eq i32 %22, %24
  br i1 %cmp49.not, label %if.then44.if.end61_crit_edge, label %do.end54

if.then44.if.end61_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

do.end54:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  %name56 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.360, ptr noundef %name56, ptr noundef nonnull @.str.365, i32 noundef %22) #19
  br label %cleanup

if.end61:                                         ; preds = %if.then44.if.end61_crit_edge, %if.end42.if.end61_crit_edge
  %arrayidx63 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 213, i32 %idxprom
  %25 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx63, align 4
  %tobool64.not = icmp eq ptr %26, null
  br i1 %tobool64.not, label %do.end68, label %if.end74

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  %name70 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.375, ptr noundef %name70, ptr noundef nonnull @.str.365, i32 noundef %idxprom) #19
  br label %cleanup

if.end74:                                         ; preds = %if.end61
  %27 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool80.not = icmp eq i8 %27, 0
  br i1 %tobool80.not, label %if.end74.if.end85_crit_edge, label %if.then81

if.end74.if.end85_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.then81:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %application_flags to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 2, ptr %application_flags, align 2
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.end74.if.end85_crit_edge
  %29 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool91.not = icmp eq i8 %29, 0
  br i1 %tobool91.not, label %if.then92, label %if.end85.if.end97_crit_edge

if.end85.if.end97_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

if.then92:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %application_flags to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %application_flags, align 2
  %32 = or i16 %31, 4
  store i16 %32, ptr %application_flags, align 2
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %if.end85.if.end97_crit_edge
  %33 = and i8 %18, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool103.not = icmp eq i8 %33, 0
  br i1 %tobool103.not, label %if.then104, label %if.end97.if.end109_crit_edge

if.end97.if.end109_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end109

if.then104:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %application_flags to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %application_flags, align 2
  %36 = or i16 %35, 8
  store i16 %36, ptr %application_flags, align 2
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %if.end97.if.end109_crit_edge
  %37 = and i8 %18, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool115.not = icmp eq i8 %37, 0
  br i1 %tobool115.not, label %if.end109.if.end121_crit_edge, label %if.then116

if.end109.if.end121_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end121

if.then116:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %application_flags to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %application_flags, align 2
  %40 = or i16 %39, 1
  store i16 %40, ptr %application_flags, align 2
  br label %if.end121

if.end121:                                        ; preds = %if.then116, %if.end109.if.end121_crit_edge
  %uglygep = getelementptr inbounds i8, ptr %karg, i32 20
  %41 = mul nuw nsw i32 %idxprom, 92
  %42 = add nuw nsw i32 %41, 3460
  %uglygep211 = getelementptr i8, ptr %ioc, i32 %42
  %43 = call ptr @memcpy(ptr %uglygep, ptr %uglygep211, i32 92)
  %arrayidx130 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 214, i32 %idxprom
  %44 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx130, align 4
  %total_buffer_size = getelementptr inbounds %struct.mpt3_diag_query, ptr %karg, i32 0, i32 6
  %46 = ptrtoint ptr %total_buffer_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %total_buffer_size, align 4
  %driver_added_buffer_size = getelementptr inbounds %struct.mpt3_diag_query, ptr %karg, i32 0, i32 7
  %47 = ptrtoint ptr %driver_added_buffer_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %driver_added_buffer_size, align 4
  %arrayidx133 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 %idxprom
  %48 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx133, align 4
  %50 = ptrtoint ptr %unique_id to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %unique_id, align 4
  %arrayidx136 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 219, i32 %idxprom
  %51 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx136, align 4
  %diagnostic_flags137 = getelementptr inbounds %struct.mpt3_diag_query, ptr %karg, i32 0, i32 4
  %53 = ptrtoint ptr %diagnostic_flags137 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %diagnostic_flags137, align 4
  call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 174) #16
  %call.i.i195 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i195, label %if.end121.do.end143_crit_edge, label %copy_to_user.exit

if.end121.do.end143_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end143

copy_to_user.exit:                                ; preds = %if.end121
  %call.i.i.i199 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %karg, i32 noundef 124) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %karg, i32 noundef 124) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool139.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool139.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.do.end143_crit_edge

copy_to_user.exit.do.end143_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end143

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end143:                                        ; preds = %copy_to_user.exit.do.end143_crit_edge, %if.end121.do.end143_crit_edge
  %name145 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.378, ptr noundef %name145, ptr noundef nonnull @.str.365, ptr noundef %arg) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end143, %copy_to_user.exit.cleanup_crit_edge, %do.end68, %do.end54, %do.end35, %do.end16, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ -22, %do.end54 ], [ -14, %do.end143 ], [ -12, %do.end68 ], [ -22, %do.end35 ], [ -1, %do.end16 ], [ 0, %copy_to_user.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %karg) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_diag_release(ptr noundef %ioc, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %karg = alloca %struct.mpt3_diag_release, align 4
  %issue_reset = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %karg) #16
  %0 = getelementptr inbounds %struct.mpt3_diag_release, ptr %karg, i32 0, i32 1
  %1 = call ptr @memset(ptr %karg, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %issue_reset) #16
  %2 = ptrtoint ptr %issue_reset to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %issue_reset, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 16, i32 -1226833920) #22, !srcloc !828
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !825

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg, i32 noundef 16) #16
  %4 = call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !829
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg, ptr noundef %arg, i32 noundef 16) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !825

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i164 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %entry.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i164
  %add.ptr.i.i = getelementptr i8, ptr %karg, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i164)
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 2232, ptr noundef nonnull @.str.380) #19
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %8 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %logging_level, align 8
  %and = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %do.end6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef nonnull @.str.380) #19
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %0, align 4
  %arrayidx.i = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 0
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp3.i = icmp eq i32 %13, %11
  br i1 %cmp3.i, label %if.end9._ctl_diag_capability.exit_crit_edge, label %for.inc.i

if.end9._ctl_diag_capability.exit_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_diag_capability.exit

for.inc.i:                                        ; preds = %if.end9
  %arrayidx.1.i = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp3.1.i = icmp eq i32 %15, %11
  br i1 %cmp3.1.i, label %for.inc.i._ctl_diag_capability.exit_crit_edge, label %for.inc.1.i

for.inc.i._ctl_diag_capability.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_diag_capability.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 2
  %16 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %11)
  %cmp3.2.i = icmp eq i32 %17, %11
  br i1 %cmp3.2.i, label %for.inc.1.i._ctl_diag_capability.exit_crit_edge, label %do.end15

for.inc.1.i._ctl_diag_capability.exit_crit_edge:  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_diag_capability.exit

do.end15:                                         ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  %name17 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.349, ptr noundef %name17, ptr noundef nonnull @.str.380, i32 noundef %11) #19
  br label %cleanup

_ctl_diag_capability.exit:                        ; preds = %for.inc.1.i._ctl_diag_capability.exit_crit_edge, %for.inc.i._ctl_diag_capability.exit_crit_edge, %if.end9._ctl_diag_capability.exit_crit_edge
  %conv168176 = phi i32 [ 1, %for.inc.i._ctl_diag_capability.exit_crit_edge ], [ 0, %if.end9._ctl_diag_capability.exit_crit_edge ], [ 2, %for.inc.1.i._ctl_diag_capability.exit_crit_edge ]
  %retval.0.i.ph174 = phi i8 [ 1, %for.inc.i._ctl_diag_capability.exit_crit_edge ], [ 0, %if.end9._ctl_diag_capability.exit_crit_edge ], [ 2, %for.inc.1.i._ctl_diag_capability.exit_crit_edge ]
  %.sink20.i = phi i8 [ 4, %for.inc.i._ctl_diag_capability.exit_crit_edge ], [ 3, %if.end9._ctl_diag_capability.exit_crit_edge ], [ 5, %for.inc.1.i._ctl_diag_capability.exit_crit_edge ]
  %IOCCapabilities10.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 101, i32 14
  %18 = ptrtoint ptr %IOCCapabilities10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %IOCCapabilities10.i, align 4
  %20 = trunc i32 %19 to i8
  %21 = shl nuw nsw i8 1, %.sink20.i
  %22 = and i8 %21, %20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool23.not = icmp eq i8 %22, 0
  br i1 %tobool23.not, label %do.end27, label %if.end33

do.end27:                                         ; preds = %_ctl_diag_capability.exit
  call void @__sanitizer_cov_trace_pc() #18
  %name29 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name29, ptr noundef nonnull @.str.380, i32 noundef %conv168176) #19
  br label %cleanup

if.end33:                                         ; preds = %_ctl_diag_capability.exit
  %arrayidx = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 %conv168176
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %conv34 = zext i8 %24 to i32
  %and35 = and i32 %conv34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36 = icmp eq i32 %and35, 0
  br i1 %cmp36, label %do.end41, label %if.end47

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %name43 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.354, ptr noundef %name43, ptr noundef nonnull @.str.380, i32 noundef %conv168176) #19
  br label %cleanup

if.end47:                                         ; preds = %if.end33
  %arrayidx51 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 %conv168176
  %25 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %26)
  %cmp52.not = icmp eq i32 %11, %26
  br i1 %cmp52.not, label %if.end63, label %do.end57

do.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %name59 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.360, ptr noundef %name59, ptr noundef nonnull @.str.380, i32 noundef %11) #19
  br label %cleanup

if.end63:                                         ; preds = %if.end47
  %and68 = and i32 %conv34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end79, label %do.end73

do.end73:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  %name75 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.392, ptr noundef %name75, ptr noundef nonnull @.str.380, i32 noundef %conv168176) #19
  br label %cleanup

if.end79:                                         ; preds = %if.end63
  %arrayidx81 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 213, i32 %conv168176
  %27 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx81, align 4
  %tobool82.not = icmp eq ptr %28, null
  br i1 %tobool82.not, label %do.end86, label %if.end92

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  %name88 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.363, ptr noundef %name88, ptr noundef nonnull @.str.380, i32 noundef %conv168176) #19
  br label %cleanup

if.end92:                                         ; preds = %if.end79
  %and97 = and i32 %conv34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end119, label %if.then99

if.then99:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #18
  %or = and i8 %24, -7
  %29 = or i8 %or, 2
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx, align 1
  %name115 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.397, ptr noundef %name115, ptr noundef nonnull @.str.380, i32 noundef %conv168176) #19
  br label %cleanup

if.end119:                                        ; preds = %if.end92
  %call120 = call i32 @mpt3sas_send_diag_release(ptr noundef %ioc, i8 noundef zeroext %retval.0.i.ph174, ptr noundef nonnull %issue_reset)
  %31 = ptrtoint ptr %issue_reset to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %issue_reset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool121.not = icmp eq i8 %32, 0
  br i1 %tobool121.not, label %if.end119.cleanup_crit_edge, label %if.then122

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #18
  %call123 = call i32 @mpt3sas_base_hard_reset_handler(ptr noundef %ioc, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then122, %if.end119.cleanup_crit_edge, %if.then99, %do.end86, %do.end73, %do.end57, %do.end41, %do.end27, %do.end15, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ -22, %do.end15 ], [ -22, %do.end41 ], [ -22, %do.end57 ], [ -22, %do.end73 ], [ 0, %if.then99 ], [ -12, %do.end86 ], [ -1, %do.end27 ], [ %call120, %if.then122 ], [ %call120, %if.end119.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %issue_reset) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %karg) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_diag_read_buffer(ptr noundef %ioc, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %karg = alloca %struct.mpt3_diag_read_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %karg) #16
  %0 = getelementptr inbounds %struct.mpt3_diag_read_buffer, ptr %karg, i32 0, i32 3
  %1 = getelementptr inbounds %struct.mpt3_diag_read_buffer, ptr %karg, i32 0, i32 4
  %2 = getelementptr inbounds %struct.mpt3_diag_read_buffer, ptr %karg, i32 0, i32 5
  %3 = getelementptr inbounds %struct.mpt3_diag_read_buffer, ptr %karg, i32 0, i32 6
  %4 = call ptr @memset(ptr %karg, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 32, i32 -1226833920) #22, !srcloc !828
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !825

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg, i32 noundef 32) #16
  %6 = call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !829
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg, ptr noundef %arg, i32 noundef 32) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !825

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i409 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %entry.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i409
  %add.ptr.i.i = getelementptr i8, ptr %karg, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i409)
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 2322, ptr noundef nonnull @.str.399) #19
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %10 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %logging_level, align 8
  %and = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %do.end6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef nonnull @.str.399) #19
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  %arrayidx.i = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 0
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp3.i = icmp eq i32 %15, %13
  br i1 %cmp3.i, label %if.end9._ctl_diag_capability.exit_crit_edge, label %for.inc.i

if.end9._ctl_diag_capability.exit_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_diag_capability.exit

for.inc.i:                                        ; preds = %if.end9
  %arrayidx.1.i = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %13)
  %cmp3.1.i = icmp eq i32 %17, %13
  br i1 %cmp3.1.i, label %for.inc.i._ctl_diag_capability.exit_crit_edge, label %for.inc.1.i

for.inc.i._ctl_diag_capability.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_diag_capability.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %13)
  %cmp3.2.i = icmp eq i32 %19, %13
  br i1 %cmp3.2.i, label %for.inc.1.i._ctl_diag_capability.exit_crit_edge, label %do.end15

for.inc.1.i._ctl_diag_capability.exit_crit_edge:  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %_ctl_diag_capability.exit

do.end15:                                         ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  %name17 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.349, ptr noundef %name17, ptr noundef nonnull @.str.399, i32 noundef %13) #19
  br label %cleanup

_ctl_diag_capability.exit:                        ; preds = %for.inc.1.i._ctl_diag_capability.exit_crit_edge, %for.inc.i._ctl_diag_capability.exit_crit_edge, %if.end9._ctl_diag_capability.exit_crit_edge
  %conv413421 = phi i32 [ 1, %for.inc.i._ctl_diag_capability.exit_crit_edge ], [ 0, %if.end9._ctl_diag_capability.exit_crit_edge ], [ 2, %for.inc.1.i._ctl_diag_capability.exit_crit_edge ]
  %retval.0.i.ph419 = phi i8 [ 1, %for.inc.i._ctl_diag_capability.exit_crit_edge ], [ 0, %if.end9._ctl_diag_capability.exit_crit_edge ], [ 2, %for.inc.1.i._ctl_diag_capability.exit_crit_edge ]
  %.sink20.i = phi i8 [ 4, %for.inc.i._ctl_diag_capability.exit_crit_edge ], [ 3, %if.end9._ctl_diag_capability.exit_crit_edge ], [ 5, %for.inc.1.i._ctl_diag_capability.exit_crit_edge ]
  %IOCCapabilities10.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 101, i32 14
  %20 = ptrtoint ptr %IOCCapabilities10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %IOCCapabilities10.i, align 4
  %22 = trunc i32 %21 to i8
  %23 = shl nuw nsw i8 1, %.sink20.i
  %24 = and i8 %23, %22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool23.not = icmp eq i8 %24, 0
  br i1 %tobool23.not, label %do.end27, label %if.end33

do.end27:                                         ; preds = %_ctl_diag_capability.exit
  call void @__sanitizer_cov_trace_pc() #18
  %name29 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name29, ptr noundef nonnull @.str.399, i32 noundef %conv413421) #19
  br label %cleanup

if.end33:                                         ; preds = %_ctl_diag_capability.exit
  %arrayidx = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 %conv413421
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %26)
  %cmp36.not = icmp eq i32 %13, %26
  br i1 %cmp36.not, label %if.end47, label %do.end41

do.end41:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %name43 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.360, ptr noundef %name43, ptr noundef nonnull @.str.399, i32 noundef %13) #19
  br label %cleanup

if.end47:                                         ; preds = %if.end33
  %arrayidx49 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 213, i32 %conv413421
  %27 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx49, align 4
  %tobool50.not = icmp eq ptr %28, null
  br i1 %tobool50.not, label %do.end54, label %if.end60

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #18
  %name56 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.375, ptr noundef %name56, ptr noundef nonnull @.str.399, i32 noundef %conv413421) #19
  br label %cleanup

if.end60:                                         ; preds = %if.end47
  %arrayidx62 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 214, i32 %conv413421
  %29 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx62, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  %rem = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool63.not = icmp eq i32 %rem, 0
  br i1 %tobool63.not, label %lor.lhs.false, label %if.end60.do.end69_crit_edge

if.end60.do.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end69

lor.lhs.false:                                    ; preds = %if.end60
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %2, align 4
  %rem64 = and i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem64)
  %tobool65.not = icmp eq i32 %rem64, 0
  br i1 %tobool65.not, label %if.end74, label %lor.lhs.false.do.end69_crit_edge

lor.lhs.false.do.end69_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end69

do.end69:                                         ; preds = %lor.lhs.false.do.end69_crit_edge, %if.end60.do.end69_crit_edge
  %name71 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.411, ptr noundef %name71, ptr noundef nonnull @.str.399) #19
  br label %cleanup

if.end74:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp76 = icmp ugt i32 %32, %30
  br i1 %cmp76, label %if.end74.cleanup_crit_edge, label %if.end79

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end79:                                         ; preds = %if.end74
  %add.ptr = getelementptr i8, ptr %28, i32 %32
  %35 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %logging_level, align 8
  %and82 = and i32 %36, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end79.if.end94_crit_edge, label %do.end87

if.end79.if.end94_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end94

do.end87:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  %name89 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.414, ptr noundef %name89, ptr noundef nonnull @.str.399, ptr noundef %add.ptr, i32 noundef %32, i32 noundef %34) #19
  br label %if.end94

if.end94:                                         ; preds = %do.end87, %if.end79.if.end94_crit_edge
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %2, align 4
  %add.ptr96 = getelementptr i8, ptr %add.ptr, i32 %38
  %cmp97 = icmp ult ptr %add.ptr96, %add.ptr
  %add.ptr102 = getelementptr i8, ptr %28, i32 %30
  %cmp103 = icmp ugt ptr %add.ptr96, %add.ptr102
  %or.cond = select i1 %cmp97, i1 true, i1 %cmp103
  br i1 %or.cond, label %if.then105, label %if.end94.if.end108_crit_edge

if.end94.if.end108_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end108

if.then105:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 4
  %sub = sub i32 %30, %40
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %if.end94.if.end108_crit_edge
  %copy_size.0 = phi i32 [ %sub, %if.then105 ], [ %38, %if.end94.if.end108_crit_edge ]
  %diagnostic_data = getelementptr inbounds %struct.mpt3_diag_read_buffer, ptr %arg, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copy_size.0)
  %cmp9.i.i = icmp slt i32 %copy_size.0, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end108
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.do.end115_crit_edge, label %if.then27.i.i, !prof !825

land.rhs16.i.i.do.end115_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end115

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.232, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %do.end115

if.then.i.i.i:                                    ; preds = %if.end108
  call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %copy_size.0, i1 noundef zeroext true) #16
  call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 174) #16
  %call.i.i401 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i401, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i404

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit

if.end.i.i404:                                    ; preds = %if.then.i.i.i
  %41 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %diagnostic_data, i32 %copy_size.0, i32 -1226833920) #22, !srcloc !832
  %asmresult.i.i402 = extractvalue { i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i402)
  %cmp.i6.i403 = icmp eq i32 %asmresult.i.i402, 0
  br i1 %cmp.i6.i403, label %if.then2.i.i, label %if.end.i.i404.copy_to_user.exit_crit_edge

if.end.i.i404.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i404
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i404
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i405 = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %copy_size.0) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %diagnostic_data, ptr noundef %add.ptr, i32 noundef %copy_size.0) #16
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i404.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i406 = phi i32 [ %copy_size.0, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %copy_size.0, %if.end.i.i404.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i406)
  %tobool111.not = icmp eq i32 %n.addr.0.i406, 0
  br i1 %tobool111.not, label %if.end120, label %copy_to_user.exit.do.end115_crit_edge

copy_to_user.exit.do.end115_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end115

do.end115:                                        ; preds = %copy_to_user.exit.do.end115_crit_edge, %if.then27.i.i, %land.rhs16.i.i.do.end115_crit_edge
  %name117 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.417, ptr noundef %name117, ptr noundef nonnull @.str.399, ptr noundef %add.ptr) #19
  br label %cleanup

if.end120:                                        ; preds = %copy_to_user.exit
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %0, align 2
  %44 = and i16 %43, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp123 = icmp eq i16 %44, 0
  br i1 %cmp123, label %if.end120.cleanup_crit_edge, label %if.end126

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end126:                                        ; preds = %if.end120
  %45 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %logging_level, align 8
  %and128 = and i32 %46, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end126.if.end139_crit_edge, label %do.end133

if.end126.if.end139_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end139

do.end133:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #18
  %name135 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.420, ptr noundef %name135, ptr noundef nonnull @.str.399, i32 noundef %conv413421) #19
  br label %if.end139

if.end139:                                        ; preds = %do.end133, %if.end126.if.end139_crit_edge
  %arrayidx141 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 %conv413421
  %47 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx141, align 1
  %49 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp144 = icmp eq i8 %49, 0
  br i1 %cmp144, label %if.then146, label %if.end160

if.then146:                                       ; preds = %if.end139
  %50 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %logging_level, align 8
  %and148 = and i32 %51, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.then146.cleanup_crit_edge, label %do.end153

if.then146.cleanup_crit_edge:                     ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end153:                                        ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #18
  %name155 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.423, ptr noundef %name155, ptr noundef nonnull @.str.399, i32 noundef %conv413421) #19
  br label %cleanup

if.end160:                                        ; preds = %if.end139
  %status = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 4
  %52 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %53)
  %cmp162.not = icmp eq i16 %53, -32768
  br i1 %cmp162.not, label %if.end172, label %do.end167

do.end167:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #18
  %name169 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name169, ptr noundef nonnull @.str.399) #19
  br label %out

if.end172:                                        ; preds = %if.end160
  %ctl_cb_idx = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 67
  %54 = ptrtoint ptr %ctl_cb_idx to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ctl_cb_idx, align 8
  %call173 = call zeroext i16 @mpt3sas_base_get_smid(ptr noundef %ioc, i8 noundef zeroext %55) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call173)
  %tobool174.not = icmp eq i16 %call173, 0
  br i1 %tobool174.not, label %do.end178, label %if.end183

do.end178:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #18
  %name180 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name180, ptr noundef nonnull @.str.399) #19
  br label %out

if.end183:                                        ; preds = %if.end172
  %56 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 2, ptr %status, align 4
  %reply = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 2
  %57 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reply, align 4
  %reply_sz = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 181
  %59 = ptrtoint ptr %reply_sz to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %reply_sz, align 4
  %conv187 = zext i16 %60 to i32
  %61 = call ptr @memset(ptr %58, i32 0, i32 %conv187)
  %call188 = call ptr @mpt3sas_base_get_msg_frame(ptr noundef %ioc, i16 noundef zeroext %call173) #16
  %smid190 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 5
  %62 = ptrtoint ptr %smid190 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %call173, ptr %smid190, align 2
  %Function = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 3
  %63 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 29, ptr %Function, align 1
  %BufferType = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 1
  %64 = ptrtoint ptr %BufferType to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %retval.0.i.ph419, ptr %BufferType, align 1
  %65 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx62, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %BufferLength = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 11
  %68 = ptrtoint ptr %BufferLength to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %BufferLength, align 4
  %arrayidx195 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 215, i32 %conv413421
  %69 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx195, align 4
  %conv196 = zext i32 %70 to i64
  %71 = call i64 @llvm.bswap.i64(i64 %conv196)
  %BufferAddress = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 10
  %72 = ptrtoint ptr %BufferAddress to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %71, ptr %BufferAddress, align 4
  %arrayidx201 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 0
  %73 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx201, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %arrayidx202 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 0
  %76 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx202, align 4
  %arrayidx201.1 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 1
  %77 = ptrtoint ptr %arrayidx201.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx201.1, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78)
  %arrayidx202.1 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 1
  %80 = ptrtoint ptr %arrayidx202.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx202.1, align 4
  %arrayidx201.2 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 2
  %81 = ptrtoint ptr %arrayidx201.2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx201.2, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82)
  %arrayidx202.2 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 2
  %84 = ptrtoint ptr %arrayidx202.2 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx202.2, align 4
  %arrayidx201.3 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 3
  %85 = ptrtoint ptr %arrayidx201.3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx201.3, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86)
  %arrayidx202.3 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 3
  %88 = ptrtoint ptr %arrayidx202.3 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx202.3, align 4
  %arrayidx201.4 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 4
  %89 = ptrtoint ptr %arrayidx201.4 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx201.4, align 4
  %91 = call i32 @llvm.bswap.i32(i32 %90)
  %arrayidx202.4 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 4
  %92 = ptrtoint ptr %arrayidx202.4 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx202.4, align 4
  %arrayidx201.5 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 5
  %93 = ptrtoint ptr %arrayidx201.5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx201.5, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94)
  %arrayidx202.5 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 5
  %96 = ptrtoint ptr %arrayidx202.5 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %arrayidx202.5, align 4
  %arrayidx201.6 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 6
  %97 = ptrtoint ptr %arrayidx201.6 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx201.6, align 4
  %99 = call i32 @llvm.bswap.i32(i32 %98)
  %arrayidx202.6 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 6
  %100 = ptrtoint ptr %arrayidx202.6 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx202.6, align 4
  %arrayidx201.7 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 7
  %101 = ptrtoint ptr %arrayidx201.7 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx201.7, align 4
  %103 = call i32 @llvm.bswap.i32(i32 %102)
  %arrayidx202.7 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 7
  %104 = ptrtoint ptr %arrayidx202.7 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx202.7, align 4
  %arrayidx201.8 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 8
  %105 = ptrtoint ptr %arrayidx201.8 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx201.8, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  %arrayidx202.8 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 8
  %108 = ptrtoint ptr %arrayidx202.8 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %arrayidx202.8, align 4
  %arrayidx201.9 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 9
  %109 = ptrtoint ptr %arrayidx201.9 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx201.9, align 4
  %111 = call i32 @llvm.bswap.i32(i32 %110)
  %arrayidx202.9 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 9
  %112 = ptrtoint ptr %arrayidx202.9 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %arrayidx202.9, align 4
  %arrayidx201.10 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 10
  %113 = ptrtoint ptr %arrayidx201.10 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx201.10, align 4
  %115 = call i32 @llvm.bswap.i32(i32 %114)
  %arrayidx202.10 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 10
  %116 = ptrtoint ptr %arrayidx202.10 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx202.10, align 4
  %arrayidx201.11 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 11
  %117 = ptrtoint ptr %arrayidx201.11 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx201.11, align 4
  %119 = call i32 @llvm.bswap.i32(i32 %118)
  %arrayidx202.11 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 11
  %120 = ptrtoint ptr %arrayidx202.11 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %arrayidx202.11, align 4
  %arrayidx201.12 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 12
  %121 = ptrtoint ptr %arrayidx201.12 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx201.12, align 4
  %123 = call i32 @llvm.bswap.i32(i32 %122)
  %arrayidx202.12 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 12
  %124 = ptrtoint ptr %arrayidx202.12 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx202.12, align 4
  %arrayidx201.13 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 13
  %125 = ptrtoint ptr %arrayidx201.13 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx201.13, align 4
  %127 = call i32 @llvm.bswap.i32(i32 %126)
  %arrayidx202.13 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 13
  %128 = ptrtoint ptr %arrayidx202.13 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %arrayidx202.13, align 4
  %arrayidx201.14 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 14
  %129 = ptrtoint ptr %arrayidx201.14 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx201.14, align 4
  %131 = call i32 @llvm.bswap.i32(i32 %130)
  %arrayidx202.14 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 14
  %132 = ptrtoint ptr %arrayidx202.14 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx202.14, align 4
  %arrayidx201.15 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 15
  %133 = ptrtoint ptr %arrayidx201.15 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx201.15, align 4
  %135 = call i32 @llvm.bswap.i32(i32 %134)
  %arrayidx202.15 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 15
  %136 = ptrtoint ptr %arrayidx202.15 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %arrayidx202.15, align 4
  %arrayidx201.16 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 16
  %137 = ptrtoint ptr %arrayidx201.16 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx201.16, align 4
  %139 = call i32 @llvm.bswap.i32(i32 %138)
  %arrayidx202.16 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 16
  %140 = ptrtoint ptr %arrayidx202.16 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %arrayidx202.16, align 4
  %arrayidx201.17 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 17
  %141 = ptrtoint ptr %arrayidx201.17 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx201.17, align 4
  %143 = call i32 @llvm.bswap.i32(i32 %142)
  %arrayidx202.17 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 17
  %144 = ptrtoint ptr %arrayidx202.17 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %arrayidx202.17, align 4
  %arrayidx201.18 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 18
  %145 = ptrtoint ptr %arrayidx201.18 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx201.18, align 4
  %147 = call i32 @llvm.bswap.i32(i32 %146)
  %arrayidx202.18 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 18
  %148 = ptrtoint ptr %arrayidx202.18 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %arrayidx202.18, align 4
  %arrayidx201.19 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 19
  %149 = ptrtoint ptr %arrayidx201.19 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx201.19, align 4
  %151 = call i32 @llvm.bswap.i32(i32 %150)
  %arrayidx202.19 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 19
  %152 = ptrtoint ptr %arrayidx202.19 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %arrayidx202.19, align 4
  %arrayidx201.20 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 20
  %153 = ptrtoint ptr %arrayidx201.20 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx201.20, align 4
  %155 = call i32 @llvm.bswap.i32(i32 %154)
  %arrayidx202.20 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 20
  %156 = ptrtoint ptr %arrayidx202.20 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %arrayidx202.20, align 4
  %arrayidx201.21 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 21
  %157 = ptrtoint ptr %arrayidx201.21 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx201.21, align 4
  %159 = call i32 @llvm.bswap.i32(i32 %158)
  %arrayidx202.21 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 21
  %160 = ptrtoint ptr %arrayidx202.21 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %arrayidx202.21, align 4
  %arrayidx201.22 = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 218, i32 %conv413421, i32 22
  %161 = ptrtoint ptr %arrayidx201.22 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx201.22, align 4
  %163 = call i32 @llvm.bswap.i32(i32 %162)
  %arrayidx202.22 = getelementptr %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 15, i32 22
  %164 = ptrtoint ptr %arrayidx202.22 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %arrayidx202.22, align 4
  %VF_ID = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 8
  %165 = ptrtoint ptr %VF_ID to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %VF_ID, align 1
  %VP_ID = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REQUEST, ptr %call188, i32 0, i32 7
  %166 = ptrtoint ptr %VP_ID to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %VP_ID, align 4
  %done = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 1
  %167 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.145, ptr noundef nonnull @init_completion.__key) #16
  %put_smid_default = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 247
  %168 = ptrtoint ptr %put_smid_default to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %put_smid_default, align 8
  call void %169(ptr noundef %ioc, i16 noundef zeroext %call173) #16
  %call206 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 1000) #16
  %170 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %status, align 4
  %conv209 = zext i16 %171 to i32
  %and210 = and i32 %conv209, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %issue_host_reset, label %if.end227

if.end227:                                        ; preds = %if.end183
  %and231 = and i32 %conv209, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %cmp232 = icmp eq i32 %and231, 0
  br i1 %cmp232, label %do.end237, label %if.end242

do.end237:                                        ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #18
  %name239 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call241 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name239, ptr noundef nonnull @.str.399) #19
  br label %out

if.end242:                                        ; preds = %if.end227
  %172 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %reply, align 4
  %IOCStatus = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REPLY, ptr %173, i32 0, i32 11
  %174 = ptrtoint ptr %IOCStatus to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %IOCStatus, align 2
  %176 = and i16 %175, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %176)
  %cmp249 = icmp eq i16 %176, 0
  br i1 %cmp249, label %if.then251, label %do.end278

if.then251:                                       ; preds = %if.end242
  %177 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx141, align 1
  %179 = and i8 %178, -4
  %180 = or i8 %179, 1
  store i8 %180, ptr %arrayidx141, align 1
  %181 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %logging_level, align 8
  %and264 = and i32 %182, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264)
  %tobool265.not = icmp eq i32 %and264, 0
  br i1 %tobool265.not, label %if.then251.out_crit_edge, label %do.end269

if.then251.out_crit_edge:                         ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end269:                                        ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #18
  %name271 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name271, ptr noundef nonnull @.str.399) #19
  br label %out

do.end278:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #18
  %183 = call i16 @llvm.bswap.i16(i16 %176)
  %conv248 = zext i16 %183 to i32
  %name280 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %IOCLogInfo = getelementptr inbounds %struct._MPI2_DIAG_BUFFER_POST_REPLY, ptr %173, i32 0, i32 12
  %184 = ptrtoint ptr %IOCLogInfo to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %IOCLogInfo, align 4
  %186 = call i32 @llvm.bswap.i32(i32 %185)
  %call283 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name280, ptr noundef nonnull @.str.399, i32 noundef %conv248, i32 noundef %186) #19
  br label %out

issue_host_reset:                                 ; preds = %if.end183
  %name218 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name218, ptr noundef nonnull @.str.399) #19
  %187 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %status, align 4
  %conv223 = trunc i16 %188 to i8
  %call224 = call zeroext i8 @mpt3sas_base_check_cmd_timeout(ptr noundef %ioc, i8 noundef zeroext %conv223, ptr noundef %call188, i32 noundef 32) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call224)
  %phi.cmp = icmp eq i8 %call224, 0
  br i1 %phi.cmp, label %issue_host_reset.out_crit_edge, label %if.then286

issue_host_reset.out_crit_edge:                   ; preds = %issue_host_reset
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then286:                                       ; preds = %issue_host_reset
  call void @__sanitizer_cov_trace_pc() #18
  %call287 = call i32 @mpt3sas_base_hard_reset_handler(ptr noundef %ioc, i32 noundef 0) #16
  br label %out

out:                                              ; preds = %if.then286, %issue_host_reset.out_crit_edge, %do.end278, %do.end269, %if.then251.out_crit_edge, %do.end237, %do.end178, %do.end167
  %rc.1 = phi i32 [ -11, %do.end167 ], [ -14, %do.end237 ], [ 0, %if.then286 ], [ 0, %issue_host_reset.out_crit_edge ], [ -11, %do.end178 ], [ -14, %do.end278 ], [ 0, %if.then251.out_crit_edge ], [ 0, %do.end269 ]
  %189 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 -32768, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end153, %if.then146.cleanup_crit_edge, %if.end120.cleanup_crit_edge, %do.end115, %if.end74.cleanup_crit_edge, %do.end69, %do.end54, %do.end41, %do.end27, %do.end15, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ -22, %do.end15 ], [ -22, %do.end41 ], [ -22, %do.end69 ], [ -14, %do.end115 ], [ %rc.1, %out ], [ -12, %do.end54 ], [ -1, %do.end27 ], [ -22, %if.end74.cleanup_crit_edge ], [ 0, %if.end120.cleanup_crit_edge ], [ 0, %do.end153 ], [ 0, %if.then146.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %karg) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_addnl_diag_query(ptr noundef %ioc, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %karg = alloca %struct.mpt3_addnl_diag_query, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %karg) #16
  %0 = call ptr @memset(ptr %karg, i32 255, i32 40)
  tail call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 40, i32 -1226833920) #22
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !825

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg, i32 noundef 40) #16
  %2 = call i32 @llvm.read_register.i32(metadata !812) #16
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #13, !srcloc !829
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg, ptr noundef %arg, i32 noundef 40) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #16, !srcloc !830
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !831
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !825

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i106 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 40, %entry.if.then11.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 40, %res.0.i.i106
  %add.ptr.i.i = getelementptr i8, ptr %karg, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i106)
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.437, ptr noundef %name, ptr noundef nonnull @.str.3, i32 noundef 2495, ptr noundef nonnull @.str.438) #19
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %6 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %logging_level, align 8
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %do.end6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %name8 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name8, ptr noundef nonnull @.str.438) #19
  br label %if.end11

if.end11:                                         ; preds = %do.end6, %if.end.if.end11_crit_edge
  %unique_id = getelementptr inbounds %struct.mpt3_addnl_diag_query, ptr %karg, i32 0, i32 1
  %8 = ptrtoint ptr %unique_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %unique_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %do.end15, label %if.end21

do.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %name17 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.442, ptr noundef %name17, ptr noundef nonnull @.str.438, i32 noundef 0) #19
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %arrayidx.i = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp3.i = icmp eq i32 %11, %9
  br i1 %cmp3.i, label %if.end21.if.end35_crit_edge, label %for.inc.i

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

for.inc.i:                                        ; preds = %if.end21
  %arrayidx.1.i = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp3.1.i = icmp eq i32 %13, %9
  br i1 %cmp3.1.i, label %for.inc.i.if.end35_crit_edge, label %for.inc.1.i

for.inc.i.if.end35_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 217, i32 2
  %14 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp3.2.i = icmp eq i32 %15, %9
  br i1 %cmp3.2.i, label %for.inc.1.i.if.end35_crit_edge, label %do.end29

for.inc.1.i.if.end35_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

do.end29:                                         ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  %name31 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.349, ptr noundef %name31, ptr noundef nonnull @.str.438, i32 noundef %9) #19
  br label %cleanup

if.end35:                                         ; preds = %for.inc.1.i.if.end35_crit_edge, %for.inc.i.if.end35_crit_edge, %if.end21.if.end35_crit_edge
  %retval.0.i.ph = phi i32 [ 1, %for.inc.i.if.end35_crit_edge ], [ 0, %if.end21.if.end35_crit_edge ], [ 2, %for.inc.1.i.if.end35_crit_edge ]
  %rel_query = getelementptr inbounds %struct.mpt3_addnl_diag_query, ptr %karg, i32 0, i32 2
  %16 = call ptr @memset(ptr %rel_query, i32 0, i32 16)
  %arrayidx = getelementptr %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 216, i32 %retval.0.i.ph
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %conv36 = zext i8 %18 to i32
  %and37 = and i32 %conv36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %do.end43, label %if.end48

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %name45 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.447, ptr noundef %name45, ptr noundef nonnull @.str.438, i32 noundef %retval.0.i.ph) #19
  br label %if.end8.i.i97

if.end48:                                         ; preds = %if.end35
  %and52 = and i32 %conv36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp53 = icmp eq i32 %and52, 0
  br i1 %cmp53, label %do.end58, label %if.end63

do.end58:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  %name60 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.450, ptr noundef %name60, ptr noundef nonnull @.str.438, i32 noundef %retval.0.i.ph) #19
  br label %cleanup

if.end63:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  %htb_rel = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 222
  %19 = call ptr @memcpy(ptr %rel_query, ptr %htb_rel, i32 16)
  br label %if.end8.i.i97

if.end8.i.i97:                                    ; preds = %if.end63, %do.end43
  call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 174) #16
  %call.i.i98 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i98, label %if.end8.i.i97.do.end70_crit_edge, label %copy_to_user.exit

if.end8.i.i97.do.end70_crit_edge:                 ; preds = %if.end8.i.i97
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end70

copy_to_user.exit:                                ; preds = %if.end8.i.i97
  %call.i.i.i102 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %karg, i32 noundef 40) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %karg, i32 noundef 40) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool66.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool66.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.do.end70_crit_edge

copy_to_user.exit.do.end70_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end70

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end70:                                         ; preds = %copy_to_user.exit.do.end70_crit_edge, %if.end8.i.i97.do.end70_crit_edge
  %name72 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.453, ptr noundef %name72, ptr noundef nonnull @.str.438, ptr noundef %arg) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %copy_to_user.exit.cleanup_crit_edge, %do.end58, %do.end29, %do.end15, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ -1, %do.end15 ], [ -1, %do.end29 ], [ -14, %do.end70 ], [ -1, %do.end58 ], [ 0, %copy_to_user.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %karg) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_wait_for_ioc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mpt3sas_base_get_smid_hpr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_debug_dump_mf(ptr nocapture noundef readonly %mpi_request, i32 noundef %sz) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.295) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz)
  %cmp21 = icmp sgt i32 %sz, 0
  br i1 %cmp21, label %entry.for.body_crit_edge, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

do.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.299) #19
  br label %do.end9

do.end9:                                          ; preds = %do.end4, %for.body.do.end9_crit_edge
  %arrayidx = getelementptr i32, ptr %mpi_request, i32 %i.022
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, i32 noundef %3) #19
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %sz
  br i1 %exitcond.not, label %do.end9.do.end14_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.end9.do.end14_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end14

do.end14:                                         ; preds = %do.end9.do.end14_crit_edge, %entry.do.end14_crit_edge
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.305) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_base_get_sense_buffer_dma(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt3sas_base_put_smid_nvme_encap(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_ctl_set_task_mid(ptr noundef %ioc, ptr nocapture noundef readonly %karg, ptr noundef %tm_request) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %TaskType = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REQUEST, ptr %tm_request, i32 0, i32 4
  %0 = ptrtoint ptr %TaskType to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %TaskType, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.469)
  switch i8 %1, label %entry.cleanup94_crit_edge [
    i8 1, label %entry.if.end8_crit_edge
    i8 7, label %if.then6
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

entry.cleanup94_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup94

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %entry.if.end8_crit_edge
  %desc.0 = phi ptr [ @.str.308, %if.then6 ], [ @.str.307, %entry.if.end8_crit_edge ]
  %LUN = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REQUEST, ptr %tm_request, i32 0, i32 10
  %call = tail call i64 @scsilun_to_int(ptr noundef %LUN) #16
  %conv9 = trunc i64 %call to i32
  %3 = ptrtoint ptr %tm_request to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tm_request, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %scsiio_depth = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 144
  %6 = ptrtoint ptr %scsiio_depth to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %scsiio_depth, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not147.not = icmp eq i16 %7, 0
  br i1 %tobool.not147.not, label %if.end8.if.then48_crit_edge, label %for.body.lr.ph

if.end8.if.then48_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then48

for.body.lr.ph:                                   ; preds = %if.end8
  %conv16 = and i64 %call, 4294967295
  %TaskMID = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REQUEST, ptr %tm_request, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %smid.0148 = phi i16 [ %7, %for.body.lr.ph ], [ %dec, %cleanup.for.body_crit_edge ]
  %call12 = tail call ptr @mpt3sas_scsih_scsi_lookup_get(ptr noundef %ioc, i16 noundef zeroext %smid.0148) #16
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %for.body.cleanup_crit_edge, label %if.end15

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %for.body
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %call12, i32 0, i32 1
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %lun17 = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %lun17 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %lun17, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %conv16, i64 %11)
  %cmp18.not = icmp eq i64 %conv16, %11
  br i1 %cmp18.not, label %if.end21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 21
  %12 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hostdata, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %cmp23 = icmp eq ptr %15, null
  br i1 %cmp23, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %handle28 = getelementptr inbounds %struct.MPT3SAS_TARGET, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %handle28 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %handle28, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %5)
  %cmp31.not = icmp eq i16 %17, %5
  br i1 %cmp31.not, label %if.end34, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %add.ptr.i = getelementptr %struct.scsi_cmnd, ptr %call12, i32 1
  %18 = ptrtoint ptr %TaskMID to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %TaskMID, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool36.not = icmp eq i16 %19, 0
  br i1 %tobool36.not, label %if.end34.if.end77_crit_edge, label %lor.lhs.false

if.end34.if.end77_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77

lor.lhs.false:                                    ; preds = %if.end34
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp41 = icmp eq i16 %19, %21
  br i1 %cmp41, label %lor.lhs.false.if.end77_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.if.end77_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %dec = add i16 %smid.0148, -1
  %tobool.not.not = icmp eq i16 %dec, 0
  br i1 %tobool.not.not, label %cleanup.if.then48_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup.if.then48_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then48

if.then48:                                        ; preds = %cleanup.if.then48_crit_edge, %if.end8.if.then48_crit_edge
  %logging_level = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %22 = ptrtoint ptr %logging_level to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %logging_level, align 8
  %and = and i32 %23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %if.then48.if.end55_crit_edge, label %do.end

if.then48.if.end55_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end55

do.end:                                           ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %24 = ptrtoint ptr %tm_request to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tm_request, align 4
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv53 = zext i16 %26 to i32
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309, ptr noundef %name, ptr noundef nonnull %desc.0, i32 noundef %conv53, i32 noundef %conv9) #19
  br label %if.end55

if.end55:                                         ; preds = %do.end, %if.then48.if.end55_crit_edge
  %reply = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 79, i32 2
  %27 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reply, align 4
  %29 = ptrtoint ptr %tm_request to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tm_request, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %28, align 4
  %Function = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REPLY, ptr %28, i32 0, i32 2
  %32 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %Function, align 1
  %33 = ptrtoint ptr %TaskType to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %TaskType, align 1
  %TaskType59 = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REPLY, ptr %28, i32 0, i32 4
  %35 = ptrtoint ptr %TaskType59 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %TaskType59, align 1
  %MsgLength = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REPLY, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %MsgLength to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 7, ptr %MsgLength, align 2
  %VP_ID = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REQUEST, ptr %tm_request, i32 0, i32 7
  %37 = ptrtoint ptr %VP_ID to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %VP_ID, align 4
  %VP_ID60 = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REPLY, ptr %28, i32 0, i32 7
  %39 = ptrtoint ptr %VP_ID60 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %VP_ID60, align 4
  %VF_ID = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REQUEST, ptr %tm_request, i32 0, i32 8
  %40 = ptrtoint ptr %VF_ID to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %VF_ID, align 1
  %VF_ID61 = getelementptr inbounds %struct._MPI2_SCSI_TASK_MANAGE_REPLY, ptr %28, i32 0, i32 8
  %42 = ptrtoint ptr %VF_ID61 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %VF_ID61, align 1
  %max_reply_bytes = getelementptr inbounds %struct.mpt3_ioctl_command, ptr %karg, i32 0, i32 6
  %43 = ptrtoint ptr %max_reply_bytes to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_reply_bytes, align 4
  %reply_sz = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 181
  %45 = ptrtoint ptr %reply_sz to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %reply_sz, align 4
  %conv62 = zext i16 %46 to i32
  %47 = tail call i32 @llvm.umin.i32(i32 %44, i32 %conv62)
  %reply_frame_buf_ptr = getelementptr inbounds %struct.mpt3_ioctl_command, ptr %karg, i32 0, i32 2
  %48 = ptrtoint ptr %reply_frame_buf_ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reply_frame_buf_ptr, align 4
  %50 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reply, align 4
  tail call void @__check_object_size(ptr noundef %51, i32 noundef %47, i1 noundef zeroext true) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.234, i32 noundef 174) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.end55.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end55.copy_to_user.exit_crit_edge:             ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end55
  %52 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %49, i32 %47, i32 -1226833920) #22, !srcloc !832
  %asmresult.i.i = extractvalue { i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %51, i32 noundef %47) #16
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %49, ptr noundef %51, i32 noundef %47) #16
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end55.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %47, %if.end55.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %47, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool69.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool69.not, label %copy_to_user.exit.cleanup94_crit_edge, label %do.end73

copy_to_user.exit.cleanup94_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup94

do.end73:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.3, i32 noundef 643, ptr noundef nonnull @.str.310) #19
  br label %cleanup94

if.end77:                                         ; preds = %lor.lhs.false.if.end77_crit_edge, %if.end34.if.end77_crit_edge
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %add.ptr.i, align 4
  %55 = tail call i16 @llvm.bswap.i16(i16 %54)
  %56 = ptrtoint ptr %TaskMID to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %TaskMID, align 4
  %logging_level78 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 10
  %57 = ptrtoint ptr %logging_level78 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %logging_level78, align 8
  %and79 = and i32 %58, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end77.cleanup94_crit_edge, label %do.end84

if.end77.cleanup94_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup94

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  %name86 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %59 = ptrtoint ptr %tm_request to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %tm_request, align 4
  %61 = tail call i16 @llvm.bswap.i16(i16 %60)
  %conv89 = zext i16 %61 to i32
  %62 = ptrtoint ptr %TaskMID to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %TaskMID, align 4
  %64 = tail call i16 @llvm.bswap.i16(i16 %63)
  %conv91 = zext i16 %64 to i32
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314, ptr noundef %name86, ptr noundef nonnull %desc.0, i32 noundef %conv89, i32 noundef %conv9, i32 noundef %conv91) #19
  br label %cleanup94

cleanup94:                                        ; preds = %do.end84, %if.end77.cleanup94_crit_edge, %do.end73, %copy_to_user.exit.cleanup94_crit_edge, %entry.cleanup94_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup94_crit_edge ], [ 1, %do.end73 ], [ 1, %copy_to_user.exit.cleanup94_crit_edge ], [ 0, %do.end84 ], [ 0, %if.end77.cleanup94_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt3sas_scsih_set_tm_flag(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt3sas_scsih_clear_tm_flag(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt3sas_trigger_master(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt3sas_halt_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_scsih_issue_locked_tm(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i64 noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @scsilun_to_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_scsih_scsi_lookup_get(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt3sas_base_validate_event_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_ctl_mpt2_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %call = tail call fastcc i32 @_ctl_ioctl_main(ptr noundef %file, i32 noundef %cmd, ptr noundef %0, i16 noundef zeroext 512)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 403)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 403)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind readnone }
attributes #23 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !90, !91, !92, !93, !94, !96, !97, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !244, !246, !247, !249, !251, !252, !254, !255, !257, !259, !260, !262, !264, !265, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !286, !287, !289, !290, !292, !294, !295, !296, !297, !299, !300, !302, !304, !306, !307, !308, !309, !311, !312, !314, !315, !317, !319, !320, !322, !323, !325, !326, !327, !328, !330, !331, !333, !334, !336, !337, !338, !340, !341, !343, !344, !346, !348, !350, !352, !354, !356, !357, !358, !359, !361, !362, !363, !365, !367, !368, !369, !371, !372, !374, !375, !377, !378, !380, !381, !383, !384, !386, !387, !389, !391, !392, !394, !395, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !414, !416, !418, !419, !421, !422, !424, !426, !427, !429, !430, !432, !434, !436, !438, !439, !440, !441, !443, !444, !446, !447, !448, !450, !451, !453, !455, !457, !458, !459, !460, !462, !464, !466, !468, !469, !471, !472, !473, !475, !476, !477, !479, !480, !482, !483, !485, !486, !488, !489, !491, !492, !494, !496, !497, !498, !500, !501, !502, !504, !505, !506, !508, !509, !510, !512, !513, !515, !516, !518, !519, !521, !522, !523, !525, !526, !528, !529, !530, !532, !533, !535, !536, !538, !539, !540, !542, !543, !545, !546, !547, !549, !550, !551, !552, !553, !555, !556, !557, !559, !560, !561, !563, !564, !565, !567, !569, !571, !572, !573, !574, !576, !577, !579, !580, !581, !583, !584, !585, !587, !588, !590, !591, !593, !594, !595, !597, !598, !600, !601, !603, !604, !605, !607, !608, !610, !611, !613, !614, !615, !617, !618, !620, !621, !622, !623, !624, !626, !627, !628, !630, !631, !633, !634, !636, !637, !638, !640, !641, !642, !644, !645, !647, !648, !649, !651, !652, !654, !655, !656, !658, !659, !660, !662, !663, !664, !666, !667, !668, !670, !671, !672, !674, !675, !677, !678, !680, !681, !683, !684, !686, !687, !688, !690, !691, !692, !694, !695, !696, !698, !699, !701, !702, !704, !705, !707, !708, !710, !711, !713, !714, !715, !717, !718, !720, !721, !722, !724, !725, !726, !728, !729, !731, !732, !734, !735, !737, !738, !740, !741, !743, !744, !745, !747, !748, !749, !751, !752, !753, !755, !756, !757, !759, !760, !761, !763, !764, !766, !767, !769, !770, !772, !773, !775, !776, !778, !779, !781, !782, !783, !784, !786, !787, !789, !790, !791, !793, !794, !796, !797, !798, !800, !801, !802, !804, !805, !806, !808, !810}
!llvm.named.register.sp = !{!812}
!llvm.module.flags = !{!813, !814, !815, !816, !817, !818, !819, !820}
!llvm.ident = !{!821}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 304, i32 37}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 467, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mpt3sas_ctl_pre_reset_handler._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @mpt3sas_ctl_pre_reset_handler._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 479, i32 3}
!10 = !{ptr @mpt3sas_ctl_pre_reset_handler._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mpt3sas_ctl_pre_reset_handler._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 496, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mpt3sas_ctl_clear_outstanding_ioctls._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @mpt3sas_ctl_clear_outstanding_ioctls._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 515, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mpt3sas_ctl_reset_done_handler._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @mpt3sas_ctl_reset_done_handler._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1817, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mpt3sas_enable_diag_buffer._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mpt3sas_enable_diag_buffer._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1834, i32 5}
!29 = !{ptr @mpt3sas_enable_diag_buffer._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mpt3sas_enable_diag_buffer._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1838, i32 5}
!33 = !{ptr @mpt3sas_enable_diag_buffer._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mpt3sas_enable_diag_buffer._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1871, i32 4}
!37 = !{ptr @mpt3sas_enable_diag_buffer._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mpt3sas_enable_diag_buffer._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1876, i32 4}
!41 = !{ptr @mpt3sas_enable_diag_buffer._entry.22, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mpt3sas_enable_diag_buffer._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1886, i32 3}
!45 = !{ptr @mpt3sas_enable_diag_buffer._entry.25, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mpt3sas_enable_diag_buffer._entry_ptr.27, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1895, i32 3}
!49 = !{ptr @mpt3sas_enable_diag_buffer._entry.28, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mpt3sas_enable_diag_buffer._entry_ptr.30, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2129, i32 2}
!53 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mpt3sas_send_diag_release._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mpt3sas_send_diag_release._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2142, i32 3}
!58 = !{ptr @mpt3sas_send_diag_release._entry.33, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mpt3sas_send_diag_release._entry_ptr.35, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2150, i32 3}
!62 = !{ptr @mpt3sas_send_diag_release._entry.36, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mpt3sas_send_diag_release._entry_ptr.38, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2157, i32 3}
!66 = !{ptr @mpt3sas_send_diag_release._entry.39, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mpt3sas_send_diag_release._entry_ptr.41, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.43, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2178, i32 3}
!70 = !{ptr @mpt3sas_send_diag_release._entry.42, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mpt3sas_send_diag_release._entry_ptr.44, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.46, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2188, i32 3}
!74 = !{ptr @mpt3sas_send_diag_release._entry.45, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mpt3sas_send_diag_release._entry_ptr.47, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.49, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2199, i32 3}
!78 = !{ptr @mpt3sas_send_diag_release._entry.48, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mpt3sas_send_diag_release._entry_ptr.50, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.52, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2201, i32 3}
!82 = !{ptr @mpt3sas_send_diag_release._entry.51, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @mpt3sas_send_diag_release._entry_ptr.53, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @mpt3sas_host_groups, !85, !"mpt3sas_host_groups", i1 false, i1 false}
!85 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3959, i32 31}
!86 = !{ptr @mpt3sas_dev_groups, !87, !"mpt3sas_dev_groups", i1 false, i1 false}
!87 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4079, i32 31}
!88 = !{ptr @.str.54, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4132, i32 4}
!90 = !{ptr @.str.55, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @mpt3sas_ctl_init._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @mpt3sas_ctl_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.56, !89, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mpt3sas_ctl_init._entry.57, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4140, i32 4}
!96 = !{ptr @mpt3sas_ctl_init._entry_ptr.58, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.59, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mpt3sas_ctl_init.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4143, i32 2}
!100 = !{ptr @.str.60, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @async_queue, !102, !"async_queue", i1 false, i1 false}
!102 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 64, i32 30}
!103 = !{ptr @.str.61, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 110, i32 7}
!105 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 117, i32 10}
!107 = !{ptr @.str.63, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 120, i32 10}
!109 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 123, i32 10}
!111 = !{ptr @.str.65, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 131, i32 7}
!113 = !{ptr @.str.66, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 139, i32 10}
!115 = !{ptr @.str.67, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 142, i32 10}
!117 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 145, i32 10}
!119 = !{ptr @.str.69, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 148, i32 10}
!121 = !{ptr @.str.70, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 151, i32 10}
!123 = !{ptr @.str.71, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 154, i32 10}
!125 = !{ptr @.str.72, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 162, i32 7}
!127 = !{ptr @.str.73, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 169, i32 10}
!129 = !{ptr @.str.74, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 172, i32 10}
!131 = !{ptr @.str.75, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 175, i32 10}
!133 = !{ptr @.str.76, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 178, i32 10}
!135 = !{ptr @.str.77, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 181, i32 10}
!137 = !{ptr @.str.78, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 184, i32 10}
!139 = !{ptr @.str.79, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 187, i32 10}
!141 = !{ptr @.str.80, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 194, i32 2}
!143 = !{ptr @.str.81, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @_ctl_display_some_debug._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @_ctl_display_some_debug._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.83, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 200, i32 3}
!148 = !{ptr @_ctl_display_some_debug._entry.82, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @_ctl_display_some_debug._entry_ptr.84, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.86, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 215, i32 4}
!152 = !{ptr @_ctl_display_some_debug._entry.85, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @_ctl_display_some_debug._entry_ptr.87, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.89, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 218, i32 4}
!156 = !{ptr @_ctl_display_some_debug._entry.88, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @_ctl_display_some_debug._entry_ptr.90, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.92, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 227, i32 5}
!160 = !{ptr @_ctl_display_some_debug._entry.91, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @_ctl_display_some_debug._entry_ptr.93, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @_ctl_display_some_debug._entry.94, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 231, i32 6}
!164 = !{ptr @_ctl_display_some_debug._entry_ptr.95, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.97, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 238, i32 4}
!167 = !{ptr @_ctl_display_some_debug._entry.96, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @_ctl_display_some_debug._entry_ptr.98, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.99, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 65, i32 8}
!171 = !{ptr @ctl_poll_wait, !170, !"ctl_poll_wait", i1 false, i1 false}
!172 = !{ptr @.str.100, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1563, i32 2}
!174 = !{ptr @_ctl_diag_register_2._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @_ctl_diag_register_2._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.102, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1568, i32 3}
!178 = !{ptr @_ctl_diag_register_2._entry.101, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @_ctl_diag_register_2._entry_ptr.103, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @_ctl_diag_register_2._entry.104, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1575, i32 3}
!182 = !{ptr @_ctl_diag_register_2._entry_ptr.105, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.107, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1582, i32 3}
!185 = !{ptr @_ctl_diag_register_2._entry.106, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @_ctl_diag_register_2._entry_ptr.108, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.110, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1588, i32 3}
!189 = !{ptr @_ctl_diag_register_2._entry.109, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @_ctl_diag_register_2._entry_ptr.111, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.113, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1598, i32 3}
!193 = !{ptr @_ctl_diag_register_2._entry.112, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @_ctl_diag_register_2._entry_ptr.114, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.116, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1623, i32 5}
!197 = !{ptr @_ctl_diag_register_2._entry.115, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @_ctl_diag_register_2._entry_ptr.117, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.119, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1646, i32 5}
!201 = !{ptr @_ctl_diag_register_2._entry.118, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @_ctl_diag_register_2._entry_ptr.120, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @_ctl_diag_register_2._entry.121, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1652, i32 4}
!205 = !{ptr @_ctl_diag_register_2._entry_ptr.122, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.124, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1663, i32 4}
!208 = !{ptr @_ctl_diag_register_2._entry.123, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @_ctl_diag_register_2._entry_ptr.125, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.127, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1672, i32 3}
!212 = !{ptr @_ctl_diag_register_2._entry.126, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @_ctl_diag_register_2._entry_ptr.128, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @_ctl_diag_register_2._entry.129, !215, !"_entry", i1 false, i1 false}
!215 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1679, i32 3}
!216 = !{ptr @_ctl_diag_register_2._entry_ptr.130, !215, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.132, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1718, i32 4}
!219 = !{ptr @_ctl_diag_register_2._entry.131, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @_ctl_diag_register_2._entry_ptr.133, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.135, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1737, i32 2}
!223 = !{ptr @_ctl_diag_register_2._entry.134, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @_ctl_diag_register_2._entry_ptr.136, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @_ctl_diag_register_2._entry.137, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1753, i32 3}
!227 = !{ptr @_ctl_diag_register_2._entry_ptr.138, !226, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @_ctl_diag_register_2._entry.139, !229, !"_entry", i1 false, i1 false}
!229 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1761, i32 3}
!230 = !{ptr @_ctl_diag_register_2._entry_ptr.140, !229, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @_ctl_diag_register_2._entry.141, !232, !"_entry", i1 false, i1 false}
!232 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1772, i32 3}
!233 = !{ptr @_ctl_diag_register_2._entry_ptr.142, !232, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @_ctl_diag_register_2._entry.143, !235, !"_entry", i1 false, i1 false}
!235 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1774, i32 3}
!236 = !{ptr @_ctl_diag_register_2._entry_ptr.144, !235, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @init_completion.__key, !238, !"__key", i1 false, i1 false}
!238 = !{!"../include/linux/completion.h", i32 87, i32 2}
!239 = !{ptr @.str.145, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @mpt3sas_host_attr_group, !241, !"mpt3sas_host_attr_group", i1 false, i1 false}
!241 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3955, i32 37}
!242 = !{ptr @mpt3sas_host_attrs, !243, !"mpt3sas_host_attrs", i1 false, i1 false}
!243 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3924, i32 26}
!244 = !{ptr @.str.146, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2818, i32 8}
!246 = !{ptr @dev_attr_version_fw, !245, !"dev_attr_version_fw", i1 false, i1 false}
!247 = !{ptr @.str.147, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2812, i32 34}
!249 = !{ptr @.str.148, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2843, i32 8}
!251 = !{ptr @dev_attr_version_bios, !250, !"dev_attr_version_bios", i1 false, i1 false}
!252 = !{ptr @.str.149, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2863, i32 8}
!254 = !{ptr @dev_attr_version_mpi, !253, !"dev_attr_version_mpi", i1 false, i1 false}
!255 = !{ptr @.str.150, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2860, i32 34}
!257 = !{ptr @.str.151, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2882, i32 8}
!259 = !{ptr @dev_attr_version_product, !258, !"dev_attr_version_product", i1 false, i1 false}
!260 = !{ptr @.str.152, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2880, i32 27}
!262 = !{ptr @.str.153, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2902, i32 8}
!264 = !{ptr @dev_attr_version_nvdata_persistent, !263, !"dev_attr_version_nvdata_persistent", i1 false, i1 false}
!265 = !{ptr @.str.154, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2899, i32 34}
!267 = !{ptr @.str.155, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2922, i32 8}
!269 = !{ptr @dev_attr_version_nvdata_default, !268, !"dev_attr_version_nvdata_default", i1 false, i1 false}
!270 = !{ptr @.str.156, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2941, i32 8}
!272 = !{ptr @dev_attr_board_name, !271, !"dev_attr_board_name", i1 false, i1 false}
!273 = !{ptr @.str.157, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2960, i32 8}
!275 = !{ptr @dev_attr_board_assembly, !274, !"dev_attr_board_assembly", i1 false, i1 false}
!276 = !{ptr @.str.158, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2979, i32 8}
!278 = !{ptr @dev_attr_board_tracer, !277, !"dev_attr_board_tracer", i1 false, i1 false}
!279 = !{ptr @.str.159, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3001, i32 8}
!281 = !{ptr @dev_attr_io_delay, !280, !"dev_attr_io_delay", i1 false, i1 false}
!282 = !{ptr @.str.160, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2999, i32 34}
!284 = !{ptr @.str.161, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3023, i32 8}
!286 = !{ptr @dev_attr_device_delay, !285, !"dev_attr_device_delay", i1 false, i1 false}
!287 = !{ptr @.str.162, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3102, i32 8}
!289 = !{ptr @dev_attr_logging_level, !288, !"dev_attr_logging_level", i1 false, i1 false}
!290 = !{ptr @.str.163, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3094, i32 18}
!292 = !{ptr @.str.164, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3098, i32 2}
!294 = !{ptr @.str.165, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @logging_level_store._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @logging_level_store._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.166, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3138, i32 8}
!299 = !{ptr @dev_attr_fwfault_debug, !298, !"dev_attr_fwfault_debug", i1 false, i1 false}
!300 = !{ptr @.str.167, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3120, i32 34}
!302 = !{ptr @.str.168, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3130, i32 18}
!304 = !{ptr @.str.169, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3134, i32 2}
!306 = !{ptr @.str.170, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @fwfault_debug_store._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @fwfault_debug_store._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.171, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3044, i32 8}
!311 = !{ptr @dev_attr_fw_queue_depth, !310, !"dev_attr_fw_queue_depth", i1 false, i1 false}
!312 = !{ptr @.str.172, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3067, i32 8}
!314 = !{ptr @dev_attr_host_sas_address, !313, !"dev_attr_host_sas_address", i1 false, i1 false}
!315 = !{ptr @.str.173, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3064, i32 34}
!317 = !{ptr @.str.174, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3159, i32 8}
!319 = !{ptr @dev_attr_ioc_reset_count, !318, !"dev_attr_ioc_reset_count", i1 false, i1 false}
!320 = !{ptr @.str.175, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3309, i32 8}
!322 = !{ptr @dev_attr_host_trace_buffer_size, !321, !"dev_attr_host_trace_buffer_size", i1 false, i1 false}
!323 = !{ptr @.str.176, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3286, i32 3}
!325 = !{ptr @.str.177, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @host_trace_buffer_size_show._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @host_trace_buffer_size_show._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @host_trace_buffer_size_show._entry.178, !329, !"_entry", i1 false, i1 false}
!329 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3293, i32 3}
!330 = !{ptr @host_trace_buffer_size_show._entry_ptr.179, !329, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.180, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3369, i32 8}
!333 = !{ptr @dev_attr_host_trace_buffer, !332, !"dev_attr_host_trace_buffer", i1 false, i1 false}
!334 = !{ptr @.str.181, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3333, i32 3}
!336 = !{ptr @host_trace_buffer_show._entry, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @host_trace_buffer_show._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @host_trace_buffer_show._entry.182, !339, !"_entry", i1 false, i1 false}
!339 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3340, i32 3}
!340 = !{ptr @host_trace_buffer_show._entry_ptr.183, !339, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.184, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3491, i32 8}
!343 = !{ptr @dev_attr_host_trace_buffer_enable, !342, !"dev_attr_host_trace_buffer_enable", i1 false, i1 false}
!344 = !{ptr @.str.185, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3394, i32 35}
!346 = !{ptr @.str.186, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3397, i32 35}
!348 = !{ptr @.str.187, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3399, i32 35}
!350 = !{ptr @.str.188, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3417, i32 18}
!352 = !{ptr @.str.189, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3420, i32 19}
!354 = !{ptr @.str.190, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3429, i32 3}
!356 = !{ptr @.str.191, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @host_trace_buffer_enable_store._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @host_trace_buffer_enable_store._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.193, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3464, i32 4}
!361 = !{ptr @host_trace_buffer_enable_store._entry.192, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @host_trace_buffer_enable_store._entry_ptr.194, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.195, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3472, i32 26}
!365 = !{ptr @.str.197, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3482, i32 3}
!367 = !{ptr @host_trace_buffer_enable_store._entry.196, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @host_trace_buffer_enable_store._entry_ptr.198, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.199, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3187, i32 8}
!371 = !{ptr @dev_attr_reply_queue_count, !370, !"dev_attr_reply_queue_count", i1 false, i1 false}
!372 = !{ptr @.str.200, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3569, i32 8}
!374 = !{ptr @dev_attr_diag_trigger_master, !373, !"dev_attr_diag_trigger_master", i1 false, i1 false}
!375 = !{ptr @.str.201, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3645, i32 8}
!377 = !{ptr @dev_attr_diag_trigger_event, !376, !"dev_attr_diag_trigger_event", i1 false, i1 false}
!378 = !{ptr @.str.202, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3719, i32 8}
!380 = !{ptr @dev_attr_diag_trigger_scsi, !379, !"dev_attr_diag_trigger_scsi", i1 false, i1 false}
!381 = !{ptr @.str.203, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3794, i32 8}
!383 = !{ptr @dev_attr_diag_trigger_mpi, !382, !"dev_attr_diag_trigger_mpi", i1 false, i1 false}
!384 = !{ptr @.str.204, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3817, i32 8}
!386 = !{ptr @dev_attr_drv_support_bitmap, !385, !"dev_attr_drv_support_bitmap", i1 false, i1 false}
!387 = !{ptr @.str.205, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3815, i32 34}
!389 = !{ptr @.str.206, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3256, i32 8}
!391 = !{ptr @dev_attr_BRM_status, !390, !"dev_attr_BRM_status", i1 false, i1 false}
!392 = !{ptr @.str.207, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3213, i32 3}
!394 = !{ptr @.str.208, !393, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @BRM_status_show._entry, !393, !"_entry", i1 false, i1 false}
!396 = !{ptr @BRM_status_show._entry_ptr, !393, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.210, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3227, i32 3}
!399 = !{ptr @BRM_status_show._entry.209, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @BRM_status_show._entry_ptr.211, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.213, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3235, i32 3}
!403 = !{ptr @BRM_status_show._entry.212, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @BRM_status_show._entry_ptr.214, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.216, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3242, i32 3}
!407 = !{ptr @BRM_status_show._entry.215, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @BRM_status_show._entry_ptr.217, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.218, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3922, i32 8}
!411 = !{ptr @dev_attr_enable_sdev_max_qd, !410, !"dev_attr_enable_sdev_max_qd", i1 false, i1 false}
!412 = !{ptr @mpt3sas_dev_attr_group, !413, !"mpt3sas_dev_attr_group", i1 false, i1 false}
!413 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4075, i32 37}
!414 = !{ptr @mpt3sas_dev_attrs, !415, !"mpt3sas_dev_attrs", i1 false, i1 false}
!415 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4067, i32 26}
!416 = !{ptr @.str.219, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 3986, i32 8}
!418 = !{ptr @dev_attr_sas_address, !417, !"dev_attr_sas_address", i1 false, i1 false}
!419 = !{ptr @.str.220, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4008, i32 8}
!421 = !{ptr @dev_attr_sas_device_handle, !420, !"dev_attr_sas_device_handle", i1 false, i1 false}
!422 = !{ptr @.str.221, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4005, i32 34}
!424 = !{ptr @.str.222, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4026, i32 8}
!426 = !{ptr @dev_attr_sas_ncq_prio_supported, !425, !"dev_attr_sas_ncq_prio_supported", i1 false, i1 false}
!427 = !{ptr @.str.223, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4065, i32 8}
!429 = !{ptr @dev_attr_sas_ncq_prio_enable, !428, !"dev_attr_sas_ncq_prio_enable", i1 false, i1 false}
!430 = !{ptr @.str.224, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4108, i32 12}
!432 = !{ptr @ctl_dev, !433, !"ctl_dev", i1 false, i1 false}
!433 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4106, i32 26}
!434 = !{ptr @ctl_fops, !435, !"ctl_fops", i1 false, i1 false}
!435 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4085, i32 37}
!436 = !{ptr @.str.225, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2600, i32 3}
!438 = !{ptr @.str.226, !437, !"<string literal>", i1 false, i1 false}
!439 = !{ptr @_ctl_ioctl_main._entry, !437, !"_entry", i1 false, i1 false}
!440 = !{ptr @_ctl_ioctl_main._entry_ptr, !437, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @_ctl_ioctl_main._entry.227, !442, !"_entry", i1 false, i1 false}
!442 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2650, i32 4}
!443 = !{ptr @_ctl_ioctl_main._entry_ptr.228, !442, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.230, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2710, i32 3}
!446 = !{ptr @_ctl_ioctl_main._entry.229, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @_ctl_ioctl_main._entry_ptr.231, !445, !"_entry_ptr", i1 false, i1 false}
!448 = distinct !{null, !449, !"__already_done", i1 false, i1 false}
!449 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!450 = !{ptr @.str.232, !449, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @.str.233, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!453 = !{ptr @.str.234, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!455 = !{ptr @.str.235, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1158, i32 2}
!457 = !{ptr @.str.236, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @_ctl_getiocinfo._entry, !456, !"_entry", i1 false, i1 false}
!459 = !{ptr @_ctl_getiocinfo._entry_ptr, !456, !"_entry_ptr", i1 false, i1 false}
!460 = distinct !{null, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1174, i32 30}
!462 = !{ptr @.str.238, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1181, i32 31}
!464 = !{ptr @.str.239, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1189, i32 31}
!466 = !{ptr @_ctl_getiocinfo._entry.240, !467, !"_entry", i1 false, i1 false}
!467 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1195, i32 3}
!468 = !{ptr @_ctl_getiocinfo._entry_ptr.241, !467, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.242, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 685, i32 3}
!471 = !{ptr @_ctl_do_mpt_command._entry, !470, !"_entry", i1 false, i1 false}
!472 = !{ptr @_ctl_do_mpt_command._entry_ptr, !470, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.244, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 696, i32 3}
!475 = !{ptr @_ctl_do_mpt_command._entry.243, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @_ctl_do_mpt_command._entry_ptr.245, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @_ctl_do_mpt_command._entry.246, !478, !"_entry", i1 false, i1 false}
!478 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 711, i32 3}
!479 = !{ptr @_ctl_do_mpt_command._entry_ptr.247, !478, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @_ctl_do_mpt_command._entry.248, !481, !"_entry", i1 false, i1 false}
!481 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 720, i32 4}
!482 = !{ptr @_ctl_do_mpt_command._entry_ptr.249, !481, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @_ctl_do_mpt_command._entry.250, !484, !"_entry", i1 false, i1 false}
!484 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 759, i32 4}
!485 = !{ptr @_ctl_do_mpt_command._entry_ptr.251, !484, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @_ctl_do_mpt_command._entry.252, !487, !"_entry", i1 false, i1 false}
!487 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 767, i32 4}
!488 = !{ptr @_ctl_do_mpt_command._entry_ptr.253, !487, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @_ctl_do_mpt_command._entry.254, !490, !"_entry", i1 false, i1 false}
!490 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 779, i32 4}
!491 = !{ptr @_ctl_do_mpt_command._entry_ptr.255, !490, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @.str.256, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 790, i32 37}
!494 = !{ptr @.str.258, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 798, i32 4}
!496 = !{ptr @_ctl_do_mpt_command._entry.257, !495, !"_entry", i1 false, i1 false}
!497 = !{ptr @_ctl_do_mpt_command._entry_ptr.259, !495, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.261, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 829, i32 4}
!500 = !{ptr @_ctl_do_mpt_command._entry.260, !499, !"_entry", i1 false, i1 false}
!501 = !{ptr @_ctl_do_mpt_command._entry_ptr.262, !499, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.264, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 849, i32 4}
!504 = !{ptr @_ctl_do_mpt_command._entry.263, !503, !"_entry", i1 false, i1 false}
!505 = !{ptr @_ctl_do_mpt_command._entry_ptr.265, !503, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @.str.267, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 869, i32 3}
!508 = !{ptr @_ctl_do_mpt_command._entry.266, !507, !"_entry", i1 false, i1 false}
!509 = !{ptr @_ctl_do_mpt_command._entry_ptr.268, !507, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @_ctl_do_mpt_command._entry.269, !511, !"_entry", i1 false, i1 false}
!511 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 887, i32 4}
!512 = !{ptr @_ctl_do_mpt_command._entry_ptr.270, !511, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @_ctl_do_mpt_command._entry.271, !514, !"_entry", i1 false, i1 false}
!514 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 916, i32 5}
!515 = !{ptr @_ctl_do_mpt_command._entry_ptr.272, !514, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @_ctl_do_mpt_command._entry.273, !517, !"_entry", i1 false, i1 false}
!517 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 937, i32 4}
!518 = !{ptr @_ctl_do_mpt_command._entry_ptr.274, !517, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @.str.276, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 985, i32 5}
!521 = !{ptr @_ctl_do_mpt_command._entry.275, !520, !"_entry", i1 false, i1 false}
!522 = !{ptr @_ctl_do_mpt_command._entry_ptr.277, !520, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @_ctl_do_mpt_command._entry.278, !524, !"_entry", i1 false, i1 false}
!524 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1035, i32 3}
!525 = !{ptr @_ctl_do_mpt_command._entry_ptr.279, !524, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @.str.281, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1048, i32 3}
!528 = !{ptr @_ctl_do_mpt_command._entry.280, !527, !"_entry", i1 false, i1 false}
!529 = !{ptr @_ctl_do_mpt_command._entry_ptr.282, !527, !"_entry_ptr", i1 false, i1 false}
!530 = !{ptr @_ctl_do_mpt_command._entry.283, !531, !"_entry", i1 false, i1 false}
!531 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1058, i32 4}
!532 = !{ptr @_ctl_do_mpt_command._entry_ptr.284, !531, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @_ctl_do_mpt_command._entry.285, !534, !"_entry", i1 false, i1 false}
!534 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1070, i32 4}
!535 = !{ptr @_ctl_do_mpt_command._entry_ptr.286, !534, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.288, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1083, i32 4}
!538 = !{ptr @_ctl_do_mpt_command._entry.287, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @_ctl_do_mpt_command._entry_ptr.289, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @_ctl_do_mpt_command._entry.290, !541, !"_entry", i1 false, i1 false}
!541 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1092, i32 4}
!542 = !{ptr @_ctl_do_mpt_command._entry_ptr.291, !541, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @.str.293, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1106, i32 4}
!545 = !{ptr @_ctl_do_mpt_command._entry.292, !544, !"_entry", i1 false, i1 false}
!546 = !{ptr @_ctl_do_mpt_command._entry_ptr.294, !544, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @.str.295, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 159, i32 2}
!549 = !{ptr @.str.296, !548, !"<string literal>", i1 false, i1 false}
!550 = !{ptr @.str.297, !548, !"<string literal>", i1 false, i1 false}
!551 = !{ptr @_debug_dump_mf._entry, !548, !"_entry", i1 false, i1 false}
!552 = !{ptr @_debug_dump_mf._entry_ptr, !548, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @.str.299, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 162, i32 4}
!555 = !{ptr @_debug_dump_mf._entry.298, !554, !"_entry", i1 false, i1 false}
!556 = !{ptr @_debug_dump_mf._entry_ptr.300, !554, !"_entry_ptr", i1 false, i1 false}
!557 = !{ptr @.str.302, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 163, i32 3}
!559 = !{ptr @_debug_dump_mf._entry.301, !558, !"_entry", i1 false, i1 false}
!560 = !{ptr @_debug_dump_mf._entry_ptr.303, !558, !"_entry_ptr", i1 false, i1 false}
!561 = !{ptr @.str.305, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/scsi/mpt3sas/mpt3sas_debug.h", i32 165, i32 2}
!563 = !{ptr @_debug_dump_mf._entry.304, !562, !"_entry", i1 false, i1 false}
!564 = !{ptr @_debug_dump_mf._entry_ptr.306, !562, !"_entry_ptr", i1 false, i1 false}
!565 = !{ptr @.str.307, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 592, i32 10}
!567 = !{ptr @.str.308, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 594, i32 10}
!569 = !{ptr @.str.309, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 628, i32 3}
!571 = !{ptr @.str.310, !570, !"<string literal>", i1 false, i1 false}
!572 = !{ptr @_ctl_set_task_mid._entry, !570, !"_entry", i1 false, i1 false}
!573 = !{ptr @_ctl_set_task_mid._entry_ptr, !570, !"_entry_ptr", i1 false, i1 false}
!574 = !{ptr @_ctl_set_task_mid._entry.311, !575, !"_entry", i1 false, i1 false}
!575 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 642, i32 4}
!576 = !{ptr @_ctl_set_task_mid._entry_ptr.312, !575, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @.str.314, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 647, i32 2}
!579 = !{ptr @_ctl_set_task_mid._entry.313, !578, !"_entry", i1 false, i1 false}
!580 = !{ptr @_ctl_set_task_mid._entry_ptr.315, !578, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @.str.316, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1213, i32 3}
!583 = !{ptr @_ctl_eventquery._entry, !582, !"_entry", i1 false, i1 false}
!584 = !{ptr @_ctl_eventquery._entry_ptr, !582, !"_entry_ptr", i1 false, i1 false}
!585 = !{ptr @_ctl_eventquery._entry.317, !586, !"_entry", i1 false, i1 false}
!586 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1218, i32 2}
!587 = !{ptr @_ctl_eventquery._entry_ptr.318, !586, !"_entry_ptr", i1 false, i1 false}
!588 = !{ptr @_ctl_eventquery._entry.319, !589, !"_entry", i1 false, i1 false}
!589 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1226, i32 3}
!590 = !{ptr @_ctl_eventquery._entry_ptr.320, !589, !"_entry_ptr", i1 false, i1 false}
!591 = !{ptr @.str.321, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1244, i32 3}
!593 = !{ptr @_ctl_eventenable._entry, !592, !"_entry", i1 false, i1 false}
!594 = !{ptr @_ctl_eventenable._entry_ptr, !592, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @_ctl_eventenable._entry.322, !596, !"_entry", i1 false, i1 false}
!596 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1249, i32 2}
!597 = !{ptr @_ctl_eventenable._entry_ptr.323, !596, !"_entry_ptr", i1 false, i1 false}
!598 = !{ptr @_ctl_eventenable._entry.324, !599, !"_entry", i1 false, i1 false}
!599 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1264, i32 3}
!600 = !{ptr @_ctl_eventenable._entry_ptr.325, !599, !"_entry_ptr", i1 false, i1 false}
!601 = !{ptr @.str.326, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1284, i32 3}
!603 = !{ptr @_ctl_eventreport._entry, !602, !"_entry", i1 false, i1 false}
!604 = !{ptr @_ctl_eventreport._entry_ptr, !602, !"_entry_ptr", i1 false, i1 false}
!605 = !{ptr @_ctl_eventreport._entry.327, !606, !"_entry", i1 false, i1 false}
!606 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1289, i32 2}
!607 = !{ptr @_ctl_eventreport._entry_ptr.328, !606, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @_ctl_eventreport._entry.329, !609, !"_entry", i1 false, i1 false}
!609 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1305, i32 3}
!610 = !{ptr @_ctl_eventreport._entry_ptr.330, !609, !"_entry_ptr", i1 false, i1 false}
!611 = !{ptr @.str.331, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1327, i32 3}
!613 = !{ptr @_ctl_do_reset._entry, !612, !"_entry", i1 false, i1 false}
!614 = !{ptr @_ctl_do_reset._entry_ptr, !612, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @_ctl_do_reset._entry.332, !616, !"_entry", i1 false, i1 false}
!616 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1336, i32 2}
!617 = !{ptr @_ctl_do_reset._entry_ptr.333, !616, !"_entry_ptr", i1 false, i1 false}
!618 = !{ptr @.str.335, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1341, i32 2}
!620 = !{ptr @_ctl_do_reset._entry.334, !619, !"_entry", i1 false, i1 false}
!621 = !{ptr @_ctl_do_reset._entry_ptr.336, !619, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.337, !619, !"<string literal>", i1 false, i1 false}
!623 = !{ptr @.str.338, !619, !"<string literal>", i1 false, i1 false}
!624 = !{ptr @.str.339, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1466, i32 3}
!626 = !{ptr @_ctl_btdh_mapping._entry, !625, !"_entry", i1 false, i1 false}
!627 = !{ptr @_ctl_btdh_mapping._entry_ptr, !625, !"_entry_ptr", i1 false, i1 false}
!628 = !{ptr @_ctl_btdh_mapping._entry.340, !629, !"_entry", i1 false, i1 false}
!629 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1471, i32 2}
!630 = !{ptr @_ctl_btdh_mapping._entry_ptr.341, !629, !"_entry_ptr", i1 false, i1 false}
!631 = !{ptr @_ctl_btdh_mapping._entry.342, !632, !"_entry", i1 false, i1 false}
!632 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1481, i32 3}
!633 = !{ptr @_ctl_btdh_mapping._entry_ptr.343, !632, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.344, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1919, i32 3}
!636 = !{ptr @_ctl_diag_register._entry, !635, !"_entry", i1 false, i1 false}
!637 = !{ptr @_ctl_diag_register._entry_ptr, !635, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @.str.345, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1952, i32 3}
!640 = !{ptr @_ctl_diag_unregister._entry, !639, !"_entry", i1 false, i1 false}
!641 = !{ptr @_ctl_diag_unregister._entry_ptr, !639, !"_entry_ptr", i1 false, i1 false}
!642 = !{ptr @_ctl_diag_unregister._entry.346, !643, !"_entry", i1 false, i1 false}
!643 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1957, i32 2}
!644 = !{ptr @_ctl_diag_unregister._entry_ptr.347, !643, !"_entry_ptr", i1 false, i1 false}
!645 = !{ptr @.str.349, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1962, i32 3}
!647 = !{ptr @_ctl_diag_unregister._entry.348, !646, !"_entry", i1 false, i1 false}
!648 = !{ptr @_ctl_diag_unregister._entry_ptr.350, !646, !"_entry_ptr", i1 false, i1 false}
!649 = !{ptr @_ctl_diag_unregister._entry.351, !650, !"_entry", i1 false, i1 false}
!650 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1968, i32 3}
!651 = !{ptr @_ctl_diag_unregister._entry_ptr.352, !650, !"_entry_ptr", i1 false, i1 false}
!652 = !{ptr @.str.354, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1975, i32 3}
!654 = !{ptr @_ctl_diag_unregister._entry.353, !653, !"_entry", i1 false, i1 false}
!655 = !{ptr @_ctl_diag_unregister._entry_ptr.355, !653, !"_entry_ptr", i1 false, i1 false}
!656 = !{ptr @.str.357, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1981, i32 3}
!658 = !{ptr @_ctl_diag_unregister._entry.356, !657, !"_entry", i1 false, i1 false}
!659 = !{ptr @_ctl_diag_unregister._entry_ptr.358, !657, !"_entry_ptr", i1 false, i1 false}
!660 = !{ptr @.str.360, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1987, i32 3}
!662 = !{ptr @_ctl_diag_unregister._entry.359, !661, !"_entry", i1 false, i1 false}
!663 = !{ptr @_ctl_diag_unregister._entry_ptr.361, !661, !"_entry_ptr", i1 false, i1 false}
!664 = !{ptr @.str.363, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 1994, i32 3}
!666 = !{ptr @_ctl_diag_unregister._entry.362, !665, !"_entry", i1 false, i1 false}
!667 = !{ptr @_ctl_diag_unregister._entry_ptr.364, !665, !"_entry_ptr", i1 false, i1 false}
!668 = !{ptr @.str.365, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2035, i32 3}
!670 = !{ptr @_ctl_diag_query._entry, !669, !"_entry", i1 false, i1 false}
!671 = !{ptr @_ctl_diag_query._entry_ptr, !669, !"_entry_ptr", i1 false, i1 false}
!672 = !{ptr @_ctl_diag_query._entry.366, !673, !"_entry", i1 false, i1 false}
!673 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2040, i32 2}
!674 = !{ptr @_ctl_diag_query._entry_ptr.367, !673, !"_entry_ptr", i1 false, i1 false}
!675 = !{ptr @_ctl_diag_query._entry.368, !676, !"_entry", i1 false, i1 false}
!676 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2047, i32 3}
!677 = !{ptr @_ctl_diag_query._entry_ptr.369, !676, !"_entry_ptr", i1 false, i1 false}
!678 = !{ptr @_ctl_diag_query._entry.370, !679, !"_entry", i1 false, i1 false}
!679 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2056, i32 4}
!680 = !{ptr @_ctl_diag_query._entry_ptr.371, !679, !"_entry_ptr", i1 false, i1 false}
!681 = !{ptr @_ctl_diag_query._entry.372, !682, !"_entry", i1 false, i1 false}
!682 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2064, i32 4}
!683 = !{ptr @_ctl_diag_query._entry_ptr.373, !682, !"_entry_ptr", i1 false, i1 false}
!684 = !{ptr @.str.375, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2072, i32 3}
!686 = !{ptr @_ctl_diag_query._entry.374, !685, !"_entry", i1 false, i1 false}
!687 = !{ptr @_ctl_diag_query._entry_ptr.376, !685, !"_entry_ptr", i1 false, i1 false}
!688 = !{ptr @.str.378, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2103, i32 3}
!690 = !{ptr @_ctl_diag_query._entry.377, !689, !"_entry", i1 false, i1 false}
!691 = !{ptr @_ctl_diag_query._entry_ptr.379, !689, !"_entry_ptr", i1 false, i1 false}
!692 = !{ptr @.str.380, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2231, i32 3}
!694 = !{ptr @_ctl_diag_release._entry, !693, !"_entry", i1 false, i1 false}
!695 = !{ptr @_ctl_diag_release._entry_ptr, !693, !"_entry_ptr", i1 false, i1 false}
!696 = !{ptr @_ctl_diag_release._entry.381, !697, !"_entry", i1 false, i1 false}
!697 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2236, i32 2}
!698 = !{ptr @_ctl_diag_release._entry_ptr.382, !697, !"_entry_ptr", i1 false, i1 false}
!699 = !{ptr @_ctl_diag_release._entry.383, !700, !"_entry", i1 false, i1 false}
!700 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2241, i32 3}
!701 = !{ptr @_ctl_diag_release._entry_ptr.384, !700, !"_entry_ptr", i1 false, i1 false}
!702 = !{ptr @_ctl_diag_release._entry.385, !703, !"_entry", i1 false, i1 false}
!703 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2247, i32 3}
!704 = !{ptr @_ctl_diag_release._entry_ptr.386, !703, !"_entry_ptr", i1 false, i1 false}
!705 = !{ptr @_ctl_diag_release._entry.387, !706, !"_entry", i1 false, i1 false}
!706 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2254, i32 3}
!707 = !{ptr @_ctl_diag_release._entry_ptr.388, !706, !"_entry_ptr", i1 false, i1 false}
!708 = !{ptr @_ctl_diag_release._entry.389, !709, !"_entry", i1 false, i1 false}
!709 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2260, i32 3}
!710 = !{ptr @_ctl_diag_release._entry_ptr.390, !709, !"_entry_ptr", i1 false, i1 false}
!711 = !{ptr @.str.392, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2267, i32 3}
!713 = !{ptr @_ctl_diag_release._entry.391, !712, !"_entry", i1 false, i1 false}
!714 = !{ptr @_ctl_diag_release._entry_ptr.393, !712, !"_entry_ptr", i1 false, i1 false}
!715 = !{ptr @_ctl_diag_release._entry.394, !716, !"_entry", i1 false, i1 false}
!716 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2275, i32 3}
!717 = !{ptr @_ctl_diag_release._entry_ptr.395, !716, !"_entry_ptr", i1 false, i1 false}
!718 = !{ptr @.str.397, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2287, i32 3}
!720 = !{ptr @_ctl_diag_release._entry.396, !719, !"_entry", i1 false, i1 false}
!721 = !{ptr @_ctl_diag_release._entry_ptr.398, !719, !"_entry_ptr", i1 false, i1 false}
!722 = !{ptr @.str.399, !723, !"<string literal>", i1 false, i1 false}
!723 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2321, i32 3}
!724 = !{ptr @_ctl_diag_read_buffer._entry, !723, !"_entry", i1 false, i1 false}
!725 = !{ptr @_ctl_diag_read_buffer._entry_ptr, !723, !"_entry_ptr", i1 false, i1 false}
!726 = !{ptr @_ctl_diag_read_buffer._entry.400, !727, !"_entry", i1 false, i1 false}
!727 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2326, i32 2}
!728 = !{ptr @_ctl_diag_read_buffer._entry_ptr.401, !727, !"_entry_ptr", i1 false, i1 false}
!729 = !{ptr @_ctl_diag_read_buffer._entry.402, !730, !"_entry", i1 false, i1 false}
!730 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2331, i32 3}
!731 = !{ptr @_ctl_diag_read_buffer._entry_ptr.403, !730, !"_entry_ptr", i1 false, i1 false}
!732 = !{ptr @_ctl_diag_read_buffer._entry.404, !733, !"_entry", i1 false, i1 false}
!733 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2337, i32 3}
!734 = !{ptr @_ctl_diag_read_buffer._entry_ptr.405, !733, !"_entry_ptr", i1 false, i1 false}
!735 = !{ptr @_ctl_diag_read_buffer._entry.406, !736, !"_entry", i1 false, i1 false}
!736 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2343, i32 3}
!737 = !{ptr @_ctl_diag_read_buffer._entry_ptr.407, !736, !"_entry_ptr", i1 false, i1 false}
!738 = !{ptr @_ctl_diag_read_buffer._entry.408, !739, !"_entry", i1 false, i1 false}
!739 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2350, i32 3}
!740 = !{ptr @_ctl_diag_read_buffer._entry_ptr.409, !739, !"_entry_ptr", i1 false, i1 false}
!741 = !{ptr @.str.411, !742, !"<string literal>", i1 false, i1 false}
!742 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2358, i32 3}
!743 = !{ptr @_ctl_diag_read_buffer._entry.410, !742, !"_entry", i1 false, i1 false}
!744 = !{ptr @_ctl_diag_read_buffer._entry_ptr.412, !742, !"_entry_ptr", i1 false, i1 false}
!745 = !{ptr @.str.414, !746, !"<string literal>", i1 false, i1 false}
!746 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2367, i32 2}
!747 = !{ptr @_ctl_diag_read_buffer._entry.413, !746, !"_entry", i1 false, i1 false}
!748 = !{ptr @_ctl_diag_read_buffer._entry_ptr.415, !746, !"_entry_ptr", i1 false, i1 false}
!749 = !{ptr @.str.417, !750, !"<string literal>", i1 false, i1 false}
!750 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2381, i32 3}
!751 = !{ptr @_ctl_diag_read_buffer._entry.416, !750, !"_entry", i1 false, i1 false}
!752 = !{ptr @_ctl_diag_read_buffer._entry_ptr.418, !750, !"_entry_ptr", i1 false, i1 false}
!753 = !{ptr @.str.420, !754, !"<string literal>", i1 false, i1 false}
!754 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2389, i32 2}
!755 = !{ptr @_ctl_diag_read_buffer._entry.419, !754, !"_entry", i1 false, i1 false}
!756 = !{ptr @_ctl_diag_read_buffer._entry_ptr.421, !754, !"_entry_ptr", i1 false, i1 false}
!757 = !{ptr @.str.423, !758, !"<string literal>", i1 false, i1 false}
!758 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2394, i32 3}
!759 = !{ptr @_ctl_diag_read_buffer._entry.422, !758, !"_entry", i1 false, i1 false}
!760 = !{ptr @_ctl_diag_read_buffer._entry_ptr.424, !758, !"_entry_ptr", i1 false, i1 false}
!761 = !{ptr @_ctl_diag_read_buffer._entry.425, !762, !"_entry", i1 false, i1 false}
!762 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2403, i32 3}
!763 = !{ptr @_ctl_diag_read_buffer._entry_ptr.426, !762, !"_entry_ptr", i1 false, i1 false}
!764 = !{ptr @_ctl_diag_read_buffer._entry.427, !765, !"_entry", i1 false, i1 false}
!765 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2410, i32 3}
!766 = !{ptr @_ctl_diag_read_buffer._entry_ptr.428, !765, !"_entry_ptr", i1 false, i1 false}
!767 = !{ptr @_ctl_diag_read_buffer._entry.429, !768, !"_entry", i1 false, i1 false}
!768 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2439, i32 3}
!769 = !{ptr @_ctl_diag_read_buffer._entry_ptr.430, !768, !"_entry_ptr", i1 false, i1 false}
!770 = !{ptr @_ctl_diag_read_buffer._entry.431, !771, !"_entry", i1 false, i1 false}
!771 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2447, i32 3}
!772 = !{ptr @_ctl_diag_read_buffer._entry_ptr.432, !771, !"_entry_ptr", i1 false, i1 false}
!773 = !{ptr @_ctl_diag_read_buffer._entry.433, !774, !"_entry", i1 false, i1 false}
!774 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2460, i32 3}
!775 = !{ptr @_ctl_diag_read_buffer._entry_ptr.434, !774, !"_entry_ptr", i1 false, i1 false}
!776 = !{ptr @_ctl_diag_read_buffer._entry.435, !777, !"_entry", i1 false, i1 false}
!777 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2462, i32 3}
!778 = !{ptr @_ctl_diag_read_buffer._entry_ptr.436, !777, !"_entry_ptr", i1 false, i1 false}
!779 = !{ptr @.str.437, !780, !"<string literal>", i1 false, i1 false}
!780 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2494, i32 3}
!781 = !{ptr @.str.438, !780, !"<string literal>", i1 false, i1 false}
!782 = !{ptr @_ctl_addnl_diag_query._entry, !780, !"_entry", i1 false, i1 false}
!783 = !{ptr @_ctl_addnl_diag_query._entry_ptr, !780, !"_entry_ptr", i1 false, i1 false}
!784 = !{ptr @_ctl_addnl_diag_query._entry.439, !785, !"_entry", i1 false, i1 false}
!785 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2498, i32 2}
!786 = !{ptr @_ctl_addnl_diag_query._entry_ptr.440, !785, !"_entry_ptr", i1 false, i1 false}
!787 = !{ptr @.str.442, !788, !"<string literal>", i1 false, i1 false}
!788 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2500, i32 3}
!789 = !{ptr @_ctl_addnl_diag_query._entry.441, !788, !"_entry", i1 false, i1 false}
!790 = !{ptr @_ctl_addnl_diag_query._entry_ptr.443, !788, !"_entry_ptr", i1 false, i1 false}
!791 = !{ptr @_ctl_addnl_diag_query._entry.444, !792, !"_entry", i1 false, i1 false}
!792 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2506, i32 3}
!793 = !{ptr @_ctl_addnl_diag_query._entry_ptr.445, !792, !"_entry_ptr", i1 false, i1 false}
!794 = !{ptr @.str.447, !795, !"<string literal>", i1 false, i1 false}
!795 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2513, i32 3}
!796 = !{ptr @_ctl_addnl_diag_query._entry.446, !795, !"_entry", i1 false, i1 false}
!797 = !{ptr @_ctl_addnl_diag_query._entry_ptr.448, !795, !"_entry_ptr", i1 false, i1 false}
!798 = !{ptr @.str.450, !799, !"<string literal>", i1 false, i1 false}
!799 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2519, i32 3}
!800 = !{ptr @_ctl_addnl_diag_query._entry.449, !799, !"_entry", i1 false, i1 false}
!801 = !{ptr @_ctl_addnl_diag_query._entry_ptr.451, !799, !"_entry_ptr", i1 false, i1 false}
!802 = !{ptr @.str.453, !803, !"<string literal>", i1 false, i1 false}
!803 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 2526, i32 3}
!804 = !{ptr @_ctl_addnl_diag_query._entry.452, !803, !"_entry", i1 false, i1 false}
!805 = !{ptr @_ctl_addnl_diag_query._entry_ptr.454, !803, !"_entry_ptr", i1 false, i1 false}
!806 = !{ptr @.str.455, !807, !"<string literal>", i1 false, i1 false}
!807 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4114, i32 12}
!808 = !{ptr @gen2_ctl_dev, !809, !"gen2_ctl_dev", i1 false, i1 false}
!809 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4112, i32 26}
!810 = !{ptr @ctl_gen2_fops, !811, !"ctl_gen2_fops", i1 false, i1 false}
!811 = !{!"../drivers/scsi/mpt3sas/mpt3sas_ctl.c", i32 4096, i32 37}
!812 = !{!"sp"}
!813 = !{i32 1, !"wchar_size", i32 2}
!814 = !{i32 1, !"min_enum_size", i32 4}
!815 = !{i32 8, !"branch-target-enforcement", i32 0}
!816 = !{i32 8, !"sign-return-address", i32 0}
!817 = !{i32 8, !"sign-return-address-all", i32 0}
!818 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!819 = !{i32 7, !"uwtable", i32 1}
!820 = !{i32 7, !"frame-pointer", i32 2}
!821 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!822 = !{!"auto-init"}
!823 = !{i64 2148415669}
!824 = !{i64 2148330133, i64 2148330165, i64 2148330194, i64 2148330228, i64 2148330259, i64 2148330282}
!825 = !{!"branch_weights", i32 2000, i32 1}
!826 = !{i64 2149422117}
!827 = !{i8 0, i8 2}
!828 = !{i64 2153992619, i64 2153992644}
!829 = !{i64 6488174}
!830 = !{i64 6488371}
!831 = !{i64 2153973604}
!832 = !{i64 2153993300, i64 2153993325}
!833 = !{!"branch_weights", i32 1, i32 2000}
