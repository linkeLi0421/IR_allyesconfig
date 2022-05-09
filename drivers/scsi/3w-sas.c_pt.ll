; ModuleID = '/llk/IR_all_yes/drivers/scsi/3w-sas.c_pt.bc'
source_filename = "../drivers/scsi/3w-sas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.timezone = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.83 = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.TAG_TW_Device_Extension = type { ptr, [256 x ptr], [256 x i32], [256 x ptr], [256 x i32], [256 x ptr], [256 x i32], ptr, [256 x ptr], [256 x i8], i8, i8, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, [256 x ptr], i8, i32, i32, %struct.wait_queue_head, %struct.mutex, %struct.TAG_TW_Compatibility_Info, i8 }
%struct.TAG_TW_Compatibility_Info = type { [32 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.TAG_TW_SG_Entry_ISO = type { i32, i32 }
%struct.TAG_TW_Command_Apache_Header = type { [18 x i8], %struct.anon.84, [98 x i8], %struct.anon.85 }
%struct.anon.84 = type { [4 x i8], i16, i8, i8 }
%struct.anon.85 = type <{ i8, i16, i8 }>
%struct.TAG_TW_Command_Full = type { %struct.TAG_TW_Command_Apache_Header, %union.anon.86 }
%union.anon.86 = type { %struct.TW_Command }
%struct.TW_Command = type { i8, i8, i8, i8, i8, i8, %union.anon.87, %union.anon.88 }
%union.anon.87 = type { i16 }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, [94 x %struct.TAG_TW_SG_Entry_ISO], [132 x i8] }
%struct.TW_Param_Apache = type <{ i16, i16, i16, i16, [1 x i8] }>
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.TAG_TW_Initconnect = type { i8, i8, i8, i8, i8, i8, i16, i32, i16, i16, i16, i16, i32 }
%struct.TAG_TW_Event = type { i32, i32, i16, i8, i8, i8, i8, [98 x i8] }
%struct.TAG_TW_Ioctl_Driver_Command = type { i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.TAG_TW_Ioctl_Apache = type <{ %struct.TAG_TW_Ioctl_Driver_Command, [488 x i8], %struct.TAG_TW_Command_Full, [1 x i8] }>

@__UNIQUE_ID_author287 = internal constant [18 x i8] c"3w_sas.author=LSI\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [56 x i8] c"3w_sas.description=LSI 3ware SAS/SATA-RAID Linux Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [32 x i8] c"3w_sas.file=drivers/scsi/3w-sas\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [19 x i8] c"3w_sas.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version291 = internal constant [27 x i8] c"3w_sas.version=3.26.02.000\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3w_sas\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"3.26.02.000\00", [20 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_use_msi = internal constant [15 x i8] c"3w_sas.use_msi\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@use_msi = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_use_msi = internal constant %struct.kernel_param { ptr @__param_str_use_msi, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @use_msi } }, section "__param", align 4
@__UNIQUE_ID_use_msitype292 = internal constant [28 x i8] c"3w_sas.parmtype=use_msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_msi293 = internal constant [64 x i8] c"3w_sas.parm=use_msi:Use Message Signaled Interrupts. Default: 0\00", section ".modinfo", align 1
@twl_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @twl_pci_tbl, ptr @twl_probe, ptr @twl_remove, ptr null, ptr null, ptr @twl_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_3w_sas__294_1856_twl_init6 = internal global ptr @twl_init, section ".initcall6.init", align 4
@__exitcall_twl_exit = internal global ptr @twl_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3w-sas\00", [25 x i8] zeroinitializer }, align 32
@twl_pci_tbl = internal global { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5057, i32 4112, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@twl_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @twl_suspend, ptr @twl_resume, ptr @twl_suspend, ptr @twl_resume, ptr @twl_suspend, ptr @twl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@twl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\0143w-sas: scsi%d: ERROR: (0x%02X:0x%04X): %s.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twl_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/scsi/3w-sas.c\00", [42 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr = internal global ptr @twl_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable pci device\00", [36 x i8] zeroinitializer }, align 32
@twl_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 1562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\0143w-sas: ERROR: (0x%02X:0x%04X): %s.\0A\00", [57 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.10 = internal global ptr @twl_probe._entry.8, section ".printk_index", align 4
@twl_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.12 = internal global ptr @twl_probe._entry.11, section ".printk_index", align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to set dma mask\00", [41 x i8] zeroinitializer }, align 32
@twl_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 1571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.15 = internal global ptr @twl_probe._entry.14, section ".printk_index", align 4
@driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @twl_scsi_queue, ptr null, ptr null, ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl_scsi_eh_reset, ptr null, ptr @twl_slave_configure, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr @twl_scsi_biosparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 254, i32 -1, i16 92, i16 0, i32 256, i32 0, i32 0, i32 0, i16 254, i8 0, i32 0, i8 20, i32 0, ptr @twl_host_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@twl_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.17 = internal global ptr @twl_probe._entry.16, section ".printk_index", align 4
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to allocate memory for device extension\00", [49 x i8] zeroinitializer }, align 32
@twl_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 1578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.20 = internal global ptr @twl_probe._entry.19, section ".printk_index", align 4
@twl_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.22 = internal global ptr @twl_probe._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to initialize device extension\00", [58 x i8] zeroinitializer }, align 32
@twl_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 1589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.25 = internal global ptr @twl_probe._entry.24, section ".printk_index", align 4
@twl_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.27 = internal global ptr @twl_probe._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get mem region\00", [39 x i8] zeroinitializer }, align 32
@twl_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 1597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.30 = internal global ptr @twl_probe._entry.29, section ".printk_index", align 4
@twl_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.32 = internal global ptr @twl_probe._entry.31, section ".printk_index", align 4
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Failed to ioremap\00", [46 x i8] zeroinitializer }, align 32
@twl_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 1604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.35 = internal global ptr @twl_probe._entry.34, section ".printk_index", align 4
@twl_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.37 = internal global ptr @twl_probe._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Controller reset failed during probe\00", [59 x i8] zeroinitializer }, align 32
@twl_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 1614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.40 = internal global ptr @twl_probe._entry.39, section ".printk_index", align 4
@twl_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.42 = internal global ptr @twl_probe._entry.41, section ".printk_index", align 4
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scsi add host failed\00", [43 x i8] zeroinitializer }, align 32
@twl_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 1628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.45 = internal global ptr @twl_probe._entry.44, section ".printk_index", align 4
@twl_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.5, ptr @.str.6, i32 1638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\0143w-sas: scsi%d: Found an LSI 3ware %s Controller at 0x%llx, IRQ: %d.\0A\00", [56 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.48 = internal global ptr @twl_probe._entry.46, section ".printk_index", align 4
@twl_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.5, ptr @.str.6, i32 1651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\0143w-sas: scsi%d: Firmware %s, BIOS %s, Phys: %d.\0A\00", [45 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.51 = internal global ptr @twl_probe._entry.49, section ".printk_index", align 4
@twl_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.53 = internal global ptr @twl_probe._entry.52, section ".printk_index", align 4
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error requesting IRQ\00", [43 x i8] zeroinitializer }, align 32
@twl_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 1660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.56 = internal global ptr @twl_probe._entry.55, section ".printk_index", align 4
@twl_device_extension_list = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@twl_device_extension_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@twl_sysfs_aen_read_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.178, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @twl_sysfs_aen_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@twl_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.58 = internal global ptr @twl_probe._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to create sysfs binary file: 3ware_aen_read\00", [45 x i8] zeroinitializer }, align 32
@twl_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 1675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.61 = internal global ptr @twl_probe._entry.60, section ".printk_index", align 4
@twl_sysfs_compat_info_attr = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.179, i16 256, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @twl_sysfs_compat_info, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@twl_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.63 = internal global ptr @twl_probe._entry.62, section ".printk_index", align 4
@.str.64 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to create sysfs binary file: 3ware_compat_info\00", [42 x i8] zeroinitializer }, align 32
@twl_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 1677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.66 = internal global ptr @twl_probe._entry.65, section ".printk_index", align 4
@twl_major = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"twl\00", [28 x i8] zeroinitializer }, align 32
@twl_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl_chrdev_ioctl, ptr null, ptr null, i32 0, ptr @twl_chrdev_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@twl_probe._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.69 = internal global ptr @twl_probe._entry.68, section ".printk_index", align 4
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register character device\00", [60 x i8] zeroinitializer }, align 32
@twl_probe._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 1681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_probe._entry_ptr.72 = internal global ptr @twl_probe._entry.71, section ".printk_index", align 4
@twl_host_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @twl_host_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"WARNING: (0x%02X:0x%04X): Command (0x%x) timed out, resetting card.\0A\00", [59 x i8] zeroinitializer }, align 32
@twl_scsi_eh_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.75, ptr @.str.6, i32 1444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"twl_scsi_eh_reset\00", [46 x i8] zeroinitializer }, align 32
@twl_scsi_eh_reset._entry_ptr = internal global ptr @twl_scsi_eh_reset._entry, section ".printk_index", align 4
@.str.76 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Controller reset failed during scsi host reset\00", [49 x i8] zeroinitializer }, align 32
@twl_scsi_eh_reset._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.75, ptr @.str.6, i32 1444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_scsi_eh_reset._entry_ptr.78 = internal global ptr @twl_scsi_eh_reset._entry.77, section ".printk_index", align 4
@twl_host_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @twl_host_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@twl_host_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @twl_host_stats_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@twl_host_stats_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @twl_show_stats, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"3ware_stats\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [275 x i8], [77 x i8] } { [275 x i8] c"3w-sas Driver version: %s\0ACurrent commands posted:   %4d\0AMax commands posted:       %4d\0ALast sgl length:           %4d\0AMax sgl length:            %4d\0ALast sector count:         %4d\0AMax sector count:          %4d\0ASCSI Host Resets:          %4d\0AAEN's:                     %4d\0A\00", [77 x i8] zeroinitializer }, align 32
@twl_initialize_device_extension._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.81, ptr @.str.6, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"twl_initialize_device_extension\00", [32 x i8] zeroinitializer }, align 32
@twl_initialize_device_extension._entry_ptr = internal global ptr @twl_initialize_device_extension._entry, section ".printk_index", align 4
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Command packet memory allocation failed\00", [56 x i8] zeroinitializer }, align 32
@twl_initialize_device_extension._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.81, ptr @.str.6, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_initialize_device_extension._entry_ptr.84 = internal global ptr @twl_initialize_device_extension._entry.83, section ".printk_index", align 4
@twl_initialize_device_extension._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.81, ptr @.str.6, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_initialize_device_extension._entry_ptr.86 = internal global ptr @twl_initialize_device_extension._entry.85, section ".printk_index", align 4
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Generic memory allocation failed\00", [63 x i8] zeroinitializer }, align 32
@twl_initialize_device_extension._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.81, ptr @.str.6, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_initialize_device_extension._entry_ptr.89 = internal global ptr @twl_initialize_device_extension._entry.88, section ".printk_index", align 4
@twl_initialize_device_extension._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.81, ptr @.str.6, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_initialize_device_extension._entry_ptr.91 = internal global ptr @twl_initialize_device_extension._entry.90, section ".printk_index", align 4
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Sense buffer allocation failed\00", [33 x i8] zeroinitializer }, align 32
@twl_initialize_device_extension._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.81, ptr @.str.6, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_initialize_device_extension._entry_ptr.94 = internal global ptr @twl_initialize_device_extension._entry.93, section ".printk_index", align 4
@twl_initialize_device_extension._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.81, ptr @.str.6, i32 1057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_initialize_device_extension._entry_ptr.96 = internal global ptr @twl_initialize_device_extension._entry.95, section ".printk_index", align 4
@.str.97 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Event info memory allocation failed\00", [60 x i8] zeroinitializer }, align 32
@twl_initialize_device_extension._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.81, ptr @.str.6, i32 1057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_initialize_device_extension._entry_ptr.99 = internal global ptr @twl_initialize_device_extension._entry.98, section ".printk_index", align 4
@twl_initialize_device_extension.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&tw_dev->ioctl_lock\00", [44 x i8] zeroinitializer }, align 32
@twl_initialize_device_extension.__key.101 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&tw_dev->ioctl_wqueue\00", [42 x i8] zeroinitializer }, align 32
@twl_allocate_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.103, ptr @.str.6, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl_allocate_memory\00", [44 x i8] zeroinitializer }, align 32
@twl_allocate_memory._entry_ptr = internal global ptr @twl_allocate_memory._entry, section ".printk_index", align 4
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Memory allocation failed\00", [39 x i8] zeroinitializer }, align 32
@twl_allocate_memory._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.103, ptr @.str.6, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_allocate_memory._entry_ptr.106 = internal global ptr @twl_allocate_memory._entry.105, section ".printk_index", align 4
@twl_reset_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.107, ptr @.str.6, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twl_reset_sequence\00", [45 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry_ptr = internal global ptr @twl_reset_sequence._entry, section ".printk_index", align 4
@.str.108 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Controller never went non-ready during reset sequence\00", [42 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.107, ptr @.str.6, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry_ptr.110 = internal global ptr @twl_reset_sequence._entry.109, section ".printk_index", align 4
@twl_reset_sequence._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.107, ptr @.str.6, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry_ptr.112 = internal global ptr @twl_reset_sequence._entry.111, section ".printk_index", align 4
@.str.113 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Controller not ready during reset sequence\00", [53 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.107, ptr @.str.6, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry_ptr.115 = internal global ptr @twl_reset_sequence._entry.114, section ".printk_index", align 4
@twl_reset_sequence._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.107, ptr @.str.6, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry_ptr.117 = internal global ptr @twl_reset_sequence._entry.116, section ".printk_index", align 4
@.str.118 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Initconnection failed while checking SRL\00", [55 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.107, ptr @.str.6, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry_ptr.120 = internal global ptr @twl_reset_sequence._entry.119, section ".printk_index", align 4
@twl_reset_sequence._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.107, ptr @.str.6, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry_ptr.122 = internal global ptr @twl_reset_sequence._entry.121, section ".printk_index", align 4
@.str.123 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Bad controller status after loading sense buffers\00", [46 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.107, ptr @.str.6, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry_ptr.125 = internal global ptr @twl_reset_sequence._entry.124, section ".printk_index", align 4
@twl_reset_sequence._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.107, ptr @.str.6, i32 1322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry_ptr.127 = internal global ptr @twl_reset_sequence._entry.126, section ".printk_index", align 4
@.str.128 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AEN drain failed during reset sequence\00", [57 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.107, ptr @.str.6, i32 1322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_reset_sequence._entry_ptr.130 = internal global ptr @twl_reset_sequence._entry.129, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@twl_initconnection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.131, ptr @.str.6, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twl_initconnection\00", [45 x i8] zeroinitializer }, align 32
@twl_initconnection._entry_ptr = internal global ptr @twl_initconnection._entry, section ".printk_index", align 4
@.str.132 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No valid response during init connection\00", [55 x i8] zeroinitializer }, align 32
@twl_initconnection._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.131, ptr @.str.6, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_initconnection._entry_ptr.134 = internal global ptr @twl_initconnection._entry.133, section ".printk_index", align 4
@twl_aen_drain_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.135, ptr @.str.6, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl_aen_drain_queue\00", [44 x i8] zeroinitializer }, align 32
@twl_aen_drain_queue._entry_ptr = internal global ptr @twl_aen_drain_queue._entry, section ".printk_index", align 4
@.str.136 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error posting request sense\00", [36 x i8] zeroinitializer }, align 32
@twl_aen_drain_queue._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.135, ptr @.str.6, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_aen_drain_queue._entry_ptr.138 = internal global ptr @twl_aen_drain_queue._entry.137, section ".printk_index", align 4
@twl_aen_drain_queue._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.135, ptr @.str.6, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_aen_drain_queue._entry_ptr.140 = internal global ptr @twl_aen_drain_queue._entry.139, section ".printk_index", align 4
@.str.141 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No valid response while draining AEN queue\00", [53 x i8] zeroinitializer }, align 32
@twl_aen_drain_queue._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.135, ptr @.str.6, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_aen_drain_queue._entry_ptr.143 = internal global ptr @twl_aen_drain_queue._entry.142, section ".printk_index", align 4
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" scsi%d:\00", [23 x i8] zeroinitializer }, align 32
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@twl_aen_queue_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.6, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\0143w-sas:%s AEN: %s (0x%02X:0x%04X): %s:%s.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl_aen_queue_event\00", [44 x i8] zeroinitializer }, align 32
@twl_aen_queue_event._entry_ptr = internal global ptr @twl_aen_queue_event._entry, section ".printk_index", align 4
@twl_aen_severity_table = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WARNING\00", [24 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INFO\00", [27 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DEBUG\00", [26 x i8] zeroinitializer }, align 32
@twl_get_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.152, ptr @.str.6, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl_get_param\00", [18 x i8] zeroinitializer }, align 32
@twl_get_param._entry_ptr = internal global ptr @twl_get_param._entry, section ".printk_index", align 4
@.str.153 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No valid response during get param\00", [61 x i8] zeroinitializer }, align 32
@twl_get_param._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.152, ptr @.str.6, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_get_param._entry_ptr.155 = internal global ptr @twl_get_param._entry.154, section ".printk_index", align 4
@twl_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.156, ptr @.str.6, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl_interrupt\00", [18 x i8] zeroinitializer }, align 32
@twl_interrupt._entry_ptr = internal global ptr @twl_interrupt._entry, section ".printk_index", align 4
@.str.157 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Received a request id that wasn't posted\00", [55 x i8] zeroinitializer }, align 32
@twl_interrupt._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.156, ptr @.str.6, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_interrupt._entry_ptr.159 = internal global ptr @twl_interrupt._entry.158, section ".printk_index", align 4
@twl_interrupt._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.156, ptr @.str.6, i32 1202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_interrupt._entry_ptr.161 = internal global ptr @twl_interrupt._entry.160, section ".printk_index", align 4
@.str.162 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error completing AEN during attention interrupt\00", [48 x i8] zeroinitializer }, align 32
@twl_interrupt._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.156, ptr @.str.6, i32 1202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_interrupt._entry_ptr.164 = internal global ptr @twl_interrupt._entry.163, section ".printk_index", align 4
@twl_handle_attention_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.165, ptr @.str.6, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"twl_handle_attention_interrupt\00", [33 x i8] zeroinitializer }, align 32
@twl_handle_attention_interrupt._entry_ptr = internal global ptr @twl_handle_attention_interrupt._entry, section ".printk_index", align 4
@.str.166 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Microcontroller Error: clearing\00", [32 x i8] zeroinitializer }, align 32
@twl_handle_attention_interrupt._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.165, ptr @.str.6, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_handle_attention_interrupt._entry_ptr.168 = internal global ptr @twl_handle_attention_interrupt._entry.167, section ".printk_index", align 4
@twl_aen_read_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.169, ptr @.str.6, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twl_aen_read_queue\00", [45 x i8] zeroinitializer }, align 32
@twl_aen_read_queue._entry_ptr = internal global ptr @twl_aen_read_queue._entry, section ".printk_index", align 4
@.str.170 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Post failed while reading AEN queue\00", [60 x i8] zeroinitializer }, align 32
@twl_aen_read_queue._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.169, ptr @.str.6, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_aen_read_queue._entry_ptr.172 = internal global ptr @twl_aen_read_queue._entry.171, section ".printk_index", align 4
@twl_fill_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.174, ptr @.str.6, i32 881, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\0143w-sas: scsi%d: ERROR: (0x%02X:0x%04X): %s:%s.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"twl_fill_sense\00", [17 x i8] zeroinitializer }, align 32
@twl_fill_sense._entry_ptr = internal global ptr @twl_fill_sense._entry, section ".printk_index", align 4
@twl_fill_sense._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.174, ptr @.str.6, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\0143w-sas: ERROR: (0x%02X:0x%04X): %s:%s.\0A\00", [54 x i8] zeroinitializer }, align 32
@twl_fill_sense._entry_ptr.177 = internal global ptr @twl_fill_sense._entry.175, section ".printk_index", align 4
@.str.178 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"3ware_aen_read\00", [17 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"3ware_compat_info\00", [46 x i8] zeroinitializer }, align 32
@twl_chrdev_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.182, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @twl_chrdev_mutex, i64 52), ptr getelementptr (i8, ptr @twl_chrdev_mutex, i64 52) }, ptr @twl_chrdev_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.183, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@twl_chrdev_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.6, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\0143w-sas: scsi%d: WARNING: (0x%02X:0x%04X): Character ioctl (0x%x) timed out, resetting card.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twl_chrdev_ioctl\00", [47 x i8] zeroinitializer }, align 32
@twl_chrdev_ioctl._entry_ptr = internal global ptr @twl_chrdev_ioctl._entry, section ".printk_index", align 4
@.str.182 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"twl_chrdev_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twl_chrdev_mutex\00", [47 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.184 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__twl_shutdown._entry = internal constant %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.6, i32 1496, ptr null, ptr null }, align 1
@.str.187 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\0143w-sas: Shutting down host %d.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__twl_shutdown\00", [17 x i8] zeroinitializer }, align 32
@__twl_shutdown._entry_ptr = internal global ptr @__twl_shutdown._entry, section ".printk_index", align 4
@__twl_shutdown._entry.189 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.188, ptr @.str.6, i32 1500, ptr null, ptr null }, align 1
@__twl_shutdown._entry_ptr.190 = internal global ptr @__twl_shutdown._entry.189, section ".printk_index", align 4
@.str.191 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Connection shutdown failed\00", [37 x i8] zeroinitializer }, align 32
@__twl_shutdown._entry.192 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.188, ptr @.str.6, i32 1500, ptr null, ptr null }, align 1
@__twl_shutdown._entry_ptr.193 = internal global ptr @__twl_shutdown._entry.192, section ".printk_index", align 4
@__twl_shutdown._entry.194 = internal constant %struct.pi_entry { ptr @.str.195, ptr @.str.188, ptr @.str.6, i32 1502, ptr null, ptr null }, align 1
@.str.195 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0143w-sas: Shutdown complete.\0A\00", [34 x i8] zeroinitializer }, align 32
@__twl_shutdown._entry_ptr.196 = internal global ptr @__twl_shutdown._entry.194, section ".printk_index", align 4
@twl_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.6, i32 1756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0143w-sas: Suspending host %d.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"twl_suspend\00", [20 x i8] zeroinitializer }, align 32
@twl_suspend._entry_ptr = internal global ptr @twl_suspend._entry, section ".printk_index", align 4
@twl_suspend._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.198, ptr @.str.6, i32 1764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_suspend._entry_ptr.200 = internal global ptr @twl_suspend._entry.199, section ".printk_index", align 4
@.str.201 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Connection shutdown failed during suspend\00", [54 x i8] zeroinitializer }, align 32
@twl_suspend._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.198, ptr @.str.6, i32 1764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_suspend._entry_ptr.203 = internal global ptr @twl_suspend._entry.202, section ".printk_index", align 4
@twl_suspend._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.198, ptr @.str.6, i32 1766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0143w-sas: Suspend complete.\0A\00", [35 x i8] zeroinitializer }, align 32
@twl_suspend._entry_ptr.206 = internal global ptr @twl_suspend._entry.204, section ".printk_index", align 4
@twl_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.6, i32 1783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0143w-sas: Resuming host %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"twl_resume\00", [21 x i8] zeroinitializer }, align 32
@twl_resume._entry_ptr = internal global ptr @twl_resume._entry, section ".printk_index", align 4
@twl_resume._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.208, ptr @.str.6, i32 1788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_resume._entry_ptr.210 = internal global ptr @twl_resume._entry.209, section ".printk_index", align 4
@.str.211 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set dma mask during resume\00", [59 x i8] zeroinitializer }, align 32
@twl_resume._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.208, ptr @.str.6, i32 1788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_resume._entry_ptr.213 = internal global ptr @twl_resume._entry.212, section ".printk_index", align 4
@twl_resume._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.208, ptr @.str.6, i32 1802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_resume._entry_ptr.215 = internal global ptr @twl_resume._entry.214, section ".printk_index", align 4
@.str.216 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error requesting IRQ during resume\00", [61 x i8] zeroinitializer }, align 32
@twl_resume._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.208, ptr @.str.6, i32 1802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twl_resume._entry_ptr.218 = internal global ptr @twl_resume._entry.217, section ".printk_index", align 4
@twl_resume._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.208, ptr @.str.6, i32 1814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\0143w-sas: Resume complete.\0A\00", [36 x i8] zeroinitializer }, align 32
@twl_resume._entry_ptr.221 = internal global ptr @twl_resume._entry.219, section ".printk_index", align 4
@twl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.223, ptr @.str.6, i32 1845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016LSI 3ware SAS/SATA-RAID Controller device driver for Linux v%s.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"twl_init\00", [23 x i8] zeroinitializer }, align 32
@twl_init._entry_ptr = internal global ptr @twl_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 49]
@__sancov_gen_cov_switch_values.224 = internal global [5 x i64] [i64 3, i64 16, i64 2561, i64 3329, i64 10241]
@__sancov_gen_cov_switch_values.225 = internal global [5 x i64] [i64 3, i64 16, i64 2561, i64 3329, i64 10241]
@__sancov_gen_cov_switch_values.226 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 49]
@__sancov_gen_cov_switch_values.227 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 16]
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 86, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant [8 x i8] c"use_msi\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 88, i32 12 }
@___asan_gen_.240 = private unnamed_addr constant [11 x i8] c"twl_driver\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1833, i32 26 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1834, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant [12 x i8] c"twl_pci_tbl\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1824, i32 29 }
@___asan_gen_.249 = private unnamed_addr constant [11 x i8] c"twl_pm_ops\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1830, i32 8 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1562, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1571, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [16 x i8] c"driver_template\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1534, i32 34 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1578, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1589, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1597, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1604, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1614, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1628, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1634, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1645, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1660, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant [26 x i8] c"twl_device_extension_list\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 77, i32 29 }
@___asan_gen_.363 = private unnamed_addr constant [27 x i8] c"twl_device_extension_count\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 78, i32 21 }
@___asan_gen_.366 = private unnamed_addr constant [24 x i8] c"twl_sysfs_aen_read_attr\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 119, i32 29 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1675, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant [27 x i8] c"twl_sysfs_compat_info_attr\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 150, i32 29 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1677, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant [10 x i8] c"twl_major\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 79, i32 12 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1680, i32 40 }
@___asan_gen_.396 = private unnamed_addr constant [9 x i8] c"twl_fops\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 850, i32 37 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1681, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant [16 x i8] c"twl_host_groups\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1435, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1444, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant [15 x i8] c"twl_host_group\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 206, i32 1 }
@___asan_gen_.432 = private unnamed_addr constant [15 x i8] c"twl_host_attrs\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 201, i32 26 }
@___asan_gen_.435 = private unnamed_addr constant [20 x i8] c"twl_host_stats_attr\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 192, i32 32 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 194, i32 12 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 169, i32 33 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1038, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1044, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1050, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1057, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1072, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1073, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 652, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1276, i32 5 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1281, i32 5 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1294, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1314, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1322, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1013, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 590, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 596, i32 4 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 238, i32 17 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 259, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant [23 x i8] c"twl_aen_severity_table\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 49, i32 14 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 51, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 51, i32 10 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 51, i32 19 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 51, i32 30 }
@___asan_gen_.616 = private unnamed_addr constant [25 x i8] c"../drivers/scsi/3w-sas.h\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.616, i32 51, i32 38 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 957, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1192, i32 5 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1202, i32 6 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1091, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 399, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 876, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 883, i32 4 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 121, i32 11 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 152, i32 11 }
@___asan_gen_.696 = private unnamed_addr constant [17 x i8] c"twl_chrdev_mutex\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 794, i32 4 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 76, i32 8 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.718, i32 230, i32 6 }
@___asan_gen_.718 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.718, i32 214, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.721, i32 156, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1496, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1500, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1502, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1756, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1764, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1766, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1783, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1788, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1802, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1814, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.798 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.799 = private constant [25 x i8] c"../drivers/scsi/3w-sas.c\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.799, i32 1845, i32 2 }
@llvm.compiler.used = appending global [290 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__UNIQUE_ID_use_msi293, ptr @__UNIQUE_ID_use_msitype292, ptr @__UNIQUE_ID_version291, ptr @__exitcall_twl_exit, ptr @__initcall__kmod_3w_sas__294_1856_twl_init6, ptr @__modver_attr, ptr @__param_use_msi, ptr @__twl_shutdown._entry, ptr @__twl_shutdown._entry.189, ptr @__twl_shutdown._entry.192, ptr @__twl_shutdown._entry.194, ptr @__twl_shutdown._entry_ptr, ptr @__twl_shutdown._entry_ptr.190, ptr @__twl_shutdown._entry_ptr.193, ptr @__twl_shutdown._entry_ptr.196, ptr @twl_aen_drain_queue._entry, ptr @twl_aen_drain_queue._entry.137, ptr @twl_aen_drain_queue._entry.139, ptr @twl_aen_drain_queue._entry.142, ptr @twl_aen_drain_queue._entry_ptr, ptr @twl_aen_drain_queue._entry_ptr.138, ptr @twl_aen_drain_queue._entry_ptr.140, ptr @twl_aen_drain_queue._entry_ptr.143, ptr @twl_aen_queue_event._entry, ptr @twl_aen_queue_event._entry_ptr, ptr @twl_aen_read_queue._entry, ptr @twl_aen_read_queue._entry.171, ptr @twl_aen_read_queue._entry_ptr, ptr @twl_aen_read_queue._entry_ptr.172, ptr @twl_allocate_memory._entry, ptr @twl_allocate_memory._entry.105, ptr @twl_allocate_memory._entry_ptr, ptr @twl_allocate_memory._entry_ptr.106, ptr @twl_chrdev_ioctl._entry, ptr @twl_chrdev_ioctl._entry_ptr, ptr @twl_exit, ptr @twl_fill_sense._entry, ptr @twl_fill_sense._entry.175, ptr @twl_fill_sense._entry_ptr, ptr @twl_fill_sense._entry_ptr.177, ptr @twl_get_param._entry, ptr @twl_get_param._entry.154, ptr @twl_get_param._entry_ptr, ptr @twl_get_param._entry_ptr.155, ptr @twl_handle_attention_interrupt._entry, ptr @twl_handle_attention_interrupt._entry.167, ptr @twl_handle_attention_interrupt._entry_ptr, ptr @twl_handle_attention_interrupt._entry_ptr.168, ptr @twl_init._entry, ptr @twl_init._entry_ptr, ptr @twl_initconnection._entry, ptr @twl_initconnection._entry.133, ptr @twl_initconnection._entry_ptr, ptr @twl_initconnection._entry_ptr.134, ptr @twl_initialize_device_extension._entry, ptr @twl_initialize_device_extension._entry.83, ptr @twl_initialize_device_extension._entry.85, ptr @twl_initialize_device_extension._entry.88, ptr @twl_initialize_device_extension._entry.90, ptr @twl_initialize_device_extension._entry.93, ptr @twl_initialize_device_extension._entry.95, ptr @twl_initialize_device_extension._entry.98, ptr @twl_initialize_device_extension._entry_ptr, ptr @twl_initialize_device_extension._entry_ptr.84, ptr @twl_initialize_device_extension._entry_ptr.86, ptr @twl_initialize_device_extension._entry_ptr.89, ptr @twl_initialize_device_extension._entry_ptr.91, ptr @twl_initialize_device_extension._entry_ptr.94, ptr @twl_initialize_device_extension._entry_ptr.96, ptr @twl_initialize_device_extension._entry_ptr.99, ptr @twl_interrupt._entry, ptr @twl_interrupt._entry.158, ptr @twl_interrupt._entry.160, ptr @twl_interrupt._entry.163, ptr @twl_interrupt._entry_ptr, ptr @twl_interrupt._entry_ptr.159, ptr @twl_interrupt._entry_ptr.161, ptr @twl_interrupt._entry_ptr.164, ptr @twl_probe._entry, ptr @twl_probe._entry.11, ptr @twl_probe._entry.14, ptr @twl_probe._entry.16, ptr @twl_probe._entry.19, ptr @twl_probe._entry.21, ptr @twl_probe._entry.24, ptr @twl_probe._entry.26, ptr @twl_probe._entry.29, ptr @twl_probe._entry.31, ptr @twl_probe._entry.34, ptr @twl_probe._entry.36, ptr @twl_probe._entry.39, ptr @twl_probe._entry.41, ptr @twl_probe._entry.44, ptr @twl_probe._entry.46, ptr @twl_probe._entry.49, ptr @twl_probe._entry.52, ptr @twl_probe._entry.55, ptr @twl_probe._entry.57, ptr @twl_probe._entry.60, ptr @twl_probe._entry.62, ptr @twl_probe._entry.65, ptr @twl_probe._entry.68, ptr @twl_probe._entry.71, ptr @twl_probe._entry.8, ptr @twl_probe._entry_ptr, ptr @twl_probe._entry_ptr.10, ptr @twl_probe._entry_ptr.12, ptr @twl_probe._entry_ptr.15, ptr @twl_probe._entry_ptr.17, ptr @twl_probe._entry_ptr.20, ptr @twl_probe._entry_ptr.22, ptr @twl_probe._entry_ptr.25, ptr @twl_probe._entry_ptr.27, ptr @twl_probe._entry_ptr.30, ptr @twl_probe._entry_ptr.32, ptr @twl_probe._entry_ptr.35, ptr @twl_probe._entry_ptr.37, ptr @twl_probe._entry_ptr.40, ptr @twl_probe._entry_ptr.42, ptr @twl_probe._entry_ptr.45, ptr @twl_probe._entry_ptr.48, ptr @twl_probe._entry_ptr.51, ptr @twl_probe._entry_ptr.53, ptr @twl_probe._entry_ptr.56, ptr @twl_probe._entry_ptr.58, ptr @twl_probe._entry_ptr.61, ptr @twl_probe._entry_ptr.63, ptr @twl_probe._entry_ptr.66, ptr @twl_probe._entry_ptr.69, ptr @twl_probe._entry_ptr.72, ptr @twl_reset_sequence._entry, ptr @twl_reset_sequence._entry.109, ptr @twl_reset_sequence._entry.111, ptr @twl_reset_sequence._entry.114, ptr @twl_reset_sequence._entry.116, ptr @twl_reset_sequence._entry.119, ptr @twl_reset_sequence._entry.121, ptr @twl_reset_sequence._entry.124, ptr @twl_reset_sequence._entry.126, ptr @twl_reset_sequence._entry.129, ptr @twl_reset_sequence._entry_ptr, ptr @twl_reset_sequence._entry_ptr.110, ptr @twl_reset_sequence._entry_ptr.112, ptr @twl_reset_sequence._entry_ptr.115, ptr @twl_reset_sequence._entry_ptr.117, ptr @twl_reset_sequence._entry_ptr.120, ptr @twl_reset_sequence._entry_ptr.122, ptr @twl_reset_sequence._entry_ptr.125, ptr @twl_reset_sequence._entry_ptr.127, ptr @twl_reset_sequence._entry_ptr.130, ptr @twl_resume._entry, ptr @twl_resume._entry.209, ptr @twl_resume._entry.212, ptr @twl_resume._entry.214, ptr @twl_resume._entry.217, ptr @twl_resume._entry.219, ptr @twl_resume._entry_ptr, ptr @twl_resume._entry_ptr.210, ptr @twl_resume._entry_ptr.213, ptr @twl_resume._entry_ptr.215, ptr @twl_resume._entry_ptr.218, ptr @twl_resume._entry_ptr.221, ptr @twl_scsi_eh_reset._entry, ptr @twl_scsi_eh_reset._entry.77, ptr @twl_scsi_eh_reset._entry_ptr, ptr @twl_scsi_eh_reset._entry_ptr.78, ptr @twl_suspend._entry, ptr @twl_suspend._entry.199, ptr @twl_suspend._entry.202, ptr @twl_suspend._entry.204, ptr @twl_suspend._entry_ptr, ptr @twl_suspend._entry_ptr.200, ptr @twl_suspend._entry_ptr.203, ptr @twl_suspend._entry_ptr.206, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @use_msi, ptr @twl_driver, ptr @.str.3, ptr @twl_pci_tbl, ptr @twl_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.13, ptr @driver_template, ptr @.str.18, ptr @.str.23, ptr @.str.28, ptr @.str.33, ptr @.str.38, ptr @.str.43, ptr @.str.47, ptr @.str.50, ptr @.str.54, ptr @twl_device_extension_list, ptr @twl_device_extension_count, ptr @twl_sysfs_aen_read_attr, ptr @.str.59, ptr @twl_sysfs_compat_info_attr, ptr @.str.64, ptr @twl_major, ptr @.str.67, ptr @twl_fops, ptr @.str.70, ptr @twl_host_groups, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @twl_host_group, ptr @twl_host_attrs, ptr @twl_host_stats_attr, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.87, ptr @.str.92, ptr @.str.97, ptr @twl_initialize_device_extension.__key, ptr @.str.100, ptr @twl_initialize_device_extension.__key.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.107, ptr @.str.108, ptr @.str.113, ptr @.str.118, ptr @.str.123, ptr @.str.128, ptr @.str.131, ptr @.str.132, ptr @.str.135, ptr @.str.136, ptr @.str.141, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @twl_aen_severity_table, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.156, ptr @.str.157, ptr @.str.162, ptr @.str.165, ptr @.str.166, ptr @.str.169, ptr @.str.170, ptr @.str.173, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.179, ptr @twl_chrdev_mutex, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.191, ptr @.str.195, ptr @.str.197, ptr @.str.198, ptr @.str.201, ptr @.str.205, ptr @.str.207, ptr @.str.208, ptr @.str.211, ptr @.str.216, ptr @.str.220, ptr @.str.222, ptr @.str.223], section "llvm.metadata"
@0 = internal global [191 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_device_extension_list to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_device_extension_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_sysfs_aen_read_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_sysfs_compat_info_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_probe._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_host_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_scsi_eh_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_scsi_eh_reset._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_host_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_host_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_host_stats_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 275, i32 352, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_initialize_device_extension._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_initialize_device_extension._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_initialize_device_extension._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_initialize_device_extension._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_initialize_device_extension._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_initialize_device_extension._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_initialize_device_extension._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_initialize_device_extension._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_initialize_device_extension.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_initialize_device_extension.__key.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_allocate_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_allocate_memory._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_reset_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_reset_sequence._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_reset_sequence._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_reset_sequence._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_reset_sequence._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_reset_sequence._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_reset_sequence._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_reset_sequence._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_reset_sequence._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_reset_sequence._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_initconnection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_initconnection._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_aen_drain_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_aen_drain_queue._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_aen_drain_queue._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_aen_drain_queue._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_aen_queue_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_aen_severity_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_get_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_get_param._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_interrupt._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_interrupt._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_interrupt._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_handle_attention_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_handle_attention_interrupt._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_aen_read_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_aen_read_queue._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_fill_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_fill_sense._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_chrdev_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_chrdev_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_suspend._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_suspend._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_suspend._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_resume._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_resume._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_resume._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_resume._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_resume._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @twl_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.2) #15
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @twl_driver, ptr noundef null, ptr noundef nonnull @.str.1) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_probe(ptr noundef %pdev, ptr nocapture noundef readnone %dev_id) #2 align 64 {
entry:
  %dma_handle.i139.i = alloca i32, align 4
  %dma_handle.i120.i = alloca i32, align 4
  %dma_handle.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 23, ptr noundef nonnull @.str.7) #15
  br label %out_disable_device

if.end10:                                         ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %call11 = tail call i32 @pci_try_set_mwi(ptr noundef %pdev) #12
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end30, label %do.end26

do.end26:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 24, ptr noundef nonnull @.str.13) #15
  br label %out_disable_device

if.end30:                                         ; preds = %if.end10
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #12
  %call31 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @driver_template, i32 noundef 9740) #12
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.end45, label %if.end49

do.end45:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 25, ptr noundef nonnull @.str.18) #15
  br label %out_disable_device

if.end49:                                         ; preds = %if.end30
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 0, i32 53
  %host51 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 21
  %0 = ptrtoint ptr %host51 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call31, ptr %host51, align 4
  %tw_pci_dev = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 3, i32 49, i32 12, i32 13
  %1 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %tw_pci_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle.i.i) #12
  %2 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma_handle.i.i, align 4, !annotation !391
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 262144, ptr noundef nonnull %dma_handle.i.i, i32 noundef 3264, i32 noundef 0) #12
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.body.i.preheader.i

for.body.i.preheader.i:                           ; preds = %if.end49
  %3 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_handle.i.i, align 4
  br label %for.body.i.i

if.then.i.i:                                      ; preds = %if.end49
  %5 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host51, align 4
  %tobool2.not.i.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i.i, label %do.end8.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %host_no.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %host_no.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %host_no.i.i, align 4
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %8, i32 noundef 6, i32 noundef 5, ptr noundef nonnull @.str.104) #15
  br label %if.then.i377

do.end8.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 5, ptr noundef nonnull @.str.104) #15
  br label %if.then.i377

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.059.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %mul12.i.i = shl i32 %i.059.i.i, 10
  %add.i.i = add i32 %mul12.i.i, %4
  %arrayidx.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 4, i32 %i.059.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i.i, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 %mul12.i.i
  %arrayidx14.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 3, i32 %i.059.i.i
  %10 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i.i, ptr %arrayidx14.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.059.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond.not.i.i, label %if.end11.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

if.then.i377:                                     ; preds = %do.end8.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i.i) #12
  %11 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host51, align 4
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %do.end8.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i377
  call void @__sanitizer_cov_trace_pc() #14
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %host_no.i, align 4
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %14, i32 noundef 6, i32 noundef 9, ptr noundef nonnull @.str.82) #15
  br label %if.then54

do.end8.i:                                        ; preds = %if.then.i377
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 9, ptr noundef nonnull @.str.82) #15
  br label %if.then54

if.end11.i:                                       ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle.i120.i) #12
  %15 = ptrtoint ptr %dma_handle.i120.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %dma_handle.i120.i, align 4, !annotation !391
  %16 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tw_pci_dev, align 4
  %dev.i122.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %call.i.i123.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i122.i, i32 noundef 131072, ptr noundef nonnull %dma_handle.i120.i, i32 noundef 3264, i32 noundef 0) #12
  %tobool.not.i124.i = icmp eq ptr %call.i.i123.i, null
  br i1 %tobool.not.i124.i, label %if.then.i127.i, label %for.body.i134.preheader.i

for.body.i134.preheader.i:                        ; preds = %if.end11.i
  %18 = ptrtoint ptr %dma_handle.i120.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_handle.i120.i, align 4
  br label %for.body.i134.i

if.then.i127.i:                                   ; preds = %if.end11.i
  %20 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host51, align 4
  %tobool2.not.i126.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i126.i, label %do.end8.i132.i, label %do.end.i130.i

do.end.i130.i:                                    ; preds = %if.then.i127.i
  call void @__sanitizer_cov_trace_pc() #14
  %host_no.i128.i = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %host_no.i128.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %host_no.i128.i, align 4
  %call5.i129.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %23, i32 noundef 6, i32 noundef 5, ptr noundef nonnull @.str.104) #15
  br label %if.then14.i

do.end8.i132.i:                                   ; preds = %if.then.i127.i
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i131.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 5, ptr noundef nonnull @.str.104) #15
  br label %if.then14.i

for.body.i134.i:                                  ; preds = %for.body.i134.i.for.body.i134.i_crit_edge, %for.body.i134.preheader.i
  %i.059.i133.i = phi i32 [ %inc.i135.i, %for.body.i134.i.for.body.i134.i_crit_edge ], [ 0, %for.body.i134.preheader.i ]
  %mul16.i.i = shl i32 %i.059.i133.i, 9
  %add17.i.i = add i32 %mul16.i.i, %19
  %arrayidx18.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 2, i32 %i.059.i133.i
  %24 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add17.i.i, ptr %arrayidx18.i.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %call.i.i123.i, i32 %mul16.i.i
  %arrayidx21.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 1, i32 %i.059.i133.i
  %25 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr20.i.i, ptr %arrayidx21.i.i, align 4
  %inc.i135.i = add nuw nsw i32 %i.059.i133.i, 1
  %exitcond.not.i136.i = icmp eq i32 %inc.i135.i, 256
  br i1 %exitcond.not.i136.i, label %if.end32.i, label %for.body.i134.i.for.body.i134.i_crit_edge

for.body.i134.i.for.body.i134.i_crit_edge:        ; preds = %for.body.i134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i134.i

if.then14.i:                                      ; preds = %do.end8.i132.i, %do.end.i130.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i120.i) #12
  %26 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host51, align 4
  %tobool16.not.i = icmp eq ptr %27, null
  br i1 %tobool16.not.i, label %do.end28.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  %host_no23.i = getelementptr inbounds %struct.Scsi_Host, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %host_no23.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %host_no23.i, align 4
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %29, i32 noundef 6, i32 noundef 10, ptr noundef nonnull @.str.87) #15
  br label %if.then54

do.end28.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 10, ptr noundef nonnull @.str.87) #15
  br label %if.then54

if.end32.i:                                       ; preds = %for.body.i134.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i120.i) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle.i139.i) #12
  %30 = ptrtoint ptr %dma_handle.i139.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %dma_handle.i139.i, align 4, !annotation !391
  %31 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tw_pci_dev, align 4
  %dev.i141.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %call.i.i142.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i141.i, i32 noundef 32768, ptr noundef nonnull %dma_handle.i139.i, i32 noundef 3264, i32 noundef 0) #12
  %tobool.not.i143.i = icmp eq ptr %call.i.i142.i, null
  br i1 %tobool.not.i143.i, label %if.then.i146.i, label %for.body.i153.preheader.i

for.body.i153.preheader.i:                        ; preds = %if.end32.i
  %33 = ptrtoint ptr %dma_handle.i139.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_handle.i139.i, align 4
  br label %for.body.i153.i

if.then.i146.i:                                   ; preds = %if.end32.i
  %35 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host51, align 4
  %tobool2.not.i145.i = icmp eq ptr %36, null
  br i1 %tobool2.not.i145.i, label %do.end8.i151.i, label %do.end.i149.i

do.end.i149.i:                                    ; preds = %if.then.i146.i
  call void @__sanitizer_cov_trace_pc() #14
  %host_no.i147.i = getelementptr inbounds %struct.Scsi_Host, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %host_no.i147.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %host_no.i147.i, align 4
  %call5.i148.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %38, i32 noundef 6, i32 noundef 5, ptr noundef nonnull @.str.104) #15
  br label %if.then35.i

do.end8.i151.i:                                   ; preds = %if.then.i146.i
  call void @__sanitizer_cov_trace_pc() #14
  %call10.i150.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 5, ptr noundef nonnull @.str.104) #15
  br label %if.then35.i

for.body.i153.i:                                  ; preds = %for.body.i153.i.for.body.i153.i_crit_edge, %for.body.i153.preheader.i
  %i.059.i152.i = phi i32 [ %inc.i154.i, %for.body.i153.i.for.body.i153.i_crit_edge ], [ 0, %for.body.i153.preheader.i ]
  %mul23.i.i = shl i32 %i.059.i152.i, 7
  %add24.i.i = add i32 %mul23.i.i, %34
  %arrayidx25.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 6, i32 %i.059.i152.i
  %39 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add24.i.i, ptr %arrayidx25.i.i, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %call.i.i142.i, i32 %mul23.i.i
  %arrayidx28.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 5, i32 %i.059.i152.i
  %40 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr27.i.i, ptr %arrayidx28.i.i, align 4
  %inc.i154.i = add nuw nsw i32 %i.059.i152.i, 1
  %exitcond.not.i155.i = icmp eq i32 %inc.i154.i, 256
  br i1 %exitcond.not.i155.i, label %if.end53.i, label %for.body.i153.i.for.body.i153.i_crit_edge

for.body.i153.i.for.body.i153.i_crit_edge:        ; preds = %for.body.i153.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i153.i

if.then35.i:                                      ; preds = %do.end8.i151.i, %do.end.i149.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i139.i) #12
  %41 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host51, align 4
  %tobool37.not.i = icmp eq ptr %42, null
  br i1 %tobool37.not.i, label %do.end49.i, label %do.end41.i

do.end41.i:                                       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #14
  %host_no44.i = getelementptr inbounds %struct.Scsi_Host, ptr %42, i32 0, i32 17
  %43 = ptrtoint ptr %host_no44.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %host_no44.i, align 4
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %44, i32 noundef 6, i32 noundef 11, ptr noundef nonnull @.str.92) #15
  br label %if.then54

do.end49.i:                                       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #14
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 11, ptr noundef nonnull @.str.92) #15
  br label %if.then54

if.end53.i:                                       ; preds = %for.body.i153.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle.i139.i) #12
  %call1.i.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 28672, i32 noundef 3520, i32 noundef 3) #16
  %event_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 4, i32 49, i32 12, i32 10, i32 1
  %45 = ptrtoint ptr %event_queue.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call1.i.i.i.i.i, ptr %event_queue.i, align 4
  %tobool57.not.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool57.not.i, label %if.then58.i, label %if.end53.i.for.body.i_crit_edge

if.end53.i.for.body.i_crit_edge:                  ; preds = %if.end53.i
  br label %for.body.i

if.then58.i:                                      ; preds = %if.end53.i
  %46 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host51, align 4
  %tobool60.not.i = icmp eq ptr %47, null
  br i1 %tobool60.not.i, label %do.end72.i, label %do.end64.i

do.end64.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #14
  %host_no67.i = getelementptr inbounds %struct.Scsi_Host, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %host_no67.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %host_no67.i, align 4
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %49, i32 noundef 6, i32 noundef 12, ptr noundef nonnull @.str.97) #15
  br label %if.then54

do.end72.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #14
  %call74.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 12, ptr noundef nonnull @.str.97) #15
  br label %if.then54

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end53.i.for.body.i_crit_edge
  %i.0164.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end53.i.for.body.i_crit_edge ]
  %50 = ptrtoint ptr %event_queue.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %event_queue.i, align 4
  %mul.i = mul nuw nsw i32 %i.0164.i, 112
  %add.ptr.i = getelementptr i8, ptr %51, i32 %mul.i
  %arrayidx80.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 23, i32 %i.0164.i
  %52 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.i, ptr %arrayidx80.i, align 4
  %conv.i = trunc i32 %i.0164.i to i8
  %arrayidx81.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 9, i32 %i.0164.i
  %53 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.i, ptr %arrayidx81.i, align 1
  %arrayidx82.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 12, i32 %i.0164.i
  %54 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %arrayidx82.i, align 4
  %inc.i = add nuw nsw i32 %i.0164.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %if.end72, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.then54:                                        ; preds = %do.end72.i, %do.end64.i, %do.end49.i, %do.end41.i, %do.end28.i, %do.end20.i, %do.end8.i, %do.end.i
  %55 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %host51, align 4
  %tobool56.not = icmp eq ptr %56, null
  br i1 %tobool56.not, label %do.end68, label %do.end60

do.end60:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  %host_no63 = getelementptr inbounds %struct.Scsi_Host, ptr %56, i32 0, i32 17
  %57 = ptrtoint ptr %host_no63 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %host_no63, align 4
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %58, i32 noundef 6, i32 noundef 26, ptr noundef nonnull @.str.23) #15
  br label %out_free_device_extension

do.end68:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 26, ptr noundef nonnull @.str.23) #15
  br label %out_free_device_extension

if.end72:                                         ; preds = %for.body.i
  %free_head.i = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 4, i32 5, i32 1, i32 3
  %59 = ptrtoint ptr %free_head.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %free_head.i, align 4
  %free_tail.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 11
  %60 = ptrtoint ptr %free_tail.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %free_tail.i, align 1
  %error_sequence_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 4, i32 50, i32 12, i32 14
  %61 = ptrtoint ptr %error_sequence_id.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %error_sequence_id.i, align 4
  %chrdev_request_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 4, i32 50, i32 12, i32 15
  %62 = ptrtoint ptr %chrdev_request_id.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %chrdev_request_id.i, align 4
  %ioctl_lock.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 28
  call void @__mutex_init(ptr noundef %ioctl_lock.i, ptr noundef nonnull @.str.100, ptr noundef nonnull @twl_initialize_device_extension.__key) #12
  %ioctl_wqueue.i = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 4, i32 50, i32 12, i32 16
  call void @__init_waitqueue_head(ptr noundef %ioctl_wqueue.i, ptr noundef nonnull @.str.102, ptr noundef nonnull @twl_initialize_device_extension.__key.101) #12
  %call73 = call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end93, label %if.then75

if.then75:                                        ; preds = %if.end72
  %63 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %host51, align 4
  %tobool77.not = icmp eq ptr %64, null
  br i1 %tobool77.not, label %do.end89, label %do.end81

do.end81:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  %host_no84 = getelementptr inbounds %struct.Scsi_Host, ptr %64, i32 0, i32 17
  %65 = ptrtoint ptr %host_no84 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %host_no84, align 4
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %66, i32 noundef 6, i32 noundef 27, ptr noundef nonnull @.str.28) #15
  br label %out_free_device_extension

do.end89:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 27, ptr noundef nonnull @.str.28) #15
  br label %out_free_device_extension

if.end93:                                         ; preds = %if.end72
  %call94 = call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef 0) #12
  %67 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call94, ptr %hostdata.i, align 4
  %tobool96.not = icmp eq ptr %call94, null
  br i1 %tobool96.not, label %if.then97, label %do.body116

if.then97:                                        ; preds = %if.end93
  %68 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %host51, align 4
  %tobool99.not = icmp eq ptr %69, null
  br i1 %tobool99.not, label %do.end111, label %do.end103

do.end103:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  %host_no106 = getelementptr inbounds %struct.Scsi_Host, ptr %69, i32 0, i32 17
  %70 = ptrtoint ptr %host_no106 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %host_no106, align 4
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %71, i32 noundef 6, i32 noundef 28, ptr noundef nonnull @.str.33) #15
  br label %out_release_mem_region

do.end111:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 28, ptr noundef nonnull @.str.33) #15
  br label %out_release_mem_region

do.body116:                                       ; preds = %if.end93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !392
  call void @arm_heavy_mb() #12
  %72 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hostdata.i, align 4
  %add.ptr = getelementptr i8, ptr %73, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #12, !srcloc !393
  %call120 = call fastcc i32 @twl_reset_sequence(ptr noundef %hostdata.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end140, label %if.then122

if.then122:                                       ; preds = %do.body116
  %74 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %host51, align 4
  %tobool124.not = icmp eq ptr %75, null
  br i1 %tobool124.not, label %do.end136, label %do.end128

do.end128:                                        ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  %host_no131 = getelementptr inbounds %struct.Scsi_Host, ptr %75, i32 0, i32 17
  %76 = ptrtoint ptr %host_no131 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %host_no131, align 4
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %77, i32 noundef 6, i32 noundef 29, ptr noundef nonnull @.str.38) #15
  br label %out_iounmap

do.end136:                                        ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 29, ptr noundef nonnull @.str.38) #15
  br label %out_iounmap

if.end140:                                        ; preds = %do.body116
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 0, i32 21
  %78 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 32, ptr %max_id, align 4
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 0, i32 24
  %79 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 16, ptr %max_cmd_len, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 0, i32 22
  %80 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 16, ptr %max_lun, align 8
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 0, i32 20
  %81 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %max_channel, align 8
  %call.i378 = call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call31, ptr noundef %dev, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i378)
  %tobool143.not = icmp eq i32 %call.i378, 0
  br i1 %tobool143.not, label %if.end162, label %if.then144

if.then144:                                       ; preds = %if.end140
  %82 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %host51, align 4
  %tobool146.not = icmp eq ptr %83, null
  br i1 %tobool146.not, label %do.end158, label %do.end150

do.end150:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #14
  %host_no153 = getelementptr inbounds %struct.Scsi_Host, ptr %83, i32 0, i32 17
  %84 = ptrtoint ptr %host_no153 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %host_no153, align 4
  %call154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %85, i32 noundef 6, i32 noundef 30, ptr noundef nonnull @.str.43) #15
  br label %out_iounmap

do.end158:                                        ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #14
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 30, ptr noundef nonnull @.str.43) #15
  br label %out_iounmap

if.end162:                                        ; preds = %if.end140
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %86 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call31, ptr %driver_data.i.i, align 4
  %host_no167 = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 0, i32 17
  %87 = ptrtoint ptr %host_no167 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %host_no167, align 4
  %call168 = call fastcc ptr @twl_get_param(ptr noundef %hostdata.i, i32 noundef 1, i32 noundef 1026, i32 noundef 8, i32 noundef 16)
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx, align 8
  %conv = zext i32 %90 to i64
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %91 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %irq, align 4
  %call169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %88, ptr noundef %call168, i64 noundef %conv, i32 noundef %92) #15
  %call170 = call fastcc ptr @twl_get_param(ptr noundef %hostdata.i, i32 noundef 2, i32 noundef 1, i32 noundef 2, i32 noundef 1)
  %tobool171.not = icmp eq ptr %call170, null
  br i1 %tobool171.not, label %if.end162.do.end176_crit_edge, label %if.then172

if.end162.do.end176_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end176

if.then172:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %call170 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %call170, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94)
  br label %do.end176

do.end176:                                        ; preds = %if.then172, %if.end162.do.end176_crit_edge
  %phycount.0 = phi i32 [ %95, %if.then172 ], [ 0, %if.end162.do.end176_crit_edge ]
  %96 = ptrtoint ptr %host_no167 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %host_no167, align 4
  %call179 = call fastcc ptr @twl_get_param(ptr noundef %hostdata.i, i32 noundef 1, i32 noundef 1026, i32 noundef 3, i32 noundef 16)
  %call180 = call fastcc ptr @twl_get_param(ptr noundef %hostdata.i, i32 noundef 2, i32 noundef 1026, i32 noundef 4, i32 noundef 16)
  %call181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %97, ptr noundef %call179, ptr noundef %call180, i32 noundef %phycount.0) #15
  %98 = load i32, ptr @use_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool182.not = icmp eq i32 %98, 0
  br i1 %tobool182.not, label %do.end176.if.end186_crit_edge, label %land.lhs.true

do.end176.if.end186_crit_edge:                    ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

land.lhs.true:                                    ; preds = %do.end176
  %call183 = call i32 @pci_enable_msi(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.then185, label %land.lhs.true.if.end186_crit_edge

land.lhs.true.if.end186_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

if.then185:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 4, i32 49, i32 12, i32 10
  call void @_set_bit(i32 noundef 3, ptr noundef %flags) #12
  br label %if.end186

if.end186:                                        ; preds = %if.then185, %land.lhs.true.if.end186_crit_edge, %do.end176.if.end186_crit_edge
  %99 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %irq, align 4
  %call.i379 = call i32 @request_threaded_irq(i32 noundef %100, ptr noundef nonnull @twl_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %hostdata.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i379)
  %tobool189.not = icmp eq i32 %call.i379, 0
  br i1 %tobool189.not, label %if.end208, label %if.then190

if.then190:                                       ; preds = %if.end186
  %101 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %host51, align 4
  %tobool192.not = icmp eq ptr %102, null
  br i1 %tobool192.not, label %do.end204, label %do.end196

do.end196:                                        ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #14
  %host_no199 = getelementptr inbounds %struct.Scsi_Host, ptr %102, i32 0, i32 17
  %103 = ptrtoint ptr %host_no199 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %host_no199, align 4
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %104, i32 noundef 6, i32 noundef 31, ptr noundef nonnull @.str.54) #15
  br label %out_remove_host

do.end204:                                        ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #14
  %call206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 31, ptr noundef nonnull @.str.54) #15
  br label %out_remove_host

if.end208:                                        ; preds = %if.end186
  %105 = load i32, ptr @twl_device_extension_count, align 4
  %arrayidx209 = getelementptr [32 x ptr], ptr @twl_device_extension_list, i32 0, i32 %105
  %106 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %hostdata.i, ptr %arrayidx209, align 4
  %inc = add i32 %105, 1
  store i32 %inc, ptr @twl_device_extension_count, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !394
  call void @arm_heavy_mb() #12
  %107 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hostdata.i, align 4
  %add.ptr214 = getelementptr i8, ptr %108, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr214, i32 -201326593) #12, !srcloc !393
  call void @scsi_scan_host(ptr noundef nonnull %call31) #12
  %shost_dev = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 0, i32 50
  %call215 = call i32 @sysfs_create_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @twl_sysfs_aen_read_attr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end208.if.end235_crit_edge, label %if.then217

if.end208.if.end235_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end235

if.then217:                                       ; preds = %if.end208
  %109 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %host51, align 4
  %tobool219.not = icmp eq ptr %110, null
  br i1 %tobool219.not, label %do.end231, label %do.end223

do.end223:                                        ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #14
  %host_no226 = getelementptr inbounds %struct.Scsi_Host, ptr %110, i32 0, i32 17
  %111 = ptrtoint ptr %host_no226 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %host_no226, align 4
  %call227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %112, i32 noundef 6, i32 noundef 32, ptr noundef nonnull @.str.59) #15
  br label %if.end235

do.end231:                                        ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #14
  %call233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 32, ptr noundef nonnull @.str.59) #15
  br label %if.end235

if.end235:                                        ; preds = %do.end231, %do.end223, %if.end208.if.end235_crit_edge
  %call238 = call i32 @sysfs_create_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @twl_sysfs_compat_info_attr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.end235.if.end258_crit_edge, label %if.then240

if.end235.if.end258_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end258

if.then240:                                       ; preds = %if.end235
  %113 = ptrtoint ptr %host51 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %host51, align 4
  %tobool242.not = icmp eq ptr %114, null
  br i1 %tobool242.not, label %do.end254, label %do.end246

do.end246:                                        ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #14
  %host_no249 = getelementptr inbounds %struct.Scsi_Host, ptr %114, i32 0, i32 17
  %115 = ptrtoint ptr %host_no249 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %host_no249, align 4
  %call250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %116, i32 noundef 6, i32 noundef 33, ptr noundef nonnull @.str.64) #15
  br label %if.end258

do.end254:                                        ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #14
  %call256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 33, ptr noundef nonnull @.str.64) #15
  br label %if.end258

if.end258:                                        ; preds = %do.end254, %do.end246, %if.end235.if.end258_crit_edge
  %117 = load i32, ptr @twl_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %117)
  %cmp = icmp eq i32 %117, -1
  br i1 %cmp, label %if.then260, label %if.end258.if.end281_crit_edge

if.end258.if.end281_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end281

if.then260:                                       ; preds = %if.end258
  %call.i380 = call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.67, ptr noundef nonnull @twl_fops) #12
  store i32 %call.i380, ptr @twl_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i380)
  %cmp262 = icmp slt i32 %call.i380, 0
  br i1 %cmp262, label %do.end269, label %if.then260.if.end281_crit_edge

if.then260.if.end281_crit_edge:                   ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end281

do.end269:                                        ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %host_no167 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %host_no167, align 4
  %call272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %119, i32 noundef 6, i32 noundef 34, ptr noundef nonnull @.str.70) #15
  br label %if.end281

if.end281:                                        ; preds = %do.end269, %if.then260.if.end281_crit_edge, %if.end258.if.end281_crit_edge
  %online = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 4, i32 50, i32 31, i32 0, i32 0, i32 4, i32 3
  %120 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %online, align 4
  br label %cleanup

out_remove_host:                                  ; preds = %do.end204, %do.end196
  %flags282 = getelementptr inbounds %struct.Scsi_Host, ptr %call31, i32 4, i32 49, i32 12, i32 10
  %121 = ptrtoint ptr %flags282 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %flags282, align 4
  %123 = and i32 %122, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool284.not = icmp eq i32 %123, 0
  br i1 %tobool284.not, label %out_remove_host.if.end286_crit_edge, label %if.then285

out_remove_host.if.end286_crit_edge:              ; preds = %out_remove_host
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end286

if.then285:                                       ; preds = %out_remove_host
  call void @__sanitizer_cov_trace_pc() #14
  call void @pci_disable_msi(ptr noundef %pdev) #12
  br label %if.end286

if.end286:                                        ; preds = %if.then285, %out_remove_host.if.end286_crit_edge
  call void @scsi_remove_host(ptr noundef nonnull %call31) #12
  br label %out_iounmap

out_iounmap:                                      ; preds = %if.end286, %do.end158, %do.end150, %do.end136, %do.end128
  %retval1.0 = phi i32 [ %call.i378, %do.end150 ], [ %call.i378, %do.end158 ], [ %call.i379, %if.end286 ], [ -12, %do.end136 ], [ -12, %do.end128 ]
  %124 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hostdata.i, align 4
  call void @iounmap(ptr noundef %125) #12
  br label %out_release_mem_region

out_release_mem_region:                           ; preds = %out_iounmap, %do.end111, %do.end103
  %retval1.1 = phi i32 [ %retval1.0, %out_iounmap ], [ -12, %do.end111 ], [ -12, %do.end103 ]
  call void @pci_release_regions(ptr noundef %pdev) #12
  br label %out_free_device_extension

out_free_device_extension:                        ; preds = %out_release_mem_region, %do.end89, %do.end81, %do.end68, %do.end60
  %retval1.2 = phi i32 [ %call73, %do.end81 ], [ %call73, %do.end89 ], [ %retval1.1, %out_release_mem_region ], [ -12, %do.end68 ], [ -12, %do.end60 ]
  call fastcc void @twl_free_device_extension(ptr noundef %hostdata.i)
  call void @scsi_host_put(ptr noundef nonnull %call31) #12
  br label %out_disable_device

out_disable_device:                               ; preds = %out_free_device_extension, %do.end45, %do.end26, %do.end7
  %retval1.3 = phi i32 [ %call, %do.end7 ], [ -19, %do.end26 ], [ %retval1.2, %out_free_device_extension ], [ -12, %do.end45 ]
  call void @pci_disable_device(ptr noundef %pdev) #12
  br label %cleanup

cleanup:                                          ; preds = %out_disable_device, %if.end281
  %retval.0 = phi i32 [ %retval1.3, %out_disable_device ], [ 0, %if.end281 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %online = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 4, i32 50, i32 31, i32 0, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %online, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %shost_dev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 50
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @twl_sysfs_aen_read_attr) #12
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_dev, ptr noundef nonnull @twl_sysfs_compat_info_attr) #12
  %host6 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 21
  %4 = ptrtoint ptr %host6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host6, align 4
  tail call void @scsi_remove_host(ptr noundef %5) #12
  %6 = load i32, ptr @twl_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp = icmp sgt i32 %6, -1
  br i1 %cmp, label %if.then7, label %if.end3.if.end8_crit_edge

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__unregister_chrdev(i32 noundef %6, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.67) #12
  store i32 -1, ptr @twl_major, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3.if.end8_crit_edge
  tail call fastcc void @__twl_shutdown(ptr noundef %hostdata)
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 4, i32 49, i32 12, i32 10
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_disable_msi(ptr noundef %pdev) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %10 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hostdata, align 4
  tail call void @iounmap(ptr noundef %11) #12
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  tail call fastcc void @twl_free_device_extension(ptr noundef %hostdata)
  %12 = ptrtoint ptr %host6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host6, align 4
  tail call void @scsi_host_put(ptr noundef %13) #12
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  %14 = load i32, ptr @twl_device_extension_count, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr @twl_device_extension_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %online = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 4, i32 50, i32 31, i32 0, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %online, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  tail call fastcc void @__twl_shutdown(ptr noundef %hostdata)
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_try_set_mwi(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl_reset_sequence(ptr noundef %tw_dev, i32 noundef %soft_reset) unnamed_addr #2 align 64 {
entry:
  %cdb.i = alloca [16 x i8], align 1
  %sglist.i = alloca [1 x %struct.TAG_TW_SG_Entry_ISO], align 8
  %fw_on_ctlr_srl = alloca i16, align 2
  %fw_on_ctlr_arch_id = alloca i16, align 2
  %fw_on_ctlr_branch = alloca i16, align 2
  %fw_on_ctlr_build = alloca i16, align 2
  %init_connect_result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_on_ctlr_srl) #12
  %0 = ptrtoint ptr %fw_on_ctlr_srl to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %fw_on_ctlr_srl, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_on_ctlr_arch_id) #12
  %1 = ptrtoint ptr %fw_on_ctlr_arch_id to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %fw_on_ctlr_arch_id, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_on_ctlr_branch) #12
  %2 = ptrtoint ptr %fw_on_ctlr_branch to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %fw_on_ctlr_branch, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_on_ctlr_build) #12
  %3 = ptrtoint ptr %fw_on_ctlr_build to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %fw_on_ctlr_build, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %init_connect_result) #12
  %4 = ptrtoint ptr %init_connect_result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %init_connect_result, align 4
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 21
  %5 = getelementptr inbounds [16 x i8], ptr %cdb.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %soft_reset)
  %tobool.not.i = icmp eq i32 %soft_reset, 0
  %..i = zext i1 %tobool.not.i to i32
  %command_packet_virt.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 3
  %6 = getelementptr inbounds i8, ptr %cdb.i, i32 1
  %generic_buffer_phys.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 2
  %srb.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 8
  %posted_request_count45.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13
  %generic_buffer_virt.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 1
  %state.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 12
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer.backedge.while.body.lr.ph_crit_edge, %entry
  %i.0.ph242 = phi i32 [ 0, %entry ], [ %i.1.lcssa, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %tries.0.ph241 = phi i32 [ 0, %entry ], [ %tries.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %do_soft_reset.0.ph240 = phi i32 [ %soft_reset, %entry ], [ 1, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %tries.0237 = phi i32 [ %tries.0.ph241, %while.body.lr.ph ], [ %tries.0.be, %while.cond.backedge.while.body_crit_edge ]
  %do_soft_reset.0236 = phi i32 [ %do_soft_reset.0.ph240, %while.body.lr.ph ], [ 1, %while.cond.backedge.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_soft_reset.0236)
  %tobool.not = icmp eq i32 %do_soft_reset.0236, 0
  br i1 %tobool.not, label %while.body.if.end43_crit_edge, label %do.body

while.body.if.end43_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

do.body:                                          ; preds = %while.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !395
  call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tw_dev, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 65536) #12, !srcloc !393
  %9 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tw_dev, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 188
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #12, !srcloc !396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !397
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %13 = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not2.i = icmp eq i32 %13, 0
  br i1 %cmp.not2.i, label %do.body.if.end18_crit_edge, label %while.body.lr.ph.i

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

while.body.lr.ph.i:                               ; preds = %do.body
  %add.i = add i32 %12, 3000
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #12, !srcloc !396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp8.i = icmp slt i32 %sub.i, 0
  br i1 %cmp8.i, label %if.then5, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @msleep(i32 noundef 50) #12
  %16 = and i32 %14, 2097152
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %if.end.i.if.end18_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end.i.if.end18_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then5:                                         ; preds = %while.body.i
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host, align 4
  %tobool6.not = icmp eq ptr %18, null
  br i1 %tobool6.not, label %do.end15, label %do.end10

do.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %host_no, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %20, i32 noundef 6, i32 noundef 16, ptr noundef nonnull @.str.108) #15
  br label %while.cond.backedge

do.end15:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 16, ptr noundef nonnull @.str.108) #15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end60, %do.end52, %do.end37, %do.end29, %do.end15, %do.end10
  %tries.0.be = add i32 %tries.0237, 1
  %cmp = icmp slt i32 %tries.0.be, 2
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.out_crit_edge

while.cond.backedge.out_crit_edge:                ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end18:                                         ; preds = %if.end.i.if.end18_crit_edge, %do.body.if.end18_crit_edge
  %21 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tw_dev, align 4
  %add.ptr20 = getelementptr i8, ptr %22, i32 188
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #12, !srcloc !396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !397
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %25 = and i32 %23, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not2.i202.not = icmp eq i32 %25, 0
  br i1 %cmp.not2.i202.not, label %while.body.lr.ph.i204, label %if.end18.if.end43_crit_edge

if.end18.if.end43_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

while.body.lr.ph.i204:                            ; preds = %if.end18
  %add.i203 = add i32 %24, 6000
  br label %while.body.i207

while.body.i207:                                  ; preds = %if.end.i210.while.body.i207_crit_edge, %while.body.lr.ph.i204
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #12, !srcloc !396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !398
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub.i205 = sub i32 %add.i203, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i205)
  %cmp8.i206 = icmp slt i32 %sub.i205, 0
  br i1 %cmp8.i206, label %if.then23, label %if.end.i210

if.end.i210:                                      ; preds = %while.body.i207
  call void @msleep(i32 noundef 50) #12
  %28 = and i32 %26, 2097152
  %cmp.not.i209.not = icmp eq i32 %28, 0
  br i1 %cmp.not.i209.not, label %if.end.i210.while.body.i207_crit_edge, label %if.end.i210.if.end43_crit_edge

if.end.i210.if.end43_crit_edge:                   ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.end.i210.while.body.i207_crit_edge:            ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i207

if.then23:                                        ; preds = %while.body.i207
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  %tobool25.not = icmp eq ptr %30, null
  br i1 %tobool25.not, label %do.end37, label %do.end29

do.end29:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %host_no32 = getelementptr inbounds %struct.Scsi_Host, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %host_no32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %host_no32, align 4
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %32, i32 noundef 6, i32 noundef 17, ptr noundef nonnull @.str.113) #15
  br label %while.cond.backedge

do.end37:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 17, ptr noundef nonnull @.str.113) #15
  br label %while.cond.backedge

if.end43:                                         ; preds = %if.end.i210.if.end43_crit_edge, %if.end18.if.end43_crit_edge, %while.body.if.end43_crit_edge
  %call44 = call fastcc i32 @twl_initconnection(ptr noundef %tw_dev, i32 noundef 256, i32 noundef 2, i16 noundef zeroext 40, i16 noundef zeroext 10, ptr noundef nonnull %fw_on_ctlr_srl, ptr noundef nonnull %fw_on_ctlr_arch_id, ptr noundef nonnull %fw_on_ctlr_branch, ptr noundef nonnull %fw_on_ctlr_build, ptr noundef nonnull %init_connect_result)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %while.cond66.preheader, label %if.then46

while.cond66.preheader:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.0.ph242)
  %cmp67238 = icmp slt i32 %i.0.ph242, 256
  br i1 %cmp67238, label %while.cond66.preheader.do.body69_crit_edge, label %while.cond66.preheader.while.end_crit_edge

while.cond66.preheader.while.end_crit_edge:       ; preds = %while.cond66.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond66.preheader.do.body69_crit_edge:       ; preds = %while.cond66.preheader
  br label %do.body69

if.then46:                                        ; preds = %if.end43
  %33 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host, align 4
  %tobool48.not = icmp eq ptr %34, null
  br i1 %tobool48.not, label %do.end60, label %do.end52

do.end52:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %host_no55 = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 17
  %35 = ptrtoint ptr %host_no55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %host_no55, align 4
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %36, i32 noundef 6, i32 noundef 18, ptr noundef nonnull @.str.118) #15
  br label %while.cond.backedge

do.end60:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 18, ptr noundef nonnull @.str.118) #15
  br label %while.cond.backedge

do.body69:                                        ; preds = %do.body69.do.body69_crit_edge, %while.cond66.preheader.do.body69_crit_edge
  %i.1239 = phi i32 [ %spec.select, %do.body69.do.body69_crit_edge ], [ %i.0.ph242, %while.cond66.preheader.do.body69_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !399
  call void @arm_heavy_mb() #12
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 6, i32 %i.1239
  %37 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tw_dev, align 4
  %add.ptr74 = getelementptr i8, ptr %38, i32 204
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 0) #12, !srcloc !393
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !400
  call void @arm_heavy_mb() #12
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tw_dev, align 4
  %add.ptr81 = getelementptr i8, ptr %43, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %41) #12, !srcloc !393
  %44 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tw_dev, align 4
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #12, !srcloc !396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !401
  %47 = lshr i32 %46, 21
  %.lobit = and i32 %47, 1
  %48 = xor i32 %.lobit, 1
  %spec.select = add nsw i32 %48, %i.1239
  %cmp67 = icmp slt i32 %spec.select, 256
  br i1 %cmp67, label %do.body69.do.body69_crit_edge, label %do.body69.while.end_crit_edge

do.body69.while.end_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.body69.do.body69_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body69

while.end:                                        ; preds = %do.body69.while.end_crit_edge, %while.cond66.preheader.while.end_crit_edge
  %i.1.lcssa = phi i32 [ %i.0.ph242, %while.cond66.preheader.while.end_crit_edge ], [ %spec.select, %do.body69.while.end_crit_edge ]
  %49 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tw_dev, align 4
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #12, !srcloc !396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !402
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool98.not = icmp eq i32 %51, 0
  br i1 %tobool98.not, label %if.end118, label %if.then99

if.then99:                                        ; preds = %while.end
  %52 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %host, align 4
  %tobool101.not = icmp eq ptr %53, null
  br i1 %tobool101.not, label %do.end113, label %do.end105

do.end105:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  %host_no108 = getelementptr inbounds %struct.Scsi_Host, ptr %53, i32 0, i32 17
  %54 = ptrtoint ptr %host_no108 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %host_no108, align 4
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %55, i32 noundef 6, i32 noundef 19, ptr noundef nonnull @.str.123) #15
  br label %while.cond.outer.backedge

do.end113:                                        ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #14
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 19, ptr noundef nonnull @.str.123) #15
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %do.end135, %do.end127, %do.end113, %do.end105
  %tries.0.ph.be = add i32 %tries.0237, 1
  %cmp235 = icmp slt i32 %tries.0.ph.be, 2
  br i1 %cmp235, label %while.cond.outer.backedge.while.body.lr.ph_crit_edge, label %while.cond.outer.backedge.out_crit_edge

while.cond.outer.backedge.out_crit_edge:          ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.cond.outer.backedge.while.body.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.lr.ph

if.end118:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sglist.i) #12
  %56 = ptrtoint ptr %command_packet_virt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %command_packet_virt.i, align 4
  %58 = call ptr @memset(ptr %57, i32 0, i32 1024)
  %59 = call ptr @memset(ptr %6, i32 0, i32 15)
  %60 = ptrtoint ptr %cdb.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 3, ptr %cdb.i, align 1
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -128, ptr %5, align 1
  %62 = ptrtoint ptr %sglist.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 512, ptr %sglist.i, align 8
  %63 = ptrtoint ptr %generic_buffer_phys.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %generic_buffer_phys.i, align 4
  store i32 %64, ptr %sglist.i, align 8
  %65 = ptrtoint ptr %srb.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %srb.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond61.i.do.body.i_crit_edge, %if.end118
  %first_reset.1.i = phi i32 [ %..i, %if.end118 ], [ %first_reset.2102.i, %do.cond61.i.do.body.i_crit_edge ]
  %count.0.i = phi i32 [ 0, %if.end118 ], [ %inc.i, %do.cond61.i.do.body.i_crit_edge ]
  %call.i = call fastcc i32 @twl_scsiop_execute_scsi(ptr noundef %tw_dev, i32 noundef 0, ptr noundef nonnull %cdb.i, i32 noundef 1, ptr noundef nonnull %sglist.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool9.not.i, label %if.end23.i, label %if.then10.i

if.then10.i:                                      ; preds = %do.body.i
  %66 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %host, align 4
  %tobool11.not.i = icmp eq ptr %67, null
  br i1 %tobool11.not.i, label %do.end19.i, label %do.end.i

do.end.i:                                         ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %67, i32 0, i32 17
  %68 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %host_no.i, align 4
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %69, i32 noundef 6, i32 noundef 3, ptr noundef nonnull @.str.136) #15
  br label %twl_aen_drain_queue.exit.thread

do.end19.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 3, ptr noundef nonnull @.str.136) #15
  br label %twl_aen_drain_queue.exit.thread

if.end23.i:                                       ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %70, 3000
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end5.i.i.while.body.i.i_crit_edge, %if.end23.i
  %71 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tw_dev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %72, i32 200
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !403
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %74 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp3.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp3.i.i, label %if.then26.i, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %while.body.i.i
  %75 = call i32 @llvm.bswap.i32(i32 %73) #12
  %cmp.not.i.i = icmp ult i32 %75, 65536
  call void @msleep(i32 noundef 50) #12
  br i1 %cmp.not.i.i, label %if.end44.i, label %if.end5.i.i.while.body.i.i_crit_edge

if.end5.i.i.while.body.i.i_crit_edge:             ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

if.then26.i:                                      ; preds = %while.body.i.i
  %76 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %host, align 4
  %tobool28.not.i = icmp eq ptr %77, null
  br i1 %tobool28.not.i, label %do.end40.i, label %do.end32.i

do.end32.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  %host_no35.i = getelementptr inbounds %struct.Scsi_Host, ptr %77, i32 0, i32 17
  %78 = ptrtoint ptr %host_no35.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %host_no35.i, align 4
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %79, i32 noundef 6, i32 noundef 4, ptr noundef nonnull @.str.141) #15
  br label %if.end43.i

do.end40.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 4, ptr noundef nonnull @.str.141) #15
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end40.i, %do.end32.i
  %80 = ptrtoint ptr %posted_request_count45.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %posted_request_count45.i, align 4
  %dec.i = add i32 %81, -1
  store i32 %dec.i, ptr %posted_request_count45.i, align 4
  br label %twl_aen_drain_queue.exit.thread

if.end44.i:                                       ; preds = %if.end5.i.i
  %82 = ptrtoint ptr %posted_request_count45.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %posted_request_count45.i, align 4
  %dec46.i = add i32 %83, -1
  store i32 %dec46.i, ptr %posted_request_count45.i, align 4
  %84 = ptrtoint ptr %generic_buffer_virt.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %generic_buffer_virt.i, align 4
  %error.i = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %85, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %error.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %error.i, align 1
  %88 = call i16 @llvm.bswap.i16(i16 %87) #12
  %inc.i = add nuw nsw i32 %count.0.i, 1
  %89 = zext i16 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values)
  switch i16 %88, label %if.end44.i.if.then59.i_crit_edge [
    i16 0, label %sw.bb.i
    i16 1, label %sw.epilog.i
    i16 49, label %if.end44.i.do.cond61.i_crit_edge
  ]

if.end44.i.do.cond61.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond61.i

if.end44.i.if.then59.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59.i

sw.bb.i:                                          ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %first_reset.1.i)
  %cmp.not.i213 = icmp eq i32 %first_reset.1.i, 1
  br i1 %cmp.not.i213, label %twl_aen_drain_queue.exit, label %sw.bb.i.twl_aen_drain_queue.exit.thread_crit_edge

sw.bb.i.twl_aen_drain_queue.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %twl_aen_drain_queue.exit.thread

sw.epilog.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_reset.1.i)
  %cmp53.i = icmp eq i32 %first_reset.1.i, 0
  br i1 %cmp53.i, label %sw.epilog.i.do.cond61.i_crit_edge, label %sw.epilog.i.if.then59.i_crit_edge

sw.epilog.i.if.then59.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then59.i

sw.epilog.i.do.cond61.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond61.i

if.then59.i:                                      ; preds = %sw.epilog.i.if.then59.i_crit_edge, %if.end44.i.if.then59.i_crit_edge
  %first_reset.2108.i = phi i32 [ 1, %sw.epilog.i.if.then59.i_crit_edge ], [ %first_reset.1.i, %if.end44.i.if.then59.i_crit_edge ]
  call fastcc void @twl_aen_queue_event(ptr noundef %tw_dev, ptr noundef %85) #12
  br label %do.cond61.i

do.cond61.i:                                      ; preds = %if.then59.i, %sw.epilog.i.do.cond61.i_crit_edge, %if.end44.i.do.cond61.i_crit_edge
  %first_reset.2102.i = phi i32 [ 1, %sw.epilog.i.do.cond61.i_crit_edge ], [ %first_reset.2108.i, %if.then59.i ], [ %first_reset.1.i, %if.end44.i.do.cond61.i_crit_edge ]
  %exitcond.not.i = icmp eq i32 %inc.i, 255
  br i1 %exitcond.not.i, label %twl_aen_drain_queue.exit.thread222, label %do.cond61.i.do.body.i_crit_edge

do.cond61.i.do.body.i_crit_edge:                  ; preds = %do.cond61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

twl_aen_drain_queue.exit.thread222:               ; preds = %do.cond61.i
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %state.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sglist.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i) #12
  br label %if.then121

twl_aen_drain_queue.exit.thread:                  ; preds = %sw.bb.i.twl_aen_drain_queue.exit.thread_crit_edge, %if.end43.i, %do.end19.i, %do.end.i
  %91 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %state.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sglist.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i) #12
  br label %if.then121

twl_aen_drain_queue.exit:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %inc.i)
  %cmp67.i.not = icmp eq i32 %inc.i, 255
  %92 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %state.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sglist.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i) #12
  br i1 %cmp67.i.not, label %twl_aen_drain_queue.exit.if.then121_crit_edge, label %if.end140

twl_aen_drain_queue.exit.if.then121_crit_edge:    ; preds = %twl_aen_drain_queue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then121

if.then121:                                       ; preds = %twl_aen_drain_queue.exit.if.then121_crit_edge, %twl_aen_drain_queue.exit.thread, %twl_aen_drain_queue.exit.thread222
  %93 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %host, align 4
  %tobool123.not = icmp eq ptr %94, null
  br i1 %tobool123.not, label %do.end135, label %do.end127

do.end127:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  %host_no130 = getelementptr inbounds %struct.Scsi_Host, ptr %94, i32 0, i32 17
  %95 = ptrtoint ptr %host_no130 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %host_no130, align 4
  %call131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %96, i32 noundef 6, i32 noundef 20, ptr noundef nonnull @.str.128) #15
  br label %while.cond.outer.backedge

do.end135:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 20, ptr noundef nonnull @.str.128) #15
  br label %while.cond.outer.backedge

if.end140:                                        ; preds = %twl_aen_drain_queue.exit
  call void @__sanitizer_cov_trace_pc() #14
  %tw_compat_info = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 29
  %97 = call ptr @memcpy(ptr %tw_compat_info, ptr @.str.2, i32 11)
  %driver_srl_high = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 29, i32 4
  %98 = ptrtoint ptr %driver_srl_high to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 40, ptr %driver_srl_high, align 2
  %driver_branch_high = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 29, i32 5
  %99 = ptrtoint ptr %driver_branch_high to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %driver_branch_high, align 4
  %driver_build_high = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 29, i32 6
  %100 = ptrtoint ptr %driver_build_high to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %driver_build_high, align 2
  %driver_srl_low = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 29, i32 7
  %101 = ptrtoint ptr %driver_srl_low to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 24, ptr %driver_srl_low, align 4
  %driver_branch_low = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 29, i32 8
  %102 = ptrtoint ptr %driver_branch_low to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %driver_branch_low, align 2
  %driver_build_low = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 29, i32 9
  %103 = ptrtoint ptr %driver_build_low to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 1, ptr %driver_build_low, align 4
  %104 = ptrtoint ptr %fw_on_ctlr_srl to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %fw_on_ctlr_srl, align 2
  %fw_on_ctlr_srl149 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 29, i32 10
  %106 = ptrtoint ptr %fw_on_ctlr_srl149 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %fw_on_ctlr_srl149, align 2
  %107 = ptrtoint ptr %fw_on_ctlr_branch to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %fw_on_ctlr_branch, align 2
  %fw_on_ctlr_branch151 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 29, i32 11
  %109 = ptrtoint ptr %fw_on_ctlr_branch151 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %fw_on_ctlr_branch151, align 4
  %110 = ptrtoint ptr %fw_on_ctlr_build to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %fw_on_ctlr_build, align 2
  %fw_on_ctlr_build153 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 29, i32 12
  %112 = ptrtoint ptr %fw_on_ctlr_build153 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %fw_on_ctlr_build153, align 2
  br label %out

out:                                              ; preds = %if.end140, %while.cond.outer.backedge.out_crit_edge, %while.cond.backedge.out_crit_edge
  %retval1.0 = phi i32 [ 0, %if.end140 ], [ 1, %while.cond.backedge.out_crit_edge ], [ 1, %while.cond.outer.backedge.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %init_connect_result) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_on_ctlr_build) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_on_ctlr_branch) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_on_ctlr_arch_id) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_on_ctlr_srl) #12
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @twl_get_param(ptr nocapture noundef %tw_dev, i32 noundef %request_id, i32 noundef %table_id, i32 noundef %parameter_id, i32 noundef %parameter_size_bytes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 3, i32 %request_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %command = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 82, ptr %command, align 1
  %size = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %size, align 1
  %conv = trunc i32 %request_id to i8
  %request_id2 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %request_id2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %request_id2, align 1
  %byte6_offset = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 6
  %6 = ptrtoint ptr %byte6_offset to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 256, ptr %byte6_offset, align 1
  %arrayidx3 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 1, i32 %request_id
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3, align 4
  %9 = getelementptr inbounds i8, ptr %8, i32 6
  %10 = call ptr @memset(ptr %9, i32 0, i32 506)
  %11 = trunc i32 %table_id to i16
  %conv4 = or i16 %11, -32768
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv4)
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %8, align 1
  %conv6 = trunc i32 %parameter_id to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  %parameter_id7 = getelementptr inbounds %struct.TW_Param_Apache, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %parameter_id7 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %parameter_id7, align 1
  %conv8 = trunc i32 %parameter_size_bytes to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv8)
  %parameter_size_bytes9 = getelementptr inbounds %struct.TW_Param_Apache, ptr %8, i32 0, i32 2
  %17 = ptrtoint ptr %parameter_size_bytes9 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %parameter_size_bytes9, align 1
  %arrayidx10 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 2, i32 %request_id
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %byte8_offset = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 7
  %21 = ptrtoint ptr %byte8_offset to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %byte8_offset, align 1
  %length = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1
  %22 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 131072, ptr %length, align 1
  %arrayidx.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 4, i32 %request_id
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tw_dev, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !405
  tail call void @arm_heavy_mb() #12
  %or.i = or i32 %add.i, 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %28 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tw_dev, align 4
  %add.ptr6.i = getelementptr i8, ptr %29, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %27) #12, !srcloc !393
  %arrayidx7.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 12, i32 %request_id
  %30 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %arrayidx7.i, align 4
  %posted_request_count.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13
  %31 = ptrtoint ptr %posted_request_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %posted_request_count.i, align 4
  %inc.i = add i32 %32, 1
  store i32 %inc.i, ptr %posted_request_count.i, align 4
  %max_posted_request_count.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14
  %33 = ptrtoint ptr %max_posted_request_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_posted_request_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %34)
  %cmp.i = icmp ugt i32 %inc.i, %34
  br i1 %cmp.i, label %if.then.i, label %entry.twl_post_command_packet.exit_crit_edge

entry.twl_post_command_packet.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %twl_post_command_packet.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %max_posted_request_count.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %inc.i, ptr %max_posted_request_count.i, align 4
  br label %twl_post_command_packet.exit

twl_post_command_packet.exit:                     ; preds = %if.then.i, %entry.twl_post_command_packet.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %add.i55 = add i32 %36, 3000
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %twl_post_command_packet.exit
  %37 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tw_dev, align 4
  %add.ptr.i56 = getelementptr i8, ptr %38, i32 200
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #12, !srcloc !396
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !403
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i55, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then, label %if.end5.i

if.end5.i:                                        ; preds = %while.body.i
  %41 = tail call i32 @llvm.bswap.i32(i32 %39) #12
  %shr.i = lshr i32 %41, 16
  %cmp.not.i = icmp eq i32 %shr.i, %request_id
  tail call void @msleep(i32 noundef 50) #12
  br i1 %cmp.not.i, label %if.else27, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.then:                                          ; preds = %while.body.i
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 21
  %42 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host, align 4
  %tobool18.not = icmp eq ptr %43, null
  br i1 %tobool18.not, label %do.end24, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %43, i32 0, i32 17
  %44 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %host_no, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %45, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.153) #15
  br label %if.end29

do.end24:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.153) #15
  br label %if.end29

if.else27:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.TW_Param_Apache, ptr %8, i32 0, i32 4
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %do.end24, %do.end
  %retval1.0 = phi ptr [ null, %do.end ], [ null, %do.end24 ], [ %data, %if.else27 ]
  %46 = ptrtoint ptr %posted_request_count.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %posted_request_count.i, align 4
  %dec = add i32 %47, -1
  store i32 %dec, ptr %posted_request_count.i, align 4
  %48 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %arrayidx7.i, align 4
  ret ptr %retval1.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  %cdb.i29.i = alloca [16 x i8], align 1
  %sglist.i30.i = alloca [1 x %struct.TAG_TW_SG_Entry_ISO], align 8
  %cdb.i.i264 = alloca [16 x i8], align 1
  %sglist.i.i265 = alloca [1 x %struct.TAG_TW_SG_Entry_ISO], align 8
  %cdb.i.i = alloca [16 x i8], align 1
  %sglist.i.i = alloca [1 x %struct.TAG_TW_SG_Entry_ISO], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 21
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #12
  %4 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_instance, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !396
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !406
  %and = and i32 %7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.twl_interrupt_bail_crit_edge, label %if.end

entry.twl_interrupt_bail_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %twl_interrupt_bail

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 22
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.twl_interrupt_bail_crit_edge

if.end.twl_interrupt_bail_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %twl_interrupt_bail

if.end5:                                          ; preds = %if.end
  %and6 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end15_crit_edge, label %if.then8

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then8:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_instance, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 156
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !396
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !407
  %and.i = and i32 %14, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end13.i, label %if.then.i

if.then.i:                                        ; preds = %if.then8
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %do.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %host_no.i, align 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %18, i32 noundef 6, i32 noundef 13, ptr noundef nonnull @.str.166) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !408
  call void @arm_heavy_mb() #12
  %19 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_instance, align 4
  %add.ptr31.i.c = getelementptr i8, ptr %20, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i.c, i32 -1) #12, !srcloc !393
  %21 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_instance, align 4
  %add.ptr35.i.c = getelementptr i8, ptr %22, i32 160
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i.c) #12, !srcloc !396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !409
  br label %do.body

do.end10.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 13, ptr noundef nonnull @.str.166) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !408
  call void @arm_heavy_mb() #12
  %24 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_instance, align 4
  %add.ptr31.i.c292 = getelementptr i8, ptr %25, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i.c292, i32 -1) #12, !srcloc !393
  %26 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_instance, align 4
  %add.ptr35.i.c293 = getelementptr i8, ptr %27, i32 160
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i.c293) #12, !srcloc !396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !409
  br label %do.body

if.end13.i:                                       ; preds = %if.then8
  %and14.i = and i32 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end15.critedge, label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i
  %call17.i = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end15.critedge296

if.then19.i:                                      ; preds = %if.then16.i
  %free_head.i.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 10
  %29 = ptrtoint ptr %free_head.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %free_head.i.i, align 4
  %idxprom.i.i = zext i8 %30 to i32
  %arrayidx.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 9, i32 %idxprom.i.i
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %32 to i32
  %33 = add i8 %30, 1
  store i8 %33, ptr %free_head.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 12, i32 %conv.i.i
  %34 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %arrayidx5.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb.i.i) #12
  %35 = getelementptr inbounds [16 x i8], ptr %cdb.i.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sglist.i.i) #12
  %arrayidx.i50.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 3, i32 %conv.i.i
  %36 = ptrtoint ptr %arrayidx.i50.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i50.i, align 4
  %38 = call ptr @memset(ptr %37, i32 0, i32 1024)
  %39 = getelementptr inbounds i8, ptr %cdb.i.i, i32 1
  %40 = call ptr @memset(ptr %39, i32 0, i32 15)
  %41 = ptrtoint ptr %cdb.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %cdb.i.i, align 1
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -128, ptr %35, align 1
  %43 = ptrtoint ptr %sglist.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 512, ptr %sglist.i.i, align 8
  %arrayidx5.i51.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 2, i32 %conv.i.i
  %44 = ptrtoint ptr %arrayidx5.i51.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx5.i51.i, align 4
  store i32 %45, ptr %sglist.i.i, align 8
  %arrayidx7.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 8, i32 %conv.i.i
  %46 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx7.i.i, align 4
  %call.i.i = call fastcc i32 @twl_scsiop_execute_scsi(ptr noundef %dev_instance, i32 noundef %conv.i.i, ptr noundef nonnull %cdb.i.i, i32 noundef 1, ptr noundef nonnull %sglist.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %twl_aen_read_queue.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then19.i
  %47 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host, align 4
  %tobool9.not.i.i = icmp eq ptr %48, null
  br i1 %tobool9.not.i.i, label %do.end15.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %host_no.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %48, i32 0, i32 17
  %49 = ptrtoint ptr %host_no.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %host_no.i.i, align 4
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %50, i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.170) #15
  br label %if.then22.i

do.end15.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.170) #15
  br label %if.then22.i

twl_aen_read_queue.exit.i:                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sglist.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !408
  call void @arm_heavy_mb() #12
  %51 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_instance, align 4
  %add.ptr31.i.c300 = getelementptr i8, ptr %52, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i.c300, i32 -1) #12, !srcloc !393
  %53 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_instance, align 4
  %add.ptr35.i.c301 = getelementptr i8, ptr %54, i32 160
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i.c301) #12, !srcloc !396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !409
  br label %if.end15

if.then22.i:                                      ; preds = %do.end15.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sglist.i.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i.i) #12
  %free_tail.i.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 11
  %56 = ptrtoint ptr %free_tail.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %free_tail.i.i, align 1
  %idxprom.i53.i = zext i8 %57 to i32
  %arrayidx.i54.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 9, i32 %idxprom.i53.i
  %58 = ptrtoint ptr %arrayidx.i54.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %32, ptr %arrayidx.i54.i, align 1
  %59 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 16, ptr %arrayidx5.i.i, align 4
  %60 = add i8 %57, 1
  store i8 %60, ptr %free_tail.i.i, align 1
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !408
  call void @arm_heavy_mb() #12
  %61 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_instance, align 4
  %add.ptr31.i = getelementptr i8, ptr %62, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 -1) #12, !srcloc !393
  %63 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_instance, align 4
  %add.ptr35.i = getelementptr i8, ptr %64, i32 160
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #12, !srcloc !396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !409
  br label %if.end15

do.body:                                          ; preds = %do.end10.i, %do.end.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !410
  call void @arm_heavy_mb() #12
  %66 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_instance, align 4
  %add.ptr13 = getelementptr i8, ptr %67, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 -1) #12, !srcloc !393
  br label %twl_interrupt_bail

if.end15.critedge:                                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !408
  call void @arm_heavy_mb() #12
  %68 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_instance, align 4
  %add.ptr31.i.c294 = getelementptr i8, ptr %69, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i.c294, i32 -1) #12, !srcloc !393
  %70 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_instance, align 4
  %add.ptr35.i.c295 = getelementptr i8, ptr %71, i32 160
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i.c295) #12, !srcloc !396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !409
  br label %if.end15

if.end15.critedge296:                             ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !408
  call void @arm_heavy_mb() #12
  %73 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_instance, align 4
  %add.ptr31.i.c297 = getelementptr i8, ptr %74, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i.c297, i32 -1) #12, !srcloc !393
  %75 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_instance, align 4
  %add.ptr35.i.c298 = getelementptr i8, ptr %76, i32 160
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i.c298) #12, !srcloc !396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !409
  br label %if.end15

if.end15:                                         ; preds = %if.end15.critedge296, %if.end15.critedge, %if.then22.i, %twl_aen_read_queue.exit.i, %if.end5.if.end15_crit_edge
  %and16304 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16304)
  %tobool17.not305 = icmp eq i32 %and16304, 0
  br i1 %tobool17.not305, label %if.end15.twl_interrupt_bail_crit_edge, label %while.body.lr.ph

if.end15.twl_interrupt_bail_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %twl_interrupt_bail

while.body.lr.ph:                                 ; preds = %if.end15
  %chrdev_request_id = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 26
  %free_tail.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 11
  %posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 13
  %max_posted_request_count.i.i.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 14
  %78 = getelementptr inbounds [16 x i8], ptr %cdb.i29.i, i32 0, i32 4
  %79 = getelementptr inbounds i8, ptr %cdb.i29.i, i32 1
  %80 = getelementptr inbounds [16 x i8], ptr %cdb.i.i264, i32 0, i32 4
  %81 = getelementptr inbounds i8, ptr %cdb.i.i264, i32 1
  %ioctl_wqueue = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 27
  br label %while.body

while.body:                                       ; preds = %if.end165.while.body_crit_edge, %while.body.lr.ph
  %request_id.0306 = phi i32 [ 0, %while.body.lr.ph ], [ %request_id.1, %if.end165.while.body_crit_edge ]
  %82 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_instance, align 4
  %add.ptr21 = getelementptr i8, ptr %83, i32 200
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #12, !srcloc !396
  %85 = call i32 @llvm.bswap.i32(i32 %84)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !411
  %and25 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %while.body.for.body_crit_edge, label %if.else64

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %i.0303 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 6, i32 %i.0303
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %85)
  %cmp28 = icmp eq i32 %87, %85
  br i1 %cmp28, label %if.then29, label %for.inc

if.then29:                                        ; preds = %for.body
  %arrayidx30 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 5, i32 %i.0303
  %88 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx30, align 4
  %request_id31 = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %89, i32 0, i32 3, i32 1
  %90 = ptrtoint ptr %request_id31 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %request_id31, align 1
  %92 = call i16 @llvm.bswap.i16(i16 %91)
  %conv = zext i16 %92 to i32
  %arrayidx32 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 8, i32 %conv
  %93 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx32, align 4
  %cmp33.not = icmp eq ptr %94, null
  br i1 %cmp33.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.then29
  %arrayidx1.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 3, i32 %conv
  %95 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx1.i, align 4
  %error4.i = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %89, i32 0, i32 1, i32 1
  %97 = ptrtoint ptr %error4.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %error4.i, align 1
  %99 = zext i16 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.224)
  switch i16 %98, label %do.end.i250 [
    i16 2561, label %if.then35.twl_fill_sense.exit_crit_edge
    i16 10241, label %if.then35.twl_fill_sense.exit_crit_edge317
    i16 3329, label %if.then35.twl_fill_sense.exit_crit_edge318
  ]

if.then35.twl_fill_sense.exit_crit_edge318:       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %twl_fill_sense.exit

if.then35.twl_fill_sense.exit_crit_edge317:       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %twl_fill_sense.exit

if.then35.twl_fill_sense.exit_crit_edge:          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %twl_fill_sense.exit

do.end.i250:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %err_specific_desc.i = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %89, i32 0, i32 2
  %call.i = call i32 @strlen(ptr noundef %err_specific_desc.i) #17
  %add.i = add i32 %call.i, 1
  %arrayidx3.i = getelementptr %struct.TAG_TW_Command_Apache_Header, ptr %89, i32 0, i32 2, i32 %add.i
  %100 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %host, align 4
  %host_no.i249 = getelementptr inbounds %struct.Scsi_Host, ptr %101, i32 0, i32 17
  %102 = ptrtoint ptr %host_no.i249 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %host_no.i249, align 4
  %conv16.i = zext i16 %98 to i32
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, i32 noundef %103, i32 noundef 3, i32 noundef %conv16.i, ptr noundef %arrayidx3.i, ptr noundef %err_specific_desc.i) #15
  br label %twl_fill_sense.exit

twl_fill_sense.exit:                              ; preds = %do.end.i250, %if.then35.twl_fill_sense.exit_crit_edge, %if.then35.twl_fill_sense.exit_crit_edge317, %if.then35.twl_fill_sense.exit_crit_edge318
  %104 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx32, align 4
  %sense_buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %105, i32 0, i32 21
  %106 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sense_buffer.i, align 4
  %108 = call ptr @memcpy(ptr %107, ptr %89, i32 18)
  %status.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %96, i32 0, i32 1, i32 0, i32 4
  %109 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %status.i, align 1
  %conv35.i = zext i8 %110 to i32
  %shl.i = shl nuw nsw i32 %conv35.i, 1
  %111 = load ptr, ptr %arrayidx32, align 4
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %111, i32 0, i32 24
  %112 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %shl.i, ptr %result.i, align 4
  br label %do.body47

if.else:                                          ; preds = %if.then29
  %113 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %chrdev_request_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %conv)
  %cmp37.not = icmp eq i32 %114, %conv
  br i1 %cmp37.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.else
  %error4.i253 = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %89, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %error4.i253 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %error4.i253, align 1
  %117 = zext i16 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.225)
  switch i16 %116, label %do.end.i262 [
    i16 2561, label %if.then39.do.body47_crit_edge
    i16 10241, label %if.then39.do.body47_crit_edge319
    i16 3329, label %if.then39.do.body47_crit_edge320
  ]

if.then39.do.body47_crit_edge320:                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body47

if.then39.do.body47_crit_edge319:                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body47

if.then39.do.body47_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body47

do.end.i262:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  %err_specific_desc.i254 = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %89, i32 0, i32 2
  %call.i255 = call i32 @strlen(ptr noundef %err_specific_desc.i254) #17
  %add.i256 = add i32 %call.i255, 1
  %arrayidx3.i257 = getelementptr %struct.TAG_TW_Command_Apache_Header, ptr %89, i32 0, i32 2, i32 %add.i256
  %118 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %host, align 4
  %host_no.i259 = getelementptr inbounds %struct.Scsi_Host, ptr %119, i32 0, i32 17
  %120 = ptrtoint ptr %host_no.i259 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %host_no.i259, align 4
  %conv16.i260 = zext i16 %116 to i32
  %call19.i261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, i32 noundef %121, i32 noundef 3, i32 noundef %conv16.i260, ptr noundef %arrayidx3.i257, ptr noundef %err_specific_desc.i254) #15
  br label %do.body47

if.else41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx42 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 3, i32 %conv
  %122 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx42, align 4
  %124 = call ptr @memcpy(ptr %123, ptr %89, i32 128)
  br label %do.body47

do.body47:                                        ; preds = %if.else41, %do.end.i262, %if.then39.do.body47_crit_edge, %if.then39.do.body47_crit_edge319, %if.then39.do.body47_crit_edge320, %twl_fill_sense.exit
  %error.0 = phi i32 [ 1, %twl_fill_sense.exit ], [ 0, %if.else41 ], [ 1, %if.then39.do.body47_crit_edge ], [ 1, %if.then39.do.body47_crit_edge319 ], [ 1, %if.then39.do.body47_crit_edge320 ], [ 1, %do.end.i262 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !412
  call void @arm_heavy_mb() #12
  %125 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev_instance, align 4
  %add.ptr55 = getelementptr i8, ptr %126, i32 204
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 0) #12, !srcloc !393
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !413
  call void @arm_heavy_mb() #12
  %127 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx, align 4
  %129 = call i32 @llvm.bswap.i32(i32 %128)
  %130 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev_instance, align 4
  %add.ptr62 = getelementptr i8, ptr %131, i32 200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %129) #12, !srcloc !393
  br label %if.end67

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0303, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.if.end67_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.if.end67_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.else64:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %shr65 = lshr i32 %85, 16
  br label %if.end67

if.end67:                                         ; preds = %if.else64, %for.inc.if.end67_crit_edge, %do.body47
  %request_id.1 = phi i32 [ %shr65, %if.else64 ], [ %conv, %do.body47 ], [ %request_id.0306, %for.inc.if.end67_crit_edge ]
  %error.1 = phi i32 [ 0, %if.else64 ], [ %error.0, %do.body47 ], [ 0, %for.inc.if.end67_crit_edge ]
  %arrayidx69 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 3, i32 %request_id.1
  %132 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx69, align 4
  %arrayidx70 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 12, i32 %request_id.1
  %134 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %135)
  %cmp71.not = icmp eq i32 %135, 4
  br i1 %cmp71.not, label %if.end67.if.end101_crit_edge, label %if.then73

if.end67.if.end101_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then73:                                        ; preds = %if.end67
  %arrayidx75 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 8, i32 %request_id.1
  %136 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx75, align 4
  %cmp76.not = icmp eq ptr %137, null
  br i1 %cmp76.not, label %if.then73.if.end101_crit_edge, label %if.then78

if.then73.if.end101_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end101

if.then78:                                        ; preds = %if.then73
  %138 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %host, align 4
  %tobool80.not = icmp eq ptr %139, null
  br i1 %tobool80.not, label %do.end91, label %do.end84

do.end84:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %139, i32 0, i32 17
  %140 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %host_no, align 4
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %141, i32 noundef 6, i32 noundef 14, ptr noundef nonnull @.str.157) #15
  br label %do.body95

do.end91:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 14, ptr noundef nonnull @.str.157) #15
  br label %do.body95

do.body95:                                        ; preds = %do.end91, %do.end84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !414
  call void @arm_heavy_mb() #12
  %142 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev_instance, align 4
  %add.ptr99 = getelementptr i8, ptr %143, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 -1) #12, !srcloc !393
  br label %twl_interrupt_bail

if.end101:                                        ; preds = %if.then73.if.end101_crit_edge, %if.end67.if.end101_crit_edge
  %arrayidx103 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 8, i32 %request_id.1
  %144 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx103, align 4
  %cmp104 = icmp eq ptr %145, null
  br i1 %cmp104, label %if.then106, label %if.else135

if.then106:                                       ; preds = %if.end101
  %146 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %chrdev_request_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %request_id.1, i32 %147)
  %cmp108.not = icmp eq i32 %request_id.1, %147
  br i1 %cmp108.not, label %if.else132, label %if.then110

if.then110:                                       ; preds = %if.then106
  %arrayidx.i266 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 1, i32 %request_id.1
  %148 = ptrtoint ptr %arrayidx.i266 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i266, align 4
  %150 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %posted_request_count, align 4
  %dec.i = add i32 %151, -1
  store i32 %dec.i, ptr %posted_request_count, align 4
  %152 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx69, align 4
  %command.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %command.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %command.i, align 1
  %156 = and i8 %155, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %156)
  %cmp.i = icmp eq i8 %156, 19
  br i1 %cmp.i, label %if.then.i271, label %if.end.i

if.then.i271:                                     ; preds = %if.then110
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb.i.i264) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sglist.i.i265) #12
  %157 = call ptr @memset(ptr %153, i32 0, i32 1024)
  %158 = call ptr @memset(ptr %81, i32 0, i32 15)
  %159 = ptrtoint ptr %cdb.i.i264 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 3, ptr %cdb.i.i264, align 1
  %160 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -128, ptr %80, align 1
  %161 = ptrtoint ptr %sglist.i.i265 to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 512, ptr %sglist.i.i265, align 8
  %arrayidx5.i.i267 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 2, i32 %request_id.1
  %162 = ptrtoint ptr %arrayidx5.i.i267 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx5.i.i267, align 4
  store i32 %163, ptr %sglist.i.i265, align 8
  %164 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %arrayidx103, align 4
  %call.i.i269 = call fastcc i32 @twl_scsiop_execute_scsi(ptr noundef %dev_instance, i32 noundef %request_id.1, ptr noundef nonnull %cdb.i.i264, i32 noundef 1, ptr noundef nonnull %sglist.i.i265) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i269)
  %tobool.not.i.i270 = icmp eq i32 %call.i.i269, 0
  br i1 %tobool.not.i.i270, label %twl_aen_read_queue.exit.i280, label %if.then.i.i274

if.then.i.i274:                                   ; preds = %if.then.i271
  %165 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %host, align 4
  %tobool9.not.i.i273 = icmp eq ptr %166, null
  br i1 %tobool9.not.i.i273, label %do.end15.i.i279, label %do.end.i.i277

do.end.i.i277:                                    ; preds = %if.then.i.i274
  call void @__sanitizer_cov_trace_pc() #14
  %host_no.i.i275 = getelementptr inbounds %struct.Scsi_Host, ptr %166, i32 0, i32 17
  %167 = ptrtoint ptr %host_no.i.i275 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %host_no.i.i275, align 4
  %call12.i.i276 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %168, i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.170) #15
  br label %twl_aen_read_queue.exit.thread.i

do.end15.i.i279:                                  ; preds = %if.then.i.i274
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i.i278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.170) #15
  br label %twl_aen_read_queue.exit.thread.i

twl_aen_read_queue.exit.thread.i:                 ; preds = %do.end15.i.i279, %do.end.i.i277
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sglist.i.i265) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i.i264) #12
  br label %twl_aen_complete.exit

twl_aen_read_queue.exit.i280:                     ; preds = %if.then.i271
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sglist.i.i265) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i.i264) #12
  br label %if.end165

if.end.i:                                         ; preds = %if.then110
  %error.i = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %149, i32 0, i32 1, i32 1
  %169 = ptrtoint ptr %error.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 2)
  %170 = load i16, ptr %error.i, align 1
  %171 = call i16 @llvm.bswap.i16(i16 %170) #12
  %172 = zext i16 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.226)
  switch i16 %171, label %sw.default.i [
    i16 0, label %if.end.i.twl_aen_complete.exit_crit_edge
    i16 49, label %sw.bb.i
  ]

if.end.i.twl_aen_complete.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %twl_aen_complete.exit

sw.bb.i:                                          ; preds = %if.end.i
  %173 = call ptr @memset(ptr %153, i32 0, i32 1024)
  %174 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 83, ptr %command.i, align 1
  %conv.i.i281 = trunc i32 %request_id.1 to i8
  %request_id1.i.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %153, i32 0, i32 1, i32 0, i32 2
  %175 = ptrtoint ptr %request_id1.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv.i.i281, ptr %request_id1.i.i, align 1
  %arrayidx2.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 2, i32 %request_id.1
  %176 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx2.i.i, align 4
  %178 = call i32 @llvm.bswap.i32(i32 %177) #12
  %byte8_offset.i.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %153, i32 0, i32 1, i32 0, i32 7
  %179 = ptrtoint ptr %byte8_offset.i.i to i32
  call void @__asan_storeN_noabort(i32 %179, i32 4)
  store i32 %178, ptr %byte8_offset.i.i, align 1
  %length.i.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %153, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1
  %180 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %180, i32 4)
  store i32 131072, ptr %length.i.i, align 1
  %size.i.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %153, i32 0, i32 1, i32 0, i32 1
  %181 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 4, ptr %size.i.i, align 1
  %byte6_offset.i.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %153, i32 0, i32 1, i32 0, i32 6
  %182 = ptrtoint ptr %byte6_offset.i.i to i32
  call void @__asan_storeN_noabort(i32 %182, i32 2)
  store i16 256, ptr %byte6_offset.i.i, align 1
  %183 = ptrtoint ptr %arrayidx.i266 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx.i266, align 4
  %185 = getelementptr inbounds i8, ptr %184, i32 6
  %186 = call ptr @memset(ptr %185, i32 0, i32 506)
  %187 = ptrtoint ptr %184 to i32
  call void @__asan_storeN_noabort(i32 %187, i32 2)
  store i16 2692, ptr %184, align 1
  %parameter_id.i.i = getelementptr inbounds %struct.TW_Param_Apache, ptr %184, i32 0, i32 1
  %188 = ptrtoint ptr %parameter_id.i.i to i32
  call void @__asan_storeN_noabort(i32 %188, i32 2)
  store i16 768, ptr %parameter_id.i.i, align 1
  %parameter_size_bytes.i.i = getelementptr inbounds %struct.TW_Param_Apache, ptr %184, i32 0, i32 2
  %189 = ptrtoint ptr %parameter_size_bytes.i.i to i32
  call void @__asan_storeN_noabort(i32 %189, i32 2)
  store i16 1024, ptr %parameter_size_bytes.i.i, align 1
  %call.i28.i = call i64 @ktime_get_real_seconds() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %190 = load i32, ptr @sys_tz, align 4
  %mul.i.i = mul i32 %190, 60
  %conv10.i.i = sext i32 %mul.i.i to i64
  %sub.i.i = sub i64 %call.i28.i, %conv10.i.i
  %sub11.i.i = add i64 %sub.i.i, -259200
  %conv14.i.i.i = trunc i64 %sub11.i.i to i32
  %191 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3997770567508694361, i64 %sub11.i.i) #18, !srcloc !415
  %192 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3997770567508694361, i64 %sub11.i.i, i64 %191) #18, !srcloc !416
  %div1581.i.i.i = lshr i64 %192, 17
  %conv159.i.i.i = trunc i64 %div1581.i.i.i to i32
  %mul160.neg.i.i.i = mul i32 %conv159.i.i.i, -604800
  %sub161.i.i.i = add i32 %mul160.neg.i.i.i, %conv14.i.i.i
  %193 = call i32 @llvm.bswap.i32(i32 %sub161.i.i.i) #12
  %data.i.i = getelementptr inbounds %struct.TW_Param_Apache, ptr %184, i32 0, i32 4
  %194 = ptrtoint ptr %data.i.i to i32
  call void @__asan_storeN_noabort(i32 %194, i32 4)
  store i32 %193, ptr %data.i.i, align 1
  %195 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr null, ptr %arrayidx103, align 4
  %arrayidx.i.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 4, i32 %request_id.1
  %196 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %197, 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  call void @arm_heavy_mb() #12
  %198 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev_instance, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %199, i32 196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #12, !srcloc !393
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !405
  call void @arm_heavy_mb() #12
  %or.i.i.i = or i32 %add.i.i.i, 1
  %200 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #12
  %201 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev_instance, align 4
  %add.ptr6.i.i.i = getelementptr i8, ptr %202, i32 192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i.i, i32 %200) #12, !srcloc !393
  %203 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 4, ptr %arrayidx70, align 4
  %204 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %posted_request_count, align 4
  %inc.i.i.i = add i32 %205, 1
  store i32 %inc.i.i.i, ptr %posted_request_count, align 4
  %206 = ptrtoint ptr %max_posted_request_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %max_posted_request_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %207)
  %cmp.i.i.i = icmp ugt i32 %inc.i.i.i, %207
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %sw.bb.i.if.end165_crit_edge

sw.bb.i.if.end165_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

if.then.i.i.i:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %208 = ptrtoint ptr %max_posted_request_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %inc.i.i.i, ptr %max_posted_request_count.i.i.i, align 4
  br label %if.end165

sw.default.i:                                     ; preds = %if.end.i
  call fastcc void @twl_aen_queue_event(ptr noundef %dev_instance, ptr noundef %149) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb.i29.i) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sglist.i30.i) #12
  %209 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %arrayidx69, align 4
  %211 = call ptr @memset(ptr %210, i32 0, i32 1024)
  %212 = call ptr @memset(ptr %79, i32 0, i32 15)
  %213 = ptrtoint ptr %cdb.i29.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 3, ptr %cdb.i29.i, align 1
  %214 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 -128, ptr %78, align 1
  %215 = ptrtoint ptr %sglist.i30.i to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 512, ptr %sglist.i30.i, align 8
  %arrayidx5.i32.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 2, i32 %request_id.1
  %216 = ptrtoint ptr %arrayidx5.i32.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx5.i32.i, align 4
  store i32 %217, ptr %sglist.i30.i, align 8
  %218 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr null, ptr %arrayidx103, align 4
  %call.i34.i = call fastcc i32 @twl_scsiop_execute_scsi(ptr noundef %dev_instance, i32 noundef %request_id.1, ptr noundef nonnull %cdb.i29.i, i32 noundef 1, ptr noundef nonnull %sglist.i30.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool.not.i35.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool.not.i35.i, label %twl_aen_read_queue.exit45.i, label %if.then.i38.i

if.then.i38.i:                                    ; preds = %sw.default.i
  %219 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %host, align 4
  %tobool9.not.i37.i = icmp eq ptr %220, null
  br i1 %tobool9.not.i37.i, label %do.end15.i43.i, label %do.end.i41.i

do.end.i41.i:                                     ; preds = %if.then.i38.i
  call void @__sanitizer_cov_trace_pc() #14
  %host_no.i39.i = getelementptr inbounds %struct.Scsi_Host, ptr %220, i32 0, i32 17
  %221 = ptrtoint ptr %host_no.i39.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %host_no.i39.i, align 4
  %call12.i40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %222, i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.170) #15
  br label %twl_aen_read_queue.exit45.thread.i

do.end15.i43.i:                                   ; preds = %if.then.i38.i
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.170) #15
  br label %twl_aen_read_queue.exit45.thread.i

twl_aen_read_queue.exit45.thread.i:               ; preds = %do.end15.i43.i, %do.end.i41.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sglist.i30.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i29.i) #12
  br label %twl_aen_complete.exit

twl_aen_read_queue.exit45.i:                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sglist.i30.i) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i29.i) #12
  br label %if.end165

twl_aen_complete.exit:                            ; preds = %twl_aen_read_queue.exit45.thread.i, %if.end.i.twl_aen_complete.exit_crit_edge, %twl_aen_read_queue.exit.thread.i
  %tobool112.not = phi i1 [ false, %twl_aen_read_queue.exit.thread.i ], [ true, %if.end.i.twl_aen_complete.exit_crit_edge ], [ false, %twl_aen_read_queue.exit45.thread.i ]
  %223 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 8, ptr %arrayidx70, align 4
  %conv.i46.i = trunc i32 %request_id.1 to i8
  %224 = ptrtoint ptr %free_tail.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %free_tail.i, align 1
  %idxprom.i.i284 = zext i8 %225 to i32
  %arrayidx.i47.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 9, i32 %idxprom.i.i284
  %226 = ptrtoint ptr %arrayidx.i47.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %conv.i46.i, ptr %arrayidx.i47.i, align 1
  store i32 16, ptr %arrayidx70, align 4
  %227 = load i8, ptr %free_tail.i, align 1
  %228 = add i8 %227, 1
  store i8 %228, ptr %free_tail.i, align 1
  call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #12
  br i1 %tobool112.not, label %twl_aen_complete.exit.if.end165_crit_edge, label %if.then113

twl_aen_complete.exit.if.end165_crit_edge:        ; preds = %twl_aen_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

if.then113:                                       ; preds = %twl_aen_complete.exit
  %229 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %host, align 4
  %tobool115.not = icmp eq ptr %230, null
  br i1 %tobool115.not, label %do.end127, label %do.end119

do.end119:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #14
  %host_no122 = getelementptr inbounds %struct.Scsi_Host, ptr %230, i32 0, i32 17
  %231 = ptrtoint ptr %host_no122 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %host_no122, align 4
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %232, i32 noundef 6, i32 noundef 15, ptr noundef nonnull @.str.162) #15
  br label %if.end165

do.end127:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #14
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 15, ptr noundef nonnull @.str.162) #15
  br label %if.end165

if.else132:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #14
  %233 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 -1, ptr %chrdev_request_id, align 4
  call void @__wake_up(ptr noundef %ioctl_wqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end165

if.else135:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool138.not = icmp eq i32 %error.1, 0
  br i1 %tobool138.not, label %if.then139, label %if.else135.if.end140_crit_edge

if.else135.if.end140_crit_edge:                   ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end140

if.then139:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #14
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %145, i32 0, i32 24
  %234 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 0, ptr %result, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %if.else135.if.end140_crit_edge
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %145, i32 0, i32 17, i32 0, i32 1
  %235 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %236)
  %cmp142 = icmp ult i32 %236, 2
  br i1 %cmp142, label %land.lhs.true, label %if.end140.if.end162_crit_edge

if.end140.if.end162_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end162

land.lhs.true:                                    ; preds = %if.end140
  %status = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %133, i32 0, i32 1, i32 0, i32 4
  %237 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %cmp145 = icmp eq i8 %238, 0
  br i1 %cmp145, label %if.then147, label %land.lhs.true.if.end162_crit_edge

land.lhs.true.if.end162_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end162

if.then147:                                       ; preds = %land.lhs.true
  %length = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %133, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1, i32 2
  %239 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %239, i32 4)
  %240 = load i32, ptr %length, align 1
  %241 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx103, align 4
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %242, i32 0, i32 17, i32 1
  %243 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %240, i32 %244)
  %cmp153 = icmp ult i32 %240, %244
  br i1 %cmp153, label %if.then155, label %if.then147.if.end162_crit_edge

if.then147.if.end162_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end162

if.then155:                                       ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #14
  %length.i286 = getelementptr inbounds %struct.scsi_cmnd, ptr %145, i32 0, i32 17, i32 1
  %245 = ptrtoint ptr %length.i286 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %length.i286, align 4
  %sub = sub i32 %246, %240
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %145, i32 0, i32 5
  %247 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %sub, ptr %resid_len.i, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then155, %if.then147.if.end162_crit_edge, %land.lhs.true.if.end162_crit_edge, %if.end140.if.end162_crit_edge
  call void @scsi_dma_unmap(ptr noundef nonnull %145) #12
  call void @scsi_done(ptr noundef nonnull %145) #12
  %248 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 8, ptr %arrayidx70, align 4
  %conv.i = trunc i32 %request_id.1 to i8
  %249 = ptrtoint ptr %free_tail.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %free_tail.i, align 1
  %idxprom.i = zext i8 %250 to i32
  %arrayidx.i287 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 9, i32 %idxprom.i
  %251 = ptrtoint ptr %arrayidx.i287 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %conv.i, ptr %arrayidx.i287, align 1
  store i32 16, ptr %arrayidx70, align 4
  %252 = load i8, ptr %free_tail.i, align 1
  %253 = add i8 %252, 1
  store i8 %253, ptr %free_tail.i, align 1
  %254 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %posted_request_count, align 4
  %dec = add i32 %255, -1
  store i32 %dec, ptr %posted_request_count, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.end162, %if.else132, %do.end127, %do.end119, %twl_aen_complete.exit.if.end165_crit_edge, %twl_aen_read_queue.exit45.i, %if.then.i.i.i, %sw.bb.i.if.end165_crit_edge, %twl_aen_read_queue.exit.i280
  %256 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev_instance, align 4
  %add.ptr169 = getelementptr i8, ptr %257, i32 48
  %258 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr169) #12, !srcloc !396
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !417
  %259 = and i32 %258, 134217728
  %tobool17.not = icmp eq i32 %259, 0
  br i1 %tobool17.not, label %if.end165.twl_interrupt_bail_crit_edge, label %if.end165.while.body_crit_edge

if.end165.while.body_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end165.twl_interrupt_bail_crit_edge:           ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  br label %twl_interrupt_bail

twl_interrupt_bail:                               ; preds = %if.end165.twl_interrupt_bail_crit_edge, %do.body95, %if.end15.twl_interrupt_bail_crit_edge, %do.body, %if.end.twl_interrupt_bail_crit_edge, %entry.twl_interrupt_bail_crit_edge
  %260 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %host, align 4
  %host_lock174 = getelementptr inbounds %struct.Scsi_Host, ptr %261, i32 0, i32 4
  %262 = ptrtoint ptr %host_lock174 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %host_lock174, align 4
  call void @_raw_spin_unlock(ptr noundef %263) #12
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @twl_free_device_extension(ptr nocapture noundef readonly %tw_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %command_packet_virt = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 3
  %0 = ptrtoint ptr %command_packet_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %command_packet_virt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tw_pci_dev = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 7
  %2 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tw_pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %command_packet_phys = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 4
  %4 = ptrtoint ptr %command_packet_phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %command_packet_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 262144, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %generic_buffer_virt = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 1
  %6 = ptrtoint ptr %generic_buffer_virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %generic_buffer_virt, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tw_pci_dev7 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 7
  %8 = ptrtoint ptr %tw_pci_dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tw_pci_dev7, align 4
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %generic_buffer_phys = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 2
  %10 = ptrtoint ptr %generic_buffer_phys to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %generic_buffer_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev8, i32 noundef 131072, ptr noundef nonnull %7, i32 noundef %11, i32 noundef 0) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.end.if.end12_crit_edge
  %sense_buffer_virt = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 5
  %12 = ptrtoint ptr %sense_buffer_virt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sense_buffer_virt, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.end12.if.end21_crit_edge, label %if.then15

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %tw_pci_dev16 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 7
  %14 = ptrtoint ptr %tw_pci_dev16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tw_pci_dev16, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %sense_buffer_phys = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 6
  %16 = ptrtoint ptr %sense_buffer_phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sense_buffer_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev17, i32 noundef 32768, ptr noundef nonnull %13, i32 noundef %17, i32 noundef 0) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end12.if.end21_crit_edge
  %event_queue = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 23
  %18 = ptrtoint ptr %event_queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %event_queue, align 4
  tail call void @kfree(ptr noundef %19) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_scsi_queue(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #12
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %flags.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 4, i32 49, i32 12, i32 10
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.twl_scsi_queue_lck.exit_crit_edge

entry.twl_scsi_queue_lck.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %twl_scsi_queue_lck.exit

if.end.i:                                         ; preds = %entry
  %free_head.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 4, i32 5, i32 1, i32 3
  %9 = ptrtoint ptr %free_head.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %free_head.i.i, align 4
  %idxprom.i.i = zext i8 %10 to i32
  %arrayidx.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 9, i32 %idxprom.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %12 to i32
  %13 = add i8 %10, 1
  store i8 %13, ptr %free_head.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 12, i32 %conv.i.i
  %14 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %arrayidx5.i.i, align 4
  %srb.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 3, i32 49, i32 12, i32 14
  %arrayidx.i = getelementptr [256 x ptr], ptr %srb.i, i32 0, i32 %conv.i.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cmd, ptr %arrayidx.i, align 4
  %call2.i = tail call fastcc i32 @twl_scsiop_execute_scsi(ptr noundef %hostdata.i, i32 noundef %conv.i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.twl_scsi_queue_lck.exit_crit_edge, label %if.then4.i

if.end.i.twl_scsi_queue_lck.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %twl_scsi_queue_lck.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %free_tail.i.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 11
  %16 = ptrtoint ptr %free_tail.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %free_tail.i.i, align 1
  %idxprom.i17.i = zext i8 %17 to i32
  %arrayidx.i18.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 9, i32 %idxprom.i17.i
  %18 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %12, ptr %arrayidx.i18.i, align 1
  %19 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %arrayidx5.i.i, align 4
  %20 = add i8 %17, 1
  store i8 %20, ptr %free_tail.i.i, align 1
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %21 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 458752, ptr %result.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #12
  br label %twl_scsi_queue_lck.exit

twl_scsi_queue_lck.exit:                          ; preds = %if.then4.i, %if.end.i.twl_scsi_queue_lck.exit_crit_edge, %entry.twl_scsi_queue_lck.exit_crit_edge
  %retval1.0.i = phi i32 [ 0, %if.then4.i ], [ 0, %if.end.i.twl_scsi_queue_lck.exit_crit_edge ], [ 4181, %entry.twl_scsi_queue_lck.exit_crit_edge ]
  %22 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %call2) #12
  ret i32 %retval1.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_scsi_eh_reset(ptr nocapture noundef readonly %SCpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %num_resets = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 4, i32 49, i32 12, i32 8, i32 3
  %4 = ptrtoint ptr %num_resets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_resets, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %num_resets, align 4
  %6 = load ptr, ptr %device, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 16
  %7 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmnd, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.73, ptr noundef %6, ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 6, i32 noundef 44, i32 noundef %conv) #12
  %ioctl_lock = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %ioctl_lock, i32 noundef 0) #12
  %call = tail call fastcc i32 @twl_reset_device_extension(ptr noundef %hostdata, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.then

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then:                                          ; preds = %entry
  %host3 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 21
  %11 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host3, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %do.end10, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %host_no, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %14, i32 noundef 6, i32 noundef 21, ptr noundef nonnull @.str.76) #15
  br label %out

do.end10:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 21, ptr noundef nonnull @.str.76) #15
  br label %out

out:                                              ; preds = %do.end10, %do.end, %entry.out_crit_edge
  %retval1.0 = phi i32 [ 8195, %do.end ], [ 8195, %do.end10 ], [ 8194, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ioctl_lock) #12
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_slave_configure(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_rq_timeout(ptr noundef %1, i32 noundef 6000) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #0

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @twl_scsi_biosparam(ptr nocapture noundef readnone %sdev, ptr nocapture noundef readnone %bdev, i64 noundef %capacity, ptr nocapture noundef writeonly %geom) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097151, i64 %capacity)
  %cmp = icmp ugt i64 %capacity, 2097151
  %. = select i1 %cmp, i32 63, i32 32
  %.271 = select i1 %cmp, i32 255, i32 64
  %0 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %.271, ptr %geom, align 4
  %arrayidx1 = getelementptr i32, ptr %geom, i32 1
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %., ptr %arrayidx1, align 4
  %mul = select i1 %cmp, i32 16065, i32 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %capacity)
  %cmp170 = icmp ult i64 %capacity, 4294967296
  br i1 %cmp170, label %if.then174, label %if.else180, !prof !418

if.then174:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv175 = trunc i64 %capacity to i32
  %rem176 = urem i32 %conv175, %mul
  br label %if.end184

if.else180:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul, i64 %capacity) #18, !srcloc !419
  %asmresult.i273 = extractvalue { i64, i64 } %2, 0
  %shr.i = lshr i64 %asmresult.i273, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end184

if.end184:                                        ; preds = %if.else180, %if.then174
  %__rem.0 = phi i32 [ %rem176, %if.then174 ], [ %conv.i, %if.else180 ]
  %arrayidx186 = getelementptr i32, ptr %geom, i32 2
  %3 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %__rem.0, ptr %arrayidx186, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl_scsiop_execute_scsi(ptr nocapture noundef %tw_dev, i32 noundef %request_id, ptr noundef readonly %cdb, i32 noundef %use_sg, ptr noundef readonly %sglistarg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 8, i32 %request_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %arrayidx5 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 3, i32 %request_id
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx5, align 4
  %header_desc = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %header_desc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %header_desc, align 1
  %error = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %3, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %error to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 0, ptr %error, align 1
  %severity__reserved = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %3, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %severity__reserved to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %severity__reserved, align 1
  %command = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1
  %status = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %status, align 1
  %8 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %command, align 1
  %tobool9.not = icmp eq ptr %cdb, null
  %cdb11 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 7
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmnd, align 4
  %11 = call ptr @memcpy(ptr %cdb11, ptr %10, i32 16)
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = call ptr @memcpy(ptr %cdb11, ptr %cdb, i32 16)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  br i1 %tobool.not, label %if.else21, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %id = getelementptr inbounds %struct.scsi_device, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 8
  %conv = trunc i32 %16 to i8
  %unit = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %unit, align 1
  %18 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %lun, align 8
  %shl = shl i64 %20, 12
  %and18 = and i32 %request_id, 4095
  %21 = zext i32 %and18 to i64
  %or = or i64 %shl, %21
  %conv20 = trunc i64 %or to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  br label %if.end27

if.else21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %23 = trunc i32 %request_id to i16
  %conv24 = and i16 %23, 4095
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv24)
  %unit26 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %unit26 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %unit26, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.else21, %if.then16
  %.sink = phi i16 [ %24, %if.else21 ], [ %22, %if.then16 ]
  %26 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %.sink, ptr %26, align 1
  %sgl_offset = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %sgl_offset to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 16, ptr %sgl_offset, align 1
  %tobool28.not = icmp eq ptr %sglistarg, null
  br i1 %tobool28.not, label %if.then29, label %for.cond60.preheader

for.cond60.preheader:                             ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_sg)
  %cmp61172 = icmp sgt i32 %use_sg, 0
  br i1 %cmp61172, label %for.body63.lr.ph, label %for.cond60.preheader.for.end80_crit_edge

for.cond60.preheader.for.end80_crit_edge:         ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end80

for.body63.lr.ph:                                 ; preds = %for.cond60.preheader
  %sg_list68 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1, i32 1, i32 1
  %length72 = getelementptr inbounds %struct.TAG_TW_SG_Entry_ISO, ptr %sglistarg, i32 0, i32 1
  %length77 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1, i32 2
  %cmp61.not = icmp eq i32 %use_sg, 1
  br label %for.body63

if.then29:                                        ; preds = %if.end27
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %29 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool30.not = icmp eq i32 %30, 0
  br i1 %tobool30.not, label %if.then29.if.end85_crit_edge, label %if.then31

if.then29.if.end85_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then31:                                        ; preds = %if.then29
  %call32 = tail call i32 @scsi_dma_map(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call32)
  %cmp = icmp slt i32 %call32, 1
  br i1 %cmp, label %if.then31.out_crit_edge, label %for.body.lr.ph

if.then31.out_crit_edge:                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph:                                   ; preds = %if.then31
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %31 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sdb.i, align 4
  %sg_list = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %sg.0175 = phi ptr [ %32, %for.body.lr.ph ], [ %call46, %for.body.for.body_crit_edge ]
  %i.0174 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0175, i32 0, i32 3
  %33 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_address, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %arrayidx41 = getelementptr [92 x %struct.TAG_TW_SG_Entry_ISO], ptr %sg_list, i32 0, i32 %i.0174
  %36 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %arrayidx41, align 1
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0175, i32 0, i32 4
  %37 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_length, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %length = getelementptr [92 x %struct.TAG_TW_SG_Entry_ISO], ptr %sg_list, i32 0, i32 %i.0174, i32 1
  %40 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %length, align 1
  %inc = add nuw nsw i32 %i.0174, 1
  %call46 = tail call ptr @sg_next(ptr noundef %sg.0175) #12
  %exitcond.not = icmp eq i32 %inc, %call32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %device47 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %device47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device47, align 4
  %lun48 = getelementptr inbounds %struct.scsi_device, ptr %42, i32 0, i32 18
  %43 = ptrtoint ptr %lun48 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %lun48, align 8
  %45 = shl i64 %44, 8
  %and50 = and i64 %45, 61440
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  %nents.i170 = getelementptr inbounds %struct.scsi_cmnd, ptr %47, i32 0, i32 17, i32 0, i32 1
  %48 = ptrtoint ptr %nents.i170 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nents.i170, align 4
  %and54 = and i32 %49, 4095
  %conv55 = zext i32 %and54 to i64
  %or56 = or i64 %and50, %conv55
  %conv57 = trunc i64 %or56 to i16
  br label %if.end85.sink.split

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %for.body63.lr.ph
  %50 = ptrtoint ptr %sglistarg to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %sglistarg, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = ptrtoint ptr %sg_list68 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %sg_list68, align 1
  %54 = ptrtoint ptr %length72 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %length72, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %length77 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %56, ptr %length77, align 1
  br i1 %cmp61.not, label %for.body63.for.end80_crit_edge, label %for.body63.for.body63_crit_edge

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body63

for.body63.for.end80_crit_edge:                   ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end80

for.end80:                                        ; preds = %for.body63.for.end80_crit_edge, %for.cond60.preheader.for.end80_crit_edge
  %58 = trunc i32 %use_sg to i16
  %conv83 = and i16 %58, 4095
  br label %if.end85.sink.split

if.end85.sink.split:                              ; preds = %for.end80, %for.end
  %conv57.sink = phi i16 [ %conv57, %for.end ], [ %conv83, %for.end80 ]
  %59 = tail call i16 @llvm.bswap.i16(i16 %conv57.sink)
  %sgl_entries__lunh = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 6
  %60 = ptrtoint ptr %sgl_entries__lunh to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %59, ptr %sgl_entries__lunh, align 1
  br label %if.end85

if.end85:                                         ; preds = %if.end85.sink.split, %if.then29.if.end85_crit_edge
  br i1 %tobool.not, label %if.end85.if.end104_crit_edge, label %if.then87

if.end85.if.end104_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then87:                                        ; preds = %if.end85
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %61 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %length.i, align 4
  %div169 = lshr i32 %62, 9
  %sector_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 18
  %63 = ptrtoint ptr %sector_count to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div169, ptr %sector_count, align 4
  %max_sector_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 19
  %64 = ptrtoint ptr %max_sector_count to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_sector_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div169, i32 %65)
  %cmp90 = icmp ugt i32 %div169, %65
  br i1 %cmp90, label %if.then92, label %if.then87.if.end95_crit_edge

if.then87.if.end95_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then92:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %max_sector_count to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div169, ptr %max_sector_count, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %if.then87.if.end95_crit_edge
  %nents.i171 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %67 = ptrtoint ptr %nents.i171 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nents.i171, align 4
  %sgl_entries = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 16
  %69 = ptrtoint ptr %sgl_entries to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %sgl_entries, align 4
  %max_sgl_entries = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 15
  %70 = ptrtoint ptr %max_sgl_entries to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_sgl_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %71)
  %cmp98 = icmp ugt i32 %68, %71
  br i1 %cmp98, label %if.then100, label %if.end95.if.end104_crit_edge

if.end95.if.end104_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %max_sgl_entries to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %68, ptr %max_sgl_entries, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %if.end95.if.end104_crit_edge, %if.end85.if.end104_crit_edge
  %arrayidx.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 4, i32 %request_id
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %74, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  tail call void @arm_heavy_mb() #12
  %75 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tw_dev, align 4
  %add.ptr.i = getelementptr i8, ptr %76, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !405
  tail call void @arm_heavy_mb() #12
  %or.i = or i32 %add.i, 1
  %77 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %78 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tw_dev, align 4
  %add.ptr6.i = getelementptr i8, ptr %79, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %77) #12, !srcloc !393
  %arrayidx7.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 12, i32 %request_id
  %80 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4, ptr %arrayidx7.i, align 4
  %posted_request_count.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13
  %81 = ptrtoint ptr %posted_request_count.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %posted_request_count.i, align 4
  %inc.i = add i32 %82, 1
  store i32 %inc.i, ptr %posted_request_count.i, align 4
  %max_posted_request_count.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14
  %83 = ptrtoint ptr %max_posted_request_count.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max_posted_request_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %84)
  %cmp.i = icmp ugt i32 %inc.i, %84
  br i1 %cmp.i, label %if.then.i, label %if.end104.out_crit_edge

if.end104.out_crit_edge:                          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.i:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %max_posted_request_count.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %inc.i, ptr %max_posted_request_count.i, align 4
  br label %out

out:                                              ; preds = %if.then.i, %if.end104.out_crit_edge, %if.then31.out_crit_edge
  %retval1.0 = phi i32 [ 1, %if.then31.out_crit_edge ], [ 0, %if.end104.out_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval1.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @twl_post_command_packet(ptr nocapture noundef %tw_dev, i32 noundef %request_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 4, i32 %request_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  tail call void @arm_heavy_mb() #12
  %2 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tw_dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !405
  tail call void @arm_heavy_mb() #12
  %or = or i32 %add, 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tw_dev, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #12, !srcloc !393
  %arrayidx7 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 12, i32 %request_id
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %arrayidx7, align 4
  %posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13
  %8 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %posted_request_count, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %posted_request_count, align 4
  %max_posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14
  %10 = ptrtoint ptr %max_posted_request_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_posted_request_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %11)
  %cmp = icmp ugt i32 %inc, %11
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %max_posted_request_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %max_posted_request_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl_reset_device_extension(ptr noundef %tw_dev, i32 noundef %ioctl_reset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ioctl_reset)
  %tobool.not = icmp eq i32 %ioctl_reset, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 21
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  tail call void @scsi_block_requests(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags2 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !420
  tail call void @arm_heavy_mb() #12
  %2 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tw_dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !421
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tw_dev, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 -1) #12, !srcloc !393
  %host10 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 21
  %6 = ptrtoint ptr %host10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host10, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock, align 4
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.096 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 12, i32 %i.096
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %11, label %if.then29 [
    i32 16, label %for.body.for.inc_crit_edge
    i32 1, label %for.body.for.inc_crit_edge100
    i32 8, label %for.body.for.inc_crit_edge101
  ]

for.body.for.inc_crit_edge101:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.body.for.inc_crit_edge100:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then29:                                        ; preds = %for.body
  %arrayidx30 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 8, i32 %i.096
  %13 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %14, null
  br i1 %tobool31.not, label %if.then29.for.inc_crit_edge, label %if.then32

if.then29.for.inc_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 524288, ptr %result, align 4
  tail call void @scsi_dma_unmap(ptr noundef nonnull %14) #12
  tail call void @scsi_done(ptr noundef nonnull %14) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %if.then29.for.inc_crit_edge, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge100, %for.body.for.inc_crit_edge101
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.for.body38_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.body38_crit_edge:                     ; preds = %for.inc
  br label %for.body38

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %for.inc.for.body38_crit_edge
  %i.198 = phi i32 [ %inc44, %for.body38.for.body38_crit_edge ], [ 0, %for.inc.for.body38_crit_edge ]
  %conv39 = trunc i32 %i.198 to i8
  %arrayidx40 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 9, i32 %i.198
  %16 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv39, ptr %arrayidx40, align 1
  %arrayidx42 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 12, i32 %i.198
  %17 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %arrayidx42, align 4
  %inc44 = add nuw nsw i32 %i.198, 1
  %exitcond99.not = icmp eq i32 %inc44, 256
  br i1 %exitcond99.not, label %for.end45, label %for.body38.for.body38_crit_edge

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body38

for.end45:                                        ; preds = %for.body38
  %free_head = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 10
  %18 = ptrtoint ptr %free_head to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %free_head, align 4
  %free_tail = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 11
  %19 = ptrtoint ptr %free_tail to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %free_tail, align 1
  %posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13
  %20 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %posted_request_count, align 4
  %21 = ptrtoint ptr %host10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host10, align 4
  %host_lock47 = getelementptr inbounds %struct.Scsi_Host, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %host_lock47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host_lock47, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %call11) #12
  %call48 = tail call fastcc i32 @twl_reset_sequence(ptr noundef %tw_dev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.body52, label %for.end45.out_crit_edge

for.end45.out_crit_edge:                          ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body52:                                        ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !422
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tw_dev, align 4
  %add.ptr56 = getelementptr i8, ptr %26, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 -201326593) #12, !srcloc !393
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags2) #12
  %chrdev_request_id = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 26
  %27 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %chrdev_request_id, align 4
  br label %out

out:                                              ; preds = %do.body52, %for.end45.out_crit_edge
  %retval1.0 = phi i32 [ 1, %for.end45.out_crit_edge ], [ 0, %do.body52 ]
  br i1 %tobool.not, label %out.if.end61_crit_edge, label %if.then59

out.if.end61_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then59:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %host10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host10, align 4
  tail call void @scsi_unblock_requests(ptr noundef %29) #12
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %out.if.end61_crit_edge
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_block_requests(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_unblock_requests(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_show_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %host3 = getelementptr i8, ptr %dev, i32 9428
  %0 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host3, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %posted_request_count = getelementptr i8, ptr %dev, i32 9396
  %4 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %posted_request_count, align 4
  %max_posted_request_count = getelementptr i8, ptr %dev, i32 9400
  %6 = ptrtoint ptr %max_posted_request_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_posted_request_count, align 4
  %sgl_entries = getelementptr i8, ptr %dev, i32 9408
  %8 = ptrtoint ptr %sgl_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sgl_entries, align 4
  %max_sgl_entries = getelementptr i8, ptr %dev, i32 9404
  %10 = ptrtoint ptr %max_sgl_entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_sgl_entries, align 4
  %sector_count = getelementptr i8, ptr %dev, i32 9416
  %12 = ptrtoint ptr %sector_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sector_count, align 4
  %max_sector_count = getelementptr i8, ptr %dev, i32 9420
  %14 = ptrtoint ptr %max_sector_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_sector_count, align 4
  %num_resets = getelementptr i8, ptr %dev, i32 9412
  %16 = ptrtoint ptr %num_resets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_resets, align 4
  %aen_count = getelementptr i8, ptr %dev, i32 9424
  %18 = ptrtoint ptr %aen_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %aen_count, align 4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.2, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19)
  %20 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host3, align 4
  %host_lock9 = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %host_lock9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host_lock9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %call4) #12
  ret i32 %call7
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl_initconnection(ptr nocapture noundef %tw_dev, i32 noundef %message_credits, i32 noundef %set_features, i16 noundef zeroext %current_fw_srl, i16 noundef zeroext %current_fw_arch_id, ptr nocapture noundef writeonly %fw_on_ctlr_srl, ptr nocapture noundef writeonly %fw_on_ctlr_arch_id, ptr nocapture noundef writeonly %fw_on_ctlr_branch, ptr nocapture noundef writeonly %fw_on_ctlr_build, ptr nocapture noundef writeonly %init_connect_result) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %command_packet_virt = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 3
  %0 = ptrtoint ptr %command_packet_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %command_packet_virt, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %header_desc = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %header_desc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %header_desc, align 1
  %command = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %command, align 1
  %conv3 = trunc i32 %message_credits to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv3)
  %message_credits4 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 6
  %6 = ptrtoint ptr %message_credits4 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %5, ptr %message_credits4, align 1
  %features = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 7
  %7 = tail call i32 @llvm.bswap.i32(i32 %set_features)
  %8 = ptrtoint ptr %features to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %features, align 1
  %and = and i32 %set_features, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i16 @llvm.bswap.i16(i16 %current_fw_srl)
  %fw_srl = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1
  %10 = ptrtoint ptr %fw_srl to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %fw_srl, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %current_fw_arch_id)
  %fw_arch_id = getelementptr inbounds %struct.TAG_TW_Initconnect, ptr %command, i32 0, i32 9
  %12 = ptrtoint ptr %fw_arch_id to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %fw_arch_id, align 1
  %fw_build = getelementptr inbounds %struct.TAG_TW_Initconnect, ptr %command, i32 0, i32 11
  %13 = ptrtoint ptr %fw_build to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 0, ptr %fw_build, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i8 [ 6, %if.then ], [ 3, %entry.if.end_crit_edge ]
  %14 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %14, align 1
  %arrayidx.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 4, i32 0
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !404
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tw_dev, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #12, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !405
  tail call void @arm_heavy_mb() #12
  %or.i = or i32 %add.i, 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  %21 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tw_dev, align 4
  %add.ptr6.i = getelementptr i8, ptr %22, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %20) #12, !srcloc !393
  %arrayidx7.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 12, i32 0
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %arrayidx7.i, align 4
  %posted_request_count.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13
  %24 = ptrtoint ptr %posted_request_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %posted_request_count.i, align 4
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %posted_request_count.i, align 4
  %max_posted_request_count.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14
  %26 = ptrtoint ptr %max_posted_request_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_posted_request_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %27)
  %cmp.i = icmp ugt i32 %inc.i, %27
  br i1 %cmp.i, label %if.then.i, label %if.end.twl_post_command_packet.exit_crit_edge

if.end.twl_post_command_packet.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %twl_post_command_packet.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %max_posted_request_count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.i, ptr %max_posted_request_count.i, align 4
  br label %twl_post_command_packet.exit

twl_post_command_packet.exit:                     ; preds = %if.then.i, %if.end.twl_post_command_packet.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add.i1 = add i32 %29, 3000
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %twl_post_command_packet.exit
  %30 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tw_dev, align 4
  %add.ptr.i2 = getelementptr i8, ptr %31, i32 200
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #12, !srcloc !396
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !403
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i1, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then11, label %if.end5.i

if.end5.i:                                        ; preds = %while.body.i
  %34 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  %cmp.not.i = icmp ult i32 %34, 65536
  tail call void @msleep(i32 noundef 50) #12
  br i1 %cmp.not.i, label %if.else23, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.then11:                                        ; preds = %while.body.i
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 21
  %35 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host, align 4
  %tobool12.not = icmp eq ptr %36, null
  br i1 %tobool12.not, label %do.end19, label %do.end

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %host_no, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %38, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.132) #15
  br label %if.end32

do.end19:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.132) #15
  br label %if.end32

if.else23:                                        ; preds = %if.end5.i
  br i1 %tobool.not, label %if.else23.if.end32_crit_edge, label %if.then26

if.else23.if.end32_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then26:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #14
  %fw_srl27 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1
  %39 = ptrtoint ptr %fw_srl27 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %fw_srl27, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %42 = ptrtoint ptr %fw_on_ctlr_srl to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %fw_on_ctlr_srl, align 2
  %fw_arch_id28 = getelementptr inbounds %struct.TAG_TW_Initconnect, ptr %command, i32 0, i32 9
  %43 = ptrtoint ptr %fw_arch_id28 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %fw_arch_id28, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %46 = ptrtoint ptr %fw_on_ctlr_arch_id to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %fw_on_ctlr_arch_id, align 2
  %fw_branch29 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %fw_branch29 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %fw_branch29, align 1
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %50 = ptrtoint ptr %fw_on_ctlr_branch to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %fw_on_ctlr_branch, align 2
  %fw_build30 = getelementptr inbounds %struct.TAG_TW_Initconnect, ptr %command, i32 0, i32 11
  %51 = ptrtoint ptr %fw_build30 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %fw_build30, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %54 = ptrtoint ptr %fw_on_ctlr_build to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %fw_on_ctlr_build, align 2
  %result = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %result to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %result, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %init_connect_result to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %init_connect_result, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.else23.if.end32_crit_edge, %do.end19, %do.end
  %retval1.0 = phi i32 [ 1, %do.end ], [ 1, %do.end19 ], [ 0, %if.then26 ], [ 0, %if.else23.if.end32_crit_edge ]
  %59 = ptrtoint ptr %posted_request_count.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %posted_request_count.i, align 4
  %dec = add i32 %60, -1
  store i32 %dec, ptr %posted_request_count.i, align 4
  %61 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %arrayidx7.i, align 4
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @twl_aen_queue_event(ptr nocapture noundef %tw_dev, ptr noundef %header) unnamed_addr #2 align 64 {
entry:
  %host = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %host) #12
  %aen_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 20
  %0 = getelementptr inbounds i8, ptr %host, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 15)
  %2 = ptrtoint ptr %aen_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aen_count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %aen_count, align 4
  %error_index = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %4 = ptrtoint ptr %error_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %error_index, align 4
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 23, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %host to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %host, align 1
  %host2 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 21
  %9 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host2, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %host_no, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %host, ptr noundef nonnull @.str.144, i32 noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %error = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %header, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %error to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %error, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %16 = call ptr @memset(ptr %7, i32 0, i32 112)
  %severity__reserved = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %header, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %severity__reserved to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %severity__reserved, align 1
  %19 = and i8 %18, 7
  %severity = getelementptr inbounds %struct.TAG_TW_Event, ptr %7, i32 0, i32 3
  %20 = ptrtoint ptr %severity to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %severity, align 1
  %call6 = tail call i64 @ktime_get_real_seconds() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %21 = load i32, ptr @sys_tz, align 4
  %mul.neg = mul i32 %21, -60
  %22 = trunc i64 %call6 to i32
  %conv8 = add i32 %mul.neg, %22
  %time_stamp_sec = getelementptr inbounds %struct.TAG_TW_Event, ptr %7, i32 0, i32 1
  %23 = ptrtoint ptr %time_stamp_sec to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %conv8, ptr %time_stamp_sec, align 1
  %aen_code = getelementptr inbounds %struct.TAG_TW_Event, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %aen_code to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %15, ptr %aen_code, align 1
  %retrieved = getelementptr inbounds %struct.TAG_TW_Event, ptr %7, i32 0, i32 4
  %25 = ptrtoint ptr %retrieved to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %retrieved, align 1
  %error_sequence_id = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 25
  %26 = ptrtoint ptr %error_sequence_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %error_sequence_id, align 4
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %7, align 1
  %29 = load i32, ptr %error_sequence_id, align 4
  %inc10 = add i32 %29, 1
  store i32 %inc10, ptr %error_sequence_id, align 4
  %err_specific_desc = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %header, i32 0, i32 2
  %call13 = tail call i32 @strlen(ptr noundef %err_specific_desc) #19
  %add = add i32 %call13, 1
  %arrayidx14 = getelementptr %struct.TAG_TW_Command_Apache_Header, ptr %header, i32 0, i32 2, i32 %add
  %arrayidx16 = getelementptr %struct.TAG_TW_Command_Apache_Header, ptr %header, i32 0, i32 2, i32 97
  %30 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx16, align 1
  %call19 = tail call i32 @strlen(ptr noundef %err_specific_desc) #19
  %conv20 = trunc i32 %call19 to i8
  %parameter_len = getelementptr inbounds %struct.TAG_TW_Event, ptr %7, i32 0, i32 6
  %31 = ptrtoint ptr %parameter_len to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv20, ptr %parameter_len, align 1
  %parameter_data = getelementptr inbounds %struct.TAG_TW_Event, ptr %7, i32 0, i32 7
  %conv25 = and i32 %call19, 255
  %add26 = add nuw nsw i32 %conv25, 1
  %call27 = tail call i32 @strlen(ptr noundef %arrayidx14) #19
  %add28 = add i32 %add26, %call27
  %32 = call ptr @memcpy(ptr %parameter_data, ptr %err_specific_desc, i32 %add28)
  %33 = ptrtoint ptr %severity to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %severity, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %34)
  %cmp.not = icmp eq i8 %34, 4
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end
  %35 = ptrtoint ptr %severity__reserved to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %severity__reserved, align 1
  %37 = and i8 %36, 7
  %38 = add nsw i8 %37, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %38)
  %39 = icmp ult i8 %38, -4
  br i1 %39, label %do.end.twl_aen_severity_lookup.exit_crit_edge, label %if.end.i

do.end.twl_aen_severity_lookup.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %twl_aen_severity_lookup.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %37 to i32
  %arrayidx.i = getelementptr [6 x ptr], ptr @twl_aen_severity_table, i32 0, i32 %conv.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  br label %twl_aen_severity_lookup.exit

twl_aen_severity_lookup.exit:                     ; preds = %if.end.i, %do.end.twl_aen_severity_lookup.exit_crit_edge
  %retval1.0.i = phi ptr [ null, %do.end.twl_aen_severity_lookup.exit_crit_edge ], [ %41, %if.end.i ]
  %conv40 = zext i16 %15 to i32
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull %host, ptr noundef %retval1.0.i, i32 noundef 4, i32 noundef %conv40, ptr noundef %arrayidx14, ptr noundef %err_specific_desc) #15
  br label %if.end45

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %aen_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %aen_count, align 4
  %dec = add i32 %43, -1
  store i32 %dec, ptr %aen_count, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %twl_aen_severity_lookup.exit
  %44 = ptrtoint ptr %error_index to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %error_index, align 4
  %46 = add i8 %45, 1
  store i8 %46, ptr %error_index, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %host) #12
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_sysfs_aen_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %outbuf, i64 noundef %offset, i32 noundef %count) #2 align 64 {
entry:
  %offset.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %offset, ptr %offset.addr, align 8
  %call = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call, label %do.body4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %host = getelementptr i8, ptr %kobj, i32 9428
  %1 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host_lock, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %event_queue = getelementptr i8, ptr %kobj, i32 9436
  %5 = ptrtoint ptr %event_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %event_queue, align 4
  %call10 = call i32 @memory_read_from_buffer(ptr noundef %outbuf, i32 noundef %count, ptr noundef nonnull %offset.addr, ptr noundef %6, i32 noundef 28672) #12
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %host_lock12 = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %host_lock12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host_lock12, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %call7) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.body4 ], [ -13, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_sysfs_compat_info(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %outbuf, i64 noundef %offset, i32 noundef %count) #2 align 64 {
entry:
  %offset.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %offset, ptr %offset.addr, align 8
  %call = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call, label %do.body4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %host = getelementptr i8, ptr %kobj, i32 9428
  %1 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host_lock, align 4
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %tw_compat_info = getelementptr i8, ptr %kobj, i32 10616
  %call10 = call i32 @memory_read_from_buffer(ptr noundef %outbuf, i32 noundef %count, ptr noundef nonnull %offset.addr, ptr noundef %tw_compat_info, i32 noundef 56) #12
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %host_lock12 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %host_lock12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host_lock12, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %call7) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.body4 ], [ -13, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_chrdev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %dma_handle = alloca i32, align 4
  %driver_command = alloca %struct.TAG_TW_Ioctl_Driver_Command, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #12
  %0 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle, align 4, !annotation !391
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %driver_command) #12
  %1 = getelementptr inbounds %struct.TAG_TW_Ioctl_Driver_Command, ptr %driver_command, i32 0, i32 5
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = call ptr @memset(ptr %driver_command, i32 255, i32 24)
  %3 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %6, 1048575
  %arrayidx = getelementptr [32 x ptr], ptr @twl_device_extension_list, i32 0, i32 %and.i
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = inttoptr i32 %arg to ptr
  tail call void @mutex_lock_nested(ptr noundef nonnull @twl_chrdev_mutex, i32 noundef 0) #12
  %ioctl_lock = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 28
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ioctl_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end8.i.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.186, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 24, i32 -1226833920) #18, !srcloc !423
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !418

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %driver_command, i32 noundef 24) #12
  %11 = call i32 @llvm.read_register.i32(metadata !381) #12
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !424
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !425
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !426
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %driver_command, ptr noundef %9, i32 noundef 24) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #12, !srcloc !425
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !426
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !418

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i242 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i242
  %add.ptr.i.i = getelementptr i8, ptr %driver_command, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i242)
  br label %out2

if.end7:                                          ; preds = %if.end.i.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %16)
  %cmp = icmp ugt i32 %16, 524288
  br i1 %cmp, label %if.end7.out2_crit_edge, label %if.end9

if.end7.out2_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %out2

if.end9:                                          ; preds = %if.end7
  %add = add nuw nsw i32 %16, 511
  %and = and i32 %add, -512
  %tw_pci_dev = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 7
  %17 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tw_pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %sub = add nuw nsw i32 %and, 1536
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %sub, ptr noundef nonnull %dma_handle, i32 noundef 3264, i32 noundef 0) #12
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end9.out2_crit_edge, label %if.end15

if.end9.out2_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out2

if.end15:                                         ; preds = %if.end9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %sub18 = add i32 %20, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18)
  %cmp9.i.i = icmp slt i32 %sub18, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end15
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out3_crit_edge, label %if.then27.i.i, !prof !418

land.rhs16.i.i.out3_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out3

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.184, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %out3

if.then.i.i.i:                                    ; preds = %if.end15
  call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %sub18, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.186, i32 noundef 156) #12
  %call.i.i192 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i192, label %if.then.i.i.i.if.end.i.i205_crit_edge, label %land.lhs.true.i.i195

if.then.i.i.i.if.end.i.i205_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i205

land.lhs.true.i.i195:                             ; preds = %if.then.i.i.i
  %21 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %sub18, i32 -1226833920) #18, !srcloc !423
  %asmresult.i.i193 = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i193)
  %cmp.i6.i194 = icmp eq i32 %asmresult.i.i193, 0
  br i1 %cmp.i6.i194, label %if.then.i7.i202, label %land.lhs.true.i.i195.if.end.i.i205_crit_edge, !prof !418

land.lhs.true.i.i195.if.end.i.i205_crit_edge:     ; preds = %land.lhs.true.i.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i205

if.then.i7.i202:                                  ; preds = %land.lhs.true.i.i195
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i196 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef %sub18) #12
  %22 = call i32 @llvm.read_register.i32(metadata !381) #12
  %and.i.i.i.i.i.i197 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i197 to ptr
  %cpu_domain.i.i.i.i.i198 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i198) #11, !srcloc !424
  %and.i.i.i.i199 = and i32 %24, -13
  %or.i.i.i.i200 = or i32 %and.i.i.i.i199, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i200) #12, !srcloc !425
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !426
  %call1.i.i.i201 = call i32 @arm_copy_from_user(ptr noundef nonnull %call.i, ptr noundef %9, i32 noundef %sub18) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #12, !srcloc !425
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !426
  br label %if.end.i.i205

if.end.i.i205:                                    ; preds = %if.then.i7.i202, %land.lhs.true.i.i195.if.end.i.i205_crit_edge, %if.then.i.i.i.if.end.i.i205_crit_edge
  %res.0.i.i203 = phi i32 [ %sub18, %if.then.i.i.i.if.end.i.i205_crit_edge ], [ %call1.i.i.i201, %if.then.i7.i202 ], [ %sub18, %land.lhs.true.i.i195.if.end.i.i205_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i203)
  %tobool4.not.i.i204 = icmp eq i32 %res.0.i.i203, 0
  br i1 %tobool4.not.i.i204, label %if.end22, label %if.then11.i.i208, !prof !418

if.then11.i.i208:                                 ; preds = %if.end.i.i205
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i206 = sub i32 %sub18, %res.0.i.i203
  %add.ptr.i.i207 = getelementptr i8, ptr %call.i, i32 %sub.i.i206
  %25 = call ptr @memset(ptr %add.ptr.i.i207, i32 0, i32 %res.0.i.i203)
  br label %out3

if.end22:                                         ; preds = %if.end.i.i205
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %cmd)
  %cond = icmp eq i32 %cmd, 264
  br i1 %cond, label %do.body23, label %if.end22.out3_crit_edge

if.end22.out3_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %out3

do.body23:                                        ; preds = %if.end22
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 21
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host_lock, align 4
  %call26 = call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #12
  %free_head.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 10
  %30 = ptrtoint ptr %free_head.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %free_head.i, align 4
  %idxprom.i = zext i8 %31 to i32
  %arrayidx.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 9, i32 %idxprom.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %33 to i32
  %34 = add i8 %31, 1
  store i8 %34, ptr %free_head.i, align 4
  %arrayidx5.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 12, i32 %conv.i
  %35 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %arrayidx5.i, align 4
  %arrayidx29 = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 8, i32 %conv.i
  %36 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx29, align 4
  %chrdev_request_id = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 26
  %37 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv.i, ptr %chrdev_request_id, align 4
  %firmware_command = getelementptr inbounds %struct.TAG_TW_Ioctl_Apache, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_handle, align 4
  call fastcc void @twl_load_sgl(ptr noundef %firmware_command, i32 noundef %conv.i, i32 noundef %39, i32 noundef %and)
  %arrayidx30 = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 3, i32 %conv.i
  %40 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx30, align 4
  %42 = call ptr @memcpy(ptr %41, ptr %firmware_command, i32 1024)
  call fastcc void @twl_post_command_packet(ptr noundef %8, i32 noundef %conv.i)
  %43 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host, align 4
  %host_lock34 = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %host_lock34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host_lock34, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %call26) #12
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 789) #12
  %47 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chrdev_request_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp42 = icmp eq i32 %48, -1
  br i1 %cmp42, label %do.body23.if.end95_crit_edge, label %if.then54

do.body23.if.end95_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then54:                                        ; preds = %do.body23
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %49 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %ioctl_wqueue = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 27
  %call56251 = call i32 @prepare_to_wait_event(ptr noundef %ioctl_wqueue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %50 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chrdev_request_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp59252 = icmp eq i32 %51, -1
  br i1 %cmp59252, label %if.then54.if.end82_crit_edge, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  br label %cleanup

if.then54.if.end82_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then54.cleanup_crit_edge
  %__ret55.1253 = phi i32 [ %__ret55.1, %cleanup.cleanup_crit_edge ], [ 6000, %if.then54.cleanup_crit_edge ]
  %call79 = call i32 @schedule_timeout(i32 noundef %__ret55.1253) #12
  %call56 = call i32 @prepare_to_wait_event(ptr noundef %ioctl_wqueue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %52 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chrdev_request_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp59 = icmp eq i32 %53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool65.not = icmp eq i32 %call79, 0
  %54 = select i1 %cmp59, i1 %tobool65.not, i1 false
  %__ret55.1 = select i1 %54, i32 1, i32 %call79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret55.1)
  %tobool72.not = icmp eq i32 %__ret55.1, 0
  %55 = select i1 %cmp59, i1 true, i1 %tobool72.not
  br i1 %55, label %cleanup.if.end82_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.if.end82_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.end82:                                         ; preds = %cleanup.if.end82_crit_edge, %if.then54.if.end82_crit_edge
  call void @finish_wait(ptr noundef %ioctl_wqueue, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  %56 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr = load i32, ptr %chrdev_request_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp85.not = icmp eq i32 %.pr, -1
  br i1 %cmp85.not, label %if.end82.if.end95_crit_edge, label %do.end90

if.end82.if.end95_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

do.end90:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %host, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %58, i32 0, i32 17
  %59 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %host_no, align 4
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, i32 noundef %60, i32 noundef 6, i32 noundef 6, i32 noundef 264) #15
  %call94 = call fastcc i32 @twl_reset_device_extension(ptr noundef %8, i32 noundef 1)
  br label %out3

if.end95:                                         ; preds = %if.end82.if.end95_crit_edge, %do.body23.if.end95_crit_edge
  %61 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx30, align 4
  %63 = call ptr @memcpy(ptr %firmware_command, ptr %62, i32 1024)
  %64 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %host, align 4
  %host_lock107 = getelementptr inbounds %struct.Scsi_Host, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %host_lock107 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %host_lock107, align 4
  %call109 = call i32 @_raw_spin_lock_irqsave(ptr noundef %67) #12
  %posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 13
  %68 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %posted_request_count, align 4
  %dec = add i32 %69, -1
  store i32 %dec, ptr %posted_request_count, align 4
  %free_tail.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 11
  %70 = ptrtoint ptr %free_tail.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %free_tail.i, align 1
  %idxprom.i232 = zext i8 %71 to i32
  %arrayidx.i233 = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 9, i32 %idxprom.i232
  %72 = ptrtoint ptr %arrayidx.i233 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %33, ptr %arrayidx.i233, align 1
  %73 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 16, ptr %arrayidx5.i, align 4
  %74 = add i8 %71, 1
  store i8 %74, ptr %free_tail.i, align 1
  %75 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %host, align 4
  %host_lock116 = getelementptr inbounds %struct.Scsi_Host, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %host_lock116 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %host_lock116, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %78, i32 noundef %call109) #12
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %1, align 4
  %sub119 = add i32 %80, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub119)
  %cmp9.i.i217 = icmp slt i32 %sub119, 0
  br i1 %cmp9.i.i217, label %land.rhs16.i.i220, label %if.then.i.i.i223

land.rhs16.i.i220:                                ; preds = %if.end95
  %.b71.i.i219 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i219, label %land.rhs16.i.i220.out3_crit_edge, label %if.then27.i.i221, !prof !418

land.rhs16.i.i220.out3_crit_edge:                 ; preds = %land.rhs16.i.i220
  call void @__sanitizer_cov_trace_pc() #14
  br label %out3

if.then27.i.i221:                                 ; preds = %land.rhs16.i.i220
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.184, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %out3

if.then.i.i.i223:                                 ; preds = %if.end95
  call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %sub119, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.186, i32 noundef 174) #12
  %call.i.i224 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i224, label %if.then.i.i.i223.copy_to_user.exit_crit_edge, label %if.end.i.i228

if.then.i.i.i223.copy_to_user.exit_crit_edge:     ; preds = %if.then.i.i.i223
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i228:                                    ; preds = %if.then.i.i.i223
  %81 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %sub119, i32 -1226833920) #18, !srcloc !427
  %asmresult.i.i226 = extractvalue { i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i226)
  %cmp.i6.i227 = icmp eq i32 %asmresult.i.i226, 0
  br i1 %cmp.i6.i227, label %if.then2.i.i, label %if.end.i.i228.copy_to_user.exit_crit_edge

if.end.i.i228.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i228
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i228
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i229 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call.i, i32 noundef %sub119) #12
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %call.i, i32 noundef %sub119) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i228.copy_to_user.exit_crit_edge, %if.then.i.i.i223.copy_to_user.exit_crit_edge
  %n.addr.0.i230 = phi i32 [ %sub119, %if.then.i.i.i223.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %sub119, %if.end.i.i228.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i230)
  %cmp121 = icmp eq i32 %n.addr.0.i230, 0
  %spec.select = select i1 %cmp121, i32 0, i32 -14
  br label %out3

out3:                                             ; preds = %copy_to_user.exit, %if.then27.i.i221, %land.rhs16.i.i220.out3_crit_edge, %do.end90, %if.end22.out3_crit_edge, %if.then11.i.i208, %if.then27.i.i, %land.rhs16.i.i.out3_crit_edge
  %retval2.0 = phi i32 [ -5, %do.end90 ], [ -25, %if.end22.out3_crit_edge ], [ -14, %if.then11.i.i208 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out3_crit_edge ], [ -14, %if.then27.i.i221 ], [ -14, %land.rhs16.i.i220.out3_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  %82 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tw_pci_dev, align 4
  %dev126 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %84 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev126, i32 noundef %sub, ptr noundef nonnull %call.i, i32 noundef %85, i32 noundef 0) #12
  br label %out2

out2:                                             ; preds = %out3, %if.end9.out2_crit_edge, %if.end7.out2_crit_edge, %if.then11.i.i
  %retval2.1 = phi i32 [ %retval2.0, %out3 ], [ -22, %if.end7.out2_crit_edge ], [ -12, %if.end9.out2_crit_edge ], [ -14, %if.then11.i.i ]
  call void @mutex_unlock(ptr noundef %ioctl_lock) #12
  br label %out

out:                                              ; preds = %out2, %entry.out_crit_edge
  %retval2.2 = phi i32 [ %retval2.1, %out2 ], [ -4, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @twl_chrdev_mutex) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %driver_command) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #12
  ret i32 %retval2.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_chrdev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %2 = load i32, ptr @twl_device_extension_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %2)
  %cmp.not = icmp ult i32 %and.i, %2
  %spec.select = select i1 %cmp.not, i32 0, i32 -19
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %retval1.0 = phi i32 [ -13, %entry.out_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @twl_load_sgl(ptr nocapture noundef %full_command_packet, i32 noundef %request_id, i32 noundef %dma_handle, i32 noundef %length) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %command = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %full_command_packet, i32 0, i32 1
  %0 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %command, align 1
  %2 = and i8 %1, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %2)
  %cmp = icmp eq i8 %2, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %request_id__lunl = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %full_command_packet, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %request_id__lunl to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %request_id__lunl, align 1
  %5 = and i16 %4, -4096
  %6 = trunc i32 %request_id to i16
  %7 = and i16 %6, 4095
  %conv7 = or i16 %5, %7
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %9 = ptrtoint ptr %request_id__lunl to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %request_id__lunl, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool.not = icmp eq i32 %length, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i32 %dma_handle, 1536
  %10 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %sg_list = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %full_command_packet, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1, i32 1, i32 1
  %11 = ptrtoint ptr %sg_list to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %sg_list, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %length)
  %length16 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %full_command_packet, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %length16 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %length16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %sgl_entries__lunh = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %full_command_packet, i32 0, i32 1, i32 0, i32 6
  %14 = ptrtoint ptr %sgl_entries__lunh to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %sgl_entries__lunh, align 1
  %16 = and i16 %15, -4096
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i16
  %or23 = or i16 %16, %cond
  %17 = tail call i16 @llvm.bswap.i16(i16 %or23)
  %18 = ptrtoint ptr %sgl_entries__lunh to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %sgl_entries__lunh, align 1
  br label %if.end55

if.else:                                          ; preds = %entry
  %conv27 = trunc i32 %request_id to i8
  %request_id28 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %full_command_packet, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %request_id28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv27, ptr %request_id28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %tobool32.not = icmp ult i8 %1, 32
  br i1 %tobool32.not, label %if.else.if.end55_crit_edge, label %if.then33

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %size = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %full_command_packet, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %size, align 1
  %conv34 = zext i8 %21 to i32
  %add.ptr = getelementptr i32, ptr %command, i32 %conv34
  %add.ptr35 = getelementptr i32, ptr %add.ptr, i32 -2
  %sub39 = add i32 %dma_handle, 1536
  %22 = tail call i32 @llvm.bswap.i32(i32 %sub39)
  %23 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %add.ptr35, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %length)
  %length45 = getelementptr inbounds %struct.TAG_TW_SG_Entry_ISO, ptr %add.ptr35, i32 0, i32 1
  %25 = ptrtoint ptr %length45 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %length45, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then33, %if.else.if.end55_crit_edge, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

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
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__twl_shutdown(ptr noundef %tw_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !428
  tail call void @arm_heavy_mb() #12
  %0 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tw_dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #12, !srcloc !393
  %tw_pci_dev = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 7
  %2 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tw_pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef %tw_dev) #12
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 21
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_no, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %9) #15
  %call4 = tail call fastcc i32 @twl_initconnection(ptr noundef %tw_dev, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end20, label %if.then

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %do.end15, label %do.end9

do.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %host_no12 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %host_no12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host_no12, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %13, i32 noundef 6, i32 noundef 22, ptr noundef nonnull @.str.191) #15
  br label %do.body24

do.end15:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 22, ptr noundef nonnull @.str.191) #15
  br label %do.body24

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195) #15
  br label %do.body24

do.body24:                                        ; preds = %do.end20, %do.end15, %do.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !429
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tw_dev, align 4
  %add.ptr27 = getelementptr i8, ptr %15, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 -1) #12, !srcloc !393
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %host1 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 21
  %2 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host1, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, i32 noundef %5) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !430
  tail call void @arm_heavy_mb() #12
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #12, !srcloc !393
  %tw_pci_dev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 49, i32 12, i32 13
  %8 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tw_pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %hostdata) #12
  %call7 = tail call fastcc i32 @twl_initconnection(ptr noundef %hostdata, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %do.end26, label %if.then

if.then:                                          ; preds = %entry
  %12 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host1, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %do.end20, label %do.end13

do.end13:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %host_no16 = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %host_no16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_no16, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %15, i32 noundef 6, i32 noundef 35, ptr noundef nonnull @.str.201) #15
  br label %do.body30

do.end20:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 35, ptr noundef nonnull @.str.201) #15
  br label %do.body30

do.end26:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205) #15
  br label %do.body30

do.body30:                                        ; preds = %do.end26, %do.end20, %do.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !431
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hostdata, align 4
  %add.ptr34 = getelementptr i8, ptr %17, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 -1) #12, !srcloc !393
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %host3 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 21
  %2 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host3, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, i32 noundef %5) #15
  %call5 = tail call i32 @pci_try_set_mwi(ptr noundef %add.ptr) #12
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end21, label %if.then

if.then:                                          ; preds = %entry
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %do.end18, label %do.end12

do.end12:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %host_no14 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %host_no14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_no14, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %7, i32 noundef 6, i32 noundef 37, ptr noundef nonnull @.str.211) #15
  br label %out_disable_device

do.end18:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 37, ptr noundef nonnull @.str.211) #15
  br label %out_disable_device

if.end21:                                         ; preds = %entry
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #12
  %call22 = tail call fastcc i32 @twl_reset_sequence(ptr noundef %hostdata, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.out_disable_device_crit_edge

if.end21.out_disable_device_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_disable_device

if.end25:                                         ; preds = %if.end21
  %irq = getelementptr i8, ptr %dev, i32 932
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call.i79 = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @twl_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %hostdata) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool27.not = icmp eq i32 %call.i79, 0
  br i1 %tobool27.not, label %if.end46, label %if.then28

if.then28:                                        ; preds = %if.end25
  %10 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host3, align 4
  %tobool30.not = icmp eq ptr %11, null
  br i1 %tobool30.not, label %do.end42, label %do.end34

do.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %host_no37 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %host_no37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host_no37, align 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %13, i32 noundef 6, i32 noundef 38, ptr noundef nonnull @.str.216) #15
  br label %out_disable_device

do.end42:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 38, ptr noundef nonnull @.str.216) #15
  br label %out_disable_device

if.end46:                                         ; preds = %if.end25
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 4, i32 49, i32 12, i32 10
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool48.not = icmp eq i32 %16, 0
  br i1 %tobool48.not, label %if.end46.do.body52_crit_edge, label %if.then49

if.end46.do.body52_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body52

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %call50 = tail call i32 @pci_enable_msi(ptr noundef %add.ptr) #12
  br label %do.body52

do.body52:                                        ; preds = %if.then49, %if.end46.do.body52_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !432
  tail call void @arm_heavy_mb() #12
  %17 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hostdata, align 4
  %add.ptr55 = getelementptr i8, ptr %18, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 -201326593) #12, !srcloc !393
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220) #15
  br label %cleanup

out_disable_device:                               ; preds = %do.end42, %do.end34, %if.end21.out_disable_device_crit_edge, %do.end18, %do.end12
  tail call void @scsi_remove_host(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %out_disable_device, %do.body52
  %retval.0 = phi i32 [ -19, %out_disable_device ], [ 0, %do.body52 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 191)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 191)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !97, !99, !100, !101, !102, !103, !105, !106, !107, !108, !109, !111, !113, !114, !115, !116, !117, !119, !121, !122, !124, !125, !126, !127, !128, !129, !131, !132, !134, !136, !138, !140, !142, !143, !144, !145, !146, !147, !149, !150, !151, !152, !153, !155, !156, !157, !158, !159, !161, !162, !163, !164, !165, !167, !168, !170, !171, !173, !174, !175, !176, !177, !178, !180, !181, !182, !183, !184, !185, !187, !188, !189, !190, !191, !193, !194, !195, !196, !197, !199, !200, !201, !202, !203, !205, !206, !207, !208, !209, !211, !212, !213, !214, !215, !216, !218, !219, !220, !221, !222, !223, !225, !226, !227, !228, !229, !231, !233, !234, !235, !236, !238, !240, !242, !244, !246, !248, !250, !251, !252, !253, !254, !255, !257, !258, !259, !260, !261, !262, !264, !265, !266, !267, !268, !270, !271, !272, !273, !274, !275, !277, !278, !279, !280, !281, !282, !284, !285, !286, !287, !289, !290, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !310, !311, !312, !314, !315, !316, !318, !319, !321, !323, !325, !326, !327, !328, !330, !331, !332, !333, !334, !336, !337, !338, !340, !342, !343, !344, !345, !347, !348, !349, !350, !351, !353, !354, !355, !357, !358, !359, !360, !362, !363, !364, !365, !366, !368, !369, !370, !371, !372, !374, !375, !376, !378, !379, !380}
!llvm.named.register.sp = !{!381}
!llvm.module.flags = !{!382, !383, !384, !385, !386, !387, !388, !389}
!llvm.ident = !{!390}

!0 = !{ptr @__UNIQUE_ID_author287, !1, !"__UNIQUE_ID_author287", i1 false, i1 false}
!1 = !{!"../drivers/scsi/3w-sas.c", i32 83, i32 1}
!2 = !{ptr @__UNIQUE_ID_description288, !3, !"__UNIQUE_ID_description288", i1 false, i1 false}
!3 = !{!"../drivers/scsi/3w-sas.c", i32 84, i32 1}
!4 = !{ptr @__UNIQUE_ID_file289, !5, !"__UNIQUE_ID_file289", i1 false, i1 false}
!5 = !{!"../drivers/scsi/3w-sas.c", i32 85, i32 1}
!6 = !{ptr @__UNIQUE_ID_license290, !5, !"__UNIQUE_ID_license290", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version291, !8, !"__UNIQUE_ID_version291", i1 false, i1 false}
!8 = !{!"../drivers/scsi/3w-sas.c", i32 86, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_use_msi, !14, !"__param_use_msi", i1 false, i1 false}
!14 = !{!"../drivers/scsi/3w-sas.c", i32 89, i32 1}
!15 = !{ptr @__UNIQUE_ID_use_msitype292, !14, !"__UNIQUE_ID_use_msitype292", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_use_msi293, !17, !"__UNIQUE_ID_use_msi293", i1 false, i1 false}
!17 = !{!"../drivers/scsi/3w-sas.c", i32 90, i32 1}
!18 = !{ptr @__initcall__kmod_3w_sas__294_1856_twl_init6, !19, !"__initcall__kmod_3w_sas__294_1856_twl_init6", i1 false, i1 false}
!19 = !{!"../drivers/scsi/3w-sas.c", i32 1856, i32 1}
!20 = !{ptr @__exitcall_twl_exit, !21, !"__exitcall_twl_exit", i1 false, i1 false}
!21 = !{!"../drivers/scsi/3w-sas.c", i32 1857, i32 1}
!22 = !{ptr @use_msi, !23, !"use_msi", i1 false, i1 false}
!23 = !{!"../drivers/scsi/3w-sas.c", i32 88, i32 12}
!24 = !{ptr @__param_str_use_msi, !14, !"__param_str_use_msi", i1 false, i1 false}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/3w-sas.c", i32 1834, i32 11}
!27 = !{ptr @twl_driver, !28, !"twl_driver", i1 false, i1 false}
!28 = !{!"../drivers/scsi/3w-sas.c", i32 1833, i32 26}
!29 = !{ptr @twl_pci_tbl, !30, !"twl_pci_tbl", i1 false, i1 false}
!30 = !{!"../drivers/scsi/3w-sas.c", i32 1824, i32 29}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/3w-sas.c", i32 1562, i32 3}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @twl_probe._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @twl_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @twl_probe._entry.8, !32, !"_entry", i1 false, i1 false}
!40 = !{ptr @twl_probe._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @twl_probe._entry.11, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/scsi/3w-sas.c", i32 1571, i32 3}
!43 = !{ptr @twl_probe._entry_ptr.12, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @twl_probe._entry.14, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @twl_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @twl_probe._entry.16, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/scsi/3w-sas.c", i32 1578, i32 3}
!49 = !{ptr @twl_probe._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @twl_probe._entry.19, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @twl_probe._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @twl_probe._entry.21, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/scsi/3w-sas.c", i32 1589, i32 3}
!55 = !{ptr @twl_probe._entry_ptr.22, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @twl_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @twl_probe._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @twl_probe._entry.26, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../drivers/scsi/3w-sas.c", i32 1597, i32 3}
!61 = !{ptr @twl_probe._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @twl_probe._entry.29, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @twl_probe._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @twl_probe._entry.31, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/scsi/3w-sas.c", i32 1604, i32 3}
!67 = !{ptr @twl_probe._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @twl_probe._entry.34, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @twl_probe._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @twl_probe._entry.36, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/scsi/3w-sas.c", i32 1614, i32 3}
!73 = !{ptr @twl_probe._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @twl_probe._entry.39, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @twl_probe._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @twl_probe._entry.41, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/scsi/3w-sas.c", i32 1628, i32 3}
!79 = !{ptr @twl_probe._entry_ptr.42, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @twl_probe._entry.44, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @twl_probe._entry_ptr.45, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/3w-sas.c", i32 1634, i32 2}
!85 = !{ptr @twl_probe._entry.46, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @twl_probe._entry_ptr.48, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/3w-sas.c", i32 1645, i32 2}
!89 = !{ptr @twl_probe._entry.49, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @twl_probe._entry_ptr.51, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @twl_probe._entry.52, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/scsi/3w-sas.c", i32 1660, i32 3}
!93 = !{ptr @twl_probe._entry_ptr.53, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.54, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @twl_probe._entry.55, !92, !"_entry", i1 false, i1 false}
!96 = !{ptr @twl_probe._entry_ptr.56, !92, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @twl_probe._entry.57, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/scsi/3w-sas.c", i32 1675, i32 3}
!99 = !{ptr @twl_probe._entry_ptr.58, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.59, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @twl_probe._entry.60, !98, !"_entry", i1 false, i1 false}
!102 = !{ptr @twl_probe._entry_ptr.61, !98, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @twl_probe._entry.62, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/scsi/3w-sas.c", i32 1677, i32 3}
!105 = !{ptr @twl_probe._entry_ptr.63, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.64, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @twl_probe._entry.65, !104, !"_entry", i1 false, i1 false}
!108 = !{ptr @twl_probe._entry_ptr.66, !104, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.67, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/3w-sas.c", i32 1680, i32 40}
!111 = !{ptr @twl_probe._entry.68, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/scsi/3w-sas.c", i32 1681, i32 4}
!113 = !{ptr @twl_probe._entry_ptr.69, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.70, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @twl_probe._entry.71, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @twl_probe._entry_ptr.72, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @driver_template, !118, !"driver_template", i1 false, i1 false}
!118 = !{!"../drivers/scsi/3w-sas.c", i32 1534, i32 34}
!119 = !{ptr @.str.73, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/3w-sas.c", i32 1435, i32 2}
!121 = !{ptr @.str.74, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.75, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/3w-sas.c", i32 1444, i32 3}
!124 = !{ptr @twl_scsi_eh_reset._entry, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @twl_scsi_eh_reset._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.76, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @twl_scsi_eh_reset._entry.77, !123, !"_entry", i1 false, i1 false}
!128 = !{ptr @twl_scsi_eh_reset._entry_ptr.78, !123, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @twl_host_groups, !130, !"twl_host_groups", i1 false, i1 false}
!130 = !{!"../drivers/scsi/3w-sas.c", i32 206, i32 1}
!131 = !{ptr @twl_host_group, !130, !"twl_host_group", i1 false, i1 false}
!132 = !{ptr @twl_host_attrs, !133, !"twl_host_attrs", i1 false, i1 false}
!133 = !{!"../drivers/scsi/3w-sas.c", i32 201, i32 26}
!134 = !{ptr @.str.79, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/3w-sas.c", i32 194, i32 12}
!136 = !{ptr @twl_host_stats_attr, !137, !"twl_host_stats_attr", i1 false, i1 false}
!137 = !{!"../drivers/scsi/3w-sas.c", i32 192, i32 32}
!138 = !{ptr @.str.80, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/3w-sas.c", i32 169, i32 33}
!140 = !{ptr @.str.81, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/3w-sas.c", i32 1038, i32 3}
!142 = !{ptr @twl_initialize_device_extension._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @twl_initialize_device_extension._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.82, !141, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @twl_initialize_device_extension._entry.83, !141, !"_entry", i1 false, i1 false}
!146 = !{ptr @twl_initialize_device_extension._entry_ptr.84, !141, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @twl_initialize_device_extension._entry.85, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/scsi/3w-sas.c", i32 1044, i32 3}
!149 = !{ptr @twl_initialize_device_extension._entry_ptr.86, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.87, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @twl_initialize_device_extension._entry.88, !148, !"_entry", i1 false, i1 false}
!152 = !{ptr @twl_initialize_device_extension._entry_ptr.89, !148, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @twl_initialize_device_extension._entry.90, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../drivers/scsi/3w-sas.c", i32 1050, i32 3}
!155 = !{ptr @twl_initialize_device_extension._entry_ptr.91, !154, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.92, !154, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @twl_initialize_device_extension._entry.93, !154, !"_entry", i1 false, i1 false}
!158 = !{ptr @twl_initialize_device_extension._entry_ptr.94, !154, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @twl_initialize_device_extension._entry.95, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/scsi/3w-sas.c", i32 1057, i32 3}
!161 = !{ptr @twl_initialize_device_extension._entry_ptr.96, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.97, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @twl_initialize_device_extension._entry.98, !160, !"_entry", i1 false, i1 false}
!164 = !{ptr @twl_initialize_device_extension._entry_ptr.99, !160, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @twl_initialize_device_extension.__key, !166, !"__key", i1 false, i1 false}
!166 = !{!"../drivers/scsi/3w-sas.c", i32 1072, i32 2}
!167 = !{ptr @.str.100, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @twl_initialize_device_extension.__key.101, !169, !"__key", i1 false, i1 false}
!169 = !{!"../drivers/scsi/3w-sas.c", i32 1073, i32 2}
!170 = !{ptr @.str.102, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.103, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/3w-sas.c", i32 652, i32 3}
!173 = !{ptr @twl_allocate_memory._entry, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @twl_allocate_memory._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.104, !172, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @twl_allocate_memory._entry.105, !172, !"_entry", i1 false, i1 false}
!177 = !{ptr @twl_allocate_memory._entry_ptr.106, !172, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.107, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/3w-sas.c", i32 1276, i32 5}
!180 = !{ptr @twl_reset_sequence._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @twl_reset_sequence._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.108, !179, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @twl_reset_sequence._entry.109, !179, !"_entry", i1 false, i1 false}
!184 = !{ptr @twl_reset_sequence._entry_ptr.110, !179, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @twl_reset_sequence._entry.111, !186, !"_entry", i1 false, i1 false}
!186 = !{!"../drivers/scsi/3w-sas.c", i32 1281, i32 5}
!187 = !{ptr @twl_reset_sequence._entry_ptr.112, !186, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.113, !186, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @twl_reset_sequence._entry.114, !186, !"_entry", i1 false, i1 false}
!190 = !{ptr @twl_reset_sequence._entry_ptr.115, !186, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @twl_reset_sequence._entry.116, !192, !"_entry", i1 false, i1 false}
!192 = !{!"../drivers/scsi/3w-sas.c", i32 1294, i32 4}
!193 = !{ptr @twl_reset_sequence._entry_ptr.117, !192, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.118, !192, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @twl_reset_sequence._entry.119, !192, !"_entry", i1 false, i1 false}
!196 = !{ptr @twl_reset_sequence._entry_ptr.120, !192, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @twl_reset_sequence._entry.121, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/scsi/3w-sas.c", i32 1314, i32 4}
!199 = !{ptr @twl_reset_sequence._entry_ptr.122, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.123, !198, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @twl_reset_sequence._entry.124, !198, !"_entry", i1 false, i1 false}
!202 = !{ptr @twl_reset_sequence._entry_ptr.125, !198, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @twl_reset_sequence._entry.126, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/scsi/3w-sas.c", i32 1322, i32 4}
!205 = !{ptr @twl_reset_sequence._entry_ptr.127, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.128, !204, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @twl_reset_sequence._entry.129, !204, !"_entry", i1 false, i1 false}
!208 = !{ptr @twl_reset_sequence._entry_ptr.130, !204, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.131, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/3w-sas.c", i32 1013, i32 3}
!211 = !{ptr @twl_initconnection._entry, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @twl_initconnection._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.132, !210, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @twl_initconnection._entry.133, !210, !"_entry", i1 false, i1 false}
!215 = !{ptr @twl_initconnection._entry_ptr.134, !210, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.135, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/3w-sas.c", i32 590, i32 4}
!218 = !{ptr @twl_aen_drain_queue._entry, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @twl_aen_drain_queue._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.136, !217, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @twl_aen_drain_queue._entry.137, !217, !"_entry", i1 false, i1 false}
!222 = !{ptr @twl_aen_drain_queue._entry_ptr.138, !217, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @twl_aen_drain_queue._entry.139, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/scsi/3w-sas.c", i32 596, i32 4}
!225 = !{ptr @twl_aen_drain_queue._entry_ptr.140, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.141, !224, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @twl_aen_drain_queue._entry.142, !224, !"_entry", i1 false, i1 false}
!228 = !{ptr @twl_aen_drain_queue._entry_ptr.143, !224, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.144, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/3w-sas.c", i32 238, i32 17}
!231 = !{ptr @.str.145, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/3w-sas.c", i32 259, i32 3}
!233 = !{ptr @.str.146, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @twl_aen_queue_event._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @twl_aen_queue_event._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.147, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/3w-sas.h", i32 51, i32 2}
!238 = !{ptr @.str.148, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/3w-sas.h", i32 51, i32 10}
!240 = !{ptr @.str.149, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/3w-sas.h", i32 51, i32 19}
!242 = !{ptr @.str.150, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/3w-sas.h", i32 51, i32 30}
!244 = !{ptr @.str.151, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/3w-sas.h", i32 51, i32 38}
!246 = !{ptr @twl_aen_severity_table, !247, !"twl_aen_severity_table", i1 false, i1 false}
!247 = !{!"../drivers/scsi/3w-sas.h", i32 49, i32 14}
!248 = !{ptr @.str.152, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/3w-sas.c", i32 957, i32 3}
!250 = !{ptr @twl_get_param._entry, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @twl_get_param._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.153, !249, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @twl_get_param._entry.154, !249, !"_entry", i1 false, i1 false}
!254 = !{ptr @twl_get_param._entry_ptr.155, !249, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.156, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/3w-sas.c", i32 1192, i32 5}
!257 = !{ptr @twl_interrupt._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @twl_interrupt._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.157, !256, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @twl_interrupt._entry.158, !256, !"_entry", i1 false, i1 false}
!261 = !{ptr @twl_interrupt._entry_ptr.159, !256, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @twl_interrupt._entry.160, !263, !"_entry", i1 false, i1 false}
!263 = !{!"../drivers/scsi/3w-sas.c", i32 1202, i32 6}
!264 = !{ptr @twl_interrupt._entry_ptr.161, !263, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.162, !263, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @twl_interrupt._entry.163, !263, !"_entry", i1 false, i1 false}
!267 = !{ptr @twl_interrupt._entry_ptr.164, !263, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.165, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/3w-sas.c", i32 1091, i32 3}
!270 = !{ptr @twl_handle_attention_interrupt._entry, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @twl_handle_attention_interrupt._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.166, !269, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @twl_handle_attention_interrupt._entry.167, !269, !"_entry", i1 false, i1 false}
!274 = !{ptr @twl_handle_attention_interrupt._entry_ptr.168, !269, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.169, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/3w-sas.c", i32 399, i32 3}
!277 = !{ptr @twl_aen_read_queue._entry, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @twl_aen_read_queue._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.170, !276, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @twl_aen_read_queue._entry.171, !276, !"_entry", i1 false, i1 false}
!281 = !{ptr @twl_aen_read_queue._entry_ptr.172, !276, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.173, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/3w-sas.c", i32 876, i32 4}
!284 = !{ptr @.str.174, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @twl_fill_sense._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @twl_fill_sense._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.176, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/3w-sas.c", i32 883, i32 4}
!289 = !{ptr @twl_fill_sense._entry.175, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @twl_fill_sense._entry_ptr.177, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @twl_device_extension_list, !292, !"twl_device_extension_list", i1 false, i1 false}
!292 = !{!"../drivers/scsi/3w-sas.c", i32 77, i32 29}
!293 = !{ptr @twl_device_extension_count, !294, !"twl_device_extension_count", i1 false, i1 false}
!294 = !{!"../drivers/scsi/3w-sas.c", i32 78, i32 21}
!295 = !{ptr @.str.178, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/scsi/3w-sas.c", i32 121, i32 11}
!297 = !{ptr @twl_sysfs_aen_read_attr, !298, !"twl_sysfs_aen_read_attr", i1 false, i1 false}
!298 = !{!"../drivers/scsi/3w-sas.c", i32 119, i32 29}
!299 = !{ptr @.str.179, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/scsi/3w-sas.c", i32 152, i32 11}
!301 = !{ptr @twl_sysfs_compat_info_attr, !302, !"twl_sysfs_compat_info_attr", i1 false, i1 false}
!302 = !{!"../drivers/scsi/3w-sas.c", i32 150, i32 29}
!303 = !{ptr @twl_major, !304, !"twl_major", i1 false, i1 false}
!304 = !{!"../drivers/scsi/3w-sas.c", i32 79, i32 12}
!305 = !{ptr @twl_fops, !306, !"twl_fops", i1 false, i1 false}
!306 = !{!"../drivers/scsi/3w-sas.c", i32 850, i32 37}
!307 = !{ptr @.str.180, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/scsi/3w-sas.c", i32 794, i32 4}
!309 = !{ptr @.str.181, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @twl_chrdev_ioctl._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @twl_chrdev_ioctl._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.182, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/3w-sas.c", i32 76, i32 8}
!314 = !{ptr @.str.183, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @twl_chrdev_mutex, !313, !"twl_chrdev_mutex", i1 false, i1 false}
!316 = distinct !{null, !317, !"__already_done", i1 false, i1 false}
!317 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!318 = !{ptr @.str.184, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.185, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!321 = !{ptr @.str.186, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!323 = !{ptr @.str.187, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/3w-sas.c", i32 1496, i32 2}
!325 = !{ptr @.str.188, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @__twl_shutdown._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @__twl_shutdown._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @__twl_shutdown._entry.189, !329, !"_entry", i1 false, i1 false}
!329 = !{!"../drivers/scsi/3w-sas.c", i32 1500, i32 3}
!330 = !{ptr @__twl_shutdown._entry_ptr.190, !329, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.191, !329, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @__twl_shutdown._entry.192, !329, !"_entry", i1 false, i1 false}
!333 = !{ptr @__twl_shutdown._entry_ptr.193, !329, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.195, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/3w-sas.c", i32 1502, i32 3}
!336 = !{ptr @__twl_shutdown._entry.194, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @__twl_shutdown._entry_ptr.196, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @twl_pm_ops, !339, !"twl_pm_ops", i1 false, i1 false}
!339 = !{!"../drivers/scsi/3w-sas.c", i32 1830, i32 8}
!340 = !{ptr @.str.197, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/3w-sas.c", i32 1756, i32 2}
!342 = !{ptr @.str.198, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @twl_suspend._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @twl_suspend._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @twl_suspend._entry.199, !346, !"_entry", i1 false, i1 false}
!346 = !{!"../drivers/scsi/3w-sas.c", i32 1764, i32 3}
!347 = !{ptr @twl_suspend._entry_ptr.200, !346, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.201, !346, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @twl_suspend._entry.202, !346, !"_entry", i1 false, i1 false}
!350 = !{ptr @twl_suspend._entry_ptr.203, !346, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.205, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/scsi/3w-sas.c", i32 1766, i32 3}
!353 = !{ptr @twl_suspend._entry.204, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @twl_suspend._entry_ptr.206, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.207, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/scsi/3w-sas.c", i32 1783, i32 2}
!357 = !{ptr @.str.208, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @twl_resume._entry, !356, !"_entry", i1 false, i1 false}
!359 = !{ptr @twl_resume._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @twl_resume._entry.209, !361, !"_entry", i1 false, i1 false}
!361 = !{!"../drivers/scsi/3w-sas.c", i32 1788, i32 3}
!362 = !{ptr @twl_resume._entry_ptr.210, !361, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.211, !361, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @twl_resume._entry.212, !361, !"_entry", i1 false, i1 false}
!365 = !{ptr @twl_resume._entry_ptr.213, !361, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @twl_resume._entry.214, !367, !"_entry", i1 false, i1 false}
!367 = !{!"../drivers/scsi/3w-sas.c", i32 1802, i32 3}
!368 = !{ptr @twl_resume._entry_ptr.215, !367, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.216, !367, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @twl_resume._entry.217, !367, !"_entry", i1 false, i1 false}
!371 = !{ptr @twl_resume._entry_ptr.218, !367, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.220, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/scsi/3w-sas.c", i32 1814, i32 2}
!374 = !{ptr @twl_resume._entry.219, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @twl_resume._entry_ptr.221, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.222, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/scsi/3w-sas.c", i32 1845, i32 2}
!378 = !{ptr @.str.223, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @twl_init._entry, !377, !"_entry", i1 false, i1 false}
!380 = !{ptr @twl_init._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!381 = !{!"sp"}
!382 = !{i32 1, !"wchar_size", i32 2}
!383 = !{i32 1, !"min_enum_size", i32 4}
!384 = !{i32 8, !"branch-target-enforcement", i32 0}
!385 = !{i32 8, !"sign-return-address", i32 0}
!386 = !{i32 8, !"sign-return-address-all", i32 0}
!387 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!388 = !{i32 7, !"uwtable", i32 1}
!389 = !{i32 7, !"frame-pointer", i32 2}
!390 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!391 = !{!"auto-init"}
!392 = !{i64 2155234026}
!393 = !{i64 4676305}
!394 = !{i64 2155249583}
!395 = !{i64 2155167323}
!396 = !{i64 4676723}
!397 = !{i64 2155166104}
!398 = !{i64 2155166534}
!399 = !{i64 2155178938}
!400 = !{i64 2155179625}
!401 = !{i64 2155180621}
!402 = !{i64 2155181322}
!403 = !{i64 2155098544}
!404 = !{i64 2155087351}
!405 = !{i64 2155088007}
!406 = !{i64 2155152671}
!407 = !{i64 2155146934}
!408 = !{i64 2155151064}
!409 = !{i64 2155151972}
!410 = !{i64 2155153052}
!411 = !{i64 2155155362}
!412 = !{i64 2155155977}
!413 = !{i64 2155156664}
!414 = !{i64 2155160954}
!415 = !{i64 756943, i64 756970}
!416 = !{i64 757453, i64 757480, i64 757514, i64 757535}
!417 = !{i64 2155165635}
!418 = !{!"branch_weights", i32 2000, i32 1}
!419 = !{i64 2148242774, i64 2148243054, i64 2148243388, i64 2148243722}
!420 = !{i64 2155189039}
!421 = !{i64 2155189605}
!422 = !{i64 2155190612}
!423 = !{i64 2153944342, i64 2153944367}
!424 = !{i64 6439897}
!425 = !{i64 6440094}
!426 = !{i64 2153925327}
!427 = !{i64 2153945023, i64 2153945048}
!428 = !{i64 2155201133}
!429 = !{i64 2155208196}
!430 = !{i64 2155262564}
!431 = !{i64 2155268212}
!432 = !{i64 2155278633}
