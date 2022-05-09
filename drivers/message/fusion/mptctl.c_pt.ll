; ModuleID = '/llk/IR_all_yes/drivers/message/fusion/mptctl.c_pt.bc'
source_filename = "../drivers/message/fusion/mptctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mpt_pci_driver = type { ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct._MPT_ADAPTER = type { i32, i32, [32 x i8], ptr, [100 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i16, i32, i8, i16, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, %struct._SpiCfgData, %struct._RaidCfgData, %struct._SasCfgData, %struct._FcCfgData, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, [32 x i32], [64 x i16], %struct._MSG_IOC_FACTS_REPLY, [2 x %struct._MSG_PORT_FACTS_REPLY], [2 x %struct._CONFIG_PAGE_FC_PORT_0], %struct._CONFIG_PAGE_LAN_0, %struct._CONFIG_PAGE_LAN_1, i8, i32, i32, i8, i8, i8, [4 x i8], i8, i8, i8, %struct.list_head, ptr, %struct.list_head, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, i8, [20 x i8], %struct.mutex, i8, i8, ptr, i64, i16, %struct.list_head, %struct.mutex, i8, i8, i32, %struct._MPT_MGMT, %struct._MPT_MGMT, %struct._MPT_MGMT, %struct._MPT_MGMT, %struct._MPT_MGMT, %struct.spinlock, i32, i8, i8, i8, i8, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.work_struct, [2 x i8], %struct.spinlock, %struct.work_struct, [20 x i8], ptr, i32, i32, i32, ptr, %struct.spinlock, i64, i32, [20 x i8], ptr, %struct.delayed_work, i8, i8, i8 }
%struct._SpiCfgData = type { i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8] }
%struct._RaidCfgData = type { ptr, ptr, %struct.mutex, %struct.list_head }
%struct._SasCfgData = type { i8 }
%struct._FcCfgData = type { [2 x %struct.anon.92] }
%struct.anon.92 = type { ptr, i32, i32 }
%struct._MSG_IOC_FACTS_REPLY = type { i16, i8, i8, i16, i8, i8, i32, i16, i16, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32, i16, i8, i8, i32, i16, i8, i8, i32, i32, %union._MPI_FW_VERSION, i16, i16, %struct._SGE_SIMPLE_UNION, i32 }
%union._MPI_FW_VERSION = type { i32 }
%struct._SGE_SIMPLE_UNION = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct._U64 }
%struct._U64 = type { i32, i32 }
%struct._MSG_PORT_FACTS_REPLY = type { i16, i8, i8, i16, i8, i8, i32, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, i32 }
%struct._CONFIG_PAGE_FC_PORT_0 = type { %struct._CONFIG_PAGE_HEADER, i32, i8, i8, i8, i8, i32, %struct._U64, %struct._U64, i32, i32, i32, i32, %struct._U64, %struct._U64, i32, i32, i8, i8, i8, i8 }
%struct._CONFIG_PAGE_HEADER = type { i8, i8, i8, i8 }
%struct._CONFIG_PAGE_LAN_0 = type { %struct._CONFIG_PAGE_HEADER, i16, i16, i32 }
%struct._CONFIG_PAGE_LAN_1 = type { %struct._CONFIG_PAGE_HEADER, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._MPT_MGMT = type { %struct.mutex, %struct.completion, [128 x i8], [64 x i8], i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct._MSG_REQUEST_HEADER = type { [2 x i8], i8, i8, [3 x i8], i8, i32 }
%struct._MSG_DEFAULT_REPLY = type { [2 x i8], i8, i8, [3 x i8], i8, i32, [2 x i8], i16, i32 }
%struct._MSG_SCSI_IO_REPLY = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i16, i32, i32, i32, i32, i16, i16 }
%struct._MSG_SCSI_IO_REQUEST = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, [8 x i8], i32, [16 x i8], i32, i32, %struct._SGE_IO_UNION }
%struct._SGE_IO_UNION = type { %union.anon.85 }
%union.anon.85 = type { %struct._SGE_SIMPLE_UNION }
%struct._MSG_EVENT_NOTIFY_REPLY = type { i16, i8, i8, [2 x i8], i8, i8, i32, [2 x i8], i16, i32, i32, i32, [0 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.mpt_fw_xfer = type { i32, i32, ptr }
%struct.mpt_ioctl_command = type { %struct._mpt_ioctl_header, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [1 x i8] }
%struct._mpt_ioctl_header = type { i32, i32, i32 }
%struct.mpt_ioctl_diag_reset = type { %struct._mpt_ioctl_header }
%struct._hp_host_info = type { %struct._hp_header, i16, i16, i16, i16, i8, i8, i16, [16 x i8], [24 x i8], i32, i32, i32, i32, i32, i32, i32 }
%struct._hp_header = type { i32, i32, i32, i32, i32 }
%struct._x_config_parms = type { %union.anon.97, i32, i32, i16, i8, i8, i8 }
%union.anon.97 = type { ptr }
%struct._hp_target_info = type { %struct._hp_header, i32, i32, i32, i32, i32, i8, [7 x i8] }
%struct.mpt_ioctl_replace_fw = type { %struct._mpt_ioctl_header, i32, [1 x i8] }
%struct.mpt_ioctl_eventreport = type { %struct._mpt_ioctl_header, [1 x %struct._mpt_ioctl_events] }
%struct._mpt_ioctl_events = type { i32, i32, [2 x i32] }
%struct.mpt_ioctl_eventenable = type { %struct._mpt_ioctl_header, i32 }
%struct.mpt_ioctl_eventquery = type { %struct._mpt_ioctl_header, i16, i16, i32 }
%struct.mpt_ioctl_test = type { %struct._mpt_ioctl_header, [32 x i8], i32, [12 x i8] }
%struct.mpt_ioctl_targetinfo = type { %struct._mpt_ioctl_header, i32, [1 x i32] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mpt_ioctl_iocinfo = type { %struct._mpt_ioctl_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8], i8, i8, [2 x i8], %struct.mpt_ioctl_pci_info2 }
%struct.mpt_ioctl_pci_info2 = type { %union.anon.93, i32 }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct._VirtTarget = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct._VirtDevice = type { ptr, i8, i64 }
%struct._MSG_FW_DOWNLOAD = type { i8, i8, i8, i8, [3 x i8], i8, i32, %struct._SGE_MPI_UNION }
%struct._SGE_MPI_UNION = type { %union.anon.95 }
%union.anon.95 = type { %struct._SGE_TRANSACTION_UNION }
%struct._SGE_TRANSACTION_UNION = type { i8, i8, i8, i8, %union.anon.96, [1 x i32] }
%union.anon.96 = type { [4 x i32] }
%struct.buflist = type { ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct._mpt_sge = type { i32, i32 }
%struct._MSG_CONFIG = type { i8, i8, i8, i8, i16, i8, i8, i32, [8 x i8], %struct._CONFIG_PAGE_HEADER, i32, %struct._SGE_IO_UNION }
%struct._MSG_SCSI_TASK_MGMT = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, [8 x i8], [7 x i32], i32 }
%struct._MSG_IOC_INIT = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, [2 x i8], i32, i32, i32, %struct._SGE_SIMPLE_UNION, i16, i16 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct._MPI_FW_VERSION_STRUCT = type { i8, i8, i8, i8 }
%struct._CONFIG_PAGE_MANUFACTURING_0 = type { %struct._CONFIG_PAGE_HEADER, [16 x i8], [8 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct._MSG_TOOLBOX_ISTWI_READ_WRITE_REQUEST = type { i8, i8, i8, i8, i16, i8, i8, i32, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i32, %struct._SGE_SIMPLE_UNION }
%struct._CONFIG_PAGE_SCSI_DEVICE_0 = type { %struct._CONFIG_PAGE_HEADER, i32, i32 }
%struct._CONFIG_PAGE_SCSI_DEVICE_3 = type { %struct._CONFIG_PAGE_HEADER, i16, i16, i16, i16 }
%struct._MPT_SCSI_HOST = type { ptr, [255 x i16], ptr, i32, i16, %struct.list_head }

@__UNIQUE_ID_author287 = internal constant [30 x i8] c"mptctl.author=LSI Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [57 x i8] c"mptctl.description=Fusion MPT misc device (ioctl) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [42 x i8] c"mptctl.file=drivers/message/fusion/mptctl\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [19 x i8] c"mptctl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version291 = internal constant [23 x i8] c"mptctl.version=3.04.20\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mptctl\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3.04.20\00", [24 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_mptctl__306_2961_mptctl_init6 = internal global ptr @mptctl_init, section ".initcall6.init", align 4
@__exitcall_mptctl_exit = internal global ptr @mptctl_exit, section ".exitcall.exit", align 4
@mptctl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\016%s %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mptctl_init\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/message/fusion/mptctl.c\00", [32 x i8] zeroinitializer }, align 32
@mptctl_init._entry_ptr = internal global ptr @mptctl_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Fusion MPT misc device (ioctl) driver\00", [58 x i8] zeroinitializer }, align 32
@mptctl_driver = internal global { %struct.mpt_pci_driver, [24 x i8] } { %struct.mpt_pci_driver { ptr @mptctl_probe, ptr @mptctl_remove }, [24 x i8] zeroinitializer }, align 32
@mptctl_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 220, ptr @.str.1, ptr @mptctl_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@mptctl_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.5, i32 2896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013mptctl: Can't register misc device [minor=%d].\0A\00", [46 x i8] zeroinitializer }, align 32
@mptctl_init._entry_ptr.9 = internal global ptr @mptctl_init._entry.7, section ".printk_index", align 4
@mptctl_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 2899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016mptctl: Registered with Fusion MPT base driver\0A\00", [46 x i8] zeroinitializer }, align 32
@mptctl_init._entry_ptr.12 = internal global ptr @mptctl_init._entry.10, section ".printk_index", align 4
@mptctl_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 2901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016mptctl: /dev/%s @ (major,minor=%d,%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@mptctl_init._entry_ptr.15 = internal global ptr @mptctl_init._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mptctl_reply\00", [19 x i8] zeroinitializer }, align 32
@mptctl_id = internal global { i8, [31 x i8] } { i8 16, [31 x i8] zeroinitializer }, align 32
@mptctl_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 2910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013mptctl: ERROR: Failed to register with Fusion MPT base driver\0A\00", [63 x i8] zeroinitializer }, align 32
@mptctl_init._entry_ptr.19 = internal global ptr @mptctl_init._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mptctl_taskmgmt_reply\00", [42 x i8] zeroinitializer }, align 32
@mptctl_taskmgmt_id = internal global { i8, [31 x i8] } { i8 16, [31 x i8] zeroinitializer }, align 32
@mptctl_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 2919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mptctl_init._entry_ptr.22 = internal global ptr @mptctl_init._entry.21, section ".printk_index", align 4
@mptctl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ioc->ioctl_cmds.mutex\00", [41 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mptctl_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mptctl_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @mptctl_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mpctl_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mpctl_mutex, i64 52), ptr getelementptr (i8, ptr @mpctl_mutex, i64 52) }, ptr @mpctl_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mpctl_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mpctl_mutex\00", [20 x i8] zeroinitializer }, align 32
@__mptctl_ioctl._entry = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 632, ptr null, ptr null }, align 1
@.str.27 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013mptctl%s::mptctl_ioctl() @%d - Unable to copy mpt_ioctl_header data @ %p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__mptctl_ioctl\00", [17 x i8] zeroinitializer }, align 32
@__mptctl_ioctl._entry_ptr = internal global ptr @__mptctl_ioctl._entry, section ".printk_index", align 4
@__mptctl_ioctl._entry.29 = internal constant %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.5, i32 647, ptr null, ptr null }, align 1
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017mptctl%s::mptctl_ioctl() @%d - Controller disabled.\0A\00", [41 x i8] zeroinitializer }, align 32
@__mptctl_ioctl._entry_ptr.31 = internal global ptr @__mptctl_ioctl._entry.29, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mptctl_getiocinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013mptctl%s@%d::mpt_ioctl_iocinfo() - memdup_user returned error [%ld]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mptctl_getiocinfo\00", [46 x i8] zeroinitializer }, align 32
@mptctl_getiocinfo._entry_ptr = internal global ptr @mptctl_getiocinfo._entry, section ".printk_index", align 4
@mptctl_getiocinfo._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.5, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_getiocinfo - Structure size mismatch. Command not completed.\0A\00", [62 x i8] zeroinitializer }, align 32
@mptctl_getiocinfo._entry_ptr.39 = internal global ptr @mptctl_getiocinfo._entry.37, section ".printk_index", align 4
@mptctl_getiocinfo._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.5, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017mptctl: %s: mptctl_getiocinfo called.\0A\00", [55 x i8] zeroinitializer }, align 32
@mptctl_getiocinfo._entry_ptr.42 = internal global ptr @mptctl_getiocinfo._entry.40, section ".printk_index", align 4
@mptctl_getiocinfo._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.36, ptr @.str.5, i32 1345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_getiocinfo - Unable to write out mpt_ioctl_iocinfo struct @ %p\0A\00", [60 x i8] zeroinitializer }, align 32
@mptctl_getiocinfo._entry_ptr.46 = internal global ptr @mptctl_getiocinfo._entry.44, section ".printk_index", align 4
@mptctl_gettargetinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 1381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013mptctl%s@%d::mptctl_gettargetinfo - Unable to read in mpt_ioctl_targetinfo struct @ %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mptctl_gettargetinfo\00", [43 x i8] zeroinitializer }, align 32
@mptctl_gettargetinfo._entry_ptr = internal global ptr @mptctl_gettargetinfo._entry, section ".printk_index", align 4
@mptctl_gettargetinfo._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.5, i32 1386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017mptctl: %s: mptctl_gettargetinfo called.\0A\00", [52 x i8] zeroinitializer }, align 32
@mptctl_gettargetinfo._entry_ptr.51 = internal global ptr @mptctl_gettargetinfo._entry.49, section ".printk_index", align 4
@mptctl_gettargetinfo._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.5, i32 1392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_gettargetinfo() - no memory available!\0A\00", [52 x i8] zeroinitializer }, align 32
@mptctl_gettargetinfo._entry_ptr.54 = internal global ptr @mptctl_gettargetinfo._entry.52, section ".printk_index", align 4
@mptctl_gettargetinfo._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.5, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mptctl_gettargetinfo._entry_ptr.56 = internal global ptr @mptctl_gettargetinfo._entry.55, section ".printk_index", align 4
@mptctl_gettargetinfo._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.48, ptr @.str.5, i32 1446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_gettargetinfo - Unable to write out mpt_ioctl_targetinfo struct @ %p\0A\00", [54 x i8] zeroinitializer }, align 32
@mptctl_gettargetinfo._entry_ptr.59 = internal global ptr @mptctl_gettargetinfo._entry.57, section ".printk_index", align 4
@mptctl_gettargetinfo._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.48, ptr @.str.5, i32 1456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mptctl_gettargetinfo._entry_ptr.61 = internal global ptr @mptctl_gettargetinfo._entry.60, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mptctl_readtest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.5, i32 1483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013mptctl%s@%d::mptctl_readtest - Unable to read in mpt_ioctl_test struct @ %p\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mptctl_readtest\00", [16 x i8] zeroinitializer }, align 32
@mptctl_readtest._entry_ptr = internal global ptr @mptctl_readtest._entry, section ".printk_index", align 4
@mptctl_readtest._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.5, i32 1488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017mptctl: %s: mptctl_readtest called.\0A\00", [57 x i8] zeroinitializer }, align 32
@mptctl_readtest._entry_ptr.66 = internal global ptr @mptctl_readtest._entry.64, section ".printk_index", align 4
@mptctl_readtest._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.5, i32 1508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_readtest - Unable to write out mpt_ioctl_test struct @ %p\0A\00", [33 x i8] zeroinitializer }, align 32
@mptctl_readtest._entry_ptr.69 = internal global ptr @mptctl_readtest._entry.67, section ".printk_index", align 4
@mptctl_eventquery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.5, i32 1535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013mptctl%s@%d::mptctl_eventquery - Unable to read in mpt_ioctl_eventquery struct @ %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mptctl_eventquery\00", [46 x i8] zeroinitializer }, align 32
@mptctl_eventquery._entry_ptr = internal global ptr @mptctl_eventquery._entry, section ".printk_index", align 4
@mptctl_eventquery._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.5, i32 1540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017mptctl: %s: mptctl_eventquery called.\0A\00", [55 x i8] zeroinitializer }, align 32
@mptctl_eventquery._entry_ptr.74 = internal global ptr @mptctl_eventquery._entry.72, section ".printk_index", align 4
@mptctl_eventquery._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.5, i32 1549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_eventquery - Unable to write out mpt_ioctl_eventquery struct @ %p\0A\00", [57 x i8] zeroinitializer }, align 32
@mptctl_eventquery._entry_ptr.77 = internal global ptr @mptctl_eventquery._entry.75, section ".printk_index", align 4
@mptctl_eventenable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.5, i32 1565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013mptctl%s@%d::mptctl_eventenable - Unable to read in mpt_ioctl_eventenable struct @ %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mptctl_eventenable\00", [45 x i8] zeroinitializer }, align 32
@mptctl_eventenable._entry_ptr = internal global ptr @mptctl_eventenable._entry, section ".printk_index", align 4
@mptctl_eventenable._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.5, i32 1570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017mptctl: %s: mptctl_eventenable called.\0A\00", [54 x i8] zeroinitializer }, align 32
@mptctl_eventenable._entry_ptr.82 = internal global ptr @mptctl_eventenable._entry.80, section ".printk_index", align 4
@mptctl_eventenable._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.5, i32 1579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013mptctl: %s: ERROR - : ERROR - Insufficient memory to add adapter!\0A\00", [59 x i8] zeroinitializer }, align 32
@mptctl_eventenable._entry_ptr.85 = internal global ptr @mptctl_eventenable._entry.83, section ".printk_index", align 4
@mptctl_eventreport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.5, i32 1605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013mptctl%s@%d::mptctl_eventreport - Unable to read in mpt_ioctl_eventreport struct @ %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mptctl_eventreport\00", [45 x i8] zeroinitializer }, align 32
@mptctl_eventreport._entry_ptr = internal global ptr @mptctl_eventreport._entry, section ".printk_index", align 4
@mptctl_eventreport._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.5, i32 1610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017mptctl: %s: mptctl_eventreport called.\0A\00", [54 x i8] zeroinitializer }, align 32
@mptctl_eventreport._entry_ptr.90 = internal global ptr @mptctl_eventreport._entry.88, section ".printk_index", align 4
@mptctl_eventreport._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.5, i32 1633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_eventreport - Unable to write out mpt_ioctl_eventreport struct @ %p\0A\00", [55 x i8] zeroinitializer }, align 32
@mptctl_eventreport._entry_ptr.93 = internal global ptr @mptctl_eventreport._entry.91, section ".printk_index", align 4
@mptctl_replace_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.5, i32 1651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013mptctl%s@%d::mptctl_replace_fw - Unable to read in mpt_ioctl_replace_fw struct @ %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mptctl_replace_fw\00", [46 x i8] zeroinitializer }, align 32
@mptctl_replace_fw._entry_ptr = internal global ptr @mptctl_replace_fw._entry, section ".printk_index", align 4
@mptctl_replace_fw._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.5, i32 1656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017mptctl: %s: mptctl_replace_fw called.\0A\00", [55 x i8] zeroinitializer }, align 32
@mptctl_replace_fw._entry_ptr.98 = internal global ptr @mptctl_replace_fw._entry.96, section ".printk_index", align 4
@mptctl_replace_fw._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.5, i32 1677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_replace_fw - Unable to read in mpt_ioctl_replace_fw image @ %p\0A\00", [60 x i8] zeroinitializer }, align 32
@mptctl_replace_fw._entry_ptr.101 = internal global ptr @mptctl_replace_fw._entry.99, section ".printk_index", align 4
@mptctl_fw_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.5, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013mptctl%s@%d::_ioctl_fwdl - Unable to copy mpt_fw_xfer struct @ %p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mptctl_fw_download\00", [45 x i8] zeroinitializer }, align 32
@mptctl_fw_download._entry_ptr = internal global ptr @mptctl_fw_download._entry, section ".printk_index", align 4
@mptctl_do_fw_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.5, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017mptctl: %s: mptctl_do_fwdl called. mptctl_id = %xh.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mptctl_do_fw_download\00", [42 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr = internal global ptr @mptctl_do_fw_download._entry, section ".printk_index", align 4
@mptctl_do_fw_download._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.5, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017mptctl: %s: DbG: kfwdl.bufp  = %p\0A\00", [59 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr.108 = internal global ptr @mptctl_do_fw_download._entry.106, section ".printk_index", align 4
@mptctl_do_fw_download._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.5, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017mptctl: %s: DbG: kfwdl.fwlen = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr.111 = internal global ptr @mptctl_do_fw_download._entry.109, section ".printk_index", align 4
@mptctl_do_fw_download._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.105, ptr @.str.5, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017mptctl: %s: DbG: sgl buffer = %p, sgfrags = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr.114 = internal global ptr @mptctl_do_fw_download._entry.112, section ".printk_index", align 4
@mptctl_do_fw_download._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.105, ptr @.str.5, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013mptctl: %s: ERROR - %s@%d::_ioctl_fwdl - Unable to copy f/w buffer hunk#%d @ %p\0A\00", [45 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr.117 = internal global ptr @mptctl_do_fw_download._entry.115, section ".printk_index", align 4
@mptctl_do_fw_download._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.105, ptr @.str.5, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014mptctl: %s: WARNING - %s: failed\0A\00", [60 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr.120 = internal global ptr @mptctl_do_fw_download._entry.118, section ".printk_index", align 4
@mptctl_do_fw_download._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.105, ptr @.str.5, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014mptctl: %s: WARNING - FW download timeout, doorbell=0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr.123 = internal global ptr @mptctl_do_fw_download._entry.121, section ".printk_index", align 4
@mptctl_do_fw_download._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.105, ptr @.str.5, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr.125 = internal global ptr @mptctl_do_fw_download._entry.124, section ".printk_index", align 4
@mptctl_do_fw_download._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.105, ptr @.str.5, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016mptctl: %s: F/W update successful!\0A\00", [58 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr.128 = internal global ptr @mptctl_do_fw_download._entry.126, section ".printk_index", align 4
@mptctl_do_fw_download._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.105, ptr @.str.5, i32 966, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014mptctl: %s: WARNING - Hmmm...  F/W download not supported!?!\0A\00", [32 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr.131 = internal global ptr @mptctl_do_fw_download._entry.129, section ".printk_index", align 4
@mptctl_do_fw_download._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.105, ptr @.str.5, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014mptctl: %s: WARNING - (time to go bang on somebodies door)\0A\00", [34 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr.134 = internal global ptr @mptctl_do_fw_download._entry.132, section ".printk_index", align 4
@mptctl_do_fw_download._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.105, ptr @.str.5, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014mptctl: %s: WARNING - IOC_BUSY!\0A\00", [61 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr.137 = internal global ptr @mptctl_do_fw_download._entry.135, section ".printk_index", align 4
@mptctl_do_fw_download._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.105, ptr @.str.5, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014mptctl: %s: WARNING - (try again later?)\0A\00", [52 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr.140 = internal global ptr @mptctl_do_fw_download._entry.138, section ".printk_index", align 4
@mptctl_do_fw_download._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.105, ptr @.str.5, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014mptctl: %s: WARNING - ioctl_fwdl() returned [bad] status = %04xh\0A\00", [60 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr.143 = internal global ptr @mptctl_do_fw_download._entry.141, section ".printk_index", align 4
@mptctl_do_fw_download._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.105, ptr @.str.5, i32 977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014mptctl: %s: WARNING - (bad VooDoo)\0A\00", [58 x i8] zeroinitializer }, align 32
@mptctl_do_fw_download._entry_ptr.146 = internal global ptr @mptctl_do_fw_download._entry.144, section ".printk_index", align 4
@kbuf_alloc_2_sgl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.5, i32 1073, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014mptctl: %s: WARNING - -SG: No can do - not enough memory!   :-(\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kbuf_alloc_2_sgl\00", [47 x i8] zeroinitializer }, align 32
@kbuf_alloc_2_sgl._entry_ptr = internal global ptr @kbuf_alloc_2_sgl._entry, section ".printk_index", align 4
@kbuf_alloc_2_sgl._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.5, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014mptctl: %s: WARNING - -SG: (freeing %d frags)\0A\00", [47 x i8] zeroinitializer }, align 32
@kbuf_alloc_2_sgl._entry_ptr.151 = internal global ptr @kbuf_alloc_2_sgl._entry.149, section ".printk_index", align 4
@kbuf_alloc_2_sgl._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.148, ptr @.str.5, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014mptctl: %s: WARNING - -SG: No can do - Chain required!   :-(\0A\00", [32 x i8] zeroinitializer }, align 32
@kbuf_alloc_2_sgl._entry_ptr.154 = internal global ptr @kbuf_alloc_2_sgl._entry.152, section ".printk_index", align 4
@kbuf_alloc_2_sgl._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.148, ptr @.str.5, i32 1102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014mptctl: %s: WARNING - (freeing %d frags)\0A\00", [52 x i8] zeroinitializer }, align 32
@kbuf_alloc_2_sgl._entry_ptr.157 = internal global ptr @kbuf_alloc_2_sgl._entry.155, section ".printk_index", align 4
@kbuf_alloc_2_sgl._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.148, ptr @.str.5, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014mptctl: %s: WARNING - -SG: No can do - too many SG frags!   :-(\0A\00", [61 x i8] zeroinitializer }, align 32
@kbuf_alloc_2_sgl._entry_ptr.160 = internal global ptr @kbuf_alloc_2_sgl._entry.158, section ".printk_index", align 4
@kbuf_alloc_2_sgl._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.5, i32 1112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kbuf_alloc_2_sgl._entry_ptr.162 = internal global ptr @kbuf_alloc_2_sgl._entry.161, section ".printk_index", align 4
@kbuf_alloc_2_sgl._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.148, ptr @.str.5, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017mptctl: %s: -SG: kbuf_alloc_2_sgl() - %d SG frags generated!\0A\00", [32 x i8] zeroinitializer }, align 32
@kbuf_alloc_2_sgl._entry_ptr.165 = internal global ptr @kbuf_alloc_2_sgl._entry.163, section ".printk_index", align 4
@kbuf_alloc_2_sgl._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.148, ptr @.str.5, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017mptctl: %s: -SG: kbuf_alloc_2_sgl() - last (big) alloc_sz=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@kbuf_alloc_2_sgl._entry_ptr.168 = internal global ptr @kbuf_alloc_2_sgl._entry.166, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.169 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mptctl_timeout_expired._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.5, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017mptctl: %s: : %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mptctl_timeout_expired\00", [41 x i8] zeroinitializer }, align 32
@mptctl_timeout_expired._entry_ptr = internal global ptr @mptctl_timeout_expired._entry, section ".printk_index", align 4
@mpt_fwfault_debug = external dso_local local_unnamed_addr global i32, align 4
@mptctl_timeout_expired._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.172, ptr @.str.5, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017mptctl: %s: Calling Reset! \0A\00", [33 x i8] zeroinitializer }, align 32
@mptctl_timeout_expired._entry_ptr.175 = internal global ptr @mptctl_timeout_expired._entry.173, section ".printk_index", align 4
@mptctl_do_taskmgmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.5, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014mptctl: %s: WARNING - TaskMgmt, no msg frames!!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mptctl_do_taskmgmt\00", [45 x i8] zeroinitializer }, align 32
@mptctl_do_taskmgmt._entry_ptr = internal global ptr @mptctl_do_taskmgmt._entry, section ".printk_index", align 4
@mptctl_do_taskmgmt._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.177, ptr @.str.5, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017mptctl: %s: TaskMgmt request (mf=%p)\0A\00", [56 x i8] zeroinitializer }, align 32
@mptctl_do_taskmgmt._entry_ptr.180 = internal global ptr @mptctl_do_taskmgmt._entry.178, section ".printk_index", align 4
@mptctl_do_taskmgmt._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.177, ptr @.str.5, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017mptctl: %s: TaskMgmt type=%d timeout=%ld\0A\00", [52 x i8] zeroinitializer }, align 32
@mptctl_do_taskmgmt._entry_ptr.183 = internal global ptr @mptctl_do_taskmgmt._entry.181, section ".printk_index", align 4
@mptctl_do_taskmgmt._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.177, ptr @.str.5, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013mptctl: %s: ERROR - TaskMgmt send_handshake FAILED! (ioc %p, mf %p, rc=%d) \0A\00", [49 x i8] zeroinitializer }, align 32
@mptctl_do_taskmgmt._entry_ptr.186 = internal global ptr @mptctl_do_taskmgmt._entry.184, section ".printk_index", align 4
@mptctl_do_taskmgmt._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.177, ptr @.str.5, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017mptctl: %s: TaskMgmt failed\0A\00", [33 x i8] zeroinitializer }, align 32
@mptctl_do_taskmgmt._entry_ptr.189 = internal global ptr @mptctl_do_taskmgmt._entry.187, section ".printk_index", align 4
@mptctl_do_taskmgmt._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.177, ptr @.str.5, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mptctl_do_taskmgmt._entry_ptr.191 = internal global ptr @mptctl_do_taskmgmt._entry.190, section ".printk_index", align 4
@mptctl_do_taskmgmt._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.177, ptr @.str.5, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [141 x i8], [51 x i8] } { [141 x i8] c"\017mptctl: %s: TaskMgmt fw_channel = %d, fw_id = %d, task_type=0x%02X, iocstatus=0x%04X\0A\09loginfo=0x%08X, response_code=0x%02X, term_cmnds=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@mptctl_do_taskmgmt._entry_ptr.194 = internal global ptr @mptctl_do_taskmgmt._entry.192, section ".printk_index", align 4
@mptctl_do_taskmgmt._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.177, ptr @.str.5, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mptctl_do_taskmgmt._entry_ptr.196 = internal global ptr @mptctl_do_taskmgmt._entry.195, section ".printk_index", align 4
@kfree_sgl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.5, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017mptctl: %s: -SG: Free'd 1 SGL buf + %d kbufs!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kfree_sgl\00", [22 x i8] zeroinitializer }, align 32
@kfree_sgl._entry_ptr = internal global ptr @kfree_sgl._entry, section ".printk_index", align 4
@mptctl_mpt_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.200, ptr @.str.5, i32 1711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013mptctl%s@%d::mptctl_mpt_command - Unable to read in mpt_ioctl_command struct @ %p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mptctl_mpt_command\00", [45 x i8] zeroinitializer }, align 32
@mptctl_mpt_command._entry_ptr = internal global ptr @mptctl_mpt_command._entry, section ".printk_index", align 4
@mptctl_do_mpt_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.5, i32 1762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013mptctl%s@%d::mptctl_do_mpt_command - Busy with diagnostic reset\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mptctl_do_mpt_command\00", [42 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr = internal global ptr @mptctl_do_mpt_command._entry, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.202, ptr @.str.5, i32 1787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_do_mpt_command - Request frame too large (%d) maximum (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.205 = internal global ptr @mptctl_do_mpt_command._entry.203, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.202, ptr @.str.5, i32 1807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_do_mpt_command - Unable to read MF from mpt_ioctl_command struct @ %p\0A\00", [53 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.208 = internal global ptr @mptctl_do_mpt_command._entry.206, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.202, ptr @.str.5, i32 1819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017mptctl: %s: sending mpi function (0x%02X), req=%p\0A\00", [43 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.211 = internal global ptr @mptctl_do_mpt_command._entry.209, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.202, ptr @.str.5, i32 1836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017mptctl: %s: \09type=0x%02x ext_type=0x%02x number=0x%02x action=0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.214 = internal global ptr @mptctl_do_mpt_command._entry.212, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.202, ptr @.str.5, i32 1862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_do_mpt_command - Target ID out of bounds. \0A\00", [48 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.217 = internal global ptr @mptctl_do_mpt_command._entry.215, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.202, ptr @.str.5, i32 1870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_do_mpt_command - Target Bus out of bounds. \0A\00", [47 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.220 = internal global ptr @mptctl_do_mpt_command._entry.218, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.202, ptr @.str.5, i32 1925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_do_mpt_command - SCSI driver is not loaded. \0A\00", [46 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.223 = internal global ptr @mptctl_do_mpt_command._entry.221, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.202, ptr @.str.5, i32 1944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.225 = internal global ptr @mptctl_do_mpt_command._entry.224, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.202, ptr @.str.5, i32 2001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.227 = internal global ptr @mptctl_do_mpt_command._entry.226, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.202, ptr @.str.5, i32 2016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\017mptctl: %s: \09TaskType=0x%x MsgFlags=0x%x TaskMsgContext=0x%x id=%d channel=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.230 = internal global ptr @mptctl_do_mpt_command._entry.228, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.202, ptr @.str.5, i32 2043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_do_mpt_command - IOC_INIT issued with 1 or more incorrect parameters. Rejected.\0A\00", [43 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.233 = internal global ptr @mptctl_do_mpt_command._entry.231, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.202, ptr @.str.5, i32 2076, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_do_mpt_command - Illegal request (function 0x%x) \0A\00", [41 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.236 = internal global ptr @mptctl_do_mpt_command._entry.234, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.202, ptr @.str.5, i32 2132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_do_mpt_command - Unable to read user data struct @ %p\0A\00", [37 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.239 = internal global ptr @mptctl_do_mpt_command._entry.237, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.202, ptr @.str.5, i32 2185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013mptctl: %s: ERROR - send_handshake FAILED! (ioc %p, mf %p)\0A\00", [34 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.242 = internal global ptr @mptctl_do_mpt_command._entry.240, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.202, ptr @.str.5, i32 2204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013mptctl: %s: ERROR - %s: TIMED OUT!\0A\00", [58 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.245 = internal global ptr @mptctl_do_mpt_command._entry.243, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.202, ptr @.str.5, i32 2214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014mptctl: %s: WARNING - mpt cmd timeout, doorbell=0x%08x function=0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.248 = internal global ptr @mptctl_do_mpt_command._entry.246, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.202, ptr @.str.5, i32 2246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_do_mpt_command - Unable to write out reply frame %p\0A\00", [39 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.251 = internal global ptr @mptctl_do_mpt_command._entry.249, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.202, ptr @.str.5, i32 2263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_do_mpt_command - Unable to write sense data to user %p\0A\00", [36 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.254 = internal global ptr @mptctl_do_mpt_command._entry.252, section ".printk_index", align 4
@mptctl_do_mpt_command._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.202, ptr @.str.5, i32 2281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_do_mpt_command - Unable to write data to user %p\0A\00", [42 x i8] zeroinitializer }, align 32
@mptctl_do_mpt_command._entry_ptr.257 = internal global ptr @mptctl_do_mpt_command._entry.255, section ".printk_index", align 4
@mptctl_do_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.259, ptr @.str.5, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013mptctl%s@%d::mptctl_do_reset - Unable to copy mpt_ioctl_diag_reset struct @ %p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mptctl_do_reset\00", [16 x i8] zeroinitializer }, align 32
@mptctl_do_reset._entry_ptr = internal global ptr @mptctl_do_reset._entry, section ".printk_index", align 4
@mptctl_do_reset._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.259, ptr @.str.5, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017mptctl: %s: mptctl_do_reset called.\0A\00", [57 x i8] zeroinitializer }, align 32
@mptctl_do_reset._entry_ptr.262 = internal global ptr @mptctl_do_reset._entry.260, section ".printk_index", align 4
@mptctl_do_reset._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.259, ptr @.str.5, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_do_reset - reset failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@mptctl_do_reset._entry_ptr.265 = internal global ptr @mptctl_do_reset._entry.263, section ".printk_index", align 4
@mptctl_hp_hostinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.267, ptr @.str.5, i32 2352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013mptctl%s@%d::mptctl_hp_host_info - Unable to read in hp_host_info struct @ %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mptctl_hp_hostinfo\00", [45 x i8] zeroinitializer }, align 32
@mptctl_hp_hostinfo._entry_ptr = internal global ptr @mptctl_hp_hostinfo._entry, section ".printk_index", align 4
@mptctl_hp_hostinfo._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.267, ptr @.str.5, i32 2357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017mptctl: %s: : mptctl_hp_hostinfo called.\0A\00", [52 x i8] zeroinitializer }, align 32
@mptctl_hp_hostinfo._entry_ptr.270 = internal global ptr @mptctl_hp_hostinfo._entry.268, section ".printk_index", align 4
@.str.271 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%.2hhu.%.2hhu.%.2hhu.%.2hhu\00", [36 x i8] zeroinitializer }, align 32
@mptctl_hp_hostinfo._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.274, ptr @.str.267, ptr @.str.5, i32 2467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014mptctl: %s: WARNING - %s, no msg frames!!\0A\00", [51 x i8] zeroinitializer }, align 32
@mptctl_hp_hostinfo._entry_ptr.275 = internal global ptr @mptctl_hp_hostinfo._entry.273, section ".printk_index", align 4
@mptctl_hp_hostinfo._entry.276 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.267, ptr @.str.5, i32 2502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mptctl_hp_hostinfo._entry_ptr.277 = internal global ptr @mptctl_hp_hostinfo._entry.276, section ".printk_index", align 4
@mptctl_hp_hostinfo._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.267, ptr @.str.5, i32 2510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014mptctl: %s: WARNING - HOST INFO command timeout, doorbell=0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@mptctl_hp_hostinfo._entry_ptr.280 = internal global ptr @mptctl_hp_hostinfo._entry.278, section ".printk_index", align 4
@mptctl_hp_hostinfo._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.267, ptr @.str.5, i32 2541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_hpgethostinfo - Unable to write out hp_host_info @ %p\0A\00", [37 x i8] zeroinitializer }, align 32
@mptctl_hp_hostinfo._entry_ptr.283 = internal global ptr @mptctl_hp_hostinfo._entry.281, section ".printk_index", align 4
@mptctl_hp_targetinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.285, ptr @.str.5, i32 2577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013mptctl%s@%d::mptctl_hp_targetinfo - Unable to read in hp_host_targetinfo struct @ %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mptctl_hp_targetinfo\00", [43 x i8] zeroinitializer }, align 32
@mptctl_hp_targetinfo._entry_ptr = internal global ptr @mptctl_hp_targetinfo._entry, section ".printk_index", align 4
@mptctl_hp_targetinfo._entry.286 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.285, ptr @.str.5, i32 2584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017mptctl: %s: mptctl_hp_targetinfo called.\0A\00", [52 x i8] zeroinitializer }, align 32
@mptctl_hp_targetinfo._entry_ptr.288 = internal global ptr @mptctl_hp_targetinfo._entry.286, section ".printk_index", align 4
@mptctl_hp_targetinfo._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.290, ptr @.str.285, ptr @.str.5, i32 2689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\013mptctl: %s: ERROR - %s@%d::mptctl_hp_target_info - Unable to write out mpt_ioctl_targetinfo struct @ %p\0A\00", [53 x i8] zeroinitializer }, align 32
@mptctl_hp_targetinfo._entry_ptr.291 = internal global ptr @mptctl_hp_targetinfo._entry.289, section ".printk_index", align 4
@ioc_list = external dso_local global %struct.list_head, align 4
@async_queue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mptctl_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.16, ptr @.str.5, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017mptctl: %s: completing mpi function (0x%02X), req=%p, reply=%p\0A\00", [62 x i8] zeroinitializer }, align 32
@mptctl_reply._entry_ptr = internal global ptr @mptctl_reply._entry, section ".printk_index", align 4
@mptctl_reply._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.16, ptr @.str.5, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017mptctl: %s: iocstatus (0x%04X), loginfo (0x%08X)\0A\00", [44 x i8] zeroinitializer }, align 32
@mptctl_reply._entry_ptr.295 = internal global ptr @mptctl_reply._entry.293, section ".printk_index", align 4
@mptctl_reply._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.16, ptr @.str.5, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\017mptctl: %s: scsi_status (0x%02x), scsi_state (0x%02x), tag = (0x%04x), transfer_count (0x%08x)\0A\00", [62 x i8] zeroinitializer }, align 32
@mptctl_reply._entry_ptr.298 = internal global ptr @mptctl_reply._entry.296, section ".printk_index", align 4
@mptctl_taskmgmt_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.20, ptr @.str.5, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017mptctl: %s: TaskMgmt completed (mf=%p, mr=%p)\0A\00", [47 x i8] zeroinitializer }, align 32
@mptctl_taskmgmt_reply._entry_ptr = internal global ptr @mptctl_taskmgmt_reply._entry, section ".printk_index", align 4
@mptctl_ioc_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.301, ptr @.str.5, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017mptctl: %s: %s: MPT_IOC_SETUP_RESET\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mptctl_ioc_reset\00", [47 x i8] zeroinitializer }, align 32
@mptctl_ioc_reset._entry_ptr = internal global ptr @mptctl_ioc_reset._entry, section ".printk_index", align 4
@mptctl_ioc_reset._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.301, ptr @.str.5, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017mptctl: %s: %s: MPT_IOC_PRE_RESET\0A\00", [59 x i8] zeroinitializer }, align 32
@mptctl_ioc_reset._entry_ptr.304 = internal global ptr @mptctl_ioc_reset._entry.302, section ".printk_index", align 4
@mptctl_ioc_reset._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.301, ptr @.str.5, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017mptctl: %s: %s: MPT_IOC_POST_RESET\0A\00", [58 x i8] zeroinitializer }, align 32
@mptctl_ioc_reset._entry_ptr.307 = internal global ptr @mptctl_ioc_reset._entry.305, section ".printk_index", align 4
@mptctl_event_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.309, ptr @.str.5, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017mptctl: %s: %s() called\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mptctl_event_process\00", [43 x i8] zeroinitializer }, align 32
@mptctl_event_process._entry_ptr = internal global ptr @mptctl_event_process._entry, section ".printk_index", align 4
@mptctl_event_process._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.309, ptr @.str.5, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017mptctl: %s: Raised SIGIO to application\0A\00", [53 x i8] zeroinitializer }, align 32
@mptctl_event_process._entry_ptr.312 = internal global ptr @mptctl_event_process._entry.310, section ".printk_index", align 4
@mptctl_event_process._entry.313 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.309, ptr @.str.5, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mptctl_event_process._entry_ptr.314 = internal global ptr @mptctl_event_process._entry.313, section ".printk_index", align 4
@mptctl_event_process._entry.315 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.309, ptr @.str.5, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mptctl_event_process._entry_ptr.316 = internal global ptr @mptctl_event_process._entry.315, section ".printk_index", align 4
@mptctl_event_process._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.309, ptr @.str.5, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mptctl_event_process._entry_ptr.318 = internal global ptr @mptctl_event_process._entry.317, section ".printk_index", align 4
@mptctl_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.320, ptr @.str.5, i32 2943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016mptctl: Deregistered /dev/%s @ (major,minor=%d,%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mptctl_exit\00", [20 x i8] zeroinitializer }, align 32
@mptctl_exit._entry_ptr = internal global ptr @mptctl_exit._entry, section ".printk_index", align 4
@str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"@(#)mptlinux-3.04.20\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.321 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 22]
@__sancov_gen_cov_switch_values.322 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.323 = internal global [8 x i64] [i64 6, i64 32, i64 3222301974, i64 3222564114, i64 3222564117, i64 3222564121, i64 3223088407, i64 3225185555]
@__sancov_gen_cov_switch_values.324 = internal global [5 x i64] [i64 3, i64 32, i64 3222039823, i64 3222039832, i64 3224923412]
@__sancov_gen_cov_switch_values.325 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.326 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 256, i64 512]
@__sancov_gen_cov_switch_values.327 = internal global [20 x i64] [i64 18, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 9, i64 16, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 26, i64 27, i64 28]
@__sancov_gen_cov_switch_values.328 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.329 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 22]
@__sancov_gen_cov_switch_values.330 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 22]
@__sancov_gen_cov_switch_values.331 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 18432, i64 19200]
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 82, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2889, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [14 x i8] c"mptctl_driver\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2878, i32 30 }
@___asan_gen_.359 = private unnamed_addr constant [15 x i8] c"mptctl_miscdev\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2708, i32 26 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2896, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2899, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2900, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2908, i32 6 }
@___asan_gen_.383 = private unnamed_addr constant [10 x i8] c"mptctl_id\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 87, i32 11 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2910, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2917, i32 6 }
@___asan_gen_.395 = private unnamed_addr constant [19 x i8] c"mptctl_taskmgmt_id\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 88, i32 11 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2919, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2861, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 87, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [12 x i8] c"mptctl_fops\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2698, i32 37 }
@___asan_gen_.416 = private unnamed_addr constant [12 x i8] c"mpctl_mutex\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 86, i32 8 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 630, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 646, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 230, i32 6 }
@___asan_gen_.438 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 214, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 156, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1255, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1262, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1269, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1343, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1379, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1385, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1391, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1412, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1444, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1454, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1481, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1487, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1506, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1533, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1539, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1547, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1563, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1569, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1577, i32 4 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1603, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1609, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1631, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1649, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1655, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1675, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 754, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 806, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 808, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 810, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 882, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 907, i32 5 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 934, i32 3 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 940, i32 4 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 950, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 962, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 965, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 967, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 971, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 972, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 975, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 977, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1072, i32 5 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1074, i32 5 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1100, i32 4 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1102, i32 4 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1109, i32 4 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1111, i32 4 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1123, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1126, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.759, i32 326, i32 6 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 468, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 507, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 337, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 345, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 380, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 392, i32 4 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 407, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 419, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 426, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 443, i32 3 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1213, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1709, i32 3 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1761, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1785, i32 3 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1805, i32 3 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1818, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1831, i32 3 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1860, i32 5 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1868, i32 5 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1923, i32 4 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1942, i32 4 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 1999, i32 4 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2011, i32 3 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2041, i32 5 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2074, i32 3 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2128, i32 6 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2183, i32 5 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2203, i32 3 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2211, i32 4 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2243, i32 6 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2260, i32 5 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2278, i32 4 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 712, i32 3 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 718, i32 2 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 722, i32 3 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2350, i32 3 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2356, i32 2 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2381, i32 4 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2466, i32 3 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2502, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2508, i32 4 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2539, i32 3 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2575, i32 3 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2583, i32 2 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2687, i32 3 }
@___asan_gen_.1037 = private unnamed_addr constant [12 x i8] c"async_queue\00", align 1
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 142, i32 30 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 210, i32 2 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 231, i32 3 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 241, i32 4 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 291, i32 2 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 526, i32 3 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 530, i32 3 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 534, i32 3 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 557, i32 2 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 568, i32 3 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 570, i32 3 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 588, i32 3 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 590, i32 3 }
@___asan_gen_.1109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1116 = private constant [35 x i8] c"../drivers/message/fusion/mptctl.c\00", align 1
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1116, i32 2942, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.1119 = private unnamed_addr constant [8 x i8] c"str.321\00", align 1
@llvm.compiler.used = appending global [388 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__UNIQUE_ID_version291, ptr @__exitcall_mptctl_exit, ptr @__initcall__kmod_mptctl__306_2961_mptctl_init6, ptr @__modver_attr, ptr @__mptctl_ioctl._entry, ptr @__mptctl_ioctl._entry.29, ptr @__mptctl_ioctl._entry_ptr, ptr @__mptctl_ioctl._entry_ptr.31, ptr @kbuf_alloc_2_sgl._entry, ptr @kbuf_alloc_2_sgl._entry.149, ptr @kbuf_alloc_2_sgl._entry.152, ptr @kbuf_alloc_2_sgl._entry.155, ptr @kbuf_alloc_2_sgl._entry.158, ptr @kbuf_alloc_2_sgl._entry.161, ptr @kbuf_alloc_2_sgl._entry.163, ptr @kbuf_alloc_2_sgl._entry.166, ptr @kbuf_alloc_2_sgl._entry_ptr, ptr @kbuf_alloc_2_sgl._entry_ptr.151, ptr @kbuf_alloc_2_sgl._entry_ptr.154, ptr @kbuf_alloc_2_sgl._entry_ptr.157, ptr @kbuf_alloc_2_sgl._entry_ptr.160, ptr @kbuf_alloc_2_sgl._entry_ptr.162, ptr @kbuf_alloc_2_sgl._entry_ptr.165, ptr @kbuf_alloc_2_sgl._entry_ptr.168, ptr @kfree_sgl._entry, ptr @kfree_sgl._entry_ptr, ptr @mptctl_do_fw_download._entry, ptr @mptctl_do_fw_download._entry.106, ptr @mptctl_do_fw_download._entry.109, ptr @mptctl_do_fw_download._entry.112, ptr @mptctl_do_fw_download._entry.115, ptr @mptctl_do_fw_download._entry.118, ptr @mptctl_do_fw_download._entry.121, ptr @mptctl_do_fw_download._entry.124, ptr @mptctl_do_fw_download._entry.126, ptr @mptctl_do_fw_download._entry.129, ptr @mptctl_do_fw_download._entry.132, ptr @mptctl_do_fw_download._entry.135, ptr @mptctl_do_fw_download._entry.138, ptr @mptctl_do_fw_download._entry.141, ptr @mptctl_do_fw_download._entry.144, ptr @mptctl_do_fw_download._entry_ptr, ptr @mptctl_do_fw_download._entry_ptr.108, ptr @mptctl_do_fw_download._entry_ptr.111, ptr @mptctl_do_fw_download._entry_ptr.114, ptr @mptctl_do_fw_download._entry_ptr.117, ptr @mptctl_do_fw_download._entry_ptr.120, ptr @mptctl_do_fw_download._entry_ptr.123, ptr @mptctl_do_fw_download._entry_ptr.125, ptr @mptctl_do_fw_download._entry_ptr.128, ptr @mptctl_do_fw_download._entry_ptr.131, ptr @mptctl_do_fw_download._entry_ptr.134, ptr @mptctl_do_fw_download._entry_ptr.137, ptr @mptctl_do_fw_download._entry_ptr.140, ptr @mptctl_do_fw_download._entry_ptr.143, ptr @mptctl_do_fw_download._entry_ptr.146, ptr @mptctl_do_mpt_command._entry, ptr @mptctl_do_mpt_command._entry.203, ptr @mptctl_do_mpt_command._entry.206, ptr @mptctl_do_mpt_command._entry.209, ptr @mptctl_do_mpt_command._entry.212, ptr @mptctl_do_mpt_command._entry.215, ptr @mptctl_do_mpt_command._entry.218, ptr @mptctl_do_mpt_command._entry.221, ptr @mptctl_do_mpt_command._entry.224, ptr @mptctl_do_mpt_command._entry.226, ptr @mptctl_do_mpt_command._entry.228, ptr @mptctl_do_mpt_command._entry.231, ptr @mptctl_do_mpt_command._entry.234, ptr @mptctl_do_mpt_command._entry.237, ptr @mptctl_do_mpt_command._entry.240, ptr @mptctl_do_mpt_command._entry.243, ptr @mptctl_do_mpt_command._entry.246, ptr @mptctl_do_mpt_command._entry.249, ptr @mptctl_do_mpt_command._entry.252, ptr @mptctl_do_mpt_command._entry.255, ptr @mptctl_do_mpt_command._entry_ptr, ptr @mptctl_do_mpt_command._entry_ptr.205, ptr @mptctl_do_mpt_command._entry_ptr.208, ptr @mptctl_do_mpt_command._entry_ptr.211, ptr @mptctl_do_mpt_command._entry_ptr.214, ptr @mptctl_do_mpt_command._entry_ptr.217, ptr @mptctl_do_mpt_command._entry_ptr.220, ptr @mptctl_do_mpt_command._entry_ptr.223, ptr @mptctl_do_mpt_command._entry_ptr.225, ptr @mptctl_do_mpt_command._entry_ptr.227, ptr @mptctl_do_mpt_command._entry_ptr.230, ptr @mptctl_do_mpt_command._entry_ptr.233, ptr @mptctl_do_mpt_command._entry_ptr.236, ptr @mptctl_do_mpt_command._entry_ptr.239, ptr @mptctl_do_mpt_command._entry_ptr.242, ptr @mptctl_do_mpt_command._entry_ptr.245, ptr @mptctl_do_mpt_command._entry_ptr.248, ptr @mptctl_do_mpt_command._entry_ptr.251, ptr @mptctl_do_mpt_command._entry_ptr.254, ptr @mptctl_do_mpt_command._entry_ptr.257, ptr @mptctl_do_reset._entry, ptr @mptctl_do_reset._entry.260, ptr @mptctl_do_reset._entry.263, ptr @mptctl_do_reset._entry_ptr, ptr @mptctl_do_reset._entry_ptr.262, ptr @mptctl_do_reset._entry_ptr.265, ptr @mptctl_do_taskmgmt._entry, ptr @mptctl_do_taskmgmt._entry.178, ptr @mptctl_do_taskmgmt._entry.181, ptr @mptctl_do_taskmgmt._entry.184, ptr @mptctl_do_taskmgmt._entry.187, ptr @mptctl_do_taskmgmt._entry.190, ptr @mptctl_do_taskmgmt._entry.192, ptr @mptctl_do_taskmgmt._entry.195, ptr @mptctl_do_taskmgmt._entry_ptr, ptr @mptctl_do_taskmgmt._entry_ptr.180, ptr @mptctl_do_taskmgmt._entry_ptr.183, ptr @mptctl_do_taskmgmt._entry_ptr.186, ptr @mptctl_do_taskmgmt._entry_ptr.189, ptr @mptctl_do_taskmgmt._entry_ptr.191, ptr @mptctl_do_taskmgmt._entry_ptr.194, ptr @mptctl_do_taskmgmt._entry_ptr.196, ptr @mptctl_event_process._entry, ptr @mptctl_event_process._entry.310, ptr @mptctl_event_process._entry.313, ptr @mptctl_event_process._entry.315, ptr @mptctl_event_process._entry.317, ptr @mptctl_event_process._entry_ptr, ptr @mptctl_event_process._entry_ptr.312, ptr @mptctl_event_process._entry_ptr.314, ptr @mptctl_event_process._entry_ptr.316, ptr @mptctl_event_process._entry_ptr.318, ptr @mptctl_eventenable._entry, ptr @mptctl_eventenable._entry.80, ptr @mptctl_eventenable._entry.83, ptr @mptctl_eventenable._entry_ptr, ptr @mptctl_eventenable._entry_ptr.82, ptr @mptctl_eventenable._entry_ptr.85, ptr @mptctl_eventquery._entry, ptr @mptctl_eventquery._entry.72, ptr @mptctl_eventquery._entry.75, ptr @mptctl_eventquery._entry_ptr, ptr @mptctl_eventquery._entry_ptr.74, ptr @mptctl_eventquery._entry_ptr.77, ptr @mptctl_eventreport._entry, ptr @mptctl_eventreport._entry.88, ptr @mptctl_eventreport._entry.91, ptr @mptctl_eventreport._entry_ptr, ptr @mptctl_eventreport._entry_ptr.90, ptr @mptctl_eventreport._entry_ptr.93, ptr @mptctl_exit._entry, ptr @mptctl_exit._entry_ptr, ptr @mptctl_fw_download._entry, ptr @mptctl_fw_download._entry_ptr, ptr @mptctl_getiocinfo._entry, ptr @mptctl_getiocinfo._entry.37, ptr @mptctl_getiocinfo._entry.40, ptr @mptctl_getiocinfo._entry.44, ptr @mptctl_getiocinfo._entry_ptr, ptr @mptctl_getiocinfo._entry_ptr.39, ptr @mptctl_getiocinfo._entry_ptr.42, ptr @mptctl_getiocinfo._entry_ptr.46, ptr @mptctl_gettargetinfo._entry, ptr @mptctl_gettargetinfo._entry.49, ptr @mptctl_gettargetinfo._entry.52, ptr @mptctl_gettargetinfo._entry.55, ptr @mptctl_gettargetinfo._entry.57, ptr @mptctl_gettargetinfo._entry.60, ptr @mptctl_gettargetinfo._entry_ptr, ptr @mptctl_gettargetinfo._entry_ptr.51, ptr @mptctl_gettargetinfo._entry_ptr.54, ptr @mptctl_gettargetinfo._entry_ptr.56, ptr @mptctl_gettargetinfo._entry_ptr.59, ptr @mptctl_gettargetinfo._entry_ptr.61, ptr @mptctl_hp_hostinfo._entry, ptr @mptctl_hp_hostinfo._entry.268, ptr @mptctl_hp_hostinfo._entry.273, ptr @mptctl_hp_hostinfo._entry.276, ptr @mptctl_hp_hostinfo._entry.278, ptr @mptctl_hp_hostinfo._entry.281, ptr @mptctl_hp_hostinfo._entry_ptr, ptr @mptctl_hp_hostinfo._entry_ptr.270, ptr @mptctl_hp_hostinfo._entry_ptr.275, ptr @mptctl_hp_hostinfo._entry_ptr.277, ptr @mptctl_hp_hostinfo._entry_ptr.280, ptr @mptctl_hp_hostinfo._entry_ptr.283, ptr @mptctl_hp_targetinfo._entry, ptr @mptctl_hp_targetinfo._entry.286, ptr @mptctl_hp_targetinfo._entry.289, ptr @mptctl_hp_targetinfo._entry_ptr, ptr @mptctl_hp_targetinfo._entry_ptr.288, ptr @mptctl_hp_targetinfo._entry_ptr.291, ptr @mptctl_init._entry, ptr @mptctl_init._entry.10, ptr @mptctl_init._entry.13, ptr @mptctl_init._entry.17, ptr @mptctl_init._entry.21, ptr @mptctl_init._entry.7, ptr @mptctl_init._entry_ptr, ptr @mptctl_init._entry_ptr.12, ptr @mptctl_init._entry_ptr.15, ptr @mptctl_init._entry_ptr.19, ptr @mptctl_init._entry_ptr.22, ptr @mptctl_init._entry_ptr.9, ptr @mptctl_ioc_reset._entry, ptr @mptctl_ioc_reset._entry.302, ptr @mptctl_ioc_reset._entry.305, ptr @mptctl_ioc_reset._entry_ptr, ptr @mptctl_ioc_reset._entry_ptr.304, ptr @mptctl_ioc_reset._entry_ptr.307, ptr @mptctl_mpt_command._entry, ptr @mptctl_mpt_command._entry_ptr, ptr @mptctl_readtest._entry, ptr @mptctl_readtest._entry.64, ptr @mptctl_readtest._entry.67, ptr @mptctl_readtest._entry_ptr, ptr @mptctl_readtest._entry_ptr.66, ptr @mptctl_readtest._entry_ptr.69, ptr @mptctl_replace_fw._entry, ptr @mptctl_replace_fw._entry.96, ptr @mptctl_replace_fw._entry.99, ptr @mptctl_replace_fw._entry_ptr, ptr @mptctl_replace_fw._entry_ptr.101, ptr @mptctl_replace_fw._entry_ptr.98, ptr @mptctl_reply._entry, ptr @mptctl_reply._entry.293, ptr @mptctl_reply._entry.296, ptr @mptctl_reply._entry_ptr, ptr @mptctl_reply._entry_ptr.295, ptr @mptctl_reply._entry_ptr.298, ptr @mptctl_taskmgmt_reply._entry, ptr @mptctl_taskmgmt_reply._entry_ptr, ptr @mptctl_timeout_expired._entry, ptr @mptctl_timeout_expired._entry.173, ptr @mptctl_timeout_expired._entry_ptr, ptr @mptctl_timeout_expired._entry_ptr.175, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mptctl_driver, ptr @mptctl_miscdev, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @mptctl_id, ptr @.str.18, ptr @.str.20, ptr @mptctl_taskmgmt_id, ptr @mptctl_probe.__key, ptr @.str.23, ptr @init_completion.__key, ptr @.str.24, ptr @mptctl_fops, ptr @mpctl_mutex, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.58, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.164, ptr @.str.167, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.177, ptr @.str.179, ptr @.str.182, ptr @.str.185, ptr @.str.188, ptr @.str.193, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.204, ptr @.str.207, ptr @.str.210, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.229, ptr @.str.232, ptr @.str.235, ptr @.str.238, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.250, ptr @.str.253, ptr @.str.256, ptr @.str.258, ptr @.str.259, ptr @.str.261, ptr @.str.264, ptr @.str.266, ptr @.str.267, ptr @.str.269, ptr @.str.271, ptr @.str.274, ptr @.str.279, ptr @.str.282, ptr @.str.284, ptr @.str.285, ptr @.str.287, ptr @.str.290, ptr @async_queue, ptr @.str.292, ptr @.str.294, ptr @.str.297, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.303, ptr @.str.306, ptr @.str.308, ptr @.str.309, ptr @.str.311, ptr @.str.319, ptr @.str.320, ptr @str, ptr @str.321], section "llvm.metadata"
@0 = internal global [264 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_driver to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_id to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_taskmgmt_id to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpctl_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_getiocinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_getiocinfo._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_getiocinfo._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_getiocinfo._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_gettargetinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_gettargetinfo._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_gettargetinfo._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_gettargetinfo._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_gettargetinfo._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_gettargetinfo._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_readtest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_readtest._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_readtest._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_eventquery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_eventquery._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_eventquery._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_eventenable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_eventenable._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_eventenable._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_eventreport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_eventreport._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_eventreport._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_replace_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_replace_fw._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_replace_fw._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_fw_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_fw_download._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbuf_alloc_2_sgl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbuf_alloc_2_sgl._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbuf_alloc_2_sgl._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbuf_alloc_2_sgl._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbuf_alloc_2_sgl._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbuf_alloc_2_sgl._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbuf_alloc_2_sgl._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbuf_alloc_2_sgl._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_timeout_expired._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_timeout_expired._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_taskmgmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_taskmgmt._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_taskmgmt._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_taskmgmt._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_taskmgmt._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_taskmgmt._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_taskmgmt._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_taskmgmt._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfree_sgl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_mpt_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_mpt_command._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_reset._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_do_reset._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_hp_hostinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_hp_hostinfo._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_hp_hostinfo._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_hp_hostinfo._entry.276 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_hp_hostinfo._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_hp_hostinfo._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_hp_targetinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_hp_targetinfo._entry.286 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_hp_targetinfo._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_queue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_reply._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_reply._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_taskmgmt_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_ioc_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_ioc_reset._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_ioc_reset._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_event_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_event_process._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_event_process._entry.313 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_event_process._entry.315 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_event_process._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mptctl_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.321 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mptctl_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #17
  %call1 = tail call i32 @mpt_device_driver_register(ptr noundef nonnull @mptctl_driver, i8 noundef zeroext 1) #14
  %call2 = tail call i32 @misc_register(ptr noundef nonnull @mptctl_miscdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end5, label %do.end10

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef 220) #17
  br label %out_fail

do.end10:                                         ; preds = %entry
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #17
  %0 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @mptctl_miscdev, i32 0, i32 1), align 4
  %1 = load i32, ptr @mptctl_miscdev, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %0, i32 noundef 10, i32 noundef %1) #17
  %call18 = tail call zeroext i8 @mpt_register(ptr noundef nonnull @mptctl_reply, i32 noundef 1, ptr noundef nonnull @.str.16) #14
  store i8 %call18, ptr @mptctl_id, align 1
  %2 = add i8 %call18, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %2)
  %3 = icmp ult i8 %2, -15
  br i1 %3, label %do.end24, label %if.end27

do.end24:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #17
  tail call void @misc_deregister(ptr noundef nonnull @mptctl_miscdev) #14
  br label %out_fail

if.end27:                                         ; preds = %do.end10
  %call28 = tail call zeroext i8 @mpt_register(ptr noundef nonnull @mptctl_taskmgmt_reply, i32 noundef 1, ptr noundef nonnull @.str.20) #14
  store i8 %call28, ptr @mptctl_taskmgmt_id, align 1
  %4 = add i8 %call28, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %4)
  %5 = icmp ult i8 %4, -15
  br i1 %5, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #17
  %6 = load i8, ptr @mptctl_id, align 1
  tail call void @mpt_deregister(i8 noundef zeroext %6) #14
  tail call void @misc_deregister(ptr noundef nonnull @mptctl_miscdev) #14
  br label %out_fail

if.end40:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  %7 = load i8, ptr @mptctl_id, align 1
  %call41 = tail call i32 @mpt_reset_register(i8 noundef zeroext %7, ptr noundef nonnull @mptctl_ioc_reset) #14
  %8 = load i8, ptr @mptctl_id, align 1
  %call42 = tail call i32 @mpt_event_register(i8 noundef zeroext %8, ptr noundef nonnull @mptctl_event_process) #14
  br label %cleanup

out_fail:                                         ; preds = %do.end37, %do.end24, %do.end5
  %err.0 = phi i32 [ %call2, %do.end5 ], [ -16, %do.end24 ], [ -16, %do.end37 ]
  tail call void @mpt_device_driver_deregister(i8 noundef zeroext 1) #14
  br label %cleanup

cleanup:                                          ; preds = %out_fail, %if.end40
  %retval.0 = phi i32 [ %err.0, %out_fail ], [ 0, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mptctl_exit() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @misc_deregister(ptr noundef nonnull @mptctl_miscdev) #14
  %0 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @mptctl_miscdev, i32 0, i32 1), align 4
  %1 = load i32, ptr @mptctl_miscdev, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.319, ptr noundef %0, i32 noundef 10, i32 noundef %1) #17
  %2 = load i8, ptr @mptctl_id, align 1
  tail call void @mpt_event_deregister(i8 noundef zeroext %2) #14
  %3 = load i8, ptr @mptctl_id, align 1
  tail call void @mpt_reset_deregister(i8 noundef zeroext %3) #14
  %4 = load i8, ptr @mptctl_taskmgmt_id, align 1
  tail call void @mpt_deregister(i8 noundef zeroext %4) #14
  %5 = load i8, ptr @mptctl_id, align 1
  tail call void @mpt_deregister(i8 noundef zeroext %5) #14
  tail call void @mpt_device_driver_deregister(i8 noundef zeroext 1) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_device_driver_register(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mpt_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptctl_reply(ptr noundef %ioc, ptr noundef %req, ptr noundef %reply) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %req, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 10
  %0 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_level, align 4
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %Function = getelementptr inbounds %struct._MSG_REQUEST_HEADER, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %Function to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %Function, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.292, ptr noundef %name, i32 noundef %conv, ptr noundef nonnull %req, ptr noundef %reply) #17
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %msg_context = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 116, i32 6
  %4 = ptrtoint ptr %msg_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_context, align 4
  %MsgContext = getelementptr inbounds %struct._MSG_REQUEST_HEADER, ptr %req, i32 0, i32 5
  %6 = ptrtoint ptr %MsgContext to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %MsgContext, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.end10, label %do.end6.out_continuation_crit_edge

do.end6.out_continuation_crit_edge:               ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_continuation

if.end10:                                         ; preds = %do.end6
  %status = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 116, i32 4
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %status, align 4
  %10 = or i8 %9, 2
  store i8 %10, ptr %status, align 4
  %tobool14.not = icmp eq ptr %reply, null
  br i1 %tobool14.not, label %if.end10.out_crit_edge, label %if.end16

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end16:                                         ; preds = %if.end10
  %11 = or i8 %9, 3
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %status, align 4
  %reply_sz = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 30
  %13 = ptrtoint ptr %reply_sz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reply_sz, align 8
  %MsgLength = getelementptr inbounds %struct._MSG_DEFAULT_REPLY, ptr %reply, i32 0, i32 1
  %15 = ptrtoint ptr %MsgLength to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %MsgLength, align 2
  %conv23 = zext i8 %16 to i32
  %mul = shl nuw nsw i32 %conv23, 2
  %17 = tail call i32 @llvm.smin.i32(i32 %14, i32 %mul)
  %reply28 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 116, i32 2
  %18 = call ptr @memcpy(ptr %reply28, ptr %reply, i32 %17)
  %IOCStatus = getelementptr inbounds %struct._MSG_DEFAULT_REPLY, ptr %reply, i32 0, i32 7
  %19 = ptrtoint ptr %IOCStatus to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %IOCStatus, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool32.not = icmp eq i16 %20, 0
  br i1 %tobool32.not, label %lor.lhs.false, label %if.end16.do.body36_crit_edge

if.end16.do.body36_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body36

lor.lhs.false:                                    ; preds = %if.end16
  %IOCLogInfo = getelementptr inbounds %struct._MSG_DEFAULT_REPLY, ptr %reply, i32 0, i32 8
  %21 = ptrtoint ptr %IOCLogInfo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %IOCLogInfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool34.not = icmp eq i32 %22, 0
  br i1 %tobool34.not, label %lor.lhs.false.if.end56_crit_edge, label %lor.lhs.false.do.body36_crit_edge

lor.lhs.false.do.body36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body36

lor.lhs.false.if.end56_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

do.body36:                                        ; preds = %lor.lhs.false.do.body36_crit_edge, %if.end16.do.body36_crit_edge
  %23 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_level, align 4
  %and38 = and i32 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body36.if.end56_crit_edge, label %do.end43

do.body36.if.end56_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

do.end43:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #16
  %name45 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %20)
  %conv49 = zext i16 %25 to i32
  %IOCLogInfo51 = getelementptr inbounds %struct._MSG_DEFAULT_REPLY, ptr %reply, i32 0, i32 8
  %26 = ptrtoint ptr %IOCLogInfo51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %IOCLogInfo51, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, ptr noundef %name45, i32 noundef %conv49, i32 noundef %28) #17
  br label %if.end56

if.end56:                                         ; preds = %do.end43, %do.body36.if.end56_crit_edge, %lor.lhs.false.if.end56_crit_edge
  %Function58 = getelementptr inbounds %struct._MSG_REQUEST_HEADER, ptr %req, i32 0, i32 2
  %29 = ptrtoint ptr %Function58 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %Function58, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i8 %30, label %if.end56.out_crit_edge [
    i8 0, label %if.end56.if.then68_crit_edge
    i8 22, label %if.end56.if.then68_crit_edge212
  ]

if.end56.if.then68_crit_edge212:                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then68

if.end56.if.then68_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then68

if.end56.out_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then68:                                        ; preds = %if.end56.if.then68_crit_edge, %if.end56.if.then68_crit_edge212
  %SCSIStatus = getelementptr inbounds %struct._MSG_SCSI_IO_REPLY, ptr %reply, i32 0, i32 9
  %32 = ptrtoint ptr %SCSIStatus to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %SCSIStatus, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool71.not = icmp eq i8 %33, 0
  br i1 %tobool71.not, label %lor.lhs.false72, label %if.then68.do.body77_crit_edge

if.then68.do.body77_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body77

lor.lhs.false72:                                  ; preds = %if.then68
  %SCSIState = getelementptr inbounds %struct._MSG_SCSI_IO_REPLY, ptr %reply, i32 0, i32 10
  %34 = ptrtoint ptr %SCSIState to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %SCSIState, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool75.not = icmp eq i8 %35, 0
  br i1 %tobool75.not, label %lor.lhs.false72.if.end101_crit_edge, label %lor.lhs.false72.do.body77_crit_edge

lor.lhs.false72.do.body77_crit_edge:              ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body77

lor.lhs.false72.if.end101_crit_edge:              ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

do.body77:                                        ; preds = %lor.lhs.false72.do.body77_crit_edge, %if.then68.do.body77_crit_edge
  %36 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug_level, align 4
  %and79 = and i32 %37, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body77.if.end101_crit_edge, label %do.end84

do.body77.if.end101_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

do.end84:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #16
  %name86 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %conv90 = zext i8 %33 to i32
  %SCSIState92 = getelementptr inbounds %struct._MSG_SCSI_IO_REPLY, ptr %reply, i32 0, i32 10
  %38 = ptrtoint ptr %SCSIState92 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %SCSIState92, align 1
  %conv93 = zext i8 %39 to i32
  %TaskTag = getelementptr inbounds %struct._MSG_SCSI_IO_REPLY, ptr %reply, i32 0, i32 16
  %40 = ptrtoint ptr %TaskTag to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %TaskTag, align 4
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %conv95 = zext i16 %42 to i32
  %TransferCount = getelementptr inbounds %struct._MSG_SCSI_IO_REPLY, ptr %reply, i32 0, i32 13
  %43 = ptrtoint ptr %TransferCount to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %TransferCount, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.297, ptr noundef %name86, i32 noundef %conv90, i32 noundef %conv93, i32 noundef %conv95, i32 noundef %45) #17
  br label %if.end101

if.end101:                                        ; preds = %do.end84, %do.body77.if.end101_crit_edge, %lor.lhs.false72.if.end101_crit_edge
  %SCSIState103 = getelementptr inbounds %struct._MSG_SCSI_IO_REPLY, ptr %reply, i32 0, i32 10
  %46 = ptrtoint ptr %SCSIState103 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %SCSIState103, align 1
  %48 = and i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool106.not = icmp eq i8 %48, 0
  br i1 %tobool106.not, label %if.end101.out_crit_edge, label %if.then107

if.end101.out_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then107:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  %SenseBufferLength = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %req, i32 0, i32 5
  %49 = ptrtoint ptr %SenseBufferLength to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %SenseBufferLength, align 1
  %conv109 = zext i8 %50 to i32
  %51 = ptrtoint ptr %MsgContext to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %MsgContext, align 4
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %conv111 = zext i16 %53 to i32
  %sense_buf_pool = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 48
  %54 = ptrtoint ptr %sense_buf_pool to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sense_buf_pool, align 8
  %mul112 = shl nuw nsw i32 %conv111, 6
  %add.ptr = getelementptr i8, ptr %55, i32 %mul112
  %sense = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 116, i32 3
  %56 = call ptr @memcpy(ptr %sense, ptr %add.ptr, i32 %conv109)
  %57 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %status, align 4
  %59 = or i8 %58, 16
  store i8 %59, ptr %status, align 4
  br label %out

out:                                              ; preds = %if.then107, %if.end101.out_crit_edge, %if.end56.out_crit_edge, %if.end10.out_crit_edge
  %60 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %status, align 4
  %62 = and i8 %61, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool126.not = icmp eq i8 %62, 0
  br i1 %tobool126.not, label %out.out_continuation_crit_edge, label %if.then127

out.out_continuation_crit_edge:                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_continuation

if.then127:                                       ; preds = %out
  %Function129 = getelementptr inbounds %struct._MSG_REQUEST_HEADER, ptr %req, i32 0, i32 2
  %63 = ptrtoint ptr %Function129 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %Function129, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %64)
  %cmp131 = icmp eq i8 %64, 1
  br i1 %cmp131, label %if.then133, label %if.else

if.then133:                                       ; preds = %if.then127
  tail call void @mpt_clear_taskmgmt_in_progress_flag(ptr noundef %ioc) #14
  %65 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %status, align 4
  %67 = and i8 %66, -5
  store i8 %67, ptr %status, align 4
  %done = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 116, i32 1
  tail call void @complete(ptr noundef %done) #14
  %bus_type = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 15
  %68 = ptrtoint ptr %bus_type to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %69)
  %cmp141 = icmp eq i8 %69, 2
  br i1 %cmp141, label %if.then143, label %if.then133.out_continuation_crit_edge

if.then133.out_continuation_crit_edge:            ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_continuation

if.then143:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #16
  %schedule_target_reset = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 123
  %70 = ptrtoint ptr %schedule_target_reset to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %schedule_target_reset, align 4
  tail call void %71(ptr noundef %ioc) #14
  br label %out_continuation

if.else:                                          ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #16
  %and148 = and i8 %61, -5
  %72 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %and148, ptr %status, align 4
  %done151 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 116, i32 1
  tail call void @complete(ptr noundef %done151) #14
  br label %out_continuation

out_continuation:                                 ; preds = %if.else, %if.then143, %if.then133.out_continuation_crit_edge, %out.out_continuation_crit_edge, %do.end6.out_continuation_crit_edge
  %tobool154.not = icmp eq ptr %reply, null
  br i1 %tobool154.not, label %out_continuation.if.end160_crit_edge, label %land.lhs.true

out_continuation.if.end160_crit_edge:             ; preds = %out_continuation
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160

land.lhs.true:                                    ; preds = %out_continuation
  %MsgFlags = getelementptr inbounds %struct._MSG_DEFAULT_REPLY, ptr %reply, i32 0, i32 4
  %73 = ptrtoint ptr %MsgFlags to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %MsgFlags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %74)
  %tobool158.not = icmp sgt i8 %74, -1
  br i1 %tobool158.not, label %land.lhs.true.if.end160_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end160_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end160

if.end160:                                        ; preds = %land.lhs.true.if.end160_crit_edge, %out_continuation.if.end160_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end160, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end160 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptctl_taskmgmt_reply(ptr noundef %ioc, ptr noundef %mf, ptr noundef %mr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mf, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

do.body:                                          ; preds = %entry
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 10
  %0 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_level, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.299, ptr noundef %name, ptr noundef nonnull %mf, ptr noundef %mr) #17
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %status = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 115, i32 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 4
  %4 = or i8 %3, 2
  store i8 %4, ptr %status, align 4
  %tobool7.not = icmp eq ptr %mr, null
  br i1 %tobool7.not, label %do.end5.out_crit_edge, label %if.end9

do.end5.out_crit_edge:                            ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #16
  %5 = or i8 %3, 3
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %status, align 4
  %reply = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 115, i32 2
  %MsgLength = getelementptr inbounds %struct._MSG_DEFAULT_REPLY, ptr %mr, i32 0, i32 1
  %7 = ptrtoint ptr %MsgLength to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %MsgLength, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %8)
  %cmp = icmp ugt i8 %8, 32
  %conv17 = zext i8 %8 to i32
  %mul = shl nuw nsw i32 %conv17, 2
  %cond = select i1 %cmp, i32 128, i32 %mul
  %9 = call ptr @memcpy(ptr %reply, ptr %mr, i32 %cond)
  br label %out

out:                                              ; preds = %if.end9, %do.end5.out_crit_edge
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %status, align 4
  %12 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool24.not = icmp eq i8 %12, 0
  br i1 %tobool24.not, label %out.return_crit_edge, label %if.then25

out.return_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then25:                                        ; preds = %out
  tail call void @mpt_clear_taskmgmt_in_progress_flag(ptr noundef %ioc) #14
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %status, align 4
  %15 = and i8 %14, -5
  store i8 %15, ptr %status, align 4
  %done = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 115, i32 1
  tail call void @complete(ptr noundef %done) #14
  %bus_type = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 15
  %16 = ptrtoint ptr %bus_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp33 = icmp eq i8 %17, 2
  br i1 %cmp33, label %if.then35, label %if.then25.return_crit_edge

if.then25.return_crit_edge:                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then35:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  %schedule_target_reset = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 123
  %18 = ptrtoint ptr %schedule_target_reset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %schedule_target_reset, align 4
  tail call void %19(ptr noundef %ioc) #14
  br label %return

return:                                           ; preds = %if.then35, %if.then25.return_crit_edge, %out.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.then35 ], [ 1, %if.then25.return_crit_edge ], [ 0, %out.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_deregister(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_reset_register(i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptctl_ioc_reset(ptr noundef %ioc, i32 noundef %reset_phase) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reset_phase to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.322)
  switch i32 %reset_phase, label %entry.sw.epilog_crit_edge [
    i32 2, label %do.body
    i32 0, label %do.body4
    i32 1, label %do.body18
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 10
  %1 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %debug_level, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.sw.epilog_crit_edge, label %do.end

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.300, ptr noundef %name, ptr noundef nonnull @.str.301) #17
  br label %sw.epilog

do.body4:                                         ; preds = %entry
  %debug_level5 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 10
  %3 = ptrtoint ptr %debug_level5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_level5, align 4
  %and6 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body4.sw.epilog_crit_edge, label %do.end10

do.body4.sw.epilog_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.end10:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  %name12 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.303, ptr noundef %name12, ptr noundef nonnull @.str.301) #17
  br label %sw.epilog

do.body18:                                        ; preds = %entry
  %debug_level19 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 10
  %5 = ptrtoint ptr %debug_level19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_level19, align 4
  %and20 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body18.do.end30_crit_edge, label %do.end24

do.body18.do.end30_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #16
  %name26 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, ptr noundef %name26, ptr noundef nonnull @.str.301) #17
  br label %do.end30

do.end30:                                         ; preds = %do.end24, %do.body18.do.end30_crit_edge
  %status = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 116, i32 4
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status, align 4
  %9 = and i8 %8, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool32.not = icmp eq i8 %9, 0
  br i1 %tobool32.not, label %do.end30.sw.epilog_crit_edge, label %if.then33

do.end30.sw.epilog_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then33:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i8 %8, 8
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or, ptr %status, align 4
  %done = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 116, i32 1
  tail call void @complete(ptr noundef %done) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then33, %do.end30.sw.epilog_crit_edge, %do.end10, %do.body4.sw.epilog_crit_edge, %do.end, %do.body.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_event_register(i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptctl_event_process(ptr noundef %ioc, ptr nocapture noundef readonly %pEvReply) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %Event = getelementptr inbounds %struct._MSG_EVENT_NOTIFY_REPLY, ptr %pEvReply, i32 0, i32 10
  %0 = ptrtoint ptr %Event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %Event, align 4
  %2 = lshr i32 %1, 24
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 10
  %3 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_level, align 4
  %and1 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, ptr noundef %name, ptr noundef nonnull @.str.309) #17
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %5 = load ptr, ptr @async_queue, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %2)
  %cmp9 = icmp eq i32 %2, 33
  %aen_event_read_flag = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 84
  br i1 %cmp9, label %if.then11, label %if.end42

if.then11:                                        ; preds = %if.end7
  %6 = ptrtoint ptr %aen_event_read_flag to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %aen_event_read_flag, align 4
  %7 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_level, align 4
  %and14 = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then11.do.body27_crit_edge, label %do.end19

if.then11.do.body27_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body27

do.end19:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %name21 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.311, ptr noundef %name21) #17
  br label %do.body27

do.body27:                                        ; preds = %do.end19, %if.then11.do.body27_crit_edge
  %9 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_level, align 4
  %and29 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body27.cleanup.sink.split_crit_edge, label %do.body27.cleanup.sink.split.sink.split_crit_edge

do.body27.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.sink.split

do.body27.cleanup.sink.split_crit_edge:           ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end42:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %aen_event_read_flag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aen_event_read_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool44.not = icmp eq i32 %12, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  %events = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 69
  %13 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %events, align 8
  %tobool47.not = icmp eq ptr %14, null
  br i1 %tobool47.not, label %if.end46.cleanup_crit_edge, label %land.lhs.true

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end46
  %eventTypes = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 66
  %15 = ptrtoint ptr %eventTypes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %eventTypes, align 4
  %shl = shl nuw i32 1, %2
  %and49 = and i32 %16, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %land.lhs.true.cleanup_crit_edge, label %if.then51

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then51:                                        ; preds = %land.lhs.true
  %17 = ptrtoint ptr %aen_event_read_flag to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %aen_event_read_flag, align 4
  %18 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_level, align 4
  %and55 = and i32 %19, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then51.do.body68_crit_edge, label %do.end60

if.then51.do.body68_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body68

do.end60:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #16
  %name62 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.311, ptr noundef %name62) #17
  br label %do.body68

do.body68:                                        ; preds = %do.end60, %if.then51.do.body68_crit_edge
  %20 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_level, align 4
  %and70 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body68.cleanup.sink.split_crit_edge, label %do.body68.cleanup.sink.split.sink.split_crit_edge

do.body68.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.sink.split

do.body68.cleanup.sink.split_crit_edge:           ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %do.body68.cleanup.sink.split.sink.split_crit_edge, %do.body27.cleanup.sink.split.sink.split_crit_edge
  %name77 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.311, ptr noundef %name77) #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %do.body68.cleanup.sink.split_crit_edge, %do.body27.cleanup.sink.split_crit_edge
  tail call void @kill_fasync(ptr noundef nonnull @async_queue, i32 noundef 29, i32 noundef 1) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_device_driver_deregister(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptctl_probe(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ioctl_cmds = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 116
  tail call void @__mutex_init(ptr noundef %ioctl_cmds, ptr noundef nonnull @.str.23, ptr noundef nonnull @mptctl_probe.__key) #14
  %done = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 116, i32 1
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %1, i32 0, i32 116, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mptctl_remove(ptr nocapture noundef %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptctl_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %pa.i.i.i = alloca i32, align 4
  %sgl_dma.i.i = alloca i32, align 4
  %kfwdl.i = alloca %struct.mpt_fw_xfer, align 4
  %dma_addr_in.i.i = alloca i32, align 4
  %dma_addr_out.i.i = alloca i32, align 4
  %karg.i88 = alloca %struct.mpt_ioctl_command, align 4
  %krinfo.i = alloca %struct.mpt_ioctl_diag_reset, align 4
  %buf_dma.i = alloca i32, align 4
  %karg.i25 = alloca %struct._hp_host_info, align 4
  %cfg.i26 = alloca %struct._x_config_parms, align 4
  %hdr.i27 = alloca %struct._CONFIG_PAGE_HEADER, align 4
  %karg.i = alloca %struct._hp_target_info, align 4
  %page_dma.i = alloca i32, align 4
  %cfg.i = alloca %struct._x_config_parms, align 4
  %hdr.i = alloca %struct._CONFIG_PAGE_HEADER, align 4
  %karg.i271.i = alloca %struct.mpt_ioctl_replace_fw, align 4
  %karg.i229.i = alloca %struct.mpt_ioctl_eventreport, align 4
  %karg.i200.i = alloca %struct.mpt_ioctl_eventenable, align 4
  %karg.i173.i = alloca %struct.mpt_ioctl_eventquery, align 4
  %karg.i142.i = alloca %struct.mpt_ioctl_test, align 4
  %karg.i.i = alloca %struct.mpt_ioctl_targetinfo, align 4
  %khdr.i = alloca %struct._mpt_ioctl_header, align 4
  %iocp.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mpctl_mutex, i32 noundef 0) #14
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %khdr.i) #14
  %1 = ptrtoint ptr %khdr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %khdr.i, align 4, !annotation !538
  %2 = getelementptr inbounds %struct._mpt_ioctl_header, ptr %khdr.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !538
  %4 = getelementptr inbounds %struct._mpt_ioctl_header, ptr %khdr.i, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !538
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %7, 2048
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iocp.i) #14
  %8 = ptrtoint ptr %iocp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %iocp.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i, label %entry.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.if.then11.i.i.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 12, i32 -1226833920) #18, !srcloc !539
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !540

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %khdr.i, i32 noundef 12) #14
  %10 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !541
  %and.i.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %khdr.i, ptr noundef %0, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !540

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %entry.if.then11.i.i.i_crit_edge
  %res.0.i.i317.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %entry.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.0.i.i317.i
  %add.ptr.i.i.i = getelementptr i8, ptr %khdr.i, i32 %sub.i.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i317.i)
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.5, i32 noundef 632, ptr noundef %0) #17
  br label %__mptctl_ioctl.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %14 = ptrtoint ptr %khdr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %khdr.i, align 4
  %and3.i = and i32 %15, 255
  %call4.i = call i32 @mpt_verify_adapter(i32 noundef %and3.i, ptr noundef nonnull %iocp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.end.i.__mptctl_ioctl.exit_crit_edge, label %lor.lhs.false.i

if.end.i.__mptctl_ioctl.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__mptctl_ioctl.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %16 = ptrtoint ptr %iocp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iocp.i, align 4
  %cmp5.i = icmp eq ptr %17, null
  br i1 %cmp5.i, label %lor.lhs.false.i.__mptctl_ioctl.exit_crit_edge, label %if.end7.i

lor.lhs.false.i.__mptctl_ioctl.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__mptctl_ioctl.exit

if.end7.i:                                        ; preds = %lor.lhs.false.i
  %active.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not.i = icmp eq i32 %19, 0
  br i1 %tobool8.not.i, label %do.end12.i, label %if.end15.i

do.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5, i32 noundef 647) #17
  br label %__mptctl_ioctl.exit

if.end15.i:                                       ; preds = %if.end7.i
  %and16.i = and i32 %cmd, -1073676289
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073713903, i32 %and16.i)
  %cmp17.i = icmp eq i32 %and16.i, -1073713903
  br i1 %cmp17.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %if.end15.i
  %shr.i = lshr i32 %cmd, 16
  %and19.i = and i32 %shr.i, 16383
  %20 = add nsw i32 %and19.i, -84
  %21 = call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %22 = icmp ult i32 %21, 4
  br i1 %22, label %switch.lookup, label %if.then18.i.__mptctl_ioctl.exit_crit_edge

if.then18.i.__mptctl_ioctl.exit_crit_edge:        ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__mptctl_ioctl.exit

switch.lookup:                                    ; preds = %if.then18.i
  %switch.cast = trunc i32 %21 to i4
  %23 = sext i4 %switch.cast to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %switch.masked.not.not = icmp eq i4 %switch.cast, 1
  %switch.cast324 = trunc i32 %21 to i4
  %24 = sext i4 %switch.cast324 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %switch.masked327.not.not = icmp eq i4 %switch.cast324, 2
  %call.i.i = call ptr @memdup_user(ptr noundef %0, i32 noundef %and19.i) #14
  %cmp.i.i116.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i116.i, label %do.end.i.i, label %if.end18.i.i

do.end.i.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %call.i.i to i32
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.5, i32 noundef 1256, i32 noundef %25) #17
  br label %__mptctl_ioctl.exit

if.end18.i.i:                                     ; preds = %switch.lookup
  %maxDataSize.i.i = getelementptr inbounds %struct._mpt_ioctl_header, ptr %call.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %maxDataSize.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %maxDataSize.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %and19.i)
  %cmp19.not.i.i = icmp eq i32 %27, %and19.i
  br i1 %cmp19.not.i.i, label %do.body27.i.i, label %do.end23.i.i

do.end23.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call25.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name.i.i, ptr noundef nonnull @.str.5, i32 noundef 1264) #17
  call void @kfree(ptr noundef %call.i.i) #14
  br label %__mptctl_ioctl.exit

do.body27.i.i:                                    ; preds = %if.end18.i.i
  %debug_level.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 10
  %28 = ptrtoint ptr %debug_level.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug_level.i.i, align 4
  %and.i.i = and i32 %29, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body27.i.i.do.end38.i.i_crit_edge, label %do.end31.i.i

do.body27.i.i.do.end38.i.i_crit_edge:             ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end38.i.i

do.end31.i.i:                                     ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name33.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call35.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name33.i.i) #17
  br label %do.end38.i.i

do.end38.i.i:                                     ; preds = %do.end31.i.i, %do.body27.i.i.do.end38.i.i_crit_edge
  %bus_type.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 15
  %30 = ptrtoint ptr %bus_type.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bus_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %switch.selectcmp.i.i = icmp eq i8 %31, 0
  %switch.select.i.i = zext i1 %switch.selectcmp.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %switch.selectcmp248.i.i = icmp eq i8 %31, 2
  %switch.select249.i.i = select i1 %switch.selectcmp248.i.i, i32 3, i32 %switch.select.i.i
  %adapterType48.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %adapterType48.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %switch.select249.i.i, ptr %adapterType48.i.i, align 4
  %port54.i.i = getelementptr inbounds %struct._mpt_ioctl_header, ptr %call.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %port54.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port54.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp55.i.i = icmp ugt i32 %34, 1
  br i1 %cmp55.i.i, label %if.then57.i.i, label %if.end58.i.i

if.then57.i.i:                                    ; preds = %do.end38.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef %call.i.i) #14
  br label %__mptctl_ioctl.exit

if.end58.i.i:                                     ; preds = %do.end38.i.i
  %port61.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %port61.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %port61.i.i, align 4
  %pcidev.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 54
  %36 = ptrtoint ptr %pcidev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pcidev.i.i, align 8
  %device.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %device.i.i, align 2
  %conv62.i.i = zext i16 %39 to i32
  %pciId.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %pciId.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv62.i.i, ptr %pciId.i.i, align 4
  %revision.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 12
  %41 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %revision.i.i, align 4
  %conv63.i.i = zext i8 %42 to i32
  %hwRev.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %hwRev.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv63.i.i, ptr %hwRev.i.i, align 4
  %subsystem_device.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 10
  %44 = ptrtoint ptr %subsystem_device.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %subsystem_device.i.i, align 2
  %conv64.i.i = zext i16 %45 to i32
  %subSystemDevice.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %subSystemDevice.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv64.i.i, ptr %subSystemDevice.i.i, align 4
  %subsystem_vendor.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 9
  %47 = ptrtoint ptr %subsystem_vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %subsystem_vendor.i.i, align 4
  %conv65.i.i = zext i16 %48 to i32
  %subSystemVendor.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %subSystemVendor.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv65.i.i, ptr %subSystemVendor.i.i, align 4
  br i1 %switch.masked.not.not, label %if.then68.i.i, label %if.else86.i.i

if.then68.i.i:                                    ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %bus.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 1
  %50 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bus.i.i, align 8
  %number.i.i = getelementptr inbounds %struct.pci_bus, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %number.i.i, align 4
  %conv69.i.i = zext i8 %53 to i32
  %pciInfo.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 14
  %54 = ptrtoint ptr %pciInfo.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load.i.i = load i32, ptr %pciInfo.i.i, align 4
  %bf.clear.i.i = and i32 %bf.load.i.i, -16777216
  %bf.set.i.i = or i32 %bf.clear.i.i, %conv69.i.i
  store i32 %bf.set.i.i, ptr %pciInfo.i.i, align 4
  %devfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 6
  %55 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %devfn.i.i, align 4
  %57 = shl i32 %56, 24
  %bf.shl.i.i = and i32 %57, -134217728
  %bf.clear75.i.i = and i32 %bf.set.i.i, 117440767
  %bf.set76.i.i = or i32 %bf.shl.i.i, %bf.clear75.i.i
  store i32 %bf.set76.i.i, ptr %pciInfo.i.i, align 4
  %58 = load i32, ptr %devfn.i.i, align 4
  %and78.i.i = shl i32 %58, 24
  %bf.shl83.i.i = and i32 %and78.i.i, 117440512
  %bf.clear84.i.i = and i32 %bf.set76.i.i, -134217473
  %bf.set85.i.i = or i32 %bf.clear84.i.i, %bf.shl83.i.i
  store i32 %bf.set85.i.i, ptr %pciInfo.i.i, align 4
  br label %if.end122.i.i

if.else86.i.i:                                    ; preds = %if.end58.i.i
  br i1 %switch.masked327.not.not, label %if.then89.i.i, label %if.else86.i.i.if.end122.i.i_crit_edge

if.else86.i.i.if.end122.i.i_crit_edge:            ; preds = %if.else86.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end122.i.i

if.then89.i.i:                                    ; preds = %if.else86.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %bus90.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 1
  %59 = ptrtoint ptr %bus90.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus90.i.i, align 8
  %number91.i.i = getelementptr inbounds %struct.pci_bus, ptr %60, i32 0, i32 12
  %61 = ptrtoint ptr %number91.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %number91.i.i, align 4
  %conv92.i.i = zext i8 %62 to i32
  %pciInfo93.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 14
  %63 = ptrtoint ptr %pciInfo93.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.load95.i.i = load i32, ptr %pciInfo93.i.i, align 4
  %bf.clear97.i.i = and i32 %bf.load95.i.i, -16777216
  %bf.set98.i.i = or i32 %bf.clear97.i.i, %conv92.i.i
  store i32 %bf.set98.i.i, ptr %pciInfo93.i.i, align 4
  %devfn99.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 6
  %64 = ptrtoint ptr %devfn99.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %devfn99.i.i, align 4
  %66 = shl i32 %65, 24
  %bf.shl106.i.i = and i32 %66, -134217728
  %bf.clear107.i.i = and i32 %bf.set98.i.i, 117440767
  %bf.set108.i.i = or i32 %bf.shl106.i.i, %bf.clear107.i.i
  store i32 %bf.set108.i.i, ptr %pciInfo93.i.i, align 4
  %67 = load i32, ptr %devfn99.i.i, align 4
  %and110.i.i = shl i32 %67, 24
  %bf.shl115.i.i = and i32 %and110.i.i, 117440512
  %bf.clear116.i.i = and i32 %bf.set108.i.i, -134217473
  %bf.set117.i.i = or i32 %bf.clear116.i.i, %bf.shl115.i.i
  store i32 %bf.set117.i.i, ptr %pciInfo93.i.i, align 4
  %68 = load ptr, ptr %bus90.i.i, align 8
  %domain_nr.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %68, i32 0, i32 16
  %69 = ptrtoint ptr %domain_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %domain_nr.i.i.i, align 8
  %segmentID.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 14, i32 1
  %71 = ptrtoint ptr %segmentID.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %segmentID.i.i, align 4
  br label %if.end122.i.i

if.end122.i.i:                                    ; preds = %if.then89.i.i, %if.else86.i.i.if.end122.i.i_crit_edge, %if.then68.i.i
  %numDevices.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 7
  %72 = ptrtoint ptr %numDevices.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %numDevices.i.i, align 4
  %sh.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 58
  %73 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sh.i.i, align 8
  %tobool123.not.i.i = icmp eq ptr %74, null
  br i1 %tobool123.not.i.i, label %if.end122.i.i.if.end143.i.i_crit_edge, label %if.then124.i.i

if.end122.i.i.if.end143.i.i_crit_edge:            ; preds = %if.end122.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143.i.i

if.then124.i.i:                                   ; preds = %if.end122.i.i
  %call126.i.i = call ptr @__scsi_iterate_devices(ptr noundef nonnull %74, ptr noundef null) #14
  %tobool127.not246.i.i = icmp eq ptr %call126.i.i, null
  br i1 %tobool127.not246.i.i, label %if.then124.i.i.if.end143.i.i_crit_edge, label %if.then124.i.i.for.body.i.i_crit_edge

if.then124.i.i.for.body.i.i_crit_edge:            ; preds = %if.then124.i.i
  br label %for.body.i.i

if.then124.i.i.if.end143.i.i_crit_edge:           ; preds = %if.then124.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then124.i.i.for.body.i.i_crit_edge
  %sdev.0247.i.i = phi ptr [ %call142.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call126.i.i, %if.then124.i.i.for.body.i.i_crit_edge ]
  %hostdata.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0247.i.i, i32 0, i32 21
  %75 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hostdata.i.i, align 8
  %cmp128.i.i = icmp eq ptr %76, null
  br i1 %cmp128.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  %cmp130.i.i = icmp eq ptr %78, null
  br i1 %cmp130.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge, label %if.end133.i.i

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end133.i.i:                                    ; preds = %lor.lhs.false.i.i
  %tflags.i.i = getelementptr inbounds %struct._VirtTarget, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %tflags.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %tflags.i.i, align 4
  %81 = and i8 %80, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool137.not.i.i = icmp eq i8 %81, 0
  br i1 %tobool137.not.i.i, label %if.end139.i.i, label %if.end133.i.i.for.inc.i.i_crit_edge

if.end133.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end133.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end139.i.i:                                    ; preds = %if.end133.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %numDevices.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %numDevices.i.i, align 4
  %inc.i.i = add i32 %83, 1
  store i32 %inc.i.i, ptr %numDevices.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end139.i.i, %if.end133.i.i.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %84 = ptrtoint ptr %sh.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sh.i.i, align 8
  %call142.i.i = call ptr @__scsi_iterate_devices(ptr noundef %85, ptr noundef nonnull %sdev.0247.i.i) #14
  %tobool127.not.i.i = icmp eq ptr %call142.i.i, null
  br i1 %tobool127.not.i.i, label %for.inc.i.i.if.end143.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.if.end143.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143.i.i

if.end143.i.i:                                    ; preds = %for.inc.i.i.if.end143.i.i_crit_edge, %if.then124.i.i.if.end143.i.i_crit_edge, %if.end122.i.i.if.end143.i.i_crit_edge
  %FWVersion.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 77, i32 28
  %86 = ptrtoint ptr %FWVersion.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %FWVersion.i.i, align 8
  %FWVersion144.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 8
  %88 = ptrtoint ptr %FWVersion144.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %FWVersion144.i.i, align 4
  %biosVersion.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 65
  %89 = ptrtoint ptr %biosVersion.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %biosVersion.i.i, align 8
  %BIOSVersion.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 9
  %91 = ptrtoint ptr %BIOSVersion.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %BIOSVersion.i.i, align 4
  %driverVersion.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 10
  %92 = call ptr @memcpy(ptr %driverVersion.i.i, ptr @str, i32 31)
  %arrayidx.i.i = getelementptr %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 10, i32 31
  %93 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %arrayidx.i.i, align 1
  %busChangeEvent.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 11
  %94 = ptrtoint ptr %busChangeEvent.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %busChangeEvent.i.i, align 4
  %PortSCSIID.i.i = getelementptr %struct._MPT_ADAPTER, ptr %17, i32 0, i32 78, i32 %34, i32 13
  %95 = ptrtoint ptr %PortSCSIID.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %PortSCSIID.i.i, align 8
  %conv149.i.i = trunc i16 %96 to i8
  %hostId.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 12
  %97 = ptrtoint ptr %hostId.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv149.i.i, ptr %hostId.i.i, align 1
  %rsvd.i.i = getelementptr inbounds %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 13
  %arrayidx150.i.i = getelementptr %struct.mpt_ioctl_iocinfo, ptr %call.i.i, i32 0, i32 13, i32 1
  %98 = ptrtoint ptr %arrayidx150.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %arrayidx150.i.i, align 1
  %99 = ptrtoint ptr %rsvd.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %rsvd.i.i, align 2
  call void @__check_object_size(ptr noundef %call.i.i, i32 noundef %and19.i, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #14
  %call.i.i.i117.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i117.i, label %if.end143.i.i.copy_to_user.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.end143.i.i.copy_to_user.exit.i.i_crit_edge:    ; preds = %if.end143.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end143.i.i
  %100 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %and19.i, i32 -1226833920) #18, !srcloc !544
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then2.i.i.i.i, label %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge

if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge:   ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit.i.i

if.then2.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %call.i.i, i32 noundef %and19.i) #14
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %call.i.i, i32 noundef %and19.i) #14
  br label %copy_to_user.exit.i.i

copy_to_user.exit.i.i:                            ; preds = %if.then2.i.i.i.i, %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge, %if.end143.i.i.copy_to_user.exit.i.i_crit_edge
  %n.addr.0.i.i.i = phi i32 [ %and19.i, %if.end143.i.i.copy_to_user.exit.i.i_crit_edge ], [ %call.i12.i.i.i.i, %if.then2.i.i.i.i ], [ %and19.i, %if.end.i.i.i.i.copy_to_user.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i.i)
  %tobool154.not.i.i = icmp eq i32 %n.addr.0.i.i.i, 0
  br i1 %tobool154.not.i.i, label %if.end163.i.i, label %do.end158.i.i

do.end158.i.i:                                    ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name160.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call162.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name160.i.i, ptr noundef nonnull @.str.5, i32 noundef 1345, ptr noundef %0) #17
  call void @kfree(ptr noundef %call.i.i) #14
  br label %__mptctl_ioctl.exit

if.end163.i.i:                                    ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef %call.i.i) #14
  br label %__mptctl_ioctl.exit

if.else.i:                                        ; preds = %if.end15.i
  %101 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.323)
  switch i32 %cmd, label %if.end50.i [
    i32 -1072403182, label %if.then22.i
    i32 -1069781741, label %if.then26.i
    i32 -1072403179, label %if.then30.i
    i32 -1072665322, label %if.then34.i
    i32 -1071878889, label %if.then38.i
    i32 -1072403175, label %if.then42.i
  ]

if.then22.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %karg.i.i) #14
  %102 = getelementptr inbounds %struct._mpt_ioctl_header, ptr %karg.i.i, i32 0, i32 2
  %103 = getelementptr inbounds %struct.mpt_ioctl_targetinfo, ptr %karg.i.i, i32 0, i32 1
  %104 = call ptr @memset(ptr %karg.i.i, i32 255, i32 20)
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i.i119.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i119.i, label %if.then22.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then22.i.if.then11.i.i.i.i_crit_edge:          ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then22.i
  %105 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 20, i32 -1226833920) #18
  %asmresult.i.i.i120.i = extractvalue { i32, i32 } %105, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i120.i)
  %cmp.i6.i.i121.i = icmp eq i32 %asmresult.i.i.i120.i, 0
  br i1 %cmp.i6.i.i121.i, label %if.end.i.i.i123.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !540

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i

if.end.i.i.i123.i:                                ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i122.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg.i.i, i32 noundef 20) #14
  %106 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i.i.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 4
  %108 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #6, !srcloc !541
  %and.i.i.i.i.i.i = and i32 %108, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg.i.i, ptr noundef %0, i32 noundef 20) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %108) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %do.body2.i.i, label %if.end.i.i.i123.i.if.then11.i.i.i.i_crit_edge, !prof !540

if.end.i.i.i123.i.if.then11.i.i.i.i_crit_edge:    ; preds = %if.end.i.i.i123.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i123.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then22.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i164.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i123.i.if.then11.i.i.i.i_crit_edge ], [ 20, %if.then22.i.if.then11.i.i.i.i_crit_edge ], [ 20, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 20, %res.0.i.i164.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %karg.i.i, i32 %sub.i.i.i.i
  %109 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i164.i.i)
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.5, i32 noundef 1381, ptr noundef %0) #17
  br label %mptctl_gettargetinfo.exit.i

do.body2.i.i:                                     ; preds = %if.end.i.i.i123.i
  %debug_level.i124.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 10
  %110 = ptrtoint ptr %debug_level.i124.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %debug_level.i124.i, align 4
  %and.i125.i = and i32 %111, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125.i)
  %tobool3.not.i.i = icmp eq i32 %and.i125.i, 0
  br i1 %tobool3.not.i.i, label %do.body2.i.i.do.end12.i.i_crit_edge, label %do.end7.i.i

do.body2.i.i.do.end12.i.i_crit_edge:              ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i.i

do.end7.i.i:                                      ; preds = %do.body2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i126.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name.i126.i) #17
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %do.end7.i.i, %do.body2.i.i.do.end12.i.i_crit_edge
  %112 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %102, align 4
  %sub.i.i = add i32 %113, -12
  %div133.i.i = lshr i32 %sub.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp.i.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp.i.i, label %do.end16.i.i, label %if.end8.i.i161.i.i

do.end16.i.i:                                     ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name18.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name18.i.i, ptr noundef nonnull @.str.5, i32 noundef 1392) #17
  br label %mptctl_gettargetinfo.exit.i

if.end8.i.i161.i.i:                               ; preds = %do.end12.i.i
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %sub.i.i, i32 noundef 3520) #19
  %tobool23.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool23.not.i.i, label %do.end27.i.i, label %if.end32.i.i

do.end27.i.i:                                     ; preds = %if.end8.i.i161.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name29.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call31.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name29.i.i, ptr noundef nonnull @.str.5, i32 noundef 1413) #17
  br label %mptctl_gettargetinfo.exit.i

if.end32.i.i:                                     ; preds = %if.end8.i.i161.i.i
  %sh.i127.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 58
  %114 = ptrtoint ptr %sh.i127.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sh.i127.i, align 8
  %tobool33.not.i.i = icmp eq ptr %115, null
  br i1 %tobool33.not.i.i, label %if.end32.i.i.if.end8.i.i137.i.i_crit_edge, label %if.then34.i.i

if.end32.i.i.if.end8.i.i137.i.i_crit_edge:        ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i137.i.i

if.then34.i.i:                                    ; preds = %if.end32.i.i
  %call36.i.i = call ptr @__scsi_iterate_devices(ptr noundef nonnull %115, ptr noundef null) #14
  %tobool37.not176.i.i = icmp eq ptr %call36.i.i, null
  br i1 %tobool37.not176.i.i, label %if.then34.i.i.if.end8.i.i137.i.i_crit_edge, label %if.then34.i.i.for.body.i128.i_crit_edge

if.then34.i.i.for.body.i128.i_crit_edge:          ; preds = %if.then34.i.i
  br label %for.body.i128.i

if.then34.i.i.if.end8.i.i137.i.i_crit_edge:       ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i137.i.i

for.body.i128.i:                                  ; preds = %for.inc.i133.i.for.body.i128.i_crit_edge, %if.then34.i.i.for.body.i128.i_crit_edge
  %pdata.0181.i.i = phi ptr [ %pdata.1.i.i, %for.inc.i133.i.for.body.i128.i_crit_edge ], [ %call9.i.i.i.i, %if.then34.i.i.for.body.i128.i_crit_edge ]
  %numDevices.0180.i.i = phi i32 [ %numDevices.1.i.i, %for.inc.i133.i.for.body.i128.i_crit_edge ], [ 0, %if.then34.i.i.for.body.i128.i_crit_edge ]
  %sdev.0178.i.i = phi ptr [ %call64.i.i, %for.inc.i133.i.for.body.i128.i_crit_edge ], [ %call36.i.i, %if.then34.i.i.for.body.i128.i_crit_edge ]
  %maxWordsLeft.0177.i.i = phi i32 [ %maxWordsLeft.1.i.i, %for.inc.i133.i.for.body.i128.i_crit_edge ], [ %div133.i.i, %if.then34.i.i.for.body.i128.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxWordsLeft.0177.i.i)
  %tobool38.not.i.i = icmp eq i32 %maxWordsLeft.0177.i.i, 0
  br i1 %tobool38.not.i.i, label %for.body.i128.i.for.inc.i133.i_crit_edge, label %if.end40.i.i

for.body.i128.i.for.inc.i133.i_crit_edge:         ; preds = %for.body.i128.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i133.i

if.end40.i.i:                                     ; preds = %for.body.i128.i
  %hostdata.i129.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.0178.i.i, i32 0, i32 21
  %116 = ptrtoint ptr %hostdata.i129.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hostdata.i129.i, align 8
  %cmp41.i.i = icmp eq ptr %117, null
  br i1 %cmp41.i.i, label %if.end40.i.i.for.inc.i133.i_crit_edge, label %lor.lhs.false.i130.i

if.end40.i.i.for.inc.i133.i_crit_edge:            ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i133.i

lor.lhs.false.i130.i:                             ; preds = %if.end40.i.i
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 8
  %cmp42.i.i = icmp eq ptr %119, null
  br i1 %cmp42.i.i, label %lor.lhs.false.i130.i.for.inc.i133.i_crit_edge, label %if.end44.i.i

lor.lhs.false.i130.i.for.inc.i133.i_crit_edge:    ; preds = %lor.lhs.false.i130.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i133.i

if.end44.i.i:                                     ; preds = %lor.lhs.false.i130.i
  %tflags.i131.i = getelementptr inbounds %struct._VirtTarget, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %tflags.i131.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %tflags.i131.i, align 4
  %122 = and i8 %121, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool47.not.i.i = icmp eq i8 %122, 0
  br i1 %tobool47.not.i.i, label %if.end49.i.i, label %if.end44.i.i.for.inc.i133.i_crit_edge

if.end44.i.i.for.inc.i133.i_crit_edge:            ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i133.i

if.end49.i.i:                                     ; preds = %if.end44.i.i
  %raidVolume.i.i = getelementptr inbounds %struct._VirtTarget, ptr %119, i32 0, i32 9
  %123 = ptrtoint ptr %raidVolume.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %raidVolume.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool52.not.i.i = icmp eq i8 %124, 0
  br i1 %tobool52.not.i.i, label %cond.false.i.i, label %if.end49.i.i.cond.end.i.i_crit_edge

if.end49.i.i.cond.end.i.i_crit_edge:              ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %lun53.i.i = getelementptr inbounds %struct._VirtDevice, ptr %117, i32 0, i32 2
  %125 = ptrtoint ptr %lun53.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %lun53.i.i, align 8
  %extract.t.i.i = trunc i64 %126 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end49.i.i.cond.end.i.i_crit_edge
  %cond.off0.i.i = phi i32 [ %extract.t.i.i, %cond.false.i.i ], [ 128, %if.end49.i.i.cond.end.i.i_crit_edge ]
  %conv56.i.i = shl i32 %cond.off0.i.i, 16
  %shl.i.i = and i32 %conv56.i.i, 16711680
  %channel.i.i = getelementptr inbounds %struct._VirtTarget, ptr %119, i32 0, i32 4
  %127 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %channel.i.i, align 1
  %conv58.i.i = zext i8 %128 to i32
  %shl59.i.i = shl nuw nsw i32 %conv58.i.i, 8
  %add.i.i = or i32 %shl59.i.i, %shl.i.i
  %id.i.i = getelementptr inbounds %struct._VirtTarget, ptr %119, i32 0, i32 3
  %129 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %id.i.i, align 2
  %conv61.i.i = zext i8 %130 to i32
  %add62.i.i = or i32 %add.i.i, %conv61.i.i
  %131 = ptrtoint ptr %pdata.0181.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %add62.i.i, ptr %pdata.0181.i.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %pdata.0181.i.i, i32 1
  %inc.i132.i = add i32 %numDevices.0180.i.i, 1
  %dec.i.i = add i32 %maxWordsLeft.0177.i.i, -1
  br label %for.inc.i133.i

for.inc.i133.i:                                   ; preds = %cond.end.i.i, %if.end44.i.i.for.inc.i133.i_crit_edge, %lor.lhs.false.i130.i.for.inc.i133.i_crit_edge, %if.end40.i.i.for.inc.i133.i_crit_edge, %for.body.i128.i.for.inc.i133.i_crit_edge
  %maxWordsLeft.1.i.i = phi i32 [ %maxWordsLeft.0177.i.i, %if.end40.i.i.for.inc.i133.i_crit_edge ], [ %maxWordsLeft.0177.i.i, %lor.lhs.false.i130.i.for.inc.i133.i_crit_edge ], [ %maxWordsLeft.0177.i.i, %if.end44.i.i.for.inc.i133.i_crit_edge ], [ %dec.i.i, %cond.end.i.i ], [ 0, %for.body.i128.i.for.inc.i133.i_crit_edge ]
  %numDevices.1.i.i = phi i32 [ %numDevices.0180.i.i, %if.end40.i.i.for.inc.i133.i_crit_edge ], [ %numDevices.0180.i.i, %lor.lhs.false.i130.i.for.inc.i133.i_crit_edge ], [ %numDevices.0180.i.i, %if.end44.i.i.for.inc.i133.i_crit_edge ], [ %inc.i132.i, %cond.end.i.i ], [ %numDevices.0180.i.i, %for.body.i128.i.for.inc.i133.i_crit_edge ]
  %pdata.1.i.i = phi ptr [ %pdata.0181.i.i, %if.end40.i.i.for.inc.i133.i_crit_edge ], [ %pdata.0181.i.i, %lor.lhs.false.i130.i.for.inc.i133.i_crit_edge ], [ %pdata.0181.i.i, %if.end44.i.i.for.inc.i133.i_crit_edge ], [ %incdec.ptr.i.i, %cond.end.i.i ], [ %pdata.0181.i.i, %for.body.i128.i.for.inc.i133.i_crit_edge ]
  %132 = ptrtoint ptr %sh.i127.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %sh.i127.i, align 8
  %call64.i.i = call ptr @__scsi_iterate_devices(ptr noundef %133, ptr noundef nonnull %sdev.0178.i.i) #14
  %tobool37.not.i.i = icmp eq ptr %call64.i.i, null
  br i1 %tobool37.not.i.i, label %for.inc.i133.i.if.end8.i.i137.i.i_crit_edge, label %for.inc.i133.i.for.body.i128.i_crit_edge

for.inc.i133.i.for.body.i128.i_crit_edge:         ; preds = %for.inc.i133.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i128.i

for.inc.i133.i.if.end8.i.i137.i.i_crit_edge:      ; preds = %for.inc.i133.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i137.i.i

if.end8.i.i137.i.i:                               ; preds = %for.inc.i133.i.if.end8.i.i137.i.i_crit_edge, %if.then34.i.i.if.end8.i.i137.i.i_crit_edge, %if.end32.i.i.if.end8.i.i137.i.i_crit_edge
  %storemerge.i.i = phi i32 [ 0, %if.end32.i.i.if.end8.i.i137.i.i_crit_edge ], [ 0, %if.then34.i.i.if.end8.i.i137.i.i_crit_edge ], [ %numDevices.1.i.i, %for.inc.i133.i.if.end8.i.i137.i.i_crit_edge ]
  %pdata.2170.i.i = phi ptr [ %call9.i.i.i.i, %if.end32.i.i.if.end8.i.i137.i.i_crit_edge ], [ %call9.i.i.i.i, %if.then34.i.i.if.end8.i.i137.i.i_crit_edge ], [ %pdata.1.i.i, %for.inc.i133.i.if.end8.i.i137.i.i_crit_edge ]
  %134 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %storemerge.i.i, ptr %103, align 4
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #14
  %call.i.i138.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i138.i.i, label %if.end8.i.i137.i.i.do.end72.i.i_crit_edge, label %copy_to_user.exit.i135.i

if.end8.i.i137.i.i.do.end72.i.i_crit_edge:        ; preds = %if.end8.i.i137.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end72.i.i

copy_to_user.exit.i135.i:                         ; preds = %if.end8.i.i137.i.i
  %call.i.i.i142.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %karg.i.i, i32 noundef 20) #14
  %call.i12.i.i.i134.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %karg.i.i, i32 noundef 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i134.i)
  %tobool68.not.i.i = icmp eq i32 %call.i12.i.i.i134.i, 0
  br i1 %tobool68.not.i.i, label %if.end77.i.i, label %copy_to_user.exit.i135.i.do.end72.i.i_crit_edge

copy_to_user.exit.i135.i.do.end72.i.i_crit_edge:  ; preds = %copy_to_user.exit.i135.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end72.i.i

do.end72.i.i:                                     ; preds = %copy_to_user.exit.i135.i.do.end72.i.i_crit_edge, %if.end8.i.i137.i.i.do.end72.i.i_crit_edge
  %name74.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call76.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name74.i.i, ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef %0) #17
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #14
  br label %mptctl_gettargetinfo.exit.i

if.end77.i.i:                                     ; preds = %copy_to_user.exit.i135.i
  %targetInfo.i.i = getelementptr inbounds %struct.mpt_ioctl_targetinfo, ptr %0, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp9.i.i.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i139.i

land.rhs16.i.i.i.i:                               ; preds = %if.end77.i.i
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.do.end84.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !540

land.rhs16.i.i.i.i.do.end84.i.i_crit_edge:        ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end84.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %do.end84.i.i

if.then.i.i.i.i139.i:                             ; preds = %if.end77.i.i
  call void @__check_object_size(ptr noundef nonnull %call9.i.i.i.i, i32 noundef %sub.i.i, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #14
  %call.i.i148.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i148.i.i, label %if.then.i.i.i.i139.i.do.end84.i.i_crit_edge, label %if.end.i.i151.i.i

if.then.i.i.i.i139.i.do.end84.i.i_crit_edge:      ; preds = %if.then.i.i.i.i139.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end84.i.i

if.end.i.i151.i.i:                                ; preds = %if.then.i.i.i.i139.i
  %135 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %targetInfo.i.i, i32 %sub.i.i, i32 -1226833920) #18, !srcloc !544
  %asmresult.i.i149.i.i = extractvalue { i32, i32 } %135, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i149.i.i)
  %cmp.i6.i150.i.i = icmp eq i32 %asmresult.i.i149.i.i, 0
  br i1 %cmp.i6.i150.i.i, label %if.then2.i.i154.i.i, label %if.end.i.i151.i.i.do.end84.i.i_crit_edge

if.end.i.i151.i.i.do.end84.i.i_crit_edge:         ; preds = %if.end.i.i151.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end84.i.i

if.then2.i.i154.i.i:                              ; preds = %if.end.i.i151.i.i
  %call.i.i.i152.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i.i.i.i, i32 noundef %sub.i.i) #14
  %call.i12.i.i153.i.i = call i32 @arm_copy_to_user(ptr noundef %targetInfo.i.i, ptr noundef nonnull %call9.i.i.i.i, i32 noundef %sub.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i153.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i153.i.i, 0
  br i1 %phi.cmp, label %if.end89.i.i, label %if.then2.i.i154.i.i.do.end84.i.i_crit_edge

if.then2.i.i154.i.i.do.end84.i.i_crit_edge:       ; preds = %if.then2.i.i154.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end84.i.i

do.end84.i.i:                                     ; preds = %if.then2.i.i154.i.i.do.end84.i.i_crit_edge, %if.end.i.i151.i.i.do.end84.i.i_crit_edge, %if.then.i.i.i.i139.i.do.end84.i.i_crit_edge, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.do.end84.i.i_crit_edge
  %name86.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call88.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name86.i.i, ptr noundef nonnull @.str.5, i32 noundef 1456, ptr noundef %pdata.2170.i.i) #17
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #14
  br label %mptctl_gettargetinfo.exit.i

if.end89.i.i:                                     ; preds = %if.then2.i.i154.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #14
  br label %mptctl_gettargetinfo.exit.i

mptctl_gettargetinfo.exit.i:                      ; preds = %if.end89.i.i, %do.end84.i.i, %do.end72.i.i, %do.end27.i.i, %do.end16.i.i, %if.then11.i.i.i.i
  %retval.0.i141.i = phi i32 [ -14, %if.then11.i.i.i.i ], [ -12, %do.end16.i.i ], [ -14, %do.end72.i.i ], [ -14, %do.end84.i.i ], [ 0, %if.end89.i.i ], [ -12, %do.end27.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %karg.i.i) #14
  br label %__mptctl_ioctl.exit

if.then26.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %karg.i142.i) #14
  %136 = call ptr @memset(ptr %karg.i142.i, i32 255, i32 60)
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i.i143.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i143.i, label %if.then26.i.if.then11.i.i.i158.i_crit_edge, label %land.lhs.true.i.i.i146.i

if.then26.i.if.then11.i.i.i158.i_crit_edge:       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i158.i

land.lhs.true.i.i.i146.i:                         ; preds = %if.then26.i
  %137 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 60, i32 -1226833920) #18
  %asmresult.i.i.i144.i = extractvalue { i32, i32 } %137, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i144.i)
  %cmp.i6.i.i145.i = icmp eq i32 %asmresult.i.i.i144.i, 0
  br i1 %cmp.i6.i.i145.i, label %if.end.i.i.i154.i, label %land.lhs.true.i.i.i146.i.if.then11.i.i.i158.i_crit_edge, !prof !540

land.lhs.true.i.i.i146.i.if.then11.i.i.i158.i_crit_edge: ; preds = %land.lhs.true.i.i.i146.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i158.i

if.end.i.i.i154.i:                                ; preds = %land.lhs.true.i.i.i146.i
  %call.i.i.i.i147.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg.i142.i, i32 noundef 60) #14
  %138 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i.i148.i = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i.i.i.i.i.i148.i to ptr
  %cpu_domain.i.i.i.i.i.i149.i = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 4
  %140 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i149.i) #6, !srcloc !541
  %and.i.i.i.i.i150.i = and i32 %140, -13
  %or.i.i.i.i.i151.i = or i32 %and.i.i.i.i.i150.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i151.i) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i.i152.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg.i142.i, ptr noundef %0, i32 noundef 60) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %140) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i152.i)
  %tobool4.not.i.i.i153.i = icmp eq i32 %call1.i.i.i.i152.i, 0
  br i1 %tobool4.not.i.i.i153.i, label %do.body2.i162.i, label %if.end.i.i.i154.i.if.then11.i.i.i158.i_crit_edge, !prof !540

if.end.i.i.i154.i.if.then11.i.i.i158.i_crit_edge: ; preds = %if.end.i.i.i154.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i158.i

if.then11.i.i.i158.i:                             ; preds = %if.end.i.i.i154.i.if.then11.i.i.i158.i_crit_edge, %land.lhs.true.i.i.i146.i.if.then11.i.i.i158.i_crit_edge, %if.then26.i.if.then11.i.i.i158.i_crit_edge
  %res.0.i.i55.i.i = phi i32 [ %call1.i.i.i.i152.i, %if.end.i.i.i154.i.if.then11.i.i.i158.i_crit_edge ], [ 60, %if.then26.i.if.then11.i.i.i158.i_crit_edge ], [ 60, %land.lhs.true.i.i.i146.i.if.then11.i.i.i158.i_crit_edge ]
  %sub.i.i.i155.i = sub i32 60, %res.0.i.i55.i.i
  %add.ptr.i.i.i156.i = getelementptr i8, ptr %karg.i142.i, i32 %sub.i.i.i155.i
  %141 = call ptr @memset(ptr %add.ptr.i.i.i156.i, i32 0, i32 %res.0.i.i55.i.i)
  %call1.i157.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.5, i32 noundef 1483, ptr noundef %0) #17
  br label %mptctl_readtest.exit.i

do.body2.i162.i:                                  ; preds = %if.end.i.i.i154.i
  %debug_level.i159.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 10
  %142 = ptrtoint ptr %debug_level.i159.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %debug_level.i159.i, align 4
  %and.i160.i = and i32 %143, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i160.i)
  %tobool3.not.i161.i = icmp eq i32 %and.i160.i, 0
  br i1 %tobool3.not.i161.i, label %do.body2.i162.i.if.end8.i.i46.i.i_crit_edge, label %do.end7.i165.i

do.body2.i162.i.if.end8.i.i46.i.i_crit_edge:      ; preds = %do.body2.i162.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i46.i.i

do.end7.i165.i:                                   ; preds = %do.body2.i162.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i163.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call9.i164.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name.i163.i) #17
  br label %if.end8.i.i46.i.i

if.end8.i.i46.i.i:                                ; preds = %do.end7.i165.i, %do.body2.i162.i.if.end8.i.i46.i.i_crit_edge
  %pcidev.i166.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 54
  %144 = ptrtoint ptr %pcidev.i166.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pcidev.i166.i, align 8
  %device.i167.i = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 8
  %146 = ptrtoint ptr %device.i167.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %device.i167.i, align 2
  %conv.i.i = zext i16 %147 to i32
  %chip_type.i.i = getelementptr inbounds %struct.mpt_ioctl_test, ptr %karg.i142.i, i32 0, i32 2
  %148 = ptrtoint ptr %chip_type.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %conv.i.i, ptr %chip_type.i.i, align 4
  %name13.i.i = getelementptr inbounds %struct.mpt_ioctl_test, ptr %karg.i142.i, i32 0, i32 1
  %name15.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call17.i.i = call ptr @strncpy(ptr noundef %name13.i.i, ptr noundef %name15.i.i, i32 noundef 32) #14
  %arrayidx.i168.i = getelementptr inbounds %struct.mpt_ioctl_test, ptr %karg.i142.i, i32 0, i32 1, i32 31
  %149 = ptrtoint ptr %arrayidx.i168.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %arrayidx.i168.i, align 1
  %product.i.i = getelementptr inbounds %struct.mpt_ioctl_test, ptr %karg.i142.i, i32 0, i32 3
  %prod_name.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 3
  %150 = ptrtoint ptr %prod_name.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %prod_name.i.i, align 8
  %call20.i169.i = call ptr @strncpy(ptr noundef %product.i.i, ptr noundef %151, i32 noundef 12) #14
  %arrayidx22.i.i = getelementptr inbounds %struct.mpt_ioctl_test, ptr %karg.i142.i, i32 0, i32 3, i32 11
  %152 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %arrayidx22.i.i, align 1
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #14
  %call.i.i47.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i47.i.i, label %if.end8.i.i46.i.i.do.end28.i.i_crit_edge, label %copy_to_user.exit.i171.i

if.end8.i.i46.i.i.do.end28.i.i_crit_edge:         ; preds = %if.end8.i.i46.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28.i.i

copy_to_user.exit.i171.i:                         ; preds = %if.end8.i.i46.i.i
  %call.i.i.i51.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %karg.i142.i, i32 noundef 60) #14
  %call.i12.i.i.i170.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %karg.i142.i, i32 noundef 60) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i170.i)
  %tobool24.not.i.i = icmp eq i32 %call.i12.i.i.i170.i, 0
  br i1 %tobool24.not.i.i, label %copy_to_user.exit.i171.i.mptctl_readtest.exit.i_crit_edge, label %copy_to_user.exit.i171.i.do.end28.i.i_crit_edge

copy_to_user.exit.i171.i.do.end28.i.i_crit_edge:  ; preds = %copy_to_user.exit.i171.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28.i.i

copy_to_user.exit.i171.i.mptctl_readtest.exit.i_crit_edge: ; preds = %copy_to_user.exit.i171.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_readtest.exit.i

do.end28.i.i:                                     ; preds = %copy_to_user.exit.i171.i.do.end28.i.i_crit_edge, %if.end8.i.i46.i.i.do.end28.i.i_crit_edge
  %call32.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name15.i.i, ptr noundef nonnull @.str.5, i32 noundef 1508, ptr noundef %0) #17
  br label %mptctl_readtest.exit.i

mptctl_readtest.exit.i:                           ; preds = %do.end28.i.i, %copy_to_user.exit.i171.i.mptctl_readtest.exit.i_crit_edge, %if.then11.i.i.i158.i
  %retval.0.i172.i = phi i32 [ -14, %if.then11.i.i.i158.i ], [ -14, %do.end28.i.i ], [ 0, %copy_to_user.exit.i171.i.mptctl_readtest.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %karg.i142.i) #14
  br label %__mptctl_ioctl.exit

if.then30.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %karg.i173.i) #14
  %153 = getelementptr inbounds %struct.mpt_ioctl_eventquery, ptr %karg.i173.i, i32 0, i32 1
  %154 = getelementptr inbounds %struct.mpt_ioctl_eventquery, ptr %karg.i173.i, i32 0, i32 3
  %155 = call ptr @memset(ptr %karg.i173.i, i32 255, i32 20)
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i.i174.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i174.i, label %if.then30.i.if.then11.i.i.i189.i_crit_edge, label %land.lhs.true.i.i.i177.i

if.then30.i.if.then11.i.i.i189.i_crit_edge:       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i189.i

land.lhs.true.i.i.i177.i:                         ; preds = %if.then30.i
  %156 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 20, i32 -1226833920) #18
  %asmresult.i.i.i175.i = extractvalue { i32, i32 } %156, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i175.i)
  %cmp.i6.i.i176.i = icmp eq i32 %asmresult.i.i.i175.i, 0
  br i1 %cmp.i6.i.i176.i, label %if.end.i.i.i185.i, label %land.lhs.true.i.i.i177.i.if.then11.i.i.i189.i_crit_edge, !prof !540

land.lhs.true.i.i.i177.i.if.then11.i.i.i189.i_crit_edge: ; preds = %land.lhs.true.i.i.i177.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i189.i

if.end.i.i.i185.i:                                ; preds = %land.lhs.true.i.i.i177.i
  %call.i.i.i.i178.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg.i173.i, i32 noundef 20) #14
  %157 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i.i179.i = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i.i.i.i.i.i179.i to ptr
  %cpu_domain.i.i.i.i.i.i180.i = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 4
  %159 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i180.i) #6, !srcloc !541
  %and.i.i.i.i.i181.i = and i32 %159, -13
  %or.i.i.i.i.i182.i = or i32 %and.i.i.i.i.i181.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i182.i) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i.i183.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg.i173.i, ptr noundef %0, i32 noundef 20) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %159) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i183.i)
  %tobool4.not.i.i.i184.i = icmp eq i32 %call1.i.i.i.i183.i, 0
  br i1 %tobool4.not.i.i.i184.i, label %do.body2.i193.i, label %if.end.i.i.i185.i.if.then11.i.i.i189.i_crit_edge, !prof !540

if.end.i.i.i185.i.if.then11.i.i.i189.i_crit_edge: ; preds = %if.end.i.i.i185.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i189.i

if.then11.i.i.i189.i:                             ; preds = %if.end.i.i.i185.i.if.then11.i.i.i189.i_crit_edge, %land.lhs.true.i.i.i177.i.if.then11.i.i.i189.i_crit_edge, %if.then30.i.if.then11.i.i.i189.i_crit_edge
  %res.0.i.i44.i.i = phi i32 [ %call1.i.i.i.i183.i, %if.end.i.i.i185.i.if.then11.i.i.i189.i_crit_edge ], [ 20, %if.then30.i.if.then11.i.i.i189.i_crit_edge ], [ 20, %land.lhs.true.i.i.i177.i.if.then11.i.i.i189.i_crit_edge ]
  %sub.i.i.i186.i = sub i32 20, %res.0.i.i44.i.i
  %add.ptr.i.i.i187.i = getelementptr i8, ptr %karg.i173.i, i32 %sub.i.i.i186.i
  %160 = call ptr @memset(ptr %add.ptr.i.i.i187.i, i32 0, i32 %res.0.i.i44.i.i)
  %call1.i188.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.5, i32 noundef 1535, ptr noundef %0) #17
  br label %mptctl_eventquery.exit.i

do.body2.i193.i:                                  ; preds = %if.end.i.i.i185.i
  %debug_level.i190.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 10
  %161 = ptrtoint ptr %debug_level.i190.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %debug_level.i190.i, align 4
  %and.i191.i = and i32 %162, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i191.i)
  %tobool3.not.i192.i = icmp eq i32 %and.i191.i, 0
  br i1 %tobool3.not.i192.i, label %do.body2.i193.i.if.end8.i.i35.i.i_crit_edge, label %do.end7.i196.i

do.body2.i193.i.if.end8.i.i35.i.i_crit_edge:      ; preds = %do.body2.i193.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i.i35.i.i

do.end7.i196.i:                                   ; preds = %do.body2.i193.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i194.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call9.i195.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name.i194.i) #17
  br label %if.end8.i.i35.i.i

if.end8.i.i35.i.i:                                ; preds = %do.end7.i196.i, %do.body2.i193.i.if.end8.i.i35.i.i_crit_edge
  %163 = ptrtoint ptr %153 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 50, ptr %153, align 4
  %eventTypes.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 66
  %164 = ptrtoint ptr %eventTypes.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %eventTypes.i.i, align 4
  %166 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %154, align 4
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #14
  %call.i.i36.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i36.i.i, label %if.end8.i.i35.i.i.do.end19.i.i_crit_edge, label %copy_to_user.exit.i198.i

if.end8.i.i35.i.i.do.end19.i.i_crit_edge:         ; preds = %if.end8.i.i35.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19.i.i

copy_to_user.exit.i198.i:                         ; preds = %if.end8.i.i35.i.i
  %call.i.i.i40.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %karg.i173.i, i32 noundef 20) #14
  %call.i12.i.i.i197.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %karg.i173.i, i32 noundef 20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i197.i)
  %tobool15.not.i.i = icmp eq i32 %call.i12.i.i.i197.i, 0
  br i1 %tobool15.not.i.i, label %copy_to_user.exit.i198.i.mptctl_eventquery.exit.i_crit_edge, label %copy_to_user.exit.i198.i.do.end19.i.i_crit_edge

copy_to_user.exit.i198.i.do.end19.i.i_crit_edge:  ; preds = %copy_to_user.exit.i198.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19.i.i

copy_to_user.exit.i198.i.mptctl_eventquery.exit.i_crit_edge: ; preds = %copy_to_user.exit.i198.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_eventquery.exit.i

do.end19.i.i:                                     ; preds = %copy_to_user.exit.i198.i.do.end19.i.i_crit_edge, %if.end8.i.i35.i.i.do.end19.i.i_crit_edge
  %name21.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name21.i.i, ptr noundef nonnull @.str.5, i32 noundef 1549, ptr noundef %0) #17
  br label %mptctl_eventquery.exit.i

mptctl_eventquery.exit.i:                         ; preds = %do.end19.i.i, %copy_to_user.exit.i198.i.mptctl_eventquery.exit.i_crit_edge, %if.then11.i.i.i189.i
  %retval.0.i199.i = phi i32 [ -14, %if.then11.i.i.i189.i ], [ -14, %do.end19.i.i ], [ 0, %copy_to_user.exit.i198.i.mptctl_eventquery.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %karg.i173.i) #14
  br label %__mptctl_ioctl.exit

if.then34.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %karg.i200.i) #14
  %167 = getelementptr inbounds %struct.mpt_ioctl_eventenable, ptr %karg.i200.i, i32 0, i32 1
  %168 = call ptr @memset(ptr %karg.i200.i, i32 255, i32 16)
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i.i201.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i201.i, label %if.then34.i.if.then11.i.i.i216.i_crit_edge, label %land.lhs.true.i.i.i204.i

if.then34.i.if.then11.i.i.i216.i_crit_edge:       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i216.i

land.lhs.true.i.i.i204.i:                         ; preds = %if.then34.i
  %169 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 16, i32 -1226833920) #18, !srcloc !539
  %asmresult.i.i.i202.i = extractvalue { i32, i32 } %169, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i202.i)
  %cmp.i6.i.i203.i = icmp eq i32 %asmresult.i.i.i202.i, 0
  br i1 %cmp.i6.i.i203.i, label %if.end.i.i.i212.i, label %land.lhs.true.i.i.i204.i.if.then11.i.i.i216.i_crit_edge, !prof !540

land.lhs.true.i.i.i204.i.if.then11.i.i.i216.i_crit_edge: ; preds = %land.lhs.true.i.i.i204.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i216.i

if.end.i.i.i212.i:                                ; preds = %land.lhs.true.i.i.i204.i
  %call.i.i.i.i205.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg.i200.i, i32 noundef 16) #14
  %170 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i.i206.i = and i32 %170, -16384
  %171 = inttoptr i32 %and.i.i.i.i.i.i.i206.i to ptr
  %cpu_domain.i.i.i.i.i.i207.i = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 4
  %172 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i207.i) #6, !srcloc !541
  %and.i.i.i.i.i208.i = and i32 %172, -13
  %or.i.i.i.i.i209.i = or i32 %and.i.i.i.i.i208.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i209.i) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i.i210.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg.i200.i, ptr noundef %0, i32 noundef 16) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %172) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i210.i)
  %tobool4.not.i.i.i211.i = icmp eq i32 %call1.i.i.i.i210.i, 0
  br i1 %tobool4.not.i.i.i211.i, label %do.body2.i220.i, label %if.end.i.i.i212.i.if.then11.i.i.i216.i_crit_edge, !prof !540

if.end.i.i.i212.i.if.then11.i.i.i216.i_crit_edge: ; preds = %if.end.i.i.i212.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i216.i

if.then11.i.i.i216.i:                             ; preds = %if.end.i.i.i212.i.if.then11.i.i.i216.i_crit_edge, %land.lhs.true.i.i.i204.i.if.then11.i.i.i216.i_crit_edge, %if.then34.i.if.then11.i.i.i216.i_crit_edge
  %res.0.i.i45.i.i = phi i32 [ %call1.i.i.i.i210.i, %if.end.i.i.i212.i.if.then11.i.i.i216.i_crit_edge ], [ 16, %if.then34.i.if.then11.i.i.i216.i_crit_edge ], [ 16, %land.lhs.true.i.i.i204.i.if.then11.i.i.i216.i_crit_edge ]
  %sub.i.i.i213.i = sub i32 16, %res.0.i.i45.i.i
  %add.ptr.i.i.i214.i = getelementptr i8, ptr %karg.i200.i, i32 %sub.i.i.i213.i
  %173 = call ptr @memset(ptr %add.ptr.i.i.i214.i, i32 0, i32 %res.0.i.i45.i.i)
  %call1.i215.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.5, i32 noundef 1565, ptr noundef %0) #17
  br label %mptctl_eventenable.exit.i

do.body2.i220.i:                                  ; preds = %if.end.i.i.i212.i
  %debug_level.i217.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 10
  %174 = ptrtoint ptr %debug_level.i217.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %debug_level.i217.i, align 4
  %and.i218.i = and i32 %175, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i218.i)
  %tobool3.not.i219.i = icmp eq i32 %and.i218.i, 0
  br i1 %tobool3.not.i219.i, label %do.body2.i220.i.do.end12.i225.i_crit_edge, label %do.end7.i223.i

do.body2.i220.i.do.end12.i225.i_crit_edge:        ; preds = %do.body2.i220.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i225.i

do.end7.i223.i:                                   ; preds = %do.body2.i220.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i221.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call9.i222.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name.i221.i) #17
  br label %do.end12.i225.i

do.end12.i225.i:                                  ; preds = %do.end7.i223.i, %do.body2.i220.i.do.end12.i225.i_crit_edge
  %events.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 69
  %176 = ptrtoint ptr %events.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %events.i.i, align 8
  %cmp.i224.i = icmp eq ptr %177, null
  br i1 %cmp.i224.i, label %if.then13.i.i, label %do.end12.i225.i.if.end27.i.i_crit_edge

do.end12.i225.i.if.end27.i.i_crit_edge:           ; preds = %do.end12.i225.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i.i

if.then13.i.i:                                    ; preds = %do.end12.i225.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %178 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i226.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %178, i32 noundef 3520, i32 noundef 800) #20
  %179 = ptrtoint ptr %events.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call7.i.i.i226.i, ptr %events.i.i, align 8
  %tobool17.not.i.i = icmp eq ptr %call7.i.i.i226.i, null
  br i1 %tobool17.not.i.i, label %do.end21.i.i, label %if.end26.i.i

do.end21.i.i:                                     ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name23.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call25.i227.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %name23.i.i) #17
  br label %mptctl_eventenable.exit.i

if.end26.i.i:                                     ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %alloc_total.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 21
  %180 = ptrtoint ptr %alloc_total.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %alloc_total.i.i, align 4
  %add.i228.i = add i32 %181, 800
  store i32 %add.i228.i, ptr %alloc_total.i.i, align 4
  %eventContext.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 67
  %182 = ptrtoint ptr %eventContext.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %eventContext.i.i, align 8
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.end26.i.i, %do.end12.i225.i.if.end27.i.i_crit_edge
  %183 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %167, align 4
  %eventTypes28.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 66
  %185 = ptrtoint ptr %eventTypes28.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %184, ptr %eventTypes28.i.i, align 4
  br label %mptctl_eventenable.exit.i

mptctl_eventenable.exit.i:                        ; preds = %if.end27.i.i, %do.end21.i.i, %if.then11.i.i.i216.i
  %retval.1.i.i = phi i32 [ -14, %if.then11.i.i.i216.i ], [ 0, %if.end27.i.i ], [ -12, %do.end21.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %karg.i200.i) #14
  br label %__mptctl_ioctl.exit

if.then38.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %karg.i229.i) #14
  %186 = getelementptr inbounds %struct._mpt_ioctl_header, ptr %karg.i229.i, i32 0, i32 2
  %187 = call ptr @memset(ptr %karg.i229.i, i32 255, i32 28)
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i.i230.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i230.i, label %if.then38.i.if.then11.i.i.i245.i_crit_edge, label %land.lhs.true.i.i.i233.i

if.then38.i.if.then11.i.i.i245.i_crit_edge:       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i245.i

land.lhs.true.i.i.i233.i:                         ; preds = %if.then38.i
  %188 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 28, i32 -1226833920) #18, !srcloc !539
  %asmresult.i.i.i231.i = extractvalue { i32, i32 } %188, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i231.i)
  %cmp.i6.i.i232.i = icmp eq i32 %asmresult.i.i.i231.i, 0
  br i1 %cmp.i6.i.i232.i, label %if.end.i.i.i241.i, label %land.lhs.true.i.i.i233.i.if.then11.i.i.i245.i_crit_edge, !prof !540

land.lhs.true.i.i.i233.i.if.then11.i.i.i245.i_crit_edge: ; preds = %land.lhs.true.i.i.i233.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i245.i

if.end.i.i.i241.i:                                ; preds = %land.lhs.true.i.i.i233.i
  %call.i.i.i.i234.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg.i229.i, i32 noundef 28) #14
  %189 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i.i235.i = and i32 %189, -16384
  %190 = inttoptr i32 %and.i.i.i.i.i.i.i235.i to ptr
  %cpu_domain.i.i.i.i.i.i236.i = getelementptr inbounds %struct.thread_info, ptr %190, i32 0, i32 4
  %191 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i236.i) #6, !srcloc !541
  %and.i.i.i.i.i237.i = and i32 %191, -13
  %or.i.i.i.i.i238.i = or i32 %and.i.i.i.i.i237.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i238.i) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i.i239.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg.i229.i, ptr noundef %0, i32 noundef 28) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %191) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i239.i)
  %tobool4.not.i.i.i240.i = icmp eq i32 %call1.i.i.i.i239.i, 0
  br i1 %tobool4.not.i.i.i240.i, label %do.body2.i249.i, label %if.end.i.i.i241.i.if.then11.i.i.i245.i_crit_edge, !prof !540

if.end.i.i.i241.i.if.then11.i.i.i245.i_crit_edge: ; preds = %if.end.i.i.i241.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i245.i

if.then11.i.i.i245.i:                             ; preds = %if.end.i.i.i241.i.if.then11.i.i.i245.i_crit_edge, %land.lhs.true.i.i.i233.i.if.then11.i.i.i245.i_crit_edge, %if.then38.i.if.then11.i.i.i245.i_crit_edge
  %res.0.i.i59.i.i = phi i32 [ %call1.i.i.i.i239.i, %if.end.i.i.i241.i.if.then11.i.i.i245.i_crit_edge ], [ 28, %if.then38.i.if.then11.i.i.i245.i_crit_edge ], [ 28, %land.lhs.true.i.i.i233.i.if.then11.i.i.i245.i_crit_edge ]
  %sub.i.i.i242.i = sub i32 28, %res.0.i.i59.i.i
  %add.ptr.i.i.i243.i = getelementptr i8, ptr %karg.i229.i, i32 %sub.i.i.i242.i
  %192 = call ptr @memset(ptr %add.ptr.i.i.i243.i, i32 0, i32 %res.0.i.i59.i.i)
  %call1.i244.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.5, i32 noundef 1605, ptr noundef %0) #17
  br label %mptctl_eventreport.exit.i

do.body2.i249.i:                                  ; preds = %if.end.i.i.i241.i
  %debug_level.i246.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 10
  %193 = ptrtoint ptr %debug_level.i246.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %debug_level.i246.i, align 4
  %and.i247.i = and i32 %194, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i247.i)
  %tobool3.not.i248.i = icmp eq i32 %and.i247.i, 0
  br i1 %tobool3.not.i248.i, label %do.body2.i249.i.do.end12.i255.i_crit_edge, label %do.end7.i252.i

do.body2.i249.i.do.end12.i255.i_crit_edge:        ; preds = %do.body2.i249.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i255.i

do.end7.i252.i:                                   ; preds = %do.body2.i249.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i250.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call9.i251.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name.i250.i) #17
  br label %do.end12.i255.i

do.end12.i255.i:                                  ; preds = %do.end7.i252.i, %do.body2.i249.i.do.end12.i255.i_crit_edge
  %195 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %186, align 4
  %sub.i253.i = add i32 %196, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 815, i32 %sub.i253.i)
  %cmp.i254.i = icmp ugt i32 %sub.i253.i, 815
  %div46.i.i = lshr i32 %sub.i253.i, 4
  %spec.select.i.i = select i1 %cmp.i254.i, i32 50, i32 %div46.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %cmp13.i.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %cmp13.i.i, label %do.end12.i255.i.mptctl_eventreport.exit.i_crit_edge, label %lor.lhs.false.i257.i

do.end12.i255.i.mptctl_eventreport.exit.i_crit_edge: ; preds = %do.end12.i255.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_eventreport.exit.i

lor.lhs.false.i257.i:                             ; preds = %do.end12.i255.i
  %events.i256.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 69
  %197 = ptrtoint ptr %events.i256.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %events.i256.i, align 8
  %tobool14.not.i.i = icmp eq ptr %198, null
  br i1 %tobool14.not.i.i, label %lor.lhs.false.i257.i.mptctl_eventreport.exit.i_crit_edge, label %if.end16.i.i

lor.lhs.false.i257.i.mptctl_eventreport.exit.i_crit_edge: ; preds = %lor.lhs.false.i257.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_eventreport.exit.i

if.end16.i.i:                                     ; preds = %lor.lhs.false.i257.i
  %aen_event_read_flag.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 84
  %199 = ptrtoint ptr %aen_event_read_flag.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %aen_event_read_flag.i.i, align 4
  %mul.i.i = shl nuw i32 %spec.select.i.i, 4
  %eventData.i.i = getelementptr inbounds %struct.mpt_ioctl_eventreport, ptr %0, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp9.i.i.i261.i = icmp slt i32 %mul.i.i, 0
  br i1 %cmp9.i.i.i261.i, label %land.rhs16.i.i.i263.i, label %if.then.i.i.i.i266.i

land.rhs16.i.i.i263.i:                            ; preds = %if.end16.i.i
  %.b71.i.i.i262.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i262.i, label %land.rhs16.i.i.i263.i.do.end24.i.i_crit_edge, label %if.then27.i.i.i264.i, !prof !540

land.rhs16.i.i.i263.i.do.end24.i.i_crit_edge:     ; preds = %land.rhs16.i.i.i263.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24.i.i

if.then27.i.i.i264.i:                             ; preds = %land.rhs16.i.i.i263.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %do.end24.i.i

if.then.i.i.i.i266.i:                             ; preds = %if.end16.i.i
  call void @__check_object_size(ptr noundef nonnull %198, i32 noundef %mul.i.i, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #14
  %call.i.i51.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i51.i.i, label %if.then.i.i.i.i266.i.do.end24.i.i_crit_edge, label %if.end.i.i54.i.i

if.then.i.i.i.i266.i.do.end24.i.i_crit_edge:      ; preds = %if.then.i.i.i.i266.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24.i.i

if.end.i.i54.i.i:                                 ; preds = %if.then.i.i.i.i266.i
  %200 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %eventData.i.i, i32 %mul.i.i, i32 -1226833920) #18, !srcloc !544
  %asmresult.i.i52.i.i = extractvalue { i32, i32 } %200, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i52.i.i)
  %cmp.i6.i53.i.i = icmp eq i32 %asmresult.i.i52.i.i, 0
  br i1 %cmp.i6.i53.i.i, label %copy_to_user.exit.i269.i, label %if.end.i.i54.i.i.do.end24.i.i_crit_edge

if.end.i.i54.i.i.do.end24.i.i_crit_edge:          ; preds = %if.end.i.i54.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24.i.i

copy_to_user.exit.i269.i:                         ; preds = %if.end.i.i54.i.i
  %call.i.i.i55.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %198, i32 noundef %mul.i.i) #14
  %call.i12.i.i.i268.i = call i32 @arm_copy_to_user(ptr noundef %eventData.i.i, ptr noundef nonnull %198, i32 noundef %mul.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i268.i)
  %tobool20.not.i.i = icmp eq i32 %call.i12.i.i.i268.i, 0
  br i1 %tobool20.not.i.i, label %copy_to_user.exit.i269.i.mptctl_eventreport.exit.i_crit_edge, label %copy_to_user.exit.i269.i.do.end24.i.i_crit_edge

copy_to_user.exit.i269.i.do.end24.i.i_crit_edge:  ; preds = %copy_to_user.exit.i269.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end24.i.i

copy_to_user.exit.i269.i.mptctl_eventreport.exit.i_crit_edge: ; preds = %copy_to_user.exit.i269.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_eventreport.exit.i

do.end24.i.i:                                     ; preds = %copy_to_user.exit.i269.i.do.end24.i.i_crit_edge, %if.end.i.i54.i.i.do.end24.i.i_crit_edge, %if.then.i.i.i.i266.i.do.end24.i.i_crit_edge, %if.then27.i.i.i264.i, %land.rhs16.i.i.i263.i.do.end24.i.i_crit_edge
  %name26.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %201 = ptrtoint ptr %events.i256.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %events.i256.i, align 8
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name26.i.i, ptr noundef nonnull @.str.5, i32 noundef 1633, ptr noundef %202) #17
  br label %mptctl_eventreport.exit.i

mptctl_eventreport.exit.i:                        ; preds = %do.end24.i.i, %copy_to_user.exit.i269.i.mptctl_eventreport.exit.i_crit_edge, %lor.lhs.false.i257.i.mptctl_eventreport.exit.i_crit_edge, %do.end12.i255.i.mptctl_eventreport.exit.i_crit_edge, %if.then11.i.i.i245.i
  %retval.0.i270.i = phi i32 [ -14, %if.then11.i.i.i245.i ], [ -14, %do.end24.i.i ], [ -61, %lor.lhs.false.i257.i.mptctl_eventreport.exit.i_crit_edge ], [ -61, %do.end12.i255.i.mptctl_eventreport.exit.i_crit_edge ], [ 0, %copy_to_user.exit.i269.i.mptctl_eventreport.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %karg.i229.i) #14
  br label %__mptctl_ioctl.exit

if.then42.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %karg.i271.i) #14
  %203 = call ptr @memset(ptr %karg.i271.i, i32 255, i32 20)
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i.i272.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i272.i, label %if.then42.i.if.then11.i.i.i287.i_crit_edge, label %land.lhs.true.i.i.i275.i

if.then42.i.if.then11.i.i.i287.i_crit_edge:       ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i287.i

land.lhs.true.i.i.i275.i:                         ; preds = %if.then42.i
  %204 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 20, i32 -1226833920) #18, !srcloc !539
  %asmresult.i.i.i273.i = extractvalue { i32, i32 } %204, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i273.i)
  %cmp.i6.i.i274.i = icmp eq i32 %asmresult.i.i.i273.i, 0
  br i1 %cmp.i6.i.i274.i, label %if.end.i.i.i283.i, label %land.lhs.true.i.i.i275.i.if.then11.i.i.i287.i_crit_edge, !prof !540

land.lhs.true.i.i.i275.i.if.then11.i.i.i287.i_crit_edge: ; preds = %land.lhs.true.i.i.i275.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i287.i

if.end.i.i.i283.i:                                ; preds = %land.lhs.true.i.i.i275.i
  %call.i.i.i.i276.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg.i271.i, i32 noundef 20) #14
  %205 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i.i277.i = and i32 %205, -16384
  %206 = inttoptr i32 %and.i.i.i.i.i.i.i277.i to ptr
  %cpu_domain.i.i.i.i.i.i278.i = getelementptr inbounds %struct.thread_info, ptr %206, i32 0, i32 4
  %207 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i278.i) #6, !srcloc !541
  %and.i.i.i.i.i279.i = and i32 %207, -13
  %or.i.i.i.i.i280.i = or i32 %and.i.i.i.i.i279.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i280.i) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i.i281.i = call i32 @arm_copy_from_user(ptr noundef nonnull %karg.i271.i, ptr noundef %0, i32 noundef 20) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %207) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i281.i)
  %tobool4.not.i.i.i282.i = icmp eq i32 %call1.i.i.i.i281.i, 0
  br i1 %tobool4.not.i.i.i282.i, label %do.body2.i291.i, label %if.end.i.i.i283.i.if.then11.i.i.i287.i_crit_edge, !prof !540

if.end.i.i.i283.i.if.then11.i.i.i287.i_crit_edge: ; preds = %if.end.i.i.i283.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i287.i

if.then11.i.i.i287.i:                             ; preds = %if.end.i.i.i283.i.if.then11.i.i.i287.i_crit_edge, %land.lhs.true.i.i.i275.i.if.then11.i.i.i287.i_crit_edge, %if.then42.i.if.then11.i.i.i287.i_crit_edge
  %res.0.i.i75.i.i = phi i32 [ %call1.i.i.i.i281.i, %if.end.i.i.i283.i.if.then11.i.i.i287.i_crit_edge ], [ 20, %if.then42.i.if.then11.i.i.i287.i_crit_edge ], [ 20, %land.lhs.true.i.i.i275.i.if.then11.i.i.i287.i_crit_edge ]
  %sub.i.i.i284.i = sub i32 20, %res.0.i.i75.i.i
  %add.ptr.i.i.i285.i = getelementptr i8, ptr %karg.i271.i, i32 %sub.i.i.i284.i
  %208 = call ptr @memset(ptr %add.ptr.i.i.i285.i, i32 0, i32 %res.0.i.i75.i.i)
  %call1.i286.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.5, i32 noundef 1651, ptr noundef %0) #17
  br label %mptctl_replace_fw.exit.i

do.body2.i291.i:                                  ; preds = %if.end.i.i.i283.i
  %debug_level.i288.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 10
  %209 = ptrtoint ptr %debug_level.i288.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %debug_level.i288.i, align 4
  %and.i289.i = and i32 %210, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i289.i)
  %tobool3.not.i290.i = icmp eq i32 %and.i289.i, 0
  br i1 %tobool3.not.i290.i, label %do.body2.i291.i.do.end12.i296.i_crit_edge, label %do.end7.i294.i

do.body2.i291.i.do.end12.i296.i_crit_edge:        ; preds = %do.body2.i291.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i296.i

do.end7.i294.i:                                   ; preds = %do.body2.i291.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i292.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call9.i293.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name.i292.i) #17
  br label %do.end12.i296.i

do.end12.i296.i:                                  ; preds = %do.end7.i294.i, %do.body2.i291.i.do.end12.i296.i_crit_edge
  %cached_fw.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 70
  %211 = ptrtoint ptr %cached_fw.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %cached_fw.i.i, align 4
  %cmp.i295.i = icmp eq ptr %212, null
  br i1 %cmp.i295.i, label %do.end12.i296.i.mptctl_replace_fw.exit.i_crit_edge, label %if.end14.i.i

do.end12.i296.i.mptctl_replace_fw.exit.i_crit_edge: ; preds = %do.end12.i296.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_replace_fw.exit.i

if.end14.i.i:                                     ; preds = %do.end12.i296.i
  call void @mpt_free_fw_memory(ptr noundef nonnull %17) #14
  %newImageSize.i.i = getelementptr inbounds %struct.mpt_ioctl_replace_fw, ptr %karg.i271.i, i32 0, i32 1
  %213 = ptrtoint ptr %newImageSize.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %newImageSize.i.i, align 4
  %add.i297.i = add i32 %214, 3
  %and15.i.i = and i32 %add.i297.i, -4
  %call16.i298.i = call i32 @mpt_alloc_fw_memory(ptr noundef nonnull %17, i32 noundef %and15.i.i) #14
  %215 = ptrtoint ptr %cached_fw.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %cached_fw.i.i, align 4
  %cmp18.i.i = icmp eq ptr %216, null
  br i1 %cmp18.i.i, label %if.end14.i.i.mptctl_replace_fw.exit.i_crit_edge, label %if.end20.i.i

if.end14.i.i.mptctl_replace_fw.exit.i_crit_edge:  ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_replace_fw.exit.i

if.end20.i.i:                                     ; preds = %if.end14.i.i
  %newImage.i.i = getelementptr inbounds %struct.mpt_ioctl_replace_fw, ptr %0, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %cmp9.i.i.i302.i = icmp slt i32 %and15.i.i, 0
  br i1 %cmp9.i.i.i302.i, label %land.rhs16.i.i.i304.i, label %if.then.i.i.i.i307.i

land.rhs16.i.i.i304.i:                            ; preds = %if.end20.i.i
  %.b71.i.i.i303.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i303.i, label %land.rhs16.i.i.i304.i.do.end28.i310.i_crit_edge, label %if.then27.i.i.i305.i, !prof !540

land.rhs16.i.i.i304.i.do.end28.i310.i_crit_edge:  ; preds = %land.rhs16.i.i.i304.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28.i310.i

if.then27.i.i.i305.i:                             ; preds = %land.rhs16.i.i.i304.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %do.end28.i310.i

if.then.i.i.i.i307.i:                             ; preds = %if.end20.i.i
  call void @__check_object_size(ptr noundef nonnull %216, i32 noundef %and15.i.i, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i54.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i54.i.i, label %if.then.i.i.i.i307.i.if.end.i.i67.i.i_crit_edge, label %land.lhs.true.i.i57.i.i

if.then.i.i.i.i307.i.if.end.i.i67.i.i_crit_edge:  ; preds = %if.then.i.i.i.i307.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i67.i.i

land.lhs.true.i.i57.i.i:                          ; preds = %if.then.i.i.i.i307.i
  %217 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %newImage.i.i, i32 %and15.i.i, i32 -1226833920) #18, !srcloc !539
  %asmresult.i.i55.i.i = extractvalue { i32, i32 } %217, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i55.i.i)
  %cmp.i6.i56.i.i = icmp eq i32 %asmresult.i.i55.i.i, 0
  br i1 %cmp.i6.i56.i.i, label %if.then.i7.i64.i.i, label %land.lhs.true.i.i57.i.i.if.end.i.i67.i.i_crit_edge, !prof !540

land.lhs.true.i.i57.i.i.if.end.i.i67.i.i_crit_edge: ; preds = %land.lhs.true.i.i57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i67.i.i

if.then.i7.i64.i.i:                               ; preds = %land.lhs.true.i.i57.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i58.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %216, i32 noundef %and15.i.i) #14
  %218 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i59.i.i = and i32 %218, -16384
  %219 = inttoptr i32 %and.i.i.i.i.i.i59.i.i to ptr
  %cpu_domain.i.i.i.i.i60.i.i = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 4
  %220 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i60.i.i) #6, !srcloc !541
  %and.i.i.i.i61.i.i = and i32 %220, -13
  %or.i.i.i.i62.i.i = or i32 %and.i.i.i.i61.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i62.i.i) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i63.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %216, ptr noundef %newImage.i.i, i32 noundef %and15.i.i) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %220) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  br label %if.end.i.i67.i.i

if.end.i.i67.i.i:                                 ; preds = %if.then.i7.i64.i.i, %land.lhs.true.i.i57.i.i.if.end.i.i67.i.i_crit_edge, %if.then.i.i.i.i307.i.if.end.i.i67.i.i_crit_edge
  %res.0.i.i65.i.i = phi i32 [ %and15.i.i, %if.then.i.i.i.i307.i.if.end.i.i67.i.i_crit_edge ], [ %call1.i.i.i63.i.i, %if.then.i7.i64.i.i ], [ %and15.i.i, %land.lhs.true.i.i57.i.i.if.end.i.i67.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i65.i.i)
  %tobool4.not.i.i66.i.i = icmp eq i32 %res.0.i.i65.i.i, 0
  br i1 %tobool4.not.i.i66.i.i, label %if.end33.i.i, label %if.then11.i.i70.i.i, !prof !540

if.then11.i.i70.i.i:                              ; preds = %if.end.i.i67.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i68.i.i = sub i32 %and15.i.i, %res.0.i.i65.i.i
  %add.ptr.i.i69.i.i = getelementptr i8, ptr %216, i32 %sub.i.i68.i.i
  %221 = call ptr @memset(ptr %add.ptr.i.i69.i.i, i32 0, i32 %res.0.i.i65.i.i)
  br label %do.end28.i310.i

do.end28.i310.i:                                  ; preds = %if.then11.i.i70.i.i, %if.then27.i.i.i305.i, %land.rhs16.i.i.i304.i.do.end28.i310.i_crit_edge
  %name30.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 2
  %call32.i309.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name30.i.i, ptr noundef nonnull @.str.5, i32 noundef 1677, ptr noundef %0) #17
  call void @mpt_free_fw_memory(ptr noundef nonnull %17) #14
  br label %mptctl_replace_fw.exit.i

if.end33.i.i:                                     ; preds = %if.end.i.i67.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %FWImageSize.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 77, i32 26
  %222 = ptrtoint ptr %FWImageSize.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %and15.i.i, ptr %FWImageSize.i.i, align 8
  br label %mptctl_replace_fw.exit.i

mptctl_replace_fw.exit.i:                         ; preds = %if.end33.i.i, %do.end28.i310.i, %if.end14.i.i.mptctl_replace_fw.exit.i_crit_edge, %do.end12.i296.i.mptctl_replace_fw.exit.i_crit_edge, %if.then11.i.i.i287.i
  %retval.0.i311.i = phi i32 [ -14, %if.then11.i.i.i287.i ], [ -14, %do.end28.i310.i ], [ 0, %if.end33.i.i ], [ 0, %do.end12.i296.i.mptctl_replace_fw.exit.i_crit_edge ], [ -12, %if.end14.i.i.mptctl_replace_fw.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %karg.i271.i) #14
  br label %__mptctl_ioctl.exit

if.end50.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i312.i = icmp eq i32 %and.i, 0
  %ioctl_cmds3.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %17, i32 0, i32 116
  br i1 %tobool.not.i312.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end50.i
  %call.i313.i = call i32 @mutex_trylock(ptr noundef %ioctl_cmds3.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313.i)
  %tobool1.not.i.i = icmp eq i32 %call.i313.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.__mptctl_ioctl.exit_crit_edge, label %if.then.i.i.if.end54.i_crit_edge

if.then.i.i.if.end54.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.i

if.then.i.i.__mptctl_ioctl.exit_crit_edge:        ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__mptctl_ioctl.exit

if.else.i.i:                                      ; preds = %if.end50.i
  %call5.i.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %ioctl_cmds3.i.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else.i.i.if.end54.i_crit_edge, label %if.else.i.i.__mptctl_ioctl.exit_crit_edge

if.else.i.i.__mptctl_ioctl.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__mptctl_ioctl.exit

if.else.i.i.if.end54.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else.i.i.if.end54.i_crit_edge, %if.then.i.i.if.end54.i_crit_edge
  %223 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %223, ptr @__sancov_gen_cov_switch_values.324)
  switch i32 %cmd, label %if.else66.i [
    i32 -1072927473, label %if.then56.i
    i32 -1070043884, label %if.then60.i
    i32 -1072927464, label %if.then64.i
  ]

if.then56.i:                                      ; preds = %if.end54.i
  %224 = ptrtoint ptr %iocp.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %iocp.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %kfwdl.i) #14
  %226 = ptrtoint ptr %kfwdl.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 -1, ptr %kfwdl.i, align 4, !annotation !538
  %227 = getelementptr inbounds %struct.mpt_fw_xfer, ptr %kfwdl.i, i32 0, i32 1
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 -1, ptr %227, align 4, !annotation !538
  %229 = getelementptr inbounds %struct.mpt_fw_xfer, ptr %kfwdl.i, i32 0, i32 2
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr inttoptr (i32 -1 to ptr), ptr %229, align 4, !annotation !538
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i.i160 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i160, label %if.then56.i.if.then11.i.i.i176_crit_edge, label %if.end.i.i.i171

if.then56.i.if.then11.i.i.i176_crit_edge:         ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i176

if.end.i.i.i171:                                  ; preds = %if.then56.i
  %call.i.i.i.i164 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kfwdl.i, i32 noundef 12) #14
  %231 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i.i165 = and i32 %231, -16384
  %232 = inttoptr i32 %and.i.i.i.i.i.i.i165 to ptr
  %cpu_domain.i.i.i.i.i.i166 = getelementptr inbounds %struct.thread_info, ptr %232, i32 0, i32 4
  %233 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i166) #6, !srcloc !541
  %and.i.i.i.i.i167 = and i32 %233, -13
  %or.i.i.i.i.i168 = or i32 %and.i.i.i.i.i167, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i168) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i.i169 = call i32 @arm_copy_from_user(ptr noundef nonnull %kfwdl.i, ptr noundef %0, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %233) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i169)
  %tobool4.not.i.i.i170 = icmp eq i32 %call1.i.i.i.i169, 0
  br i1 %tobool4.not.i.i.i170, label %if.end.i179, label %if.end.i.i.i171.if.then11.i.i.i176_crit_edge, !prof !540

if.end.i.i.i171.if.then11.i.i.i176_crit_edge:     ; preds = %if.end.i.i.i171
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i176

if.then11.i.i.i176:                               ; preds = %if.end.i.i.i171.if.then11.i.i.i176_crit_edge, %if.then56.i.if.then11.i.i.i176_crit_edge
  %res.0.i.i12.i172 = phi i32 [ %call1.i.i.i.i169, %if.end.i.i.i171.if.then11.i.i.i176_crit_edge ], [ 12, %if.then56.i.if.then11.i.i.i176_crit_edge ]
  %sub.i.i.i173 = sub i32 12, %res.0.i.i12.i172
  %add.ptr.i.i.i174 = getelementptr i8, ptr %kfwdl.i, i32 %sub.i.i.i173
  %234 = call ptr @memset(ptr %add.ptr.i.i.i174, i32 0, i32 %res.0.i.i12.i172)
  %call1.i175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.5, i32 noundef 756, ptr noundef %0) #17
  br label %mptctl_fw_download.exit

if.end.i179:                                      ; preds = %if.end.i.i.i171
  %235 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %229, align 4
  %237 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %227, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sgl_dma.i.i) #14
  %239 = ptrtoint ptr %sgl_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 -1, ptr %sgl_dma.i.i, align 4, !annotation !538
  %240 = load i8, ptr @mptctl_id, align 1
  %call.i.i177 = call ptr @mpt_get_msg_frame(i8 noundef zeroext %240, ptr noundef %225) #14
  %cmp.i.i178 = icmp eq ptr %call.i.i177, null
  br i1 %cmp.i.i178, label %if.end.i179.mptctl_do_fw_download.exit.i_crit_edge, label %do.body.i.i

if.end.i179.mptctl_do_fw_download.exit.i_crit_edge: ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_do_fw_download.exit.i

do.body.i.i:                                      ; preds = %if.end.i179
  %debug_level.i.i180 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 10
  %241 = ptrtoint ptr %debug_level.i.i180 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %debug_level.i.i180, align 4
  %and.i.i181 = and i32 %242, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i181)
  %tobool.not.i.i182 = icmp eq i32 %and.i.i181, 0
  br i1 %tobool.not.i.i182, label %do.body.i.i.do.body7.i.i_crit_edge, label %do.end.i.i185

do.body.i.i.do.body7.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body7.i.i

do.end.i.i185:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i.i183 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 2
  %243 = load i8, ptr @mptctl_id, align 1
  %conv.i.i184 = zext i8 %243 to i32
  %call3.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %name.i.i183, i32 noundef %conv.i.i184) #17
  br label %do.body7.i.i

do.body7.i.i:                                     ; preds = %do.end.i.i185, %do.body.i.i.do.body7.i.i_crit_edge
  %244 = ptrtoint ptr %debug_level.i.i180 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %debug_level.i.i180, align 4
  %and9.i.i = and i32 %245, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %do.body7.i.i.do.body22.i.i_crit_edge, label %do.end14.i.i

do.body7.i.i.do.body22.i.i_crit_edge:             ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body22.i.i

do.end14.i.i:                                     ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name16.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 2
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %name16.i.i, ptr noundef %236) #17
  br label %do.body22.i.i

do.body22.i.i:                                    ; preds = %do.end14.i.i, %do.body7.i.i.do.body22.i.i_crit_edge
  %246 = ptrtoint ptr %debug_level.i.i180 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %debug_level.i.i180, align 4
  %and24.i.i = and i32 %247, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %do.body22.i.i.do.end36.i.i_crit_edge, label %do.end29.i.i

do.body22.i.i.do.end36.i.i_crit_edge:             ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end36.i.i

do.end29.i.i:                                     ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name31.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 2
  %call33.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %name31.i.i, i32 noundef %238) #17
  br label %do.end36.i.i

do.end36.i.i:                                     ; preds = %do.end29.i.i, %do.body22.i.i.do.end36.i.i_crit_edge
  %SGL.i.i = getelementptr inbounds %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 7
  %add.ptr.i.i186 = getelementptr %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 7, i32 0, i32 0, i32 4, i32 0, i32 3
  %248 = ptrtoint ptr %call.i.i177 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 1, ptr %call.i.i177, align 4
  %Reserved.i.i = getelementptr inbounds %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 1
  %249 = ptrtoint ptr %Reserved.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 0, ptr %Reserved.i.i, align 1
  %ChainOffset.i.i = getelementptr inbounds %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 2
  %250 = ptrtoint ptr %ChainOffset.i.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 0, ptr %ChainOffset.i.i, align 2
  %Function.i.i187 = getelementptr inbounds %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 3
  %251 = ptrtoint ptr %Function.i.i187 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 9, ptr %Function.i.i187, align 1
  %Reserved1.i.i = getelementptr inbounds %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 4
  %arrayidx.i.i188 = getelementptr %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 4, i32 2
  %252 = ptrtoint ptr %arrayidx.i.i188 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 0, ptr %arrayidx.i.i188, align 2
  %arrayidx38.i.i = getelementptr %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 4, i32 1
  %253 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 0, ptr %arrayidx38.i.i, align 1
  %254 = ptrtoint ptr %Reserved1.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %Reserved1.i.i, align 4
  %facts.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 77
  %255 = ptrtoint ptr %facts.i.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %facts.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 260, i16 %256)
  %cmp42.i.i189 = icmp ugt i16 %256, 260
  %spec.select.i.i190 = zext i1 %cmp42.i.i189 to i8
  %257 = getelementptr inbounds %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 5
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %spec.select.i.i190, ptr %257, align 1
  %259 = ptrtoint ptr %SGL.i.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 0, ptr %SGL.i.i, align 4
  %ContextSize.i.i = getelementptr inbounds %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 7, i32 0, i32 0, i32 1
  %260 = ptrtoint ptr %ContextSize.i.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 0, ptr %ContextSize.i.i, align 1
  %DetailsLength.i.i = getelementptr inbounds %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 7, i32 0, i32 0, i32 2
  %261 = ptrtoint ptr %DetailsLength.i.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 12, ptr %DetailsLength.i.i, align 2
  %Flags.i.i191 = getelementptr inbounds %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 7, i32 0, i32 0, i32 3
  %262 = ptrtoint ptr %Flags.i.i191 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 0, ptr %Flags.i.i191, align 1
  %Reserved_0100_Checksum.i.i = getelementptr inbounds %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 7, i32 0, i32 0, i32 4
  %263 = ptrtoint ptr %Reserved_0100_Checksum.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 0, ptr %Reserved_0100_Checksum.i.i, align 4
  %ImageOffset.i.i = getelementptr inbounds %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 7, i32 0, i32 0, i32 4, i32 0, i32 1
  %264 = ptrtoint ptr %ImageOffset.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %ImageOffset.i.i, align 4
  %265 = call i32 @llvm.bswap.i32(i32 %238) #14
  %ImageSize.i.i = getelementptr inbounds %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 7, i32 0, i32 0, i32 4, i32 0, i32 2
  %266 = ptrtoint ptr %ImageSize.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %ImageSize.i.i, align 4
  %267 = call i32 @llvm.smin.i32(i32 %238, i32 131072) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa.i.i.i) #14
  %268 = ptrtoint ptr %pa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 -1, ptr %pa.i.i.i, align 4, !annotation !538
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %cmp1.i.i5.i = icmp slt i32 %238, 0
  br i1 %cmp1.i.i5.i, label %do.end36.i.i.kbuf_alloc_2_sgl.exit.thread.i.i_crit_edge, label %if.end.i.i6.i

do.end36.i.i.kbuf_alloc_2_sgl.exit.thread.i.i_crit_edge: ; preds = %do.end36.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kbuf_alloc_2_sgl.exit.thread.i.i

if.end.i.i6.i:                                    ; preds = %do.end36.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %269 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %269, i32 noundef 1052096, i32 noundef 74) #20
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i6.i.kbuf_alloc_2_sgl.exit.thread.i.i_crit_edge, label %if.end3.i.i.i

if.end.i.i6.i.kbuf_alloc_2_sgl.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kbuf_alloc_2_sgl.exit.thread.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i6.i
  %pcidev.i.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 54
  %270 = ptrtoint ptr %pcidev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %pcidev.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %271, i32 0, i32 44
  %call.i.i340.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i.i, i32 noundef 592, ptr noundef nonnull %sgl_dma.i.i, i32 noundef 3264, i32 noundef 0) #14
  %cmp5.i.i.i = icmp eq ptr %call.i.i340.i.i, null
  br i1 %cmp5.i.i.i, label %if.end3.i.i.i.if.end154.i.i.i_crit_edge, label %if.end10.i.i.i

if.end3.i.i.i.if.end154.i.i.i_crit_edge:          ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154.i.i.i

if.end10.i.i.i:                                   ; preds = %if.end3.i.i.i
  %req_sz.i.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 45
  %272 = ptrtoint ptr %req_sz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %req_sz.i.i.i, align 8
  %sub.i.i7.i = add i32 %273, -28
  %SGE_size.i.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 146
  %274 = ptrtoint ptr %SGE_size.i.i.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %SGE_size.i.i.i, align 2
  %conv.i.i.i = zext i8 %275 to i32
  %div.i.i.i = sdiv i32 %sub.i.i7.i, %conv.i.i.i
  %276 = add i32 %div.i.i.i, -2
  %277 = add i32 %div.i.i.i, -1
  br label %while.cond.outer.i.i.i

while.cond.outer.i.i.i:                           ; preds = %if.end76.i.i.i.while.cond.outer.i.i.i_crit_edge, %if.end10.i.i.i
  %buflist_ent.0.ph.i.i.i = phi i32 [ %inc53.i.i.i, %if.end76.i.i.i.while.cond.outer.i.i.i_crit_edge ], [ 0, %if.end10.i.i.i ]
  %bytes_allocd.0.ph.i.i.i = phi i32 [ %add.i.i.i, %if.end76.i.i.i.while.cond.outer.i.i.i_crit_edge ], [ 0, %if.end10.i.i.i ]
  %alloc_sz.0.ph.i.i.i = phi i32 [ %alloc_sz.0.i.i.i, %if.end76.i.i.i.while.cond.outer.i.i.i_crit_edge ], [ %267, %if.end10.i.i.i ]
  %sgl.0.ph.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.end76.i.i.i.while.cond.outer.i.i.i_crit_edge ], [ %call.i.i340.i.i, %if.end10.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %238, i32 %bytes_allocd.0.ph.i.i.i)
  %cmp12.i.i.i = icmp sgt i32 %238, %bytes_allocd.0.ph.i.i.i
  %sub14.i.i.i = sub i32 %238, %bytes_allocd.0.ph.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.buflist, ptr %call7.i.i.i.i.i, i32 %buflist_ent.0.ph.i.i.i
  %len.i.i.i = getelementptr %struct.buflist, ptr %call7.i.i.i.i.i, i32 %buflist_ent.0.ph.i.i.i, i32 1
  br i1 %cmp12.i.i.i, label %while.cond.outer.i.i.i.while.cond.i.i.i_crit_edge, label %while.cond.outer.i.i.i.while.end.i.i.i_crit_edge

while.cond.outer.i.i.i.while.end.i.i.i_crit_edge: ; preds = %while.cond.outer.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i.i

while.cond.outer.i.i.i.while.cond.i.i.i_crit_edge: ; preds = %while.cond.outer.i.i.i
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.then30.i.i.i.while.cond.i.i.i_crit_edge, %while.cond.outer.i.i.i.while.cond.i.i.i_crit_edge
  %alloc_sz.0.i.i.i = phi i32 [ %div31.i.i.i, %if.then30.i.i.i.while.cond.i.i.i_crit_edge ], [ %alloc_sz.0.ph.i.i.i, %while.cond.outer.i.i.i.while.cond.i.i.i_crit_edge ]
  %278 = call i32 @llvm.smin.i32(i32 %alloc_sz.0.i.i.i, i32 %sub14.i.i.i) #14
  %279 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %278, ptr %len.i.i.i, align 4
  %280 = ptrtoint ptr %pcidev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %pcidev.i.i.i, align 8
  %dev23.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %281, i32 0, i32 44
  %call.i1.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev23.i.i.i, i32 noundef %278, ptr noundef nonnull %pa.i.i.i, i32 noundef 3264, i32 noundef 0) #14
  %282 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %call.i1.i.i.i, ptr %arrayidx.i.i.i, align 8
  %cmp28.i.i.i = icmp eq ptr %call.i1.i.i.i, null
  br i1 %cmp28.i.i.i, label %if.then30.i.i.i, label %if.else45.i.i.i

if.then30.i.i.i:                                  ; preds = %while.cond.i.i.i
  %div31.i.i.i = sdiv i32 %alloc_sz.0.i.i.i, 2
  %alloc_sz.0.off.i.i.i = add i32 %alloc_sz.0.i.i.i, 1
  %283 = icmp ult i32 %alloc_sz.0.off.i.i.i, 3
  br i1 %283, label %do.end.i.i.i, label %if.then30.i.i.i.while.cond.i.i.i_crit_edge

if.then30.i.i.i.while.cond.i.i.i_crit_edge:       ; preds = %if.then30.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i.i

do.end.i.i.i:                                     ; preds = %if.then30.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 2
  %call36.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef %name.i.i.i) #17
  %call43.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %name.i.i.i, i32 noundef %buflist_ent.0.ph.i.i.i) #17
  br label %for.cond.preheader.i.i.i

if.else45.i.i.i:                                  ; preds = %while.cond.i.i.i
  %add.i.i.i = add i32 %278, %bytes_allocd.0.ph.i.i.i
  %or46.i.i.i = or i32 %278, 335544320
  %284 = ptrtoint ptr %sgl.0.ph.i.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %or46.i.i.i, ptr %sgl.0.ph.i.i.i, align 4
  %285 = ptrtoint ptr %pcidev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %pcidev.i.i.i, align 8
  %dev48.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %286, i32 0, i32 44
  %287 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %arrayidx.i.i.i, align 8
  %call.i2.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %288) #14
  br i1 %call.i2.i.i.i, label %land.rhs.i.i.i.i, label %if.end39.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.else45.i.i.i
  %.b1.i.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.dma_map_single_attrs.exit.i.i.i_crit_edge, label %if.then.i.i341.i.i, !prof !540

land.rhs.i.i.i.i.dma_map_single_attrs.exit.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.i.i.i

if.then.i.i341.i.i:                               ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i.i = call ptr @dev_driver_string(ptr noundef %dev48.i.i.i) #14
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %286, i32 0, i32 44, i32 3
  %289 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %290, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i192, label %if.then.i.i341.i.i.dev_name.exit.i.i.i.i_crit_edge

if.then.i.i341.i.i.dev_name.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i341.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i.i.i

if.end.i.i.i.i.i192:                              ; preds = %if.then.i.i341.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %291 = ptrtoint ptr %dev48.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dev48.i.i.i, align 4
  br label %dev_name.exit.i.i.i.i

dev_name.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i192, %if.then.i.i341.i.i.dev_name.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %292, %if.end.i.i.i.i.i192 ], [ %290, %if.then.i.i341.i.i.dev_name.exit.i.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.169, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.170, ptr noundef %call16.i.i.i.i, ptr noundef %retval.0.i.i.i.i.i) #14
  br label %dma_map_single_attrs.exit.i.i.i

if.end39.i.i.i.i:                                 ; preds = %if.else45.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @debug_dma_map_single(ptr noundef %dev48.i.i.i, ptr noundef %288, i32 noundef %278) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %293 = load ptr, ptr @mem_map, align 4
  %294 = ptrtoint ptr %288 to i32
  %sub.i.i342.i.i = add i32 %294, 1073741824
  %shr.i.i.i.i = lshr i32 %sub.i.i342.i.i, 12
  %add.ptr.i.i343.i.i = getelementptr %struct.page, ptr %293, i32 %shr.i.i.i.i
  %and.i.i.i.i = and i32 %294, 4095
  %call41.i.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev48.i.i.i, ptr noundef %add.ptr.i.i343.i.i, i32 noundef %and.i.i.i.i, i32 noundef %278, i32 noundef 1, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit.i.i.i

dma_map_single_attrs.exit.i.i.i:                  ; preds = %if.end39.i.i.i.i, %dev_name.exit.i.i.i.i, %land.rhs.i.i.i.i.dma_map_single_attrs.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %call41.i.i.i.i, %if.end39.i.i.i.i ], [ -1, %dev_name.exit.i.i.i.i ], [ -1, %land.rhs.i.i.i.i.dma_map_single_attrs.exit.i.i.i_crit_edge ]
  %Address.i.i.i = getelementptr inbounds %struct._mpt_sge, ptr %sgl.0.ph.i.i.i, i32 0, i32 1
  %295 = ptrtoint ptr %Address.i.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %retval.0.i.i.i.i, ptr %Address.i.i.i, align 4
  %inc53.i.i.i = add nuw nsw i32 %buflist_ent.0.ph.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr %struct._mpt_sge, ptr %sgl.0.ph.i.i.i, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %238)
  %cmp55.not.i.i.i = icmp slt i32 %add.i.i.i, %238
  br i1 %cmp55.not.i.i.i, label %if.end58.i.i.i, label %dma_map_single_attrs.exit.i.i.i.while.end.i.i.i_crit_edge

dma_map_single_attrs.exit.i.i.i.while.end.i.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i.i

if.end58.i.i.i:                                   ; preds = %dma_map_single_attrs.exit.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %buflist_ent.0.ph.i.i.i, i32 %276)
  %cmp59.i.i.i = icmp eq i32 %buflist_ent.0.ph.i.i.i, %276
  br i1 %cmp59.i.i.i, label %do.end64.i.i.i, label %if.end76.i.i.i

do.end64.i.i.i:                                   ; preds = %if.end58.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name66.i.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 2
  %call68.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %name66.i.i.i) #17
  %call75.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef %name66.i.i.i, i32 noundef %277) #17
  br label %for.cond.preheader.i.i.i

if.end76.i.i.i:                                   ; preds = %if.end58.i.i.i
  %exitcond.i.i.i = icmp eq i32 %inc53.i.i.i, 75
  br i1 %exitcond.i.i.i, label %for.cond.preheader.thread.i.i.i, label %if.end76.i.i.i.while.cond.outer.i.i.i_crit_edge

if.end76.i.i.i.while.cond.outer.i.i.i_crit_edge:  ; preds = %if.end76.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.outer.i.i.i

for.cond.preheader.thread.i.i.i:                  ; preds = %if.end76.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name84.i.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 2
  %call86.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %name84.i.i.i) #17
  %call93.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %name84.i.i.i, i32 noundef 75) #17
  br label %for.body.preheader.i.i.i

while.end.i.i.i:                                  ; preds = %dma_map_single_attrs.exit.i.i.i.while.end.i.i.i_crit_edge, %while.cond.outer.i.i.i.while.end.i.i.i_crit_edge
  %alloc_sz.030.i.i.i = phi i32 [ %alloc_sz.0.ph.i.i.i, %while.cond.outer.i.i.i.while.end.i.i.i_crit_edge ], [ %alloc_sz.0.i.i.i, %dma_map_single_attrs.exit.i.i.i.while.end.i.i.i_crit_edge ]
  %numfrags.1.i.i.i = phi i32 [ %buflist_ent.0.ph.i.i.i, %while.cond.outer.i.i.i.while.end.i.i.i_crit_edge ], [ %inc53.i.i.i, %dma_map_single_attrs.exit.i.i.i.while.end.i.i.i_crit_edge ]
  %sgl.1.i.i.i = phi ptr [ %sgl.0.ph.i.i.i, %while.cond.outer.i.i.i.while.end.i.i.i_crit_edge ], [ %incdec.ptr.i.i.i, %dma_map_single_attrs.exit.i.i.i.while.end.i.i.i_crit_edge ]
  %arrayidx95.i.i.i = getelementptr %struct._mpt_sge, ptr %sgl.1.i.i.i, i32 -1
  %296 = ptrtoint ptr %arrayidx95.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx95.i.i.i, align 4
  %or97.i.i.i = or i32 %297, -1056964608
  store i32 %or97.i.i.i, ptr %arrayidx95.i.i.i, align 4
  %298 = ptrtoint ptr %debug_level.i.i180 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %debug_level.i.i180, align 4
  %and99.i.i.i = and i32 %299, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i.i.i)
  %tobool100.not.i.i.i = icmp eq i32 %and99.i.i.i, 0
  br i1 %tobool100.not.i.i.i, label %while.end.i.i.i.do.body112.i.i.i_crit_edge, label %do.end104.i.i.i

while.end.i.i.i.do.body112.i.i.i_crit_edge:       ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body112.i.i.i

do.end104.i.i.i:                                  ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name106.i.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 2
  %call108.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, ptr noundef %name106.i.i.i, i32 noundef %numfrags.1.i.i.i) #17
  br label %do.body112.i.i.i

do.body112.i.i.i:                                 ; preds = %do.end104.i.i.i, %while.end.i.i.i.do.body112.i.i.i_crit_edge
  %300 = ptrtoint ptr %debug_level.i.i180 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %debug_level.i.i180, align 4
  %and114.i.i.i = and i32 %301, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i.i.i)
  %tobool115.not.i.i.i = icmp eq i32 %and114.i.i.i, 0
  br i1 %tobool115.not.i.i.i, label %do.body112.i.i.i.kbuf_alloc_2_sgl.exit.i.i_crit_edge, label %do.end119.i.i.i

do.body112.i.i.i.kbuf_alloc_2_sgl.exit.i.i_crit_edge: ; preds = %do.body112.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kbuf_alloc_2_sgl.exit.i.i

do.end119.i.i.i:                                  ; preds = %do.body112.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name121.i.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 2
  %call123.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef %name121.i.i.i, i32 noundef %alloc_sz.030.i.i.i) #17
  br label %kbuf_alloc_2_sgl.exit.i.i

for.cond.preheader.i.i.i:                         ; preds = %do.end64.i.i.i, %do.end.i.i.i
  %numfrags.2.i.i.i = phi i32 [ %buflist_ent.0.ph.i.i.i, %do.end.i.i.i ], [ %277, %do.end64.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numfrags.2.i.i.i)
  %cmp13024.i.i.i = icmp sgt i32 %numfrags.2.i.i.i, 0
  br i1 %cmp13024.i.i.i, label %for.cond.preheader.i.i.i.for.body.preheader.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

for.cond.preheader.i.i.i.for.body.preheader.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.preheader.i.i.i

for.body.preheader.i.i.i:                         ; preds = %for.cond.preheader.i.i.i.for.body.preheader.i.i.i_crit_edge, %for.cond.preheader.thread.i.i.i
  %numfrags.249.i.i.i = phi i32 [ 75, %for.cond.preheader.thread.i.i.i ], [ %numfrags.2.i.i.i, %for.cond.preheader.i.i.i.for.body.preheader.i.i.i_crit_edge ]
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %cleanup.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.025.i.i.i = phi i32 [ %inc151.i.i.i, %cleanup.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %arrayidx135.i.i.i = getelementptr %struct._mpt_sge, ptr %call.i.i340.i.i, i32 %i.025.i.i.i
  %302 = ptrtoint ptr %arrayidx135.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx135.i.i.i, align 4
  %shr.mask.i.i.i = and i32 %303, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %shr.mask.i.i.i)
  %cmp137.i.i.i = icmp eq i32 %shr.mask.i.i.i, 805306368
  br i1 %cmp137.i.i.i, label %for.body.i.i.i.cleanup.i.i.i_crit_edge, label %if.end140.i.i.i

for.body.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i.i

if.end140.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %Address142.i.i.i = getelementptr %struct._mpt_sge, ptr %call.i.i340.i.i, i32 %i.025.i.i.i, i32 1
  %304 = ptrtoint ptr %Address142.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %Address142.i.i.i, align 4
  %arrayidx143.i.i.i = getelementptr %struct.buflist, ptr %call7.i.i.i.i.i, i32 %i.025.i.i.i
  %306 = ptrtoint ptr %arrayidx143.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %arrayidx143.i.i.i, align 8
  %len146.i.i.i = getelementptr %struct.buflist, ptr %call7.i.i.i.i.i, i32 %i.025.i.i.i, i32 1
  %308 = ptrtoint ptr %len146.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %len146.i.i.i, align 4
  %310 = ptrtoint ptr %pcidev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %pcidev.i.i.i, align 8
  %dev148.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %311, i32 0, i32 44
  call void @dma_free_attrs(ptr noundef %dev148.i.i.i, i32 noundef %309, ptr noundef %307, i32 noundef %305, i32 noundef 0) #14
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.end140.i.i.i, %for.body.i.i.i.cleanup.i.i.i_crit_edge
  %inc151.i.i.i = add nuw nsw i32 %i.025.i.i.i, 1
  %exitcond46.not.i.i.i = icmp eq i32 %inc151.i.i.i, %numfrags.249.i.i.i
  br i1 %exitcond46.not.i.i.i, label %cleanup.i.i.i.for.end.i.i.i_crit_edge, label %cleanup.i.i.i.for.body.i.i.i_crit_edge

cleanup.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

cleanup.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %cleanup.i.i.i.for.end.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge
  %312 = ptrtoint ptr %pcidev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %pcidev.i.i.i, align 8
  %dev153.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %313, i32 0, i32 44
  %314 = ptrtoint ptr %sgl_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %sgl_dma.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev153.i.i.i, i32 noundef 592, ptr noundef nonnull %call.i.i340.i.i, i32 noundef %315, i32 noundef 0) #14
  br label %if.end154.i.i.i

if.end154.i.i.i:                                  ; preds = %for.end.i.i.i, %if.end3.i.i.i.if.end154.i.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #14
  br label %kbuf_alloc_2_sgl.exit.thread.i.i

kbuf_alloc_2_sgl.exit.thread.i.i:                 ; preds = %if.end154.i.i.i, %if.end.i.i6.i.kbuf_alloc_2_sgl.exit.thread.i.i_crit_edge, %do.end36.i.i.kbuf_alloc_2_sgl.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i.i.i) #14
  br label %mptctl_do_fw_download.exit.i

kbuf_alloc_2_sgl.exit.i.i:                        ; preds = %do.end119.i.i.i, %do.body112.i.i.i.kbuf_alloc_2_sgl.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa.i.i.i) #14
  %316 = ptrtoint ptr %req_sz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %req_sz.i.i.i, align 8
  %sub53.i.i = add i32 %317, -28
  %318 = ptrtoint ptr %SGE_size.i.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %SGE_size.i.i.i, align 2
  %conv54.i.i = zext i8 %319 to i32
  %div.i.i193 = udiv i32 %sub53.i.i, %conv54.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %numfrags.1.i.i.i, i32 %div.i.i193)
  %cmp55.i.i194 = icmp sgt i32 %numfrags.1.i.i.i, %div.i.i193
  br i1 %cmp55.i.i194, label %kbuf_alloc_2_sgl.exit.i.i.fwdl_out.i.i_crit_edge, label %do.body59.i.i

kbuf_alloc_2_sgl.exit.i.i.fwdl_out.i.i_crit_edge: ; preds = %kbuf_alloc_2_sgl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fwdl_out.i.i

do.body59.i.i:                                    ; preds = %kbuf_alloc_2_sgl.exit.i.i
  %320 = ptrtoint ptr %debug_level.i.i180 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %debug_level.i.i180, align 4
  %and61.i.i = and i32 %321, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i)
  %tobool62.not.i.i = icmp eq i32 %and61.i.i, 0
  br i1 %tobool62.not.i.i, label %do.body59.i.i.do.end73.i.i_crit_edge, label %do.end66.i.i

do.body59.i.i.do.end73.i.i_crit_edge:             ; preds = %do.body59.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end73.i.i

do.end66.i.i:                                     ; preds = %do.body59.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name68.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 2
  %call70.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name68.i.i, ptr noundef nonnull %call.i.i340.i.i, i32 noundef %numfrags.1.i.i.i) #17
  br label %do.end73.i.i

do.end73.i.i:                                     ; preds = %do.end66.i.i, %do.body59.i.i.do.end73.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %numfrags.1.i.i.i)
  %cmp74393.i.i = icmp sgt i32 %numfrags.1.i.i.i, 0
  br i1 %cmp74393.i.i, label %for.body.lr.ph.i.i, label %do.end73.i.i.for.end.i.i_crit_edge

do.end73.i.i.for.end.i.i_crit_edge:               ; preds = %do.end73.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %do.end73.i.i
  %add_sge.i.i195 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 32
  br label %for.body.i.i196

for.body.i.i196:                                  ; preds = %if.end101.i.i.for.body.i.i196_crit_edge, %for.body.lr.ph.i.i
  %sgIn.0401.i.i = phi ptr [ %call.i.i340.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i229, %if.end101.i.i.for.body.i.i196_crit_edge ]
  %sgOut.0399.i.i = phi ptr [ %add.ptr.i.i186, %for.body.lr.ph.i.i ], [ %add.ptr105.i.i, %if.end101.i.i.for.body.i.i196_crit_edge ]
  %bl.0397.i.i = phi ptr [ %call7.i.i.i.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr102.i.i, %if.end101.i.i.for.body.i.i196_crit_edge ]
  %n.0396.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %n.1.i.i, %if.end101.i.i.for.body.i.i196_crit_edge ]
  %fw_bytes_copied.0395.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %fw_bytes_copied.1.i.i, %if.end101.i.i.for.body.i.i196_crit_edge ]
  %i.0394.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc106.i.i, %if.end101.i.i.for.body.i.i196_crit_edge ]
  %322 = ptrtoint ptr %sgIn.0401.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %sgIn.0401.i.i, align 4
  %and76.i.i = lshr i32 %323, 28
  %shr.i.i = and i32 %and76.i.i, 3
  %324 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %324, ptr @__sancov_gen_cov_switch_values.325)
  switch i32 %shr.i.i, label %if.else82.i.i [
    i32 0, label %for.body.i.i196.if.end101.i.i_crit_edge
    i32 3, label %for.body.i.i196.if.end101.i.i_crit_edge363
  ]

for.body.i.i196.if.end101.i.i_crit_edge363:       ; preds = %for.body.i.i196
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101.i.i

for.body.i.i196.if.end101.i.i_crit_edge:          ; preds = %for.body.i.i196
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101.i.i

if.else82.i.i:                                    ; preds = %for.body.i.i196
  %Address.i.i = getelementptr inbounds %struct._mpt_sge, ptr %sgIn.0401.i.i, i32 0, i32 1
  %325 = ptrtoint ptr %Address.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %Address.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %tobool83.not.i.i = icmp eq i32 %326, 0
  br i1 %tobool83.not.i.i, label %if.else82.i.i.if.end101.i.i_crit_edge, label %if.then84.i.i

if.else82.i.i.if.end101.i.i_crit_edge:            ; preds = %if.else82.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101.i.i

if.then84.i.i:                                    ; preds = %if.else82.i.i
  %327 = ptrtoint ptr %add_sge.i.i195 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %add_sge.i.i195, align 8
  call void %328(ptr noundef %sgOut.0399.i.i, i32 noundef %323, i32 noundef %326) #14
  %inc.i.i197 = add i32 %n.0396.i.i, 1
  %329 = ptrtoint ptr %bl.0397.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %bl.0397.i.i, align 4
  %add.ptr87.i.i = getelementptr i8, ptr %236, i32 %fw_bytes_copied.0395.i.i
  %len.i.i = getelementptr inbounds %struct.buflist, ptr %bl.0397.i.i, i32 0, i32 1
  %331 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %cmp9.i.i.i.i204 = icmp slt i32 %332, 0
  br i1 %cmp9.i.i.i.i204, label %land.rhs16.i.i.i.i207, label %if.then.i.i.i.i.i210

land.rhs16.i.i.i.i207:                            ; preds = %if.then84.i.i
  %.b71.i.i.i.i206 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i206, label %land.rhs16.i.i.i.i207.do.end93.i.i227_crit_edge, label %if.then27.i.i.i.i208, !prof !540

land.rhs16.i.i.i.i207.do.end93.i.i227_crit_edge:  ; preds = %land.rhs16.i.i.i.i207
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end93.i.i227

if.then27.i.i.i.i208:                             ; preds = %land.rhs16.i.i.i.i207
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %do.end93.i.i227

if.then.i.i.i.i.i210:                             ; preds = %if.then84.i.i
  call void @__check_object_size(ptr noundef %330, i32 noundef %332, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i.i8.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i8.i, label %if.then.i.i.i.i.i210.if.end.i.i.i.i223_crit_edge, label %land.lhs.true.i.i.i.i213

if.then.i.i.i.i.i210.if.end.i.i.i.i223_crit_edge: ; preds = %if.then.i.i.i.i.i210
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i.i223

land.lhs.true.i.i.i.i213:                         ; preds = %if.then.i.i.i.i.i210
  %333 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr87.i.i, i32 %332, i32 -1226833920) #18, !srcloc !539
  %asmresult.i.i.i.i211 = extractvalue { i32, i32 } %333, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i211)
  %cmp.i6.i.i.i212 = icmp eq i32 %asmresult.i.i.i.i211, 0
  br i1 %cmp.i6.i.i.i212, label %if.then.i7.i.i.i220, label %land.lhs.true.i.i.i.i213.if.end.i.i.i.i223_crit_edge, !prof !540

land.lhs.true.i.i.i.i213.if.end.i.i.i.i223_crit_edge: ; preds = %land.lhs.true.i.i.i.i213
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i.i223

if.then.i7.i.i.i220:                              ; preds = %land.lhs.true.i.i.i.i213
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i214 = call zeroext i1 @__kasan_check_write(ptr noundef %330, i32 noundef %332) #14
  %334 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i.i.i215 = and i32 %334, -16384
  %335 = inttoptr i32 %and.i.i.i.i.i.i.i.i215 to ptr
  %cpu_domain.i.i.i.i.i.i.i216 = getelementptr inbounds %struct.thread_info, ptr %335, i32 0, i32 4
  %336 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i216) #6, !srcloc !541
  %and.i.i.i.i.i.i217 = and i32 %336, -13
  %or.i.i.i.i.i.i218 = or i32 %and.i.i.i.i.i.i217, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i218) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i.i.i219 = call i32 @arm_copy_from_user(ptr noundef %330, ptr noundef %add.ptr87.i.i, i32 noundef %332) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %336) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  br label %if.end.i.i.i.i223

if.end.i.i.i.i223:                                ; preds = %if.then.i7.i.i.i220, %land.lhs.true.i.i.i.i213.if.end.i.i.i.i223_crit_edge, %if.then.i.i.i.i.i210.if.end.i.i.i.i223_crit_edge
  %res.0.i.i.i.i221 = phi i32 [ %332, %if.then.i.i.i.i.i210.if.end.i.i.i.i223_crit_edge ], [ %call1.i.i.i.i.i219, %if.then.i7.i.i.i220 ], [ %332, %land.lhs.true.i.i.i.i213.if.end.i.i.i.i223_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i221)
  %tobool4.not.i.i.i.i222 = icmp eq i32 %res.0.i.i.i.i221, 0
  br i1 %tobool4.not.i.i.i.i222, label %if.end98.i.i, label %if.then11.i.i.i.i226, !prof !540

if.then11.i.i.i.i226:                             ; preds = %if.end.i.i.i.i223
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i.i224 = sub i32 %332, %res.0.i.i.i.i221
  %add.ptr.i.i.i.i225 = getelementptr i8, ptr %330, i32 %sub.i.i.i.i224
  %337 = call ptr @memset(ptr %add.ptr.i.i.i.i225, i32 0, i32 %res.0.i.i.i.i221)
  br label %do.end93.i.i227

do.end93.i.i227:                                  ; preds = %if.then11.i.i.i.i226, %if.then27.i.i.i.i208, %land.rhs16.i.i.i.i207.do.end93.i.i227_crit_edge
  %name95.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 2
  %call97.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef %name95.i.i, ptr noundef nonnull @.str.5, i32 noundef 909, i32 noundef %inc.i.i197, ptr noundef %236) #17
  br label %fwdl_out.i.i

if.end98.i.i:                                     ; preds = %if.end.i.i.i.i223
  call void @__sanitizer_cov_trace_pc() #16
  %338 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %len.i.i, align 4
  %add.i.i228 = add i32 %339, %fw_bytes_copied.0395.i.i
  br label %if.end101.i.i

if.end101.i.i:                                    ; preds = %if.end98.i.i, %if.else82.i.i.if.end101.i.i_crit_edge, %for.body.i.i196.if.end101.i.i_crit_edge, %for.body.i.i196.if.end101.i.i_crit_edge363
  %fw_bytes_copied.1.i.i = phi i32 [ %fw_bytes_copied.0395.i.i, %for.body.i.i196.if.end101.i.i_crit_edge ], [ %add.i.i228, %if.end98.i.i ], [ %fw_bytes_copied.0395.i.i, %if.else82.i.i.if.end101.i.i_crit_edge ], [ %fw_bytes_copied.0395.i.i, %for.body.i.i196.if.end101.i.i_crit_edge363 ]
  %n.1.i.i = phi i32 [ %n.0396.i.i, %for.body.i.i196.if.end101.i.i_crit_edge ], [ %inc.i.i197, %if.end98.i.i ], [ %n.0396.i.i, %if.else82.i.i.if.end101.i.i_crit_edge ], [ %n.0396.i.i, %for.body.i.i196.if.end101.i.i_crit_edge363 ]
  %incdec.ptr.i.i229 = getelementptr %struct._mpt_sge, ptr %sgIn.0401.i.i, i32 1
  %incdec.ptr102.i.i = getelementptr %struct.buflist, ptr %bl.0397.i.i, i32 1
  %340 = ptrtoint ptr %SGE_size.i.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %SGE_size.i.i.i, align 2
  %conv104.i.i = zext i8 %341 to i32
  %add.ptr105.i.i = getelementptr i8, ptr %sgOut.0399.i.i, i32 %conv104.i.i
  %inc106.i.i = add nuw nsw i32 %i.0394.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc106.i.i, %numfrags.1.i.i.i
  br i1 %exitcond.not.i.i, label %if.end101.i.i.for.end.i.i_crit_edge, label %if.end101.i.i.for.body.i.i196_crit_edge

if.end101.i.i.for.body.i.i196_crit_edge:          ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i196

if.end101.i.i.for.end.i.i_crit_edge:              ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end101.i.i.for.end.i.i_crit_edge, %do.end73.i.i.for.end.i.i_crit_edge
  %MsgContext.i.i230 = getelementptr inbounds %struct._MSG_FW_DOWNLOAD, ptr %call.i.i177, i32 0, i32 6
  %342 = ptrtoint ptr %MsgContext.i.i230 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %MsgContext.i.i230, align 4
  %msg_context.i.i231 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 116, i32 6
  %344 = ptrtoint ptr %msg_context.i.i231 to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %343, ptr %msg_context.i.i231, align 4
  %status.i.i232 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 116, i32 4
  %345 = ptrtoint ptr %status.i.i232 to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 4, ptr %status.i.i232, align 4
  %346 = load i8, ptr @mptctl_id, align 1
  call void @mpt_put_msg_frame(i8 noundef zeroext %346, ptr noundef %225, ptr noundef %call.i.i177) #14
  %done.i.i233 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 116, i32 1
  %name120.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 2
  br label %retry_wait.i.i234

retry_wait.i.i234:                                ; preds = %if.end129.i.i.retry_wait.i.i234_crit_edge, %for.end.i.i
  %call109.i.i = call i32 @wait_for_completion_timeout(ptr noundef %done.i.i233, i32 noundef 6000) #14
  %347 = ptrtoint ptr %status.i.i232 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %status.i.i232, align 4
  %349 = and i8 %348, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %349)
  %tobool114.not.i.i = icmp eq i8 %349, 0
  br i1 %tobool114.not.i.i, label %if.then115.i.i, label %if.end142.i.i

if.then115.i.i:                                   ; preds = %retry_wait.i.i234
  %call122.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name120.i.i, ptr noundef nonnull @.str.105) #17
  %350 = ptrtoint ptr %status.i.i232 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %status.i.i232, align 4
  %352 = and i8 %351, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %352)
  %tobool127.not.i.i235 = icmp eq i8 %352, 0
  br i1 %tobool127.not.i.i235, label %if.end129.i.i, label %if.then128.i.i

if.then128.i.i:                                   ; preds = %if.then115.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @mpt_free_msg_frame(ptr noundef %225, ptr noundef %call.i.i177) #14
  br label %fwdl_out.i.i

if.end129.i.i:                                    ; preds = %if.then115.i.i
  %tobool130.not.i.i = icmp eq i32 %call109.i.i, 0
  br i1 %tobool130.not.i.i, label %do.end134.i.i, label %if.end129.i.i.retry_wait.i.i234_crit_edge

if.end129.i.i.retry_wait.i.i234_crit_edge:        ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry_wait.i.i234

do.end134.i.i:                                    ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call138.i.i = call i32 @mpt_GetIocState(ptr noundef %225, i32 noundef 0) #14
  %call139.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %name120.i.i, i32 noundef %call138.i.i) #17
  call fastcc void @mptctl_timeout_expired(ptr noundef %225, ptr noundef %call.i.i177) #14
  br label %fwdl_out.i.i

if.end142.i.i:                                    ; preds = %retry_wait.i.i234
  %353 = and i8 %348, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %353)
  %tobool147.not.i.i = icmp eq i8 %353, 0
  br i1 %tobool147.not.i.i, label %do.end151.i.i, label %if.then158.i.i

do.end151.i.i:                                    ; preds = %if.end142.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call155.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name120.i.i, ptr noundef nonnull @.str.105) #17
  call void @mpt_free_msg_frame(ptr noundef %225, ptr noundef %call.i.i177) #14
  br label %fwdl_out.i.i

if.then158.i.i:                                   ; preds = %if.end142.i.i
  %354 = ptrtoint ptr %sgl_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %sgl_dma.i.i, align 4
  call fastcc void @kfree_sgl(ptr noundef nonnull %call.i.i340.i.i, i32 noundef %355, ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %225) #14
  %IOCStatus.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 116, i32 2, i32 14
  %356 = ptrtoint ptr %IOCStatus.i.i to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %IOCStatus.i.i, align 2
  %358 = and i16 %357, -129
  %359 = zext i16 %358 to i64
  call void @__sanitizer_cov_trace_switch(i64 %359, ptr @__sancov_gen_cov_switch_values.326)
  switch i16 %358, label %do.end217.i.i236 [
    i16 0, label %do.end171.i.i
    i16 256, label %do.end183.i.i
    i16 512, label %do.end202.i.i
  ]

do.end171.i.i:                                    ; preds = %if.then158.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call175.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef %name120.i.i) #17
  br label %mptctl_do_fw_download.exit.i

do.end183.i.i:                                    ; preds = %if.then158.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call187.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %name120.i.i) #17
  %call194.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %name120.i.i) #17
  br label %mptctl_do_fw_download.exit.i

do.end202.i.i:                                    ; preds = %if.then158.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call206.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %name120.i.i) #17
  %call213.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %name120.i.i) #17
  br label %mptctl_do_fw_download.exit.i

do.end217.i.i236:                                 ; preds = %if.then158.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %360 = call i16 @llvm.bswap.i16(i16 %358) #14
  %conv165.i.i = zext i16 %360 to i32
  %call222.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %name120.i.i, i32 noundef %conv165.i.i) #17
  %call229.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef %name120.i.i) #17
  br label %mptctl_do_fw_download.exit.i

fwdl_out.i.i:                                     ; preds = %do.end151.i.i, %do.end134.i.i, %if.then128.i.i, %do.end93.i.i227, %kbuf_alloc_2_sgl.exit.i.i.fwdl_out.i.i_crit_edge
  %ret.0.i.i = phi i32 [ -14, %do.end93.i.i227 ], [ -61, %do.end151.i.i ], [ -62, %if.then128.i.i ], [ -62, %do.end134.i.i ], [ -31, %kbuf_alloc_2_sgl.exit.i.i.fwdl_out.i.i_crit_edge ]
  %status231.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 116, i32 4
  %361 = ptrtoint ptr %status231.i.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 0, ptr %status231.i.i, align 4
  %msg_context233.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %225, i32 0, i32 116, i32 6
  %362 = ptrtoint ptr %msg_context233.i.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 0, ptr %msg_context233.i.i, align 4
  %363 = ptrtoint ptr %sgl_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %sgl_dma.i.i, align 4
  call fastcc void @kfree_sgl(ptr noundef nonnull %call.i.i340.i.i, i32 noundef %364, ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %225) #14
  br label %mptctl_do_fw_download.exit.i

mptctl_do_fw_download.exit.i:                     ; preds = %fwdl_out.i.i, %do.end217.i.i236, %do.end202.i.i, %do.end183.i.i, %do.end171.i.i, %kbuf_alloc_2_sgl.exit.thread.i.i, %if.end.i179.mptctl_do_fw_download.exit.i_crit_edge
  %retval.0.i.i237 = phi i32 [ %ret.0.i.i, %fwdl_out.i.i ], [ 0, %do.end171.i.i ], [ -56, %do.end183.i.i ], [ -16, %do.end202.i.i ], [ -42, %do.end217.i.i236 ], [ -11, %if.end.i179.mptctl_do_fw_download.exit.i_crit_edge ], [ -12, %kbuf_alloc_2_sgl.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sgl_dma.i.i) #14
  br label %mptctl_fw_download.exit

mptctl_fw_download.exit:                          ; preds = %mptctl_do_fw_download.exit.i, %if.then11.i.i.i176
  %retval.0.i238 = phi i32 [ -14, %if.then11.i.i.i176 ], [ %retval.0.i.i237, %mptctl_do_fw_download.exit.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %kfwdl.i) #14
  br label %if.end82.i

if.then60.i:                                      ; preds = %if.end54.i
  %365 = ptrtoint ptr %iocp.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %iocp.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %karg.i88) #14
  %367 = call ptr @memset(ptr %karg.i88, i32 255, i32 56)
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i.i89 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i89, label %if.then60.i.if.then11.i.i.i104_crit_edge, label %land.lhs.true.i.i.i92

if.then60.i.if.then11.i.i.i104_crit_edge:         ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i104

land.lhs.true.i.i.i92:                            ; preds = %if.then60.i
  %368 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 56, i32 -1226833920) #18, !srcloc !539
  %asmresult.i.i.i90 = extractvalue { i32, i32 } %368, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i90)
  %cmp.i6.i.i91 = icmp eq i32 %asmresult.i.i.i90, 0
  br i1 %cmp.i6.i.i91, label %if.end.i.i.i100, label %land.lhs.true.i.i.i92.if.then11.i.i.i104_crit_edge, !prof !540

land.lhs.true.i.i.i92.if.then11.i.i.i104_crit_edge: ; preds = %land.lhs.true.i.i.i92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i104

if.end.i.i.i100:                                  ; preds = %land.lhs.true.i.i.i92
  %call.i.i.i.i93 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg.i88, i32 noundef 56) #14
  %369 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i.i94 = and i32 %369, -16384
  %370 = inttoptr i32 %and.i.i.i.i.i.i.i94 to ptr
  %cpu_domain.i.i.i.i.i.i95 = getelementptr inbounds %struct.thread_info, ptr %370, i32 0, i32 4
  %371 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i95) #6, !srcloc !541
  %and.i.i.i.i.i96 = and i32 %371, -13
  %or.i.i.i.i.i97 = or i32 %and.i.i.i.i.i96, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i97) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i.i98 = call i32 @arm_copy_from_user(ptr noundef nonnull %karg.i88, ptr noundef %0, i32 noundef 56) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %371) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i98)
  %tobool4.not.i.i.i99 = icmp eq i32 %call1.i.i.i.i98, 0
  br i1 %tobool4.not.i.i.i99, label %if.end.i106, label %if.end.i.i.i100.if.then11.i.i.i104_crit_edge, !prof !540

if.end.i.i.i100.if.then11.i.i.i104_crit_edge:     ; preds = %if.end.i.i.i100
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i104

if.then11.i.i.i104:                               ; preds = %if.end.i.i.i100.if.then11.i.i.i104_crit_edge, %land.lhs.true.i.i.i92.if.then11.i.i.i104_crit_edge, %if.then60.i.if.then11.i.i.i104_crit_edge
  %res.0.i.i12.i = phi i32 [ %call1.i.i.i.i98, %if.end.i.i.i100.if.then11.i.i.i104_crit_edge ], [ 56, %if.then60.i.if.then11.i.i.i104_crit_edge ], [ 56, %land.lhs.true.i.i.i92.if.then11.i.i.i104_crit_edge ]
  %sub.i.i.i101 = sub i32 56, %res.0.i.i12.i
  %add.ptr.i.i.i102 = getelementptr i8, ptr %karg.i88, i32 %sub.i.i.i101
  %372 = call ptr @memset(ptr %add.ptr.i.i.i102, i32 0, i32 %res.0.i.i12.i)
  %call1.i103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.5, i32 noundef 1711, ptr noundef %0) #17
  br label %mptctl_mpt_command.exit

if.end.i106:                                      ; preds = %if.end.i.i.i100
  %MF.i = getelementptr inbounds %struct.mpt_ioctl_command, ptr %0, i32 0, i32 11
  %.fca.3.gep.i = getelementptr inbounds [14 x i32], ptr %karg.i88, i32 0, i32 3
  %373 = ptrtoint ptr %.fca.3.gep.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %.fca.3.load.i = load i32, ptr %.fca.3.gep.i, align 4
  %.fca.4.gep.i = getelementptr inbounds [14 x i32], ptr %karg.i88, i32 0, i32 4
  %374 = ptrtoint ptr %.fca.4.gep.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %.fca.4.load.i = load i32, ptr %.fca.4.gep.i, align 4
  %.fca.5.gep.i = getelementptr inbounds [14 x i32], ptr %karg.i88, i32 0, i32 5
  %375 = ptrtoint ptr %.fca.5.gep.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %.fca.5.load.i = load i32, ptr %.fca.5.gep.i, align 4
  %.fca.6.gep.i = getelementptr inbounds [14 x i32], ptr %karg.i88, i32 0, i32 6
  %376 = ptrtoint ptr %.fca.6.gep.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %.fca.6.load.i = load i32, ptr %.fca.6.gep.i, align 4
  %.fca.7.gep.i = getelementptr inbounds [14 x i32], ptr %karg.i88, i32 0, i32 7
  %377 = ptrtoint ptr %.fca.7.gep.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %.fca.7.load.i = load i32, ptr %.fca.7.gep.i, align 4
  %.fca.8.gep.i = getelementptr inbounds [14 x i32], ptr %karg.i88, i32 0, i32 8
  %378 = ptrtoint ptr %.fca.8.gep.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %.fca.8.load.i = load i32, ptr %.fca.8.gep.i, align 4
  %.fca.9.gep.i = getelementptr inbounds [14 x i32], ptr %karg.i88, i32 0, i32 9
  %379 = ptrtoint ptr %.fca.9.gep.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %.fca.9.load.i = load i32, ptr %.fca.9.gep.i, align 4
  %.fca.10.gep.i = getelementptr inbounds [14 x i32], ptr %karg.i88, i32 0, i32 10
  %380 = ptrtoint ptr %.fca.10.gep.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %.fca.10.load.i = load i32, ptr %.fca.10.gep.i, align 4
  %.fca.11.gep.i = getelementptr inbounds [14 x i32], ptr %karg.i88, i32 0, i32 11
  %381 = ptrtoint ptr %.fca.11.gep.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %.fca.11.load.i = load i32, ptr %.fca.11.gep.i, align 4
  %.fca.12.gep.i = getelementptr inbounds [14 x i32], ptr %karg.i88, i32 0, i32 12
  %382 = ptrtoint ptr %.fca.12.gep.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %.fca.12.load.i = load i32, ptr %.fca.12.gep.i, align 4
  %383 = inttoptr i32 %.fca.4.load.i to ptr
  %384 = inttoptr i32 %.fca.5.load.i to ptr
  %385 = inttoptr i32 %.fca.6.load.i to ptr
  %386 = inttoptr i32 %.fca.7.load.i to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr_in.i.i) #14
  %387 = ptrtoint ptr %dma_addr_in.i.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 -1, ptr %dma_addr_in.i.i, align 4, !annotation !538
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr_out.i.i) #14
  %388 = ptrtoint ptr %dma_addr_out.i.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 -1, ptr %dma_addr_out.i.i, align 4, !annotation !538
  %taskmgmt_lock.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 117
  %call4.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %taskmgmt_lock.i.i) #14
  %ioc_reset_in_progress.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 120
  %389 = ptrtoint ptr %ioc_reset_in_progress.i.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %ioc_reset_in_progress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %390)
  %tobool.not.i.i105 = icmp eq i8 %390, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %taskmgmt_lock.i.i, i32 noundef %call4.i.i) #14
  br i1 %tobool.not.i.i105, label %if.end.i.i, label %if.then.i.i107

if.then.i.i107:                                   ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #16
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.5, i32 noundef 1762) #17
  br label %mptctl_do_mpt_command.exit.i

if.end.i.i:                                       ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.fca.8.load.i)
  %cmp14.i.i = icmp slt i32 %.fca.8.load.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.fca.9.load.i)
  %cmp16.i.i = icmp slt i32 %.fca.9.load.i, 0
  %or.cond.i.i = select i1 %cmp14.i.i, i1 true, i1 %cmp16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.fca.10.load.i)
  %cmp19.i.i = icmp slt i32 %.fca.10.load.i, 0
  %or.cond954.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.fca.12.load.i)
  %cmp22.i.i = icmp slt i32 %.fca.12.load.i, 0
  %or.cond955.i.i = select i1 %or.cond954.i.i, i1 true, i1 %cmp22.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.fca.11.load.i)
  %cmp25.i.i = icmp slt i32 %.fca.11.load.i, 0
  %or.cond956.i.i = select i1 %or.cond955.i.i, i1 true, i1 %cmp25.i.i
  br i1 %or.cond956.i.i, label %if.end.i.i.mptctl_do_mpt_command.exit.i_crit_edge, label %lor.lhs.false27.i.i

if.end.i.i.mptctl_do_mpt_command.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_do_mpt_command.exit.i

lor.lhs.false27.i.i:                              ; preds = %if.end.i.i
  %req_sz.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 45
  %391 = ptrtoint ptr %req_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %req_sz.i.i, align 8
  %div.i.i = sdiv i32 %392, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.fca.12.load.i, i32 %div.i.i)
  %cmp29.i.i = icmp sgt i32 %.fca.12.load.i, %div.i.i
  br i1 %cmp29.i.i, label %lor.lhs.false27.i.i.mptctl_do_mpt_command.exit.i_crit_edge, label %if.end32.i.i109

lor.lhs.false27.i.i.mptctl_do_mpt_command.exit.i_crit_edge: ; preds = %lor.lhs.false27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_do_mpt_command.exit.i

if.end32.i.i109:                                  ; preds = %lor.lhs.false27.i.i
  %mul.i.i108 = shl i32 %.fca.12.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.fca.9.load.i)
  %cmp35.not.i.i = icmp eq i32 %.fca.9.load.i, 0
  br i1 %cmp35.not.i.i, label %if.end32.i.i109.if.end39.i.i_crit_edge, label %if.then37.i.i

if.end32.i.i109.if.end39.i.i_crit_edge:           ; preds = %if.end32.i.i109
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39.i.i

if.then37.i.i:                                    ; preds = %if.end32.i.i109
  call void @__sanitizer_cov_trace_pc() #16
  %SGE_size.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 146
  %393 = ptrtoint ptr %SGE_size.i.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %SGE_size.i.i, align 2
  %conv38.i.i = zext i8 %394 to i32
  %add.i.i110 = add i32 %mul.i.i108, %conv38.i.i
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then37.i.i, %if.end32.i.i109.if.end39.i.i_crit_edge
  %sz.0.i.i = phi i32 [ %add.i.i110, %if.then37.i.i ], [ %mul.i.i108, %if.end32.i.i109.if.end39.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.fca.10.load.i)
  %cmp41.not.i.i = icmp eq i32 %.fca.10.load.i, 0
  br i1 %cmp41.not.i.i, label %if.end39.i.i.if.end47.i.i_crit_edge, label %if.then43.i.i

if.end39.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47.i.i

if.then43.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %SGE_size44.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 146
  %395 = ptrtoint ptr %SGE_size44.i.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %SGE_size44.i.i, align 2
  %conv45.i.i = zext i8 %396 to i32
  %add46.i.i = add i32 %sz.0.i.i, %conv45.i.i
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.then43.i.i, %if.end39.i.i.if.end47.i.i_crit_edge
  %sz.1.i.i = phi i32 [ %add46.i.i, %if.then43.i.i ], [ %sz.0.i.i, %if.end39.i.i.if.end47.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.1.i.i, i32 %392)
  %cmp49.i.i = icmp sgt i32 %sz.1.i.i, %392
  br i1 %cmp49.i.i, label %do.end54.i.i, label %if.end58.i.i112

do.end54.i.i:                                     ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i.i111 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %call57.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef %name.i.i111, ptr noundef nonnull @.str.5, i32 noundef 1787, i32 noundef %sz.1.i.i, i32 noundef %392) #17
  br label %mptctl_do_mpt_command.exit.i

if.end58.i.i112:                                  ; preds = %if.end47.i.i
  %397 = load i8, ptr @mptctl_id, align 1
  %call59.i.i = call ptr @mpt_get_msg_frame(i8 noundef zeroext %397, ptr noundef %366) #14
  %cmp60.i.i = icmp eq ptr %call59.i.i, null
  br i1 %cmp60.i.i, label %if.end58.i.i112.mptctl_do_mpt_command.exit.i_crit_edge, label %if.end63.i.i

if.end58.i.i112.mptctl_do_mpt_command.exit.i_crit_edge: ; preds = %if.end58.i.i112
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_do_mpt_command.exit.i

if.end63.i.i:                                     ; preds = %if.end58.i.i112
  %MsgContext.i.i = getelementptr inbounds %struct._MSG_REQUEST_HEADER, ptr %call59.i.i, i32 0, i32 5
  %398 = ptrtoint ptr %MsgContext.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %MsgContext.i.i, align 4
  %400 = lshr i32 %399, 16
  %401 = trunc i32 %400 to i16
  %402 = call i16 @llvm.bswap.i16(i16 %401) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i108)
  %cmp9.i.i.i.i119 = icmp slt i32 %mul.i.i108, 0
  br i1 %cmp9.i.i.i.i119, label %land.rhs16.i.i.i.i122, label %if.then.i.i.i.i.i125

land.rhs16.i.i.i.i122:                            ; preds = %if.end63.i.i
  %.b71.i.i.i.i121 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i121, label %land.rhs16.i.i.i.i122.do.end72.i.i142_crit_edge, label %if.then27.i.i.i.i123, !prof !540

land.rhs16.i.i.i.i122.do.end72.i.i142_crit_edge:  ; preds = %land.rhs16.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end72.i.i142

if.then27.i.i.i.i123:                             ; preds = %land.rhs16.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %do.end72.i.i142

if.then.i.i.i.i.i125:                             ; preds = %if.end63.i.i
  call void @__check_object_size(ptr noundef nonnull %call59.i.i, i32 noundef %mul.i.i108, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i.i7.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i7.i, label %if.then.i.i.i.i.i125.if.end.i.i.i.i136_crit_edge, label %land.lhs.true.i.i.i.i128

if.then.i.i.i.i.i125.if.end.i.i.i.i136_crit_edge: ; preds = %if.then.i.i.i.i.i125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i.i136

land.lhs.true.i.i.i.i128:                         ; preds = %if.then.i.i.i.i.i125
  %403 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %MF.i, i32 %mul.i.i108, i32 -1226833920) #18, !srcloc !539
  %asmresult.i.i.i.i126 = extractvalue { i32, i32 } %403, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i126)
  %cmp.i6.i.i.i127 = icmp eq i32 %asmresult.i.i.i.i126, 0
  br i1 %cmp.i6.i.i.i127, label %if.then.i7.i.i.i, label %land.lhs.true.i.i.i.i128.if.end.i.i.i.i136_crit_edge, !prof !540

land.lhs.true.i.i.i.i128.if.end.i.i.i.i136_crit_edge: ; preds = %land.lhs.true.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i.i136

if.then.i7.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i.i.i129 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call59.i.i, i32 noundef %mul.i.i108) #14
  %404 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i.i.i130 = and i32 %404, -16384
  %405 = inttoptr i32 %and.i.i.i.i.i.i.i.i130 to ptr
  %cpu_domain.i.i.i.i.i.i.i131 = getelementptr inbounds %struct.thread_info, ptr %405, i32 0, i32 4
  %406 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i131) #6, !srcloc !541
  %and.i.i.i.i.i.i132 = and i32 %406, -13
  %or.i.i.i.i.i.i133 = or i32 %and.i.i.i.i.i.i132, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i133) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i.i.i134 = call i32 @arm_copy_from_user(ptr noundef nonnull %call59.i.i, ptr noundef %MF.i, i32 noundef %mul.i.i108) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %406) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  br label %if.end.i.i.i.i136

if.end.i.i.i.i136:                                ; preds = %if.then.i7.i.i.i, %land.lhs.true.i.i.i.i128.if.end.i.i.i.i136_crit_edge, %if.then.i.i.i.i.i125.if.end.i.i.i.i136_crit_edge
  %res.0.i.i.i.i = phi i32 [ %mul.i.i108, %if.then.i.i.i.i.i125.if.end.i.i.i.i136_crit_edge ], [ %call1.i.i.i.i.i134, %if.then.i7.i.i.i ], [ %mul.i.i108, %land.lhs.true.i.i.i.i128.if.end.i.i.i.i136_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i.i)
  %tobool4.not.i.i.i.i135 = icmp eq i32 %res.0.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i135, label %if.end77.i.i146, label %if.then11.i.i.i.i139, !prof !540

if.then11.i.i.i.i139:                             ; preds = %if.end.i.i.i.i136
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i.i137 = sub i32 %mul.i.i108, %res.0.i.i.i.i
  %add.ptr.i.i.i.i138 = getelementptr i8, ptr %call59.i.i, i32 %sub.i.i.i.i137
  %407 = call ptr @memset(ptr %add.ptr.i.i.i.i138, i32 0, i32 %res.0.i.i.i.i)
  br label %do.end72.i.i142

do.end72.i.i142:                                  ; preds = %if.then11.i.i.i.i139, %if.then27.i.i.i.i123, %land.rhs16.i.i.i.i122.do.end72.i.i142_crit_edge
  %name74.i.i140 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %call76.i.i141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef %name74.i.i140, ptr noundef nonnull @.str.5, i32 noundef 1807, ptr noundef %MF.i) #17
  br label %if.end700.thread.i.i

if.end77.i.i146:                                  ; preds = %if.end.i.i.i.i136
  %408 = ptrtoint ptr %MsgContext.i.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %399, ptr %MsgContext.i.i, align 4
  %Function.i.i = getelementptr inbounds %struct._MSG_REQUEST_HEADER, ptr %call59.i.i, i32 0, i32 2
  %409 = ptrtoint ptr %Function.i.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %Function.i.i, align 1
  %debug_level.i.i143 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 10
  %411 = ptrtoint ptr %debug_level.i.i143 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %debug_level.i.i143, align 4
  %and.i.i144 = and i32 %412, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i144)
  %tobool80.not.i.i145 = icmp eq i32 %and.i.i144, 0
  br i1 %tobool80.not.i.i145, label %if.end77.do.end93_crit_edge.i.i, label %do.end84.i.i148

if.end77.do.end93_crit_edge.i.i:                  ; preds = %if.end77.i.i146
  call void @__sanitizer_cov_trace_pc() #16
  %.pre.i.i = zext i8 %410 to i32
  br label %do.end93.i.i

do.end84.i.i148:                                  ; preds = %if.end77.i.i146
  call void @__sanitizer_cov_trace_pc() #16
  %name86.i.i147 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %conv89.i.i = zext i8 %410 to i32
  %call90.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, ptr noundef %name86.i.i147, i32 noundef %conv89.i.i, ptr noundef nonnull %call59.i.i) #17
  br label %do.end93.i.i

do.end93.i.i:                                     ; preds = %do.end84.i.i148, %if.end77.do.end93_crit_edge.i.i
  %conv94.pre-phi.i.i = phi i32 [ %.pre.i.i, %if.end77.do.end93_crit_edge.i.i ], [ %conv89.i.i, %do.end84.i.i148 ]
  %413 = zext i8 %410 to i64
  call void @__sanitizer_cov_trace_switch(i64 %413, ptr @__sancov_gen_cov_switch_values.327)
  switch i8 %410, label %do.end360.i.i [
    i8 3, label %do.end93.i.i.sw.bb.i.i_crit_edge
    i8 5, label %do.end93.i.i.sw.bb.i.i_crit_edge364
    i8 4, label %sw.bb97.i.i
    i8 19, label %do.end93.i.i.sw.epilog.i.i_crit_edge
    i8 16, label %do.end93.i.i.sw.epilog.i.i_crit_edge365
    i8 18, label %do.end93.i.i.sw.epilog.i.i_crit_edge366
    i8 24, label %do.end93.i.i.sw.epilog.i.i_crit_edge367
    i8 9, label %do.end93.i.i.sw.epilog.i.i_crit_edge368
    i8 20, label %do.end93.i.i.sw.epilog.i.i_crit_edge369
    i8 23, label %do.end93.i.i.sw.epilog.i.i_crit_edge370
    i8 27, label %do.end93.i.i.sw.epilog.i.i_crit_edge371
    i8 0, label %sw.bb119.i.i
    i8 26, label %do.end93.i.i.sw.epilog.i.i_crit_edge372
    i8 28, label %sw.bb223.i.i
    i8 21, label %do.end93.i.i.sw.epilog.i.i_crit_edge373
    i8 22, label %sw.bb235.i.i
    i8 1, label %sw.bb291.i.i
    i8 2, label %sw.bb315.i.i
  ]

do.end93.i.i.sw.epilog.i.i_crit_edge373:          ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end93.i.i.sw.epilog.i.i_crit_edge372:          ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end93.i.i.sw.epilog.i.i_crit_edge371:          ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end93.i.i.sw.epilog.i.i_crit_edge370:          ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end93.i.i.sw.epilog.i.i_crit_edge369:          ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end93.i.i.sw.epilog.i.i_crit_edge368:          ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end93.i.i.sw.epilog.i.i_crit_edge367:          ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end93.i.i.sw.epilog.i.i_crit_edge366:          ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end93.i.i.sw.epilog.i.i_crit_edge365:          ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end93.i.i.sw.epilog.i.i_crit_edge:             ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end93.i.i.sw.bb.i.i_crit_edge364:              ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

do.end93.i.i.sw.bb.i.i_crit_edge:                 ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %do.end93.i.i.sw.bb.i.i_crit_edge, %do.end93.i.i.sw.bb.i.i_crit_edge364
  br label %sw.epilog.i.i

sw.bb97.i.i:                                      ; preds = %do.end93.i.i
  %414 = ptrtoint ptr %debug_level.i.i143 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %debug_level.i.i143, align 4
  %and100.i.i = and i32 %415, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i.i)
  %tobool101.not.i.i = icmp eq i32 %and100.i.i, 0
  br i1 %tobool101.not.i.i, label %sw.bb97.i.i.sw.epilog.i.i_crit_edge, label %do.end105.i.i

sw.bb97.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb97.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end105.i.i:                                    ; preds = %sw.bb97.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name107.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %PageType.i.i = getelementptr inbounds %struct._MSG_CONFIG, ptr %call59.i.i, i32 0, i32 9, i32 3
  %416 = ptrtoint ptr %PageType.i.i to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %PageType.i.i, align 1
  %conv109.i.i = zext i8 %417 to i32
  %ExtPageType.i.i = getelementptr inbounds %struct._MSG_CONFIG, ptr %call59.i.i, i32 0, i32 5
  %418 = ptrtoint ptr %ExtPageType.i.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %ExtPageType.i.i, align 2
  %conv110.i.i = zext i8 %419 to i32
  %PageNumber.i.i = getelementptr inbounds %struct._MSG_CONFIG, ptr %call59.i.i, i32 0, i32 9, i32 2
  %420 = ptrtoint ptr %PageNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %PageNumber.i.i, align 2
  %conv112.i.i = zext i8 %421 to i32
  %422 = ptrtoint ptr %call59.i.i to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %call59.i.i, align 4
  %conv113.i.i = zext i8 %423 to i32
  %call114.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef %name107.i.i, i32 noundef %conv109.i.i, i32 noundef %conv110.i.i, i32 noundef %conv112.i.i, i32 noundef %conv113.i.i) #17
  br label %sw.epilog.i.i

sw.bb119.i.i:                                     ; preds = %do.end93.i.i
  %sh.i.i149 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 58
  %424 = ptrtoint ptr %sh.i.i149 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %sh.i.i149, align 8
  %tobool120.not.i.i = icmp eq ptr %425, null
  br i1 %tobool120.not.i.i, label %do.end217.i.i, label %if.then121.i.i

if.then121.i.i:                                   ; preds = %sw.bb119.i.i
  %devices_per_bus.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 20
  %426 = ptrtoint ptr %devices_per_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %devices_per_bus.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %427)
  %cmp122.i.i = icmp eq i32 %427, 0
  %spec.select.i.i150 = select i1 %cmp122.i.i, i32 256, i32 %427
  %428 = ptrtoint ptr %call59.i.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %call59.i.i, align 4
  %conv125.i.i = zext i8 %429 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i150, i32 %conv125.i.i)
  %cmp126.i.i = icmp ult i32 %spec.select.i.i150, %conv125.i.i
  br i1 %cmp126.i.i, label %do.end131.i.i, label %if.end136.i.i

do.end131.i.i:                                    ; preds = %if.then121.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name133.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %call135.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef %name133.i.i, ptr noundef nonnull @.str.5, i32 noundef 1862) #17
  br label %if.end700.thread.i.i

if.end136.i.i:                                    ; preds = %if.then121.i.i
  %Bus.i.i = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %call59.i.i, i32 0, i32 1
  %430 = ptrtoint ptr %Bus.i.i to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %Bus.i.i, align 1
  %conv137.i.i = zext i8 %431 to i32
  %number_of_buses.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 19
  %432 = ptrtoint ptr %number_of_buses.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %number_of_buses.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %433, i32 %conv137.i.i)
  %cmp138.not.i.i = icmp sgt i32 %433, %conv137.i.i
  br i1 %cmp138.not.i.i, label %if.end148.i.i, label %do.end143.i.i

do.end143.i.i:                                    ; preds = %if.end136.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name145.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %call147.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, ptr noundef %name145.i.i, ptr noundef nonnull @.str.5, i32 noundef 1870) #17
  br label %if.end700.thread.i.i

if.end148.i.i:                                    ; preds = %if.end136.i.i
  %MsgFlags.i.i = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %call59.i.i, i32 0, i32 7
  %434 = ptrtoint ptr %MsgFlags.i.i to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %MsgFlags.i.i, align 1
  %436 = and i8 %435, -2
  store i8 %436, ptr %MsgFlags.i.i, align 1
  %sg_addr_size.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 144
  %437 = ptrtoint ptr %sg_addr_size.i.i to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %sg_addr_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %438)
  %cmp153.i.i = icmp eq i8 %438, 8
  %cond155.i.i = zext i1 %cmp153.i.i to i8
  %or.i.i = or i8 %436, %cond155.i.i
  %439 = ptrtoint ptr %MsgFlags.i.i to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 %or.i.i, ptr %MsgFlags.i.i, align 1
  %440 = call i32 @llvm.umin.i32(i32 %.fca.11.load.i, i32 64) #14
  %441 = trunc i32 %440 to i8
  %442 = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %call59.i.i, i32 0, i32 5
  %443 = ptrtoint ptr %442 to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 %441, ptr %442, align 1
  %sense_buf_low_dma.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 50
  %444 = ptrtoint ptr %sense_buf_low_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %sense_buf_low_dma.i.i, align 8
  %conv167.i.i = zext i16 %402 to i32
  %mul168.i.i = shl nuw nsw i32 %conv167.i.i, 6
  %add169.i.i = add i32 %445, %mul168.i.i
  %446 = call i32 @llvm.bswap.i32(i32 %add169.i.i) #14
  %SenseBufferLowAddr.i.i = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %call59.i.i, i32 0, i32 13
  %447 = ptrtoint ptr %SenseBufferLowAddr.i.i to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 %446, ptr %SenseBufferLowAddr.i.i, align 4
  %448 = ptrtoint ptr %sh.i.i149 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %sh.i.i149, align 8
  %call171.i.i = call ptr @__scsi_iterate_devices(ptr noundef %449, ptr noundef null) #14
  %tobool172.not1119.i.i = icmp eq ptr %call171.i.i, null
  br i1 %tobool172.not1119.i.i, label %if.end148.i.i.cleanup207.i.i_crit_edge, label %if.end148.i.i.for.body.i.i152_crit_edge

if.end148.i.i.for.body.i.i152_crit_edge:          ; preds = %if.end148.i.i
  br label %for.body.i.i152

if.end148.i.i.cleanup207.i.i_crit_edge:           ; preds = %if.end148.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup207.i.i

for.body.i.i152:                                  ; preds = %cleanup.i.i.for.body.i.i152_crit_edge, %if.end148.i.i.for.body.i.i152_crit_edge
  %sdev.01121.i.i = phi ptr [ %call197.i.i, %cleanup.i.i.for.body.i.i152_crit_edge ], [ %call171.i.i, %if.end148.i.i.for.body.i.i152_crit_edge ]
  %qtag.01120.i.i = phi i32 [ %qtag.2.i.i, %cleanup.i.i.for.body.i.i152_crit_edge ], [ 1280, %if.end148.i.i.for.body.i.i152_crit_edge ]
  %parent.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.01121.i.i, i32 0, i32 55, i32 1
  %450 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %parent.i.i.i, align 8
  %hostdata.i.i151 = getelementptr i8, ptr %451, i32 968
  %452 = ptrtoint ptr %hostdata.i.i151 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %hostdata.i.i151, align 8
  %cmp174.i.i = icmp eq ptr %453, null
  br i1 %cmp174.i.i, label %for.body.i.i152.cleanup.i.i_crit_edge, label %if.end177.i.i

for.body.i.i152.cleanup.i.i_crit_edge:            ; preds = %for.body.i.i152
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

if.end177.i.i:                                    ; preds = %for.body.i.i152
  %454 = ptrtoint ptr %call59.i.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %call59.i.i, align 4
  %id180.i.i = getelementptr inbounds %struct._VirtTarget, ptr %453, i32 0, i32 3
  %456 = ptrtoint ptr %id180.i.i to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %id180.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %455, i8 %457)
  %cmp182.i.i = icmp eq i8 %455, %457
  br i1 %cmp182.i.i, label %land.lhs.true.i.i, label %if.end177.i.i.cleanup.i.i_crit_edge

if.end177.i.i.cleanup.i.i_crit_edge:              ; preds = %if.end177.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

land.lhs.true.i.i:                                ; preds = %if.end177.i.i
  %458 = ptrtoint ptr %Bus.i.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %Bus.i.i, align 1
  %channel.i.i153 = getelementptr inbounds %struct._VirtTarget, ptr %453, i32 0, i32 4
  %460 = ptrtoint ptr %channel.i.i153 to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %channel.i.i153, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %459, i8 %461)
  %cmp187.i.i = icmp eq i8 %459, %461
  br i1 %cmp187.i.i, label %land.lhs.true189.i.i, label %land.lhs.true.i.i.cleanup.i.i_crit_edge

land.lhs.true.i.i.cleanup.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

land.lhs.true189.i.i:                             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %tflags.i.i154 = getelementptr inbounds %struct._VirtTarget, ptr %453, i32 0, i32 1
  %462 = ptrtoint ptr %tflags.i.i154 to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %tflags.i.i154, align 4
  %464 = and i8 %463, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %464)
  %tobool192.not.i.i = icmp eq i8 %464, 0
  %spec.select957.i.i = select i1 %tobool192.not.i.i, i32 %qtag.01120.i.i, i32 0
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %land.lhs.true189.i.i, %land.lhs.true.i.i.cleanup.i.i_crit_edge, %if.end177.i.i.cleanup.i.i_crit_edge, %for.body.i.i152.cleanup.i.i_crit_edge
  %qtag.2.i.i = phi i32 [ %qtag.01120.i.i, %for.body.i.i152.cleanup.i.i_crit_edge ], [ %qtag.01120.i.i, %land.lhs.true.i.i.cleanup.i.i_crit_edge ], [ %qtag.01120.i.i, %if.end177.i.i.cleanup.i.i_crit_edge ], [ %spec.select957.i.i, %land.lhs.true189.i.i ]
  %465 = ptrtoint ptr %sh.i.i149 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %sh.i.i149, align 8
  %call197.i.i = call ptr @__scsi_iterate_devices(ptr noundef %466, ptr noundef nonnull %sdev.01121.i.i) #14
  %tobool172.not.i.i = icmp eq ptr %call197.i.i, null
  br i1 %tobool172.not.i.i, label %cleanup.i.i.cleanup207.i.i_crit_edge, label %cleanup.i.i.for.body.i.i152_crit_edge

cleanup.i.i.for.body.i.i152_crit_edge:            ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i152

cleanup.i.i.cleanup207.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup207.i.i

cleanup207.i.i:                                   ; preds = %cleanup.i.i.cleanup207.i.i_crit_edge, %if.end148.i.i.cleanup207.i.i_crit_edge
  %qtag.0.lcssa.i.i = phi i32 [ 1280, %if.end148.i.i.cleanup207.i.i_crit_edge ], [ %qtag.2.i.i, %cleanup.i.i.cleanup207.i.i_crit_edge ]
  %..i.i = select i1 %cmp41.not.i.i, i32 33554432, i32 16777216
  %karg.coerce.fca.10.extract.karg.coerce.fca.9.extract.i.i = select i1 %cmp41.not.i.i, i32 %.fca.9.load.i, i32 %.fca.10.load.i
  %or206.i.i = or i32 %qtag.0.lcssa.i.i, %..i.i
  %467 = call i32 @llvm.bswap.i32(i32 %or206.i.i) #14
  %Control.i.i = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %call59.i.i, i32 0, i32 10
  %468 = ptrtoint ptr %Control.i.i to i32
  call void @__asan_store4_noabort(i32 %468)
  store i32 %467, ptr %Control.i.i, align 4
  %469 = call i32 @llvm.bswap.i32(i32 %karg.coerce.fca.10.extract.karg.coerce.fca.9.extract.i.i) #14
  %DataLength.i.i = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %call59.i.i, i32 0, i32 12
  %470 = ptrtoint ptr %DataLength.i.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %469, ptr %DataLength.i.i, align 4
  br label %sw.epilog.i.i

do.end217.i.i:                                    ; preds = %sw.bb119.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name219.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %call221.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef %name219.i.i, ptr noundef nonnull @.str.5, i32 noundef 1925) #17
  br label %if.end700.thread.i.i

sw.bb223.i.i:                                     ; preds = %do.end93.i.i
  %sh224.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 58
  %471 = ptrtoint ptr %sh224.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %sh224.i.i, align 8
  %tobool225.not.i.i = icmp eq ptr %472, null
  br i1 %tobool225.not.i.i, label %do.end229.i.i, label %sw.bb223.i.i.sw.epilog.i.i_crit_edge

sw.bb223.i.i.sw.epilog.i.i_crit_edge:             ; preds = %sw.bb223.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end229.i.i:                                    ; preds = %sw.bb223.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name231.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %call233.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef %name231.i.i, ptr noundef nonnull @.str.5, i32 noundef 1944) #17
  br label %if.end700.thread.i.i

sw.bb235.i.i:                                     ; preds = %do.end93.i.i
  %sh236.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 58
  %473 = ptrtoint ptr %sh236.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %sh236.i.i, align 8
  %tobool237.not.i.i = icmp eq ptr %474, null
  br i1 %tobool237.not.i.i, label %do.end285.i.i, label %if.then238.i.i

if.then238.i.i:                                   ; preds = %sw.bb235.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %MsgFlags243.i.i = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %call59.i.i, i32 0, i32 7
  %475 = ptrtoint ptr %MsgFlags243.i.i to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %MsgFlags243.i.i, align 1
  %477 = and i8 %476, -2
  store i8 %477, ptr %MsgFlags243.i.i, align 1
  %sg_addr_size247.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 144
  %478 = ptrtoint ptr %sg_addr_size247.i.i to i32
  call void @__asan_load1_noabort(i32 %478)
  %479 = load i8, ptr %sg_addr_size247.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %479)
  %cmp249.i.i = icmp eq i8 %479, 8
  %cond251.i.i = zext i1 %cmp249.i.i to i8
  %or254.i.i = or i8 %477, %cond251.i.i
  %480 = ptrtoint ptr %MsgFlags243.i.i to i32
  call void @__asan_store1_noabort(i32 %480)
  store i8 %or254.i.i, ptr %MsgFlags243.i.i, align 1
  %481 = call i32 @llvm.umin.i32(i32 %.fca.11.load.i, i32 64) #14
  %482 = trunc i32 %481 to i8
  %483 = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %call59.i.i, i32 0, i32 5
  %484 = ptrtoint ptr %483 to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 %482, ptr %483, align 1
  %sense_buf_low_dma266.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 50
  %485 = ptrtoint ptr %sense_buf_low_dma266.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %sense_buf_low_dma266.i.i, align 8
  %conv267.i.i = zext i16 %402 to i32
  %mul268.i.i = shl nuw nsw i32 %conv267.i.i, 6
  %add269.i.i = add i32 %486, %mul268.i.i
  %487 = call i32 @llvm.bswap.i32(i32 %add269.i.i) #14
  %SenseBufferLowAddr270.i.i = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %call59.i.i, i32 0, i32 13
  %488 = ptrtoint ptr %SenseBufferLowAddr270.i.i to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %487, ptr %SenseBufferLowAddr270.i.i, align 4
  %.958.i.i = select i1 %cmp41.not.i.i, i32 2, i32 1
  %karg.coerce.fca.10.extract.karg.coerce.fca.9.extract959.i.i = select i1 %cmp41.not.i.i, i32 %.fca.9.load.i, i32 %.fca.10.load.i
  %Control280.i.i = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %call59.i.i, i32 0, i32 10
  %489 = ptrtoint ptr %Control280.i.i to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 %.958.i.i, ptr %Control280.i.i, align 4
  %490 = call i32 @llvm.bswap.i32(i32 %karg.coerce.fca.10.extract.karg.coerce.fca.9.extract959.i.i) #14
  %DataLength281.i.i = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %call59.i.i, i32 0, i32 12
  %491 = ptrtoint ptr %DataLength281.i.i to i32
  call void @__asan_store4_noabort(i32 %491)
  store i32 %490, ptr %DataLength281.i.i, align 4
  br label %sw.epilog.i.i

do.end285.i.i:                                    ; preds = %sw.bb235.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name287.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %call289.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef %name287.i.i, ptr noundef nonnull @.str.5, i32 noundef 2001) #17
  br label %if.end700.thread.i.i

sw.bb291.i.i:                                     ; preds = %do.end93.i.i
  %492 = ptrtoint ptr %debug_level.i.i143 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %debug_level.i.i143, align 4
  %and294.i.i = and i32 %493, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and294.i.i)
  %tobool295.not.i.i = icmp eq i32 %and294.i.i, 0
  br i1 %tobool295.not.i.i, label %sw.bb291.i.i.sw.epilog.i.i_crit_edge, label %do.end299.i.i

sw.bb291.i.i.sw.epilog.i.i_crit_edge:             ; preds = %sw.bb291.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

do.end299.i.i:                                    ; preds = %sw.bb291.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name301.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %TaskType.i.i = getelementptr inbounds %struct._MSG_SCSI_TASK_MGMT, ptr %call59.i.i, i32 0, i32 5
  %494 = ptrtoint ptr %TaskType.i.i to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %TaskType.i.i, align 1
  %conv303.i.i = zext i8 %495 to i32
  %TaskMsgContext.i.i = getelementptr inbounds %struct._MSG_SCSI_TASK_MGMT, ptr %call59.i.i, i32 0, i32 11
  %496 = ptrtoint ptr %TaskMsgContext.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %TaskMsgContext.i.i, align 4
  %498 = call i32 @llvm.bswap.i32(i32 %497) #14
  %MsgFlags304.i.i = getelementptr inbounds %struct._MSG_SCSI_TASK_MGMT, ptr %call59.i.i, i32 0, i32 7
  %499 = ptrtoint ptr %MsgFlags304.i.i to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %MsgFlags304.i.i, align 1
  %conv305.i.i = zext i8 %500 to i32
  %501 = ptrtoint ptr %call59.i.i to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %call59.i.i, align 4
  %conv307.i.i = zext i8 %502 to i32
  %Bus308.i.i = getelementptr inbounds %struct._MSG_SCSI_TASK_MGMT, ptr %call59.i.i, i32 0, i32 1
  %503 = ptrtoint ptr %Bus308.i.i to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %Bus308.i.i, align 1
  %conv309.i.i = zext i8 %504 to i32
  %call310.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, ptr noundef %name301.i.i, i32 noundef %conv303.i.i, i32 noundef %498, i32 noundef %conv305.i.i, i32 noundef %conv307.i.i, i32 noundef %conv309.i.i) #17
  br label %sw.epilog.i.i

sw.bb315.i.i:                                     ; preds = %do.end93.i.i
  %Flags.i.i = getelementptr inbounds %struct._MSG_IOC_INIT, ptr %call59.i.i, i32 0, i32 4
  %505 = ptrtoint ptr %Flags.i.i to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %Flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %506)
  %cmp317.not.i.i = icmp eq i8 %506, 0
  br i1 %cmp317.not.i.i, label %lor.lhs.false319.i.i, label %sw.bb315.i.i.cleanup353.i.i_crit_edge

sw.bb315.i.i.cleanup353.i.i_crit_edge:            ; preds = %sw.bb315.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup353.i.i

lor.lhs.false319.i.i:                             ; preds = %sw.bb315.i.i
  %MaxDevices.i.i = getelementptr inbounds %struct._MSG_IOC_INIT, ptr %call59.i.i, i32 0, i32 5
  %507 = ptrtoint ptr %MaxDevices.i.i to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %MaxDevices.i.i, align 1
  %MaxDevices321.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 77, i32 24
  %509 = ptrtoint ptr %MaxDevices321.i.i to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %MaxDevices321.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %508, i8 %510)
  %cmp323.not.i.i = icmp eq i8 %508, %510
  br i1 %cmp323.not.i.i, label %lor.lhs.false325.i.i, label %lor.lhs.false319.i.i.cleanup353.i.i_crit_edge

lor.lhs.false319.i.i.cleanup353.i.i_crit_edge:    ; preds = %lor.lhs.false319.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup353.i.i

lor.lhs.false325.i.i:                             ; preds = %lor.lhs.false319.i.i
  %MaxBuses.i.i = getelementptr inbounds %struct._MSG_IOC_INIT, ptr %call59.i.i, i32 0, i32 6
  %511 = ptrtoint ptr %MaxBuses.i.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %MaxBuses.i.i, align 2
  %MaxBuses328.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 77, i32 25
  %513 = ptrtoint ptr %MaxBuses328.i.i to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %MaxBuses328.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %512, i8 %514)
  %cmp330.not.i.i = icmp eq i8 %512, %514
  br i1 %cmp330.not.i.i, label %lor.lhs.false332.i.i, label %lor.lhs.false325.i.i.cleanup353.i.i_crit_edge

lor.lhs.false325.i.i.cleanup353.i.i_crit_edge:    ; preds = %lor.lhs.false325.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup353.i.i

lor.lhs.false332.i.i:                             ; preds = %lor.lhs.false325.i.i
  %ReplyFrameSize.i.i = getelementptr inbounds %struct._MSG_IOC_INIT, ptr %call59.i.i, i32 0, i32 9
  %515 = ptrtoint ptr %ReplyFrameSize.i.i to i32
  call void @__asan_load2_noabort(i32 %515)
  %516 = load i16, ptr %ReplyFrameSize.i.i, align 4
  %reply_sz.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 30
  %517 = ptrtoint ptr %reply_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %reply_sz.i.i, align 8
  %conv334.i.i = trunc i32 %518 to i16
  %519 = call i16 @llvm.bswap.i16(i16 %conv334.i.i) #14
  call void @__sanitizer_cov_trace_cmp2(i16 %516, i16 %519)
  %cmp336.not.i.i = icmp eq i16 %516, %519
  br i1 %cmp336.not.i.i, label %lor.lhs.false338.i.i, label %lor.lhs.false332.i.i.cleanup353.i.i_crit_edge

lor.lhs.false332.i.i.cleanup353.i.i_crit_edge:    ; preds = %lor.lhs.false332.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup353.i.i

lor.lhs.false338.i.i:                             ; preds = %lor.lhs.false332.i.i
  %HostMfaHighAddr.i.i = getelementptr inbounds %struct._MSG_IOC_INIT, ptr %call59.i.i, i32 0, i32 11
  %520 = ptrtoint ptr %HostMfaHighAddr.i.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %HostMfaHighAddr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %521)
  %cmp339.not.i.i = icmp eq i32 %521, 0
  br i1 %cmp339.not.i.i, label %lor.lhs.false341.i.i, label %lor.lhs.false338.i.i.cleanup353.i.i_crit_edge

lor.lhs.false338.i.i.cleanup353.i.i_crit_edge:    ; preds = %lor.lhs.false338.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup353.i.i

lor.lhs.false341.i.i:                             ; preds = %lor.lhs.false338.i.i
  %SenseBufferHighAddr.i.i = getelementptr inbounds %struct._MSG_IOC_INIT, ptr %call59.i.i, i32 0, i32 12
  %522 = ptrtoint ptr %SenseBufferHighAddr.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %SenseBufferHighAddr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %523)
  %cmp342.not.i.i = icmp eq i32 %523, 0
  br i1 %cmp342.not.i.i, label %lor.lhs.false341.i.i.sw.epilog.i.i_crit_edge, label %lor.lhs.false341.i.i.cleanup353.i.i_crit_edge

lor.lhs.false341.i.i.cleanup353.i.i_crit_edge:    ; preds = %lor.lhs.false341.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup353.i.i

lor.lhs.false341.i.i.sw.epilog.i.i_crit_edge:     ; preds = %lor.lhs.false341.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i.i

cleanup353.i.i:                                   ; preds = %lor.lhs.false341.i.i.cleanup353.i.i_crit_edge, %lor.lhs.false338.i.i.cleanup353.i.i_crit_edge, %lor.lhs.false332.i.i.cleanup353.i.i_crit_edge, %lor.lhs.false325.i.i.cleanup353.i.i_crit_edge, %lor.lhs.false319.i.i.cleanup353.i.i_crit_edge, %sw.bb315.i.i.cleanup353.i.i_crit_edge
  %name349.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %call351.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, ptr noundef %name349.i.i, ptr noundef nonnull @.str.5, i32 noundef 2043) #17
  br label %if.end700.thread.i.i

do.end360.i.i:                                    ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name362.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %524 = ptrtoint ptr %Function.i.i to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %Function.i.i, align 1
  %conv365.i.i = zext i8 %525 to i32
  %call366.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %name362.i.i, ptr noundef nonnull @.str.5, i32 noundef 2076, i32 noundef %conv365.i.i) #17
  br label %if.end700.thread.i.i

sw.epilog.i.i:                                    ; preds = %lor.lhs.false341.i.i.sw.epilog.i.i_crit_edge, %do.end299.i.i, %sw.bb291.i.i.sw.epilog.i.i_crit_edge, %if.then238.i.i, %sw.bb223.i.i.sw.epilog.i.i_crit_edge, %cleanup207.i.i, %do.end105.i.i, %sw.bb97.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i, %do.end93.i.i.sw.epilog.i.i_crit_edge, %do.end93.i.i.sw.epilog.i.i_crit_edge365, %do.end93.i.i.sw.epilog.i.i_crit_edge366, %do.end93.i.i.sw.epilog.i.i_crit_edge367, %do.end93.i.i.sw.epilog.i.i_crit_edge368, %do.end93.i.i.sw.epilog.i.i_crit_edge369, %do.end93.i.i.sw.epilog.i.i_crit_edge370, %do.end93.i.i.sw.epilog.i.i_crit_edge371, %do.end93.i.i.sw.epilog.i.i_crit_edge372, %do.end93.i.i.sw.epilog.i.i_crit_edge373
  %karg.sroa.22.0.i.i = phi i32 [ %.fca.9.load.i, %if.then238.i.i ], [ %.fca.9.load.i, %sw.bb223.i.i.sw.epilog.i.i_crit_edge ], [ %.fca.9.load.i, %cleanup207.i.i ], [ %.fca.9.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge ], [ %.fca.9.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge365 ], [ %.fca.9.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge366 ], [ %.fca.9.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge367 ], [ %.fca.9.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge368 ], [ %.fca.9.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge369 ], [ %.fca.9.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge370 ], [ %.fca.9.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge371 ], [ %.fca.9.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge372 ], [ %.fca.9.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge373 ], [ 0, %sw.bb.i.i ], [ %.fca.9.load.i, %do.end105.i.i ], [ %.fca.9.load.i, %sw.bb97.i.i.sw.epilog.i.i_crit_edge ], [ %.fca.9.load.i, %do.end299.i.i ], [ %.fca.9.load.i, %sw.bb291.i.i.sw.epilog.i.i_crit_edge ], [ %.fca.9.load.i, %lor.lhs.false341.i.i.sw.epilog.i.i_crit_edge ]
  %karg.sroa.35.0.i.i = phi i32 [ %.fca.10.load.i, %if.then238.i.i ], [ %.fca.10.load.i, %sw.bb223.i.i.sw.epilog.i.i_crit_edge ], [ %.fca.10.load.i, %cleanup207.i.i ], [ %.fca.10.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge ], [ %.fca.10.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge365 ], [ %.fca.10.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge366 ], [ %.fca.10.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge367 ], [ %.fca.10.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge368 ], [ %.fca.10.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge369 ], [ %.fca.10.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge370 ], [ %.fca.10.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge371 ], [ %.fca.10.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge372 ], [ %.fca.10.load.i, %do.end93.i.i.sw.epilog.i.i_crit_edge373 ], [ 0, %sw.bb.i.i ], [ %.fca.10.load.i, %do.end105.i.i ], [ %.fca.10.load.i, %sw.bb97.i.i.sw.epilog.i.i_crit_edge ], [ %.fca.10.load.i, %do.end299.i.i ], [ %.fca.10.load.i, %sw.bb291.i.i.sw.epilog.i.i_crit_edge ], [ %.fca.10.load.i, %lor.lhs.false341.i.i.sw.epilog.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i32, ptr %call59.i.i, i32 %.fca.12.load.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %karg.sroa.35.0.i.i)
  %cmp369.i.i = icmp sgt i32 %karg.sroa.35.0.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %karg.sroa.22.0.i.i)
  %cmp374.i.i = icmp sgt i32 %karg.sroa.22.0.i.i, 0
  %526 = select i1 %cmp374.i.i, i1 true, i1 %cmp369.i.i
  br i1 %526, label %if.then381.i.i, label %if.else444.i.i

if.then381.i.i:                                   ; preds = %sw.epilog.i.i
  br i1 %cmp369.i.i, label %if.then385.i.i, label %if.then381.i.i.if.end422.i.i_crit_edge

if.then381.i.i.if.end422.i.i_crit_edge:           ; preds = %if.then381.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end422.i.i

if.then385.i.i:                                   ; preds = %if.then381.i.i
  %pcidev.i.i155 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 54
  %527 = ptrtoint ptr %pcidev.i.i155 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %pcidev.i.i155, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %528, i32 0, i32 44
  %call.i.i9.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef %karg.sroa.35.0.i.i, ptr noundef nonnull %dma_addr_out.i.i, i32 noundef 3264, i32 noundef 0) #14
  %cmp400.i.i = icmp eq ptr %call.i.i9.i, null
  br i1 %cmp400.i.i, label %if.then385.i.i.if.end700.thread.i.i_crit_edge, label %if.else403.i.i

if.then385.i.i.if.end700.thread.i.i_crit_edge:    ; preds = %if.then385.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end700.thread.i.i

if.else403.i.i:                                   ; preds = %if.then385.i.i
  %.961.i.i = select i1 %cmp374.i.i, i32 1409286144, i32 -721420288
  %or393.i.i = or i32 %.961.i.i, %karg.sroa.35.0.i.i
  %add_sge.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 32
  %529 = ptrtoint ptr %add_sge.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %add_sge.i.i, align 8
  %531 = ptrtoint ptr %dma_addr_out.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %dma_addr_out.i.i, align 4
  call void %530(ptr noundef %add.ptr.i.i, i32 noundef %or393.i.i, i32 noundef %532) #14
  %SGE_size404.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 146
  %533 = ptrtoint ptr %SGE_size404.i.i to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %SGE_size404.i.i, align 2
  %conv405.i.i = zext i8 %534 to i32
  %add.ptr406.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv405.i.i
  call void @__check_object_size(ptr noundef nonnull %call.i.i9.i, i32 noundef %karg.sroa.35.0.i.i, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i976.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i976.i.i, label %if.else403.i.i.if.then11.i.i993.i.i_crit_edge, label %land.lhs.true.i.i980.i.i

if.else403.i.i.if.then11.i.i993.i.i_crit_edge:    ; preds = %if.else403.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i993.i.i

land.lhs.true.i.i980.i.i:                         ; preds = %if.else403.i.i
  %535 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %385, i32 %karg.sroa.35.0.i.i, i32 -1226833920) #18, !srcloc !539
  %asmresult.i.i978.i.i = extractvalue { i32, i32 } %535, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i978.i.i)
  %cmp.i6.i979.i.i = icmp eq i32 %asmresult.i.i978.i.i, 0
  br i1 %cmp.i6.i979.i.i, label %if.end.i.i990.i.i, label %land.lhs.true.i.i980.i.i.if.then11.i.i993.i.i_crit_edge, !prof !540

land.lhs.true.i.i980.i.i.if.then11.i.i993.i.i_crit_edge: ; preds = %land.lhs.true.i.i980.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i993.i.i

if.end.i.i990.i.i:                                ; preds = %land.lhs.true.i.i980.i.i
  %call.i.i.i981.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i9.i, i32 noundef %karg.sroa.35.0.i.i) #14
  %536 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i982.i.i = and i32 %536, -16384
  %537 = inttoptr i32 %and.i.i.i.i.i.i982.i.i to ptr
  %cpu_domain.i.i.i.i.i983.i.i = getelementptr inbounds %struct.thread_info, ptr %537, i32 0, i32 4
  %538 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i983.i.i) #6, !srcloc !541
  %and.i.i.i.i984.i.i = and i32 %538, -13
  %or.i.i.i.i985.i.i = or i32 %and.i.i.i.i984.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i985.i.i) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i986.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call.i.i9.i, ptr noundef %385, i32 noundef %karg.sroa.35.0.i.i) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %538) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i986.i.i)
  %tobool4.not.i.i989.i.i = icmp eq i32 %call1.i.i.i986.i.i, 0
  br i1 %tobool4.not.i.i989.i.i, label %if.end.i.i990.i.i.if.end422.i.i_crit_edge, label %if.end.i.i990.i.i.if.then11.i.i993.i.i_crit_edge, !prof !540

if.end.i.i990.i.i.if.then11.i.i993.i.i_crit_edge: ; preds = %if.end.i.i990.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i993.i.i

if.end.i.i990.i.i.if.end422.i.i_crit_edge:        ; preds = %if.end.i.i990.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end422.i.i

if.then11.i.i993.i.i:                             ; preds = %if.end.i.i990.i.i.if.then11.i.i993.i.i_crit_edge, %land.lhs.true.i.i980.i.i.if.then11.i.i993.i.i_crit_edge, %if.else403.i.i.if.then11.i.i993.i.i_crit_edge
  %res.0.i.i9881071.i.i = phi i32 [ %call1.i.i.i986.i.i, %if.end.i.i990.i.i.if.then11.i.i993.i.i_crit_edge ], [ %karg.sroa.35.0.i.i, %if.else403.i.i.if.then11.i.i993.i.i_crit_edge ], [ %karg.sroa.35.0.i.i, %land.lhs.true.i.i980.i.i.if.then11.i.i993.i.i_crit_edge ]
  %sub.i.i991.i.i = sub i32 %karg.sroa.35.0.i.i, %res.0.i.i9881071.i.i
  %add.ptr.i.i992.i.i = getelementptr i8, ptr %call.i.i9.i, i32 %sub.i.i991.i.i
  %539 = call ptr @memset(ptr %add.ptr.i.i992.i.i, i32 0, i32 %res.0.i.i9881071.i.i)
  %name416.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %call419.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef %name416.i.i, ptr noundef nonnull @.str.5, i32 noundef 2132, ptr noundef %385) #17
  %status6891100.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 116, i32 4
  %540 = ptrtoint ptr %status6891100.i.i to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 0, ptr %status6891100.i.i, align 4
  %msg_context6911101.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 116, i32 6
  %541 = ptrtoint ptr %msg_context6911101.i.i to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 0, ptr %msg_context6911101.i.i, align 4
  br label %if.then695.i.i

if.end422.i.i:                                    ; preds = %if.end.i.i990.i.i.if.end422.i.i_crit_edge, %if.then381.i.i.if.end422.i.i_crit_edge
  %bufOut.sroa.0.0.i.i = phi ptr [ null, %if.then381.i.i.if.end422.i.i_crit_edge ], [ %call.i.i9.i, %if.end.i.i990.i.i.if.end422.i.i_crit_edge ]
  %bufOut.sroa.9.0.i.i = phi i32 [ 0, %if.then381.i.i.if.end422.i.i_crit_edge ], [ %karg.sroa.35.0.i.i, %if.end.i.i990.i.i.if.end422.i.i_crit_edge ]
  %psge.0.i.i = phi ptr [ %add.ptr.i.i, %if.then381.i.i.if.end422.i.i_crit_edge ], [ %add.ptr406.i.i, %if.end.i.i990.i.i.if.end422.i.i_crit_edge ]
  br i1 %cmp374.i.i, label %if.then426.i.i, label %if.end422.i.i.if.end446.i.i_crit_edge

if.end422.i.i.if.end446.i.i_crit_edge:            ; preds = %if.end422.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end446.i.i

if.then426.i.i:                                   ; preds = %if.end422.i.i
  %pcidev431.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 54
  %542 = ptrtoint ptr %pcidev431.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %pcidev431.i.i, align 8
  %dev432.i.i = getelementptr inbounds %struct.pci_dev, ptr %543, i32 0, i32 44
  %call.i1062.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev432.i.i, i32 noundef %karg.sroa.22.0.i.i, ptr noundef nonnull %dma_addr_in.i.i, i32 noundef 3264, i32 noundef 0) #14
  %cmp437.i.i = icmp eq ptr %call.i1062.i.i, null
  br i1 %cmp437.i.i, label %if.then426.i.i.done_free_mem.i.i_crit_edge, label %if.else440.i.i

if.then426.i.i.done_free_mem.i.i_crit_edge:       ; preds = %if.then426.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done_free_mem.i.i

if.else440.i.i:                                   ; preds = %if.then426.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %or428.i.i = or i32 %karg.sroa.22.0.i.i, -788529152
  %add_sge441.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 32
  %544 = ptrtoint ptr %add_sge441.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %add_sge441.i.i, align 8
  %546 = ptrtoint ptr %dma_addr_in.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %dma_addr_in.i.i, align 4
  call void %545(ptr noundef %psge.0.i.i, i32 noundef %or428.i.i, i32 noundef %547) #14
  br label %if.end446.i.i

if.else444.i.i:                                   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %add_sge445.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 32
  %548 = ptrtoint ptr %add_sge445.i.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %add_sge445.i.i, align 8
  call void %549(ptr noundef %add.ptr.i.i, i32 noundef 0, i32 noundef -1) #14
  br label %if.end446.i.i

if.end446.i.i:                                    ; preds = %if.else444.i.i, %if.else440.i.i, %if.end422.i.i.if.end446.i.i_crit_edge
  %bufOut.sroa.0.1.i.i = phi ptr [ %bufOut.sroa.0.0.i.i, %if.else440.i.i ], [ %bufOut.sroa.0.0.i.i, %if.end422.i.i.if.end446.i.i_crit_edge ], [ null, %if.else444.i.i ]
  %bufOut.sroa.9.1.i.i = phi i32 [ %bufOut.sroa.9.0.i.i, %if.else440.i.i ], [ %bufOut.sroa.9.0.i.i, %if.end422.i.i.if.end446.i.i_crit_edge ], [ 0, %if.else444.i.i ]
  %bufIn.sroa.0.0.i.i = phi ptr [ %call.i1062.i.i, %if.else440.i.i ], [ null, %if.end422.i.i.if.end446.i.i_crit_edge ], [ null, %if.else444.i.i ]
  %bufIn.sroa.10.0.i.i = phi i32 [ %karg.sroa.22.0.i.i, %if.else440.i.i ], [ 0, %if.end422.i.i.if.end446.i.i_crit_edge ], [ 0, %if.else444.i.i ]
  %550 = ptrtoint ptr %MsgContext.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %MsgContext.i.i, align 4
  %msg_context.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 116, i32 6
  %552 = ptrtoint ptr %msg_context.i.i to i32
  call void @__asan_store4_noabort(i32 %552)
  store i32 %551, ptr %msg_context.i.i, align 4
  %status.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 116, i32 4
  %553 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %553)
  store i8 4, ptr %status.i.i, align 4
  %554 = ptrtoint ptr %Function.i.i to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %Function.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %555)
  %cmp451.i.i = icmp eq i8 %555, 1
  br i1 %cmp451.i.i, label %if.then453.i.i, label %if.else494.i.i

if.then453.i.i:                                   ; preds = %if.end446.i.i
  %taskmgmt_cmds.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 115
  call void @mutex_lock_nested(ptr noundef %taskmgmt_cmds.i.i, i32 noundef 0) #14
  %call454.i.i = call i32 @mpt_set_taskmgmt_in_progress_flag(ptr noundef %366) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call454.i.i)
  %cmp455.not.i.i = icmp eq i32 %call454.i.i, 0
  br i1 %cmp455.not.i.i, label %if.end460.i.i, label %if.then457.i.i

if.then457.i.i:                                   ; preds = %if.then453.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef %taskmgmt_cmds.i.i) #14
  br label %done_free_mem.i.i

if.end460.i.i:                                    ; preds = %if.then453.i.i
  %IOCCapabilities.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 77, i32 27
  %556 = ptrtoint ptr %IOCCapabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %IOCCapabilities.i.i, align 4
  %and462.i.i = and i32 %557, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and462.i.i)
  %tobool463.not.i.i = icmp eq i32 %and462.i.i, 0
  br i1 %tobool463.not.i.i, label %if.end460.i.i.if.else470.i.i_crit_edge, label %land.lhs.true464.i.i

if.end460.i.i.if.else470.i.i_crit_edge:           ; preds = %if.end460.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else470.i.i

land.lhs.true464.i.i:                             ; preds = %if.end460.i.i
  %facts461.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 77
  %558 = ptrtoint ptr %facts461.i.i to i32
  call void @__asan_load2_noabort(i32 %558)
  %559 = load i16, ptr %facts461.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 260, i16 %559)
  %cmp467.i.i = icmp ugt i16 %559, 260
  br i1 %cmp467.i.i, label %if.then469.i.i, label %land.lhs.true464.i.i.if.else470.i.i_crit_edge

land.lhs.true464.i.i.if.else470.i.i_crit_edge:    ; preds = %land.lhs.true464.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else470.i.i

if.then469.i.i:                                   ; preds = %land.lhs.true464.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %560 = load i8, ptr @mptctl_id, align 1
  call void @mpt_put_msg_frame_hi_pri(i8 noundef zeroext %560, ptr noundef %366, ptr noundef %call59.i.i) #14
  br label %if.end495.i.i

if.else470.i.i:                                   ; preds = %land.lhs.true464.i.i.if.else470.i.i_crit_edge, %if.end460.i.i.if.else470.i.i_crit_edge
  %561 = load i8, ptr @mptctl_id, align 1
  %call471.i.i = call i32 @mpt_send_handshake_request(i8 noundef zeroext %561, ptr noundef %366, i32 noundef 52, ptr noundef %call59.i.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call471.i.i)
  %cmp472.not.i.i = icmp eq i32 %call471.i.i, 0
  br i1 %cmp472.not.i.i, label %if.else470.i.i.if.end495.i.i_crit_edge, label %do.body475.i.i

if.else470.i.i.if.end495.i.i_crit_edge:           ; preds = %if.else470.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end495.i.i

do.body475.i.i:                                   ; preds = %if.else470.i.i
  %562 = ptrtoint ptr %debug_level.i.i143 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %debug_level.i.i143, align 4
  %and477.i.i = and i32 %563, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and477.i.i)
  %tobool478.not.i.i = icmp eq i32 %and477.i.i, 0
  br i1 %tobool478.not.i.i, label %do.body475.i.i.do.end489.i.i_crit_edge, label %do.end482.i.i

do.body475.i.i.do.end489.i.i_crit_edge:           ; preds = %do.body475.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end489.i.i

do.end482.i.i:                                    ; preds = %do.body475.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %name484.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %call486.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, ptr noundef %name484.i.i, ptr noundef %366, ptr noundef %call59.i.i) #17
  br label %do.end489.i.i

do.end489.i.i:                                    ; preds = %do.end482.i.i, %do.body475.i.i.do.end489.i.i_crit_edge
  call void @mpt_clear_taskmgmt_in_progress_flag(ptr noundef %366) #14
  call void @mutex_unlock(ptr noundef %taskmgmt_cmds.i.i) #14
  br label %done_free_mem.i.i

if.else494.i.i:                                   ; preds = %if.end446.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %564 = load i8, ptr @mptctl_id, align 1
  call void @mpt_put_msg_frame(i8 noundef zeroext %564, ptr noundef %366, ptr noundef %call59.i.i) #14
  br label %if.end495.i.i

if.end495.i.i:                                    ; preds = %if.else494.i.i, %if.else470.i.i.if.end495.i.i_crit_edge, %if.then469.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.fca.3.load.i)
  %cmp497.i.i = icmp sgt i32 %.fca.3.load.i, 0
  %done.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 116, i32 1
  %karg.coerce.fca.3.extract.op.i.i = mul i32 %.fca.3.load.i, 100
  %mul505.i.i = select i1 %cmp497.i.i, i32 %karg.coerce.fca.3.extract.op.i.i, i32 1000
  %call5061122.i.i = call i32 @wait_for_completion_timeout(ptr noundef %done.i.i, i32 noundef %mul505.i.i) #14
  %565 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %565)
  %566 = load i8, ptr %status.i.i, align 4
  %567 = and i8 %566, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %567)
  %tobool511.not1123.i.i = icmp eq i8 %567, 0
  br i1 %tobool511.not1123.i.i, label %if.then512.lr.ph.i.i, label %if.end495.i.i.if.end562.i.i_crit_edge

if.end495.i.i.if.end562.i.i_crit_edge:            ; preds = %if.end495.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end562.i.i

if.then512.lr.ph.i.i:                             ; preds = %if.end495.i.i
  %name522.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  br label %if.then512.i.i

retry_wait.i.i:                                   ; preds = %if.end541.i.i
  %call506.i.i = call i32 @wait_for_completion_timeout(ptr noundef %done.i.i, i32 noundef %mul505.i.i) #14
  %568 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %568)
  %569 = load i8, ptr %status.i.i, align 4
  %570 = and i8 %569, 2
  %tobool511.not.i.i = icmp eq i8 %570, 0
  br i1 %tobool511.not.i.i, label %retry_wait.i.i.if.then512.i.i_crit_edge, label %retry_wait.i.i.if.end562.i.i_crit_edge

retry_wait.i.i.if.end562.i.i_crit_edge:           ; preds = %retry_wait.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end562.i.i

retry_wait.i.i.if.then512.i.i_crit_edge:          ; preds = %retry_wait.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then512.i.i

if.then512.i.i:                                   ; preds = %retry_wait.i.i.if.then512.i.i_crit_edge, %if.then512.lr.ph.i.i
  %call5061124.i.i = phi i32 [ %call5061122.i.i, %if.then512.lr.ph.i.i ], [ %call506.i.i, %retry_wait.i.i.if.then512.i.i_crit_edge ]
  %571 = ptrtoint ptr %debug_level.i.i143 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %debug_level.i.i143, align 4
  %and515.i.i = and i32 %572, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and515.i.i)
  %tobool516.not.i.i = icmp eq i32 %and515.i.i, 0
  br i1 %tobool516.not.i.i, label %if.then512.i.i.do.end527.i.i_crit_edge, label %do.end520.i.i

if.then512.i.i.do.end527.i.i_crit_edge:           ; preds = %if.then512.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end527.i.i

do.end520.i.i:                                    ; preds = %if.then512.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call524.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, ptr noundef %name522.i.i, ptr noundef nonnull @.str.202) #17
  br label %do.end527.i.i

do.end527.i.i:                                    ; preds = %do.end520.i.i, %if.then512.i.i.do.end527.i.i_crit_edge
  %573 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %status.i.i, align 4
  %575 = and i8 %574, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %575)
  %tobool532.not.i.i = icmp eq i8 %575, 0
  br i1 %tobool532.not.i.i, label %if.end541.i.i, label %if.then533.i.i

if.then533.i.i:                                   ; preds = %do.end527.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %410)
  %cmp535.i.i = icmp eq i8 %410, 1
  br i1 %cmp535.i.i, label %if.then537.i.i, label %if.then533.i.i.done_free_mem.i.i_crit_edge

if.then533.i.i.done_free_mem.i.i_crit_edge:       ; preds = %if.then533.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done_free_mem.i.i

if.then537.i.i:                                   ; preds = %if.then533.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %taskmgmt_cmds538.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 115
  call void @mutex_unlock(ptr noundef %taskmgmt_cmds538.i.i) #14
  br label %done_free_mem.i.i

if.end541.i.i:                                    ; preds = %do.end527.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5061124.i.i)
  %tobool542.not.i.i = icmp eq i32 %call5061124.i.i, 0
  br i1 %tobool542.not.i.i, label %do.end546.i.i, label %retry_wait.i.i

do.end546.i.i:                                    ; preds = %if.end541.i.i
  %call550.i.i = call i32 @mpt_GetIocState(ptr noundef %366, i32 noundef 0) #14
  %call552.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef %name522.i.i, i32 noundef %call550.i.i, i32 noundef %conv94.pre-phi.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %410)
  %cmp554.i.i = icmp eq i8 %410, 1
  br i1 %cmp554.i.i, label %if.then556.i.i, label %do.end546.i.i.if.end559.i.i_crit_edge

do.end546.i.i.if.end559.i.i_crit_edge:            ; preds = %do.end546.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end559.i.i

if.then556.i.i:                                   ; preds = %do.end546.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %taskmgmt_cmds557.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 115
  call void @mutex_unlock(ptr noundef %taskmgmt_cmds557.i.i) #14
  br label %if.end559.i.i

if.end559.i.i:                                    ; preds = %if.then556.i.i, %do.end546.i.i.if.end559.i.i_crit_edge
  call fastcc void @mptctl_timeout_expired(ptr noundef %366, ptr noundef %call59.i.i) #14
  br label %done_free_mem.i.i

if.end562.i.i:                                    ; preds = %retry_wait.i.i.if.end562.i.i_crit_edge, %if.end495.i.i.if.end562.i.i_crit_edge
  %rc.4.lcssa.i.i = phi i32 [ 0, %if.end495.i.i.if.end562.i.i_crit_edge ], [ -62, %retry_wait.i.i.if.end562.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %410)
  %cmp564.i.i = icmp eq i8 %410, 1
  br i1 %cmp564.i.i, label %if.then566.i.i, label %if.end562.i.i.if.end569.i.i_crit_edge

if.end562.i.i.if.end569.i.i_crit_edge:            ; preds = %if.end562.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end569.i.i

if.then566.i.i:                                   ; preds = %if.end562.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %taskmgmt_cmds567.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 115
  call void @mutex_unlock(ptr noundef %taskmgmt_cmds567.i.i) #14
  br label %if.end569.i.i

if.end569.i.i:                                    ; preds = %if.then566.i.i, %if.end562.i.i.if.end569.i.i_crit_edge
  %576 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %status.i.i, align 4
  %578 = and i8 %577, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %578)
  %tobool574.not.i.i = icmp eq i8 %578, 0
  br i1 %tobool574.not.i.i, label %if.end569.i.i.if.end626.i.i_crit_edge, label %if.then575.i.i

if.end569.i.i.if.end626.i.i_crit_edge:            ; preds = %if.end569.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end626.i.i

if.then575.i.i:                                   ; preds = %if.end569.i.i
  %reply_sz577.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 30
  %579 = ptrtoint ptr %reply_sz577.i.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %reply_sz577.i.i, align 8
  %arrayidx.i.i156 = getelementptr %struct._MPT_ADAPTER, ptr %366, i32 0, i32 116, i32 2, i32 2
  %581 = ptrtoint ptr %arrayidx.i.i156 to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %arrayidx.i.i156, align 2
  %conv583.i.i = zext i8 %582 to i32
  %mul584.i.i = shl nuw nsw i32 %conv583.i.i, 2
  %583 = call i32 @llvm.smin.i32(i32 %.fca.8.load.i, i32 %580) #14
  %584 = call i32 @llvm.smin.i32(i32 %583, i32 %mul584.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %584)
  %cmp607.i.i = icmp sgt i32 %584, 0
  br i1 %cmp607.i.i, label %if.then609.i.i, label %if.then575.i.i.if.end626.i.i_crit_edge

if.then575.i.i.if.end626.i.i_crit_edge:           ; preds = %if.then575.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end626.i.i

if.then609.i.i:                                   ; preds = %if.then575.i.i
  %reply611.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 116, i32 2
  call void @__check_object_size(ptr noundef %reply611.i.i, i32 noundef %584, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #14
  %call.i.i1009.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i1009.i.i, label %if.then609.i.i.do.end618.i.i_crit_edge, label %if.end.i.i1013.i.i

if.then609.i.i.do.end618.i.i_crit_edge:           ; preds = %if.then609.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end618.i.i

if.end.i.i1013.i.i:                               ; preds = %if.then609.i.i
  %585 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %383, i32 %584, i32 -1226833920) #18, !srcloc !544
  %asmresult.i.i1011.i.i = extractvalue { i32, i32 } %585, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1011.i.i)
  %cmp.i6.i1012.i.i = icmp eq i32 %asmresult.i.i1011.i.i, 0
  br i1 %cmp.i6.i1012.i.i, label %copy_to_user.exit.i.i158, label %if.end.i.i1013.i.i.do.end618.i.i_crit_edge

if.end.i.i1013.i.i.do.end618.i.i_crit_edge:       ; preds = %if.end.i.i1013.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end618.i.i

copy_to_user.exit.i.i158:                         ; preds = %if.end.i.i1013.i.i
  %call.i.i.i1014.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %reply611.i.i, i32 noundef %584) #14
  %call.i12.i.i.i.i157 = call i32 @arm_copy_to_user(ptr noundef %383, ptr noundef %reply611.i.i, i32 noundef %584) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i157)
  %tobool614.not.i.i = icmp eq i32 %call.i12.i.i.i.i157, 0
  br i1 %tobool614.not.i.i, label %copy_to_user.exit.i.i158.if.end626.i.i_crit_edge, label %copy_to_user.exit.i.i158.do.end618.i.i_crit_edge

copy_to_user.exit.i.i158.do.end618.i.i_crit_edge: ; preds = %copy_to_user.exit.i.i158
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end618.i.i

copy_to_user.exit.i.i158.if.end626.i.i_crit_edge: ; preds = %copy_to_user.exit.i.i158
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end626.i.i

do.end618.i.i:                                    ; preds = %copy_to_user.exit.i.i158.do.end618.i.i_crit_edge, %if.end.i.i1013.i.i.do.end618.i.i_crit_edge, %if.then609.i.i.do.end618.i.i_crit_edge
  %name620.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %call623.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, ptr noundef %name620.i.i, ptr noundef nonnull @.str.5, i32 noundef 2246, ptr noundef %383) #17
  br label %done_free_mem.i.i

if.end626.i.i:                                    ; preds = %copy_to_user.exit.i.i158.if.end626.i.i_crit_edge, %if.then575.i.i.if.end626.i.i_crit_edge, %if.end569.i.i.if.end626.i.i_crit_edge
  %586 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %586)
  %587 = load i8, ptr %status.i.i, align 4
  %588 = and i8 %587, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %588)
  %tobool631.not.i.i = icmp eq i8 %588, 0
  br i1 %tobool631.not.i.i, label %if.end626.i.i.if.end659.i.i_crit_edge, label %if.then632.i.i

if.end626.i.i.if.end659.i.i_crit_edge:            ; preds = %if.end626.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end659.i.i

if.then632.i.i:                                   ; preds = %if.end626.i.i
  %589 = call i32 @llvm.smin.i32(i32 %.fca.11.load.i, i32 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.fca.11.load.i)
  %cmp641.i.i = icmp sgt i32 %.fca.11.load.i, 0
  br i1 %cmp641.i.i, label %if.then643.i.i, label %if.then632.i.i.if.end659.i.i_crit_edge

if.then632.i.i.if.end659.i.i_crit_edge:           ; preds = %if.then632.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end659.i.i

if.then643.i.i:                                   ; preds = %if.then632.i.i
  %sense.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 116, i32 3
  call void @__check_object_size(ptr noundef %sense.i.i, i32 noundef %589, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #14
  %call.i.i1029.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i1029.i.i, label %if.then643.i.i.do.end651.i.i_crit_edge, label %if.end.i.i1033.i.i

if.then643.i.i.do.end651.i.i_crit_edge:           ; preds = %if.then643.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end651.i.i

if.end.i.i1033.i.i:                               ; preds = %if.then643.i.i
  %590 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %386, i32 %589, i32 -1226833920) #18, !srcloc !544
  %asmresult.i.i1031.i.i = extractvalue { i32, i32 } %590, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1031.i.i)
  %cmp.i6.i1032.i.i = icmp eq i32 %asmresult.i.i1031.i.i, 0
  br i1 %cmp.i6.i1032.i.i, label %copy_to_user.exit1038.i.i, label %if.end.i.i1033.i.i.do.end651.i.i_crit_edge

if.end.i.i1033.i.i.do.end651.i.i_crit_edge:       ; preds = %if.end.i.i1033.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end651.i.i

copy_to_user.exit1038.i.i:                        ; preds = %if.end.i.i1033.i.i
  %call.i.i.i1034.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sense.i.i, i32 noundef %589) #14
  %call.i12.i.i1035.i.i = call i32 @arm_copy_to_user(ptr noundef %386, ptr noundef %sense.i.i, i32 noundef %589) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1035.i.i)
  %tobool647.not.i.i = icmp eq i32 %call.i12.i.i1035.i.i, 0
  br i1 %tobool647.not.i.i, label %copy_to_user.exit1038.i.i.if.end659.i.i_crit_edge, label %copy_to_user.exit1038.i.i.do.end651.i.i_crit_edge

copy_to_user.exit1038.i.i.do.end651.i.i_crit_edge: ; preds = %copy_to_user.exit1038.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end651.i.i

copy_to_user.exit1038.i.i.if.end659.i.i_crit_edge: ; preds = %copy_to_user.exit1038.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end659.i.i

do.end651.i.i:                                    ; preds = %copy_to_user.exit1038.i.i.do.end651.i.i_crit_edge, %if.end.i.i1033.i.i.do.end651.i.i_crit_edge, %if.then643.i.i.do.end651.i.i_crit_edge
  %name653.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %call656.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253, ptr noundef %name653.i.i, ptr noundef nonnull @.str.5, i32 noundef 2263, ptr noundef %386) #17
  br label %done_free_mem.i.i

if.end659.i.i:                                    ; preds = %copy_to_user.exit1038.i.i.if.end659.i.i_crit_edge, %if.then632.i.i.if.end659.i.i_crit_edge, %if.end626.i.i.if.end659.i.i_crit_edge
  %591 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %591)
  %592 = load i8, ptr %status.i.i, align 4
  %593 = and i8 %592, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %593)
  %tobool664.not.i.i = icmp eq i8 %593, 0
  br i1 %tobool664.not.i.i, label %if.end659.i.i.done_free_mem.i.i_crit_edge, label %land.lhs.true665.i.i

if.end659.i.i.done_free_mem.i.i_crit_edge:        ; preds = %if.end659.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done_free_mem.i.i

land.lhs.true665.i.i:                             ; preds = %if.end659.i.i
  br i1 %cmp374.i.i, label %land.lhs.true669.i.i, label %land.lhs.true665.i.i.done_free_mem.i.i_crit_edge

land.lhs.true665.i.i.done_free_mem.i.i_crit_edge: ; preds = %land.lhs.true665.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done_free_mem.i.i

land.lhs.true669.i.i:                             ; preds = %land.lhs.true665.i.i
  %tobool671.not.i.i = icmp eq ptr %bufIn.sroa.0.0.i.i, null
  br i1 %tobool671.not.i.i, label %land.lhs.true669.i.i.done_free_mem.i.i_crit_edge, label %if.then.i.i.i1051.i.i

land.lhs.true669.i.i.done_free_mem.i.i_crit_edge: ; preds = %land.lhs.true669.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done_free_mem.i.i

if.then.i.i.i1051.i.i:                            ; preds = %land.lhs.true669.i.i
  call void @__check_object_size(ptr noundef nonnull %bufIn.sroa.0.0.i.i, i32 noundef %karg.sroa.22.0.i.i, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #14
  %call.i.i1052.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i1052.i.i, label %if.then.i.i.i1051.i.i.do.end680.i.i_crit_edge, label %if.end.i.i1056.i.i

if.then.i.i.i1051.i.i.do.end680.i.i_crit_edge:    ; preds = %if.then.i.i.i1051.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end680.i.i

if.end.i.i1056.i.i:                               ; preds = %if.then.i.i.i1051.i.i
  %594 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %384, i32 %karg.sroa.22.0.i.i, i32 -1226833920) #18, !srcloc !544
  %asmresult.i.i1054.i.i = extractvalue { i32, i32 } %594, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i1054.i.i)
  %cmp.i6.i1055.i.i = icmp eq i32 %asmresult.i.i1054.i.i, 0
  br i1 %cmp.i6.i1055.i.i, label %copy_to_user.exit1061.i.i, label %if.end.i.i1056.i.i.do.end680.i.i_crit_edge

if.end.i.i1056.i.i.do.end680.i.i_crit_edge:       ; preds = %if.end.i.i1056.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end680.i.i

copy_to_user.exit1061.i.i:                        ; preds = %if.end.i.i1056.i.i
  %call.i.i.i1057.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %bufIn.sroa.0.0.i.i, i32 noundef %karg.sroa.22.0.i.i) #14
  %call.i12.i.i1058.i.i = call i32 @arm_copy_to_user(ptr noundef %384, ptr noundef nonnull %bufIn.sroa.0.0.i.i, i32 noundef %karg.sroa.22.0.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i1058.i.i)
  %tobool676.not.i.i = icmp eq i32 %call.i12.i.i1058.i.i, 0
  br i1 %tobool676.not.i.i, label %copy_to_user.exit1061.i.i.done_free_mem.i.i_crit_edge, label %copy_to_user.exit1061.i.i.do.end680.i.i_crit_edge

copy_to_user.exit1061.i.i.do.end680.i.i_crit_edge: ; preds = %copy_to_user.exit1061.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end680.i.i

copy_to_user.exit1061.i.i.done_free_mem.i.i_crit_edge: ; preds = %copy_to_user.exit1061.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %done_free_mem.i.i

do.end680.i.i:                                    ; preds = %copy_to_user.exit1061.i.i.do.end680.i.i_crit_edge, %if.end.i.i1056.i.i.do.end680.i.i_crit_edge, %if.then.i.i.i1051.i.i.do.end680.i.i_crit_edge
  %name682.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 2
  %call685.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.256, ptr noundef %name682.i.i, ptr noundef nonnull @.str.5, i32 noundef 2281, ptr noundef %384) #17
  br label %done_free_mem.i.i

if.end700.thread.i.i:                             ; preds = %if.then385.i.i.if.end700.thread.i.i_crit_edge, %do.end360.i.i, %cleanup353.i.i, %do.end285.i.i, %do.end229.i.i, %do.end217.i.i, %do.end143.i.i, %do.end131.i.i, %do.end72.i.i142
  %rc.5.ph.i.i = phi i32 [ -12, %if.then385.i.i.if.end700.thread.i.i_crit_edge ], [ -14, %do.end217.i.i ], [ -14, %do.end229.i.i ], [ -14, %do.end285.i.i ], [ -14, %cleanup353.i.i ], [ -14, %do.end360.i.i ], [ -14, %do.end72.i.i142 ], [ -19, %do.end131.i.i ], [ -19, %do.end143.i.i ]
  %status6891086.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 116, i32 4
  %595 = ptrtoint ptr %status6891086.i.i to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 0, ptr %status6891086.i.i, align 4
  %msg_context6911087.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 116, i32 6
  %596 = ptrtoint ptr %msg_context6911087.i.i to i32
  call void @__asan_store4_noabort(i32 %596)
  store i32 0, ptr %msg_context6911087.i.i, align 4
  br label %if.end709.i.i

done_free_mem.i.i:                                ; preds = %do.end680.i.i, %copy_to_user.exit1061.i.i.done_free_mem.i.i_crit_edge, %land.lhs.true669.i.i.done_free_mem.i.i_crit_edge, %land.lhs.true665.i.i.done_free_mem.i.i_crit_edge, %if.end659.i.i.done_free_mem.i.i_crit_edge, %do.end651.i.i, %do.end618.i.i, %if.end559.i.i, %if.then537.i.i, %if.then533.i.i.done_free_mem.i.i_crit_edge, %do.end489.i.i, %if.then457.i.i, %if.then426.i.i.done_free_mem.i.i_crit_edge
  %rc.5.i.i = phi i32 [ 0, %if.then457.i.i ], [ -61, %do.end618.i.i ], [ -61, %do.end651.i.i ], [ -61, %do.end680.i.i ], [ %rc.4.lcssa.i.i, %copy_to_user.exit1061.i.i.done_free_mem.i.i_crit_edge ], [ %rc.4.lcssa.i.i, %land.lhs.true669.i.i.done_free_mem.i.i_crit_edge ], [ %rc.4.lcssa.i.i, %land.lhs.true665.i.i.done_free_mem.i.i_crit_edge ], [ %rc.4.lcssa.i.i, %if.end659.i.i.done_free_mem.i.i_crit_edge ], [ -62, %if.then537.i.i ], [ -62, %if.then533.i.i.done_free_mem.i.i_crit_edge ], [ -62, %if.end559.i.i ], [ -61, %do.end489.i.i ], [ -12, %if.then426.i.i.done_free_mem.i.i_crit_edge ]
  %bufOut.sroa.0.2.i.i = phi ptr [ %bufOut.sroa.0.1.i.i, %if.then457.i.i ], [ %bufOut.sroa.0.1.i.i, %do.end618.i.i ], [ %bufOut.sroa.0.1.i.i, %do.end651.i.i ], [ %bufOut.sroa.0.1.i.i, %do.end680.i.i ], [ %bufOut.sroa.0.1.i.i, %copy_to_user.exit1061.i.i.done_free_mem.i.i_crit_edge ], [ %bufOut.sroa.0.1.i.i, %land.lhs.true669.i.i.done_free_mem.i.i_crit_edge ], [ %bufOut.sroa.0.1.i.i, %land.lhs.true665.i.i.done_free_mem.i.i_crit_edge ], [ %bufOut.sroa.0.1.i.i, %if.end659.i.i.done_free_mem.i.i_crit_edge ], [ %bufOut.sroa.0.1.i.i, %if.then537.i.i ], [ %bufOut.sroa.0.1.i.i, %if.then533.i.i.done_free_mem.i.i_crit_edge ], [ %bufOut.sroa.0.1.i.i, %if.end559.i.i ], [ %bufOut.sroa.0.1.i.i, %do.end489.i.i ], [ %bufOut.sroa.0.0.i.i, %if.then426.i.i.done_free_mem.i.i_crit_edge ]
  %bufOut.sroa.9.2.i.i = phi i32 [ %bufOut.sroa.9.1.i.i, %if.then457.i.i ], [ %bufOut.sroa.9.1.i.i, %do.end618.i.i ], [ %bufOut.sroa.9.1.i.i, %do.end651.i.i ], [ %bufOut.sroa.9.1.i.i, %do.end680.i.i ], [ %bufOut.sroa.9.1.i.i, %copy_to_user.exit1061.i.i.done_free_mem.i.i_crit_edge ], [ %bufOut.sroa.9.1.i.i, %land.lhs.true669.i.i.done_free_mem.i.i_crit_edge ], [ %bufOut.sroa.9.1.i.i, %land.lhs.true665.i.i.done_free_mem.i.i_crit_edge ], [ %bufOut.sroa.9.1.i.i, %if.end659.i.i.done_free_mem.i.i_crit_edge ], [ %bufOut.sroa.9.1.i.i, %if.then537.i.i ], [ %bufOut.sroa.9.1.i.i, %if.then533.i.i.done_free_mem.i.i_crit_edge ], [ %bufOut.sroa.9.1.i.i, %if.end559.i.i ], [ %bufOut.sroa.9.1.i.i, %do.end489.i.i ], [ %bufOut.sroa.9.0.i.i, %if.then426.i.i.done_free_mem.i.i_crit_edge ]
  %bufIn.sroa.0.1.i.i = phi ptr [ %bufIn.sroa.0.0.i.i, %if.then457.i.i ], [ %bufIn.sroa.0.0.i.i, %do.end618.i.i ], [ %bufIn.sroa.0.0.i.i, %do.end651.i.i ], [ %bufIn.sroa.0.0.i.i, %do.end680.i.i ], [ %bufIn.sroa.0.0.i.i, %copy_to_user.exit1061.i.i.done_free_mem.i.i_crit_edge ], [ null, %land.lhs.true669.i.i.done_free_mem.i.i_crit_edge ], [ %bufIn.sroa.0.0.i.i, %land.lhs.true665.i.i.done_free_mem.i.i_crit_edge ], [ %bufIn.sroa.0.0.i.i, %if.end659.i.i.done_free_mem.i.i_crit_edge ], [ %bufIn.sroa.0.0.i.i, %if.then537.i.i ], [ %bufIn.sroa.0.0.i.i, %if.then533.i.i.done_free_mem.i.i_crit_edge ], [ %bufIn.sroa.0.0.i.i, %if.end559.i.i ], [ %bufIn.sroa.0.0.i.i, %do.end489.i.i ], [ null, %if.then426.i.i.done_free_mem.i.i_crit_edge ]
  %bufIn.sroa.10.1.i.i = phi i32 [ %bufIn.sroa.10.0.i.i, %if.then457.i.i ], [ %bufIn.sroa.10.0.i.i, %do.end618.i.i ], [ %bufIn.sroa.10.0.i.i, %do.end651.i.i ], [ %bufIn.sroa.10.0.i.i, %do.end680.i.i ], [ %bufIn.sroa.10.0.i.i, %copy_to_user.exit1061.i.i.done_free_mem.i.i_crit_edge ], [ %bufIn.sroa.10.0.i.i, %land.lhs.true669.i.i.done_free_mem.i.i_crit_edge ], [ %bufIn.sroa.10.0.i.i, %land.lhs.true665.i.i.done_free_mem.i.i_crit_edge ], [ %bufIn.sroa.10.0.i.i, %if.end659.i.i.done_free_mem.i.i_crit_edge ], [ %bufIn.sroa.10.0.i.i, %if.then537.i.i ], [ %bufIn.sroa.10.0.i.i, %if.then533.i.i.done_free_mem.i.i_crit_edge ], [ %bufIn.sroa.10.0.i.i, %if.end559.i.i ], [ %bufIn.sroa.10.0.i.i, %do.end489.i.i ], [ %karg.sroa.22.0.i.i, %if.then426.i.i.done_free_mem.i.i_crit_edge ]
  %mf.0.i.i = phi ptr [ %call59.i.i, %if.then457.i.i ], [ null, %do.end618.i.i ], [ null, %do.end651.i.i ], [ null, %do.end680.i.i ], [ null, %copy_to_user.exit1061.i.i.done_free_mem.i.i_crit_edge ], [ null, %land.lhs.true669.i.i.done_free_mem.i.i_crit_edge ], [ null, %land.lhs.true665.i.i.done_free_mem.i.i_crit_edge ], [ null, %if.end659.i.i.done_free_mem.i.i_crit_edge ], [ %call59.i.i, %if.then537.i.i ], [ %call59.i.i, %if.then533.i.i.done_free_mem.i.i_crit_edge ], [ null, %if.end559.i.i ], [ %call59.i.i, %do.end489.i.i ], [ %call59.i.i, %if.then426.i.i.done_free_mem.i.i_crit_edge ]
  %status689.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 116, i32 4
  %597 = ptrtoint ptr %status689.i.i to i32
  call void @__asan_store1_noabort(i32 %597)
  store i8 0, ptr %status689.i.i, align 4
  %msg_context691.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 116, i32 6
  %598 = ptrtoint ptr %msg_context691.i.i to i32
  call void @__asan_store4_noabort(i32 %598)
  store i32 0, ptr %msg_context691.i.i, align 4
  %cmp693.not.i.i = icmp eq ptr %bufOut.sroa.0.2.i.i, null
  br i1 %cmp693.not.i.i, label %done_free_mem.i.i.if.end700.i.i_crit_edge, label %done_free_mem.i.i.if.then695.i.i_crit_edge

done_free_mem.i.i.if.then695.i.i_crit_edge:       ; preds = %done_free_mem.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then695.i.i

done_free_mem.i.i.if.end700.i.i_crit_edge:        ; preds = %done_free_mem.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end700.i.i

if.then695.i.i:                                   ; preds = %done_free_mem.i.i.if.then695.i.i_crit_edge, %if.then11.i.i993.i.i
  %mf.01108.i.i = phi ptr [ %call59.i.i, %if.then11.i.i993.i.i ], [ %mf.0.i.i, %done_free_mem.i.i.if.then695.i.i_crit_edge ]
  %bufIn.sroa.10.11107.i.i = phi i32 [ 0, %if.then11.i.i993.i.i ], [ %bufIn.sroa.10.1.i.i, %done_free_mem.i.i.if.then695.i.i_crit_edge ]
  %bufIn.sroa.0.11106.i.i = phi ptr [ null, %if.then11.i.i993.i.i ], [ %bufIn.sroa.0.1.i.i, %done_free_mem.i.i.if.then695.i.i_crit_edge ]
  %bufOut.sroa.9.21105.i.i = phi i32 [ %karg.sroa.35.0.i.i, %if.then11.i.i993.i.i ], [ %bufOut.sroa.9.2.i.i, %done_free_mem.i.i.if.then695.i.i_crit_edge ]
  %bufOut.sroa.0.21104.i.i = phi ptr [ %call.i.i9.i, %if.then11.i.i993.i.i ], [ %bufOut.sroa.0.2.i.i, %done_free_mem.i.i.if.then695.i.i_crit_edge ]
  %rc.51103.i.i = phi i32 [ -14, %if.then11.i.i993.i.i ], [ %rc.5.i.i, %done_free_mem.i.i.if.then695.i.i_crit_edge ]
  %pcidev696.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 54
  %599 = ptrtoint ptr %pcidev696.i.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %pcidev696.i.i, align 8
  %dev697.i.i = getelementptr inbounds %struct.pci_dev, ptr %600, i32 0, i32 44
  %601 = ptrtoint ptr %dma_addr_out.i.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %dma_addr_out.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev697.i.i, i32 noundef %bufOut.sroa.9.21105.i.i, ptr noundef nonnull %bufOut.sroa.0.21104.i.i, i32 noundef %602, i32 noundef 0) #14
  br label %if.end700.i.i

if.end700.i.i:                                    ; preds = %if.then695.i.i, %done_free_mem.i.i.if.end700.i.i_crit_edge
  %mf.01092.i.i = phi ptr [ %mf.01108.i.i, %if.then695.i.i ], [ %mf.0.i.i, %done_free_mem.i.i.if.end700.i.i_crit_edge ]
  %bufIn.sroa.10.11091.i.i = phi i32 [ %bufIn.sroa.10.11107.i.i, %if.then695.i.i ], [ %bufIn.sroa.10.1.i.i, %done_free_mem.i.i.if.end700.i.i_crit_edge ]
  %bufIn.sroa.0.11090.i.i = phi ptr [ %bufIn.sroa.0.11106.i.i, %if.then695.i.i ], [ %bufIn.sroa.0.1.i.i, %done_free_mem.i.i.if.end700.i.i_crit_edge ]
  %rc.51089.i.i = phi i32 [ %rc.51103.i.i, %if.then695.i.i ], [ %rc.5.i.i, %done_free_mem.i.i.if.end700.i.i_crit_edge ]
  %cmp702.not.i.i = icmp eq ptr %bufIn.sroa.0.11090.i.i, null
  br i1 %cmp702.not.i.i, label %if.end700.i.i.if.end709.i.i_crit_edge, label %if.then704.i.i

if.end700.i.i.if.end709.i.i_crit_edge:            ; preds = %if.end700.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end709.i.i

if.then704.i.i:                                   ; preds = %if.end700.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %pcidev705.i.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %366, i32 0, i32 54
  %603 = ptrtoint ptr %pcidev705.i.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %pcidev705.i.i, align 8
  %dev706.i.i = getelementptr inbounds %struct.pci_dev, ptr %604, i32 0, i32 44
  %605 = ptrtoint ptr %dma_addr_in.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %dma_addr_in.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev706.i.i, i32 noundef %bufIn.sroa.10.11091.i.i, ptr noundef nonnull %bufIn.sroa.0.11090.i.i, i32 noundef %606, i32 noundef 0) #14
  br label %if.end709.i.i

if.end709.i.i:                                    ; preds = %if.then704.i.i, %if.end700.i.i.if.end709.i.i_crit_edge, %if.end700.thread.i.i
  %rc.510891115.i.i = phi i32 [ %rc.5.ph.i.i, %if.end700.thread.i.i ], [ %rc.51089.i.i, %if.then704.i.i ], [ %rc.51089.i.i, %if.end700.i.i.if.end709.i.i_crit_edge ]
  %mf.010921114.i.i = phi ptr [ %call59.i.i, %if.end700.thread.i.i ], [ %mf.01092.i.i, %if.then704.i.i ], [ %mf.01092.i.i, %if.end700.i.i.if.end709.i.i_crit_edge ]
  %tobool710.not.i.i = icmp eq ptr %mf.010921114.i.i, null
  br i1 %tobool710.not.i.i, label %if.end709.i.i.mptctl_do_mpt_command.exit.i_crit_edge, label %if.then711.i.i

if.end709.i.i.mptctl_do_mpt_command.exit.i_crit_edge: ; preds = %if.end709.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_do_mpt_command.exit.i

if.then711.i.i:                                   ; preds = %if.end709.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @mpt_free_msg_frame(ptr noundef %366, ptr noundef nonnull %mf.010921114.i.i) #14
  br label %mptctl_do_mpt_command.exit.i

mptctl_do_mpt_command.exit.i:                     ; preds = %if.then711.i.i, %if.end709.i.i.mptctl_do_mpt_command.exit.i_crit_edge, %if.end58.i.i112.mptctl_do_mpt_command.exit.i_crit_edge, %do.end54.i.i, %lor.lhs.false27.i.i.mptctl_do_mpt_command.exit.i_crit_edge, %if.end.i.i.mptctl_do_mpt_command.exit.i_crit_edge, %if.then.i.i107
  %retval.0.i.i = phi i32 [ -16, %if.then.i.i107 ], [ -14, %do.end54.i.i ], [ -22, %lor.lhs.false27.i.i.mptctl_do_mpt_command.exit.i_crit_edge ], [ -22, %if.end.i.i.mptctl_do_mpt_command.exit.i_crit_edge ], [ -11, %if.end58.i.i112.mptctl_do_mpt_command.exit.i_crit_edge ], [ %rc.510891115.i.i, %if.then711.i.i ], [ %rc.510891115.i.i, %if.end709.i.i.mptctl_do_mpt_command.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr_out.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr_in.i.i) #14
  br label %mptctl_mpt_command.exit

mptctl_mpt_command.exit:                          ; preds = %mptctl_do_mpt_command.exit.i, %if.then11.i.i.i104
  %retval.0.i159 = phi i32 [ -14, %if.then11.i.i.i104 ], [ %retval.0.i.i, %mptctl_do_mpt_command.exit.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %karg.i88) #14
  br label %if.end82.i

if.then64.i:                                      ; preds = %if.end54.i
  %607 = ptrtoint ptr %iocp.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %iocp.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %krinfo.i) #14
  %609 = ptrtoint ptr %krinfo.i to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 -1, ptr %krinfo.i, align 4, !annotation !538
  %610 = getelementptr inbounds %struct._mpt_ioctl_header, ptr %krinfo.i, i32 0, i32 1
  %611 = ptrtoint ptr %610 to i32
  call void @__asan_store4_noabort(i32 %611)
  store i32 -1, ptr %610, align 4, !annotation !538
  %612 = getelementptr inbounds %struct._mpt_ioctl_header, ptr %krinfo.i, i32 0, i32 2
  %613 = ptrtoint ptr %612 to i32
  call void @__asan_store4_noabort(i32 %613)
  store i32 -1, ptr %612, align 4, !annotation !538
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i.i66 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i66, label %if.then64.i.if.then11.i.i.i81_crit_edge, label %if.end.i.i.i77

if.then64.i.if.then11.i.i.i81_crit_edge:          ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i81

if.end.i.i.i77:                                   ; preds = %if.then64.i
  %call.i.i.i.i70 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %krinfo.i, i32 noundef 12) #14
  %614 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i.i71 = and i32 %614, -16384
  %615 = inttoptr i32 %and.i.i.i.i.i.i.i71 to ptr
  %cpu_domain.i.i.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %615, i32 0, i32 4
  %616 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i72) #6, !srcloc !541
  %and.i.i.i.i.i73 = and i32 %616, -13
  %or.i.i.i.i.i74 = or i32 %and.i.i.i.i.i73, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i74) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i.i75 = call i32 @arm_copy_from_user(ptr noundef nonnull %krinfo.i, ptr noundef %0, i32 noundef 12) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %616) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i75)
  %tobool4.not.i.i.i76 = icmp eq i32 %call1.i.i.i.i75, 0
  br i1 %tobool4.not.i.i.i76, label %do.body2.i, label %if.end.i.i.i77.if.then11.i.i.i81_crit_edge, !prof !540

if.end.i.i.i77.if.then11.i.i.i81_crit_edge:       ; preds = %if.end.i.i.i77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i81

if.then11.i.i.i81:                                ; preds = %if.end.i.i.i77.if.then11.i.i.i81_crit_edge, %if.then64.i.if.then11.i.i.i81_crit_edge
  %res.0.i.i30.i = phi i32 [ %call1.i.i.i.i75, %if.end.i.i.i77.if.then11.i.i.i81_crit_edge ], [ 12, %if.then64.i.if.then11.i.i.i81_crit_edge ]
  %sub.i.i.i78 = sub i32 12, %res.0.i.i30.i
  %add.ptr.i.i.i79 = getelementptr i8, ptr %krinfo.i, i32 %sub.i.i.i78
  %617 = call ptr @memset(ptr %add.ptr.i.i.i79, i32 0, i32 %res.0.i.i30.i)
  %call1.i80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.5, i32 noundef 714, ptr noundef %0) #17
  br label %mptctl_do_reset.exit

do.body2.i:                                       ; preds = %if.end.i.i.i77
  %debug_level.i82 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %608, i32 0, i32 10
  %618 = ptrtoint ptr %debug_level.i82 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %debug_level.i82, align 4
  %and.i83 = and i32 %619, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool3.not.i = icmp eq i32 %and.i83, 0
  br i1 %tobool3.not.i, label %do.body2.i.do.end12.i86_crit_edge, label %do.end7.i

do.body2.i.do.end12.i86_crit_edge:                ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12.i86

do.end7.i:                                        ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i84 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %608, i32 0, i32 2
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.261, ptr noundef %name.i84) #17
  br label %do.end12.i86

do.end12.i86:                                     ; preds = %do.end7.i, %do.body2.i.do.end12.i86_crit_edge
  %call13.i85 = call i32 @mpt_HardResetHandler(ptr noundef %608, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i85)
  %cmp.not.i = icmp eq i32 %call13.i85, 0
  br i1 %cmp.not.i, label %do.end12.i86.mptctl_do_reset.exit_crit_edge, label %do.end17.i

do.end12.i86.mptctl_do_reset.exit_crit_edge:      ; preds = %do.end12.i86
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_do_reset.exit

do.end17.i:                                       ; preds = %do.end12.i86
  call void @__sanitizer_cov_trace_pc() #16
  %name19.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %608, i32 0, i32 2
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.264, ptr noundef %name19.i, ptr noundef nonnull @.str.5, i32 noundef 723) #17
  br label %mptctl_do_reset.exit

mptctl_do_reset.exit:                             ; preds = %do.end17.i, %do.end12.i86.mptctl_do_reset.exit_crit_edge, %if.then11.i.i.i81
  %retval.0.i87 = phi i32 [ -14, %if.then11.i.i.i81 ], [ -1, %do.end17.i ], [ 0, %do.end12.i86.mptctl_do_reset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %krinfo.i) #14
  br label %if.end82.i

if.else66.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147460588, i32 %and16.i)
  %cmp68.i = icmp eq i32 %and16.i, -2147460588
  br i1 %cmp68.i, label %if.then69.i, label %if.else73.i

if.then69.i:                                      ; preds = %if.else66.i
  %620 = ptrtoint ptr %iocp.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %iocp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf_dma.i) #14
  %622 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_store4_noabort(i32 %622)
  store i32 -1, ptr %buf_dma.i, align 4, !annotation !538
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %karg.i25) #14
  %623 = call ptr @memset(ptr %karg.i25, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg.i26) #14
  %624 = call ptr @memset(ptr %cfg.i26, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr.i27) #14
  %625 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr.i27, i32 0, i32 1
  %626 = and i32 %cmd, 1073676288
  call void @__sanitizer_cov_trace_const_cmp4(i32 6553600, i32 %626)
  %cmp.i28 = icmp eq i32 %626, 6553600
  %627 = ptrtoint ptr %hdr.i27 to i32
  call void @__asan_store4_noabort(i32 %627)
  store i32 9, ptr %hdr.i27, align 4
  br i1 %cmp.i28, label %if.end8.i.i.i, label %if.then69.i.mptctl_hp_hostinfo.exit_crit_edge

if.then69.i.mptctl_hp_hostinfo.exit_crit_edge:    ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_hp_hostinfo.exit

if.end8.i.i.i:                                    ; preds = %if.then69.i
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i.i29 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i29, label %if.end8.i.i.i.if.then11.i.i.i43_crit_edge, label %land.lhs.true.i.i.i32

if.end8.i.i.i.if.then11.i.i.i43_crit_edge:        ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i43

land.lhs.true.i.i.i32:                            ; preds = %if.end8.i.i.i
  %628 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 100, i32 -1226833920) #18
  %asmresult.i.i.i30 = extractvalue { i32, i32 } %628, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i30)
  %cmp.i6.i.i31 = icmp eq i32 %asmresult.i.i.i30, 0
  br i1 %cmp.i6.i.i31, label %if.end.i.i.i40, label %land.lhs.true.i.i.i32.if.then11.i.i.i43_crit_edge, !prof !540

land.lhs.true.i.i.i32.if.then11.i.i.i43_crit_edge: ; preds = %land.lhs.true.i.i.i32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i43

if.end.i.i.i40:                                   ; preds = %land.lhs.true.i.i.i32
  %call.i.i.i.i33 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg.i25, i32 noundef 100) #14
  %629 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i.i34 = and i32 %629, -16384
  %630 = inttoptr i32 %and.i.i.i.i.i.i.i34 to ptr
  %cpu_domain.i.i.i.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %630, i32 0, i32 4
  %631 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i35) #6, !srcloc !541
  %and.i.i.i.i.i36 = and i32 %631, -13
  %or.i.i.i.i.i37 = or i32 %and.i.i.i.i.i36, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i37) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i.i38 = call i32 @arm_copy_from_user(ptr noundef nonnull %karg.i25, ptr noundef %0, i32 noundef 100) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %631) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i38)
  %tobool4.not.i.i.i39 = icmp eq i32 %call1.i.i.i.i38, 0
  br i1 %tobool4.not.i.i.i39, label %do.body9.i, label %if.end.i.i.i40.if.then11.i.i.i43_crit_edge, !prof !540

if.end.i.i.i40.if.then11.i.i.i43_crit_edge:       ; preds = %if.end.i.i.i40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i43

if.then11.i.i.i43:                                ; preds = %if.end.i.i.i40.if.then11.i.i.i43_crit_edge, %land.lhs.true.i.i.i32.if.then11.i.i.i43_crit_edge, %if.end8.i.i.i.if.then11.i.i.i43_crit_edge
  %res.0.i.i322.i = phi i32 [ %call1.i.i.i.i38, %if.end.i.i.i40.if.then11.i.i.i43_crit_edge ], [ 100, %if.end8.i.i.i.if.then11.i.i.i43_crit_edge ], [ 100, %land.lhs.true.i.i.i32.if.then11.i.i.i43_crit_edge ]
  %sub.i.i.i41 = sub i32 100, %res.0.i.i322.i
  %add.ptr.i.i.i42 = getelementptr i8, ptr %karg.i25, i32 %sub.i.i.i41
  %632 = call ptr @memset(ptr %add.ptr.i.i.i42, i32 0, i32 %res.0.i.i322.i)
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.5, i32 noundef 2352, ptr noundef %0) #17
  br label %mptctl_hp_hostinfo.exit

do.body9.i:                                       ; preds = %if.end.i.i.i40
  %debug_level.i44 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 10
  %633 = ptrtoint ptr %debug_level.i44 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load i32, ptr %debug_level.i44, align 4
  %and.i45 = and i32 %634, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool10.not.i = icmp eq i32 %and.i45, 0
  br i1 %tobool10.not.i, label %do.body9.i.do.end19.i_crit_edge, label %do.end14.i

do.body9.i.do.end19.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19.i

do.end14.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i46 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 2
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, ptr noundef %name.i46) #17
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end14.i, %do.body9.i.do.end19.i_crit_edge
  %pcidev.i47 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 54
  %635 = ptrtoint ptr %pcidev.i47 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %pcidev.i47, align 8
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %636, i32 0, i32 7
  %637 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %637)
  %638 = load i16, ptr %vendor.i, align 8
  %vendor20.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 1
  %639 = ptrtoint ptr %vendor20.i to i32
  call void @__asan_store2_noabort(i32 %639)
  store i16 %638, ptr %vendor20.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %636, i32 0, i32 8
  %640 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %640)
  %641 = load i16, ptr %device.i, align 2
  %device21.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 2
  %642 = ptrtoint ptr %device21.i to i32
  call void @__asan_store2_noabort(i32 %642)
  store i16 %641, ptr %device21.i, align 2
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %636, i32 0, i32 10
  %643 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %643)
  %644 = load i16, ptr %subsystem_device.i, align 2
  %subsystem_id.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 4
  %645 = ptrtoint ptr %subsystem_id.i to i32
  call void @__asan_store2_noabort(i32 %645)
  store i16 %644, ptr %subsystem_id.i, align 2
  %subsystem_vendor.i = getelementptr inbounds %struct.pci_dev, ptr %636, i32 0, i32 9
  %646 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %646)
  %647 = load i16, ptr %subsystem_vendor.i, align 4
  %subsystem_vendor22.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 3
  %648 = ptrtoint ptr %subsystem_vendor22.i to i32
  call void @__asan_store2_noabort(i32 %648)
  store i16 %647, ptr %subsystem_vendor22.i, align 4
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %636, i32 0, i32 6
  %649 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %devfn.i, align 4
  %conv.i = trunc i32 %650 to i8
  %devfn23.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 5
  %651 = ptrtoint ptr %devfn23.i to i32
  call void @__asan_store1_noabort(i32 %651)
  store i8 %conv.i, ptr %devfn23.i, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %636, i32 0, i32 1
  %652 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %653, i32 0, i32 12
  %654 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %654)
  %655 = load i8, ptr %number.i, align 4
  %bus24.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 6
  %656 = ptrtoint ptr %bus24.i to i32
  call void @__asan_store1_noabort(i32 %656)
  store i8 %655, ptr %bus24.i, align 1
  %sh.i48 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 58
  %657 = ptrtoint ptr %sh.i48 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %sh.i48, align 8
  %cmp25.not.i = icmp eq ptr %658, null
  br i1 %cmp25.not.i, label %do.end19.i.if.end33.i_crit_edge, label %if.then27.i

do.end19.i.if.end33.i_crit_edge:                  ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i

if.then27.i:                                      ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  %host_no.i49 = getelementptr inbounds %struct.Scsi_Host, ptr %658, i32 0, i32 17
  %659 = ptrtoint ptr %host_no.i49 to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load i32, ptr %host_no.i49, align 4
  %conv29.i = trunc i32 %660 to i16
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then27.i, %do.end19.i.if.end33.i_crit_edge
  %conv29.sink.i = phi i16 [ %conv29.i, %if.then27.i ], [ -1, %do.end19.i.if.end33.i_crit_edge ]
  %661 = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 7
  %662 = ptrtoint ptr %661 to i32
  call void @__asan_store2_noabort(i32 %662)
  store i16 %conv29.sink.i, ptr %661, align 2
  %fw_version.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 8
  %FWVersion.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 77, i32 28
  %Major.i = getelementptr inbounds %struct._MPI_FW_VERSION_STRUCT, ptr %FWVersion.i, i32 0, i32 3
  %663 = ptrtoint ptr %Major.i to i32
  call void @__asan_load1_noabort(i32 %663)
  %664 = load i8, ptr %Major.i, align 1
  %conv35.i = zext i8 %664 to i32
  %Minor.i = getelementptr inbounds %struct._MPI_FW_VERSION_STRUCT, ptr %FWVersion.i, i32 0, i32 2
  %665 = ptrtoint ptr %Minor.i to i32
  call void @__asan_load1_noabort(i32 %665)
  %666 = load i8, ptr %Minor.i, align 2
  %conv38.i = zext i8 %666 to i32
  %Unit.i = getelementptr inbounds %struct._MPI_FW_VERSION_STRUCT, ptr %FWVersion.i, i32 0, i32 1
  %667 = ptrtoint ptr %Unit.i to i32
  call void @__asan_load1_noabort(i32 %667)
  %668 = load i8, ptr %Unit.i, align 1
  %conv41.i = zext i8 %668 to i32
  %669 = ptrtoint ptr %FWVersion.i to i32
  call void @__asan_load1_noabort(i32 %669)
  %670 = load i8, ptr %FWVersion.i, align 8
  %conv44.i = zext i8 %670 to i32
  %call45.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version.i, i32 noundef 16, ptr noundef nonnull @.str.271, i32 noundef %conv35.i, i32 noundef %conv38.i, i32 noundef %conv41.i, i32 noundef %conv44.i) #14
  %671 = ptrtoint ptr %cfg.i26 to i32
  call void @__asan_store4_noabort(i32 %671)
  store ptr %hdr.i27, ptr %cfg.i26, align 4
  %physAddr.i50 = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i26, i32 0, i32 1
  %672 = ptrtoint ptr %physAddr.i50 to i32
  call void @__asan_store4_noabort(i32 %672)
  store i32 -1, ptr %physAddr.i50, align 4
  %pageAddr.i51 = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i26, i32 0, i32 2
  %673 = ptrtoint ptr %pageAddr.i51 to i32
  call void @__asan_store4_noabort(i32 %673)
  store i32 0, ptr %pageAddr.i51, align 4
  %action.i52 = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i26, i32 0, i32 4
  %674 = ptrtoint ptr %action.i52 to i32
  call void @__asan_store1_noabort(i32 %674)
  store i8 0, ptr %action.i52, align 2
  %dir.i53 = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i26, i32 0, i32 5
  %675 = ptrtoint ptr %dir.i53 to i32
  call void @__asan_store1_noabort(i32 %675)
  store i8 0, ptr %dir.i53, align 1
  %timeout.i54 = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i26, i32 0, i32 6
  %676 = ptrtoint ptr %timeout.i54 to i32
  call void @__asan_store1_noabort(i32 %676)
  store i8 10, ptr %timeout.i54, align 4
  %serial_number.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 9
  %677 = call ptr @memcpy(ptr %serial_number.i, ptr @str.321, i32 24)
  %call48.i = call i32 @mpt_config(ptr noundef %621, ptr noundef nonnull %cfg.i26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp eq i32 %call48.i, 0
  br i1 %cmp49.i, label %if.then51.i, label %if.end33.i.if.end89.i_crit_edge

if.end33.i.if.end89.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89.i

if.then51.i:                                      ; preds = %if.end33.i
  %678 = ptrtoint ptr %cfg.i26 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %cfg.i26, align 4
  %PageLength53.i = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %679, i32 0, i32 1
  %680 = ptrtoint ptr %PageLength53.i to i32
  call void @__asan_load1_noabort(i32 %680)
  %681 = load i8, ptr %PageLength53.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %681)
  %cmp55.not.i = icmp eq i8 %681, 0
  br i1 %cmp55.not.i, label %if.then51.i.if.end89.i_crit_edge, label %if.then57.i

if.then51.i.if.end89.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89.i

if.then57.i:                                      ; preds = %if.then51.i
  %682 = ptrtoint ptr %action.i52 to i32
  call void @__asan_store1_noabort(i32 %682)
  store i8 1, ptr %action.i52, align 2
  %683 = ptrtoint ptr %pcidev.i47 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %pcidev.i47, align 8
  %dev.i55 = getelementptr inbounds %struct.pci_dev, ptr %684, i32 0, i32 44
  %685 = ptrtoint ptr %625 to i32
  call void @__asan_load1_noabort(i32 %685)
  %686 = load i8, ptr %625, align 1
  %conv61.i = zext i8 %686 to i32
  %mul.i56 = shl nuw nsw i32 %conv61.i, 2
  %call.i.i57 = call ptr @dma_alloc_attrs(ptr noundef %dev.i55, i32 noundef %mul.i56, ptr noundef nonnull %buf_dma.i, i32 noundef 3264, i32 noundef 0) #14
  %tobool63.not.i = icmp eq ptr %call.i.i57, null
  br i1 %tobool63.not.i, label %if.then57.i.if.end89.i_crit_edge, label %if.then64.i58

if.then57.i.if.end89.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89.i

if.then64.i58:                                    ; preds = %if.then57.i
  %687 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load i32, ptr %buf_dma.i, align 4
  %689 = ptrtoint ptr %physAddr.i50 to i32
  call void @__asan_store4_noabort(i32 %689)
  store i32 %688, ptr %physAddr.i50, align 4
  %call66.i = call i32 @mpt_config(ptr noundef %621, ptr noundef nonnull %cfg.i26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %cmp67.i = icmp eq i32 %call66.i, 0
  br i1 %cmp67.i, label %if.then69.i59, label %if.then64.i58.if.end81.i_crit_edge

if.then64.i58.if.end81.i_crit_edge:               ; preds = %if.then64.i58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81.i

if.then69.i59:                                    ; preds = %if.then64.i58
  %BoardTracerNumber.i = getelementptr inbounds %struct._CONFIG_PAGE_MANUFACTURING_0, ptr %call.i.i57, i32 0, i32 5
  %call71.i = call i32 @strlen(ptr noundef %BoardTracerNumber.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call71.i)
  %cmp72.i = icmp ugt i32 %call71.i, 1
  br i1 %cmp72.i, label %if.then74.i, label %if.then69.i59.if.end81.i_crit_edge

if.then69.i59.if.end81.i_crit_edge:               ; preds = %if.then69.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end81.i

if.then74.i:                                      ; preds = %if.then69.i59
  call void @__sanitizer_cov_trace_pc() #16
  %call79.i = call i32 @strlcpy(ptr noundef %serial_number.i, ptr noundef %BoardTracerNumber.i, i32 noundef 24) #14
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then74.i, %if.then69.i59.if.end81.i_crit_edge, %if.then64.i58.if.end81.i_crit_edge
  %690 = ptrtoint ptr %pcidev.i47 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %pcidev.i47, align 8
  %dev83.i = getelementptr inbounds %struct.pci_dev, ptr %691, i32 0, i32 44
  %692 = ptrtoint ptr %625 to i32
  call void @__asan_load1_noabort(i32 %692)
  %693 = load i8, ptr %625, align 1
  %conv85.i = zext i8 %693 to i32
  %mul86.i = shl nuw nsw i32 %conv85.i, 2
  %694 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load i32, ptr %buf_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev83.i, i32 noundef %mul86.i, ptr noundef nonnull %call.i.i57, i32 noundef %695, i32 noundef 0) #14
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.end81.i, %if.then57.i.if.end89.i_crit_edge, %if.then51.i.if.end89.i_crit_edge, %if.end33.i.if.end89.i_crit_edge
  %call90.i = call i32 @mpt_GetIocState(ptr noundef %621, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call90.i)
  %switch.selectcmp.i = icmp eq i32 %call90.i, 1073741824
  %switch.select.i = select i1 %switch.selectcmp.i, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %call90.i)
  %switch.selectcmp340.i = icmp eq i32 %call90.i, 536870912
  %switch.select341.i = select i1 %switch.selectcmp340.i, i32 2, i32 %switch.select.i
  %ioc_status94.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 10
  %696 = ptrtoint ptr %ioc_status94.i to i32
  call void @__asan_store4_noabort(i32 %696)
  store i32 %switch.select341.i, ptr %ioc_status94.i, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %636, i32 0, i32 47
  %697 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load i32, ptr %resource.i, align 8
  %base_io_addr.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 12
  %699 = ptrtoint ptr %base_io_addr.i to i32
  call void @__asan_store4_noabort(i32 %699)
  store i32 %698, ptr %base_io_addr.i, align 4
  %bus_type.i60 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 15
  %700 = ptrtoint ptr %bus_type.i60 to i32
  call void @__asan_load1_noabort(i32 %700)
  %701 = load i8, ptr %bus_type.i60, align 4
  %switch.and.i = and i8 %701, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i)
  %switch.selectcmp342.i = icmp eq i8 %switch.and.i, 0
  %702 = select i1 %switch.selectcmp342.i, i32 1, i32 3
  %bus_phys_width104.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 11
  %703 = ptrtoint ptr %bus_phys_width104.i to i32
  call void @__asan_store4_noabort(i32 %703)
  store i32 %702, ptr %bus_phys_width104.i, align 4
  %hard_resets.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 14
  %704 = ptrtoint ptr %hard_resets.i to i32
  call void @__asan_store4_noabort(i32 %704)
  store i32 0, ptr %hard_resets.i, align 4
  %soft_resets.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 15
  %705 = ptrtoint ptr %soft_resets.i to i32
  call void @__asan_store4_noabort(i32 %705)
  store i32 0, ptr %soft_resets.i, align 4
  %timeouts.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 16
  %706 = ptrtoint ptr %timeouts.i to i32
  call void @__asan_store4_noabort(i32 %706)
  store i32 0, ptr %timeouts.i, align 4
  %707 = ptrtoint ptr %sh.i48 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %sh.i48, align 8
  %cmp107.not.i = icmp eq ptr %708, null
  br i1 %cmp107.not.i, label %if.end89.i.if.end123.i_crit_edge, label %if.then115.i

if.end89.i.if.end123.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123.i

if.then115.i:                                     ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #16
  %hard_resets116.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 134
  %709 = ptrtoint ptr %hard_resets116.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %hard_resets116.i, align 4
  %711 = ptrtoint ptr %hard_resets.i to i32
  call void @__asan_store4_noabort(i32 %711)
  store i32 %710, ptr %hard_resets.i, align 4
  %soft_resets118.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 135
  %712 = ptrtoint ptr %soft_resets118.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load i32, ptr %soft_resets118.i, align 8
  %714 = ptrtoint ptr %soft_resets.i to i32
  call void @__asan_store4_noabort(i32 %714)
  store i32 %713, ptr %soft_resets.i, align 4
  %timeouts120.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 136
  %715 = ptrtoint ptr %timeouts120.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %timeouts120.i, align 4
  %717 = ptrtoint ptr %timeouts.i to i32
  call void @__asan_store4_noabort(i32 %717)
  store i32 %716, ptr %timeouts.i, align 4
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then115.i, %if.end89.i.if.end123.i_crit_edge
  %718 = load i8, ptr @mptctl_id, align 1
  %call124.i = call ptr @mpt_get_msg_frame(i8 noundef zeroext %718, ptr noundef %621) #14
  %cmp125.i = icmp eq ptr %call124.i, null
  br i1 %cmp125.i, label %do.body128.i, label %if.end143.i62

do.body128.i:                                     ; preds = %if.end123.i
  %719 = ptrtoint ptr %debug_level.i44 to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load i32, ptr %debug_level.i44, align 4
  %and130.i = and i32 %720, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  br i1 %tobool131.not.i, label %do.body128.i.if.end210.thread.i_crit_edge, label %do.end135.i

do.body128.i.if.end210.thread.i_crit_edge:        ; preds = %do.body128.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210.thread.i

do.end135.i:                                      ; preds = %do.body128.i
  call void @__sanitizer_cov_trace_pc() #16
  %name137.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 2
  %call139.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274, ptr noundef %name137.i, ptr noundef nonnull @.str.267) #17
  br label %if.end210.thread.i

if.end143.i62:                                    ; preds = %if.end123.i
  %MsgContext.i = getelementptr inbounds %struct._MSG_TOOLBOX_ISTWI_READ_WRITE_REQUEST, ptr %call124.i, i32 0, i32 7
  %721 = ptrtoint ptr %MsgContext.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load i32, ptr %MsgContext.i, align 4
  %723 = call ptr @memset(ptr %call124.i, i32 0, i32 40)
  store i32 %722, ptr %MsgContext.i, align 4
  %Function.i = getelementptr inbounds %struct._MSG_TOOLBOX_ISTWI_READ_WRITE_REQUEST, ptr %call124.i, i32 0, i32 3
  %724 = ptrtoint ptr %Function.i to i32
  call void @__asan_store1_noabort(i32 %724)
  store i8 23, ptr %Function.i, align 1
  %725 = ptrtoint ptr %call124.i to i32
  call void @__asan_store1_noabort(i32 %725)
  store i8 3, ptr %call124.i, align 4
  %Flags.i = getelementptr inbounds %struct._MSG_TOOLBOX_ISTWI_READ_WRITE_REQUEST, ptr %call124.i, i32 0, i32 8
  %726 = ptrtoint ptr %Flags.i to i32
  call void @__asan_store1_noabort(i32 %726)
  store i8 1, ptr %Flags.i, align 4
  %NumAddressBytes.i = getelementptr inbounds %struct._MSG_TOOLBOX_ISTWI_READ_WRITE_REQUEST, ptr %call124.i, i32 0, i32 11
  %727 = ptrtoint ptr %NumAddressBytes.i to i32
  call void @__asan_store1_noabort(i32 %727)
  store i8 1, ptr %NumAddressBytes.i, align 4
  %DataLength.i = getelementptr inbounds %struct._MSG_TOOLBOX_ISTWI_READ_WRITE_REQUEST, ptr %call124.i, i32 0, i32 13
  %728 = ptrtoint ptr %DataLength.i to i32
  call void @__asan_store2_noabort(i32 %728)
  store i16 1024, ptr %DataLength.i, align 2
  %729 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load i32, ptr %devfn.i, align 4
  %and146.i = and i32 %730, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i)
  %tobool147.not.i = icmp eq i32 %and146.i, 0
  %spec.select.i = select i1 %tobool147.not.i, i8 -80, i8 -78
  %731 = getelementptr inbounds %struct._MSG_TOOLBOX_ISTWI_READ_WRITE_REQUEST, ptr %call124.i, i32 0, i32 14
  %732 = ptrtoint ptr %731 to i32
  call void @__asan_store1_noabort(i32 %732)
  store i8 %spec.select.i, ptr %731, align 4
  %733 = ptrtoint ptr %pcidev.i47 to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %pcidev.i47, align 8
  %dev153.i = getelementptr inbounds %struct.pci_dev, ptr %734, i32 0, i32 44
  %call.i319.i = call ptr @dma_alloc_attrs(ptr noundef %dev153.i, i32 noundef 4, ptr noundef nonnull %buf_dma.i, i32 noundef 3264, i32 noundef 0) #14
  %tobool155.not.i = icmp eq ptr %call.i319.i, null
  br i1 %tobool155.not.i, label %if.end143.i62.if.end210.thread.i_crit_edge, label %if.end157.i

if.end143.i62.if.end210.thread.i_crit_edge:       ; preds = %if.end143.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210.thread.i

if.end157.i:                                      ; preds = %if.end143.i62
  %add_sge.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 32
  %735 = ptrtoint ptr %add_sge.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %add_sge.i, align 8
  %SGL.i = getelementptr inbounds %struct._MSG_TOOLBOX_ISTWI_READ_WRITE_REQUEST, ptr %call124.i, i32 0, i32 19
  %737 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load i32, ptr %buf_dma.i, align 4
  call void %736(ptr noundef %SGL.i, i32 noundef -788529148, i32 noundef %738) #14
  %739 = ptrtoint ptr %MsgContext.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %MsgContext.i, align 4
  %msg_context.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 116, i32 6
  %741 = ptrtoint ptr %msg_context.i to i32
  call void @__asan_store4_noabort(i32 %741)
  store i32 %740, ptr %msg_context.i, align 4
  %status.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 116, i32 4
  %742 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %742)
  store i8 4, ptr %status.i, align 4
  %743 = load i8, ptr @mptctl_id, align 1
  call void @mpt_put_msg_frame(i8 noundef zeroext %743, ptr noundef %621, ptr noundef nonnull %call124.i) #14
  %done.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 116, i32 1
  %name172.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 2
  br label %retry_wait.i

retry_wait.i:                                     ; preds = %if.end181.i.retry_wait.i_crit_edge, %if.end157.i
  %call161.i = call i32 @wait_for_completion_timeout(ptr noundef %done.i, i32 noundef 1000) #14
  %744 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %744)
  %745 = load i8, ptr %status.i, align 4
  %746 = and i8 %745, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %746)
  %tobool166.not.i = icmp eq i8 %746, 0
  br i1 %tobool166.not.i, label %if.then167.i, label %if.end194.i

if.then167.i:                                     ; preds = %retry_wait.i
  %call174.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %name172.i, ptr noundef nonnull @.str.267) #17
  %747 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %747)
  %748 = load i8, ptr %status.i, align 4
  %749 = and i8 %748, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %749)
  %tobool179.not.i = icmp eq i8 %749, 0
  br i1 %tobool179.not.i, label %if.end181.i, label %if.then180.i

if.then180.i:                                     ; preds = %if.then167.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @mpt_free_msg_frame(ptr noundef %621, ptr noundef nonnull %call124.i) #14
  br label %out.i

if.end181.i:                                      ; preds = %if.then167.i
  %tobool182.not.i = icmp eq i32 %call161.i, 0
  br i1 %tobool182.not.i, label %do.end186.i, label %if.end181.i.retry_wait.i_crit_edge

if.end181.i.retry_wait.i_crit_edge:               ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry_wait.i

do.end186.i:                                      ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #16
  %call190.i = call i32 @mpt_GetIocState(ptr noundef %621, i32 noundef 0) #14
  %call191.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279, ptr noundef %name172.i, i32 noundef %call190.i) #17
  call fastcc void @mptctl_timeout_expired(ptr noundef %621, ptr noundef nonnull %call124.i) #14
  br label %out.i

if.end194.i:                                      ; preds = %retry_wait.i
  %750 = and i8 %745, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %750)
  %tobool199.not.i = icmp eq i8 %750, 0
  br i1 %tobool199.not.i, label %if.end194.i.out.i_crit_edge, label %if.then200.i

if.end194.i.out.i_crit_edge:                      ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.i

if.then200.i:                                     ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #16
  %751 = ptrtoint ptr %call.i319.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %call.i319.i, align 4
  %rsvd.i = getelementptr inbounds %struct._hp_host_info, ptr %karg.i25, i32 0, i32 13
  %753 = ptrtoint ptr %rsvd.i to i32
  call void @__asan_store4_noabort(i32 %753)
  store i32 %752, ptr %rsvd.i, align 4
  br label %out.i

if.end210.thread.i:                               ; preds = %if.end143.i62.if.end210.thread.i_crit_edge, %do.end135.i, %do.body128.i.if.end210.thread.i_crit_edge
  %status203326.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 116, i32 4
  %754 = ptrtoint ptr %status203326.i to i32
  call void @__asan_store1_noabort(i32 %754)
  store i8 0, ptr %status203326.i, align 4
  %msg_context205327.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 116, i32 6
  %755 = ptrtoint ptr %msg_context205327.i to i32
  call void @__asan_store4_noabort(i32 %755)
  store i32 0, ptr %msg_context205327.i, align 4
  br label %if.end8.i.i312.i

out.i:                                            ; preds = %if.then200.i, %if.end194.i.out.i_crit_edge, %do.end186.i, %if.then180.i
  %756 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %756)
  store i8 0, ptr %status.i, align 4
  %757 = ptrtoint ptr %msg_context.i to i32
  call void @__asan_store4_noabort(i32 %757)
  store i32 0, ptr %msg_context.i, align 4
  %758 = ptrtoint ptr %pcidev.i47 to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %pcidev.i47, align 8
  %dev209.i = getelementptr inbounds %struct.pci_dev, ptr %759, i32 0, i32 44
  %760 = ptrtoint ptr %buf_dma.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load i32, ptr %buf_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev209.i, i32 noundef 4, ptr noundef nonnull %call.i319.i, i32 noundef %761, i32 noundef 0) #14
  br label %if.end8.i.i312.i

if.end8.i.i312.i:                                 ; preds = %out.i, %if.end210.thread.i
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #14
  %call.i.i313.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i313.i, label %if.end8.i.i312.i.do.end216.i_crit_edge, label %copy_to_user.exit.i64

if.end8.i.i312.i.do.end216.i_crit_edge:           ; preds = %if.end8.i.i312.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end216.i

copy_to_user.exit.i64:                            ; preds = %if.end8.i.i312.i
  %call.i.i.i317.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %karg.i25, i32 noundef 100) #14
  %call.i12.i.i.i63 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %karg.i25, i32 noundef 100) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i63)
  %tobool212.not.i = icmp eq i32 %call.i12.i.i.i63, 0
  br i1 %tobool212.not.i, label %copy_to_user.exit.i64.mptctl_hp_hostinfo.exit_crit_edge, label %copy_to_user.exit.i64.do.end216.i_crit_edge

copy_to_user.exit.i64.do.end216.i_crit_edge:      ; preds = %copy_to_user.exit.i64
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end216.i

copy_to_user.exit.i64.mptctl_hp_hostinfo.exit_crit_edge: ; preds = %copy_to_user.exit.i64
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_hp_hostinfo.exit

do.end216.i:                                      ; preds = %copy_to_user.exit.i64.do.end216.i_crit_edge, %if.end8.i.i312.i.do.end216.i_crit_edge
  %name218.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %621, i32 0, i32 2
  %call220.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, ptr noundef %name218.i, ptr noundef nonnull @.str.5, i32 noundef 2541, ptr noundef %0) #17
  br label %mptctl_hp_hostinfo.exit

mptctl_hp_hostinfo.exit:                          ; preds = %do.end216.i, %copy_to_user.exit.i64.mptctl_hp_hostinfo.exit_crit_edge, %if.then11.i.i.i43, %if.then69.i.mptctl_hp_hostinfo.exit_crit_edge
  %retval.0.i65 = phi i32 [ -14, %if.then11.i.i.i43 ], [ -14, %do.end216.i ], [ -14, %if.then69.i.mptctl_hp_hostinfo.exit_crit_edge ], [ 0, %copy_to_user.exit.i64.mptctl_hp_hostinfo.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr.i27) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg.i26) #14
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %karg.i25) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf_dma.i) #14
  br label %if.end82.i

if.else73.i:                                      ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2144314859, i32 %cmd)
  %cmp74.i = icmp eq i32 %cmd, -2144314859
  br i1 %cmp74.i, label %if.then75.i, label %if.else73.i.if.end82.i_crit_edge

if.else73.i.if.end82.i_crit_edge:                 ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82.i

if.then75.i:                                      ; preds = %if.else73.i
  %762 = ptrtoint ptr %iocp.i to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %iocp.i, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %karg.i) #14
  %764 = call ptr @memset(ptr %karg.i, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_dma.i) #14
  %765 = ptrtoint ptr %page_dma.i to i32
  call void @__asan_store4_noabort(i32 %765)
  store i32 -1, ptr %page_dma.i, align 4, !annotation !538
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %cfg.i) #14
  %766 = call ptr @memset(ptr %cfg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr.i) #14
  %767 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr.i, i32 0, i32 1
  %768 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr.i, i32 0, i32 2
  %769 = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %hdr.i, i32 0, i32 3
  %770 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store4_noabort(i32 %770)
  store i32 -1, ptr %hdr.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #14
  %call.i.i.i1 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i1, label %if.then75.i.if.then11.i.i.i15_crit_edge, label %land.lhs.true.i.i.i4

if.then75.i.if.then11.i.i.i15_crit_edge:          ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i15

land.lhs.true.i.i.i4:                             ; preds = %if.then75.i
  %771 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 48, i32 -1226833920) #18
  %asmresult.i.i.i2 = extractvalue { i32, i32 } %771, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i2)
  %cmp.i6.i.i3 = icmp eq i32 %asmresult.i.i.i2, 0
  br i1 %cmp.i6.i.i3, label %if.end.i.i.i12, label %land.lhs.true.i.i.i4.if.then11.i.i.i15_crit_edge, !prof !540

land.lhs.true.i.i.i4.if.then11.i.i.i15_crit_edge: ; preds = %land.lhs.true.i.i.i4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i15

if.end.i.i.i12:                                   ; preds = %land.lhs.true.i.i.i4
  %call.i.i.i.i5 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %karg.i, i32 noundef 48) #14
  %772 = call i32 @llvm.read_register.i32(metadata !528) #14
  %and.i.i.i.i.i.i.i6 = and i32 %772, -16384
  %773 = inttoptr i32 %and.i.i.i.i.i.i.i6 to ptr
  %cpu_domain.i.i.i.i.i.i7 = getelementptr inbounds %struct.thread_info, ptr %773, i32 0, i32 4
  %774 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i7) #6, !srcloc !541
  %and.i.i.i.i.i8 = and i32 %774, -13
  %or.i.i.i.i.i9 = or i32 %and.i.i.i.i.i8, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i9) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  %call1.i.i.i.i10 = call i32 @arm_copy_from_user(ptr noundef nonnull %karg.i, ptr noundef %0, i32 noundef 48) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %774) #14, !srcloc !542
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i10)
  %tobool4.not.i.i.i11 = icmp eq i32 %call1.i.i.i.i10, 0
  br i1 %tobool4.not.i.i.i11, label %if.end.i17, label %if.end.i.i.i12.if.then11.i.i.i15_crit_edge, !prof !540

if.end.i.i.i12.if.then11.i.i.i15_crit_edge:       ; preds = %if.end.i.i.i12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i15

if.then11.i.i.i15:                                ; preds = %if.end.i.i.i12.if.then11.i.i.i15_crit_edge, %land.lhs.true.i.i.i4.if.then11.i.i.i15_crit_edge, %if.then75.i.if.then11.i.i.i15_crit_edge
  %res.0.i.i230.i = phi i32 [ %call1.i.i.i.i10, %if.end.i.i.i12.if.then11.i.i.i15_crit_edge ], [ 48, %if.then75.i.if.then11.i.i.i15_crit_edge ], [ 48, %land.lhs.true.i.i.i4.if.then11.i.i.i15_crit_edge ]
  %sub.i.i.i13 = sub i32 48, %res.0.i.i230.i
  %add.ptr.i.i.i14 = getelementptr i8, ptr %karg.i, i32 %sub.i.i.i13
  %775 = call ptr @memset(ptr %add.ptr.i.i.i14, i32 0, i32 %res.0.i.i230.i)
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.284, ptr noundef nonnull @.str.5, i32 noundef 2577, ptr noundef %0) #17
  br label %mptctl_hp_targetinfo.exit

if.end.i17:                                       ; preds = %if.end.i.i.i12
  %id.i = getelementptr inbounds %struct._hp_header, ptr %karg.i, i32 0, i32 3
  %776 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %777)
  %cmp.i16 = icmp ugt i32 %777, 254
  br i1 %cmp.i16, label %if.end.i17.mptctl_hp_targetinfo.exit_crit_edge, label %do.body6.i

if.end.i17.mptctl_hp_targetinfo.exit_crit_edge:   ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_hp_targetinfo.exit

do.body6.i:                                       ; preds = %if.end.i17
  %debug_level.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %763, i32 0, i32 10
  %778 = ptrtoint ptr %debug_level.i to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load i32, ptr %debug_level.i, align 4
  %and.i18 = and i32 %779, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool7.not.i = icmp eq i32 %and.i18, 0
  br i1 %tobool7.not.i, label %do.body6.i.do.end16.i_crit_edge, label %do.end11.i

do.body6.i.do.end16.i_crit_edge:                  ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end16.i

do.end11.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #16
  %name.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %763, i32 0, i32 2
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, ptr noundef %name.i) #17
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end11.i, %do.body6.i.do.end16.i_crit_edge
  %bus_type.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %763, i32 0, i32 15
  %780 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load1_noabort(i32 %780)
  %781 = load i8, ptr %bus_type.i, align 4
  %782 = zext i8 %781 to i64
  call void @__sanitizer_cov_trace_switch(i64 %782, ptr @__sancov_gen_cov_switch_values.328)
  switch i8 %781, label %if.end24.i [
    i8 2, label %do.end16.i.mptctl_hp_targetinfo.exit_crit_edge
    i8 0, label %do.end16.i.mptctl_hp_targetinfo.exit_crit_edge374
  ]

do.end16.i.mptctl_hp_targetinfo.exit_crit_edge374: ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_hp_targetinfo.exit

do.end16.i.mptctl_hp_targetinfo.exit_crit_edge:   ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_hp_targetinfo.exit

if.end24.i:                                       ; preds = %do.end16.i
  %sdp0length.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %763, i32 0, i32 59, i32 12
  %783 = ptrtoint ptr %sdp0length.i to i32
  call void @__asan_load1_noabort(i32 %783)
  %784 = load i8, ptr %sdp0length.i, align 1
  %conv25.i = zext i8 %784 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %784)
  %cmp26.i = icmp eq i8 %784, 0
  br i1 %cmp26.i, label %if.end24.i.mptctl_hp_targetinfo.exit_crit_edge, label %lor.lhs.false28.i

if.end24.i.mptctl_hp_targetinfo.exit_crit_edge:   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_hp_targetinfo.exit

lor.lhs.false28.i:                                ; preds = %if.end24.i
  %sh.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %763, i32 0, i32 58
  %785 = ptrtoint ptr %sh.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %sh.i, align 8
  %cmp29.i = icmp eq ptr %786, null
  br i1 %cmp29.i, label %lor.lhs.false28.i.mptctl_hp_targetinfo.exit_crit_edge, label %if.end32.i

lor.lhs.false28.i.mptctl_hp_targetinfo.exit_crit_edge: ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_hp_targetinfo.exit

if.end32.i:                                       ; preds = %lor.lhs.false28.i
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %786, i32 0, i32 17
  %787 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load i32, ptr %host_no.i, align 4
  %host.i = getelementptr inbounds %struct._hp_header, ptr %karg.i, i32 0, i32 1
  %789 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load i32, ptr %host.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %788, i32 %790)
  %cmp35.not.i = icmp eq i32 %788, %790
  br i1 %cmp35.not.i, label %if.end38.i, label %if.end32.i.mptctl_hp_targetinfo.exit_crit_edge

if.end32.i.mptctl_hp_targetinfo.exit_crit_edge:   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_hp_targetinfo.exit

if.end38.i:                                       ; preds = %if.end32.i
  %mul.i = shl nuw nsw i32 %conv25.i, 2
  %pcidev.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %763, i32 0, i32 54
  %791 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %pcidev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %792, i32 0, i32 44
  %call.i.i19 = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %mul.i, ptr noundef nonnull %page_dma.i, i32 noundef 3264, i32 noundef 0) #14
  %tobool43.not.i = icmp eq ptr %call.i.i19, null
  br i1 %tobool43.not.i, label %if.end38.i.if.end96.i_crit_edge, label %if.then44.i

if.end38.i.if.end96.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96.i

if.then44.i:                                      ; preds = %if.end38.i
  %sdp0version.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %763, i32 0, i32 59, i32 11
  %793 = ptrtoint ptr %sdp0version.i to i32
  call void @__asan_load1_noabort(i32 %793)
  %794 = load i8, ptr %sdp0version.i, align 2
  %795 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %795)
  store i8 %794, ptr %hdr.i, align 4
  %conv46.i = trunc i32 %mul.i to i8
  %796 = ptrtoint ptr %767 to i32
  call void @__asan_store1_noabort(i32 %796)
  store i8 %conv46.i, ptr %767, align 1
  %797 = ptrtoint ptr %768 to i32
  call void @__asan_store1_noabort(i32 %797)
  store i8 0, ptr %768, align 2
  %798 = ptrtoint ptr %769 to i32
  call void @__asan_store1_noabort(i32 %798)
  store i8 4, ptr %769, align 1
  %799 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %799)
  store ptr %hdr.i, ptr %cfg.i, align 4
  %action.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 4
  %800 = ptrtoint ptr %action.i to i32
  call void @__asan_store1_noabort(i32 %800)
  store i8 1, ptr %action.i, align 2
  %dir.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 5
  %801 = ptrtoint ptr %dir.i to i32
  call void @__asan_store1_noabort(i32 %801)
  store i8 0, ptr %dir.i, align 1
  %timeout.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 6
  %802 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store1_noabort(i32 %802)
  store i8 0, ptr %timeout.i, align 4
  %803 = ptrtoint ptr %page_dma.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load i32, ptr %page_dma.i, align 4
  %physAddr.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 1
  %805 = ptrtoint ptr %physAddr.i to i32
  call void @__asan_store4_noabort(i32 %805)
  store i32 %804, ptr %physAddr.i, align 4
  %channel.i = getelementptr inbounds %struct._hp_header, ptr %karg.i, i32 0, i32 2
  %806 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load i32, ptr %channel.i, align 4
  %shl.i = shl i32 %807, 8
  %808 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load i32, ptr %id.i, align 4
  %or.i = or i32 %shl.i, %809
  %pageAddr.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 2
  %810 = ptrtoint ptr %pageAddr.i to i32
  call void @__asan_store4_noabort(i32 %810)
  store i32 %or.i, ptr %pageAddr.i, align 4
  %call50.i = call i32 @mpt_config(ptr noundef %763, ptr noundef nonnull %cfg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp eq i32 %call50.i, 0
  br i1 %cmp51.i, label %if.then53.i, label %if.then44.i.if.end93.i_crit_edge

if.then44.i.if.end93.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93.i

if.then53.i:                                      ; preds = %if.then44.i
  %NegotiatedParameters.i = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_0, ptr %call.i.i19, i32 0, i32 1
  %811 = ptrtoint ptr %NegotiatedParameters.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load i32, ptr %NegotiatedParameters.i, align 4
  %813 = call i32 @llvm.bswap.i32(i32 %812) #14
  %and54.i = and i32 %813, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  %conv56.i = select i1 %tobool55.not.i, i8 2, i8 3
  %negotiated_width.i = getelementptr inbounds %struct._hp_target_info, ptr %karg.i, i32 0, i32 6
  %814 = ptrtoint ptr %negotiated_width.i to i32
  call void @__asan_store1_noabort(i32 %814)
  store i8 %conv56.i, ptr %negotiated_width.i, align 4
  %and57.i = and i32 %813, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.else90.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.then53.i
  %and60.i = lshr i32 %813, 8
  %815 = and i32 %and60.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %815)
  %cmp61.i = icmp ult i32 %815, 9
  br i1 %cmp61.i, label %if.then63.i, label %if.else.i20

if.then63.i:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #16
  %negotiated_speed.i = getelementptr inbounds %struct._hp_target_info, ptr %karg.i, i32 0, i32 5
  %816 = ptrtoint ptr %negotiated_speed.i to i32
  call void @__asan_store4_noabort(i32 %816)
  store i32 8, ptr %negotiated_speed.i, align 4
  br label %if.end93.i

if.else.i20:                                      ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %815)
  %cmp64.i = icmp eq i32 %815, 9
  br i1 %cmp64.i, label %if.then66.i, label %if.else68.i

if.then66.i:                                      ; preds = %if.else.i20
  call void @__sanitizer_cov_trace_pc() #16
  %negotiated_speed67.i = getelementptr inbounds %struct._hp_target_info, ptr %karg.i, i32 0, i32 5
  %817 = ptrtoint ptr %negotiated_speed67.i to i32
  call void @__asan_store4_noabort(i32 %817)
  store i32 6, ptr %negotiated_speed67.i, align 4
  br label %if.end93.i

if.else68.i:                                      ; preds = %if.else.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %815)
  %cmp69.i = icmp ult i32 %815, 11
  br i1 %cmp69.i, label %if.then71.i, label %if.else73.i22

if.then71.i:                                      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #16
  %negotiated_speed72.i = getelementptr inbounds %struct._hp_target_info, ptr %karg.i, i32 0, i32 5
  %818 = ptrtoint ptr %negotiated_speed72.i to i32
  call void @__asan_store4_noabort(i32 %818)
  store i32 5, ptr %negotiated_speed72.i, align 4
  br label %if.end93.i

if.else73.i22:                                    ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %815)
  %cmp74.i21 = icmp ult i32 %815, 13
  br i1 %cmp74.i21, label %if.then76.i, label %if.else78.i

if.then76.i:                                      ; preds = %if.else73.i22
  call void @__sanitizer_cov_trace_pc() #16
  %negotiated_speed77.i = getelementptr inbounds %struct._hp_target_info, ptr %karg.i, i32 0, i32 5
  %819 = ptrtoint ptr %negotiated_speed77.i to i32
  call void @__asan_store4_noabort(i32 %819)
  store i32 4, ptr %negotiated_speed77.i, align 4
  br label %if.end93.i

if.else78.i:                                      ; preds = %if.else73.i22
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %815)
  %cmp79.i = icmp ult i32 %815, 38
  %negotiated_speed82.i = getelementptr inbounds %struct._hp_target_info, ptr %karg.i, i32 0, i32 5
  br i1 %cmp79.i, label %if.then81.i, label %if.else83.i

if.then81.i:                                      ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #16
  %820 = ptrtoint ptr %negotiated_speed82.i to i32
  call void @__asan_store4_noabort(i32 %820)
  store i32 3, ptr %negotiated_speed82.i, align 4
  br label %if.end93.i

if.else83.i:                                      ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #16
  %821 = ptrtoint ptr %negotiated_speed82.i to i32
  call void @__asan_store4_noabort(i32 %821)
  store i32 2, ptr %negotiated_speed82.i, align 4
  br label %if.end93.i

if.else90.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #16
  %negotiated_speed91.i = getelementptr inbounds %struct._hp_target_info, ptr %karg.i, i32 0, i32 5
  %822 = ptrtoint ptr %negotiated_speed91.i to i32
  call void @__asan_store4_noabort(i32 %822)
  store i32 2, ptr %negotiated_speed91.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.else90.i, %if.else83.i, %if.then81.i, %if.then76.i, %if.then71.i, %if.then66.i, %if.then63.i, %if.then44.i.if.end93.i_crit_edge
  %823 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %pcidev.i, align 8
  %dev95.i = getelementptr inbounds %struct.pci_dev, ptr %824, i32 0, i32 44
  %825 = ptrtoint ptr %page_dma.i to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load i32, ptr %page_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev95.i, i32 noundef %mul.i, ptr noundef nonnull %call.i.i19, i32 noundef %826, i32 noundef 0) #14
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.end93.i, %if.end38.i.if.end96.i_crit_edge
  %message_rejects.i = getelementptr inbounds %struct._hp_target_info, ptr %karg.i, i32 0, i32 4
  %phase_errors.i = getelementptr inbounds %struct._hp_target_info, ptr %karg.i, i32 0, i32 2
  %parity_errors.i = getelementptr inbounds %struct._hp_target_info, ptr %karg.i, i32 0, i32 1
  %select_timeouts.i = getelementptr inbounds %struct._hp_target_info, ptr %karg.i, i32 0, i32 3
  %827 = call ptr @memset(ptr %parity_errors.i, i32 255, i32 16)
  %828 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %828)
  store i8 0, ptr %hdr.i, align 4
  %829 = ptrtoint ptr %767 to i32
  call void @__asan_store1_noabort(i32 %829)
  store i8 0, ptr %767, align 1
  %830 = ptrtoint ptr %768 to i32
  call void @__asan_store1_noabort(i32 %830)
  store i8 3, ptr %768, align 2
  %831 = ptrtoint ptr %769 to i32
  call void @__asan_store1_noabort(i32 %831)
  store i8 4, ptr %769, align 1
  %832 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %832)
  store ptr %hdr.i, ptr %cfg.i, align 4
  %action102.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 4
  %833 = ptrtoint ptr %action102.i to i32
  call void @__asan_store1_noabort(i32 %833)
  store i8 0, ptr %action102.i, align 2
  %dir103.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 5
  %834 = ptrtoint ptr %dir103.i to i32
  call void @__asan_store1_noabort(i32 %834)
  store i8 0, ptr %dir103.i, align 1
  %timeout104.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 6
  %835 = ptrtoint ptr %timeout104.i to i32
  call void @__asan_store1_noabort(i32 %835)
  store i8 0, ptr %timeout104.i, align 4
  %physAddr105.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 1
  %836 = ptrtoint ptr %physAddr105.i to i32
  call void @__asan_store4_noabort(i32 %836)
  store i32 -1, ptr %physAddr105.i, align 4
  %call106.i = call i32 @mpt_config(ptr noundef %763, ptr noundef nonnull %cfg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %cmp107.i = icmp eq i32 %call106.i, 0
  br i1 %cmp107.i, label %land.lhs.true.i, label %if.end96.i.if.end147.i_crit_edge

if.end96.i.if.end147.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147.i

land.lhs.true.i:                                  ; preds = %if.end96.i
  %837 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %cfg.i, align 4
  %PageLength110.i = getelementptr inbounds %struct._CONFIG_PAGE_HEADER, ptr %838, i32 0, i32 1
  %839 = ptrtoint ptr %PageLength110.i to i32
  call void @__asan_load1_noabort(i32 %839)
  %840 = load i8, ptr %PageLength110.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %840)
  %cmp112.not.i = icmp eq i8 %840, 0
  br i1 %cmp112.not.i, label %land.lhs.true.i.if.end147.i_crit_edge, label %if.then114.i

land.lhs.true.i.if.end147.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147.i

if.then114.i:                                     ; preds = %land.lhs.true.i
  %841 = ptrtoint ptr %action102.i to i32
  call void @__asan_store1_noabort(i32 %841)
  store i8 1, ptr %action102.i, align 2
  %842 = ptrtoint ptr %PageLength110.i to i32
  call void @__asan_load1_noabort(i32 %842)
  %843 = load i8, ptr %PageLength110.i, align 1
  %conv118.i = zext i8 %843 to i32
  %mul119.i = shl nuw nsw i32 %conv118.i, 2
  %844 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %pcidev.i, align 8
  %dev121.i = getelementptr inbounds %struct.pci_dev, ptr %845, i32 0, i32 44
  %call.i227.i = call ptr @dma_alloc_attrs(ptr noundef %dev121.i, i32 noundef %mul119.i, ptr noundef nonnull %page_dma.i, i32 noundef 3264, i32 noundef 0) #14
  %tobool123.not.i = icmp eq ptr %call.i227.i, null
  br i1 %tobool123.not.i, label %if.then114.i.if.end147.i_crit_edge, label %if.then124.i

if.then114.i.if.end147.i_crit_edge:               ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147.i

if.then124.i:                                     ; preds = %if.then114.i
  %846 = ptrtoint ptr %page_dma.i to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load i32, ptr %page_dma.i, align 4
  %848 = ptrtoint ptr %physAddr105.i to i32
  call void @__asan_store4_noabort(i32 %848)
  store i32 %847, ptr %physAddr105.i, align 4
  %channel127.i = getelementptr inbounds %struct._hp_header, ptr %karg.i, i32 0, i32 2
  %849 = ptrtoint ptr %channel127.i to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load i32, ptr %channel127.i, align 4
  %shl128.i = shl i32 %850, 8
  %851 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load i32, ptr %id.i, align 4
  %or131.i = or i32 %shl128.i, %852
  %pageAddr132.i = getelementptr inbounds %struct._x_config_parms, ptr %cfg.i, i32 0, i32 2
  %853 = ptrtoint ptr %pageAddr132.i to i32
  call void @__asan_store4_noabort(i32 %853)
  store i32 %or131.i, ptr %pageAddr132.i, align 4
  %call133.i = call i32 @mpt_config(ptr noundef %763, ptr noundef nonnull %cfg.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %cmp134.i = icmp eq i32 %call133.i, 0
  br i1 %cmp134.i, label %if.then136.i, label %if.then124.i.if.end143.i_crit_edge

if.then124.i.if.end143.i_crit_edge:               ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end143.i

if.then136.i:                                     ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #16
  %MsgRejectCount.i = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_3, ptr %call.i227.i, i32 0, i32 1
  %854 = ptrtoint ptr %MsgRejectCount.i to i32
  call void @__asan_load2_noabort(i32 %854)
  %855 = load i16, ptr %MsgRejectCount.i, align 2
  %856 = call i16 @llvm.bswap.i16(i16 %855) #14
  %conv137.i = zext i16 %856 to i32
  %857 = ptrtoint ptr %message_rejects.i to i32
  call void @__asan_store4_noabort(i32 %857)
  store i32 %conv137.i, ptr %message_rejects.i, align 4
  %PhaseErrorCount.i = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_3, ptr %call.i227.i, i32 0, i32 2
  %858 = ptrtoint ptr %PhaseErrorCount.i to i32
  call void @__asan_load2_noabort(i32 %858)
  %859 = load i16, ptr %PhaseErrorCount.i, align 2
  %860 = call i16 @llvm.bswap.i16(i16 %859) #14
  %conv139.i = zext i16 %860 to i32
  %861 = ptrtoint ptr %phase_errors.i to i32
  call void @__asan_store4_noabort(i32 %861)
  store i32 %conv139.i, ptr %phase_errors.i, align 4
  %ParityErrorCount.i = getelementptr inbounds %struct._CONFIG_PAGE_SCSI_DEVICE_3, ptr %call.i227.i, i32 0, i32 3
  %862 = ptrtoint ptr %ParityErrorCount.i to i32
  call void @__asan_load2_noabort(i32 %862)
  %863 = load i16, ptr %ParityErrorCount.i, align 2
  %864 = call i16 @llvm.bswap.i16(i16 %863) #14
  %conv141.i = zext i16 %864 to i32
  %865 = ptrtoint ptr %parity_errors.i to i32
  call void @__asan_store4_noabort(i32 %865)
  store i32 %conv141.i, ptr %parity_errors.i, align 4
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then136.i, %if.then124.i.if.end143.i_crit_edge
  %866 = ptrtoint ptr %pcidev.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %pcidev.i, align 8
  %dev145.i = getelementptr inbounds %struct.pci_dev, ptr %867, i32 0, i32 44
  %868 = ptrtoint ptr %page_dma.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load i32, ptr %page_dma.i, align 4
  call void @dma_free_attrs(ptr noundef %dev145.i, i32 noundef %mul119.i, ptr noundef nonnull %call.i227.i, i32 noundef %869, i32 noundef 0) #14
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.end143.i, %if.then114.i.if.end147.i_crit_edge, %land.lhs.true.i.if.end147.i_crit_edge, %if.end96.i.if.end147.i_crit_edge
  %870 = ptrtoint ptr %sh.i to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %sh.i, align 8
  %hostdata.i.i23 = getelementptr inbounds %struct.Scsi_Host, ptr %871, i32 0, i32 53
  %872 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct._MPT_SCSI_HOST, ptr %hostdata.i.i23, i32 0, i32 1, i32 %873
  %874 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %874)
  %875 = load i16, ptr %arrayidx.i, align 2
  %conv155.i = zext i16 %875 to i32
  %876 = ptrtoint ptr %select_timeouts.i to i32
  call void @__asan_store4_noabort(i32 %876)
  store i32 %conv155.i, ptr %select_timeouts.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #14
  %call.i.i221.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i221.i, label %if.end147.i.do.end163.i_crit_edge, label %copy_to_user.exit.i

if.end147.i.do.end163.i_crit_edge:                ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end163.i

copy_to_user.exit.i:                              ; preds = %if.end147.i
  %call.i.i.i225.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %karg.i, i32 noundef 48) #14
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %karg.i, i32 noundef 48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool159.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool159.not.i, label %copy_to_user.exit.i.mptctl_hp_targetinfo.exit_crit_edge, label %copy_to_user.exit.i.do.end163.i_crit_edge

copy_to_user.exit.i.do.end163.i_crit_edge:        ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end163.i

copy_to_user.exit.i.mptctl_hp_targetinfo.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mptctl_hp_targetinfo.exit

do.end163.i:                                      ; preds = %copy_to_user.exit.i.do.end163.i_crit_edge, %if.end147.i.do.end163.i_crit_edge
  %name165.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %763, i32 0, i32 2
  %call167.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.290, ptr noundef %name165.i, ptr noundef nonnull @.str.5, i32 noundef 2689, ptr noundef %0) #17
  br label %mptctl_hp_targetinfo.exit

mptctl_hp_targetinfo.exit:                        ; preds = %do.end163.i, %copy_to_user.exit.i.mptctl_hp_targetinfo.exit_crit_edge, %if.end32.i.mptctl_hp_targetinfo.exit_crit_edge, %lor.lhs.false28.i.mptctl_hp_targetinfo.exit_crit_edge, %if.end24.i.mptctl_hp_targetinfo.exit_crit_edge, %do.end16.i.mptctl_hp_targetinfo.exit_crit_edge, %do.end16.i.mptctl_hp_targetinfo.exit_crit_edge374, %if.end.i17.mptctl_hp_targetinfo.exit_crit_edge, %if.then11.i.i.i15
  %retval.0.i24 = phi i32 [ -14, %if.then11.i.i.i15 ], [ -14, %do.end163.i ], [ -22, %if.end.i17.mptctl_hp_targetinfo.exit_crit_edge ], [ 0, %do.end16.i.mptctl_hp_targetinfo.exit_crit_edge ], [ 0, %do.end16.i.mptctl_hp_targetinfo.exit_crit_edge374 ], [ 0, %lor.lhs.false28.i.mptctl_hp_targetinfo.exit_crit_edge ], [ 0, %if.end24.i.mptctl_hp_targetinfo.exit_crit_edge ], [ -19, %if.end32.i.mptctl_hp_targetinfo.exit_crit_edge ], [ 0, %copy_to_user.exit.i.mptctl_hp_targetinfo.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr.i) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %cfg.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_dma.i) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %karg.i) #14
  br label %if.end82.i

if.end82.i:                                       ; preds = %mptctl_hp_targetinfo.exit, %if.else73.i.if.end82.i_crit_edge, %mptctl_hp_hostinfo.exit, %mptctl_do_reset.exit, %mptctl_mpt_command.exit, %mptctl_fw_download.exit
  %ret.0.i = phi i32 [ %retval.0.i238, %mptctl_fw_download.exit ], [ %retval.0.i159, %mptctl_mpt_command.exit ], [ %retval.0.i87, %mptctl_do_reset.exit ], [ %retval.0.i65, %mptctl_hp_hostinfo.exit ], [ %retval.0.i24, %mptctl_hp_targetinfo.exit ], [ -22, %if.else73.i.if.end82.i_crit_edge ]
  %877 = ptrtoint ptr %iocp.i to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load ptr, ptr %iocp.i, align 4
  %ioctl_cmds.i = getelementptr inbounds %struct._MPT_ADAPTER, ptr %878, i32 0, i32 116
  call void @mutex_unlock(ptr noundef %ioctl_cmds.i) #14
  br label %__mptctl_ioctl.exit

__mptctl_ioctl.exit:                              ; preds = %if.end82.i, %if.else.i.i.__mptctl_ioctl.exit_crit_edge, %if.then.i.i.__mptctl_ioctl.exit_crit_edge, %mptctl_replace_fw.exit.i, %mptctl_eventreport.exit.i, %mptctl_eventenable.exit.i, %mptctl_eventquery.exit.i, %mptctl_readtest.exit.i, %mptctl_gettargetinfo.exit.i, %if.end163.i.i, %do.end158.i.i, %if.then57.i.i, %do.end23.i.i, %do.end.i.i, %if.then18.i.__mptctl_ioctl.exit_crit_edge, %do.end12.i, %lor.lhs.false.i.__mptctl_ioctl.exit_crit_edge, %if.end.i.__mptctl_ioctl.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ -14, %if.then11.i.i.i ], [ %retval.0.i141.i, %mptctl_gettargetinfo.exit.i ], [ %retval.0.i172.i, %mptctl_readtest.exit.i ], [ %retval.0.i199.i, %mptctl_eventquery.exit.i ], [ %retval.1.i.i, %mptctl_eventenable.exit.i ], [ %retval.0.i270.i, %mptctl_eventreport.exit.i ], [ %retval.0.i311.i, %mptctl_replace_fw.exit.i ], [ %ret.0.i, %if.end82.i ], [ -14, %do.end12.i ], [ -19, %lor.lhs.false.i.__mptctl_ioctl.exit_crit_edge ], [ -19, %if.end.i.__mptctl_ioctl.exit_crit_edge ], [ %25, %do.end.i.i ], [ -14, %do.end23.i.i ], [ -22, %if.then57.i.i ], [ -14, %do.end158.i.i ], [ 0, %if.end163.i.i ], [ -14, %if.then18.i.__mptctl_ioctl.exit_crit_edge ], [ -512, %if.else.i.i.__mptctl_ioctl.exit_crit_edge ], [ -11, %if.then.i.i.__mptctl_ioctl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iocp.i) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %khdr.i) #14
  call void @mutex_unlock(ptr noundef nonnull @mpctl_mutex) #14
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mptctl_fasync(i32 noundef %fd, ptr noundef %filep, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mpctl_mutex, i32 noundef 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ioc_list to i32))
  %.pn7 = load ptr, ptr @ioc_list, align 4
  %cmp.not8 = icmp eq ptr %.pn7, @ioc_list
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn9 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn7, %entry.for.body_crit_edge ]
  %aen_event_read_flag = getelementptr i8, ptr %.pn9, i32 -16
  %0 = ptrtoint ptr %aen_event_read_flag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %aen_event_read_flag, align 4
  %1 = ptrtoint ptr %.pn9 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn9, align 4
  %cmp.not = icmp eq ptr %.pn, @ioc_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %filep, i32 noundef %mode, ptr noundef nonnull @async_queue) #14
  tail call void @mutex_unlock(ptr noundef nonnull @mpctl_mutex) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_verify_adapter(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_iterate_devices(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_free_fw_memory(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_alloc_fw_memory(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt_get_msg_frame(i8 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_put_msg_frame(i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_free_msg_frame(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_GetIocState(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mptctl_timeout_expired(ptr noundef %ioc, ptr noundef %mf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %Function = getelementptr inbounds %struct._MSG_REQUEST_HEADER, ptr %mf, i32 0, i32 2
  %0 = ptrtoint ptr %Function to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %Function, align 1
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 10
  %2 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_level, align 4
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef %name, ptr noundef nonnull @.str.172) #17
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mpt_fwfault_debug to i32))
  %4 = load i32, ptr @mpt_fwfault_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %do.end3.do.body8_crit_edge, label %if.then5

do.end3.do.body8_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body8

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mpt_halt_firmware(ptr noundef %ioc) #14
  br label %do.body8

do.body8:                                         ; preds = %if.then5, %do.end3.do.body8_crit_edge
  %taskmgmt_lock = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 117
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %taskmgmt_lock) #14
  %ioc_reset_in_progress = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 120
  %5 = ptrtoint ptr %ioc_reset_in_progress to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ioc_reset_in_progress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool16.not = icmp eq i8 %6, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %taskmgmt_lock, i32 noundef %call11) #14
  %status25 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 116, i32 4
  %7 = ptrtoint ptr %status25 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status25, align 4
  %9 = and i8 %8, -5
  store i8 %9, ptr %status25, align 4
  br i1 %tobool16.not, label %if.end22, label %do.body8.cleanup.sink.split_crit_edge

do.body8.cleanup.sink.split_crit_edge:            ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end22:                                         ; preds = %do.body8
  %bus_type = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 15
  %10 = ptrtoint ptr %bus_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp30 = icmp eq i8 %11, 2
  br i1 %cmp30, label %if.then32, label %if.else49

if.then32:                                        ; preds = %if.end22
  %12 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.329)
  switch i8 %1, label %if.then32.do.body64_crit_edge [
    i8 0, label %if.then36
    i8 22, label %if.then41
  ]

if.then32.do.body64_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body64

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  %Bus = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %mf, i32 0, i32 1
  %13 = ptrtoint ptr %Bus to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %Bus, align 1
  %15 = ptrtoint ptr %mf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mf, align 4
  %call37 = tail call fastcc i32 @mptctl_do_taskmgmt(ptr noundef %ioc, i8 noundef zeroext 3, i8 noundef zeroext %14, i8 noundef zeroext %16)
  br label %if.end45

if.then41:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  %Bus42 = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %mf, i32 0, i32 1
  %17 = ptrtoint ptr %Bus42 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %Bus42, align 1
  %call43 = tail call fastcc i32 @mptctl_do_taskmgmt(ptr noundef %ioc, i8 noundef zeroext 4, i8 noundef zeroext %18, i8 noundef zeroext 0)
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.then36
  %ret_val.0 = phi i32 [ %call37, %if.then36 ], [ %call43, %if.then41 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret_val.0)
  %tobool46.not = icmp eq i32 %ret_val.0, 0
  br i1 %tobool46.not, label %if.end45.cleanup_crit_edge, label %if.end45.do.body64_crit_edge

if.end45.do.body64_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body64

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else49:                                        ; preds = %if.end22
  %19 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.330)
  switch i8 %1, label %if.else49.do.body64_crit_edge [
    i8 0, label %if.else49.if.then56_crit_edge
    i8 22, label %if.else49.if.then56_crit_edge113
  ]

if.else49.if.then56_crit_edge113:                 ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

if.else49.if.then56_crit_edge:                    ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

if.else49.do.body64_crit_edge:                    ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body64

if.then56:                                        ; preds = %if.else49.if.then56_crit_edge, %if.else49.if.then56_crit_edge113
  %Bus57 = getelementptr inbounds %struct._MSG_SCSI_IO_REQUEST, ptr %mf, i32 0, i32 1
  %20 = ptrtoint ptr %Bus57 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %Bus57, align 1
  %call58 = tail call fastcc i32 @mptctl_do_taskmgmt(ptr noundef %ioc, i8 noundef zeroext 4, i8 noundef zeroext %21, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %phi.cmp = icmp eq i32 %call58, 0
  br i1 %phi.cmp, label %if.then56.cleanup_crit_edge, label %if.then56.do.body64_crit_edge

if.then56.do.body64_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body64

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body64:                                        ; preds = %if.then56.do.body64_crit_edge, %if.else49.do.body64_crit_edge, %if.end45.do.body64_crit_edge, %if.then32.do.body64_crit_edge
  %22 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_level, align 4
  %and66 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %do.body64.do.end78_crit_edge, label %do.end71

do.body64.do.end78_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end78

do.end71:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #16
  %name73 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef %name73) #17
  br label %do.end78

do.end78:                                         ; preds = %do.end71, %do.body64.do.end78_crit_edge
  %call79 = tail call i32 @mpt_Soft_Hard_ResetHandler(ptr noundef %ioc, i32 noundef 1) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end78, %do.body8.cleanup.sink.split_crit_edge
  tail call void @mpt_free_msg_frame(ptr noundef %ioc, ptr noundef %mf) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then56.cleanup_crit_edge, %if.end45.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kfree_sgl(ptr noundef %sgl, i32 noundef %sgl_dma, ptr noundef %buflist, ptr noundef %ioc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sgl, align 4
  %and = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  %2 = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not74 = icmp eq i32 %2, 0
  br i1 %tobool4.not74, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %pcidev = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 54
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %while.body.lr.ph
  %sg.079 = phi ptr [ %sgl, %while.body.lr.ph ], [ %incdec.ptr, %if.end16.while.body_crit_edge ]
  %bl.077 = phi ptr [ %buflist, %while.body.lr.ph ], [ %incdec.ptr17, %if.end16.while.body_crit_edge ]
  %nib.0.in76 = phi i32 [ %1, %while.body.lr.ph ], [ %and19, %if.end16.while.body_crit_edge ]
  %n.075 = phi i32 [ 0, %while.body.lr.ph ], [ %n.1, %if.end16.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %nib.0.in76)
  %cmp = icmp ult i32 %nib.0.in76, 268435456
  %nib.0.mask = and i32 %nib.0.in76, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %nib.0.mask)
  %cmp5 = icmp eq i32 %nib.0.mask, 805306368
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %while.body.if.end16_crit_edge, label %if.else7

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.else7:                                         ; preds = %while.body
  %Address = getelementptr inbounds %struct._mpt_sge, ptr %sg.079, i32 0, i32 1
  %3 = ptrtoint ptr %Address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %Address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %if.else7.if.end16_crit_edge, label %if.then9

if.else7.if.end16_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then9:                                         ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %bl.077 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bl.077, align 4
  %len12 = getelementptr inbounds %struct.buflist, ptr %bl.077, i32 0, i32 1
  %7 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len12, align 4
  %9 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcidev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %4, i32 noundef %8, i32 noundef %., i32 noundef 0) #14
  %11 = ptrtoint ptr %pcidev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcidev, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void @dma_free_attrs(ptr noundef %dev14, i32 noundef %8, ptr noundef %6, i32 noundef %4, i32 noundef 0) #14
  %inc = add i32 %n.075, 1
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.else7.if.end16_crit_edge, %while.body.if.end16_crit_edge
  %n.1 = phi i32 [ %n.075, %while.body.if.end16_crit_edge ], [ %inc, %if.then9 ], [ %n.075, %if.else7.if.end16_crit_edge ]
  %incdec.ptr = getelementptr %struct._mpt_sge, ptr %sg.079, i32 1
  %incdec.ptr17 = getelementptr %struct.buflist, ptr %bl.077, i32 1
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr, align 4
  %15 = shl i32 %14, 24
  %and19 = and i32 %15, -268435456
  %16 = and i32 %14, 64
  %tobool4.not = icmp eq i32 %16, 0
  br i1 %tobool4.not, label %if.end16.while.body_crit_edge, label %if.end16.while.end_crit_edge

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %entry.while.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %n.1, %if.end16.while.end_crit_edge ]
  %bl.0.lcssa = phi ptr [ %buflist, %entry.while.end_crit_edge ], [ %incdec.ptr17, %if.end16.while.end_crit_edge ]
  %sg.0.lcssa = phi ptr [ %sgl, %entry.while.end_crit_edge ], [ %incdec.ptr, %if.end16.while.end_crit_edge ]
  %Address21 = getelementptr inbounds %struct._mpt_sge, ptr %sg.0.lcssa, i32 0, i32 1
  %17 = ptrtoint ptr %Address21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %Address21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not = icmp eq i32 %18, 0
  br i1 %tobool22.not, label %while.end.if.end35_crit_edge, label %if.then23

while.end.if.end35_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then23:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %bl.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bl.0.lcssa, align 4
  %len29 = getelementptr inbounds %struct.buflist, ptr %bl.0.lcssa, i32 0, i32 1
  %21 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len29, align 4
  %pcidev30 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 54
  %23 = ptrtoint ptr %pcidev30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcidev30, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev31, i32 noundef %18, i32 noundef %22, i32 noundef %., i32 noundef 0) #14
  %25 = ptrtoint ptr %pcidev30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcidev30, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void @dma_free_attrs(ptr noundef %dev33, i32 noundef %22, ptr noundef %20, i32 noundef %18, i32 noundef 0) #14
  %inc34 = add i32 %n.0.lcssa, 1
  br label %if.end35

if.end35:                                         ; preds = %if.then23, %while.end.if.end35_crit_edge
  %n.2 = phi i32 [ %inc34, %if.then23 ], [ %n.0.lcssa, %while.end.if.end35_crit_edge ]
  %pcidev36 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 54
  %27 = ptrtoint ptr %pcidev36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pcidev36, align 8
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void @dma_free_attrs(ptr noundef %dev37, i32 noundef 592, ptr noundef %sgl, i32 noundef %sgl_dma, i32 noundef 0) #14
  tail call void @kfree(ptr noundef %buflist) #14
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 10
  %29 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug_level, align 4
  %and38 = and i32 %30, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end35.do.end44_crit_edge, label %do.end

if.end35.do.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end44

do.end:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef %name, i32 noundef %n.2) #17
  br label %do.end44

do.end44:                                         ; preds = %do.end, %if.end35.do.end44_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_halt_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mptctl_do_taskmgmt(ptr noundef %ioc, i8 noundef zeroext %tm_type, i8 noundef zeroext %bus_id, i8 noundef zeroext %target_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %taskmgmt_cmds = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 115
  tail call void @mutex_lock_nested(ptr noundef %taskmgmt_cmds, i32 noundef 0) #14
  %call = tail call i32 @mpt_set_taskmgmt_in_progress_flag(ptr noundef %ioc) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %taskmgmt_cmds) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @mptctl_taskmgmt_id, align 1
  %call4 = tail call ptr @mpt_get_msg_frame(i8 noundef zeroext %0, ptr noundef %ioc) #14
  %cmp5 = icmp eq ptr %call4, null
  %debug_level = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 10
  %1 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %debug_level, align 4
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp5, label %do.body, label %do.body14

do.body:                                          ; preds = %if.end
  br i1 %tobool.not, label %do.body.do.end12_crit_edge, label %do.end

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef %name) #17
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  tail call void @mpt_clear_taskmgmt_in_progress_flag(ptr noundef %ioc) #14
  br label %tm_done

do.body14:                                        ; preds = %if.end
  br i1 %tobool.not, label %do.body14.do.end28_crit_edge, label %do.end21

do.body14.do.end28_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28

do.end21:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #16
  %name23 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef %name23, ptr noundef nonnull %call4) #17
  br label %do.end28

do.end28:                                         ; preds = %do.end21, %do.body14.do.end28_crit_edge
  %3 = call ptr @memset(ptr %call4, i32 0, i32 52)
  %Function = getelementptr inbounds %struct._MSG_SCSI_TASK_MGMT, ptr %call4, i32 0, i32 3
  %4 = ptrtoint ptr %Function to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %Function, align 1
  %TaskType = getelementptr inbounds %struct._MSG_SCSI_TASK_MGMT, ptr %call4, i32 0, i32 5
  %5 = ptrtoint ptr %TaskType to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %tm_type, ptr %TaskType, align 1
  %conv = zext i8 %tm_type to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %tm_type)
  %cmp29 = icmp eq i8 %tm_type, 4
  br i1 %cmp29, label %land.lhs.true, label %do.end28.if.end35_crit_edge

do.end28.if.end35_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true:                                    ; preds = %do.end28
  %bus_type = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 15
  %6 = ptrtoint ptr %bus_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp32 = icmp eq i8 %7, 0
  br i1 %cmp32, label %if.then34, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %MsgFlags = getelementptr inbounds %struct._MSG_SCSI_TASK_MGMT, ptr %call4, i32 0, i32 7
  %8 = ptrtoint ptr %MsgFlags to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %MsgFlags, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true.if.end35_crit_edge, %do.end28.if.end35_crit_edge
  %9 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %target_id, ptr %call4, align 4
  %Bus = getelementptr inbounds %struct._MSG_SCSI_TASK_MGMT, ptr %call4, i32 0, i32 1
  %10 = ptrtoint ptr %Bus to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bus_id, ptr %Bus, align 1
  %ChainOffset = getelementptr inbounds %struct._MSG_SCSI_TASK_MGMT, ptr %call4, i32 0, i32 2
  %11 = ptrtoint ptr %ChainOffset to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %ChainOffset, align 2
  %Reserved = getelementptr inbounds %struct._MSG_SCSI_TASK_MGMT, ptr %call4, i32 0, i32 4
  %12 = ptrtoint ptr %Reserved to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %Reserved, align 4
  %Reserved1 = getelementptr inbounds %struct._MSG_SCSI_TASK_MGMT, ptr %call4, i32 0, i32 6
  %13 = ptrtoint ptr %Reserved1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %Reserved1, align 2
  %uglygep = getelementptr i8, ptr %call4, i32 12
  %bus_type46 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 15
  %14 = call ptr @memset(ptr %uglygep, i32 0, i32 40)
  %15 = ptrtoint ptr %bus_type46 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bus_type46, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %switch.selectcmp = icmp eq i8 %16, 2
  %switch.select = select i1 %switch.selectcmp, i32 30, i32 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.selectcmp292 = icmp eq i8 %16, 0
  %switch.select293 = select i1 %switch.selectcmp292, i32 40, i32 %switch.select
  %17 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug_level, align 4
  %and52 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end35.do.end65_crit_edge, label %do.end57

if.end35.do.end65_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end65

do.end57:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %name59 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef %name59, i32 noundef %conv, i32 noundef %switch.select293) #17
  br label %do.end65

do.end65:                                         ; preds = %do.end57, %if.end35.do.end65_crit_edge
  %status = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 115, i32 4
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %status, align 4
  %IOCCapabilities = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 77, i32 27
  %20 = ptrtoint ptr %IOCCapabilities to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %IOCCapabilities, align 4
  %and67 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %do.end65.if.else_crit_edge, label %land.lhs.true69

do.end65.if.else_crit_edge:                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true69:                                  ; preds = %do.end65
  %facts = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 77
  %22 = ptrtoint ptr %facts to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %facts, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 260, i16 %23)
  %cmp72 = icmp ugt i16 %23, 260
  br i1 %cmp72, label %if.then74, label %land.lhs.true69.if.else_crit_edge

land.lhs.true69.if.else_crit_edge:                ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then74:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #16
  %24 = load i8, ptr @mptctl_taskmgmt_id, align 1
  tail call void @mpt_put_msg_frame_hi_pri(i8 noundef zeroext %24, ptr noundef %ioc, ptr noundef nonnull %call4) #14
  br label %if.end95

if.else:                                          ; preds = %land.lhs.true69.if.else_crit_edge, %do.end65.if.else_crit_edge
  %25 = load i8, ptr @mptctl_taskmgmt_id, align 1
  %call75 = tail call i32 @mpt_send_handshake_request(i8 noundef zeroext %25, ptr noundef %ioc, i32 noundef 52, ptr noundef nonnull %call4, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76.not = icmp eq i32 %call75, 0
  br i1 %cmp76.not, label %if.else.if.end95_crit_edge, label %do.body79

if.else.if.end95_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

do.body79:                                        ; preds = %if.else
  %26 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug_level, align 4
  %and81 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body79.do.end93_crit_edge, label %do.end86

do.body79.do.end93_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end93

do.end86:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #16
  %name88 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185, ptr noundef %name88, ptr noundef %ioc, ptr noundef nonnull %call4, i32 noundef %call75) #17
  br label %do.end93

do.end93:                                         ; preds = %do.end86, %do.body79.do.end93_crit_edge
  tail call void @mpt_free_msg_frame(ptr noundef %ioc, ptr noundef nonnull %call4) #14
  tail call void @mpt_clear_taskmgmt_in_progress_flag(ptr noundef %ioc) #14
  br label %tm_done

if.end95:                                         ; preds = %if.else.if.end95_crit_edge, %if.then74
  %done = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 115, i32 1
  %mul = mul nuw nsw i32 %switch.select293, 100
  %call97 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %mul) #14
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %status, align 4
  %conv100 = zext i8 %29 to i32
  %and101 = and i32 %conv100, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.body104, label %if.end127

do.body104:                                       ; preds = %if.end95
  %30 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_level, align 4
  %and106 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %do.body104.do.end118_crit_edge, label %do.end111

do.body104.do.end118_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end118

do.end111:                                        ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #16
  %name113 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef %name113) #17
  br label %do.end118

do.end118:                                        ; preds = %do.end111, %do.body104.do.end118_crit_edge
  tail call void @mpt_free_msg_frame(ptr noundef %ioc, ptr noundef nonnull %call4) #14
  tail call void @mpt_clear_taskmgmt_in_progress_flag(ptr noundef %ioc) #14
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %status, align 4
  %34 = lshr i8 %33, 3
  %35 = and i8 %34, 1
  %sext = add nsw i8 %35, -1
  %. = sext i8 %sext to i32
  br label %tm_done

if.end127:                                        ; preds = %if.end95
  %and131 = and i32 %conv100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  %36 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %debug_level, align 4
  %and136 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool132.not, label %do.body134, label %if.end149

do.body134:                                       ; preds = %if.end127
  br i1 %tobool137.not, label %do.body134.tm_done_crit_edge, label %do.end141

do.body134.tm_done_crit_edge:                     ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #16
  br label %tm_done

do.end141:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #16
  %name143 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef %name143) #17
  br label %tm_done

if.end149:                                        ; preds = %if.end127
  br i1 %tobool137.not, label %if.end149.do.end173_crit_edge, label %do.end159

if.end149.do.end173_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end173

do.end159:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #16
  %reply = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 115, i32 2
  %name161 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %Bus163 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 115, i32 2, i32 1
  %38 = ptrtoint ptr %Bus163 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %Bus163, align 1
  %conv164 = zext i8 %39 to i32
  %40 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reply, align 4
  %conv166 = zext i8 %41 to i32
  %IOCStatus = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 115, i32 2, i32 14
  %42 = ptrtoint ptr %IOCStatus to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %IOCStatus, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %conv168 = zext i16 %44 to i32
  %IOCLogInfo = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 115, i32 2, i32 16
  %45 = ptrtoint ptr %IOCLogInfo to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %IOCLogInfo, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %ResponseCode = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 115, i32 2, i32 4
  %48 = ptrtoint ptr %ResponseCode to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ResponseCode, align 4
  %conv169 = zext i8 %49 to i32
  %TerminationCount = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 115, i32 2, i32 20
  %50 = ptrtoint ptr %TerminationCount to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %TerminationCount, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, ptr noundef %name161, i32 noundef %conv164, i32 noundef %conv166, i32 noundef %conv, i32 noundef %conv168, i32 noundef %47, i32 noundef %conv169, i32 noundef %52) #17
  br label %do.end173

do.end173:                                        ; preds = %do.end159, %if.end149.do.end173_crit_edge
  %IOCStatus174 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 115, i32 2, i32 14
  %53 = ptrtoint ptr %IOCStatus174 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %IOCStatus174, align 2
  %55 = and i16 %54, -129
  %56 = zext i16 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.331)
  switch i16 %55, label %do.body190 [
    i16 18432, label %do.end173.tm_done_crit_edge
    i16 19200, label %do.end173.tm_done_crit_edge297
    i16 0, label %do.end173.tm_done_crit_edge298
  ]

do.end173.tm_done_crit_edge298:                   ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #16
  br label %tm_done

do.end173.tm_done_crit_edge297:                   ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #16
  br label %tm_done

do.end173.tm_done_crit_edge:                      ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #16
  br label %tm_done

do.body190:                                       ; preds = %do.end173
  %57 = ptrtoint ptr %debug_level to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %debug_level, align 4
  %and192 = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %do.body190.tm_done_crit_edge, label %do.end197

do.body190.tm_done_crit_edge:                     ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #16
  br label %tm_done

do.end197:                                        ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #16
  %name199 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 2
  %call201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef %name199) #17
  br label %tm_done

tm_done:                                          ; preds = %do.end197, %do.body190.tm_done_crit_edge, %do.end173.tm_done_crit_edge, %do.end173.tm_done_crit_edge297, %do.end173.tm_done_crit_edge298, %do.end141, %do.body134.tm_done_crit_edge, %do.end118, %do.end93, %do.end12
  %retval1.0 = phi i32 [ -12, %do.end12 ], [ %call75, %do.end93 ], [ %., %do.end118 ], [ -1, %do.end141 ], [ -1, %do.body134.tm_done_crit_edge ], [ 0, %do.end173.tm_done_crit_edge ], [ 0, %do.end173.tm_done_crit_edge297 ], [ 0, %do.end173.tm_done_crit_edge298 ], [ -1, %do.end197 ], [ -1, %do.body190.tm_done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %taskmgmt_cmds) #14
  %status209 = getelementptr inbounds %struct._MPT_ADAPTER, ptr %ioc, i32 0, i32 115, i32 4
  %59 = ptrtoint ptr %status209 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %status209, align 4
  br label %cleanup

cleanup:                                          ; preds = %tm_done, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %retval1.0, %tm_done ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_Soft_Hard_ResetHandler(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_set_taskmgmt_in_progress_flag(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_clear_taskmgmt_in_progress_flag(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_put_msg_frame_hi_pri(i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_send_handshake_request(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_HardResetHandler(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt_config(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_event_deregister(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpt_reset_deregister(i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 264)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 264)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !49, !51, !52, !54, !55, !57, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !292, !294, !295, !296, !298, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !322, !323, !324, !326, !327, !329, !330, !331, !332, !334, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361, !362, !364, !365, !366, !368, !369, !370, !372, !373, !375, !376, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !392, !394, !395, !396, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !411, !412, !414, !415, !416, !418, !419, !420, !421, !423, !424, !425, !427, !428, !429, !431, !432, !433, !434, !436, !437, !438, !440, !442, !444, !445, !446, !448, !449, !451, !452, !453, !455, !456, !457, !459, !460, !461, !462, !464, !465, !466, !468, !469, !470, !472, !474, !475, !476, !478, !479, !480, !482, !483, !484, !486, !488, !489, !490, !492, !494, !495, !496, !497, !499, !500, !501, !503, !504, !505, !507, !508, !509, !510, !512, !513, !514, !516, !517, !519, !520, !522, !523, !525, !526, !527}
!llvm.named.register.sp = !{!528}
!llvm.module.flags = !{!529, !530, !531, !532, !533, !534, !535, !536}
!llvm.ident = !{!537}

!0 = !{ptr @__UNIQUE_ID_author287, !1, !"__UNIQUE_ID_author287", i1 false, i1 false}
!1 = !{!"../drivers/message/fusion/mptctl.c", i32 79, i32 1}
!2 = !{ptr @__UNIQUE_ID_description288, !3, !"__UNIQUE_ID_description288", i1 false, i1 false}
!3 = !{!"../drivers/message/fusion/mptctl.c", i32 80, i32 1}
!4 = !{ptr @__UNIQUE_ID_file289, !5, !"__UNIQUE_ID_file289", i1 false, i1 false}
!5 = !{!"../drivers/message/fusion/mptctl.c", i32 81, i32 1}
!6 = !{ptr @__UNIQUE_ID_license290, !5, !"__UNIQUE_ID_license290", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version291, !8, !"__UNIQUE_ID_version291", i1 false, i1 false}
!8 = !{!"../drivers/message/fusion/mptctl.c", i32 82, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_mptctl__306_2961_mptctl_init6, !14, !"__initcall__kmod_mptctl__306_2961_mptctl_init6", i1 false, i1 false}
!14 = !{!"../drivers/message/fusion/mptctl.c", i32 2961, i32 1}
!15 = !{ptr @__exitcall_mptctl_exit, !16, !"__exitcall_mptctl_exit", i1 false, i1 false}
!16 = !{!"../drivers/message/fusion/mptctl.c", i32 2962, i32 1}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/message/fusion/mptctl.c", i32 2889, i32 2}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mptctl_init._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @mptctl_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/message/fusion/mptctl.c", i32 2896, i32 3}
!26 = !{ptr @mptctl_init._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mptctl_init._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/message/fusion/mptctl.c", i32 2899, i32 2}
!30 = !{ptr @mptctl_init._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mptctl_init._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/message/fusion/mptctl.c", i32 2900, i32 2}
!34 = !{ptr @mptctl_init._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mptctl_init._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/message/fusion/mptctl.c", i32 2908, i32 6}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/message/fusion/mptctl.c", i32 2910, i32 3}
!40 = !{ptr @mptctl_init._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mptctl_init._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/message/fusion/mptctl.c", i32 2917, i32 6}
!44 = !{ptr @mptctl_init._entry.21, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/message/fusion/mptctl.c", i32 2919, i32 3}
!46 = !{ptr @mptctl_init._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @mptctl_driver, !48, !"mptctl_driver", i1 false, i1 false}
!48 = !{!"../drivers/message/fusion/mptctl.c", i32 2878, i32 30}
!49 = !{ptr @mptctl_probe.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/message/fusion/mptctl.c", i32 2861, i32 2}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @init_completion.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../include/linux/completion.h", i32 87, i32 2}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mptctl_miscdev, !56, !"mptctl_miscdev", i1 false, i1 false}
!56 = !{!"../drivers/message/fusion/mptctl.c", i32 2708, i32 26}
!57 = !{ptr @mptctl_fops, !58, !"mptctl_fops", i1 false, i1 false}
!58 = !{!"../drivers/message/fusion/mptctl.c", i32 2698, i32 37}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/message/fusion/mptctl.c", i32 86, i32 8}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mpctl_mutex, !60, !"mpctl_mutex", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/message/fusion/mptctl.c", i32 630, i32 3}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @__mptctl_ioctl._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @__mptctl_ioctl._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/message/fusion/mptctl.c", i32 646, i32 3}
!70 = !{ptr @__mptctl_ioctl._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @__mptctl_ioctl._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!74 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/message/fusion/mptctl.c", i32 1255, i32 3}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mptctl_getiocinfo._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @mptctl_getiocinfo._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/message/fusion/mptctl.c", i32 1262, i32 3}
!86 = !{ptr @mptctl_getiocinfo._entry.37, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @mptctl_getiocinfo._entry_ptr.39, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/message/fusion/mptctl.c", i32 1269, i32 2}
!90 = !{ptr @mptctl_getiocinfo._entry.40, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @mptctl_getiocinfo._entry_ptr.42, !89, !"_entry_ptr", i1 false, i1 false}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/message/fusion/mptctl.c", i32 1333, i32 32}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/message/fusion/mptctl.c", i32 1343, i32 3}
!96 = !{ptr @mptctl_getiocinfo._entry.44, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @mptctl_getiocinfo._entry_ptr.46, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/message/fusion/mptctl.c", i32 1379, i32 3}
!100 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @mptctl_gettargetinfo._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @mptctl_gettargetinfo._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/message/fusion/mptctl.c", i32 1385, i32 2}
!105 = !{ptr @mptctl_gettargetinfo._entry.49, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @mptctl_gettargetinfo._entry_ptr.51, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/message/fusion/mptctl.c", i32 1391, i32 3}
!109 = !{ptr @mptctl_gettargetinfo._entry.52, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @mptctl_gettargetinfo._entry_ptr.54, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @mptctl_gettargetinfo._entry.55, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/message/fusion/mptctl.c", i32 1412, i32 3}
!113 = !{ptr @mptctl_gettargetinfo._entry_ptr.56, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/message/fusion/mptctl.c", i32 1444, i32 3}
!116 = !{ptr @mptctl_gettargetinfo._entry.57, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @mptctl_gettargetinfo._entry_ptr.59, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @mptctl_gettargetinfo._entry.60, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/message/fusion/mptctl.c", i32 1454, i32 3}
!120 = !{ptr @mptctl_gettargetinfo._entry_ptr.61, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/message/fusion/mptctl.c", i32 1481, i32 3}
!123 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mptctl_readtest._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @mptctl_readtest._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/message/fusion/mptctl.c", i32 1487, i32 2}
!128 = !{ptr @mptctl_readtest._entry.64, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @mptctl_readtest._entry_ptr.66, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/message/fusion/mptctl.c", i32 1506, i32 3}
!132 = !{ptr @mptctl_readtest._entry.67, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @mptctl_readtest._entry_ptr.69, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/message/fusion/mptctl.c", i32 1533, i32 3}
!136 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @mptctl_eventquery._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @mptctl_eventquery._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/message/fusion/mptctl.c", i32 1539, i32 2}
!141 = !{ptr @mptctl_eventquery._entry.72, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @mptctl_eventquery._entry_ptr.74, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/message/fusion/mptctl.c", i32 1547, i32 3}
!145 = !{ptr @mptctl_eventquery._entry.75, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @mptctl_eventquery._entry_ptr.77, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.78, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/message/fusion/mptctl.c", i32 1563, i32 3}
!149 = !{ptr @.str.79, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @mptctl_eventenable._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @mptctl_eventenable._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/message/fusion/mptctl.c", i32 1569, i32 2}
!154 = !{ptr @mptctl_eventenable._entry.80, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @mptctl_eventenable._entry_ptr.82, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.84, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/message/fusion/mptctl.c", i32 1577, i32 4}
!158 = !{ptr @mptctl_eventenable._entry.83, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @mptctl_eventenable._entry_ptr.85, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.86, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/message/fusion/mptctl.c", i32 1603, i32 3}
!162 = !{ptr @.str.87, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @mptctl_eventreport._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @mptctl_eventreport._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.89, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/message/fusion/mptctl.c", i32 1609, i32 2}
!167 = !{ptr @mptctl_eventreport._entry.88, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @mptctl_eventreport._entry_ptr.90, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/message/fusion/mptctl.c", i32 1631, i32 3}
!171 = !{ptr @mptctl_eventreport._entry.91, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @mptctl_eventreport._entry_ptr.93, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.94, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/message/fusion/mptctl.c", i32 1649, i32 3}
!175 = !{ptr @.str.95, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @mptctl_replace_fw._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @mptctl_replace_fw._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.97, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/message/fusion/mptctl.c", i32 1655, i32 2}
!180 = !{ptr @mptctl_replace_fw._entry.96, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @mptctl_replace_fw._entry_ptr.98, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.100, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/message/fusion/mptctl.c", i32 1675, i32 3}
!184 = !{ptr @mptctl_replace_fw._entry.99, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @mptctl_replace_fw._entry_ptr.101, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/message/fusion/mptctl.c", i32 754, i32 3}
!188 = !{ptr @.str.103, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @mptctl_fw_download._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @mptctl_fw_download._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.104, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/message/fusion/mptctl.c", i32 806, i32 2}
!193 = !{ptr @.str.105, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @mptctl_do_fw_download._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @mptctl_do_fw_download._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.107, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/message/fusion/mptctl.c", i32 808, i32 2}
!198 = !{ptr @mptctl_do_fw_download._entry.106, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @mptctl_do_fw_download._entry_ptr.108, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.110, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/message/fusion/mptctl.c", i32 810, i32 2}
!202 = !{ptr @mptctl_do_fw_download._entry.109, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @mptctl_do_fw_download._entry_ptr.111, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.113, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/message/fusion/mptctl.c", i32 882, i32 2}
!206 = !{ptr @mptctl_do_fw_download._entry.112, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @mptctl_do_fw_download._entry_ptr.114, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.116, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/message/fusion/mptctl.c", i32 907, i32 5}
!210 = !{ptr @mptctl_do_fw_download._entry.115, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @mptctl_do_fw_download._entry_ptr.117, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.119, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/message/fusion/mptctl.c", i32 934, i32 3}
!214 = !{ptr @mptctl_do_fw_download._entry.118, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @mptctl_do_fw_download._entry_ptr.120, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.122, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/message/fusion/mptctl.c", i32 940, i32 4}
!218 = !{ptr @mptctl_do_fw_download._entry.121, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @mptctl_do_fw_download._entry_ptr.123, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @mptctl_do_fw_download._entry.124, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/message/fusion/mptctl.c", i32 950, i32 3}
!222 = !{ptr @mptctl_do_fw_download._entry_ptr.125, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.127, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/message/fusion/mptctl.c", i32 962, i32 3}
!225 = !{ptr @mptctl_do_fw_download._entry.126, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @mptctl_do_fw_download._entry_ptr.128, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.130, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/message/fusion/mptctl.c", i32 965, i32 3}
!229 = !{ptr @mptctl_do_fw_download._entry.129, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @mptctl_do_fw_download._entry_ptr.131, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.133, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/message/fusion/mptctl.c", i32 967, i32 3}
!233 = !{ptr @mptctl_do_fw_download._entry.132, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @mptctl_do_fw_download._entry_ptr.134, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.136, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/message/fusion/mptctl.c", i32 971, i32 3}
!237 = !{ptr @mptctl_do_fw_download._entry.135, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @mptctl_do_fw_download._entry_ptr.137, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.139, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/message/fusion/mptctl.c", i32 972, i32 3}
!241 = !{ptr @mptctl_do_fw_download._entry.138, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @mptctl_do_fw_download._entry_ptr.140, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.142, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/message/fusion/mptctl.c", i32 975, i32 3}
!245 = !{ptr @mptctl_do_fw_download._entry.141, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @mptctl_do_fw_download._entry_ptr.143, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.145, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/message/fusion/mptctl.c", i32 977, i32 3}
!249 = !{ptr @mptctl_do_fw_download._entry.144, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @mptctl_do_fw_download._entry_ptr.146, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.147, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/message/fusion/mptctl.c", i32 1072, i32 5}
!253 = !{ptr @.str.148, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @kbuf_alloc_2_sgl._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @kbuf_alloc_2_sgl._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.150, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/message/fusion/mptctl.c", i32 1074, i32 5}
!258 = !{ptr @kbuf_alloc_2_sgl._entry.149, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @kbuf_alloc_2_sgl._entry_ptr.151, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.153, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/message/fusion/mptctl.c", i32 1100, i32 4}
!262 = !{ptr @kbuf_alloc_2_sgl._entry.152, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @kbuf_alloc_2_sgl._entry_ptr.154, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.156, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/message/fusion/mptctl.c", i32 1102, i32 4}
!266 = !{ptr @kbuf_alloc_2_sgl._entry.155, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @kbuf_alloc_2_sgl._entry_ptr.157, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.159, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/message/fusion/mptctl.c", i32 1109, i32 4}
!270 = !{ptr @kbuf_alloc_2_sgl._entry.158, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @kbuf_alloc_2_sgl._entry_ptr.160, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @kbuf_alloc_2_sgl._entry.161, !273, !"_entry", i1 false, i1 false}
!273 = !{!"../drivers/message/fusion/mptctl.c", i32 1111, i32 4}
!274 = !{ptr @kbuf_alloc_2_sgl._entry_ptr.162, !273, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.164, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/message/fusion/mptctl.c", i32 1123, i32 2}
!277 = !{ptr @kbuf_alloc_2_sgl._entry.163, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @kbuf_alloc_2_sgl._entry_ptr.165, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.167, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/message/fusion/mptctl.c", i32 1126, i32 2}
!281 = !{ptr @kbuf_alloc_2_sgl._entry.166, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @kbuf_alloc_2_sgl._entry_ptr.168, !280, !"_entry_ptr", i1 false, i1 false}
!283 = distinct !{null, !284, !"__already_done", i1 false, i1 false}
!284 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!285 = !{ptr @.str.169, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.170, !284, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.171, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/message/fusion/mptctl.c", i32 468, i32 2}
!289 = !{ptr @.str.172, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @mptctl_timeout_expired._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @mptctl_timeout_expired._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.174, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/message/fusion/mptctl.c", i32 507, i32 2}
!294 = !{ptr @mptctl_timeout_expired._entry.173, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @mptctl_timeout_expired._entry_ptr.175, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.176, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/message/fusion/mptctl.c", i32 337, i32 3}
!298 = !{ptr @.str.177, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @mptctl_do_taskmgmt._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @mptctl_do_taskmgmt._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.179, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/message/fusion/mptctl.c", i32 345, i32 2}
!303 = !{ptr @mptctl_do_taskmgmt._entry.178, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @mptctl_do_taskmgmt._entry_ptr.180, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.182, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/message/fusion/mptctl.c", i32 380, i32 2}
!307 = !{ptr @mptctl_do_taskmgmt._entry.181, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @mptctl_do_taskmgmt._entry_ptr.183, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.185, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/message/fusion/mptctl.c", i32 392, i32 4}
!311 = !{ptr @mptctl_do_taskmgmt._entry.184, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @mptctl_do_taskmgmt._entry_ptr.186, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.188, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/message/fusion/mptctl.c", i32 407, i32 3}
!315 = !{ptr @mptctl_do_taskmgmt._entry.187, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @mptctl_do_taskmgmt._entry_ptr.189, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @mptctl_do_taskmgmt._entry.190, !318, !"_entry", i1 false, i1 false}
!318 = !{!"../drivers/message/fusion/mptctl.c", i32 419, i32 3}
!319 = !{ptr @mptctl_do_taskmgmt._entry_ptr.191, !318, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.193, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/message/fusion/mptctl.c", i32 426, i32 2}
!322 = !{ptr @mptctl_do_taskmgmt._entry.192, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @mptctl_do_taskmgmt._entry_ptr.194, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @mptctl_do_taskmgmt._entry.195, !325, !"_entry", i1 false, i1 false}
!325 = !{!"../drivers/message/fusion/mptctl.c", i32 443, i32 3}
!326 = !{ptr @mptctl_do_taskmgmt._entry_ptr.196, !325, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.197, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/message/fusion/mptctl.c", i32 1213, i32 2}
!329 = !{ptr @.str.198, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @kfree_sgl._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @kfree_sgl._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.199, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/message/fusion/mptctl.c", i32 1709, i32 3}
!334 = !{ptr @.str.200, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @mptctl_mpt_command._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @mptctl_mpt_command._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.201, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/message/fusion/mptctl.c", i32 1761, i32 3}
!339 = !{ptr @.str.202, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @mptctl_do_mpt_command._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @mptctl_do_mpt_command._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.204, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/message/fusion/mptctl.c", i32 1785, i32 3}
!344 = !{ptr @mptctl_do_mpt_command._entry.203, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @mptctl_do_mpt_command._entry_ptr.205, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.207, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/message/fusion/mptctl.c", i32 1805, i32 3}
!348 = !{ptr @mptctl_do_mpt_command._entry.206, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @mptctl_do_mpt_command._entry_ptr.208, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.210, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/message/fusion/mptctl.c", i32 1818, i32 2}
!352 = !{ptr @mptctl_do_mpt_command._entry.209, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @mptctl_do_mpt_command._entry_ptr.211, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.213, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/message/fusion/mptctl.c", i32 1831, i32 3}
!356 = !{ptr @mptctl_do_mpt_command._entry.212, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @mptctl_do_mpt_command._entry_ptr.214, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.216, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/message/fusion/mptctl.c", i32 1860, i32 5}
!360 = !{ptr @mptctl_do_mpt_command._entry.215, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @mptctl_do_mpt_command._entry_ptr.217, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.219, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/message/fusion/mptctl.c", i32 1868, i32 5}
!364 = !{ptr @mptctl_do_mpt_command._entry.218, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @mptctl_do_mpt_command._entry_ptr.220, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.222, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/message/fusion/mptctl.c", i32 1923, i32 4}
!368 = !{ptr @mptctl_do_mpt_command._entry.221, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @mptctl_do_mpt_command._entry_ptr.223, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @mptctl_do_mpt_command._entry.224, !371, !"_entry", i1 false, i1 false}
!371 = !{!"../drivers/message/fusion/mptctl.c", i32 1942, i32 4}
!372 = !{ptr @mptctl_do_mpt_command._entry_ptr.225, !371, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @mptctl_do_mpt_command._entry.226, !374, !"_entry", i1 false, i1 false}
!374 = !{!"../drivers/message/fusion/mptctl.c", i32 1999, i32 4}
!375 = !{ptr @mptctl_do_mpt_command._entry_ptr.227, !374, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.229, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/message/fusion/mptctl.c", i32 2011, i32 3}
!378 = !{ptr @mptctl_do_mpt_command._entry.228, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @mptctl_do_mpt_command._entry_ptr.230, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.232, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/message/fusion/mptctl.c", i32 2041, i32 5}
!382 = !{ptr @mptctl_do_mpt_command._entry.231, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @mptctl_do_mpt_command._entry_ptr.233, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.235, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/message/fusion/mptctl.c", i32 2074, i32 3}
!386 = !{ptr @mptctl_do_mpt_command._entry.234, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @mptctl_do_mpt_command._entry_ptr.236, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.238, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/message/fusion/mptctl.c", i32 2128, i32 6}
!390 = !{ptr @mptctl_do_mpt_command._entry.237, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @mptctl_do_mpt_command._entry_ptr.239, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.241, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/message/fusion/mptctl.c", i32 2183, i32 5}
!394 = !{ptr @mptctl_do_mpt_command._entry.240, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @mptctl_do_mpt_command._entry_ptr.242, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.244, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/message/fusion/mptctl.c", i32 2203, i32 3}
!398 = !{ptr @mptctl_do_mpt_command._entry.243, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @mptctl_do_mpt_command._entry_ptr.245, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.247, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/message/fusion/mptctl.c", i32 2211, i32 4}
!402 = !{ptr @mptctl_do_mpt_command._entry.246, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @mptctl_do_mpt_command._entry_ptr.248, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.250, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/message/fusion/mptctl.c", i32 2243, i32 6}
!406 = !{ptr @mptctl_do_mpt_command._entry.249, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @mptctl_do_mpt_command._entry_ptr.251, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.253, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/message/fusion/mptctl.c", i32 2260, i32 5}
!410 = !{ptr @mptctl_do_mpt_command._entry.252, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @mptctl_do_mpt_command._entry_ptr.254, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.256, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/message/fusion/mptctl.c", i32 2278, i32 4}
!414 = !{ptr @mptctl_do_mpt_command._entry.255, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @mptctl_do_mpt_command._entry_ptr.257, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.258, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/message/fusion/mptctl.c", i32 712, i32 3}
!418 = !{ptr @.str.259, !417, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @mptctl_do_reset._entry, !417, !"_entry", i1 false, i1 false}
!420 = !{ptr @mptctl_do_reset._entry_ptr, !417, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.261, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/message/fusion/mptctl.c", i32 718, i32 2}
!423 = !{ptr @mptctl_do_reset._entry.260, !422, !"_entry", i1 false, i1 false}
!424 = !{ptr @mptctl_do_reset._entry_ptr.262, !422, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.264, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/message/fusion/mptctl.c", i32 722, i32 3}
!427 = !{ptr @mptctl_do_reset._entry.263, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @mptctl_do_reset._entry_ptr.265, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.266, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/message/fusion/mptctl.c", i32 2350, i32 3}
!431 = !{ptr @.str.267, !430, !"<string literal>", i1 false, i1 false}
!432 = !{ptr @mptctl_hp_hostinfo._entry, !430, !"_entry", i1 false, i1 false}
!433 = !{ptr @mptctl_hp_hostinfo._entry_ptr, !430, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.269, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/message/fusion/mptctl.c", i32 2356, i32 2}
!436 = !{ptr @mptctl_hp_hostinfo._entry.268, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @mptctl_hp_hostinfo._entry_ptr.270, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.271, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/message/fusion/mptctl.c", i32 2381, i32 4}
!440 = distinct !{null, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/message/fusion/mptctl.c", i32 2400, i32 30}
!442 = !{ptr @.str.274, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/message/fusion/mptctl.c", i32 2466, i32 3}
!444 = !{ptr @mptctl_hp_hostinfo._entry.273, !443, !"_entry", i1 false, i1 false}
!445 = !{ptr @mptctl_hp_hostinfo._entry_ptr.275, !443, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @mptctl_hp_hostinfo._entry.276, !447, !"_entry", i1 false, i1 false}
!447 = !{!"../drivers/message/fusion/mptctl.c", i32 2502, i32 3}
!448 = !{ptr @mptctl_hp_hostinfo._entry_ptr.277, !447, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.279, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/message/fusion/mptctl.c", i32 2508, i32 4}
!451 = !{ptr @mptctl_hp_hostinfo._entry.278, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @mptctl_hp_hostinfo._entry_ptr.280, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.282, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/message/fusion/mptctl.c", i32 2539, i32 3}
!455 = !{ptr @mptctl_hp_hostinfo._entry.281, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @mptctl_hp_hostinfo._entry_ptr.283, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.284, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/message/fusion/mptctl.c", i32 2575, i32 3}
!459 = !{ptr @.str.285, !458, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @mptctl_hp_targetinfo._entry, !458, !"_entry", i1 false, i1 false}
!461 = !{ptr @mptctl_hp_targetinfo._entry_ptr, !458, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @.str.287, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/message/fusion/mptctl.c", i32 2583, i32 2}
!464 = !{ptr @mptctl_hp_targetinfo._entry.286, !463, !"_entry", i1 false, i1 false}
!465 = !{ptr @mptctl_hp_targetinfo._entry_ptr.288, !463, !"_entry_ptr", i1 false, i1 false}
!466 = !{ptr @.str.290, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/message/fusion/mptctl.c", i32 2687, i32 3}
!468 = !{ptr @mptctl_hp_targetinfo._entry.289, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @mptctl_hp_targetinfo._entry_ptr.291, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @async_queue, !471, !"async_queue", i1 false, i1 false}
!471 = !{!"../drivers/message/fusion/mptctl.c", i32 142, i32 30}
!472 = !{ptr @.str.292, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/message/fusion/mptctl.c", i32 210, i32 2}
!474 = !{ptr @mptctl_reply._entry, !473, !"_entry", i1 false, i1 false}
!475 = !{ptr @mptctl_reply._entry_ptr, !473, !"_entry_ptr", i1 false, i1 false}
!476 = !{ptr @.str.294, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/message/fusion/mptctl.c", i32 231, i32 3}
!478 = !{ptr @mptctl_reply._entry.293, !477, !"_entry", i1 false, i1 false}
!479 = !{ptr @mptctl_reply._entry_ptr.295, !477, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.297, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/message/fusion/mptctl.c", i32 241, i32 4}
!482 = !{ptr @mptctl_reply._entry.296, !481, !"_entry", i1 false, i1 false}
!483 = !{ptr @mptctl_reply._entry_ptr.298, !481, !"_entry_ptr", i1 false, i1 false}
!484 = !{ptr @mptctl_id, !485, !"mptctl_id", i1 false, i1 false}
!485 = !{!"../drivers/message/fusion/mptctl.c", i32 87, i32 11}
!486 = !{ptr @.str.299, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/message/fusion/mptctl.c", i32 291, i32 2}
!488 = !{ptr @mptctl_taskmgmt_reply._entry, !487, !"_entry", i1 false, i1 false}
!489 = !{ptr @mptctl_taskmgmt_reply._entry_ptr, !487, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @mptctl_taskmgmt_id, !491, !"mptctl_taskmgmt_id", i1 false, i1 false}
!491 = !{!"../drivers/message/fusion/mptctl.c", i32 88, i32 11}
!492 = !{ptr @.str.300, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/message/fusion/mptctl.c", i32 526, i32 3}
!494 = !{ptr @.str.301, !493, !"<string literal>", i1 false, i1 false}
!495 = !{ptr @mptctl_ioc_reset._entry, !493, !"_entry", i1 false, i1 false}
!496 = !{ptr @mptctl_ioc_reset._entry_ptr, !493, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @.str.303, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/message/fusion/mptctl.c", i32 530, i32 3}
!499 = !{ptr @mptctl_ioc_reset._entry.302, !498, !"_entry", i1 false, i1 false}
!500 = !{ptr @mptctl_ioc_reset._entry_ptr.304, !498, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @.str.306, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/message/fusion/mptctl.c", i32 534, i32 3}
!503 = !{ptr @mptctl_ioc_reset._entry.305, !502, !"_entry", i1 false, i1 false}
!504 = !{ptr @mptctl_ioc_reset._entry_ptr.307, !502, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.308, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/message/fusion/mptctl.c", i32 557, i32 2}
!507 = !{ptr @.str.309, !506, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @mptctl_event_process._entry, !506, !"_entry", i1 false, i1 false}
!509 = !{ptr @mptctl_event_process._entry_ptr, !506, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @.str.311, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/message/fusion/mptctl.c", i32 568, i32 3}
!512 = !{ptr @mptctl_event_process._entry.310, !511, !"_entry", i1 false, i1 false}
!513 = !{ptr @mptctl_event_process._entry_ptr.312, !511, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @mptctl_event_process._entry.313, !515, !"_entry", i1 false, i1 false}
!515 = !{!"../drivers/message/fusion/mptctl.c", i32 570, i32 3}
!516 = !{ptr @mptctl_event_process._entry_ptr.314, !515, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @mptctl_event_process._entry.315, !518, !"_entry", i1 false, i1 false}
!518 = !{!"../drivers/message/fusion/mptctl.c", i32 588, i32 3}
!519 = !{ptr @mptctl_event_process._entry_ptr.316, !518, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @mptctl_event_process._entry.317, !521, !"_entry", i1 false, i1 false}
!521 = !{!"../drivers/message/fusion/mptctl.c", i32 590, i32 3}
!522 = !{ptr @mptctl_event_process._entry_ptr.318, !521, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @.str.319, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/message/fusion/mptctl.c", i32 2942, i32 2}
!525 = !{ptr @.str.320, !524, !"<string literal>", i1 false, i1 false}
!526 = !{ptr @mptctl_exit._entry, !524, !"_entry", i1 false, i1 false}
!527 = !{ptr @mptctl_exit._entry_ptr, !524, !"_entry_ptr", i1 false, i1 false}
!528 = !{!"sp"}
!529 = !{i32 1, !"wchar_size", i32 2}
!530 = !{i32 1, !"min_enum_size", i32 4}
!531 = !{i32 8, !"branch-target-enforcement", i32 0}
!532 = !{i32 8, !"sign-return-address", i32 0}
!533 = !{i32 8, !"sign-return-address-all", i32 0}
!534 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!535 = !{i32 7, !"uwtable", i32 1}
!536 = !{i32 7, !"frame-pointer", i32 2}
!537 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!538 = !{!"auto-init"}
!539 = !{i64 2153959193, i64 2153959218}
!540 = !{!"branch_weights", i32 2000, i32 1}
!541 = !{i64 6454748}
!542 = !{i64 6454945}
!543 = !{i64 2153940178}
!544 = !{i64 2153959874, i64 2153959899}
