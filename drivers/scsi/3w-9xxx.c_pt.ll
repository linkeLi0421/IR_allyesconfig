; ModuleID = '/llk/IR_all_yes/drivers/scsi/3w-9xxx.c_pt.bc'
source_filename = "../drivers/scsi/3w-9xxx.c"
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.TAG_twa_message_type = type { i32, ptr }
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
%struct.TAG_TW_Device_Extension = type { ptr, [256 x ptr], [256 x i32], [256 x ptr], [256 x i32], ptr, [256 x ptr], [256 x i8], i8, i8, [256 x i8], i8, i8, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [256 x ptr], i8, i8, i32, i32, i64, i32, %struct.wait_queue_head, %struct.mutex, i8, %struct.TAG_TW_Compatibility_Info }
%struct.TAG_TW_Compatibility_Info = type { [32 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.TAG_TW_SG_Entry = type { i32, i32 }
%struct.TAG_TW_Command_Apache_Header = type { [18 x i8], %struct.anon.84, [98 x i8], %struct.anon.85 }
%struct.anon.84 = type { [4 x i8], i16, i8, i8 }
%struct.anon.85 = type { i8, [2 x i8], i8 }
%struct.TAG_TW_Command_Full = type { %struct.TAG_TW_Command_Apache_Header, %union.anon.86 }
%union.anon.86 = type { %struct.TAG_TW_Command_Apache }
%struct.TAG_TW_Command_Apache = type { i8, i8, i16, i8, i8, i16, [16 x i8], [109 x %struct.TAG_TW_SG_Entry], [0 x i8] }
%struct.TW_Param_Apache = type { i16, i16, i16, i16, [0 x i8] }
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
%struct.TAG_TW_Ioctl_Apache = type { %struct.TAG_TW_Ioctl_Driver_Command, [488 x i8], %struct.TAG_TW_Command_Full, [0 x i8] }

@__UNIQUE_ID_author287 = internal constant [19 x i8] c"3w_9xxx.author=LSI\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [63 x i8] c"3w_9xxx.description=3ware 9000 Storage Controller Linux Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [34 x i8] c"3w_9xxx.file=drivers/scsi/3w-9xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [20 x i8] c"3w_9xxx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version291 = internal constant [28 x i8] c"3w_9xxx.version=2.26.02.014\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3w_9xxx\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"2.26.02.014\00", [20 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_use_msi = internal constant [16 x i8] c"3w_9xxx.use_msi\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@use_msi = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_use_msi = internal constant %struct.kernel_param { ptr @__param_str_use_msi, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @use_msi } }, section "__param", align 4
@__UNIQUE_ID_use_msitype292 = internal constant [29 x i8] c"3w_9xxx.parmtype=use_msi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_use_msi293 = internal constant [66 x i8] c"3w_9xxx.parm=use_msi:Use Message Signaled Interrupts.  Default: 0\00", section ".modinfo", align 1
@twa_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @twa_pci_tbl, ptr @twa_probe, ptr @twa_remove, ptr null, ptr null, ptr @twa_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twa_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_3w_9xxx__294_2303_twa_init6 = internal global ptr @twa_init, section ".initcall6.init", align 4
@__exitcall_twa_exit = internal global ptr @twa_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3w-9xxx\00", [24 x i8] zeroinitializer }, align 32
@twa_pci_tbl = internal global { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 5057, i32 4098, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5057, i32 4099, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5057, i32 4100, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5057, i32 4101, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@twa_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @twa_suspend, ptr @twa_resume, ptr @twa_suspend, ptr @twa_resume, ptr @twa_suspend, ptr @twa_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@twa_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\0143w-9xxx: scsi%d: ERROR: (0x%02X:0x%04X): %s.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"twa_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/scsi/3w-9xxx.c\00", [41 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr = internal global ptr @twa_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable pci device\00", [36 x i8] zeroinitializer }, align 32
@twa_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 2008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\0143w-9xxx: ERROR: (0x%02X:0x%04X): %s.\0A\00", [56 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.10 = internal global ptr @twa_probe._entry.8, section ".printk_index", align 4
@twa_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.12 = internal global ptr @twa_probe._entry.11, section ".printk_index", align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to set dma mask\00", [41 x i8] zeroinitializer }, align 32
@twa_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 2019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.15 = internal global ptr @twa_probe._entry.14, section ".printk_index", align 4
@driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @twa_scsi_queue, ptr null, ptr null, ptr @.str.58, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twa_scsi_eh_reset, ptr null, ptr @twa_slave_configure, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr @twa_scsi_biosparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 254, i32 -1, i16 109, i16 0, i32 256, i32 0, i32 0, i32 0, i16 254, i8 0, i32 0, i8 20, i32 0, ptr @twa_host_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@twa_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.17 = internal global ptr @twa_probe._entry.16, section ".printk_index", align 4
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to allocate memory for device extension\00", [49 x i8] zeroinitializer }, align 32
@twa_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 2026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.20 = internal global ptr @twa_probe._entry.19, section ".printk_index", align 4
@twa_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.22 = internal global ptr @twa_probe._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to initialize device extension\00", [58 x i8] zeroinitializer }, align 32
@twa_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 2037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.25 = internal global ptr @twa_probe._entry.24, section ".printk_index", align 4
@twa_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.27 = internal global ptr @twa_probe._entry.26, section ".printk_index", align 4
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get mem region\00", [39 x i8] zeroinitializer }, align 32
@twa_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 2045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.30 = internal global ptr @twa_probe._entry.29, section ".printk_index", align 4
@twa_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.32 = internal global ptr @twa_probe._entry.31, section ".printk_index", align 4
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Failed to ioremap\00", [46 x i8] zeroinitializer }, align 32
@twa_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 2060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.35 = internal global ptr @twa_probe._entry.34, section ".printk_index", align 4
@twa_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.37 = internal global ptr @twa_probe._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scsi add host failed\00", [43 x i8] zeroinitializer }, align 32
@twa_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 2090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.40 = internal global ptr @twa_probe._entry.39, section ".printk_index", align 4
@twa_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.5, ptr @.str.6, i32 2097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\0143w-9xxx: scsi%d: Found a 3ware 9000 Storage Controller at 0x%lx, IRQ: %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.43 = internal global ptr @twa_probe._entry.41, section ".printk_index", align 4
@twa_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.5, ptr @.str.6, i32 2105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\0143w-9xxx: scsi%d: Firmware %s, BIOS %s, Ports: %d.\0A\00", [43 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.46 = internal global ptr @twa_probe._entry.44, section ".printk_index", align 4
@twa_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.48 = internal global ptr @twa_probe._entry.47, section ".printk_index", align 4
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error requesting IRQ\00", [43 x i8] zeroinitializer }, align 32
@twa_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 2115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.51 = internal global ptr @twa_probe._entry.50, section ".printk_index", align 4
@twa_device_extension_list = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@twa_device_extension_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@twa_major = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"twa\00", [28 x i8] zeroinitializer }, align 32
@twa_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twa_chrdev_ioctl, ptr null, ptr null, i32 0, ptr @twa_chrdev_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@twa_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.54 = internal global ptr @twa_probe._entry.53, section ".printk_index", align 4
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register character device\00", [60 x i8] zeroinitializer }, align 32
@twa_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.6, i32 2130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_probe._entry_ptr.57 = internal global ptr @twa_probe._entry.56, section ".printk_index", align 4
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"3ware 9000 Storage Controller\00", [34 x i8] zeroinitializer }, align 32
@twa_host_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @twa_host_group, ptr null], [24 x i8] zeroinitializer }, align 32
@twa_scsiop_execute_scsi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.59, ptr @.str.6, i32 1862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"twa_scsiop_execute_scsi\00", [40 x i8] zeroinitializer }, align 32
@twa_scsiop_execute_scsi._entry_ptr = internal global ptr @twa_scsiop_execute_scsi._entry, section ".printk_index", align 4
@.str.60 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Found unaligned sgl address during execute scsi\00", [48 x i8] zeroinitializer }, align 32
@twa_scsiop_execute_scsi._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.59, ptr @.str.6, i32 1862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_scsiop_execute_scsi._entry_ptr.62 = internal global ptr @twa_scsiop_execute_scsi._entry.61, section ".printk_index", align 4
@twa_scsiop_execute_scsi._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.59, ptr @.str.6, i32 1875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_scsiop_execute_scsi._entry_ptr.64 = internal global ptr @twa_scsiop_execute_scsi._entry.63, section ".printk_index", align 4
@.str.65 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Found unaligned sgl address during internal post\00", [47 x i8] zeroinitializer }, align 32
@twa_scsiop_execute_scsi._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.59, ptr @.str.6, i32 1875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_scsiop_execute_scsi._entry_ptr.67 = internal global ptr @twa_scsiop_execute_scsi._entry.66, section ".printk_index", align 4
@twa_decode_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.68, ptr @.str.6, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"twa_decode_bits\00", [16 x i8] zeroinitializer }, align 32
@twa_decode_bits._entry_ptr = internal global ptr @twa_decode_bits._entry, section ".printk_index", align 4
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCI Parity Error: clearing\00", [37 x i8] zeroinitializer }, align 32
@twa_decode_bits._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.68, ptr @.str.6, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_decode_bits._entry_ptr.71 = internal global ptr @twa_decode_bits._entry.70, section ".printk_index", align 4
@twa_decode_bits._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.68, ptr @.str.6, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_decode_bits._entry_ptr.73 = internal global ptr @twa_decode_bits._entry.72, section ".printk_index", align 4
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCI Abort: clearing\00", [44 x i8] zeroinitializer }, align 32
@twa_decode_bits._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.68, ptr @.str.6, i32 919, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_decode_bits._entry_ptr.76 = internal global ptr @twa_decode_bits._entry.75, section ".printk_index", align 4
@twa_decode_bits._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.68, ptr @.str.6, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_decode_bits._entry_ptr.78 = internal global ptr @twa_decode_bits._entry.77, section ".printk_index", align 4
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Controller Queue Error: clearing\00", [63 x i8] zeroinitializer }, align 32
@twa_decode_bits._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.68, ptr @.str.6, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_decode_bits._entry_ptr.81 = internal global ptr @twa_decode_bits._entry.80, section ".printk_index", align 4
@twa_decode_bits._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.68, ptr @.str.6, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_decode_bits._entry_ptr.83 = internal global ptr @twa_decode_bits._entry.82, section ".printk_index", align 4
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Microcontroller Error: clearing\00", [32 x i8] zeroinitializer }, align 32
@twa_decode_bits._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.68, ptr @.str.6, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_decode_bits._entry_ptr.86 = internal global ptr @twa_decode_bits._entry.85, section ".printk_index", align 4
@.str.87 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"WARNING: (0x%02X:0x%04X): Command (0x%x) timed out, resetting card.\0A\00", [59 x i8] zeroinitializer }, align 32
@twa_scsi_eh_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.89, ptr @.str.6, i32 1738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"twa_scsi_eh_reset\00", [46 x i8] zeroinitializer }, align 32
@twa_scsi_eh_reset._entry_ptr = internal global ptr @twa_scsi_eh_reset._entry, section ".printk_index", align 4
@.str.90 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Controller reset failed during scsi host reset\00", [49 x i8] zeroinitializer }, align 32
@twa_scsi_eh_reset._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.89, ptr @.str.6, i32 1738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_scsi_eh_reset._entry_ptr.92 = internal global ptr @twa_scsi_eh_reset._entry.91, section ".printk_index", align 4
@twa_host_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @twa_host_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@twa_host_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @twa_host_stats_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@twa_host_stats_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @twa_show_stats, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [338 x i8], [78 x i8] } { [338 x i8] c"3w-9xxx Driver version: %s\0ACurrent commands posted:   %4d\0AMax commands posted:       %4d\0ACurrent pending commands:  %4d\0AMax pending commands:      %4d\0ALast sgl length:           %4d\0AMax sgl length:            %4d\0ALast sector count:         %4d\0AMax sector count:          %4d\0ASCSI Host Resets:          %4d\0AAEN's:                     %4d\0A\00", [78 x i8] zeroinitializer }, align 32
@twa_initialize_device_extension._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.95, ptr @.str.6, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"twa_initialize_device_extension\00", [32 x i8] zeroinitializer }, align 32
@twa_initialize_device_extension._entry_ptr = internal global ptr @twa_initialize_device_extension._entry, section ".printk_index", align 4
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Command packet memory allocation failed\00", [56 x i8] zeroinitializer }, align 32
@twa_initialize_device_extension._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.95, ptr @.str.6, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_initialize_device_extension._entry_ptr.98 = internal global ptr @twa_initialize_device_extension._entry.97, section ".printk_index", align 4
@twa_initialize_device_extension._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.95, ptr @.str.6, i32 1182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_initialize_device_extension._entry_ptr.100 = internal global ptr @twa_initialize_device_extension._entry.99, section ".printk_index", align 4
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Generic memory allocation failed\00", [63 x i8] zeroinitializer }, align 32
@twa_initialize_device_extension._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.95, ptr @.str.6, i32 1182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_initialize_device_extension._entry_ptr.103 = internal global ptr @twa_initialize_device_extension._entry.102, section ".printk_index", align 4
@twa_initialize_device_extension._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.95, ptr @.str.6, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_initialize_device_extension._entry_ptr.105 = internal global ptr @twa_initialize_device_extension._entry.104, section ".printk_index", align 4
@.str.106 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Event info memory allocation failed\00", [60 x i8] zeroinitializer }, align 32
@twa_initialize_device_extension._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.95, ptr @.str.6, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_initialize_device_extension._entry_ptr.108 = internal global ptr @twa_initialize_device_extension._entry.107, section ".printk_index", align 4
@twa_initialize_device_extension.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&tw_dev->ioctl_lock\00", [44 x i8] zeroinitializer }, align 32
@twa_initialize_device_extension.__key.110 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&tw_dev->ioctl_wqueue\00", [42 x i8] zeroinitializer }, align 32
@twa_allocate_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.112, ptr @.str.6, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twa_allocate_memory\00", [44 x i8] zeroinitializer }, align 32
@twa_allocate_memory._entry_ptr = internal global ptr @twa_allocate_memory._entry, section ".printk_index", align 4
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Memory allocation failed\00", [39 x i8] zeroinitializer }, align 32
@twa_allocate_memory._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.112, ptr @.str.6, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_allocate_memory._entry_ptr.115 = internal global ptr @twa_allocate_memory._entry.114, section ".printk_index", align 4
@twa_allocate_memory._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.112, ptr @.str.6, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_allocate_memory._entry_ptr.117 = internal global ptr @twa_allocate_memory._entry.116, section ".printk_index", align 4
@.str.118 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to allocate correctly aligned memory\00", [52 x i8] zeroinitializer }, align 32
@twa_allocate_memory._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.112, ptr @.str.6, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_allocate_memory._entry_ptr.120 = internal global ptr @twa_allocate_memory._entry.119, section ".printk_index", align 4
@twa_reset_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.121, ptr @.str.6, i32 1643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twa_reset_sequence\00", [45 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry_ptr = internal global ptr @twa_reset_sequence._entry, section ".printk_index", align 4
@.str.122 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Response queue (large) empty failed during reset sequence\00", [38 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.121, ptr @.str.6, i32 1643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry_ptr.124 = internal global ptr @twa_reset_sequence._entry.123, section ".printk_index", align 4
@twa_reset_sequence._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.121, ptr @.str.6, i32 1652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry_ptr.126 = internal global ptr @twa_reset_sequence._entry.125, section ".printk_index", align 4
@.str.127 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Microcontroller not ready during reset sequence\00", [48 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.121, ptr @.str.6, i32 1652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry_ptr.129 = internal global ptr @twa_reset_sequence._entry.128, section ".printk_index", align 4
@twa_reset_sequence._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.121, ptr @.str.6, i32 1660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry_ptr.131 = internal global ptr @twa_reset_sequence._entry.130, section ".printk_index", align 4
@.str.132 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Response queue empty failed during reset sequence\00", [46 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.121, ptr @.str.6, i32 1660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry_ptr.134 = internal global ptr @twa_reset_sequence._entry.133, section ".printk_index", align 4
@twa_reset_sequence._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.121, ptr @.str.6, i32 1670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry_ptr.136 = internal global ptr @twa_reset_sequence._entry.135, section ".printk_index", align 4
@.str.137 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Compatibility check failed during reset sequence\00", [47 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.121, ptr @.str.6, i32 1670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry_ptr.139 = internal global ptr @twa_reset_sequence._entry.138, section ".printk_index", align 4
@twa_reset_sequence._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.121, ptr @.str.6, i32 1683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry_ptr.141 = internal global ptr @twa_reset_sequence._entry.140, section ".printk_index", align 4
@.str.142 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"AEN drain failed during reset sequence\00", [57 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.121, ptr @.str.6, i32 1683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_reset_sequence._entry_ptr.144 = internal global ptr @twa_reset_sequence._entry.143, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@twa_check_srl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.145, ptr @.str.6, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twa_check_srl\00", [18 x i8] zeroinitializer }, align 32
@twa_check_srl._entry_ptr = internal global ptr @twa_check_srl._entry, section ".printk_index", align 4
@.str.146 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Initconnection failed while checking SRL\00", [55 x i8] zeroinitializer }, align 32
@twa_check_srl._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.145, ptr @.str.6, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_check_srl._entry_ptr.148 = internal global ptr @twa_check_srl._entry.147, section ".printk_index", align 4
@twa_check_srl._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.145, ptr @.str.6, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_check_srl._entry_ptr.150 = internal global ptr @twa_check_srl._entry.149, section ".printk_index", align 4
@.str.151 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Initconnection (base mode) failed while checking SRL\00", [43 x i8] zeroinitializer }, align 32
@twa_check_srl._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.145, ptr @.str.6, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_check_srl._entry_ptr.153 = internal global ptr @twa_check_srl._entry.152, section ".printk_index", align 4
@twa_check_srl._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.145, ptr @.str.6, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_check_srl._entry_ptr.155 = internal global ptr @twa_check_srl._entry.154, section ".printk_index", align 4
@.str.156 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Firmware and driver incompatibility: please upgrade firmware\00", [35 x i8] zeroinitializer }, align 32
@twa_check_srl._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.145, ptr @.str.6, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_check_srl._entry_ptr.158 = internal global ptr @twa_check_srl._entry.157, section ".printk_index", align 4
@twa_check_srl._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.145, ptr @.str.6, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_check_srl._entry_ptr.160 = internal global ptr @twa_check_srl._entry.159, section ".printk_index", align 4
@.str.161 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Firmware and driver incompatibility: please upgrade driver\00", [37 x i8] zeroinitializer }, align 32
@twa_check_srl._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.145, ptr @.str.6, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_check_srl._entry_ptr.163 = internal global ptr @twa_check_srl._entry.162, section ".printk_index", align 4
@twa_initconnection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.164, ptr @.str.6, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twa_initconnection\00", [45 x i8] zeroinitializer }, align 32
@twa_initconnection._entry_ptr = internal global ptr @twa_initconnection._entry, section ".printk_index", align 4
@.str.165 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No valid response during init connection\00", [55 x i8] zeroinitializer }, align 32
@twa_initconnection._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.164, ptr @.str.6, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_initconnection._entry_ptr.167 = internal global ptr @twa_initconnection._entry.166, section ".printk_index", align 4
@twa_poll_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.168, ptr @.str.6, i32 1429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"twa_poll_response\00", [46 x i8] zeroinitializer }, align 32
@twa_poll_response._entry_ptr = internal global ptr @twa_poll_response._entry, section ".printk_index", align 4
@.str.169 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Found unexpected request id while polling for response\00", [41 x i8] zeroinitializer }, align 32
@twa_poll_response._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.168, ptr @.str.6, i32 1429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_poll_response._entry_ptr.171 = internal global ptr @twa_poll_response._entry.170, section ".printk_index", align 4
@twa_fill_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.6, i32 1010, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\0143w-9xxx: scsi%d: ERROR: (0x%02X:0x%04X): %s:%s.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"twa_fill_sense\00", [17 x i8] zeroinitializer }, align 32
@twa_fill_sense._entry_ptr = internal global ptr @twa_fill_sense._entry, section ".printk_index", align 4
@twa_error_table = internal constant { [113 x %struct.TAG_twa_message_type], [248 x i8] } { [113 x %struct.TAG_twa_message_type] [%struct.TAG_twa_message_type { i32 256, ptr @.str.177 }, %struct.TAG_twa_message_type { i32 257, ptr @.str.178 }, %struct.TAG_twa_message_type { i32 258, ptr @.str.179 }, %struct.TAG_twa_message_type { i32 259, ptr @.str.180 }, %struct.TAG_twa_message_type { i32 260, ptr @.str.181 }, %struct.TAG_twa_message_type { i32 261, ptr @.str.182 }, %struct.TAG_twa_message_type { i32 262, ptr @.str.183 }, %struct.TAG_twa_message_type { i32 263, ptr @.str.184 }, %struct.TAG_twa_message_type { i32 264, ptr @.str.185 }, %struct.TAG_twa_message_type { i32 265, ptr @.str.186 }, %struct.TAG_twa_message_type { i32 266, ptr @.str.187 }, %struct.TAG_twa_message_type { i32 267, ptr @.str.188 }, %struct.TAG_twa_message_type { i32 268, ptr @.str.189 }, %struct.TAG_twa_message_type { i32 269, ptr @.str.190 }, %struct.TAG_twa_message_type { i32 270, ptr @.str.191 }, %struct.TAG_twa_message_type { i32 271, ptr @.str.192 }, %struct.TAG_twa_message_type { i32 272, ptr @.str.193 }, %struct.TAG_twa_message_type { i32 273, ptr @.str.194 }, %struct.TAG_twa_message_type { i32 274, ptr @.str.195 }, %struct.TAG_twa_message_type { i32 275, ptr @.str.196 }, %struct.TAG_twa_message_type { i32 276, ptr @.str.197 }, %struct.TAG_twa_message_type { i32 277, ptr @.str.198 }, %struct.TAG_twa_message_type { i32 288, ptr @.str.199 }, %struct.TAG_twa_message_type { i32 289, ptr @.str.200 }, %struct.TAG_twa_message_type { i32 290, ptr @.str.201 }, %struct.TAG_twa_message_type { i32 291, ptr @.str.202 }, %struct.TAG_twa_message_type { i32 292, ptr @.str.203 }, %struct.TAG_twa_message_type { i32 293, ptr @.str.204 }, %struct.TAG_twa_message_type { i32 294, ptr @.str.205 }, %struct.TAG_twa_message_type { i32 295, ptr @.str.201 }, %struct.TAG_twa_message_type { i32 296, ptr @.str.206 }, %struct.TAG_twa_message_type { i32 297, ptr @.str.207 }, %struct.TAG_twa_message_type { i32 304, ptr @.str.208 }, %struct.TAG_twa_message_type { i32 305, ptr @.str.209 }, %struct.TAG_twa_message_type { i32 306, ptr @.str.210 }, %struct.TAG_twa_message_type { i32 307, ptr @.str.211 }, %struct.TAG_twa_message_type { i32 320, ptr @.str.212 }, %struct.TAG_twa_message_type { i32 336, ptr @.str.213 }, %struct.TAG_twa_message_type { i32 337, ptr @.str.214 }, %struct.TAG_twa_message_type { i32 338, ptr @.str.215 }, %struct.TAG_twa_message_type { i32 339, ptr @.str.216 }, %struct.TAG_twa_message_type { i32 352, ptr @.str.217 }, %struct.TAG_twa_message_type { i32 353, ptr @.str.218 }, %struct.TAG_twa_message_type { i32 354, ptr @.str.219 }, %struct.TAG_twa_message_type { i32 368, ptr @.str.220 }, %struct.TAG_twa_message_type { i32 369, ptr @.str.221 }, %struct.TAG_twa_message_type { i32 384, ptr @.str.222 }, %struct.TAG_twa_message_type { i32 385, ptr @.str.223 }, %struct.TAG_twa_message_type { i32 386, ptr @.str.224 }, %struct.TAG_twa_message_type { i32 387, ptr @.str.225 }, %struct.TAG_twa_message_type { i32 388, ptr @.str.226 }, %struct.TAG_twa_message_type { i32 389, ptr @.str.227 }, %struct.TAG_twa_message_type { i32 416, ptr @.str.228 }, %struct.TAG_twa_message_type { i32 448, ptr @.str.229 }, %struct.TAG_twa_message_type { i32 449, ptr @.str.230 }, %struct.TAG_twa_message_type { i32 450, ptr @.str.231 }, %struct.TAG_twa_message_type { i32 451, ptr @.str.232 }, %struct.TAG_twa_message_type { i32 452, ptr @.str.233 }, %struct.TAG_twa_message_type { i32 453, ptr @.str.234 }, %struct.TAG_twa_message_type { i32 454, ptr @.str.235 }, %struct.TAG_twa_message_type { i32 455, ptr @.str.236 }, %struct.TAG_twa_message_type { i32 456, ptr @.str.237 }, %struct.TAG_twa_message_type { i32 458, ptr @.str.238 }, %struct.TAG_twa_message_type { i32 464, ptr @.str.239 }, %struct.TAG_twa_message_type { i32 465, ptr @.str.240 }, %struct.TAG_twa_message_type { i32 466, ptr @.str.241 }, %struct.TAG_twa_message_type { i32 467, ptr @.str.242 }, %struct.TAG_twa_message_type { i32 512, ptr @.str.243 }, %struct.TAG_twa_message_type { i32 513, ptr @.str.244 }, %struct.TAG_twa_message_type { i32 514, ptr @.str.245 }, %struct.TAG_twa_message_type { i32 515, ptr @.str.246 }, %struct.TAG_twa_message_type { i32 516, ptr @.str.247 }, %struct.TAG_twa_message_type { i32 517, ptr @.str.248 }, %struct.TAG_twa_message_type { i32 518, ptr @.str.249 }, %struct.TAG_twa_message_type { i32 519, ptr @.str.250 }, %struct.TAG_twa_message_type { i32 520, ptr @.str.251 }, %struct.TAG_twa_message_type { i32 521, ptr @.str.252 }, %struct.TAG_twa_message_type { i32 522, ptr @.str.253 }, %struct.TAG_twa_message_type { i32 528, ptr @.str.244 }, %struct.TAG_twa_message_type { i32 529, ptr @.str.254 }, %struct.TAG_twa_message_type { i32 530, ptr @.str.255 }, %struct.TAG_twa_message_type { i32 531, ptr @.str.256 }, %struct.TAG_twa_message_type { i32 532, ptr @.str.257 }, %struct.TAG_twa_message_type { i32 533, ptr @.str.258 }, %struct.TAG_twa_message_type { i32 534, ptr @.str.259 }, %struct.TAG_twa_message_type { i32 535, ptr @.str.260 }, %struct.TAG_twa_message_type { i32 560, ptr @.str.261 }, %struct.TAG_twa_message_type { i32 561, ptr @.str.262 }, %struct.TAG_twa_message_type { i32 562, ptr @.str.263 }, %struct.TAG_twa_message_type { i32 563, ptr @.str.264 }, %struct.TAG_twa_message_type { i32 564, ptr @.str.265 }, %struct.TAG_twa_message_type { i32 565, ptr @.str.266 }, %struct.TAG_twa_message_type { i32 576, ptr @.str.267 }, %struct.TAG_twa_message_type { i32 577, ptr @.str.268 }, %struct.TAG_twa_message_type { i32 578, ptr @.str.269 }, %struct.TAG_twa_message_type { i32 579, ptr @.str.270 }, %struct.TAG_twa_message_type { i32 584, ptr @.str.271 }, %struct.TAG_twa_message_type { i32 585, ptr @.str.272 }, %struct.TAG_twa_message_type { i32 592, ptr @.str.273 }, %struct.TAG_twa_message_type { i32 593, ptr @.str.274 }, %struct.TAG_twa_message_type { i32 594, ptr @.str.275 }, %struct.TAG_twa_message_type { i32 595, ptr @.str.276 }, %struct.TAG_twa_message_type { i32 596, ptr @.str.277 }, %struct.TAG_twa_message_type { i32 597, ptr @.str.278 }, %struct.TAG_twa_message_type { i32 598, ptr @.str.279 }, %struct.TAG_twa_message_type { i32 599, ptr @.str.280 }, %struct.TAG_twa_message_type { i32 600, ptr @.str.281 }, %struct.TAG_twa_message_type { i32 601, ptr @.str.282 }, %struct.TAG_twa_message_type { i32 602, ptr @.str.283 }, %struct.TAG_twa_message_type { i32 603, ptr @.str.284 }, %struct.TAG_twa_message_type { i32 604, ptr @.str.285 }, %struct.TAG_twa_message_type { i32 608, ptr @.str.286 }, %struct.TAG_twa_message_type { i32 -1, ptr null }], [248 x i8] zeroinitializer }, align 32
@twa_fill_sense._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.6, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\0143w-9xxx: ERROR: (0x%02X:0x%04X): %s:%s.\0A\00", [53 x i8] zeroinitializer }, align 32
@twa_fill_sense._entry_ptr.176 = internal global ptr @twa_fill_sense._entry.174, section ".printk_index", align 4
@.str.177 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SGL entry contains zero data\00", [35 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid command opcode\00", [41 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SGL entry has unaligned address\00", [32 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SGL size does not match command\00", [32 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SGL entry has illegal length\00", [35 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Command packet is not aligned\00", [34 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid request ID\00", [45 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Duplicate request ID\00", [43 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ID not locked\00", [18 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LBA out of range\00", [47 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Logical unit not supported\00", [37 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Parameter table does not exist\00", [33 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Parameter index does not exist\00", [33 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid field in CDB\00", [43 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Specified port has invalid drive\00", [63 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Parameter item size mismatch\00", [35 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed memory allocation\00", [39 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Memory request too large\00", [39 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Out of memory segments\00", [41 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid address to deallocate\00", [34 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Out of memory\00", [18 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Out of heap\00", [20 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Double degrade\00", [17 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Drive not degraded\00", [45 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Reconstruct error\00", [46 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Replace not accepted\00", [43 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Replace drive capacity too small\00", [63 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Sector count not allowed\00", [39 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"No spares left\00", [17 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unit is offline\00", [16 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot update status to DCB\00", [36 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid stripe handle\00", [42 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Handle that was not locked\00", [37 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Handle that was not empty\00", [38 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Handle has different owner\00", [37 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IPR has parent\00", [17 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Illegal Pbuf address alignment\00", [33 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Illegal Pbuf transfer length\00", [35 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Illegal Sbuf address alignment\00", [33 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Illegal Sbuf transfer length\00", [35 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Command packet too large\00", [39 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SGL exceeds maximum length\00", [37 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SGL has too many entries\00", [39 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Insufficient resources for rebuilder\00", [59 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Verify error (data != parity)\00", [34 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Requested segment not in directory of this DCB\00", [49 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DCB segment has unsupported version\00", [60 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DCB segment has checksum error\00", [33 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DCB support (settings) segment invalid\00", [57 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DCB UDB (unit descriptor block) segment invalid\00", [48 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"DCB GUID (globally unique identifier) segment invalid\00", [42 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Could not clear Sbuf\00", [43 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flash identify failed\00", [42 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Flash out of bounds\00", [44 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Flash verify error\00", [45 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Flash file object not found\00", [36 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Flash file already present\00", [37 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Flash file system full\00", [41 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Flash file not present\00", [41 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Flash file size error\00", [42 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bad flash file checksum\00", [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Corrupt flash file system detected\00", [61 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid field in parameter list\00", [32 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Parameter list length error\00", [36 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Parameter item is not changeable\00", [63 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Parameter item is not saveable\00", [33 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"UDMA CRC error\00", [17 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Internal CRC error\00", [45 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Data ECC error\00", [17 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADP level 1 error\00", [46 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Port timeout\00", [19 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Drive power on reset\00", [43 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADP level 2 error\00", [46 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Soft reset failed\00", [46 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Drive not ready\00", [16 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unclassified port error\00", [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Drive aborted command\00", [42 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCI abort error\00", [16 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PCI parity error\00", [47 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Port handler error\00", [45 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Token interrupt count error\00", [36 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timeout waiting for PCI transfer\00", [63 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Corrected buffer ECC\00", [43 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Uncorrected buffer ECC\00", [41 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unsupported command during flash recovery\00", [54 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Next image buffer expected\00", [37 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Binary image architecture incompatible\00", [57 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Binary image has no signature\00", [34 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Binary image has bad checksum\00", [34 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Image downloaded overflowed buffer\00", [61 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"I2C device not found\00", [43 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"I2C transaction aborted\00", [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"SO-DIMM parameter(s) incompatible using defaults\00", [47 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SO-DIMM unsupported\00", [44 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPI transfer status error\00", [38 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SPI transfer timeout error\00", [37 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid unit descriptor size in CreateUnit\00", [53 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unit descriptor size exceeds data buffer in CreateUnit\00", [41 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid value in CreateUnit descriptor\00", [57 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Inadequate disk space to support descriptor in CreateUnit\00", [38 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unable to create data channel for this unit descriptor\00", [41 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"CreateUnit descriptor specifies a drive already in use\00", [41 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Unable to write configuration to all disks during CreateUnit\00", [35 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"CreateUnit does not support this descriptor version\00", [44 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid subunit for RAID 0 or 5 in CreateUnit\00", [50 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Too many descriptors in CreateUnit\00", [61 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Invalid configuration specified in CreateUnit descriptor\00", [39 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Invalid LBA offset specified in CreateUnit descriptor\00", [42 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Invalid stripelet size specified in CreateUnit descriptor\00", [38 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SMART attribute exceeded threshold\00", [61 x i8] zeroinitializer }, align 32
@twa_aen_drain_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.287, ptr @.str.6, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twa_aen_drain_queue\00", [44 x i8] zeroinitializer }, align 32
@twa_aen_drain_queue._entry_ptr = internal global ptr @twa_aen_drain_queue._entry, section ".printk_index", align 4
@.str.288 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Found unaligned address during AEN drain\00", [55 x i8] zeroinitializer }, align 32
@twa_aen_drain_queue._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.287, ptr @.str.6, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_aen_drain_queue._entry_ptr.290 = internal global ptr @twa_aen_drain_queue._entry.289, section ".printk_index", align 4
@twa_aen_drain_queue._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.287, ptr @.str.6, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_aen_drain_queue._entry_ptr.292 = internal global ptr @twa_aen_drain_queue._entry.291, section ".printk_index", align 4
@.str.293 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error posting request sense\00", [36 x i8] zeroinitializer }, align 32
@twa_aen_drain_queue._entry.294 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.287, ptr @.str.6, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_aen_drain_queue._entry_ptr.295 = internal global ptr @twa_aen_drain_queue._entry.294, section ".printk_index", align 4
@twa_aen_drain_queue._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.287, ptr @.str.6, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_aen_drain_queue._entry_ptr.297 = internal global ptr @twa_aen_drain_queue._entry.296, section ".printk_index", align 4
@.str.298 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No valid response while draining AEN queue\00", [53 x i8] zeroinitializer }, align 32
@twa_aen_drain_queue._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.287, ptr @.str.6, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_aen_drain_queue._entry_ptr.300 = internal global ptr @twa_aen_drain_queue._entry.299, section ".printk_index", align 4
@.str.301 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" scsi%d:\00", [23 x i8] zeroinitializer }, align 32
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@twa_aen_queue_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.303, ptr @.str.6, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\0143w-9xxx:%s AEN: %s (0x%02X:0x%04X): %s:%s.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twa_aen_queue_event\00", [44 x i8] zeroinitializer }, align 32
@twa_aen_queue_event._entry_ptr = internal global ptr @twa_aen_queue_event._entry, section ".printk_index", align 4
@twa_aen_table = internal constant { [71 x %struct.TAG_twa_message_type], [136 x i8] } { [71 x %struct.TAG_twa_message_type] [%struct.TAG_twa_message_type { i32 0, ptr @.str.309 }, %struct.TAG_twa_message_type { i32 1, ptr @.str.310 }, %struct.TAG_twa_message_type { i32 2, ptr @.str.311 }, %struct.TAG_twa_message_type { i32 3, ptr @.str.312 }, %struct.TAG_twa_message_type { i32 4, ptr @.str.313 }, %struct.TAG_twa_message_type { i32 5, ptr @.str.314 }, %struct.TAG_twa_message_type { i32 6, ptr @.str.315 }, %struct.TAG_twa_message_type { i32 7, ptr @.str.316 }, %struct.TAG_twa_message_type { i32 8, ptr @.str.317 }, %struct.TAG_twa_message_type { i32 9, ptr @.str.318 }, %struct.TAG_twa_message_type { i32 10, ptr @.str.319 }, %struct.TAG_twa_message_type { i32 11, ptr @.str.320 }, %struct.TAG_twa_message_type { i32 12, ptr @.str.321 }, %struct.TAG_twa_message_type { i32 13, ptr @.str.322 }, %struct.TAG_twa_message_type { i32 14, ptr @.str.323 }, %struct.TAG_twa_message_type { i32 15, ptr @.str.286 }, %struct.TAG_twa_message_type { i32 16, ptr @.str.324 }, %struct.TAG_twa_message_type { i32 17, ptr @.str.325 }, %struct.TAG_twa_message_type { i32 18, ptr @.str.326 }, %struct.TAG_twa_message_type { i32 19, ptr @.str.327 }, %struct.TAG_twa_message_type { i32 20, ptr @.str.328 }, %struct.TAG_twa_message_type { i32 21, ptr @.str.329 }, %struct.TAG_twa_message_type { i32 22, ptr @.str.330 }, %struct.TAG_twa_message_type { i32 23, ptr @.str.331 }, %struct.TAG_twa_message_type { i32 24, ptr @.str.332 }, %struct.TAG_twa_message_type { i32 25, ptr @.str.333 }, %struct.TAG_twa_message_type { i32 26, ptr @.str.334 }, %struct.TAG_twa_message_type { i32 27, ptr @.str.335 }, %struct.TAG_twa_message_type { i32 28, ptr @.str.336 }, %struct.TAG_twa_message_type { i32 29, ptr @.str.337 }, %struct.TAG_twa_message_type { i32 32, ptr @.str.338 }, %struct.TAG_twa_message_type { i32 33, ptr @.str.339 }, %struct.TAG_twa_message_type { i32 34, ptr @.str.340 }, %struct.TAG_twa_message_type { i32 35, ptr @.str.341 }, %struct.TAG_twa_message_type { i32 36, ptr @.str.342 }, %struct.TAG_twa_message_type { i32 37, ptr @.str.343 }, %struct.TAG_twa_message_type { i32 38, ptr @.str.344 }, %struct.TAG_twa_message_type { i32 39, ptr @.str.345 }, %struct.TAG_twa_message_type { i32 40, ptr @.str.346 }, %struct.TAG_twa_message_type { i32 41, ptr @.str.347 }, %struct.TAG_twa_message_type { i32 42, ptr @.str.348 }, %struct.TAG_twa_message_type { i32 43, ptr @.str.349 }, %struct.TAG_twa_message_type { i32 44, ptr @.str.350 }, %struct.TAG_twa_message_type { i32 45, ptr @.str.351 }, %struct.TAG_twa_message_type { i32 46, ptr @.str.352 }, %struct.TAG_twa_message_type { i32 47, ptr @.str.353 }, %struct.TAG_twa_message_type { i32 48, ptr @.str.354 }, %struct.TAG_twa_message_type { i32 49, ptr @.str.355 }, %struct.TAG_twa_message_type { i32 50, ptr @.str.356 }, %struct.TAG_twa_message_type { i32 51, ptr @.str.357 }, %struct.TAG_twa_message_type { i32 52, ptr @.str.358 }, %struct.TAG_twa_message_type { i32 53, ptr @.str.359 }, %struct.TAG_twa_message_type { i32 54, ptr @.str.360 }, %struct.TAG_twa_message_type { i32 55, ptr @.str.361 }, %struct.TAG_twa_message_type { i32 56, ptr @.str.362 }, %struct.TAG_twa_message_type { i32 57, ptr @.str.363 }, %struct.TAG_twa_message_type { i32 58, ptr @.str.364 }, %struct.TAG_twa_message_type { i32 59, ptr @.str.365 }, %struct.TAG_twa_message_type { i32 60, ptr @.str.366 }, %struct.TAG_twa_message_type { i32 61, ptr @.str.367 }, %struct.TAG_twa_message_type { i32 62, ptr @.str.368 }, %struct.TAG_twa_message_type { i32 63, ptr @.str.238 }, %struct.TAG_twa_message_type { i32 64, ptr @.str.369 }, %struct.TAG_twa_message_type { i32 65, ptr @.str.370 }, %struct.TAG_twa_message_type { i32 66, ptr @.str.371 }, %struct.TAG_twa_message_type { i32 67, ptr @.str.372 }, %struct.TAG_twa_message_type { i32 252, ptr @.str.373 }, %struct.TAG_twa_message_type { i32 253, ptr @.str.374 }, %struct.TAG_twa_message_type { i32 254, ptr @.str.375 }, %struct.TAG_twa_message_type { i32 255, ptr @.str.376 }, %struct.TAG_twa_message_type { i32 -1, ptr null }], [136 x i8] zeroinitializer }, align 32
@twa_aen_severity_table = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERROR\00", [26 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WARNING\00", [24 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INFO\00", [27 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DEBUG\00", [26 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AEN queue empty\00", [16 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Controller reset occurred\00", [38 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Degraded unit detected\00", [41 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Controller error occurred\00", [38 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Background rebuild failed\00", [38 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Background rebuild done\00", [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Incomplete unit detected\00", [39 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Background initialize done\00", [37 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unclean shutdown detected\00", [38 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Drive timeout detected\00", [41 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Drive error detected\00", [43 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Rebuild started\00", [16 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Background initialize started\00", [34 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Entire logical unit was deleted\00", [32 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Background initialize failed\00", [35 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Power supply reported AC under range\00", [59 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Power supply reported DC out of range\00", [58 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Power supply reported a malfunction\00", [60 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Power supply predicted malfunction\00", [61 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Battery charge is below threshold\00", [62 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fan speed is below threshold\00", [35 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Temperature sensor is above threshold\00", [58 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Power supply was removed\00", [39 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Power supply was inserted\00", [38 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Drive was removed from a bay\00", [35 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Drive was inserted into a bay\00", [34 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Drive bay cover door was opened\00", [32 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Drive bay cover door was closed\00", [32 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Product case was opened\00", [40 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Prepare for shutdown (power-off)\00", [63 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Downgrade UDMA mode to lower speed\00", [61 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Upgrade UDMA mode to higher speed\00", [62 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Sector repair completed\00", [40 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Sbuf memory test failed\00", [40 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error flushing cached write data to array\00", [54 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Drive reported data ECC error\00", [34 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DCB has checksum error\00", [41 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DCB version is unsupported\00", [37 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Background verify started\00", [38 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Background verify failed\00", [39 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Background verify done\00", [41 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Bad sector overwritten during rebuild\00", [58 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Background rebuild error on source drive\00", [55 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Replace failed because replacement drive too small\00", [45 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Verify failed because array was never initialized\00", [46 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported ATA drive\00", [42 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Synchronize host/controller time\00", [63 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Spare capacity is inadequate for some units\00", [52 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Background migration started\00", [35 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Background migration failed\00", [36 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Background migration done\00", [38 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Verify detected and fixed data/parity mismatch\00", [49 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SO-DIMM incompatible\00", [43 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SO-DIMM not detected\00", [43 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Corrected Sbuf ECC error\00", [39 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Drive power on reset detected\00", [34 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Background rebuild paused\00", [38 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Background initialize paused\00", [35 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Background verify paused\00", [39 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Background migration paused\00", [36 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Flash file system repaired\00", [37 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unit number assignments were lost\00", [62 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error during read of primary DCB\00", [63 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Latent error found in backup DCB\00", [63 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Recovered/finished array membership update\00", [53 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Handler lockup\00", [17 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Retrying PCI transfer\00", [42 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AEN queue is full\00", [46 x i8] zeroinitializer }, align 32
@twa_get_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.377, ptr @.str.6, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twa_get_param\00", [18 x i8] zeroinitializer }, align 32
@twa_get_param._entry_ptr = internal global ptr @twa_get_param._entry, section ".printk_index", align 4
@.str.378 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No valid response during get param\00", [61 x i8] zeroinitializer }, align 32
@twa_get_param._entry.379 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.377, ptr @.str.6, i32 1088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_get_param._entry_ptr.380 = internal global ptr @twa_get_param._entry.379, section ".printk_index", align 4
@twa_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.381, ptr @.str.6, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twa_interrupt\00", [18 x i8] zeroinitializer }, align 32
@twa_interrupt._entry_ptr = internal global ptr @twa_interrupt._entry, section ".printk_index", align 4
@.str.382 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Found request id that wasn't pending\00", [59 x i8] zeroinitializer }, align 32
@twa_interrupt._entry.383 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.381, ptr @.str.6, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_interrupt._entry_ptr.384 = internal global ptr @twa_interrupt._entry.383, section ".printk_index", align 4
@twa_interrupt._entry.385 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.381, ptr @.str.6, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_interrupt._entry_ptr.386 = internal global ptr @twa_interrupt._entry.385, section ".printk_index", align 4
@.str.387 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Received a request id that wasn't posted\00", [55 x i8] zeroinitializer }, align 32
@twa_interrupt._entry.388 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.381, ptr @.str.6, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_interrupt._entry_ptr.389 = internal global ptr @twa_interrupt._entry.388, section ".printk_index", align 4
@twa_interrupt._entry.390 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.381, ptr @.str.6, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_interrupt._entry_ptr.391 = internal global ptr @twa_interrupt._entry.390, section ".printk_index", align 4
@.str.392 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error completing AEN during attention interrupt\00", [48 x i8] zeroinitializer }, align 32
@twa_interrupt._entry.393 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.381, ptr @.str.6, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_interrupt._entry_ptr.394 = internal global ptr @twa_interrupt._entry.393, section ".printk_index", align 4
@twa_aen_read_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.395, ptr @.str.6, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twa_aen_read_queue\00", [45 x i8] zeroinitializer }, align 32
@twa_aen_read_queue._entry_ptr = internal global ptr @twa_aen_read_queue._entry, section ".printk_index", align 4
@.str.396 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Post failed while reading AEN queue\00", [60 x i8] zeroinitializer }, align 32
@twa_aen_read_queue._entry.397 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.395, ptr @.str.6, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_aen_read_queue._entry_ptr.398 = internal global ptr @twa_aen_read_queue._entry.397, section ".printk_index", align 4
@twa_chrdev_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.401, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @twa_chrdev_mutex, i64 52), ptr getelementptr (i8, ptr @twa_chrdev_mutex, i64 52) }, ptr @twa_chrdev_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.402, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@twa_chrdev_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.399, ptr @.str.400, ptr @.str.6, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\0143w-9xxx: scsi%d: WARNING: (0x%02X:0x%04X): Character ioctl (0x%x) timed out, resetting card.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twa_chrdev_ioctl\00", [47 x i8] zeroinitializer }, align 32
@twa_chrdev_ioctl._entry_ptr = internal global ptr @twa_chrdev_ioctl._entry, section ".printk_index", align 4
@.str.401 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"twa_chrdev_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twa_chrdev_mutex\00", [47 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.403 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__twa_shutdown._entry = internal constant %struct.pi_entry { ptr @.str.406, ptr @.str.407, ptr @.str.6, i32 1938, ptr null, ptr null }, align 1
@.str.406 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\0143w-9xxx: Shutting down host %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__twa_shutdown\00", [17 x i8] zeroinitializer }, align 32
@__twa_shutdown._entry_ptr = internal global ptr @__twa_shutdown._entry, section ".printk_index", align 4
@__twa_shutdown._entry.408 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.407, ptr @.str.6, i32 1942, ptr null, ptr null }, align 1
@__twa_shutdown._entry_ptr.409 = internal global ptr @__twa_shutdown._entry.408, section ".printk_index", align 4
@.str.410 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Connection shutdown failed\00", [37 x i8] zeroinitializer }, align 32
@__twa_shutdown._entry.411 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.407, ptr @.str.6, i32 1942, ptr null, ptr null }, align 1
@__twa_shutdown._entry_ptr.412 = internal global ptr @__twa_shutdown._entry.411, section ".printk_index", align 4
@__twa_shutdown._entry.413 = internal constant %struct.pi_entry { ptr @.str.414, ptr @.str.407, ptr @.str.6, i32 1944, ptr null, ptr null }, align 1
@.str.414 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0143w-9xxx: Shutdown complete.\0A\00", [33 x i8] zeroinitializer }, align 32
@__twa_shutdown._entry_ptr.415 = internal global ptr @__twa_shutdown._entry.413, section ".printk_index", align 4
@twa_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.416, ptr @.str.417, ptr @.str.6, i32 2193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0143w-9xxx: Suspending host %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"twa_suspend\00", [20 x i8] zeroinitializer }, align 32
@twa_suspend._entry_ptr = internal global ptr @twa_suspend._entry, section ".printk_index", align 4
@twa_suspend._entry.418 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.417, ptr @.str.6, i32 2203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_suspend._entry_ptr.419 = internal global ptr @twa_suspend._entry.418, section ".printk_index", align 4
@.str.420 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Connection shutdown failed during suspend\00", [54 x i8] zeroinitializer }, align 32
@twa_suspend._entry.421 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.417, ptr @.str.6, i32 2203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_suspend._entry_ptr.422 = internal global ptr @twa_suspend._entry.421, section ".printk_index", align 4
@twa_suspend._entry.423 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.424, ptr @.str.417, ptr @.str.6, i32 2205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0143w-9xxx: Suspend complete.\0A\00", [34 x i8] zeroinitializer }, align 32
@twa_suspend._entry_ptr.425 = internal global ptr @twa_suspend._entry.423, section ".printk_index", align 4
@twa_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.426, ptr @.str.427, ptr @.str.6, i32 2220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\0143w-9xxx: Resuming host %d.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"twa_resume\00", [21 x i8] zeroinitializer }, align 32
@twa_resume._entry_ptr = internal global ptr @twa_resume._entry, section ".printk_index", align 4
@twa_resume._entry.428 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.427, ptr @.str.6, i32 2228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_resume._entry_ptr.429 = internal global ptr @twa_resume._entry.428, section ".printk_index", align 4
@.str.430 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set dma mask during resume\00", [59 x i8] zeroinitializer }, align 32
@twa_resume._entry.431 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.427, ptr @.str.6, i32 2228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_resume._entry_ptr.432 = internal global ptr @twa_resume._entry.431, section ".printk_index", align 4
@twa_resume._entry.433 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.427, ptr @.str.6, i32 2242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_resume._entry_ptr.434 = internal global ptr @twa_resume._entry.433, section ".printk_index", align 4
@.str.435 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error requesting IRQ during resume\00", [61 x i8] zeroinitializer }, align 32
@twa_resume._entry.436 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.427, ptr @.str.6, i32 2242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@twa_resume._entry_ptr.437 = internal global ptr @twa_resume._entry.436, section ".printk_index", align 4
@twa_resume._entry.438 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.439, ptr @.str.427, ptr @.str.6, i32 2254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.439 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0143w-9xxx: Resume complete.\0A\00", [35 x i8] zeroinitializer }, align 32
@twa_resume._entry_ptr.440 = internal global ptr @twa_resume._entry.438, section ".printk_index", align 4
@twa_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.441, ptr @.str.442, ptr @.str.6, i32 2292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.441 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\0143ware 9000 Storage Controller device driver for Linux v%s.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"twa_init\00", [23 x i8] zeroinitializer }, align 32
@twa_init._entry_ptr = internal global ptr @twa_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 49]
@__sancov_gen_cov_switch_values.443 = internal global [4 x i64] [i64 2, i64 16, i64 2561, i64 10241]
@__sancov_gen_cov_switch_values.444 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 49]
@__sancov_gen_cov_switch_values.445 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.446 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.447 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4181]
@__sancov_gen_cov_switch_values.448 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.449 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 10]
@__sancov_gen_cov_switch_values.450 = internal global [4 x i64] [i64 2, i64 8, i64 40, i64 42]
@__sancov_gen_cov_switch_values.451 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 16, i64 32]
@__sancov_gen_cov_switch_values.452 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.453 = internal global [4 x i64] [i64 2, i64 16, i64 2561, i64 10241]
@__sancov_gen_cov_switch_values.454 = internal global [4 x i64] [i64 2, i64 16, i64 2561, i64 10241]
@__sancov_gen_cov_switch_values.455 = internal global [4 x i64] [i64 2, i64 16, i64 2561, i64 10241]
@__sancov_gen_cov_switch_values.456 = internal global [10 x i64] [i64 8, i64 32, i64 257, i64 258, i64 259, i64 260, i64 261, i64 262, i64 263, i64 264]
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 114, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant [8 x i8] c"use_msi\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 116, i32 12 }
@___asan_gen_.469 = private unnamed_addr constant [11 x i8] c"twa_driver\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2280, i32 26 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2281, i32 11 }
@___asan_gen_.475 = private unnamed_addr constant [12 x i8] c"twa_pci_tbl\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2264, i32 29 }
@___asan_gen_.478 = private unnamed_addr constant [11 x i8] c"twa_pm_ops\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2277, i32 8 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2008, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2019, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant [16 x i8] c"driver_template\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1980, i32 34 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2026, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2037, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2045, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2060, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2090, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2096, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2098, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2115, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant [26 x i8] c"twa_device_extension_list\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 105, i32 29 }
@___asan_gen_.583 = private unnamed_addr constant [27 x i8] c"twa_device_extension_count\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 106, i32 21 }
@___asan_gen_.586 = private unnamed_addr constant [10 x i8] c"twa_major\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 107, i32 12 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2129, i32 40 }
@___asan_gen_.592 = private unnamed_addr constant [9 x i8] c"twa_fops\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 208, i32 37 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2130, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1982, i32 12 }
@___asan_gen_.607 = private unnamed_addr constant [16 x i8] c"twa_host_groups\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1862, i32 7 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1875, i32 5 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 914, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 919, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 928, i32 4 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 934, i32 4 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1729, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1738, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant [15 x i8] c"twa_host_group\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 205, i32 1 }
@___asan_gen_.691 = private unnamed_addr constant [15 x i8] c"twa_host_attrs\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 200, i32 26 }
@___asan_gen_.694 = private unnamed_addr constant [20 x i8] c"twa_host_stats_attr\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 191, i32 32 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 193, i32 12 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 164, i32 33 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1176, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1182, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1189, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1207, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1208, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 527, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 532, i32 3 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1643, i32 5 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1652, i32 4 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1660, i32 4 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1670, i32 4 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1683, i32 4 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 586, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 603, i32 4 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 608, i32 5 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 610, i32 5 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1151, i32 3 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1429, i32 4 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1006, i32 4 }
@___asan_gen_.886 = private unnamed_addr constant [16 x i8] c"twa_error_table\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 138, i32 25 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1012, i32 4 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 139, i32 11 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 140, i32 11 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 141, i32 11 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 142, i32 11 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 143, i32 11 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 144, i32 11 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 145, i32 11 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 146, i32 11 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 147, i32 11 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 148, i32 11 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 149, i32 11 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 150, i32 11 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 151, i32 11 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 152, i32 11 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 153, i32 11 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 154, i32 11 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 155, i32 11 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 156, i32 11 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 157, i32 11 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 158, i32 11 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 159, i32 11 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 160, i32 11 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 161, i32 11 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 162, i32 11 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 163, i32 11 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 164, i32 11 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 165, i32 11 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 166, i32 11 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 167, i32 11 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 169, i32 11 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 170, i32 11 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 171, i32 11 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 172, i32 11 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 173, i32 11 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 174, i32 11 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 175, i32 11 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 176, i32 11 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 177, i32 11 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 178, i32 11 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 179, i32 11 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 180, i32 11 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 181, i32 11 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 182, i32 11 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 183, i32 11 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 184, i32 11 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 185, i32 11 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 186, i32 11 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 187, i32 11 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 188, i32 11 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 189, i32 11 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 190, i32 11 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 191, i32 11 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 192, i32 11 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 193, i32 11 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 194, i32 11 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 195, i32 11 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 196, i32 11 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 197, i32 11 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 198, i32 11 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 199, i32 11 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 200, i32 11 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 201, i32 11 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 202, i32 11 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 203, i32 11 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 204, i32 11 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 205, i32 11 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 206, i32 11 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 207, i32 11 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 208, i32 11 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 209, i32 11 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 210, i32 11 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 211, i32 11 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 212, i32 11 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 213, i32 11 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 214, i32 11 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 215, i32 11 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 216, i32 11 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 218, i32 11 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 219, i32 11 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 220, i32 11 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 221, i32 11 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 222, i32 11 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 223, i32 11 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 224, i32 11 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 225, i32 11 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 226, i32 11 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 227, i32 11 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 228, i32 11 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 229, i32 11 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 230, i32 11 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 231, i32 11 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 232, i32 11 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 233, i32 11 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 234, i32 11 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 235, i32 11 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 236, i32 11 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 237, i32 11 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 238, i32 11 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 239, i32 11 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 240, i32 11 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 241, i32 11 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 242, i32 11 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 243, i32 11 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 244, i32 11 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 245, i32 11 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 246, i32 11 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 247, i32 11 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 248, i32 11 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 249, i32 11 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 250, i32 11 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 312, i32 3 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 322, i32 4 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 328, i32 4 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 389, i32 17 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 413, i32 3 }
@___asan_gen_.1267 = private unnamed_addr constant [14 x i8] c"twa_aen_table\00", align 1
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 57, i32 25 }
@___asan_gen_.1270 = private unnamed_addr constant [23 x i8] c"twa_aen_severity_table\00", align 1
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 132, i32 14 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 134, i32 2 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 134, i32 10 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 134, i32 19 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 134, i32 30 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 134, i32 38 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 58, i32 11 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 59, i32 11 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 60, i32 11 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 61, i32 11 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 62, i32 11 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 63, i32 11 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 64, i32 11 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 65, i32 11 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 66, i32 11 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 67, i32 11 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 68, i32 11 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 69, i32 11 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 70, i32 11 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 71, i32 11 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 72, i32 11 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 74, i32 11 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 75, i32 11 }
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 76, i32 11 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 77, i32 11 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 78, i32 11 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 79, i32 11 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 80, i32 11 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 81, i32 11 }
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 82, i32 11 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 83, i32 11 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 84, i32 11 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 85, i32 11 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 86, i32 11 }
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 87, i32 11 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 88, i32 11 }
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 89, i32 11 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 90, i32 11 }
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 91, i32 11 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 92, i32 11 }
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 93, i32 11 }
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 94, i32 11 }
@___asan_gen_.1398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 95, i32 11 }
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 96, i32 11 }
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 97, i32 11 }
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 98, i32 11 }
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 99, i32 11 }
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 100, i32 11 }
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 101, i32 11 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 102, i32 11 }
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 103, i32 11 }
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 104, i32 11 }
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 105, i32 11 }
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 106, i32 11 }
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 107, i32 11 }
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 108, i32 11 }
@___asan_gen_.1440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 109, i32 11 }
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 110, i32 11 }
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 111, i32 11 }
@___asan_gen_.1449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 112, i32 11 }
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 113, i32 11 }
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 114, i32 11 }
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 115, i32 11 }
@___asan_gen_.1461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 116, i32 11 }
@___asan_gen_.1464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 117, i32 11 }
@___asan_gen_.1467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 118, i32 11 }
@___asan_gen_.1470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 120, i32 11 }
@___asan_gen_.1473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 121, i32 11 }
@___asan_gen_.1476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 122, i32 11 }
@___asan_gen_.1479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 123, i32 11 }
@___asan_gen_.1482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 124, i32 11 }
@___asan_gen_.1485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 125, i32 11 }
@___asan_gen_.1488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 126, i32 11 }
@___asan_gen_.1490 = private unnamed_addr constant [26 x i8] c"../drivers/scsi/3w-9xxx.h\00", align 1
@___asan_gen_.1491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1490, i32 127, i32 11 }
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1088, i32 3 }
@___asan_gen_.1515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1275, i32 5 }
@___asan_gen_.1524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1314, i32 6 }
@___asan_gen_.1533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1324, i32 7 }
@___asan_gen_.1545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 453, i32 3 }
@___asan_gen_.1546 = private unnamed_addr constant [17 x i8] c"twa_chrdev_mutex\00", align 1
@___asan_gen_.1557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 725, i32 4 }
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 104, i32 8 }
@___asan_gen_.1566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1568, i32 230, i32 6 }
@___asan_gen_.1568 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1568, i32 214, i32 2 }
@___asan_gen_.1571 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1571, i32 156, i32 2 }
@___asan_gen_.1578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1938, i32 2 }
@___asan_gen_.1581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1942, i32 3 }
@___asan_gen_.1584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 1944, i32 3 }
@___asan_gen_.1593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2193, i32 2 }
@___asan_gen_.1602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2203, i32 3 }
@___asan_gen_.1608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2205, i32 3 }
@___asan_gen_.1617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2220, i32 2 }
@___asan_gen_.1626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2228, i32 3 }
@___asan_gen_.1635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2242, i32 3 }
@___asan_gen_.1641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2254, i32 2 }
@___asan_gen_.1642 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1648 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1649 = private constant [26 x i8] c"../drivers/scsi/3w-9xxx.c\00", align 1
@___asan_gen_.1650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1649, i32 2292, i32 2 }
@llvm.compiler.used = appending global [515 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__UNIQUE_ID_use_msi293, ptr @__UNIQUE_ID_use_msitype292, ptr @__UNIQUE_ID_version291, ptr @__exitcall_twa_exit, ptr @__initcall__kmod_3w_9xxx__294_2303_twa_init6, ptr @__modver_attr, ptr @__param_use_msi, ptr @__twa_shutdown._entry, ptr @__twa_shutdown._entry.408, ptr @__twa_shutdown._entry.411, ptr @__twa_shutdown._entry.413, ptr @__twa_shutdown._entry_ptr, ptr @__twa_shutdown._entry_ptr.409, ptr @__twa_shutdown._entry_ptr.412, ptr @__twa_shutdown._entry_ptr.415, ptr @twa_aen_drain_queue._entry, ptr @twa_aen_drain_queue._entry.289, ptr @twa_aen_drain_queue._entry.291, ptr @twa_aen_drain_queue._entry.294, ptr @twa_aen_drain_queue._entry.296, ptr @twa_aen_drain_queue._entry.299, ptr @twa_aen_drain_queue._entry_ptr, ptr @twa_aen_drain_queue._entry_ptr.290, ptr @twa_aen_drain_queue._entry_ptr.292, ptr @twa_aen_drain_queue._entry_ptr.295, ptr @twa_aen_drain_queue._entry_ptr.297, ptr @twa_aen_drain_queue._entry_ptr.300, ptr @twa_aen_queue_event._entry, ptr @twa_aen_queue_event._entry_ptr, ptr @twa_aen_read_queue._entry, ptr @twa_aen_read_queue._entry.397, ptr @twa_aen_read_queue._entry_ptr, ptr @twa_aen_read_queue._entry_ptr.398, ptr @twa_allocate_memory._entry, ptr @twa_allocate_memory._entry.114, ptr @twa_allocate_memory._entry.116, ptr @twa_allocate_memory._entry.119, ptr @twa_allocate_memory._entry_ptr, ptr @twa_allocate_memory._entry_ptr.115, ptr @twa_allocate_memory._entry_ptr.117, ptr @twa_allocate_memory._entry_ptr.120, ptr @twa_check_srl._entry, ptr @twa_check_srl._entry.147, ptr @twa_check_srl._entry.149, ptr @twa_check_srl._entry.152, ptr @twa_check_srl._entry.154, ptr @twa_check_srl._entry.157, ptr @twa_check_srl._entry.159, ptr @twa_check_srl._entry.162, ptr @twa_check_srl._entry_ptr, ptr @twa_check_srl._entry_ptr.148, ptr @twa_check_srl._entry_ptr.150, ptr @twa_check_srl._entry_ptr.153, ptr @twa_check_srl._entry_ptr.155, ptr @twa_check_srl._entry_ptr.158, ptr @twa_check_srl._entry_ptr.160, ptr @twa_check_srl._entry_ptr.163, ptr @twa_chrdev_ioctl._entry, ptr @twa_chrdev_ioctl._entry_ptr, ptr @twa_decode_bits._entry, ptr @twa_decode_bits._entry.70, ptr @twa_decode_bits._entry.72, ptr @twa_decode_bits._entry.75, ptr @twa_decode_bits._entry.77, ptr @twa_decode_bits._entry.80, ptr @twa_decode_bits._entry.82, ptr @twa_decode_bits._entry.85, ptr @twa_decode_bits._entry_ptr, ptr @twa_decode_bits._entry_ptr.71, ptr @twa_decode_bits._entry_ptr.73, ptr @twa_decode_bits._entry_ptr.76, ptr @twa_decode_bits._entry_ptr.78, ptr @twa_decode_bits._entry_ptr.81, ptr @twa_decode_bits._entry_ptr.83, ptr @twa_decode_bits._entry_ptr.86, ptr @twa_exit, ptr @twa_fill_sense._entry, ptr @twa_fill_sense._entry.174, ptr @twa_fill_sense._entry_ptr, ptr @twa_fill_sense._entry_ptr.176, ptr @twa_get_param._entry, ptr @twa_get_param._entry.379, ptr @twa_get_param._entry_ptr, ptr @twa_get_param._entry_ptr.380, ptr @twa_init._entry, ptr @twa_init._entry_ptr, ptr @twa_initconnection._entry, ptr @twa_initconnection._entry.166, ptr @twa_initconnection._entry_ptr, ptr @twa_initconnection._entry_ptr.167, ptr @twa_initialize_device_extension._entry, ptr @twa_initialize_device_extension._entry.102, ptr @twa_initialize_device_extension._entry.104, ptr @twa_initialize_device_extension._entry.107, ptr @twa_initialize_device_extension._entry.97, ptr @twa_initialize_device_extension._entry.99, ptr @twa_initialize_device_extension._entry_ptr, ptr @twa_initialize_device_extension._entry_ptr.100, ptr @twa_initialize_device_extension._entry_ptr.103, ptr @twa_initialize_device_extension._entry_ptr.105, ptr @twa_initialize_device_extension._entry_ptr.108, ptr @twa_initialize_device_extension._entry_ptr.98, ptr @twa_interrupt._entry, ptr @twa_interrupt._entry.383, ptr @twa_interrupt._entry.385, ptr @twa_interrupt._entry.388, ptr @twa_interrupt._entry.390, ptr @twa_interrupt._entry.393, ptr @twa_interrupt._entry_ptr, ptr @twa_interrupt._entry_ptr.384, ptr @twa_interrupt._entry_ptr.386, ptr @twa_interrupt._entry_ptr.389, ptr @twa_interrupt._entry_ptr.391, ptr @twa_interrupt._entry_ptr.394, ptr @twa_poll_response._entry, ptr @twa_poll_response._entry.170, ptr @twa_poll_response._entry_ptr, ptr @twa_poll_response._entry_ptr.171, ptr @twa_probe._entry, ptr @twa_probe._entry.11, ptr @twa_probe._entry.14, ptr @twa_probe._entry.16, ptr @twa_probe._entry.19, ptr @twa_probe._entry.21, ptr @twa_probe._entry.24, ptr @twa_probe._entry.26, ptr @twa_probe._entry.29, ptr @twa_probe._entry.31, ptr @twa_probe._entry.34, ptr @twa_probe._entry.36, ptr @twa_probe._entry.39, ptr @twa_probe._entry.41, ptr @twa_probe._entry.44, ptr @twa_probe._entry.47, ptr @twa_probe._entry.50, ptr @twa_probe._entry.53, ptr @twa_probe._entry.56, ptr @twa_probe._entry.8, ptr @twa_probe._entry_ptr, ptr @twa_probe._entry_ptr.10, ptr @twa_probe._entry_ptr.12, ptr @twa_probe._entry_ptr.15, ptr @twa_probe._entry_ptr.17, ptr @twa_probe._entry_ptr.20, ptr @twa_probe._entry_ptr.22, ptr @twa_probe._entry_ptr.25, ptr @twa_probe._entry_ptr.27, ptr @twa_probe._entry_ptr.30, ptr @twa_probe._entry_ptr.32, ptr @twa_probe._entry_ptr.35, ptr @twa_probe._entry_ptr.37, ptr @twa_probe._entry_ptr.40, ptr @twa_probe._entry_ptr.43, ptr @twa_probe._entry_ptr.46, ptr @twa_probe._entry_ptr.48, ptr @twa_probe._entry_ptr.51, ptr @twa_probe._entry_ptr.54, ptr @twa_probe._entry_ptr.57, ptr @twa_reset_sequence._entry, ptr @twa_reset_sequence._entry.123, ptr @twa_reset_sequence._entry.125, ptr @twa_reset_sequence._entry.128, ptr @twa_reset_sequence._entry.130, ptr @twa_reset_sequence._entry.133, ptr @twa_reset_sequence._entry.135, ptr @twa_reset_sequence._entry.138, ptr @twa_reset_sequence._entry.140, ptr @twa_reset_sequence._entry.143, ptr @twa_reset_sequence._entry_ptr, ptr @twa_reset_sequence._entry_ptr.124, ptr @twa_reset_sequence._entry_ptr.126, ptr @twa_reset_sequence._entry_ptr.129, ptr @twa_reset_sequence._entry_ptr.131, ptr @twa_reset_sequence._entry_ptr.134, ptr @twa_reset_sequence._entry_ptr.136, ptr @twa_reset_sequence._entry_ptr.139, ptr @twa_reset_sequence._entry_ptr.141, ptr @twa_reset_sequence._entry_ptr.144, ptr @twa_resume._entry, ptr @twa_resume._entry.428, ptr @twa_resume._entry.431, ptr @twa_resume._entry.433, ptr @twa_resume._entry.436, ptr @twa_resume._entry.438, ptr @twa_resume._entry_ptr, ptr @twa_resume._entry_ptr.429, ptr @twa_resume._entry_ptr.432, ptr @twa_resume._entry_ptr.434, ptr @twa_resume._entry_ptr.437, ptr @twa_resume._entry_ptr.440, ptr @twa_scsi_eh_reset._entry, ptr @twa_scsi_eh_reset._entry.91, ptr @twa_scsi_eh_reset._entry_ptr, ptr @twa_scsi_eh_reset._entry_ptr.92, ptr @twa_scsiop_execute_scsi._entry, ptr @twa_scsiop_execute_scsi._entry.61, ptr @twa_scsiop_execute_scsi._entry.63, ptr @twa_scsiop_execute_scsi._entry.66, ptr @twa_scsiop_execute_scsi._entry_ptr, ptr @twa_scsiop_execute_scsi._entry_ptr.62, ptr @twa_scsiop_execute_scsi._entry_ptr.64, ptr @twa_scsiop_execute_scsi._entry_ptr.67, ptr @twa_suspend._entry, ptr @twa_suspend._entry.418, ptr @twa_suspend._entry.421, ptr @twa_suspend._entry.423, ptr @twa_suspend._entry_ptr, ptr @twa_suspend._entry_ptr.419, ptr @twa_suspend._entry_ptr.422, ptr @twa_suspend._entry_ptr.425, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @use_msi, ptr @twa_driver, ptr @.str.3, ptr @twa_pci_tbl, ptr @twa_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.13, ptr @driver_template, ptr @.str.18, ptr @.str.23, ptr @.str.28, ptr @.str.33, ptr @.str.38, ptr @.str.42, ptr @.str.45, ptr @.str.49, ptr @twa_device_extension_list, ptr @twa_device_extension_count, ptr @twa_major, ptr @.str.52, ptr @twa_fops, ptr @.str.55, ptr @.str.58, ptr @twa_host_groups, ptr @.str.59, ptr @.str.60, ptr @.str.65, ptr @.str.68, ptr @.str.69, ptr @.str.74, ptr @.str.79, ptr @.str.84, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @twa_host_group, ptr @twa_host_attrs, ptr @twa_host_stats_attr, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.101, ptr @.str.106, ptr @twa_initialize_device_extension.__key, ptr @.str.109, ptr @twa_initialize_device_extension.__key.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.118, ptr @.str.121, ptr @.str.122, ptr @.str.127, ptr @.str.132, ptr @.str.137, ptr @.str.142, ptr @.str.145, ptr @.str.146, ptr @.str.151, ptr @.str.156, ptr @.str.161, ptr @.str.164, ptr @.str.165, ptr @.str.168, ptr @.str.169, ptr @.str.172, ptr @.str.173, ptr @twa_error_table, ptr @.str.175, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.293, ptr @.str.298, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @twa_aen_table, ptr @twa_aen_severity_table, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.381, ptr @.str.382, ptr @.str.387, ptr @.str.392, ptr @.str.395, ptr @.str.396, ptr @twa_chrdev_mutex, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.410, ptr @.str.414, ptr @.str.416, ptr @.str.417, ptr @.str.420, ptr @.str.424, ptr @.str.426, ptr @.str.427, ptr @.str.430, ptr @.str.435, ptr @.str.439, ptr @.str.441, ptr @.str.442], section "llvm.metadata"
@0 = internal global [398 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_msi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_pci_tbl to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_device_extension_list to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_device_extension_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_host_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_scsiop_execute_scsi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_scsiop_execute_scsi._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_scsiop_execute_scsi._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_scsiop_execute_scsi._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_decode_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_decode_bits._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_decode_bits._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_decode_bits._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_decode_bits._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_decode_bits._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_decode_bits._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_decode_bits._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_scsi_eh_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_scsi_eh_reset._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_host_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_host_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_host_stats_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 338, i32 416, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_initialize_device_extension._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_initialize_device_extension._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_initialize_device_extension._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_initialize_device_extension._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_initialize_device_extension._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_initialize_device_extension._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_initialize_device_extension.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_initialize_device_extension.__key.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_allocate_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_allocate_memory._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_allocate_memory._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_allocate_memory._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_reset_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_reset_sequence._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_reset_sequence._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_reset_sequence._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_reset_sequence._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_reset_sequence._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_reset_sequence._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_reset_sequence._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_reset_sequence._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_reset_sequence._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_check_srl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_check_srl._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_check_srl._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_check_srl._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_check_srl._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_check_srl._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_check_srl._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_check_srl._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_initconnection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_initconnection._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_poll_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_poll_response._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_fill_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_error_table to i32), i32 904, i32 1152, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_fill_sense._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_aen_drain_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_aen_drain_queue._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_aen_drain_queue._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_aen_drain_queue._entry.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_aen_drain_queue._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_aen_drain_queue._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_aen_queue_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_aen_table to i32), i32 568, i32 704, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_aen_severity_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_get_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_get_param._entry.379 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_interrupt._entry.383 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_interrupt._entry.385 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_interrupt._entry.388 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_interrupt._entry.390 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_interrupt._entry.393 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_aen_read_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_aen_read_queue._entry.397 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_chrdev_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_chrdev_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_suspend._entry.418 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_suspend._entry.421 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_suspend._entry.423 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_resume._entry.428 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_resume._entry.431 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_resume._entry.433 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_resume._entry.436 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_resume._entry.438 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twa_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twa_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @twa_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twa_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.441, ptr noundef nonnull @.str.2) #16
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @twa_driver, ptr noundef null, ptr noundef nonnull @.str.1) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twa_probe(ptr noundef %pdev, ptr nocapture noundef readnone %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 52, ptr noundef nonnull @.str.7) #16
  br label %out_disable_device

if.end10:                                         ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #13
  %call11 = tail call i32 @pci_try_set_mwi(ptr noundef %pdev) #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end10.if.end35_crit_edge, label %if.then14

if.end10.if.end35_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then14:                                        ; preds = %if.end10
  %call.i375 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i375)
  %cmp.i376 = icmp eq i32 %call.i375, 0
  br i1 %cmp.i376, label %if.then14.if.end35_crit_edge, label %do.end31

if.then14.if.end35_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

do.end31:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 35, ptr noundef nonnull @.str.13) #16
  br label %out_disable_device

if.end35:                                         ; preds = %if.then14.if.end35_crit_edge, %if.end10.if.end35_crit_edge
  %.sink393 = phi i64 [ -1, %if.end10.if.end35_crit_edge ], [ 4294967295, %if.then14.if.end35_crit_edge ]
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %.sink393) #13
  %call36 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @driver_template, i32 noundef 7976) #13
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %do.end50, label %if.end54

do.end50:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 36, ptr noundef nonnull @.str.18) #16
  br label %out_disable_device

if.end54:                                         ; preds = %if.end35
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 0, i32 53
  %host55 = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 3, i32 50, i32 10, i32 1, i32 4, i32 6
  %0 = ptrtoint ptr %host55 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call36, ptr %host55, align 4
  %tw_pci_dev = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 2, i32 50, i32 2
  %1 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %tw_pci_dev, align 4
  %call.i380 = tail call fastcc i32 @twa_allocate_memory(ptr noundef %hostdata, i32 noundef 1024, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i380)
  %tobool.not.i = icmp eq i32 %call.i380, 0
  br i1 %tobool.not.i, label %if.end11.i, label %if.then.i381

if.then.i381:                                     ; preds = %if.end54
  %2 = ptrtoint ptr %host55 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host55, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %do.end8.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i381
  call void @__sanitizer_cov_trace_pc() #15
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %5, i32 noundef 6, i32 noundef 22, ptr noundef nonnull @.str.96) #16
  br label %if.then58

do.end8.i:                                        ; preds = %if.then.i381
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 22, ptr noundef nonnull @.str.96) #16
  br label %if.then58

if.end11.i:                                       ; preds = %if.end54
  %call12.i = tail call fastcc i32 @twa_allocate_memory(ptr noundef %hostdata, i32 noundef 512, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end32.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end11.i
  %6 = ptrtoint ptr %host55 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host55, align 4
  %tobool16.not.i = icmp eq ptr %7, null
  br i1 %tobool16.not.i, label %do.end28.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  %host_no23.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %host_no23.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_no23.i, align 4
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %9, i32 noundef 6, i32 noundef 23, ptr noundef nonnull @.str.101) #16
  br label %if.then58

do.end28.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 23, ptr noundef nonnull @.str.101) #16
  br label %if.then58

if.end32.i:                                       ; preds = %if.end11.i
  %call1.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 28672, i32 noundef 3520, i32 noundef 3) #17
  %event_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 3, i32 50, i32 10, i32 3
  %10 = ptrtoint ptr %event_queue.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1.i.i.i.i.i, ptr %event_queue.i, align 8
  %tobool36.not.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool36.not.i, label %if.then37.i, label %if.end32.i.for.body.i_crit_edge

if.end32.i.for.body.i_crit_edge:                  ; preds = %if.end32.i
  br label %for.body.i

if.then37.i:                                      ; preds = %if.end32.i
  %11 = ptrtoint ptr %host55 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host55, align 4
  %tobool39.not.i = icmp eq ptr %12, null
  br i1 %tobool39.not.i, label %do.end51.i, label %do.end43.i

do.end43.i:                                       ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #15
  %host_no46.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %host_no46.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %host_no46.i, align 4
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %14, i32 noundef 6, i32 noundef 24, ptr noundef nonnull @.str.106) #16
  br label %if.then58

do.end51.i:                                       ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #15
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 24, ptr noundef nonnull @.str.106) #16
  br label %if.then58

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end32.i.for.body.i_crit_edge
  %i.097.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end32.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %event_queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %event_queue.i, align 8
  %mul.i = mul nuw nsw i32 %i.097.i, 112
  %add.ptr.i = getelementptr i8, ptr %16, i32 %mul.i
  %arrayidx59.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 27, i32 %i.097.i
  %17 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %arrayidx59.i, align 4
  %conv.i = trunc i32 %i.097.i to i8
  %arrayidx60.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 7, i32 %i.097.i
  %18 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %arrayidx60.i, align 1
  %arrayidx61.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 13, i32 %i.097.i
  %19 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %arrayidx61.i, align 4
  %inc.i = add nuw nsw i32 %i.097.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %if.end76, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.then58:                                        ; preds = %do.end51.i, %do.end43.i, %do.end28.i, %do.end20.i, %do.end8.i, %do.end.i
  %20 = ptrtoint ptr %host55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host55, align 4
  %tobool60.not = icmp eq ptr %21, null
  br i1 %tobool60.not, label %do.end72, label %do.end64

do.end64:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  %host_no67 = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %host_no67 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %host_no67, align 4
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %23, i32 noundef 6, i32 noundef 37, ptr noundef nonnull @.str.23) #16
  br label %out_free_device_extension

do.end72:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #15
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 37, ptr noundef nonnull @.str.23) #16
  br label %out_free_device_extension

if.end76:                                         ; preds = %for.body.i
  %pending_head.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 11
  %24 = ptrtoint ptr %pending_head.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %pending_head.i, align 2
  %pending_tail.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 12
  %25 = ptrtoint ptr %pending_tail.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %pending_tail.i, align 1
  %free_head.i = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 3, i32 27
  %26 = ptrtoint ptr %free_head.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %free_head.i, align 8
  %free_tail.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 9
  %27 = ptrtoint ptr %free_tail.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %free_tail.i, align 1
  %error_sequence_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 4, i32 13, i32 13, i32 5, i32 1, i32 1
  %28 = ptrtoint ptr %error_sequence_id.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %error_sequence_id.i, align 4
  %chrdev_request_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 4, i32 13, i32 14
  %29 = ptrtoint ptr %chrdev_request_id.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %chrdev_request_id.i, align 8
  %ioctl_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 4, i32 25
  tail call void @__mutex_init(ptr noundef %ioctl_lock.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @twa_initialize_device_extension.__key) #13
  %ioctl_wqueue.i = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 4, i32 13, i32 14, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %ioctl_wqueue.i, ptr noundef nonnull @.str.111, ptr noundef nonnull @twa_initialize_device_extension.__key.110) #13
  %call77 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end97, label %if.then79

if.then79:                                        ; preds = %if.end76
  %30 = ptrtoint ptr %host55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host55, align 4
  %tobool81.not = icmp eq ptr %31, null
  br i1 %tobool81.not, label %do.end93, label %do.end85

do.end85:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #15
  %host_no88 = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 17
  %32 = ptrtoint ptr %host_no88 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %host_no88, align 4
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %33, i32 noundef 6, i32 noundef 38, ptr noundef nonnull @.str.28) #16
  br label %out_free_device_extension

do.end93:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #15
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 38, ptr noundef nonnull @.str.28) #16
  br label %out_free_device_extension

if.end97:                                         ; preds = %if.end76
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4098, i16 %35)
  %cmp = icmp eq i16 %35, 4098
  %arrayidx112 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %end116 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %end116.sink = select i1 %cmp, ptr %end, ptr %end116
  %.sink395.in = select i1 %cmp, ptr %arrayidx, ptr %arrayidx112
  %36 = ptrtoint ptr %.sink395.in to i32
  call void @__asan_load4_noabort(i32 %36)
  %.sink395 = load i32, ptr %.sink395.in, align 8
  %37 = ptrtoint ptr %end116.sink to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end116.sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp117 = icmp eq i32 %38, 0
  %sub127 = sub i32 1, %.sink395
  %add128 = add i32 %sub127, %38
  %cond130 = select i1 %cmp117, i32 0, i32 %add128
  %call132 = tail call ptr @ioremap(i32 noundef %.sink395, i32 noundef %cond130) #13
  %39 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call132, ptr %hostdata, align 8
  %tobool134.not = icmp eq ptr %call132, null
  br i1 %tobool134.not, label %if.then135, label %do.body154

if.then135:                                       ; preds = %if.end97
  %40 = ptrtoint ptr %host55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host55, align 4
  %tobool137.not = icmp eq ptr %41, null
  br i1 %tobool137.not, label %do.end149, label %do.end141

do.end141:                                        ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #15
  %host_no144 = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %host_no144 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %host_no144, align 4
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %43, i32 noundef 6, i32 noundef 53, ptr noundef nonnull @.str.33) #16
  br label %out_release_mem_region

do.end149:                                        ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #15
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 53, ptr noundef nonnull @.str.33) #16
  br label %out_release_mem_region

do.body154:                                       ; preds = %if.end97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !802
  tail call void @arm_heavy_mb() #13
  %44 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hostdata, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 1073741824) #13, !srcloc !803
  %call158 = tail call fastcc i32 @twa_reset_sequence(ptr noundef %hostdata, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %do.body154.out_iounmap_crit_edge

do.body154.out_iounmap_crit_edge:                 ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_iounmap

if.end161:                                        ; preds = %do.body154
  %46 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %device, align 2
  %48 = and i16 %47, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4100, i16 %48)
  %switch = icmp eq i16 %48, 4100
  %spec.select = select i1 %switch, i32 32, i32 16
  %49 = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 0, i32 21
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %spec.select, ptr %49, align 4
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 0, i32 24
  %51 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 16, ptr %max_cmd_len, align 4
  %working_srl = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 37, i32 1
  %52 = ptrtoint ptr %working_srl to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %working_srl, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28, i16 %53)
  %cmp175 = icmp ult i16 %53, 28
  %54 = select i1 %cmp175, i64 1, i64 16
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 0, i32 22
  %55 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %max_lun, align 8
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 0, i32 20
  %56 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %max_channel, align 8
  %call.i382 = tail call i32 @scsi_add_host_with_dma(ptr noundef %call36, ptr noundef %dev, ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i382)
  %tobool181.not = icmp eq i32 %call.i382, 0
  br i1 %tobool181.not, label %if.end200, label %if.then182

if.then182:                                       ; preds = %if.end161
  %57 = ptrtoint ptr %host55 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %host55, align 4
  %tobool184.not = icmp eq ptr %58, null
  br i1 %tobool184.not, label %do.end196, label %do.end188

do.end188:                                        ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #15
  %host_no191 = getelementptr inbounds %struct.Scsi_Host, ptr %58, i32 0, i32 17
  %59 = ptrtoint ptr %host_no191 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %host_no191, align 4
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %60, i32 noundef 6, i32 noundef 39, ptr noundef nonnull @.str.38) #16
  br label %out_iounmap

do.end196:                                        ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #15
  %call198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 39, ptr noundef nonnull @.str.38) #16
  br label %out_iounmap

if.end200:                                        ; preds = %if.end161
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %61 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call36, ptr %driver_data.i.i, align 4
  %host_no205 = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 0, i32 17
  %62 = ptrtoint ptr %host_no205 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %host_no205, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  %call206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %63, i32 noundef %.sink395, i32 noundef %65) #16
  %66 = ptrtoint ptr %host_no205 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %host_no205, align 4
  %call212 = tail call fastcc ptr @twa_get_param(ptr noundef %hostdata, i32 noundef 0, i32 noundef 1026, i32 noundef 3, i32 noundef 16)
  %call213 = tail call fastcc ptr @twa_get_param(ptr noundef %hostdata, i32 noundef 1, i32 noundef 1026, i32 noundef 4, i32 noundef 16)
  %call214 = tail call fastcc ptr @twa_get_param(ptr noundef %hostdata, i32 noundef 2, i32 noundef 1027, i32 noundef 3, i32 noundef 1)
  %68 = ptrtoint ptr %call214 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call214, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %67, ptr noundef %call212, ptr noundef %call213, i32 noundef %70) #16
  %71 = load i32, ptr @use_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool216.not = icmp eq i32 %71, 0
  br i1 %tobool216.not, label %if.end200.if.end225_crit_edge, label %land.lhs.true

if.end200.if.end225_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end225

land.lhs.true:                                    ; preds = %if.end200
  %72 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4098, i16 %73)
  %cmp219.not = icmp eq i16 %73, 4098
  br i1 %cmp219.not, label %land.lhs.true.if.end225_crit_edge, label %land.lhs.true221

land.lhs.true.if.end225_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end225

land.lhs.true221:                                 ; preds = %land.lhs.true
  %call222 = tail call i32 @pci_enable_msi(ptr noundef %pdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %if.then224, label %land.lhs.true221.if.end225_crit_edge

land.lhs.true221.if.end225_crit_edge:             ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end225

if.then224:                                       ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 3, i32 50, i32 10, i32 1, i32 4, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #13
  br label %if.end225

if.end225:                                        ; preds = %if.then224, %land.lhs.true221.if.end225_crit_edge, %land.lhs.true.if.end225_crit_edge, %if.end200.if.end225_crit_edge
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq, align 4
  %call.i383 = tail call i32 @request_threaded_irq(i32 noundef %75, ptr noundef nonnull @twa_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %hostdata) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i383)
  %tobool228.not = icmp eq i32 %call.i383, 0
  br i1 %tobool228.not, label %if.end247, label %if.then229

if.then229:                                       ; preds = %if.end225
  %76 = ptrtoint ptr %host55 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %host55, align 4
  %tobool231.not = icmp eq ptr %77, null
  br i1 %tobool231.not, label %do.end243, label %do.end235

do.end235:                                        ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #15
  %host_no238 = getelementptr inbounds %struct.Scsi_Host, ptr %77, i32 0, i32 17
  %78 = ptrtoint ptr %host_no238 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %host_no238, align 4
  %call239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %79, i32 noundef 6, i32 noundef 48, ptr noundef nonnull @.str.49) #16
  br label %out_remove_host

do.end243:                                        ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #15
  %call245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 48, ptr noundef nonnull @.str.49) #16
  br label %out_remove_host

if.end247:                                        ; preds = %if.end225
  %80 = load i32, ptr @twa_device_extension_count, align 4
  %arrayidx248 = getelementptr [32 x ptr], ptr @twa_device_extension_list, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %hostdata, ptr %arrayidx248, align 4
  %inc = add i32 %80, 1
  store i32 %inc, ptr @twa_device_extension_count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !804
  tail call void @arm_heavy_mb() #13
  %82 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hostdata, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 -2143288320) #13, !srcloc !803
  tail call void @scsi_scan_host(ptr noundef nonnull %call36) #13
  %84 = load i32, ptr @twa_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp253 = icmp eq i32 %84, -1
  br i1 %cmp253, label %if.then255, label %if.end247.cleanup_crit_edge

if.end247.cleanup_crit_edge:                      ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then255:                                       ; preds = %if.end247
  %call.i384 = tail call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.52, ptr noundef nonnull @twa_fops) #13
  store i32 %call.i384, ptr @twa_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i384)
  %cmp257 = icmp slt i32 %call.i384, 0
  br i1 %cmp257, label %do.end264, label %if.then255.cleanup_crit_edge

if.then255.cleanup_crit_edge:                     ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end264:                                        ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %host_no205 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %host_no205, align 4
  %call267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %86, i32 noundef 6, i32 noundef 41, ptr noundef nonnull @.str.55) #16
  br label %cleanup

out_remove_host:                                  ; preds = %do.end243, %do.end235
  %flags277 = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 3, i32 50, i32 10, i32 1, i32 4, i32 7
  %87 = ptrtoint ptr %flags277 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %flags277, align 4
  %89 = and i32 %88, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool279.not = icmp eq i32 %89, 0
  br i1 %tobool279.not, label %out_remove_host.if.end281_crit_edge, label %if.then280

out_remove_host.if.end281_crit_edge:              ; preds = %out_remove_host
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end281

if.then280:                                       ; preds = %out_remove_host
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_disable_msi(ptr noundef %pdev) #13
  br label %if.end281

if.end281:                                        ; preds = %if.then280, %out_remove_host.if.end281_crit_edge
  tail call void @scsi_remove_host(ptr noundef nonnull %call36) #13
  br label %out_iounmap

out_iounmap:                                      ; preds = %if.end281, %do.end196, %do.end188, %do.body154.out_iounmap_crit_edge
  %retval1.1 = phi i32 [ %call.i382, %do.end188 ], [ %call.i382, %do.end196 ], [ %call.i383, %if.end281 ], [ -12, %do.body154.out_iounmap_crit_edge ]
  %90 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hostdata, align 8
  tail call void @iounmap(ptr noundef %91) #13
  br label %out_release_mem_region

out_release_mem_region:                           ; preds = %out_iounmap, %do.end149, %do.end141
  %retval1.2 = phi i32 [ %retval1.1, %out_iounmap ], [ -12, %do.end149 ], [ -12, %do.end141 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #13
  br label %out_free_device_extension

out_free_device_extension:                        ; preds = %out_release_mem_region, %do.end93, %do.end85, %do.end72, %do.end64
  %retval1.3 = phi i32 [ %call77, %do.end85 ], [ %call77, %do.end93 ], [ %retval1.2, %out_release_mem_region ], [ -12, %do.end72 ], [ -12, %do.end64 ]
  %command_packet_virt.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 3
  %92 = ptrtoint ptr %command_packet_virt.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %command_packet_virt.i, align 4
  %tobool.not.i385 = icmp eq ptr %93, null
  br i1 %tobool.not.i385, label %out_free_device_extension.if.end.i_crit_edge, label %if.then.i386

out_free_device_extension.if.end.i_crit_edge:     ; preds = %out_free_device_extension
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i386:                                     ; preds = %out_free_device_extension
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tw_pci_dev, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  %command_packet_phys.i = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 2, i32 49, i32 0, i32 7, i32 0, i32 2
  %96 = ptrtoint ptr %command_packet_phys.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %command_packet_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 262144, ptr noundef nonnull %93, i32 noundef %97, i32 noundef 0) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i386, %out_free_device_extension.if.end.i_crit_edge
  %generic_buffer_virt.i = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 1, i32 0, i32 1
  %98 = ptrtoint ptr %generic_buffer_virt.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %generic_buffer_virt.i, align 4
  %tobool5.not.i = icmp eq ptr %99, null
  br i1 %tobool5.not.i, label %if.end.i.twa_free_device_extension.exit_crit_edge, label %if.then6.i

if.end.i.twa_free_device_extension.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_free_device_extension.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tw_pci_dev, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %101, i32 0, i32 44
  %generic_buffer_phys.i = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 1, i32 49, i32 12, i32 4, i32 1
  %102 = ptrtoint ptr %generic_buffer_phys.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %generic_buffer_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev8.i, i32 noundef 131072, ptr noundef nonnull %99, i32 noundef %103, i32 noundef 0) #13
  br label %twa_free_device_extension.exit

twa_free_device_extension.exit:                   ; preds = %if.then6.i, %if.end.i.twa_free_device_extension.exit_crit_edge
  %event_queue.i387 = getelementptr inbounds %struct.Scsi_Host, ptr %call36, i32 3, i32 50, i32 10, i32 3
  %104 = ptrtoint ptr %event_queue.i387 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %event_queue.i387, align 8
  tail call void @kfree(ptr noundef %105) #13
  tail call void @scsi_host_put(ptr noundef nonnull %call36) #13
  br label %out_disable_device

out_disable_device:                               ; preds = %twa_free_device_extension.exit, %do.end50, %do.end31, %do.end7
  %retval1.4 = phi i32 [ %call, %do.end7 ], [ -19, %do.end31 ], [ %retval1.3, %twa_free_device_extension.exit ], [ -12, %do.end50 ]
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  br label %cleanup

cleanup:                                          ; preds = %out_disable_device, %do.end264, %if.then255.cleanup_crit_edge, %if.end247.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.4, %out_disable_device ], [ 0, %if.then255.cleanup_crit_edge ], [ 0, %do.end264 ], [ 0, %if.end247.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twa_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %host1 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 50, i32 10, i32 1, i32 4, i32 6
  %2 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host1, align 4
  tail call void @scsi_remove_host(ptr noundef %3) #13
  %4 = load i32, ptr @twa_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp sgt i32 %4, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__unregister_chrdev(i32 noundef %4, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.52) #13
  store i32 -1, ptr @twa_major, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @__twa_shutdown(ptr noundef %hostdata)
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 50, i32 10, i32 1, i32 4, i32 7
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @pci_disable_msi(ptr noundef %pdev) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %8 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hostdata, align 8
  tail call void @iounmap(ptr noundef %9) #13
  tail call void @pci_release_regions(ptr noundef %pdev) #13
  %command_packet_virt.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 3
  %10 = ptrtoint ptr %command_packet_virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %command_packet_virt.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end4.if.end.i_crit_edge, label %if.then.i

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %tw_pci_dev.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 50, i32 2
  %12 = ptrtoint ptr %tw_pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tw_pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %command_packet_phys.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 49, i32 0, i32 7, i32 0, i32 2
  %14 = ptrtoint ptr %command_packet_phys.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %command_packet_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 262144, ptr noundef nonnull %11, i32 noundef %15, i32 noundef 0) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end4.if.end.i_crit_edge
  %generic_buffer_virt.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %generic_buffer_virt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %generic_buffer_virt.i, align 4
  %tobool5.not.i = icmp eq ptr %17, null
  br i1 %tobool5.not.i, label %if.end.i.twa_free_device_extension.exit_crit_edge, label %if.then6.i

if.end.i.twa_free_device_extension.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_free_device_extension.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %tw_pci_dev7.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 50, i32 2
  %18 = ptrtoint ptr %tw_pci_dev7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tw_pci_dev7.i, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %generic_buffer_phys.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 12, i32 4, i32 1
  %20 = ptrtoint ptr %generic_buffer_phys.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %generic_buffer_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev8.i, i32 noundef 131072, ptr noundef nonnull %17, i32 noundef %21, i32 noundef 0) #13
  br label %twa_free_device_extension.exit

twa_free_device_extension.exit:                   ; preds = %if.then6.i, %if.end.i.twa_free_device_extension.exit_crit_edge
  %event_queue.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 50, i32 10, i32 3
  %22 = ptrtoint ptr %event_queue.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %event_queue.i, align 8
  tail call void @kfree(ptr noundef %23) #13
  %24 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host1, align 4
  tail call void @scsi_host_put(ptr noundef %25) #13
  tail call void @pci_disable_device(ptr noundef %pdev) #13
  %26 = load i32, ptr @twa_device_extension_count, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr @twa_device_extension_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twa_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  tail call fastcc void @__twa_shutdown(ptr noundef %hostdata)
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
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twa_reset_sequence(ptr noundef %tw_dev, i32 noundef %soft_reset) unnamed_addr #2 align 64 {
entry:
  %cdb.i = alloca [16 x i8], align 1
  %sglist.i = alloca [1 x %struct.TAG_TW_SG_Entry], align 8
  %fw_on_ctlr_srl.i = alloca i16, align 2
  %fw_on_ctlr_arch_id.i = alloca i16, align 2
  %fw_on_ctlr_branch.i = alloca i16, align 2
  %fw_on_ctlr_build.i = alloca i16, align 2
  %init_connect_result.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13
  %tw_pci_dev.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 5
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %tw_compat_info.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 37
  %working_srl.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 37, i32 1
  %working_branch.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 37, i32 2
  %working_build.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 37, i32 3
  %driver_srl_high.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 37, i32 4
  %driver_branch_high.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 37, i32 5
  %driver_build_high.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 37, i32 6
  %driver_srl_low.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 37, i32 7
  %driver_branch_low.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 37, i32 8
  %driver_build_low.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 37, i32 9
  %fw_on_ctlr_srl95.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 37, i32 10
  %fw_on_ctlr_branch97.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 37, i32 11
  %fw_on_ctlr_build99.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 37, i32 12
  %0 = getelementptr inbounds [16 x i8], ptr %cdb.i, i32 0, i32 4
  %command_packet_virt.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 3
  %1 = getelementptr inbounds i8, ptr %cdb.i, i32 1
  %generic_buffer_phys.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %soft_reset)
  %tobool.not.i159 = icmp eq i32 %soft_reset, 0
  %..i = zext i1 %tobool.not.i159 to i32
  %srb.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 6
  %posted_request_count67.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14
  %generic_buffer_virt.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry
  %tries.0186 = phi i32 [ 0, %entry ], [ %tries.0.be, %while.cond.backedge.while.body_crit_edge ]
  %do_soft_reset.0185 = phi i32 [ %soft_reset, %entry ], [ 1, %while.cond.backedge.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_soft_reset.0185)
  %tobool.not = icmp eq i32 %do_soft_reset.0185, 0
  br i1 %tobool.not, label %while.body.if.end17_crit_edge, label %do.body

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

do.body:                                          ; preds = %while.body
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !805
  call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tw_dev, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1073942272) #13, !srcloc !803
  %4 = ptrtoint ptr %tw_pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tw_pci_dev.i, align 4
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4098, i16 %7)
  %cmp.not.i = icmp eq i16 %7, 4098
  br i1 %cmp.not.i, label %do.body.if.end17_crit_edge, label %if.then.i

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then.i:                                        ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 3000
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then.i
  %response_que_value.0.i = phi i32 [ 0, %if.then.i ], [ %12, %while.body.i.while.cond.i_crit_edge ]
  %and.i = and i32 %response_que_value.0.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and.i)
  %cmp3.not.i = icmp eq i32 %and.i, 65535
  br i1 %cmp3.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %9 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tw_dev, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 48
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !806
  %12 = call i32 @llvm.bswap.i32(i32 %11) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !807
  call void @msleep(i32 noundef 1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %13
  %cmp6.i = icmp slt i32 %sub.i, 0
  br i1 %cmp6.i, label %if.then3, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @msleep(i32 noundef 500) #13
  br label %if.end17

if.then3:                                         ; preds = %while.body.i
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %do.end13, label %do.end8

do.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %host_no, align 4
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %17, i32 noundef 6, i32 noundef 54, ptr noundef nonnull @.str.122) #16
  br label %while.cond.backedge

do.end13:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 54, ptr noundef nonnull @.str.122) #16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end106, %do.end98, %do.end79, %do.end71, %do.end57, %do.end49, %do.end35, %do.end27, %do.end13, %do.end8
  %tries.0.be = add nuw nsw i32 %tries.0186, 1
  %exitcond.not = icmp eq i32 %tries.0.be, 2
  br i1 %exitcond.not, label %while.cond.backedge.out_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.cond.backedge.out_crit_edge:                ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end17:                                         ; preds = %while.end.i, %do.body.if.end17_crit_edge, %while.body.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %do_soft_reset.0185)
  %cmp18 = icmp eq i32 %do_soft_reset.0185, 1
  %or = select i1 %cmp18, i32 270336, i32 8192
  %18 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tw_dev, align 8
  %add.ptr.i139 = getelementptr i8, ptr %19, i32 4
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139) #13, !srcloc !806
  %21 = call i32 @llvm.bswap.i32(i32 %20) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !808
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = and i32 %21, 15736832
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %23)
  %.not.i = icmp eq i32 %23, 8192
  br i1 %.not.i, label %if.end17.if.end.i_crit_edge, label %if.then.i140

if.end17.if.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i140:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = call fastcc i32 @twa_decode_bits(ptr noundef %tw_dev, i32 noundef %21) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i140, %if.end17.if.end.i_crit_edge
  %and3.i = and i32 %21, %or
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %or)
  %cmp.not4.i = icmp eq i32 %and3.i, %or
  br i1 %cmp.not4.i, label %if.end.i.if.end40_crit_edge, label %while.body.lr.ph.i

if.end.i.if.end40_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

while.body.lr.ph.i:                               ; preds = %if.end.i
  %add.i141 = add i32 %22, 6000
  br label %while.body.i142

while.body.i142:                                  ; preds = %if.end19.i.while.body.i142_crit_edge, %while.body.lr.ph.i
  %24 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tw_dev, align 8
  %add.ptr8.i = getelementptr i8, ptr %25, i32 4
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #13, !srcloc !806
  %27 = call i32 @llvm.bswap.i32(i32 %26) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !809
  %28 = and i32 %27, 15736832
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %28)
  %.not2.i = icmp eq i32 %28, 8192
  br i1 %.not2.i, label %while.body.i142.if.end16.i_crit_edge, label %if.then14.i

while.body.i142.if.end16.i_crit_edge:             ; preds = %while.body.i142
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

if.then14.i:                                      ; preds = %while.body.i142
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i = call fastcc i32 @twa_decode_bits(ptr noundef %tw_dev, i32 noundef %27) #13
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %while.body.i142.if.end16.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i143 = sub i32 %add.i141, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i143)
  %cmp17.i = icmp slt i32 %sub.i143, 0
  br i1 %cmp17.i, label %if.then21, label %if.end19.i

if.end19.i:                                       ; preds = %if.end16.i
  call void @msleep(i32 noundef 50) #13
  %and.i144 = and i32 %27, %or
  %cmp.not.i145 = icmp eq i32 %and.i144, %or
  br i1 %cmp.not.i145, label %if.end19.i.if.end40_crit_edge, label %if.end19.i.while.body.i142_crit_edge

if.end19.i.while.body.i142_crit_edge:             ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i142

if.end19.i.if.end40_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then21:                                        ; preds = %if.end16.i
  %30 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host, align 4
  %tobool23.not = icmp eq ptr %31, null
  br i1 %tobool23.not, label %do.end35, label %do.end27

do.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %host_no30 = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 17
  %32 = ptrtoint ptr %host_no30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %host_no30, align 4
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %33, i32 noundef 6, i32 noundef 31, ptr noundef nonnull @.str.127) #16
  br label %while.cond.backedge

do.end35:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 31, ptr noundef nonnull @.str.127) #16
  br label %while.cond.backedge

if.end40:                                         ; preds = %if.end19.i.if.end40_crit_edge, %if.end.i.if.end40_crit_edge
  %34 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tw_dev, align 8
  %add.ptr.i147 = getelementptr i8, ptr %35, i32 4
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147) #13, !srcloc !806
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !810
  %37 = and i32 %36, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp24.i = icmp eq i32 %37, 0
  br i1 %cmp24.i, label %if.end40.while.body.i148_crit_edge, label %if.end40.if.end62_crit_edge

if.end40.if.end62_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.end40.while.body.i148_crit_edge:               ; preds = %if.end40
  br label %while.body.i148

while.body.i148:                                  ; preds = %while.body.i148.while.body.i148_crit_edge, %if.end40.while.body.i148_crit_edge
  %count.025.i = phi i32 [ %inc.i, %while.body.i148.while.body.i148_crit_edge ], [ 0, %if.end40.while.body.i148_crit_edge ]
  %38 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tw_dev, align 8
  %add.ptr7.i = getelementptr i8, ptr %39, i32 12
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #13, !srcloc !806
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !811
  %41 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tw_dev, align 8
  %add.ptr14.i = getelementptr i8, ptr %42, i32 4
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #13, !srcloc !806
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !812
  %inc.i = add nuw nsw i32 %count.025.i, 1
  %44 = and i32 %43, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i = icmp eq i32 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %count.025.i)
  %cmp3.i = icmp ult i32 %count.025.i, 255
  %or.cond.i = select i1 %cmp.i, i1 %cmp3.i, i1 false
  br i1 %or.cond.i, label %while.body.i148.while.body.i148_crit_edge, label %twa_empty_response_queue.exit

while.body.i148.while.body.i148_crit_edge:        ; preds = %while.body.i148
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i148

twa_empty_response_queue.exit:                    ; preds = %while.body.i148
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc.i)
  %phi.cmp.i.not = icmp eq i32 %inc.i, 256
  br i1 %phi.cmp.i.not, label %if.then43, label %twa_empty_response_queue.exit.if.end62_crit_edge

twa_empty_response_queue.exit.if.end62_crit_edge: ; preds = %twa_empty_response_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then43:                                        ; preds = %twa_empty_response_queue.exit
  %45 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host, align 4
  %tobool45.not = icmp eq ptr %46, null
  br i1 %tobool45.not, label %do.end57, label %do.end49

do.end49:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  %host_no52 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %host_no52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %host_no52, align 4
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %48, i32 noundef 6, i32 noundef 32, ptr noundef nonnull @.str.132) #16
  br label %while.cond.backedge

do.end57:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 32, ptr noundef nonnull @.str.132) #16
  br label %while.cond.backedge

if.end62:                                         ; preds = %twa_empty_response_queue.exit.if.end62_crit_edge, %if.end40.if.end62_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_on_ctlr_srl.i) #13
  %49 = ptrtoint ptr %fw_on_ctlr_srl.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %fw_on_ctlr_srl.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_on_ctlr_arch_id.i) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_on_ctlr_branch.i) #13
  %50 = ptrtoint ptr %fw_on_ctlr_branch.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %fw_on_ctlr_branch.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fw_on_ctlr_build.i) #13
  %51 = ptrtoint ptr %fw_on_ctlr_build.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %fw_on_ctlr_build.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %init_connect_result.i) #13
  %52 = ptrtoint ptr %init_connect_result.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %init_connect_result.i, align 4
  %call.i = call fastcc i32 @twa_initconnection(ptr noundef %tw_dev, i32 noundef 256, i32 noundef 2, i16 noundef zeroext 35, i16 noundef zeroext 5, i16 noundef zeroext 0, ptr noundef nonnull %fw_on_ctlr_srl.i, ptr noundef nonnull %fw_on_ctlr_arch_id.i, ptr noundef nonnull %fw_on_ctlr_branch.i, ptr noundef nonnull %fw_on_ctlr_build.i, ptr noundef nonnull %init_connect_result.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end11.i, label %if.then.i150

if.then.i150:                                     ; preds = %if.end62
  %53 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %host, align 4
  %tobool2.not.i = icmp eq ptr %54, null
  br i1 %tobool2.not.i, label %do.end8.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #15
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %54, i32 0, i32 17
  %55 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %host_no.i, align 4
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %56, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.146) #16
  br label %if.then65

do.end8.i:                                        ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #15
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.146) #16
  br label %if.then65

if.end11.i:                                       ; preds = %if.end62
  %57 = ptrtoint ptr %fw_on_ctlr_srl.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %fw_on_ctlr_srl.i, align 2
  %59 = ptrtoint ptr %working_srl.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %working_srl.i, align 2
  %60 = ptrtoint ptr %fw_on_ctlr_branch.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %fw_on_ctlr_branch.i, align 2
  %62 = ptrtoint ptr %working_branch.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %working_branch.i, align 2
  %63 = ptrtoint ptr %fw_on_ctlr_build.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %fw_on_ctlr_build.i, align 2
  %65 = ptrtoint ptr %working_build.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %working_build.i, align 2
  %66 = ptrtoint ptr %init_connect_result.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %init_connect_result.i, align 4
  %and.i151 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i151)
  %tobool14.not.i = icmp eq i32 %and.i151, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end11.i.if.end89_crit_edge

if.end11.i.if.end89_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then15.i:                                      ; preds = %if.end11.i
  %call16.i = call fastcc i32 @twa_initconnection(ptr noundef %tw_dev, i32 noundef 256, i32 noundef 2, i16 noundef zeroext 24, i16 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef nonnull %fw_on_ctlr_srl.i, ptr noundef nonnull %fw_on_ctlr_arch_id.i, ptr noundef nonnull %fw_on_ctlr_branch.i, ptr noundef nonnull %fw_on_ctlr_build.i, ptr noundef nonnull %init_connect_result.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end36.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.then15.i
  %68 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %host, align 4
  %tobool20.not.i = icmp eq ptr %69, null
  br i1 %tobool20.not.i, label %do.end32.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  %host_no27.i = getelementptr inbounds %struct.Scsi_Host, ptr %69, i32 0, i32 17
  %70 = ptrtoint ptr %host_no27.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %host_no27.i, align 4
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %71, i32 noundef 6, i32 noundef 10, ptr noundef nonnull @.str.151) #16
  br label %if.then65

do.end32.i:                                       ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #15
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 10, ptr noundef nonnull @.str.151) #16
  br label %if.then65

if.end36.i:                                       ; preds = %if.then15.i
  %72 = ptrtoint ptr %init_connect_result.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %init_connect_result.i, align 4
  %and37.i = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.end78.i

if.then39.i:                                      ; preds = %if.end36.i
  %74 = ptrtoint ptr %fw_on_ctlr_srl.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %fw_on_ctlr_srl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %75)
  %cmp.i152 = icmp ult i16 %75, 35
  %76 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %host, align 4
  %tobool43.not.i = icmp eq ptr %77, null
  br i1 %cmp.i152, label %if.then41.i, label %if.else59.i

if.then41.i:                                      ; preds = %if.then39.i
  br i1 %tobool43.not.i, label %do.end55.i, label %do.end47.i

do.end47.i:                                       ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #15
  %host_no50.i = getelementptr inbounds %struct.Scsi_Host, ptr %77, i32 0, i32 17
  %78 = ptrtoint ptr %host_no50.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %host_no50.i, align 4
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %79, i32 noundef 6, i32 noundef 50, ptr noundef nonnull @.str.156) #16
  br label %if.then65

do.end55.i:                                       ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #15
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 50, ptr noundef nonnull @.str.156) #16
  br label %if.then65

if.else59.i:                                      ; preds = %if.then39.i
  br i1 %tobool43.not.i, label %do.end73.i, label %do.end65.i

do.end65.i:                                       ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #15
  %host_no68.i = getelementptr inbounds %struct.Scsi_Host, ptr %77, i32 0, i32 17
  %80 = ptrtoint ptr %host_no68.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %host_no68.i, align 4
  %call69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %81, i32 noundef 6, i32 noundef 51, ptr noundef nonnull @.str.161) #16
  br label %if.then65

do.end73.i:                                       ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #15
  %call75.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 51, ptr noundef nonnull @.str.161) #16
  br label %if.then65

if.end78.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %working_srl.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 24, ptr %working_srl.i, align 2
  %83 = ptrtoint ptr %working_branch.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %working_branch.i, align 2
  %84 = ptrtoint ptr %working_build.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %working_build.i, align 2
  br label %if.end89

if.then65:                                        ; preds = %do.end73.i, %do.end65.i, %do.end55.i, %do.end47.i, %do.end32.i, %do.end24.i, %do.end8.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %init_connect_result.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_on_ctlr_build.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_on_ctlr_branch.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_on_ctlr_arch_id.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_on_ctlr_srl.i) #13
  %85 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %host, align 4
  %tobool67.not = icmp eq ptr %86, null
  br i1 %tobool67.not, label %do.end79, label %do.end71

do.end71:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  %host_no74 = getelementptr inbounds %struct.Scsi_Host, ptr %86, i32 0, i32 17
  %87 = ptrtoint ptr %host_no74 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %host_no74, align 4
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %88, i32 noundef 6, i32 noundef 33, ptr noundef nonnull @.str.137) #16
  br label %while.cond.backedge

do.end79:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 33, ptr noundef nonnull @.str.137) #16
  br label %while.cond.backedge

if.end89:                                         ; preds = %if.end78.i, %if.end11.i.if.end89_crit_edge
  %call87.i = call i32 @strlcpy(ptr noundef %tw_compat_info.i, ptr noundef nonnull @.str.2, i32 noundef 32) #13
  %89 = ptrtoint ptr %driver_srl_high.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 35, ptr %driver_srl_high.i, align 2
  %90 = ptrtoint ptr %driver_branch_high.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %driver_branch_high.i, align 2
  %91 = ptrtoint ptr %driver_build_high.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %driver_build_high.i, align 2
  %92 = ptrtoint ptr %driver_srl_low.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 24, ptr %driver_srl_low.i, align 2
  %93 = ptrtoint ptr %driver_branch_low.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %driver_branch_low.i, align 2
  %94 = ptrtoint ptr %driver_build_low.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 1, ptr %driver_build_low.i, align 2
  %95 = ptrtoint ptr %fw_on_ctlr_srl.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %fw_on_ctlr_srl.i, align 2
  %97 = ptrtoint ptr %fw_on_ctlr_srl95.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %fw_on_ctlr_srl95.i, align 2
  %98 = ptrtoint ptr %fw_on_ctlr_branch.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %fw_on_ctlr_branch.i, align 2
  %100 = ptrtoint ptr %fw_on_ctlr_branch97.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %fw_on_ctlr_branch97.i, align 2
  %101 = ptrtoint ptr %fw_on_ctlr_build.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %fw_on_ctlr_build.i, align 2
  %103 = ptrtoint ptr %fw_on_ctlr_build99.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %fw_on_ctlr_build99.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %init_connect_result.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_on_ctlr_build.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_on_ctlr_branch.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_on_ctlr_arch_id.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fw_on_ctlr_srl.i) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb.i) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sglist.i) #13
  %104 = ptrtoint ptr %command_packet_virt.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %command_packet_virt.i, align 4
  %106 = call ptr @memset(ptr %105, i32 0, i32 1024)
  %107 = call ptr @memset(ptr %1, i32 0, i32 15)
  %108 = ptrtoint ptr %cdb.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 3, ptr %cdb.i, align 1
  %109 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -128, ptr %0, align 1
  %110 = ptrtoint ptr %sglist.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 131072, ptr %sglist.i, align 8
  %111 = ptrtoint ptr %generic_buffer_phys.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %generic_buffer_phys.i, align 4
  %113 = call i32 @llvm.bswap.i32(i32 %112) #13
  %114 = ptrtoint ptr %sglist.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %sglist.i, align 8
  %and.i154 = and i32 %112, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154)
  %tobool9.not.i = icmp eq i32 %and.i154, 0
  br i1 %tobool9.not.i, label %if.end21.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end89
  %115 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %host, align 4
  %tobool11.not.i = icmp eq ptr %116, null
  br i1 %tobool11.not.i, label %do.end17.i, label %do.end.i158

do.end.i158:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #15
  %host_no.i156 = getelementptr inbounds %struct.Scsi_Host, ptr %116, i32 0, i32 17
  %117 = ptrtoint ptr %host_no.i156 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %host_no.i156, align 4
  %call.i157 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %118, i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.288) #16
  br label %twa_aen_drain_queue.exit.thread

do.end17.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #15
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 1, ptr noundef nonnull @.str.288) #16
  br label %twa_aen_drain_queue.exit.thread

if.end21.i:                                       ; preds = %if.end89
  %119 = ptrtoint ptr %srb.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %srb.i, align 4
  br label %do.body23.i

do.body23.i:                                      ; preds = %do.cond83.i.do.body23.i_crit_edge, %if.end21.i
  %first_reset.1.i = phi i32 [ %..i, %if.end21.i ], [ %first_reset.2127.i, %do.cond83.i.do.body23.i_crit_edge ]
  %count.0.i = phi i32 [ 0, %if.end21.i ], [ %inc.i160, %do.cond83.i.do.body23.i_crit_edge ]
  %call25.i = call fastcc i32 @twa_scsiop_execute_scsi(ptr noundef %tw_dev, i32 noundef 0, ptr noundef nonnull %cdb.i, i32 noundef 1, ptr noundef nonnull %sglist.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end45.i, label %if.then27.i

if.then27.i:                                      ; preds = %do.body23.i
  %120 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %host, align 4
  %tobool29.not.i = icmp eq ptr %121, null
  br i1 %tobool29.not.i, label %do.end41.i, label %do.end33.i

do.end33.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  %host_no36.i = getelementptr inbounds %struct.Scsi_Host, ptr %121, i32 0, i32 17
  %122 = ptrtoint ptr %host_no36.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %host_no36.i, align 4
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %123, i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.293) #16
  br label %twa_aen_drain_queue.exit.thread

do.end41.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.293) #16
  br label %twa_aen_drain_queue.exit.thread

if.end45.i:                                       ; preds = %do.body23.i
  %call46.i = call fastcc i32 @twa_poll_response(ptr noundef %tw_dev, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end66.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end45.i
  %124 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %host, align 4
  %tobool50.not.i = icmp eq ptr %125, null
  br i1 %tobool50.not.i, label %do.end62.i, label %do.end54.i

do.end54.i:                                       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #15
  %host_no57.i = getelementptr inbounds %struct.Scsi_Host, ptr %125, i32 0, i32 17
  %126 = ptrtoint ptr %host_no57.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %host_no57.i, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %127, i32 noundef 6, i32 noundef 3, ptr noundef nonnull @.str.298) #16
  br label %if.end65.i

do.end62.i:                                       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #15
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 3, ptr noundef nonnull @.str.298) #16
  br label %if.end65.i

if.end65.i:                                       ; preds = %do.end62.i, %do.end54.i
  %128 = ptrtoint ptr %posted_request_count67.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %posted_request_count67.i, align 4
  %dec.i = add i32 %129, -1
  store i32 %dec.i, ptr %posted_request_count67.i, align 4
  br label %twa_aen_drain_queue.exit.thread

if.end66.i:                                       ; preds = %if.end45.i
  %130 = ptrtoint ptr %posted_request_count67.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %posted_request_count67.i, align 4
  %dec68.i = add i32 %131, -1
  store i32 %dec68.i, ptr %posted_request_count67.i, align 4
  %132 = ptrtoint ptr %generic_buffer_virt.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %generic_buffer_virt.i, align 4
  %error.i = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %133, i32 0, i32 1, i32 1
  %134 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %error.i, align 2
  %136 = call i16 @llvm.bswap.i16(i16 %135) #13
  %inc.i160 = add nuw nsw i32 %count.0.i, 1
  %137 = zext i16 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values)
  switch i16 %136, label %if.end66.i.if.then81.i_crit_edge [
    i16 0, label %sw.bb.i
    i16 1, label %sw.epilog.i
    i16 49, label %if.end66.i.do.cond83.i_crit_edge
  ]

if.end66.i.do.cond83.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond83.i

if.end66.i.if.then81.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then81.i

sw.bb.i:                                          ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %first_reset.1.i)
  %cmp.not.i161 = icmp eq i32 %first_reset.1.i, 1
  br i1 %cmp.not.i161, label %twa_aen_drain_queue.exit, label %sw.bb.i.twa_aen_drain_queue.exit.thread_crit_edge

sw.bb.i.twa_aen_drain_queue.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_aen_drain_queue.exit.thread

sw.epilog.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_reset.1.i)
  %cmp75.i = icmp eq i32 %first_reset.1.i, 0
  br i1 %cmp75.i, label %sw.epilog.i.do.cond83.i_crit_edge, label %sw.epilog.i.if.then81.i_crit_edge

sw.epilog.i.if.then81.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then81.i

sw.epilog.i.do.cond83.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond83.i

if.then81.i:                                      ; preds = %sw.epilog.i.if.then81.i_crit_edge, %if.end66.i.if.then81.i_crit_edge
  %first_reset.2133.i = phi i32 [ 1, %sw.epilog.i.if.then81.i_crit_edge ], [ %first_reset.1.i, %if.end66.i.if.then81.i_crit_edge ]
  call fastcc void @twa_aen_queue_event(ptr noundef %tw_dev, ptr noundef %133) #13
  br label %do.cond83.i

do.cond83.i:                                      ; preds = %if.then81.i, %sw.epilog.i.do.cond83.i_crit_edge, %if.end66.i.do.cond83.i_crit_edge
  %first_reset.2127.i = phi i32 [ 1, %sw.epilog.i.do.cond83.i_crit_edge ], [ %first_reset.2133.i, %if.then81.i ], [ %first_reset.1.i, %if.end66.i.do.cond83.i_crit_edge ]
  %exitcond.not.i = icmp eq i32 %inc.i160, 255
  br i1 %exitcond.not.i, label %twa_aen_drain_queue.exit.thread174, label %do.cond83.i.do.body23.i_crit_edge

do.cond83.i.do.body23.i_crit_edge:                ; preds = %do.cond83.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body23.i

twa_aen_drain_queue.exit.thread174:               ; preds = %do.cond83.i
  call void @__sanitizer_cov_trace_pc() #15
  %138 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %state.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sglist.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i) #13
  br label %if.then92

twa_aen_drain_queue.exit.thread:                  ; preds = %sw.bb.i.twa_aen_drain_queue.exit.thread_crit_edge, %if.end65.i, %do.end41.i, %do.end33.i, %do.end17.i, %do.end.i158
  %139 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1, ptr %state.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sglist.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i) #13
  br label %if.then92

twa_aen_drain_queue.exit:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %inc.i160)
  %cmp89.i.not = icmp eq i32 %inc.i160, 255
  %140 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %state.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sglist.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb.i) #13
  br i1 %cmp89.i.not, label %twa_aen_drain_queue.exit.if.then92_crit_edge, label %twa_aen_drain_queue.exit.out_crit_edge

twa_aen_drain_queue.exit.out_crit_edge:           ; preds = %twa_aen_drain_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

twa_aen_drain_queue.exit.if.then92_crit_edge:     ; preds = %twa_aen_drain_queue.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then92

if.then92:                                        ; preds = %twa_aen_drain_queue.exit.if.then92_crit_edge, %twa_aen_drain_queue.exit.thread, %twa_aen_drain_queue.exit.thread174
  %141 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %host, align 4
  %tobool94.not = icmp eq ptr %142, null
  br i1 %tobool94.not, label %do.end106, label %do.end98

do.end98:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #15
  %host_no101 = getelementptr inbounds %struct.Scsi_Host, ptr %142, i32 0, i32 17
  %143 = ptrtoint ptr %host_no101 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %host_no101, align 4
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %144, i32 noundef 6, i32 noundef 34, ptr noundef nonnull @.str.142) #16
  br label %while.cond.backedge

do.end106:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #15
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 34, ptr noundef nonnull @.str.142) #16
  br label %while.cond.backedge

out:                                              ; preds = %twa_aen_drain_queue.exit.out_crit_edge, %while.cond.backedge.out_crit_edge
  %retval1.0 = phi i32 [ 1, %while.cond.backedge.out_crit_edge ], [ 0, %twa_aen_drain_queue.exit.out_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @twa_get_param(ptr noundef %tw_dev, i32 noundef %request_id, i32 noundef %table_id, i32 noundef %parameter_id, i32 noundef %parameter_size_bytes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 3, i32 %request_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %command = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 82, ptr %command, align 4
  %size = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %size, align 1
  %conv = trunc i32 %request_id to i8
  %request_id2 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %request_id2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %request_id2, align 2
  %byte6_offset = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %byte6_offset to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 256, ptr %byte6_offset, align 2
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
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %8, align 2
  %conv6 = trunc i32 %parameter_id to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  %parameter_id7 = getelementptr inbounds %struct.TW_Param_Apache, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %parameter_id7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %parameter_id7, align 2
  %conv8 = trunc i32 %parameter_size_bytes to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv8)
  %parameter_size_bytes9 = getelementptr inbounds %struct.TW_Param_Apache, ptr %8, i32 0, i32 2
  %17 = ptrtoint ptr %parameter_size_bytes9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %parameter_size_bytes9, align 2
  %arrayidx10 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 2, i32 %request_id
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %byte8_offset = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 6
  %21 = ptrtoint ptr %byte8_offset to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %byte8_offset, align 4
  %length = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 6, i32 4
  %22 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 131072, ptr %length, align 4
  %call = tail call fastcc i32 @twa_post_command_packet(ptr noundef %tw_dev, i32 noundef %request_id, i8 noundef zeroext 1)
  %call15 = tail call fastcc i32 @twa_poll_response(ptr noundef %tw_dev, i32 noundef %request_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.else25, label %if.then

if.then:                                          ; preds = %entry
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %23 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host, align 4
  %tobool16.not = icmp eq ptr %24, null
  br i1 %tobool16.not, label %do.end22, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %host_no, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %26, i32 noundef 6, i32 noundef 19, ptr noundef nonnull @.str.378) #16
  br label %if.end27

do.end22:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 19, ptr noundef nonnull @.str.378) #16
  br label %if.end27

if.else25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %data = getelementptr inbounds %struct.TW_Param_Apache, ptr %8, i32 0, i32 4
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %do.end22, %do.end
  %retval1.0 = phi ptr [ null, %do.end ], [ null, %do.end22 ], [ %data, %if.else25 ]
  %posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14
  %27 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %posted_request_count, align 4
  %dec = add i32 %28, -1
  store i32 %dec, ptr %posted_request_count, align 4
  %arrayidx28 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13, i32 %request_id
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %arrayidx28, align 4
  ret ptr %retval1.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twa_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 24
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #13
  %4 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_instance, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !806
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !813
  %and = and i32 %7, 14614528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.twa_interrupt_bail_crit_edge, label %if.end

entry.twa_interrupt_bail_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_interrupt_bail

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 25
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.twa_interrupt_bail_crit_edge

if.end.twa_interrupt_bail_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_interrupt_bail

if.end5:                                          ; preds = %if.end
  %11 = and i32 %7, 15736832
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %11)
  %.not = icmp eq i32 %11, 8192
  br i1 %.not, label %if.end5.if.end14_crit_edge, label %if.then8

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then8:                                         ; preds = %if.end5
  %call9 = tail call fastcc i32 @twa_decode_bits(ptr noundef %dev_instance, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end14_crit_edge, label %do.body

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

do.body:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !814
  tail call void @arm_heavy_mb() #13
  %12 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_instance, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 57088) #13, !srcloc !803
  br label %twa_interrupt_bail

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %and15 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end22_crit_edge, label %do.body18

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

do.body18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !815
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_instance, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 2048) #13, !srcloc !803
  br label %if.end22

if.end22:                                         ; preds = %do.body18, %if.end14.if.end22_crit_edge
  %and23 = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end40_crit_edge, label %do.body26

if.end22.if.end40_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

do.body26:                                        ; preds = %if.end22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !816
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_instance, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 1024) #13, !srcloc !803
  %call31 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %do.body26.if.end40_crit_edge

do.body26.if.end40_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then33:                                        ; preds = %do.body26
  %free_head.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 8
  %18 = ptrtoint ptr %free_head.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %free_head.i, align 8
  %idxprom.i = zext i8 %19 to i32
  %arrayidx.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 7, i32 %idxprom.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %21 to i32
  %22 = add i8 %19, 1
  store i8 %22, ptr %free_head.i, align 8
  %arrayidx5.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 13, i32 %conv.i
  %23 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %arrayidx5.i, align 4
  %call34 = tail call fastcc i32 @twa_aen_read_queue(ptr noundef %dev_instance, i32 noundef %conv.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then33.if.end40_crit_edge, label %if.then36

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %free_tail.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 9
  %24 = ptrtoint ptr %free_tail.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %free_tail.i, align 1
  %idxprom.i327 = zext i8 %25 to i32
  %arrayidx.i328 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 7, i32 %idxprom.i327
  %26 = ptrtoint ptr %arrayidx.i328 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %21, ptr %arrayidx.i328, align 1
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32, ptr %arrayidx5.i, align 4
  %28 = add i8 %25, 1
  store i8 %28, ptr %free_tail.i, align 1
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #13
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.then33.if.end40_crit_edge, %do.body26.if.end40_crit_edge, %if.end22.if.end40_crit_edge
  %and41 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end85_crit_edge, label %do.body44

if.end40.if.end85_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

do.body44:                                        ; preds = %if.end40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !817
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_instance, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 512) #13, !srcloc !803
  %pending_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 16
  %31 = ptrtoint ptr %pending_request_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pending_request_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.not355 = icmp eq i32 %32, 0
  br i1 %cmp.not355, label %do.body44.if.end85_crit_edge, label %while.body.lr.ph

do.body44.if.end85_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

while.body.lr.ph:                                 ; preds = %do.body44
  %pending_head = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.then77.while.body_crit_edge, %while.body.lr.ph
  %33 = ptrtoint ptr %pending_head to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pending_head, align 2
  %idxprom = zext i8 %34 to i32
  %arrayidx48 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 10, i32 %idxprom
  %35 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx48, align 1
  %conv = zext i8 %36 to i32
  %arrayidx50 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 13, i32 %conv
  %37 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %38)
  %cmp51.not = icmp eq i32 %38, 8
  br i1 %cmp51.not, label %if.end73, label %if.then53

if.then53:                                        ; preds = %while.body
  %39 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host, align 4
  %tobool55.not = icmp eq ptr %40, null
  br i1 %tobool55.not, label %do.end65, label %do.end59

do.end59:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %host_no, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %42, i32 noundef 6, i32 noundef 25, ptr noundef nonnull @.str.382) #16
  br label %do.body69

do.end65:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 25, ptr noundef nonnull @.str.382) #16
  br label %do.body69

do.body69:                                        ; preds = %do.end65, %do.end59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !818
  tail call void @arm_heavy_mb() #13
  %43 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_instance, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 57088) #13, !srcloc !803
  br label %twa_interrupt_bail

if.end73:                                         ; preds = %while.body
  %call74 = tail call fastcc i32 @twa_post_command_packet(ptr noundef %dev_instance, i32 noundef %conv, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp eq i32 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.end73.if.end85_crit_edge

if.end73.if.end85_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then77:                                        ; preds = %if.end73
  %45 = ptrtoint ptr %pending_head to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pending_head, align 2
  %47 = add i8 %46, 1
  store i8 %47, ptr %pending_head, align 2
  %48 = ptrtoint ptr %pending_request_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pending_request_count, align 4
  %dec = add i32 %49, -1
  store i32 %dec, ptr %pending_request_count, align 4
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.then77.if.end85_crit_edge, label %if.then77.while.body_crit_edge

if.then77.while.body_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.then77.if.end85_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.end85:                                         ; preds = %if.then77.if.end85_crit_edge, %if.end73.if.end85_crit_edge, %do.body44.if.end85_crit_edge, %if.end40.if.end85_crit_edge
  %50 = and i32 %7, 81920
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %50)
  %51 = icmp eq i32 %50, 65536
  br i1 %51, label %while.body93.lr.ph, label %if.end85.twa_interrupt_bail_crit_edge

if.end85.twa_interrupt_bail_crit_edge:            ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_interrupt_bail

while.body93.lr.ph:                               ; preds = %if.end85
  %chrdev_request_id = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 33
  %free_tail.i341 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 9
  %posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 14
  %ioctl_wqueue = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 34
  br label %while.body93

while.body93:                                     ; preds = %if.end242.while.body93_crit_edge, %while.body93.lr.ph
  %52 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_instance, align 8
  %add.ptr97 = getelementptr i8, ptr %53, i32 12
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #13, !srcloc !806
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !819
  %shr = lshr i32 %55, 4
  %and101 = and i32 %shr, 255
  %arrayidx102 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 3, i32 %and101
  %56 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx102, align 4
  %status = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %57, i32 0, i32 1, i32 0, i32 3
  %58 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp104.not = icmp eq i8 %59, 0
  br i1 %cmp104.not, label %while.body93.if.end119_crit_edge, label %if.then106

while.body93.if.end119_crit_edge:                 ; preds = %while.body93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119

if.then106:                                       ; preds = %while.body93
  %arrayidx107 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 6, i32 %and101
  %60 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx107, align 4
  %cmp108.not = icmp eq ptr %61, null
  br i1 %cmp108.not, label %if.else112, label %if.then110

if.then110:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  %call111 = tail call fastcc i32 @twa_fill_sense(ptr noundef %dev_instance, i32 noundef %and101, i32 noundef 1, i32 noundef 1)
  br label %if.end119

if.else112:                                       ; preds = %if.then106
  %62 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %chrdev_request_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and101, i32 %63)
  %cmp113.not = icmp eq i32 %and101, %63
  br i1 %cmp113.not, label %if.else112.if.end119_crit_edge, label %if.then115

if.else112.if.end119_crit_edge:                   ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119

if.then115:                                       ; preds = %if.else112
  %err_specific_desc.i = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %57, i32 0, i32 2
  %error6.i = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %57, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %error6.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %error6.i, align 2
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #13
  %conv.i330 = zext i16 %66 to i32
  %67 = zext i16 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.443)
  switch i16 %65, label %if.then.i [
    i16 2561, label %if.then115.if.end119_crit_edge
    i16 10241, label %if.then115.if.end119_crit_edge363
  ]

if.then115.if.end119_crit_edge363:                ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119

if.then115.if.end119_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end119

if.then.i:                                        ; preds = %if.then115
  %call.i = tail call i32 @strlen(ptr noundef %err_specific_desc.i) #18
  %add.i = add i32 %call.i, 1
  %arrayidx4.i = getelementptr %struct.TAG_TW_Command_Apache_Header, ptr %57, i32 0, i32 2, i32 %add.i
  %68 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %host, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %69, i32 0, i32 17
  %70 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %host_no.i, align 4
  %72 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool15.not.i = icmp eq i8 %73, 0
  br i1 %tobool15.not.i, label %cond.false.i, label %if.then.i.cond.end.i_crit_edge

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %65)
  %cmp.not11.i.i = icmp eq i16 %65, 1
  br i1 %cmp.not11.i.i, label %cond.false.i.twa_string_lookup.exit.i_crit_edge, label %cond.false.i.land.rhs.i.i_crit_edge

cond.false.i.land.rhs.i.i_crit_edge:              ; preds = %cond.false.i
  br label %land.rhs.i.i

cond.false.i.twa_string_lookup.exit.i_crit_edge:  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %cond.false.i.land.rhs.i.i_crit_edge
  %index.012.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ 0, %cond.false.i.land.rhs.i.i_crit_edge ]
  %text.i.i = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %index.012.i.i, i32 1
  %74 = ptrtoint ptr %text.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %text.i.i, align 4
  %cmp3.not.i.i = icmp eq ptr %75, null
  br i1 %cmp3.not.i.i, label %land.rhs.i.i.twa_string_lookup.exit.i_crit_edge, label %for.inc.i.i

land.rhs.i.i.twa_string_lookup.exit.i_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit.i

for.inc.i.i:                                      ; preds = %land.rhs.i.i
  %inc.i.i = add i32 %index.012.i.i, 1
  %arrayidx.i.i = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %inc.i.i
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %77, %conv.i330
  br i1 %cmp.not.i.i, label %for.inc.i.i.twa_string_lookup.exit.i_crit_edge, label %for.inc.i.i.land.rhs.i.i_crit_edge

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i

for.inc.i.i.twa_string_lookup.exit.i_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit.i

twa_string_lookup.exit.i:                         ; preds = %for.inc.i.i.twa_string_lookup.exit.i_crit_edge, %land.rhs.i.i.twa_string_lookup.exit.i_crit_edge, %cond.false.i.twa_string_lookup.exit.i_crit_edge
  %index.0.lcssa.i.i = phi i32 [ 0, %cond.false.i.twa_string_lookup.exit.i_crit_edge ], [ %inc.i.i, %for.inc.i.i.twa_string_lookup.exit.i_crit_edge ], [ %index.012.i.i, %land.rhs.i.i.twa_string_lookup.exit.i_crit_edge ]
  %text5.i.i = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %index.0.lcssa.i.i, i32 1
  %78 = ptrtoint ptr %text5.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %text5.i.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %twa_string_lookup.exit.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %79, %twa_string_lookup.exit.i ], [ %arrayidx4.i, %if.then.i.cond.end.i_crit_edge ]
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %71, i32 noundef 3, i32 noundef %conv.i330, ptr noundef %cond.i, ptr noundef %err_specific_desc.i) #16
  br label %if.end119

if.end119:                                        ; preds = %cond.end.i, %if.then115.if.end119_crit_edge, %if.then115.if.end119_crit_edge363, %if.else112.if.end119_crit_edge, %if.then110, %while.body93.if.end119_crit_edge
  %error.0 = phi i32 [ %call111, %if.then110 ], [ 0, %if.else112.if.end119_crit_edge ], [ 0, %while.body93.if.end119_crit_edge ], [ 0, %if.then115.if.end119_crit_edge ], [ 0, %if.then115.if.end119_crit_edge363 ], [ 0, %cond.end.i ]
  %arrayidx121 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 13, i32 %and101
  %80 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %81)
  %cmp122.not = icmp eq i32 %81, 4
  br i1 %cmp122.not, label %if.end119.if.end152_crit_edge, label %if.then124

if.end119.if.end152_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then124:                                       ; preds = %if.end119
  %arrayidx126 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 6, i32 %and101
  %82 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx126, align 4
  %cmp127.not = icmp eq ptr %83, null
  br i1 %cmp127.not, label %if.then124.if.end152_crit_edge, label %if.then129

if.then124.if.end152_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end152

if.then129:                                       ; preds = %if.then124
  %84 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %host, align 4
  %tobool131.not = icmp eq ptr %85, null
  br i1 %tobool131.not, label %do.end143, label %do.end135

do.end135:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  %host_no138 = getelementptr inbounds %struct.Scsi_Host, ptr %85, i32 0, i32 17
  %86 = ptrtoint ptr %host_no138 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %host_no138, align 4
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %87, i32 noundef 6, i32 noundef 26, ptr noundef nonnull @.str.387) #16
  br label %do.body147

do.end143:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 26, ptr noundef nonnull @.str.387) #16
  br label %do.body147

do.body147:                                       ; preds = %do.end143, %do.end135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !820
  tail call void @arm_heavy_mb() #13
  %88 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_instance, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 57088) #13, !srcloc !803
  br label %twa_interrupt_bail

if.end152:                                        ; preds = %if.then124.if.end152_crit_edge, %if.end119.if.end152_crit_edge
  %arrayidx154 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 6, i32 %and101
  %90 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx154, align 4
  %cmp155 = icmp eq ptr %91, null
  br i1 %cmp155, label %if.then157, label %if.else186

if.then157:                                       ; preds = %if.end152
  %92 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %chrdev_request_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and101, i32 %93)
  %cmp159.not = icmp eq i32 %and101, %93
  br i1 %cmp159.not, label %if.else183, label %if.then161

if.then161:                                       ; preds = %if.then157
  %arrayidx.i332 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 1, i32 %and101
  %94 = ptrtoint ptr %arrayidx.i332 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i332, align 4
  %96 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %posted_request_count, align 4
  %dec.i = add i32 %97, -1
  store i32 %dec.i, ptr %posted_request_count, align 4
  %98 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx102, align 4
  %command.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %command.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %command.i, align 4
  %102 = and i8 %101, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %102)
  %cmp.i = icmp eq i8 %102, 19
  br i1 %cmp.i, label %if.then.i334, label %if.end.i

if.then.i334:                                     ; preds = %if.then161
  %call.i333 = tail call fastcc i32 @twa_aen_read_queue(ptr noundef %dev_instance, i32 noundef %and101) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i333)
  %tobool.not.i = icmp eq i32 %call.i333, 0
  br i1 %tobool.not.i, label %if.then.i334.if.end223_crit_edge, label %if.then.i334.if.then164_crit_edge

if.then.i334.if.then164_crit_edge:                ; preds = %if.then.i334
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then164

if.then.i334.if.end223_crit_edge:                 ; preds = %if.then.i334
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end223

if.end.i:                                         ; preds = %if.then161
  %error.i = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %95, i32 0, i32 1, i32 1
  %103 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %error.i, align 2
  %105 = tail call i16 @llvm.bswap.i16(i16 %104) #13
  %106 = zext i16 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.444)
  switch i16 %105, label %sw.default.i [
    i16 0, label %if.end223.critedge
    i16 49, label %sw.bb.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %107 = call ptr @memset(ptr %99, i32 0, i32 1024)
  %108 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 83, ptr %command.i, align 4
  %conv.i.i = trunc i32 %shr to i8
  %request_id1.i.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %99, i32 0, i32 1, i32 0, i32 2
  %109 = ptrtoint ptr %request_id1.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv.i.i, ptr %request_id1.i.i, align 2
  %arrayidx2.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 2, i32 %and101
  %110 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx2.i.i, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #13
  %byte8_offset.i.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %99, i32 0, i32 1, i32 0, i32 6
  %113 = ptrtoint ptr %byte8_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %byte8_offset.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %99, i32 0, i32 1, i32 0, i32 6, i32 4
  %114 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 131072, ptr %length.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %99, i32 0, i32 1, i32 0, i32 1
  %115 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 4, ptr %size.i.i, align 1
  %byte6_offset.i.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %99, i32 0, i32 1, i32 0, i32 5
  %116 = ptrtoint ptr %byte6_offset.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 256, ptr %byte6_offset.i.i, align 2
  %117 = ptrtoint ptr %arrayidx.i332 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i332, align 4
  %119 = getelementptr inbounds i8, ptr %118, i32 6
  %120 = call ptr @memset(ptr %119, i32 0, i32 506)
  %121 = ptrtoint ptr %118 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 2692, ptr %118, align 2
  %parameter_id.i.i = getelementptr inbounds %struct.TW_Param_Apache, ptr %118, i32 0, i32 1
  %122 = ptrtoint ptr %parameter_id.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 768, ptr %parameter_id.i.i, align 2
  %parameter_size_bytes.i.i = getelementptr inbounds %struct.TW_Param_Apache, ptr %118, i32 0, i32 2
  %123 = ptrtoint ptr %parameter_size_bytes.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 1024, ptr %parameter_size_bytes.i.i, align 2
  %call.i.i = tail call i64 @ktime_get_real_seconds() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %124 = load i32, ptr @sys_tz, align 4
  %mul.i.i = mul i32 %124, 60
  %conv8.i.i = sext i32 %mul.i.i to i64
  %sub.i.i = sub i64 %call.i.i, %conv8.i.i
  %sub9.i.i = add i64 %sub.i.i, -259200
  %conv14.i.i.i = trunc i64 %sub9.i.i to i32
  %125 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3997770567508694361, i64 %sub9.i.i) #19, !srcloc !821
  %126 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3997770567508694361, i64 %sub9.i.i, i64 %125) #19, !srcloc !822
  %div1581.i.i.i = lshr i64 %126, 17
  %conv159.i.i.i = trunc i64 %div1581.i.i.i to i32
  %mul160.neg.i.i.i = mul i32 %conv159.i.i.i, -604800
  %sub161.i.i.i = add i32 %mul160.neg.i.i.i, %conv14.i.i.i
  %data.i.i = getelementptr inbounds %struct.TW_Param_Apache, ptr %118, i32 0, i32 4
  %127 = tail call i32 @llvm.bswap.i32(i32 %sub161.i.i.i) #13
  %128 = ptrtoint ptr %data.i.i to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 %127, ptr %data.i.i, align 2
  %129 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %arrayidx154, align 4
  %call12.i.i = tail call fastcc i32 @twa_post_command_packet(ptr noundef %dev_instance, i32 noundef %and101, i8 noundef zeroext 1) #13
  br label %if.end223

sw.default.i:                                     ; preds = %if.end.i
  tail call fastcc void @twa_aen_queue_event(ptr noundef %dev_instance, ptr noundef %95) #13
  %call6.i = tail call fastcc i32 @twa_aen_read_queue(ptr noundef %dev_instance, i32 noundef %and101) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %sw.default.i.if.end223_crit_edge, label %sw.default.i.if.then164_crit_edge

sw.default.i.if.then164_crit_edge:                ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then164

sw.default.i.if.end223_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end223

if.then164:                                       ; preds = %sw.default.i.if.then164_crit_edge, %if.then.i334.if.then164_crit_edge
  %conv.i27.i = trunc i32 %shr to i8
  %130 = ptrtoint ptr %free_tail.i341 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %free_tail.i341, align 1
  %idxprom.i.i = zext i8 %131 to i32
  %arrayidx.i28.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 7, i32 %idxprom.i.i
  %132 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv.i27.i, ptr %arrayidx.i28.i, align 1
  %133 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 32, ptr %arrayidx121, align 4
  %134 = add i8 %131, 1
  store i8 %134, ptr %free_tail.i341, align 1
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #13
  %135 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %host, align 4
  %tobool166.not = icmp eq ptr %136, null
  br i1 %tobool166.not, label %do.end178, label %do.end170

do.end170:                                        ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #15
  %host_no173 = getelementptr inbounds %struct.Scsi_Host, ptr %136, i32 0, i32 17
  %137 = ptrtoint ptr %host_no173 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %host_no173, align 4
  %call174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %138, i32 noundef 6, i32 noundef 27, ptr noundef nonnull @.str.392) #16
  br label %if.end223

do.end178:                                        ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #15
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 27, ptr noundef nonnull @.str.392) #16
  br label %if.end223

if.else183:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #15
  %139 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %chrdev_request_id, align 8
  tail call void @__wake_up(ptr noundef %ioctl_wqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %if.end223

if.else186:                                       ; preds = %if.end152
  %nents.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %91, i32 0, i32 17, i32 0, i32 1
  %140 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %nents.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %141)
  %cmp.not.i.i337 = icmp eq i32 %141, 1
  br i1 %cmp.not.i.i337, label %twa_command_mapped.exit.i, label %if.else186.twa_scsiop_execute_scsi_complete.exit_crit_edge

if.else186.twa_scsiop_execute_scsi_complete.exit_crit_edge: ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_scsiop_execute_scsi_complete.exit

twa_command_mapped.exit.i:                        ; preds = %if.else186
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %91, i32 0, i32 17, i32 1
  %142 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %143)
  %cmp2.i.i = icmp ugt i32 %143, 511
  br i1 %cmp2.i.i, label %twa_command_mapped.exit.i.twa_scsiop_execute_scsi_complete.exit_crit_edge, label %land.lhs.true.i

twa_command_mapped.exit.i.twa_scsiop_execute_scsi_complete.exit_crit_edge: ; preds = %twa_command_mapped.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_scsiop_execute_scsi_complete.exit

land.lhs.true.i:                                  ; preds = %twa_command_mapped.exit.i
  %sc_data_direction.i = getelementptr inbounds %struct.scsi_cmnd, ptr %91, i32 0, i32 15
  %144 = ptrtoint ptr %sc_data_direction.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sc_data_direction.i, align 4
  %146 = zext i32 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.445)
  switch i32 %145, label %land.lhs.true.i.twa_scsiop_execute_scsi_complete.exit_crit_edge [
    i32 2, label %land.lhs.true.i.if.then5.i_crit_edge
    i32 0, label %land.lhs.true.i.if.then5.i_crit_edge364
  ]

land.lhs.true.i.if.then5.i_crit_edge364:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.i

land.lhs.true.i.if.then5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.i

land.lhs.true.i.twa_scsiop_execute_scsi_complete.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_scsiop_execute_scsi_complete.exit

if.then5.i:                                       ; preds = %land.lhs.true.i.if.then5.i_crit_edge, %land.lhs.true.i.if.then5.i_crit_edge364
  %arrayidx6.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 1, i32 %and101
  %147 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx6.i, align 4
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %91, i32 0, i32 17
  %149 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sdb.i.i.i, align 4
  %call2.i.i = tail call i32 @sg_copy_from_buffer(ptr noundef %150, i32 noundef 1, ptr noundef %148, i32 noundef 512) #13
  br label %twa_scsiop_execute_scsi_complete.exit

twa_scsiop_execute_scsi_complete.exit:            ; preds = %if.then5.i, %land.lhs.true.i.twa_scsiop_execute_scsi_complete.exit_crit_edge, %twa_command_mapped.exit.i.twa_scsiop_execute_scsi_complete.exit_crit_edge, %if.else186.twa_scsiop_execute_scsi_complete.exit_crit_edge
  %151 = zext i32 %error.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.446)
  switch i32 %error.0, label %twa_scsiop_execute_scsi_complete.exit.if.end197_crit_edge [
    i32 0, label %twa_scsiop_execute_scsi_complete.exit.if.end197.sink.split_crit_edge
    i32 1, label %if.then195
  ]

twa_scsiop_execute_scsi_complete.exit.if.end197.sink.split_crit_edge: ; preds = %twa_scsiop_execute_scsi_complete.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end197.sink.split

twa_scsiop_execute_scsi_complete.exit.if.end197_crit_edge: ; preds = %twa_scsiop_execute_scsi_complete.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end197

if.then195:                                       ; preds = %twa_scsiop_execute_scsi_complete.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end197.sink.split

if.end197.sink.split:                             ; preds = %if.then195, %twa_scsiop_execute_scsi_complete.exit.if.end197.sink.split_crit_edge
  %.sink362 = phi i32 [ 2, %if.then195 ], [ %error.0, %twa_scsiop_execute_scsi_complete.exit.if.end197.sink.split_crit_edge ]
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %91, i32 0, i32 24
  %152 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %.sink362, ptr %result, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.end197.sink.split, %twa_scsiop_execute_scsi_complete.exit.if.end197_crit_edge
  %153 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %nents.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %154)
  %cmp199 = icmp ult i32 %154, 2
  br i1 %cmp199, label %land.lhs.true, label %if.end197.if.then218_crit_edge

if.end197.if.then218_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then218

land.lhs.true:                                    ; preds = %if.end197
  %155 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %cmp204 = icmp eq i8 %156, 0
  br i1 %cmp204, label %if.then206, label %land.lhs.true.if.end216_crit_edge

land.lhs.true.if.end216_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end216

if.then206:                                       ; preds = %land.lhs.true
  %length209 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %57, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1
  %157 = ptrtoint ptr %length209 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %length209, align 4
  %159 = tail call i32 @llvm.bswap.i32(i32 %158)
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %91, i32 0, i32 17, i32 1
  %160 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %159)
  %cmp211 = icmp ugt i32 %161, %159
  br i1 %cmp211, label %if.then213, label %if.then206.if.end216thread-pre-split_crit_edge

if.then206.if.end216thread-pre-split_crit_edge:   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end216thread-pre-split

if.then213:                                       ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %161, %159
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %91, i32 0, i32 5
  %162 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %sub, ptr %resid_len.i, align 4
  br label %if.end216thread-pre-split

if.end216thread-pre-split:                        ; preds = %if.then213, %if.then206.if.end216thread-pre-split_crit_edge
  %163 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %.pr = load i32, ptr %nents.i.i.i, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.end216thread-pre-split, %land.lhs.true.if.end216_crit_edge
  %164 = phi i32 [ %.pr, %if.end216thread-pre-split ], [ %154, %land.lhs.true.if.end216_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp.not.i = icmp eq i32 %164, 1
  br i1 %cmp.not.i, label %twa_command_mapped.exit, label %if.end216.if.then218_crit_edge

if.end216.if.then218_crit_edge:                   ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then218

twa_command_mapped.exit:                          ; preds = %if.end216
  %length.i.i339 = getelementptr inbounds %struct.scsi_cmnd, ptr %91, i32 0, i32 17, i32 1
  %165 = ptrtoint ptr %length.i.i339 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %length.i.i339, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %166)
  %cmp2.i = icmp ugt i32 %166, 511
  br i1 %cmp2.i, label %twa_command_mapped.exit.if.then218_crit_edge, label %twa_command_mapped.exit.if.end219_crit_edge

twa_command_mapped.exit.if.end219_crit_edge:      ; preds = %twa_command_mapped.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end219

twa_command_mapped.exit.if.then218_crit_edge:     ; preds = %twa_command_mapped.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then218

if.then218:                                       ; preds = %twa_command_mapped.exit.if.then218_crit_edge, %if.end216.if.then218_crit_edge, %if.end197.if.then218_crit_edge
  tail call void @scsi_dma_unmap(ptr noundef nonnull %91) #13
  br label %if.end219

if.end219:                                        ; preds = %if.then218, %twa_command_mapped.exit.if.end219_crit_edge
  tail call void @scsi_done(ptr noundef nonnull %91) #13
  %conv.i340 = trunc i32 %shr to i8
  %167 = ptrtoint ptr %free_tail.i341 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %free_tail.i341, align 1
  %idxprom.i342 = zext i8 %168 to i32
  %arrayidx.i343 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 7, i32 %idxprom.i342
  %169 = ptrtoint ptr %arrayidx.i343 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv.i340, ptr %arrayidx.i343, align 1
  %170 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 32, ptr %arrayidx121, align 4
  %171 = add i8 %168, 1
  store i8 %171, ptr %free_tail.i341, align 1
  %172 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %posted_request_count, align 4
  %dec222 = add i32 %173, -1
  store i32 %dec222, ptr %posted_request_count, align 4
  br label %if.end223

if.end223.critedge:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i27.i.c358 = trunc i32 %shr to i8
  %174 = ptrtoint ptr %free_tail.i341 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %free_tail.i341, align 1
  %idxprom.i.i.c359 = zext i8 %175 to i32
  %arrayidx.i28.i.c360 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 7, i32 %idxprom.i.i.c359
  %176 = ptrtoint ptr %arrayidx.i28.i.c360 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv.i27.i.c358, ptr %arrayidx.i28.i.c360, align 1
  %177 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 32, ptr %arrayidx121, align 4
  %178 = add i8 %175, 1
  store i8 %178, ptr %free_tail.i341, align 1
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags) #13
  br label %if.end223

if.end223:                                        ; preds = %if.end223.critedge, %if.end219, %if.else183, %do.end178, %do.end170, %sw.default.i.if.end223_crit_edge, %sw.bb.i, %if.then.i334.if.end223_crit_edge
  %179 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev_instance, align 8
  %add.ptr227 = getelementptr i8, ptr %180, i32 4
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr227) #13, !srcloc !806
  %182 = tail call i32 @llvm.bswap.i32(i32 %181)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !823
  %183 = and i32 %182, 15736832
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %183)
  %.not354 = icmp eq i32 %183, 8192
  br i1 %.not354, label %if.end223.if.end242_crit_edge, label %if.then233

if.end223.if.end242_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end242

if.then233:                                       ; preds = %if.end223
  %call234 = tail call fastcc i32 @twa_decode_bits(ptr noundef %dev_instance, i32 noundef %182)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.then233.if.end242_crit_edge, label %do.body237

if.then233.if.end242_crit_edge:                   ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end242

do.body237:                                       ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !824
  tail call void @arm_heavy_mb() #13
  %184 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev_instance, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 57088) #13, !srcloc !803
  br label %twa_interrupt_bail

if.end242:                                        ; preds = %if.then233.if.end242_crit_edge, %if.end223.if.end242_crit_edge
  %and90 = and i32 %182, 16384
  %cmp91 = icmp eq i32 %and90, 0
  br i1 %cmp91, label %if.end242.while.body93_crit_edge, label %if.end242.twa_interrupt_bail_crit_edge

if.end242.twa_interrupt_bail_crit_edge:           ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_interrupt_bail

if.end242.while.body93_crit_edge:                 ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body93

twa_interrupt_bail:                               ; preds = %if.end242.twa_interrupt_bail_crit_edge, %do.body237, %do.body147, %if.end85.twa_interrupt_bail_crit_edge, %do.body69, %do.body, %if.end.twa_interrupt_bail_crit_edge, %entry.twa_interrupt_bail_crit_edge
  %186 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %host, align 4
  %host_lock246 = getelementptr inbounds %struct.Scsi_Host, ptr %187, i32 0, i32 4
  %188 = ptrtoint ptr %host_lock246 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %host_lock246, align 4
  tail call void @_raw_spin_unlock(ptr noundef %189) #13
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

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
define internal i32 @twa_scsi_queue(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #13
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %flags.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 3, i32 50, i32 10, i32 1, i32 4, i32 7
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.twa_scsi_queue_lck.exit_crit_edge

entry.twa_scsi_queue_lck.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_scsi_queue_lck.exit

if.end.i:                                         ; preds = %entry
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 18
  %9 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %lun.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp.not.i = icmp eq i64 %10, 0
  br i1 %cmp.not.i, label %if.end.i.if.end6.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %working_srl.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 37, i32 1
  %11 = ptrtoint ptr %working_srl.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %working_srl.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28, i16 %12)
  %cmp3.i = icmp ult i16 %12, 28
  br i1 %cmp3.i, label %if.then5.i, label %land.lhs.true.i.if.end6.i_crit_edge

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %13 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 262144, ptr %result.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #13
  br label %twa_scsi_queue_lck.exit

if.end6.i:                                        ; preds = %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %free_head.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 3, i32 27
  %14 = ptrtoint ptr %free_head.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %free_head.i.i, align 8
  %idxprom.i.i = zext i8 %15 to i32
  %arrayidx.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 7, i32 %idxprom.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %17 to i32
  %18 = add i8 %15, 1
  store i8 %18, ptr %free_head.i.i, align 8
  %arrayidx5.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 13, i32 %conv.i.i
  %19 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %arrayidx5.i.i, align 4
  %srb.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 2, i32 50, i32 3
  %arrayidx.i = getelementptr [256 x ptr], ptr %srb.i, i32 0, i32 %conv.i.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cmd, ptr %arrayidx.i, align 4
  %call7.i = tail call fastcc i32 @twa_scsiop_execute_scsi(ptr noundef %hostdata.i, i32 noundef %conv.i.i, ptr noundef null, i32 noundef 0, ptr noundef null) #13
  %21 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.447)
  switch i32 %call7.i, label %if.end6.i.twa_scsi_queue_lck.exit_crit_edge [
    i32 4181, label %sw.bb.i
    i32 1, label %sw.bb11.i
  ]

if.end6.i.twa_scsi_queue_lck.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_scsi_queue_lck.exit

sw.bb.i:                                          ; preds = %if.end6.i
  %nents.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %22 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nents.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.not.i.i = icmp eq i32 %23, 1
  br i1 %cmp.not.i.i, label %twa_command_mapped.exit.i, label %sw.bb.i.if.then9.i_crit_edge

sw.bb.i.if.then9.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i

twa_command_mapped.exit.i:                        ; preds = %sw.bb.i
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %24 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %25)
  %cmp2.i.i = icmp ugt i32 %25, 511
  br i1 %cmp2.i.i, label %twa_command_mapped.exit.i.if.then9.i_crit_edge, label %twa_command_mapped.exit.i.if.end10.i_crit_edge

twa_command_mapped.exit.i.if.end10.i_crit_edge:   ; preds = %twa_command_mapped.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

twa_command_mapped.exit.i.if.then9.i_crit_edge:   ; preds = %twa_command_mapped.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i

if.then9.i:                                       ; preds = %twa_command_mapped.exit.i.if.then9.i_crit_edge, %sw.bb.i.if.then9.i_crit_edge
  tail call void @scsi_dma_unmap(ptr noundef %cmd) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %twa_command_mapped.exit.i.if.end10.i_crit_edge
  %free_tail.i.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 9
  %26 = ptrtoint ptr %free_tail.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %free_tail.i.i, align 1
  %idxprom.i37.i = zext i8 %27 to i32
  %arrayidx.i38.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 7, i32 %idxprom.i37.i
  %28 = ptrtoint ptr %arrayidx.i38.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %17, ptr %arrayidx.i38.i, align 1
  %29 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 32, ptr %arrayidx5.i.i, align 4
  %30 = add i8 %27, 1
  store i8 %30, ptr %free_tail.i.i, align 1
  br label %twa_scsi_queue_lck.exit

sw.bb11.i:                                        ; preds = %if.end6.i
  %result12.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %31 = ptrtoint ptr %result12.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 458752, ptr %result12.i, align 4
  %nents.i.i39.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 0, i32 1
  %32 = ptrtoint ptr %nents.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nents.i.i39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.not.i40.i = icmp eq i32 %33, 1
  br i1 %cmp.not.i40.i, label %twa_command_mapped.exit44.i, label %sw.bb11.i.if.then14.i_crit_edge

sw.bb11.i.if.then14.i_crit_edge:                  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14.i

twa_command_mapped.exit44.i:                      ; preds = %sw.bb11.i
  %length.i.i41.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %34 = ptrtoint ptr %length.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i.i41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %35)
  %cmp2.i42.i = icmp ugt i32 %35, 511
  br i1 %cmp2.i42.i, label %twa_command_mapped.exit44.i.if.then14.i_crit_edge, label %twa_command_mapped.exit44.i.if.end15.i_crit_edge

twa_command_mapped.exit44.i.if.end15.i_crit_edge: ; preds = %twa_command_mapped.exit44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.i

twa_command_mapped.exit44.i.if.then14.i_crit_edge: ; preds = %twa_command_mapped.exit44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14.i

if.then14.i:                                      ; preds = %twa_command_mapped.exit44.i.if.then14.i_crit_edge, %sw.bb11.i.if.then14.i_crit_edge
  tail call void @scsi_dma_unmap(ptr noundef %cmd) #13
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %twa_command_mapped.exit44.i.if.end15.i_crit_edge
  tail call void @scsi_done(ptr noundef %cmd) #13
  %free_tail.i46.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 9
  %36 = ptrtoint ptr %free_tail.i46.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %free_tail.i46.i, align 1
  %idxprom.i47.i = zext i8 %37 to i32
  %arrayidx.i48.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 7, i32 %idxprom.i47.i
  %38 = ptrtoint ptr %arrayidx.i48.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %17, ptr %arrayidx.i48.i, align 1
  %39 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 32, ptr %arrayidx5.i.i, align 4
  %40 = add i8 %37, 1
  store i8 %40, ptr %free_tail.i46.i, align 1
  br label %twa_scsi_queue_lck.exit

twa_scsi_queue_lck.exit:                          ; preds = %if.end15.i, %if.end10.i, %if.end6.i.twa_scsi_queue_lck.exit_crit_edge, %if.then5.i, %entry.twa_scsi_queue_lck.exit_crit_edge
  %retval1.0.i = phi i32 [ 0, %if.then5.i ], [ %call7.i, %if.end6.i.twa_scsi_queue_lck.exit_crit_edge ], [ 0, %if.end15.i ], [ 4181, %if.end10.i ], [ 4181, %entry.twa_scsi_queue_lck.exit_crit_edge ]
  %41 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %call2) #13
  ret i32 %retval1.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twa_scsi_eh_reset(ptr nocapture noundef readonly %SCpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %num_resets = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 3, i32 50, i32 10, i32 1, i32 4, i32 1
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
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.87, ptr noundef %6, ptr noundef null, ptr noundef nonnull @.str.88, i32 noundef 6, i32 noundef 44, i32 noundef %conv) #13
  %ioctl_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 4, i32 25
  tail call void @mutex_lock_nested(ptr noundef %ioctl_lock, i32 noundef 0) #13
  %call = tail call fastcc i32 @twa_reset_device_extension(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.then

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then:                                          ; preds = %entry
  %host3 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 3, i32 50, i32 10, i32 1, i32 4, i32 6
  %11 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host3, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %do.end10, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %host_no, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %14, i32 noundef 6, i32 noundef 43, ptr noundef nonnull @.str.90) #16
  br label %out

do.end10:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 43, ptr noundef nonnull @.str.90) #16
  br label %out

out:                                              ; preds = %do.end10, %do.end, %entry.out_crit_edge
  %retval1.0 = phi i32 [ 8195, %do.end ], [ 8195, %do.end10 ], [ 8194, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ioctl_lock) #13
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twa_slave_configure(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_rq_timeout(ptr noundef %1, i32 noundef 6000) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #0

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @twa_scsi_biosparam(ptr nocapture noundef readnone %sdev, ptr nocapture noundef readnone %bdev, i64 noundef %capacity, ptr nocapture noundef writeonly %geom) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097151, i64 %capacity)
  %cmp = icmp ugt i64 %capacity, 2097151
  %conv16 = trunc i64 %capacity to i32
  br i1 %cmp, label %if.then15, label %if.then190

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9040225091336153120, i64 %capacity, i32 0) #19, !srcloc !825
  %asmresult.i = extractvalue { i64, i32 } %0, 0
  %asmresult4.i = extractvalue { i64, i32 } %0, 1
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9040225091336153120, i64 %capacity, i64 %asmresult.i, i32 %asmresult4.i) #19, !srcloc !826
  %asmresult10.i = extractvalue { i64, i32 } %1, 0
  %div161574 = lshr i64 %asmresult10.i, 13
  %conv162 = trunc i64 %div161574 to i32
  %mul163.neg = mul i32 %conv162, -16065
  %sub164 = add i32 %mul163.neg, %conv16
  br label %if.end406

if.then190:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv194 = and i32 %conv16, 2047
  br label %if.end406

if.end406:                                        ; preds = %if.then190, %if.then15
  %cylinders.0 = phi i32 [ %sub164, %if.then15 ], [ %conv194, %if.then190 ]
  %sectors.0 = phi i32 [ 63, %if.then15 ], [ 32, %if.then190 ]
  %heads.0 = phi i32 [ 255, %if.then15 ], [ 64, %if.then190 ]
  %2 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %heads.0, ptr %geom, align 4
  %arrayidx407 = getelementptr i32, ptr %geom, i32 1
  %3 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sectors.0, ptr %arrayidx407, align 4
  %arrayidx408 = getelementptr i32, ptr %geom, i32 2
  %4 = ptrtoint ptr %arrayidx408 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cylinders.0, ptr %arrayidx408, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twa_scsiop_execute_scsi(ptr noundef %tw_dev, i32 noundef %request_id, ptr noundef readonly %cdb, i32 noundef %use_sg, ptr noundef readonly %sglistarg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 6, i32 %request_id
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
  store i8 -128, ptr %header_desc, align 4
  %error = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %3, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %error, align 2
  %severity__reserved = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %3, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %severity__reserved to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %severity__reserved, align 1
  %command = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1
  %status = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %status, align 2
  %8 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %command, align 2
  %tobool9.not = icmp eq ptr %cdb, null
  %cdb11 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 6
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmnd, align 4
  %11 = call ptr @memcpy(ptr %cdb11, ptr %10, i32 16)
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %12 = call ptr @memcpy(ptr %cdb11, ptr %cdb, i32 16)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  br i1 %tobool.not, label %if.else21, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__asan_store2_noabort(i32 %27)
  store i16 %.sink, ptr %26, align 2
  %sgl_offset = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 4
  %28 = ptrtoint ptr %sgl_offset to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 16, ptr %sgl_offset, align 1
  %tobool28.not = icmp eq ptr %sglistarg, null
  br i1 %tobool28.not, label %if.then29, label %for.cond94.preheader

for.cond94.preheader:                             ; preds = %if.end27
  %sg_list100 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 7
  %length104 = getelementptr inbounds %struct.TAG_TW_SG_Entry, ptr %sglistarg, i32 0, i32 1
  %length107 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1
  br label %for.cond94

if.then29:                                        ; preds = %if.end27
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %29 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nents.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.448)
  switch i32 %30, label %if.then29.if.else46_crit_edge [
    i32 0, label %if.then29.if.end139_crit_edge
    i32 1, label %twa_command_mapped.exit
  ]

if.then29.if.end139_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

if.then29.if.else46_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else46

twa_command_mapped.exit:                          ; preds = %if.then29
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 1
  %32 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %33)
  %cmp2.i = icmp ugt i32 %33, 511
  br i1 %cmp2.i, label %twa_command_mapped.exit.if.else46_crit_edge, label %if.then33

twa_command_mapped.exit.if.else46_crit_edge:      ; preds = %twa_command_mapped.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else46

if.then33:                                        ; preds = %twa_command_mapped.exit
  %sc_data_direction = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 15
  %34 = ptrtoint ptr %sc_data_direction to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sc_data_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %switch = icmp ult i32 %35, 2
  br i1 %switch, label %if.then38, label %if.then33.if.end41_crit_edge

if.then33.if.end41_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx39 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 1, i32 %request_id
  %36 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx39, align 4
  %sdb.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %38 = ptrtoint ptr %sdb.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sdb.i.i, align 4
  %call2.i = tail call i32 @sg_copy_to_buffer(ptr noundef %39, i32 noundef 1, ptr noundef %37, i32 noundef 512) #13
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.then33.if.end41_crit_edge
  %arrayidx42 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 2, i32 %request_id
  %40 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx42, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %sg_list = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 7
  %43 = ptrtoint ptr %sg_list to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %sg_list, align 2
  %length = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1
  %44 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 131072, ptr %length, align 2
  br label %if.end80

if.else46:                                        ; preds = %twa_command_mapped.exit.if.else46_crit_edge, %if.then29.if.else46_crit_edge
  %call47 = tail call i32 @scsi_dma_map(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.else46.out_crit_edge, label %if.end51

if.else46.out_crit_edge:                          ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end51:                                         ; preds = %if.else46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp53309.not = icmp eq i32 %call47, 0
  br i1 %cmp53309.not, label %if.end51.if.end80_crit_edge, label %for.body.preheader

if.end51.if.end80_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

for.body.preheader:                               ; preds = %if.end51
  %sdb.i = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %45 = ptrtoint ptr %sdb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdb.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0311 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.0310 = phi ptr [ %call79, %for.inc.for.body_crit_edge ], [ %46, %for.body.preheader ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0310, i32 0, i32 3
  %47 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_address, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %arrayidx56 = getelementptr %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 7, i32 %i.0311
  %50 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %arrayidx56, align 2
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0310, i32 0, i32 4
  %51 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_length, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %length60 = getelementptr %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 7, i32 %i.0311, i32 1
  %54 = ptrtoint ptr %length60 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %length60, align 2
  %and64 = and i32 %49, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %for.inc, label %if.then66

if.then66:                                        ; preds = %for.body
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %55 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %host, align 4
  %tobool67.not = icmp eq ptr %56, null
  br i1 %tobool67.not, label %do.end74, label %do.end

do.end:                                           ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %56, i32 0, i32 17
  %57 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %host_no, align 4
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %58, i32 noundef 6, i32 noundef 46, ptr noundef nonnull @.str.60) #16
  br label %out

do.end74:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 46, ptr noundef nonnull @.str.60) #16
  br label %out

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0311, 1
  %call79 = tail call ptr @sg_next(ptr noundef %sg.0310) #13
  %exitcond.not = icmp eq i32 %inc, %call47
  br i1 %exitcond.not, label %for.inc.if.end80_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.if.end80_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end80

if.end80:                                         ; preds = %for.inc.if.end80_crit_edge, %if.end51.if.end80_crit_edge, %if.end41
  %device81 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %device81 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device81, align 4
  %lun82 = getelementptr inbounds %struct.scsi_device, ptr %60, i32 0, i32 18
  %61 = ptrtoint ptr %lun82 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %lun82, align 8
  %63 = shl i64 %62, 8
  %and84 = and i64 %63, 61440
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx, align 4
  %nents.i303 = getelementptr inbounds %struct.scsi_cmnd, ptr %65, i32 0, i32 17, i32 0, i32 1
  %66 = ptrtoint ptr %nents.i303 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nents.i303, align 4
  %and88 = and i32 %67, 4095
  %conv89 = zext i32 %and88 to i64
  %or90 = or i64 %and84, %conv89
  %conv91 = trunc i64 %or90 to i16
  br label %if.end139.sink.split

for.cond94:                                       ; preds = %for.body97.for.cond94_crit_edge, %for.cond94.preheader
  %i.1 = phi i32 [ 1, %for.body97.for.cond94_crit_edge ], [ 0, %for.cond94.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %use_sg)
  %cmp95 = icmp slt i32 %i.1, %use_sg
  br i1 %cmp95, label %for.body97, label %for.end134

for.body97:                                       ; preds = %for.cond94
  %68 = ptrtoint ptr %sglistarg to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %sglistarg, align 1
  %70 = ptrtoint ptr %sg_list100 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %69, ptr %sg_list100, align 2
  %71 = ptrtoint ptr %length104 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %length104, align 1
  %73 = ptrtoint ptr %length107 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %72, ptr %length107, align 2
  %and111 = and i32 %69, 50331648
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %for.body97.for.cond94_crit_edge, label %if.then113

for.body97.for.cond94_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond94

if.then113:                                       ; preds = %for.body97
  %host114 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %74 = ptrtoint ptr %host114 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %host114, align 4
  %tobool115.not = icmp eq ptr %75, null
  br i1 %tobool115.not, label %do.end127, label %do.end119

do.end119:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #15
  %host_no122 = getelementptr inbounds %struct.Scsi_Host, ptr %75, i32 0, i32 17
  %76 = ptrtoint ptr %host_no122 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %host_no122, align 4
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %77, i32 noundef 6, i32 noundef 47, ptr noundef nonnull @.str.65) #16
  br label %out

do.end127:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #15
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 47, ptr noundef nonnull @.str.65) #16
  br label %out

for.end134:                                       ; preds = %for.cond94
  call void @__sanitizer_cov_trace_pc() #15
  %78 = trunc i32 %use_sg to i16
  %conv137 = and i16 %78, 4095
  br label %if.end139.sink.split

if.end139.sink.split:                             ; preds = %for.end134, %if.end80
  %conv91.sink = phi i16 [ %conv91, %if.end80 ], [ %conv137, %for.end134 ]
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv91.sink)
  %sgl_entries__lunh = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %3, i32 0, i32 1, i32 0, i32 5
  %80 = ptrtoint ptr %sgl_entries__lunh to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %sgl_entries__lunh, align 2
  br label %if.end139

if.end139:                                        ; preds = %if.end139.sink.split, %if.then29.if.end139_crit_edge
  br i1 %tobool.not, label %if.else203, label %if.then141

if.then141:                                       ; preds = %if.end139
  %cmnd142 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %81 = ptrtoint ptr %cmnd142 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cmnd142, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 1
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.449)
  switch i8 %84, label %if.then141.if.end157_crit_edge [
    i8 8, label %if.then141.if.then153_crit_edge
    i8 10, label %if.then141.if.then153_crit_edge313
  ]

if.then141.if.then153_crit_edge313:               ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then153

if.then141.if.then153_crit_edge:                  ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then153

if.then141.if.end157_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end157

if.then153:                                       ; preds = %if.then141.if.then153_crit_edge, %if.then141.if.then153_crit_edge313
  %arrayidx155 = getelementptr i8, ptr %82, i32 4
  %86 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx155, align 1
  %conv156 = zext i8 %87 to i32
  br label %if.end157

if.end157:                                        ; preds = %if.then153, %if.then141.if.end157_crit_edge
  %num_sectors.0 = phi i32 [ %conv156, %if.then153 ], [ 0, %if.then141.if.end157_crit_edge ]
  %88 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.450)
  switch i8 %84, label %if.end157.if.end179_crit_edge [
    i8 40, label %if.end157.if.then169_crit_edge
    i8 42, label %if.end157.if.then169_crit_edge314
  ]

if.end157.if.then169_crit_edge314:                ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then169

if.end157.if.then169_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then169

if.end157.if.end179_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end179

if.then169:                                       ; preds = %if.end157.if.then169_crit_edge, %if.end157.if.then169_crit_edge314
  %arrayidx171 = getelementptr i8, ptr %82, i32 8
  %89 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx171, align 1
  %conv172 = zext i8 %90 to i32
  %arrayidx174 = getelementptr i8, ptr %82, i32 7
  %91 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %92 to i32
  %shl176 = shl nuw nsw i32 %conv175, 8
  %or177 = or i32 %shl176, %conv172
  br label %if.end179

if.end179:                                        ; preds = %if.then169, %if.end157.if.end179_crit_edge
  %num_sectors.1 = phi i32 [ %or177, %if.then169 ], [ %num_sectors.0, %if.end157.if.end179_crit_edge ]
  %sector_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 21
  %93 = ptrtoint ptr %sector_count to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %num_sectors.1, ptr %sector_count, align 8
  %max_sector_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 22
  %94 = ptrtoint ptr %max_sector_count to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %max_sector_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num_sectors.1, i32 %95)
  %cmp181 = icmp ugt i32 %num_sectors.1, %95
  br i1 %cmp181, label %if.then183, label %if.end179.if.then188_crit_edge

if.end179.if.then188_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then188

if.then183:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %max_sector_count to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %num_sectors.1, ptr %max_sector_count, align 4
  br label %if.then188

if.then188:                                       ; preds = %if.then183, %if.end179.if.then188_crit_edge
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx, align 4
  %nents.i304 = getelementptr inbounds %struct.scsi_cmnd, ptr %98, i32 0, i32 17, i32 0, i32 1
  %99 = ptrtoint ptr %nents.i304 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nents.i304, align 4
  %sgl_entries = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 19
  %101 = ptrtoint ptr %sgl_entries to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %sgl_entries, align 8
  %max_sgl_entries = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 18
  %102 = ptrtoint ptr %max_sgl_entries to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_sgl_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %103)
  %cmp193 = icmp ugt i32 %100, %103
  br i1 %cmp193, label %if.then195, label %if.then188.if.then201_crit_edge

if.then188.if.then201_crit_edge:                  ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then201

if.then195:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %max_sgl_entries to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %100, ptr %max_sgl_entries, align 4
  br label %if.then201

if.then201:                                       ; preds = %if.then195, %if.then188.if.then201_crit_edge
  %call202 = tail call fastcc i32 @twa_post_command_packet(ptr noundef %tw_dev, i32 noundef %request_id, i8 noundef zeroext 0)
  br label %out

if.else203:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  %sector_count306 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 21
  %105 = ptrtoint ptr %sector_count306 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %sector_count306, align 8
  %call204 = tail call fastcc i32 @twa_post_command_packet(ptr noundef %tw_dev, i32 noundef %request_id, i8 noundef zeroext 1)
  br label %out

out:                                              ; preds = %if.else203, %if.then201, %do.end127, %do.end119, %do.end74, %do.end, %if.else46.out_crit_edge
  %retval1.0 = phi i32 [ 1, %do.end119 ], [ 1, %do.end127 ], [ %call202, %if.then201 ], [ 0, %if.else203 ], [ 1, %if.else46.out_crit_edge ], [ 1, %do.end ], [ 1, %do.end74 ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twa_post_command_packet(ptr noundef %tw_dev, i32 noundef %request_id, i8 noundef zeroext %internal) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 4, i32 %request_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %tw_pci_dev = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 5
  %2 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tw_pci_dev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %6 = and i16 %5, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4100, i16 %6)
  %switch = icmp eq i16 %6, 4100
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add = add i32 %1, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !827
  tail call void @arm_heavy_mb() #13
  %7 = tail call i32 @llvm.bswap.i32(i32 %add)
  %8 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tw_dev, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #13, !srcloc !803
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %command_que_value.0 = phi i32 [ %add, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %10 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tw_dev, align 8
  %add.ptr9 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #13, !srcloc !806
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !828
  %14 = and i32 %13, 15736832
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %14)
  %.not = icmp eq i32 %14, 8192
  br i1 %.not, label %if.end.if.end14_crit_edge, label %if.then12

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = tail call fastcc i32 @twa_decode_bits(ptr noundef %tw_dev, i32 noundef %13)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  %pending_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 16
  %15 = ptrtoint ptr %pending_request_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pending_request_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp15.not = icmp eq i32 %16, 0
  br i1 %cmp15.not, label %lor.lhs.false20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %arrayidx17 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13, i32 %request_id
  %17 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp18.not = icmp eq i32 %18, 8
  %and = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp18.not, i1 %tobool21.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.then22_crit_edge

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

lor.lhs.false20:                                  ; preds = %if.end14
  %and.old = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.old)
  %tobool21.not.old = icmp eq i32 %and.old, 0
  br i1 %tobool21.not.old, label %lor.lhs.false20.if.else_crit_edge, label %lor.lhs.false20.if.then22_crit_edge

lor.lhs.false20.if.then22_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

lor.lhs.false20.if.else_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then22:                                        ; preds = %lor.lhs.false20.if.then22_crit_edge, %land.lhs.true.if.then22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %internal)
  %tobool23.not = icmp eq i8 %internal, 0
  br i1 %tobool23.not, label %if.then22.out_crit_edge, label %if.end25

if.then22.out_crit_edge:                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end25:                                         ; preds = %if.then22
  %arrayidx27 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13, i32 %request_id
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %cmp28.not = icmp eq i32 %20, 8
  br i1 %cmp28.not, label %if.end25.do.body49_crit_edge, label %if.then30

if.end25.do.body49_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body49

if.then30:                                        ; preds = %if.end25
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %arrayidx27, align 4
  %22 = ptrtoint ptr %pending_request_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pending_request_count, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %pending_request_count, align 4
  %max_pending_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 17
  %24 = ptrtoint ptr %max_pending_request_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_pending_request_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %25)
  %cmp35 = icmp ugt i32 %inc, %25
  br i1 %cmp35, label %if.then37, label %if.then30.if.end40_crit_edge

if.then30.if.end40_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then37:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %max_pending_request_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %inc, ptr %max_pending_request_count, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.then30.if.end40_crit_edge
  %conv41 = trunc i32 %request_id to i8
  %pending_tail = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 12
  %27 = ptrtoint ptr %pending_tail to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pending_tail, align 1
  %idxprom = zext i8 %28 to i32
  %arrayidx42 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 10, i32 %idxprom
  %29 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv41, ptr %arrayidx42, align 1
  %30 = add i8 %28, 1
  store i8 %30, ptr %pending_tail, align 1
  br label %do.body49

do.body49:                                        ; preds = %if.end40, %if.end25.do.body49_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !829
  tail call void @arm_heavy_mb() #13
  %31 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tw_dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 8388608) #13, !srcloc !803
  br label %out

if.else:                                          ; preds = %lor.lhs.false20.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %33 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tw_pci_dev, align 4
  %device54 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %device54 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %device54, align 2
  %37 = and i16 %36, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4100, i16 %37)
  %switch132 = icmp eq i16 %37, 4100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  tail call void @arm_heavy_mb() #13
  br i1 %switch132, label %do.body65, label %do.body74

do.body65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tw_dev, align 8
  %add.ptr72 = getelementptr i8, ptr %39, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 0) #13, !srcloc !803
  br label %if.end80

do.body74:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %add77 = add i32 %command_que_value.0, 128
  %40 = tail call i32 @llvm.bswap.i32(i32 %add77)
  %41 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tw_dev, align 8
  %add.ptr79 = getelementptr i8, ptr %42, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %40) #13, !srcloc !803
  br label %if.end80

if.end80:                                         ; preds = %do.body74, %do.body65
  %arrayidx82 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13, i32 %request_id
  %43 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %arrayidx82, align 4
  %posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14
  %44 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %posted_request_count, align 4
  %inc83 = add i32 %45, 1
  store i32 %inc83, ptr %posted_request_count, align 4
  %max_posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 15
  %46 = ptrtoint ptr %max_posted_request_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_posted_request_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc83, i32 %47)
  %cmp85 = icmp ugt i32 %inc83, %47
  br i1 %cmp85, label %if.then87, label %if.end80.out_crit_edge

if.end80.out_crit_edge:                           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then87:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %max_posted_request_count to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %inc83, ptr %max_posted_request_count, align 8
  br label %out

out:                                              ; preds = %if.then87, %if.end80.out_crit_edge, %do.body49, %if.then22.out_crit_edge
  %retval1.0 = phi i32 [ 1, %do.body49 ], [ 4181, %if.then22.out_crit_edge ], [ 0, %if.end80.out_crit_edge ], [ 0, %if.then87 ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twa_decode_bits(ptr noundef %tw_dev, i32 noundef %status_reg_value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %status_reg_value, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then:                                          ; preds = %entry
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.end7, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_no, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %3, i32 noundef 6, i32 noundef 12, ptr noundef nonnull @.str.69) #16
  br label %do.body10

do.end7:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 12, ptr noundef nonnull @.str.69) #16
  br label %do.body10

do.body10:                                        ; preds = %do.end7, %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !830
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tw_dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 32768) #13, !srcloc !803
  br label %if.end13

if.end13:                                         ; preds = %do.body10, %entry.if.end13_crit_edge
  %and14 = and i32 %status_reg_value, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end39_crit_edge, label %if.then16

if.end13.if.end39_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then16:                                        ; preds = %if.end13
  %host17 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %6 = ptrtoint ptr %host17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host17, align 4
  %tobool18.not = icmp eq ptr %7, null
  br i1 %tobool18.not, label %do.end30, label %do.end22

do.end22:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %host_no25 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %host_no25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_no25, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %9, i32 noundef 6, i32 noundef 13, ptr noundef nonnull @.str.74) #16
  br label %do.body34

do.end30:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 13, ptr noundef nonnull @.str.74) #16
  br label %do.body34

do.body34:                                        ; preds = %do.end30, %do.end22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !831
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tw_dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 4096) #13, !srcloc !803
  %tw_pci_dev = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 5
  %12 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tw_pci_dev, align 4
  %call38 = tail call i32 @pci_write_config_word(ptr noundef %13, i32 noundef 6, i16 noundef zeroext 8192) #13
  br label %if.end39

if.end39:                                         ; preds = %do.body34, %if.end13.if.end39_crit_edge
  %and40 = and i32 %status_reg_value, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end75_crit_edge, label %if.then42

if.end39.if.end75_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then42:                                        ; preds = %if.end39
  %tw_pci_dev43 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 5
  %14 = ptrtoint ptr %tw_pci_dev43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tw_pci_dev43, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %device, align 2
  %18 = and i16 %17, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4100, i16 %18)
  %switch = icmp eq i16 %18, 4100
  br i1 %switch, label %lor.lhs.false, label %if.then42.if.then52_crit_edge

if.then42.if.then52_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

lor.lhs.false:                                    ; preds = %if.then42
  %flags = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 25
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool51.not = icmp eq i32 %21, 0
  br i1 %tobool51.not, label %lor.lhs.false.if.then52_crit_edge, label %lor.lhs.false.do.body71_crit_edge

lor.lhs.false.do.body71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body71

lor.lhs.false.if.then52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false.if.then52_crit_edge, %if.then42.if.then52_crit_edge
  %host53 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %22 = ptrtoint ptr %host53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host53, align 4
  %tobool54.not = icmp eq ptr %23, null
  br i1 %tobool54.not, label %do.end66, label %do.end58

do.end58:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  %host_no61 = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %host_no61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %host_no61, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %25, i32 noundef 6, i32 noundef 14, ptr noundef nonnull @.str.79) #16
  br label %do.body71

do.end66:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 14, ptr noundef nonnull @.str.79) #16
  br label %do.body71

do.body71:                                        ; preds = %do.end66, %do.end58, %lor.lhs.false.do.body71_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !832
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tw_dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 16384) #13, !srcloc !803
  br label %if.end75

if.end75:                                         ; preds = %do.body71, %if.end39.if.end75_crit_edge
  %and76 = and i32 %status_reg_value, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.out_crit_edge, label %if.then78

if.end75.out_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then78:                                        ; preds = %if.end75
  %reset_print = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 26
  %28 = ptrtoint ptr %reset_print to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reset_print, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp79 = icmp eq i32 %29, 0
  br i1 %cmp79, label %if.then81, label %if.then78.out_crit_edge

if.then78.out_crit_edge:                          ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then81:                                        ; preds = %if.then78
  %host82 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %30 = ptrtoint ptr %host82 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host82, align 4
  %tobool83.not = icmp eq ptr %31, null
  br i1 %tobool83.not, label %do.end95, label %do.end87

do.end87:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  %host_no90 = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 17
  %32 = ptrtoint ptr %host_no90 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %host_no90, align 4
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %33, i32 noundef 6, i32 noundef 16, ptr noundef nonnull @.str.84) #16
  br label %if.end98

do.end95:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 16, ptr noundef nonnull @.str.84) #16
  br label %if.end98

if.end98:                                         ; preds = %do.end95, %do.end87
  %34 = ptrtoint ptr %reset_print to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %reset_print, align 4
  br label %out

out:                                              ; preds = %if.end98, %if.then78.out_crit_edge, %if.end75.out_crit_edge
  %retval1.0 = phi i32 [ 1, %if.end98 ], [ 1, %if.then78.out_crit_edge ], [ 0, %if.end75.out_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twa_reset_device_extension(ptr noundef %tw_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags2 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 25
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags2) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !833
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tw_dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 1073741824) #13, !srcloc !803
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !834
  tail call void @arm_heavy_mb() #13
  %2 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tw_dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 512) #13, !srcloc !803
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_lock, align 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.094 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13, i32 %i.094
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.451)
  switch i32 %9, label %if.then [
    i32 32, label %for.body.for.inc_crit_edge
    i32 1, label %for.body.for.inc_crit_edge98
    i32 16, label %for.body.for.inc_crit_edge99
  ]

for.body.for.inc_crit_edge99:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.for.inc_crit_edge98:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx27 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 6, i32 %i.094
  %11 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx27, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.then.for.inc_crit_edge, label %if.then28

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then28:                                        ; preds = %if.then
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 524288, ptr %result, align 4
  %nents.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %12, i32 0, i32 17, i32 0, i32 1
  %14 = ptrtoint ptr %nents.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 1
  br i1 %cmp.not.i, label %twa_command_mapped.exit, label %if.then28.if.then32_crit_edge

if.then28.if.then32_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32

twa_command_mapped.exit:                          ; preds = %if.then28
  %length.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %12, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %17)
  %cmp2.i = icmp ugt i32 %17, 511
  br i1 %cmp2.i, label %twa_command_mapped.exit.if.then32_crit_edge, label %twa_command_mapped.exit.if.end_crit_edge

twa_command_mapped.exit.if.end_crit_edge:         ; preds = %twa_command_mapped.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

twa_command_mapped.exit.if.then32_crit_edge:      ; preds = %twa_command_mapped.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32

if.then32:                                        ; preds = %twa_command_mapped.exit.if.then32_crit_edge, %if.then28.if.then32_crit_edge
  tail call void @scsi_dma_unmap(ptr noundef nonnull %12) #13
  br label %if.end

if.end:                                           ; preds = %if.then32, %twa_command_mapped.exit.if.end_crit_edge
  tail call void @scsi_done(ptr noundef nonnull %12) #13
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge98, %for.body.for.inc_crit_edge99
  %inc = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.for.body38_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.body38_crit_edge:                     ; preds = %for.inc
  br label %for.body38

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %for.inc.for.body38_crit_edge
  %i.196 = phi i32 [ %inc44, %for.body38.for.body38_crit_edge ], [ 0, %for.inc.for.body38_crit_edge ]
  %conv39 = trunc i32 %i.196 to i8
  %arrayidx40 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 7, i32 %i.196
  %18 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv39, ptr %arrayidx40, align 1
  %arrayidx42 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13, i32 %i.196
  %19 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %arrayidx42, align 4
  %inc44 = add nuw nsw i32 %i.196, 1
  %exitcond97.not = icmp eq i32 %inc44, 256
  br i1 %exitcond97.not, label %for.end45, label %for.body38.for.body38_crit_edge

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body38

for.end45:                                        ; preds = %for.body38
  %free_head = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 8
  %20 = ptrtoint ptr %free_head to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %free_head, align 8
  %free_tail = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 9
  %21 = ptrtoint ptr %free_tail to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %free_tail, align 1
  %posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14
  %22 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %posted_request_count, align 4
  %pending_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 16
  %23 = ptrtoint ptr %pending_request_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pending_request_count, align 4
  %pending_head = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 11
  %24 = ptrtoint ptr %pending_head to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %pending_head, align 2
  %pending_tail = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 12
  %25 = ptrtoint ptr %pending_tail to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %pending_tail, align 1
  %reset_print = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 26
  %26 = ptrtoint ptr %reset_print to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %reset_print, align 4
  %27 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host, align 4
  %host_lock47 = getelementptr inbounds %struct.Scsi_Host, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %host_lock47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host_lock47, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %call9) #13
  %call48 = tail call fastcc i32 @twa_reset_sequence(ptr noundef %tw_dev, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.body52, label %for.end45.out_crit_edge

for.end45.out_crit_edge:                          ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body52:                                        ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !835
  tail call void @arm_heavy_mb() #13
  %31 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tw_dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 -2143288320) #13, !srcloc !803
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags2) #13
  %chrdev_request_id = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 33
  %33 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %chrdev_request_id, align 8
  br label %out

out:                                              ; preds = %do.body52, %for.end45.out_crit_edge
  %retval1.0 = phi i32 [ 1, %for.end45.out_crit_edge ], [ 0, %do.body52 ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twa_show_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host3 = getelementptr i8, ptr %dev, i32 7644
  %0 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host3, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #13
  %posted_request_count = getelementptr i8, ptr %dev, i32 7604
  %4 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %posted_request_count, align 4
  %max_posted_request_count = getelementptr i8, ptr %dev, i32 7608
  %6 = ptrtoint ptr %max_posted_request_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_posted_request_count, align 8
  %pending_request_count = getelementptr i8, ptr %dev, i32 7612
  %8 = ptrtoint ptr %pending_request_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pending_request_count, align 4
  %max_pending_request_count = getelementptr i8, ptr %dev, i32 7616
  %10 = ptrtoint ptr %max_pending_request_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_pending_request_count, align 8
  %sgl_entries = getelementptr i8, ptr %dev, i32 7624
  %12 = ptrtoint ptr %sgl_entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sgl_entries, align 8
  %max_sgl_entries = getelementptr i8, ptr %dev, i32 7620
  %14 = ptrtoint ptr %max_sgl_entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_sgl_entries, align 4
  %sector_count = getelementptr i8, ptr %dev, i32 7632
  %16 = ptrtoint ptr %sector_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sector_count, align 8
  %max_sector_count = getelementptr i8, ptr %dev, i32 7636
  %18 = ptrtoint ptr %max_sector_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_sector_count, align 4
  %num_resets = getelementptr i8, ptr %dev, i32 7628
  %20 = ptrtoint ptr %num_resets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_resets, align 4
  %aen_count = getelementptr i8, ptr %dev, i32 7640
  %22 = ptrtoint ptr %aen_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %aen_count, align 8
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.2, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23)
  %24 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host3, align 4
  %host_lock9 = getelementptr inbounds %struct.Scsi_Host, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %host_lock9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host_lock9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %call4) #13
  ret i32 %call7
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twa_allocate_memory(ptr nocapture noundef %tw_dev, i32 noundef %size, i32 noundef %which) unnamed_addr #2 align 64 {
entry:
  %dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #13
  %0 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle, align 4, !annotation !836
  %tw_pci_dev = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 5
  %1 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tw_pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %mul = shl i32 %size, 8
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef nonnull %dma_handle, i32 noundef 3264, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %do.end8, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host_no, align 4
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %6, i32 noundef 6, i32 noundef 5, ptr noundef nonnull @.str.113) #16
  br label %out

do.end8:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 5, ptr noundef nonnull @.str.113) #16
  br label %out

if.end11:                                         ; preds = %entry
  %7 = ptrtoint ptr %call.i to i32
  %rem = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool12.not = icmp eq i32 %rem, 0
  br i1 %tobool12.not, label %if.end34, label %if.then13

if.then13:                                        ; preds = %if.end11
  %host14 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %8 = ptrtoint ptr %host14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host14, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %do.end27, label %do.end19

do.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %host_no22 = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %host_no22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %host_no22, align 4
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %11, i32 noundef 6, i32 noundef 6, ptr noundef nonnull @.str.118) #16
  br label %if.end30

do.end27:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 6, ptr noundef nonnull @.str.118) #16
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %do.end19
  %12 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tw_pci_dev, align 4
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev32, i32 noundef %mul, ptr noundef nonnull %call.i, i32 noundef %15, i32 noundef 0) #13
  br label %out

if.end34:                                         ; preds = %if.end11
  %16 = call ptr @memset(ptr %call.i, i32 0, i32 %mul)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end34
  %i.076 = phi i32 [ 0, %if.end34 ], [ %inc, %for.inc.for.body_crit_edge ]
  %17 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.452)
  switch i32 %which, label %for.body.for.inc_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb39
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_handle, align 4
  %mul36 = mul i32 %i.076, %size
  %add = add i32 %19, %mul36
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 4, i32 %i.076
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %call.i, i32 %mul36
  %arrayidx38 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 3, i32 %i.076
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %arrayidx38, align 4
  br label %for.inc

sw.bb39:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_handle, align 4
  %mul40 = mul i32 %i.076, %size
  %add41 = add i32 %23, %mul40
  %arrayidx42 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 2, i32 %i.076
  %24 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add41, ptr %arrayidx42, align 4
  %add.ptr44 = getelementptr i8, ptr %call.i, i32 %mul40
  %arrayidx45 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 1, i32 %i.076
  %25 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr44, ptr %arrayidx45, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb39, %sw.bb, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end30, %do.end8, %do.end
  %retval1.0 = phi i32 [ 1, %if.end30 ], [ 1, %do.end ], [ 1, %do.end8 ], [ 0, %for.inc.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #13
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twa_initconnection(ptr noundef %tw_dev, i32 noundef %message_credits, i32 noundef %set_features, i16 noundef zeroext %current_fw_srl, i16 noundef zeroext %current_fw_arch_id, i16 noundef zeroext %current_fw_build, ptr nocapture noundef writeonly %fw_on_ctlr_srl, ptr nocapture noundef writeonly %fw_on_ctlr_arch_id, ptr nocapture noundef writeonly %fw_on_ctlr_branch, ptr nocapture noundef writeonly %fw_on_ctlr_build, ptr nocapture noundef writeonly %init_connect_result) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %command_packet_virt = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 3
  %0 = ptrtoint ptr %command_packet_virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %command_packet_virt, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %header_desc = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %header_desc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %header_desc, align 4
  %command = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %command, align 4
  %conv3 = trunc i32 %message_credits to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv3)
  %message_credits4 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 5
  %6 = ptrtoint ptr %message_credits4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %message_credits4, align 2
  %7 = tail call i32 @llvm.bswap.i32(i32 %set_features)
  %features = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 6
  %8 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %features, align 4
  %and = and i32 %set_features, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i16 @llvm.bswap.i16(i16 %current_fw_srl)
  %fw_srl = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 6, i32 4
  %10 = ptrtoint ptr %fw_srl to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %fw_srl, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %current_fw_arch_id)
  %fw_arch_id = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %fw_arch_id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %fw_arch_id, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %current_fw_build)
  %fw_build = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 6, i32 10
  %14 = ptrtoint ptr %fw_build to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %fw_build, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i8 [ 6, %if.then ], [ 3, %entry.if.end_crit_edge ]
  %15 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %15, align 1
  %call = tail call fastcc i32 @twa_post_command_packet(ptr noundef %tw_dev, i32 noundef 0, i8 noundef zeroext 1)
  %call6 = tail call fastcc i32 @twa_poll_response(ptr noundef %tw_dev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else20, label %if.then8

if.then8:                                         ; preds = %if.end
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host, align 4
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %do.end16, label %do.end

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %host_no, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %20, i32 noundef 6, i32 noundef 21, ptr noundef nonnull @.str.165) #16
  br label %if.end29

do.end16:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 21, ptr noundef nonnull @.str.165) #16
  br label %if.end29

if.else20:                                        ; preds = %if.end
  br i1 %tobool.not, label %if.else20.if.end29_crit_edge, label %if.then23

if.else20.if.end29_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then23:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #15
  %fw_srl24 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 6, i32 4
  %21 = ptrtoint ptr %fw_srl24 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fw_srl24, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %24 = ptrtoint ptr %fw_on_ctlr_srl to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %fw_on_ctlr_srl, align 2
  %fw_arch_id25 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 6, i32 6
  %25 = ptrtoint ptr %fw_arch_id25 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %fw_arch_id25, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %28 = ptrtoint ptr %fw_on_ctlr_arch_id to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %fw_on_ctlr_arch_id, align 2
  %fw_branch26 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 6, i32 8
  %29 = ptrtoint ptr %fw_branch26 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %fw_branch26, align 4
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %32 = ptrtoint ptr %fw_on_ctlr_branch to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %fw_on_ctlr_branch, align 2
  %fw_build27 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 6, i32 10
  %33 = ptrtoint ptr %fw_build27 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %fw_build27, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %36 = ptrtoint ptr %fw_on_ctlr_build to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %fw_on_ctlr_build, align 2
  %result = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 6, i32 12
  %37 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %result, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %init_connect_result to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %init_connect_result, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.else20.if.end29_crit_edge, %do.end16, %do.end
  %retval1.0 = phi i32 [ 1, %do.end ], [ 1, %do.end16 ], [ 0, %if.then23 ], [ 0, %if.else20.if.end29_crit_edge ]
  %posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14
  %41 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %posted_request_count, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %posted_request_count, align 4
  %state = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13
  %43 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %state, align 4
  ret i32 %retval1.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twa_poll_response(ptr noundef %tw_dev, i32 noundef %request_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 3, i32 %request_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tw_dev, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !806
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !837
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = and i32 %5, 15736832
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %7)
  %.not.i = icmp eq i32 %7, 8192
  br i1 %.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call4.i = tail call fastcc i32 @twa_decode_bits(ptr noundef %tw_dev, i32 noundef %5) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %and3.i = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp.not4.i = icmp eq i32 %and3.i, 0
  br i1 %cmp.not4.i, label %if.end.i.if.then_crit_edge, label %while.body.lr.ph.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

while.body.lr.ph.i:                               ; preds = %if.end.i
  %add.i = add i32 %6, 3000
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %8 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tw_dev, align 8
  %add.ptr8.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #13, !srcloc !806
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !838
  %12 = and i32 %11, 15736832
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %12)
  %.not2.i = icmp eq i32 %12, 8192
  br i1 %.not2.i, label %while.body.i.if.end16.i_crit_edge, label %if.then14.i

while.body.i.if.end16.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

if.then14.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call15.i = tail call fastcc i32 @twa_decode_bits(ptr noundef %tw_dev, i32 noundef %11) #13
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %while.body.i.if.end16.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp17.i = icmp slt i32 %sub.i, 0
  br i1 %cmp17.i, label %if.end16.i.out_crit_edge, label %if.end19.i

if.end16.i.out_crit_edge:                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end19.i:                                       ; preds = %if.end16.i
  tail call void @msleep(i32 noundef 50) #13
  %and.i = and i32 %11, 16384
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end19.i.if.then_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end19.i.if.then_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %if.end19.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %14 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tw_dev, align 8
  %add.ptr = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !806
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !839
  %shr = lshr i32 %17, 4
  %and = and i32 %shr, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %request_id)
  %cmp4.not = icmp eq i32 %and, %request_id
  br i1 %cmp4.not, label %if.end15, label %if.then5

if.then5:                                         ; preds = %if.then
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %do.end12, label %do.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %host_no, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %21, i32 noundef 6, i32 noundef 30, ptr noundef nonnull @.str.169) #16
  br label %out

do.end12:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 30, ptr noundef nonnull @.str.169) #16
  br label %out

if.end15:                                         ; preds = %if.then
  %command = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %command, align 4
  %24 = and i8 %23, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %24)
  %cmp17 = icmp eq i8 %24, 16
  %status = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp22.not = icmp eq i8 %26, 0
  br i1 %cmp17, label %if.then19, label %if.else27

if.then19:                                        ; preds = %if.end15
  br i1 %cmp22.not, label %if.then19.out_crit_edge, label %if.then24

if.then19.out_crit_edge:                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then24:                                        ; preds = %if.then19
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %err_specific_desc.i = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %28, i32 0, i32 2
  %error6.i = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %28, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %error6.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %error6.i, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #13
  %conv.i = zext i16 %31 to i32
  %32 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.453)
  switch i16 %30, label %if.then.i2 [
    i16 2561, label %if.then24.out_crit_edge
    i16 10241, label %if.then24.out_crit_edge36
  ]

if.then24.out_crit_edge36:                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then24.out_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.i2:                                       ; preds = %if.then24
  %call.i = tail call i32 @strlen(ptr noundef %err_specific_desc.i) #18
  %add.i1 = add i32 %call.i, 1
  %arrayidx4.i = getelementptr %struct.TAG_TW_Command_Apache_Header, ptr %28, i32 0, i32 2, i32 %add.i1
  %33 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool29.not.i = icmp eq i8 %34, 0
  br i1 %tobool29.not.i, label %cond.false31.i, label %if.then.i2.cond.end34.i_crit_edge

if.then.i2.cond.end34.i_crit_edge:                ; preds = %if.then.i2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end34.i

cond.false31.i:                                   ; preds = %if.then.i2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %30)
  %cmp.not11.i69.i = icmp eq i16 %30, 1
  br i1 %cmp.not11.i69.i, label %cond.false31.i.twa_string_lookup.exit80.i_crit_edge, label %cond.false31.i.land.rhs.i73.i_crit_edge

cond.false31.i.land.rhs.i73.i_crit_edge:          ; preds = %cond.false31.i
  br label %land.rhs.i73.i

cond.false31.i.twa_string_lookup.exit80.i_crit_edge: ; preds = %cond.false31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit80.i

land.rhs.i73.i:                                   ; preds = %for.inc.i77.i.land.rhs.i73.i_crit_edge, %cond.false31.i.land.rhs.i73.i_crit_edge
  %index.012.i70.i = phi i32 [ %inc.i74.i, %for.inc.i77.i.land.rhs.i73.i_crit_edge ], [ 0, %cond.false31.i.land.rhs.i73.i_crit_edge ]
  %text.i71.i = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %index.012.i70.i, i32 1
  %35 = ptrtoint ptr %text.i71.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %text.i71.i, align 4
  %cmp3.not.i72.i = icmp eq ptr %36, null
  br i1 %cmp3.not.i72.i, label %land.rhs.i73.i.twa_string_lookup.exit80.i_crit_edge, label %for.inc.i77.i

land.rhs.i73.i.twa_string_lookup.exit80.i_crit_edge: ; preds = %land.rhs.i73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit80.i

for.inc.i77.i:                                    ; preds = %land.rhs.i73.i
  %inc.i74.i = add i32 %index.012.i70.i, 1
  %arrayidx.i75.i = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %inc.i74.i
  %37 = ptrtoint ptr %arrayidx.i75.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i75.i, align 4
  %cmp.not.i76.i = icmp eq i32 %38, %conv.i
  br i1 %cmp.not.i76.i, label %for.inc.i77.i.twa_string_lookup.exit80.i_crit_edge, label %for.inc.i77.i.land.rhs.i73.i_crit_edge

for.inc.i77.i.land.rhs.i73.i_crit_edge:           ; preds = %for.inc.i77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i73.i

for.inc.i77.i.twa_string_lookup.exit80.i_crit_edge: ; preds = %for.inc.i77.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit80.i

twa_string_lookup.exit80.i:                       ; preds = %for.inc.i77.i.twa_string_lookup.exit80.i_crit_edge, %land.rhs.i73.i.twa_string_lookup.exit80.i_crit_edge, %cond.false31.i.twa_string_lookup.exit80.i_crit_edge
  %index.0.lcssa.i78.i = phi i32 [ 0, %cond.false31.i.twa_string_lookup.exit80.i_crit_edge ], [ %inc.i74.i, %for.inc.i77.i.twa_string_lookup.exit80.i_crit_edge ], [ %index.012.i70.i, %land.rhs.i73.i.twa_string_lookup.exit80.i_crit_edge ]
  %text5.i79.i = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %index.0.lcssa.i78.i, i32 1
  %39 = ptrtoint ptr %text5.i79.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %text5.i79.i, align 4
  br label %cond.end34.i

cond.end34.i:                                     ; preds = %twa_string_lookup.exit80.i, %if.then.i2.cond.end34.i_crit_edge
  %cond35.i = phi ptr [ %40, %twa_string_lookup.exit80.i ], [ %arrayidx4.i, %if.then.i2.cond.end34.i_crit_edge ]
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, i32 noundef 3, i32 noundef %conv.i, ptr noundef %cond35.i, ptr noundef %err_specific_desc.i) #16
  br label %out

if.else27:                                        ; preds = %if.end15
  br i1 %cmp22.not, label %if.else27.out_crit_edge, label %if.then33

if.else27.out_crit_edge:                          ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then33:                                        ; preds = %if.else27
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %err_specific_desc.i5 = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %42, i32 0, i32 2
  %error6.i9 = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %42, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %error6.i9 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %error6.i9, align 2
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #13
  %conv.i10 = zext i16 %45 to i32
  %46 = zext i16 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.454)
  switch i16 %44, label %if.then.i11 [
    i16 2561, label %if.then33.out_crit_edge
    i16 10241, label %if.then33.out_crit_edge37
  ]

if.then33.out_crit_edge37:                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then33.out_crit_edge:                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.i11:                                      ; preds = %if.then33
  %call.i6 = tail call i32 @strlen(ptr noundef %err_specific_desc.i5) #18
  %add.i7 = add i32 %call.i6, 1
  %arrayidx4.i8 = getelementptr %struct.TAG_TW_Command_Apache_Header, ptr %42, i32 0, i32 2, i32 %add.i7
  %47 = ptrtoint ptr %arrayidx4.i8 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx4.i8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool29.not.i12 = icmp eq i8 %48, 0
  br i1 %tobool29.not.i12, label %cond.false31.i14, label %if.then.i11.cond.end34.i28_crit_edge

if.then.i11.cond.end34.i28_crit_edge:             ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end34.i28

cond.false31.i14:                                 ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %44)
  %cmp.not11.i69.i13 = icmp eq i16 %44, 1
  br i1 %cmp.not11.i69.i13, label %cond.false31.i14.twa_string_lookup.exit80.i25_crit_edge, label %cond.false31.i14.land.rhs.i73.i18_crit_edge

cond.false31.i14.land.rhs.i73.i18_crit_edge:      ; preds = %cond.false31.i14
  br label %land.rhs.i73.i18

cond.false31.i14.twa_string_lookup.exit80.i25_crit_edge: ; preds = %cond.false31.i14
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit80.i25

land.rhs.i73.i18:                                 ; preds = %for.inc.i77.i22.land.rhs.i73.i18_crit_edge, %cond.false31.i14.land.rhs.i73.i18_crit_edge
  %index.012.i70.i15 = phi i32 [ %inc.i74.i19, %for.inc.i77.i22.land.rhs.i73.i18_crit_edge ], [ 0, %cond.false31.i14.land.rhs.i73.i18_crit_edge ]
  %text.i71.i16 = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %index.012.i70.i15, i32 1
  %49 = ptrtoint ptr %text.i71.i16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %text.i71.i16, align 4
  %cmp3.not.i72.i17 = icmp eq ptr %50, null
  br i1 %cmp3.not.i72.i17, label %land.rhs.i73.i18.twa_string_lookup.exit80.i25_crit_edge, label %for.inc.i77.i22

land.rhs.i73.i18.twa_string_lookup.exit80.i25_crit_edge: ; preds = %land.rhs.i73.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit80.i25

for.inc.i77.i22:                                  ; preds = %land.rhs.i73.i18
  %inc.i74.i19 = add i32 %index.012.i70.i15, 1
  %arrayidx.i75.i20 = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %inc.i74.i19
  %51 = ptrtoint ptr %arrayidx.i75.i20 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i75.i20, align 4
  %cmp.not.i76.i21 = icmp eq i32 %52, %conv.i10
  br i1 %cmp.not.i76.i21, label %for.inc.i77.i22.twa_string_lookup.exit80.i25_crit_edge, label %for.inc.i77.i22.land.rhs.i73.i18_crit_edge

for.inc.i77.i22.land.rhs.i73.i18_crit_edge:       ; preds = %for.inc.i77.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i73.i18

for.inc.i77.i22.twa_string_lookup.exit80.i25_crit_edge: ; preds = %for.inc.i77.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit80.i25

twa_string_lookup.exit80.i25:                     ; preds = %for.inc.i77.i22.twa_string_lookup.exit80.i25_crit_edge, %land.rhs.i73.i18.twa_string_lookup.exit80.i25_crit_edge, %cond.false31.i14.twa_string_lookup.exit80.i25_crit_edge
  %index.0.lcssa.i78.i23 = phi i32 [ 0, %cond.false31.i14.twa_string_lookup.exit80.i25_crit_edge ], [ %inc.i74.i19, %for.inc.i77.i22.twa_string_lookup.exit80.i25_crit_edge ], [ %index.012.i70.i15, %land.rhs.i73.i18.twa_string_lookup.exit80.i25_crit_edge ]
  %text5.i79.i24 = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %index.0.lcssa.i78.i23, i32 1
  %53 = ptrtoint ptr %text5.i79.i24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %text5.i79.i24, align 4
  br label %cond.end34.i28

cond.end34.i28:                                   ; preds = %twa_string_lookup.exit80.i25, %if.then.i11.cond.end34.i28_crit_edge
  %cond35.i26 = phi ptr [ %54, %twa_string_lookup.exit80.i25 ], [ %arrayidx4.i8, %if.then.i11.cond.end34.i28_crit_edge ]
  %call39.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, i32 noundef 3, i32 noundef %conv.i10, ptr noundef %cond35.i26, ptr noundef %err_specific_desc.i5) #16
  br label %out

out:                                              ; preds = %cond.end34.i28, %if.then33.out_crit_edge, %if.then33.out_crit_edge37, %if.else27.out_crit_edge, %cond.end34.i, %if.then24.out_crit_edge, %if.then24.out_crit_edge36, %if.then19.out_crit_edge, %do.end12, %do.end, %if.end16.i.out_crit_edge
  %retval1.0 = phi i32 [ 1, %do.end ], [ 1, %do.end12 ], [ 1, %if.then24.out_crit_edge ], [ 1, %if.then24.out_crit_edge36 ], [ 1, %cond.end34.i ], [ 1, %if.then33.out_crit_edge ], [ 1, %if.then33.out_crit_edge37 ], [ 1, %cond.end34.i28 ], [ 0, %if.else27.out_crit_edge ], [ 0, %if.then19.out_crit_edge ], [ 1, %if.end16.i.out_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twa_fill_sense(ptr nocapture noundef readonly %tw_dev, i32 noundef %request_id, i32 noundef %copy_sense, i32 noundef %print_host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 3, i32 %request_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %err_specific_desc = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %1, i32 0, i32 2
  %call = tail call i32 @strlen(ptr noundef %err_specific_desc) #20
  %add = add i32 %call, 1
  %arrayidx4 = getelementptr %struct.TAG_TW_Command_Apache_Header, ptr %1, i32 0, i32 2, i32 %add
  %error6 = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %error6 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %error6, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %5 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.455)
  switch i16 %3, label %if.then [
    i16 2561, label %entry.if.end40_crit_edge
    i16 10241, label %entry.if.end40_crit_edge81
  ]

entry.if.end40_crit_edge81:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print_host)
  %tobool.not = icmp eq i32 %print_host, 0
  br i1 %tobool.not, label %do.end24, label %do.end

do.end:                                           ; preds = %if.then
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_no, align 4
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15.not = icmp eq i8 %11, 0
  br i1 %tobool15.not, label %cond.false, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not11.i = icmp eq i16 %3, 1
  br i1 %cmp.not11.i, label %cond.false.twa_string_lookup.exit_crit_edge, label %cond.false.land.rhs.i_crit_edge

cond.false.land.rhs.i_crit_edge:                  ; preds = %cond.false
  br label %land.rhs.i

cond.false.twa_string_lookup.exit_crit_edge:      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %cond.false.land.rhs.i_crit_edge
  %index.012.i = phi i32 [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ], [ 0, %cond.false.land.rhs.i_crit_edge ]
  %text.i = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %index.012.i, i32 1
  %12 = ptrtoint ptr %text.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %text.i, align 4
  %cmp3.not.i = icmp eq ptr %13, null
  br i1 %cmp3.not.i, label %land.rhs.i.twa_string_lookup.exit_crit_edge, label %for.inc.i

land.rhs.i.twa_string_lookup.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit

for.inc.i:                                        ; preds = %land.rhs.i
  %inc.i = add i32 %index.012.i, 1
  %arrayidx.i = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %inc.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %cmp.not.i = icmp eq i32 %15, %conv
  br i1 %cmp.not.i, label %for.inc.i.twa_string_lookup.exit_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

for.inc.i.twa_string_lookup.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit

twa_string_lookup.exit:                           ; preds = %for.inc.i.twa_string_lookup.exit_crit_edge, %land.rhs.i.twa_string_lookup.exit_crit_edge, %cond.false.twa_string_lookup.exit_crit_edge
  %index.0.lcssa.i = phi i32 [ 0, %cond.false.twa_string_lookup.exit_crit_edge ], [ %index.012.i, %land.rhs.i.twa_string_lookup.exit_crit_edge ], [ %inc.i, %for.inc.i.twa_string_lookup.exit_crit_edge ]
  %text5.i = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %index.0.lcssa.i, i32 1
  %16 = ptrtoint ptr %text5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %text5.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %twa_string_lookup.exit, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %17, %twa_string_lookup.exit ], [ %arrayidx4, %do.end.cond.end_crit_edge ]
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %9, i32 noundef 3, i32 noundef %conv, ptr noundef %cond, ptr noundef %err_specific_desc) #16
  br label %if.end40

do.end24:                                         ; preds = %if.then
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool29.not = icmp eq i8 %19, 0
  br i1 %tobool29.not, label %cond.false31, label %do.end24.cond.end34_crit_edge

do.end24.cond.end34_crit_edge:                    ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end34

cond.false31:                                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not11.i69 = icmp eq i16 %3, 1
  br i1 %cmp.not11.i69, label %cond.false31.twa_string_lookup.exit80_crit_edge, label %cond.false31.land.rhs.i73_crit_edge

cond.false31.land.rhs.i73_crit_edge:              ; preds = %cond.false31
  br label %land.rhs.i73

cond.false31.twa_string_lookup.exit80_crit_edge:  ; preds = %cond.false31
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit80

land.rhs.i73:                                     ; preds = %for.inc.i77.land.rhs.i73_crit_edge, %cond.false31.land.rhs.i73_crit_edge
  %index.012.i70 = phi i32 [ %inc.i74, %for.inc.i77.land.rhs.i73_crit_edge ], [ 0, %cond.false31.land.rhs.i73_crit_edge ]
  %text.i71 = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %index.012.i70, i32 1
  %20 = ptrtoint ptr %text.i71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %text.i71, align 4
  %cmp3.not.i72 = icmp eq ptr %21, null
  br i1 %cmp3.not.i72, label %land.rhs.i73.twa_string_lookup.exit80_crit_edge, label %for.inc.i77

land.rhs.i73.twa_string_lookup.exit80_crit_edge:  ; preds = %land.rhs.i73
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit80

for.inc.i77:                                      ; preds = %land.rhs.i73
  %inc.i74 = add i32 %index.012.i70, 1
  %arrayidx.i75 = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %inc.i74
  %22 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i75, align 4
  %cmp.not.i76 = icmp eq i32 %23, %conv
  br i1 %cmp.not.i76, label %for.inc.i77.twa_string_lookup.exit80_crit_edge, label %for.inc.i77.land.rhs.i73_crit_edge

for.inc.i77.land.rhs.i73_crit_edge:               ; preds = %for.inc.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i73

for.inc.i77.twa_string_lookup.exit80_crit_edge:   ; preds = %for.inc.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit80

twa_string_lookup.exit80:                         ; preds = %for.inc.i77.twa_string_lookup.exit80_crit_edge, %land.rhs.i73.twa_string_lookup.exit80_crit_edge, %cond.false31.twa_string_lookup.exit80_crit_edge
  %index.0.lcssa.i78 = phi i32 [ 0, %cond.false31.twa_string_lookup.exit80_crit_edge ], [ %index.012.i70, %land.rhs.i73.twa_string_lookup.exit80_crit_edge ], [ %inc.i74, %for.inc.i77.twa_string_lookup.exit80_crit_edge ]
  %text5.i79 = getelementptr %struct.TAG_twa_message_type, ptr @twa_error_table, i32 %index.0.lcssa.i78, i32 1
  %24 = ptrtoint ptr %text5.i79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %text5.i79, align 4
  br label %cond.end34

cond.end34:                                       ; preds = %twa_string_lookup.exit80, %do.end24.cond.end34_crit_edge
  %cond35 = phi ptr [ %25, %twa_string_lookup.exit80 ], [ %arrayidx4, %do.end24.cond.end34_crit_edge ]
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, i32 noundef 3, i32 noundef %conv, ptr noundef %cond35, ptr noundef %err_specific_desc) #16
  br label %if.end40

if.end40:                                         ; preds = %cond.end34, %cond.end, %entry.if.end40_crit_edge, %entry.if.end40_crit_edge81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copy_sense)
  %tobool41.not = icmp eq i32 %copy_sense, 0
  br i1 %tobool41.not, label %if.end40.out_crit_edge, label %if.then42

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx43 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 6, i32 %request_id
  %26 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx43, align 4
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %27, i32 0, i32 21
  %28 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sense_buffer, align 4
  %30 = call ptr @memcpy(ptr %29, ptr %1, i32 18)
  %status = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %1, i32 0, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %status, align 4
  %conv46 = zext i8 %32 to i32
  %shl = shl nuw nsw i32 %conv46, 1
  %33 = load ptr, ptr %arrayidx43, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %33, i32 0, i32 24
  %34 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl, ptr %result, align 4
  br label %out

out:                                              ; preds = %if.then42, %if.end40.out_crit_edge
  %retval1.0 = phi i32 [ 3, %if.then42 ], [ 0, %if.end40.out_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @twa_aen_queue_event(ptr nocapture noundef %tw_dev, ptr noundef %header) unnamed_addr #2 align 64 {
entry:
  %host = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %host) #13
  %aen_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 23
  %0 = getelementptr inbounds i8, ptr %host, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 15)
  %2 = ptrtoint ptr %aen_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aen_count, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %aen_count, align 8
  %error_index = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 28
  %4 = ptrtoint ptr %error_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %error_index, align 8
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 27, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %host to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %host, align 1
  %host2 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %9 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host2, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %entry
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %host_no, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %host, ptr noundef nonnull @.str.301, i32 noundef %12)
  %retrieved = getelementptr inbounds %struct.TAG_TW_Event, ptr %7, i32 0, i32 4
  %13 = ptrtoint ptr %retrieved to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %retrieved, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp = icmp eq i8 %14, 1
  br i1 %cmp, label %if.then5, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %aen_clobber = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 36
  %15 = ptrtoint ptr %aen_clobber to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %aen_clobber, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %error = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %header, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %error, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = call ptr @memset(ptr %7, i32 0, i32 112)
  %severity__reserved = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %header, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %severity__reserved to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %severity__reserved, align 1
  %22 = and i8 %21, 7
  %severity = getelementptr inbounds %struct.TAG_TW_Event, ptr %7, i32 0, i32 3
  %23 = ptrtoint ptr %severity to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %severity, align 2
  %call10 = tail call i64 @ktime_get_real_seconds() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %24 = load i32, ptr @sys_tz, align 4
  %mul.neg = mul i32 %24, -60
  %25 = trunc i64 %call10 to i32
  %conv12 = add i32 %mul.neg, %25
  %time_stamp_sec = getelementptr inbounds %struct.TAG_TW_Event, ptr %7, i32 0, i32 1
  %26 = ptrtoint ptr %time_stamp_sec to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv12, ptr %time_stamp_sec, align 4
  %aen_code = getelementptr inbounds %struct.TAG_TW_Event, ptr %7, i32 0, i32 2
  %27 = ptrtoint ptr %aen_code to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %18, ptr %aen_code, align 4
  %retrieved13 = getelementptr inbounds %struct.TAG_TW_Event, ptr %7, i32 0, i32 4
  %28 = ptrtoint ptr %retrieved13 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %retrieved13, align 1
  %error_sequence_id = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 30
  %29 = ptrtoint ptr %error_sequence_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %error_sequence_id, align 4
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %7, align 4
  %32 = load i32, ptr %error_sequence_id, align 4
  %inc15 = add i32 %32, 1
  store i32 %inc15, ptr %error_sequence_id, align 4
  %err_specific_desc = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %header, i32 0, i32 2
  %call18 = tail call i32 @strlen(ptr noundef %err_specific_desc) #20
  %add = add i32 %call18, 1
  %arrayidx19 = getelementptr %struct.TAG_TW_Command_Apache_Header, ptr %header, i32 0, i32 2, i32 %add
  %arrayidx21 = getelementptr %struct.TAG_TW_Command_Apache_Header, ptr %header, i32 0, i32 2, i32 97
  %33 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx21, align 1
  %call24 = tail call i32 @strlen(ptr noundef %err_specific_desc) #20
  %conv25 = trunc i32 %call24 to i8
  %parameter_len = getelementptr inbounds %struct.TAG_TW_Event, ptr %7, i32 0, i32 6
  %34 = ptrtoint ptr %parameter_len to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv25, ptr %parameter_len, align 1
  %parameter_data = getelementptr inbounds %struct.TAG_TW_Event, ptr %7, i32 0, i32 7
  %conv30 = and i32 %call24, 255
  %35 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp33 = icmp eq i8 %36, 0
  br i1 %cmp33, label %if.end6.cond.end_crit_edge, label %cond.false

if.end6.cond.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %call35 = tail call i32 @strlen(ptr noundef %arrayidx19) #20
  %add36 = add i32 %call35, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end6.cond.end_crit_edge
  %cond = phi i32 [ %add36, %cond.false ], [ 0, %if.end6.cond.end_crit_edge ]
  %add37 = add i32 %cond, %conv30
  %37 = call ptr @memcpy(ptr %parameter_data, ptr %err_specific_desc, i32 %add37)
  %38 = ptrtoint ptr %severity to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %severity, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %39)
  %cmp40.not = icmp eq i8 %39, 4
  br i1 %cmp40.not, label %if.else, label %do.end

do.end:                                           ; preds = %cond.end
  %40 = ptrtoint ptr %severity__reserved to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %severity__reserved, align 1
  %42 = and i8 %41, 7
  %43 = add nsw i8 %42, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %43)
  %44 = icmp ult i8 %43, -4
  br i1 %44, label %do.end.twa_aen_severity_lookup.exit_crit_edge, label %if.end.i

do.end.twa_aen_severity_lookup.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_aen_severity_lookup.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = zext i8 %42 to i32
  %arrayidx.i = getelementptr [6 x ptr], ptr @twa_aen_severity_table, i32 0, i32 %conv.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i, align 4
  br label %twa_aen_severity_lookup.exit

twa_aen_severity_lookup.exit:                     ; preds = %if.end.i, %do.end.twa_aen_severity_lookup.exit_crit_edge
  %retval1.0.i = phi ptr [ null, %do.end.twa_aen_severity_lookup.exit_crit_edge ], [ %46, %if.end.i ]
  %conv50 = zext i16 %18 to i32
  %47 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp53 = icmp eq i8 %48, 0
  br i1 %cmp53, label %cond.true55, label %twa_aen_severity_lookup.exit.cond.end59_crit_edge

twa_aen_severity_lookup.exit.cond.end59_crit_edge: ; preds = %twa_aen_severity_lookup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end59

cond.true55:                                      ; preds = %twa_aen_severity_lookup.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.not11.i = icmp eq i16 %17, 0
  br i1 %cmp.not11.i, label %cond.true55.twa_string_lookup.exit_crit_edge, label %cond.true55.land.rhs.i_crit_edge

cond.true55.land.rhs.i_crit_edge:                 ; preds = %cond.true55
  br label %land.rhs.i

cond.true55.twa_string_lookup.exit_crit_edge:     ; preds = %cond.true55
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %cond.true55.land.rhs.i_crit_edge
  %index.012.i = phi i32 [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ], [ 0, %cond.true55.land.rhs.i_crit_edge ]
  %text.i = getelementptr %struct.TAG_twa_message_type, ptr @twa_aen_table, i32 %index.012.i, i32 1
  %49 = ptrtoint ptr %text.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %text.i, align 4
  %cmp3.not.i = icmp eq ptr %50, null
  br i1 %cmp3.not.i, label %land.rhs.i.twa_string_lookup.exit_crit_edge, label %for.inc.i

land.rhs.i.twa_string_lookup.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit

for.inc.i:                                        ; preds = %land.rhs.i
  %inc.i = add i32 %index.012.i, 1
  %arrayidx.i114 = getelementptr %struct.TAG_twa_message_type, ptr @twa_aen_table, i32 %inc.i
  %51 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i114, align 4
  %cmp.not.i = icmp eq i32 %52, %conv50
  br i1 %cmp.not.i, label %for.inc.i.twa_string_lookup.exit_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

for.inc.i.twa_string_lookup.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %twa_string_lookup.exit

twa_string_lookup.exit:                           ; preds = %for.inc.i.twa_string_lookup.exit_crit_edge, %land.rhs.i.twa_string_lookup.exit_crit_edge, %cond.true55.twa_string_lookup.exit_crit_edge
  %index.0.lcssa.i = phi i32 [ 0, %cond.true55.twa_string_lookup.exit_crit_edge ], [ %index.012.i, %land.rhs.i.twa_string_lookup.exit_crit_edge ], [ %inc.i, %for.inc.i.twa_string_lookup.exit_crit_edge ]
  %text5.i = getelementptr %struct.TAG_twa_message_type, ptr @twa_aen_table, i32 %index.0.lcssa.i, i32 1
  %53 = ptrtoint ptr %text5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %text5.i, align 4
  br label %cond.end59

cond.end59:                                       ; preds = %twa_string_lookup.exit, %twa_aen_severity_lookup.exit.cond.end59_crit_edge
  %cond60 = phi ptr [ %54, %twa_string_lookup.exit ], [ %arrayidx19, %twa_aen_severity_lookup.exit.cond.end59_crit_edge ]
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, ptr noundef nonnull %host, ptr noundef %retval1.0.i, i32 noundef 4, i32 noundef %conv50, ptr noundef %cond60, ptr noundef %err_specific_desc) #16
  br label %if.end65

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %aen_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %aen_count, align 8
  %dec = add i32 %56, -1
  store i32 %dec, ptr %aen_count, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.else, %cond.end59
  %57 = ptrtoint ptr %error_index to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %error_index, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %58)
  %cmp69 = icmp eq i8 %58, -1
  br i1 %cmp69, label %if.then71, label %if.end65.if.end72_crit_edge

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then71:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  %event_queue_wrapped = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 29
  %59 = ptrtoint ptr %event_queue_wrapped to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %event_queue_wrapped, align 1
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end65.if.end72_crit_edge
  %60 = add i8 %58, 1
  %61 = ptrtoint ptr %error_index to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %error_index, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %host) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twa_aen_read_queue(ptr noundef %tw_dev, i32 noundef %request_id) unnamed_addr #2 align 64 {
entry:
  %cdb = alloca [16 x i8], align 1
  %sglist = alloca [1 x %struct.TAG_TW_SG_Entry], align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cdb) #13
  %0 = getelementptr inbounds [16 x i8], ptr %cdb, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sglist) #13
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 3, i32 %request_id
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 1024)
  %4 = getelementptr inbounds i8, ptr %cdb, i32 1
  %5 = call ptr @memset(ptr %4, i32 0, i32 15)
  %6 = ptrtoint ptr %cdb to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %cdb, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %0, align 1
  %8 = ptrtoint ptr %sglist to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 131072, ptr %sglist, align 8
  %arrayidx5 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 2, i32 %request_id
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %sglist to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sglist, align 8
  %arrayidx7 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 6, i32 %request_id
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx7, align 4
  %call = call fastcc i32 @twa_scsiop_execute_scsi(ptr noundef %tw_dev, i32 noundef %request_id, ptr noundef nonnull %cdb, i32 noundef 1, ptr noundef nonnull %sglist)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.then

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then:                                          ; preds = %entry
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %do.end15, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %host_no, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %17, i32 noundef 6, i32 noundef 4, ptr noundef nonnull @.str.396) #16
  br label %out

do.end15:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 4, ptr noundef nonnull @.str.396) #16
  br label %out

out:                                              ; preds = %do.end15, %do.end, %entry.out_crit_edge
  %retval1.0 = phi i32 [ 1, %do.end ], [ 1, %do.end15 ], [ 0, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sglist) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cdb) #13
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twa_chrdev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %dma_handle = alloca i32, align 4
  %driver_command = alloca %struct.TAG_TW_Ioctl_Driver_Command, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #13
  %2 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma_handle, align 4, !annotation !836
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %driver_command) #13
  %3 = getelementptr inbounds %struct.TAG_TW_Ioctl_Driver_Command, ptr %driver_command, i32 0, i32 5
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %4 = call ptr @memset(ptr %driver_command, i32 255, i32 24)
  %5 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %6, 1048575
  %arrayidx = getelementptr [32 x ptr], ptr @twa_device_extension_list, i32 0, i32 %and.i
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = inttoptr i32 %arg to ptr
  tail call void @mutex_lock_nested(ptr noundef nonnull @twa_chrdev_mutex, i32 noundef 0) #13
  %ioctl_lock = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 35
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ioctl_lock, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end8.i.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.405, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 24, i32 -1226833920) #19, !srcloc !840
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !841

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %driver_command, i32 noundef 24) #13
  %11 = call i32 @llvm.read_register.i32(metadata !792) #13
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !842
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !843
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !844
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %driver_command, ptr noundef %9, i32 noundef 24) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #13, !srcloc !843
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !844
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !841

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i571 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i571
  %add.ptr.i.i = getelementptr i8, ptr %driver_command, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i571)
  br label %out2

if.end7:                                          ; preds = %if.end.i.i
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %16)
  %cmp = icmp ugt i32 %16, 524288
  br i1 %cmp, label %if.end7.out2_crit_edge, label %if.end9

if.end7.out2_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out2

if.end9:                                          ; preds = %if.end7
  %add = add nuw nsw i32 %16, 511
  %and = and i32 %add, -512
  %tw_pci_dev = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 5
  %17 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tw_pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %add11 = add nuw nsw i32 %and, 1536
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %add11, ptr noundef nonnull %dma_handle, i32 noundef 3264, i32 noundef 0) #13
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end9.out2_crit_edge, label %if.end15

if.end9.out2_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %out2

if.end15:                                         ; preds = %if.end9
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %3, align 4
  %add17 = add i32 %20, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add17)
  %cmp9.i.i = icmp slt i32 %add17, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end15
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out3_crit_edge, label %if.then27.i.i, !prof !841

land.rhs16.i.i.out3_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out3

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.403, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %out3

if.then.i.i.i:                                    ; preds = %if.end15
  call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %add17, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.405, i32 noundef 156) #13
  %call.i.i521 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i521, label %if.then.i.i.i.if.end.i.i534_crit_edge, label %land.lhs.true.i.i524

if.then.i.i.i.if.end.i.i534_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i534

land.lhs.true.i.i524:                             ; preds = %if.then.i.i.i
  %21 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %add17, i32 -1226833920) #19, !srcloc !840
  %asmresult.i.i522 = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i522)
  %cmp.i6.i523 = icmp eq i32 %asmresult.i.i522, 0
  br i1 %cmp.i6.i523, label %if.then.i7.i531, label %land.lhs.true.i.i524.if.end.i.i534_crit_edge, !prof !841

land.lhs.true.i.i524.if.end.i.i534_crit_edge:     ; preds = %land.lhs.true.i.i524
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i534

if.then.i7.i531:                                  ; preds = %land.lhs.true.i.i524
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i525 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef %add17) #13
  %22 = call i32 @llvm.read_register.i32(metadata !792) #13
  %and.i.i.i.i.i.i526 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i526 to ptr
  %cpu_domain.i.i.i.i.i527 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i527) #12, !srcloc !842
  %and.i.i.i.i528 = and i32 %24, -13
  %or.i.i.i.i529 = or i32 %and.i.i.i.i528, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i529) #13, !srcloc !843
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !844
  %call1.i.i.i530 = call i32 @arm_copy_from_user(ptr noundef nonnull %call.i, ptr noundef %9, i32 noundef %add17) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #13, !srcloc !843
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !844
  br label %if.end.i.i534

if.end.i.i534:                                    ; preds = %if.then.i7.i531, %land.lhs.true.i.i524.if.end.i.i534_crit_edge, %if.then.i.i.i.if.end.i.i534_crit_edge
  %res.0.i.i532 = phi i32 [ %add17, %if.then.i.i.i.if.end.i.i534_crit_edge ], [ %call1.i.i.i530, %if.then.i7.i531 ], [ %add17, %land.lhs.true.i.i524.if.end.i.i534_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i532)
  %tobool4.not.i.i533 = icmp eq i32 %res.0.i.i532, 0
  br i1 %tobool4.not.i.i533, label %if.end21, label %if.then11.i.i537, !prof !841

if.then11.i.i537:                                 ; preds = %if.end.i.i534
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i535 = sub i32 %add17, %res.0.i.i532
  %add.ptr.i.i536 = getelementptr i8, ptr %call.i, i32 %sub.i.i535
  %25 = call ptr @memset(ptr %add.ptr.i.i536, i32 0, i32 %res.0.i.i532)
  br label %out3

if.end21:                                         ; preds = %if.end.i.i534
  %26 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.456)
  switch i32 %cmd, label %if.end21.out3_crit_edge [
    i32 264, label %do.body22
    i32 257, label %sw.bb116
    i32 258, label %sw.bb119
    i32 259, label %sw.bb149
    i32 260, label %sw.bb183
    i32 261, label %sw.bb244
    i32 262, label %sw.bb305
    i32 263, label %sw.bb332
  ]

if.end21.out3_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %out3

do.body22:                                        ; preds = %if.end21
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 24
  %27 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host_lock, align 4
  %call25 = call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #13
  %free_head.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 8
  %31 = ptrtoint ptr %free_head.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %free_head.i, align 8
  %idxprom.i = zext i8 %32 to i32
  %arrayidx.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 7, i32 %idxprom.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %34 to i32
  %35 = add i8 %32, 1
  store i8 %35, ptr %free_head.i, align 8
  %arrayidx5.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 13, i32 %conv.i
  %36 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %arrayidx5.i, align 4
  %arrayidx28 = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 6, i32 %conv.i
  %37 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx28, align 4
  %chrdev_request_id = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 33
  %38 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv.i, ptr %chrdev_request_id, align 8
  %firmware_command = getelementptr inbounds %struct.TAG_TW_Ioctl_Apache, ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_handle, align 4
  call fastcc void @twa_load_sgl(ptr noundef %8, ptr noundef %firmware_command, i32 noundef %conv.i, i32 noundef %40, i32 noundef %and)
  %arrayidx29 = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 3, i32 %conv.i
  %41 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx29, align 4
  %43 = call ptr @memcpy(ptr %42, ptr %firmware_command, i32 1024)
  %call31 = call fastcc i32 @twa_post_command_packet(ptr noundef %8, i32 noundef %conv.i, i8 noundef zeroext 1)
  %44 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %host, align 4
  %host_lock33 = getelementptr inbounds %struct.Scsi_Host, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %host_lock33 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host_lock33, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %call25) #13
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 720) #13
  %48 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chrdev_request_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp41 = icmp eq i32 %49, -1
  br i1 %cmp41, label %do.body22.if.end94_crit_edge, label %if.then53

do.body22.if.end94_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

if.then53:                                        ; preds = %do.body22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %50 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %ioctl_wqueue = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 34
  %call55580 = call i32 @prepare_to_wait_event(ptr noundef %ioctl_wqueue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %51 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chrdev_request_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp58581 = icmp eq i32 %52, -1
  br i1 %cmp58581, label %if.then53.if.end81_crit_edge, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  br label %cleanup

if.then53.if.end81_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then53.cleanup_crit_edge
  %__ret54.1582 = phi i32 [ %__ret54.1, %cleanup.cleanup_crit_edge ], [ 6000, %if.then53.cleanup_crit_edge ]
  %call78 = call i32 @schedule_timeout(i32 noundef %__ret54.1582) #13
  %call55 = call i32 @prepare_to_wait_event(ptr noundef %ioctl_wqueue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %53 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %chrdev_request_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp58 = icmp eq i32 %54, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool64.not = icmp eq i32 %call78, 0
  %55 = select i1 %cmp58, i1 %tobool64.not, i1 false
  %__ret54.1 = select i1 %55, i32 1, i32 %call78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret54.1)
  %tobool71.not = icmp eq i32 %__ret54.1, 0
  %56 = select i1 %cmp58, i1 true, i1 %tobool71.not
  br i1 %56, label %cleanup.if.end81_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.if.end81_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end81:                                         ; preds = %cleanup.if.end81_crit_edge, %if.then53.if.end81_crit_edge
  call void @finish_wait(ptr noundef %ioctl_wqueue, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  %57 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr = load i32, ptr %chrdev_request_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp84.not = icmp eq i32 %.pr, -1
  br i1 %cmp84.not, label %if.end81.if.end94_crit_edge, label %do.end89

if.end81.if.end94_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

do.end89:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %host, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %59, i32 0, i32 17
  %60 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %host_no, align 4
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.399, i32 noundef %61, i32 noundef 6, i32 noundef 55, i32 noundef 264) #16
  %call93 = call fastcc i32 @twa_reset_device_extension(ptr noundef %8)
  br label %out3

if.end94:                                         ; preds = %if.end81.if.end94_crit_edge, %do.body22.if.end94_crit_edge
  %62 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx29, align 4
  %64 = call ptr @memcpy(ptr %firmware_command, ptr %63, i32 1024)
  %65 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %host, align 4
  %host_lock106 = getelementptr inbounds %struct.Scsi_Host, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %host_lock106 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %host_lock106, align 4
  %call108 = call i32 @_raw_spin_lock_irqsave(ptr noundef %68) #13
  %posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 14
  %69 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %posted_request_count, align 4
  %dec = add i32 %70, -1
  store i32 %dec, ptr %posted_request_count, align 4
  %free_tail.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 9
  %71 = ptrtoint ptr %free_tail.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %free_tail.i, align 1
  %idxprom.i561 = zext i8 %72 to i32
  %arrayidx.i562 = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 7, i32 %idxprom.i561
  %73 = ptrtoint ptr %arrayidx.i562 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %34, ptr %arrayidx.i562, align 1
  %74 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 32, ptr %arrayidx5.i, align 4
  %75 = add i8 %72, 1
  store i8 %75, ptr %free_tail.i, align 1
  %76 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %host, align 4
  %host_lock115 = getelementptr inbounds %struct.Scsi_Host, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %host_lock115 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %host_lock115, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %79, i32 noundef %call108) #13
  br label %sw.epilog

sw.bb116:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %status = getelementptr inbounds %struct.TAG_TW_Ioctl_Driver_Command, ptr %call.i, i32 0, i32 1
  %80 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %status, align 4
  %data_buffer = getelementptr inbounds %struct.TAG_TW_Ioctl_Apache, ptr %call.i, i32 0, i32 3
  %tw_compat_info118 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 37
  %81 = call ptr @memcpy(ptr %data_buffer, ptr %tw_compat_info118, i32 56)
  br label %sw.epilog

sw.bb119:                                         ; preds = %if.end21
  %event_queue_wrapped = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 29
  %82 = ptrtoint ptr %event_queue_wrapped to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %event_queue_wrapped, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool120.not = icmp eq i8 %83, 0
  br i1 %tobool120.not, label %if.else130, label %if.then121

if.then121:                                       ; preds = %sw.bb119
  %aen_clobber = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 36
  %84 = ptrtoint ptr %aen_clobber to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %aen_clobber, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool122.not = icmp eq i8 %85, 0
  %status128 = getelementptr inbounds %struct.TAG_TW_Ioctl_Driver_Command, ptr %call.i, i32 0, i32 1
  br i1 %tobool122.not, label %if.else, label %if.then123

if.then123:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %status128 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 4100, ptr %status128, align 4
  %87 = ptrtoint ptr %aen_clobber to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %aen_clobber, align 4
  br label %if.end138

if.else:                                          ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %status128 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %status128, align 4
  br label %if.end138

if.else130:                                       ; preds = %sw.bb119
  %error_index = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 28
  %89 = ptrtoint ptr %error_index to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %error_index, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool131.not = icmp eq i8 %90, 0
  %status134 = getelementptr inbounds %struct.TAG_TW_Ioctl_Driver_Command, ptr %call.i, i32 0, i32 1
  br i1 %tobool131.not, label %if.then132, label %if.end135

if.then132:                                       ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %status134 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4099, ptr %status134, align 4
  br label %sw.epilog

if.end135:                                        ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %status134 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %status134, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.end135, %if.else, %if.then123
  %error_index139 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 28
  %93 = ptrtoint ptr %error_index139 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %error_index139, align 8
  %95 = add i8 %94, -1
  %data_buffer143 = getelementptr inbounds %struct.TAG_TW_Ioctl_Apache, ptr %call.i, i32 0, i32 3
  %idxprom = zext i8 %95 to i32
  %arrayidx145 = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 27, i32 %idxprom
  %96 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx145, align 4
  %98 = call ptr @memcpy(ptr %data_buffer143, ptr %97, i32 112)
  %99 = load ptr, ptr %arrayidx145, align 4
  %retrieved = getelementptr inbounds %struct.TAG_TW_Event, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %retrieved to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 2, ptr %retrieved, align 1
  br label %sw.epilog

sw.bb149:                                         ; preds = %if.end21
  %event_queue_wrapped150 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 29
  %101 = ptrtoint ptr %event_queue_wrapped150 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %event_queue_wrapped150, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool151.not = icmp eq i8 %102, 0
  br i1 %tobool151.not, label %if.else164, label %if.then152

if.then152:                                       ; preds = %sw.bb149
  %aen_clobber153 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 36
  %103 = ptrtoint ptr %aen_clobber153 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %aen_clobber153, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool154.not = icmp eq i8 %104, 0
  %status161 = getelementptr inbounds %struct.TAG_TW_Ioctl_Driver_Command, ptr %call.i, i32 0, i32 1
  br i1 %tobool154.not, label %if.else159, label %if.then155

if.then155:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #15
  %105 = ptrtoint ptr %status161 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 4100, ptr %status161, align 4
  %106 = ptrtoint ptr %aen_clobber153 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %aen_clobber153, align 4
  br label %if.end162

if.else159:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %status161 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %status161, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.else159, %if.then155
  %error_index163 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 28
  %108 = ptrtoint ptr %error_index163 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %error_index163, align 8
  %phi.cast516 = zext i8 %109 to i32
  br label %if.end173

if.else164:                                       ; preds = %sw.bb149
  %error_index165 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 28
  %110 = ptrtoint ptr %error_index165 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %error_index165, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool166.not = icmp eq i8 %111, 0
  %status169 = getelementptr inbounds %struct.TAG_TW_Ioctl_Driver_Command, ptr %call.i, i32 0, i32 1
  br i1 %tobool166.not, label %if.then167, label %if.end170

if.then167:                                       ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #15
  %112 = ptrtoint ptr %status169 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 4099, ptr %status169, align 4
  br label %sw.epilog

if.end170:                                        ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #15
  %113 = ptrtoint ptr %status169 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %status169, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.end170, %if.end162
  %event_index.0 = phi i32 [ %phi.cast516, %if.end162 ], [ 0, %if.end170 ]
  %data_buffer174 = getelementptr inbounds %struct.TAG_TW_Ioctl_Apache, ptr %call.i, i32 0, i32 3
  %arrayidx178 = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 27, i32 %event_index.0
  %114 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx178, align 4
  %116 = call ptr @memcpy(ptr %data_buffer174, ptr %115, i32 112)
  %117 = load ptr, ptr %arrayidx178, align 4
  %retrieved182 = getelementptr inbounds %struct.TAG_TW_Event, ptr %117, i32 0, i32 4
  %118 = ptrtoint ptr %retrieved182 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 2, ptr %retrieved182, align 1
  br label %sw.epilog

sw.bb183:                                         ; preds = %if.end21
  %data_buffer184 = getelementptr inbounds %struct.TAG_TW_Ioctl_Apache, ptr %call.i, i32 0, i32 3
  %119 = ptrtoint ptr %data_buffer184 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %data_buffer184, align 4
  %status188 = getelementptr inbounds %struct.TAG_TW_Ioctl_Driver_Command, ptr %call.i, i32 0, i32 1
  %121 = ptrtoint ptr %status188 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %status188, align 4
  %event_queue_wrapped189 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 29
  %122 = ptrtoint ptr %event_queue_wrapped189 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %event_queue_wrapped189, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool190.not = icmp eq i8 %123, 0
  br i1 %tobool190.not, label %if.else200, label %if.then191

if.then191:                                       ; preds = %sw.bb183
  %aen_clobber192 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 36
  %124 = ptrtoint ptr %aen_clobber192 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %aen_clobber192, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool193.not = icmp eq i8 %125, 0
  br i1 %tobool193.not, label %if.then191.if.end198_crit_edge, label %if.then194

if.then191.if.end198_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end198

if.then194:                                       ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #15
  %126 = ptrtoint ptr %status188 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 4100, ptr %status188, align 4
  %127 = ptrtoint ptr %aen_clobber192 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %aen_clobber192, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.then194, %if.then191.if.end198_crit_edge
  %error_index199 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 28
  %128 = ptrtoint ptr %error_index199 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %error_index199, align 8
  %phi.cast515 = zext i8 %129 to i32
  br label %if.end207

if.else200:                                       ; preds = %sw.bb183
  %error_index201 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 28
  %130 = ptrtoint ptr %error_index201 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %error_index201, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool202.not = icmp eq i8 %131, 0
  br i1 %tobool202.not, label %if.then203, label %if.else200.if.end207_crit_edge

if.else200.if.end207_crit_edge:                   ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end207

if.then203:                                       ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #15
  %132 = ptrtoint ptr %status188 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 4099, ptr %status188, align 4
  br label %sw.epilog

if.end207:                                        ; preds = %if.else200.if.end207_crit_edge, %if.end198
  %start_index.0 = phi i32 [ %phi.cast515, %if.end198 ], [ 0, %if.else200.if.end207_crit_edge ]
  %arrayidx212 = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 27, i32 %start_index.0
  %133 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx212, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %134, align 4
  %add209 = add i32 %120, 1
  %sub214 = add i32 %add209, %start_index.0
  %conv217 = sub i32 %sub214, %136
  %idxprom219 = and i32 %conv217, 255
  %arrayidx220 = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 27, i32 %idxprom219
  %137 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx220, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %138, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %120)
  %cmp222 = icmp ugt i32 %140, %120
  br i1 %cmp222, label %if.end234, label %if.then224

if.then224:                                       ; preds = %if.end207
  %141 = ptrtoint ptr %status188 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %status188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4100, i32 %142)
  %cmp227 = icmp eq i32 %142, 4100
  br i1 %cmp227, label %if.then229, label %if.then224.if.end231_crit_edge

if.then224.if.end231_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end231

if.then229:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #15
  %aen_clobber230 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 36
  %143 = ptrtoint ptr %aen_clobber230 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %aen_clobber230, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %if.then224.if.end231_crit_edge
  %144 = ptrtoint ptr %status188 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 4099, ptr %status188, align 4
  br label %sw.epilog

if.end234:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #15
  %145 = call ptr @memcpy(ptr %data_buffer184, ptr %138, i32 112)
  %146 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx220, align 4
  %retrieved243 = getelementptr inbounds %struct.TAG_TW_Event, ptr %147, i32 0, i32 4
  %148 = ptrtoint ptr %retrieved243 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 2, ptr %retrieved243, align 1
  br label %sw.epilog

sw.bb244:                                         ; preds = %if.end21
  %data_buffer245 = getelementptr inbounds %struct.TAG_TW_Ioctl_Apache, ptr %call.i, i32 0, i32 3
  %149 = ptrtoint ptr %data_buffer245 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %data_buffer245, align 4
  %status249 = getelementptr inbounds %struct.TAG_TW_Ioctl_Driver_Command, ptr %call.i, i32 0, i32 1
  %151 = ptrtoint ptr %status249 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %status249, align 4
  %event_queue_wrapped250 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 29
  %152 = ptrtoint ptr %event_queue_wrapped250 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %event_queue_wrapped250, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool251.not = icmp eq i8 %153, 0
  br i1 %tobool251.not, label %if.else261, label %if.then252

if.then252:                                       ; preds = %sw.bb244
  %aen_clobber253 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 36
  %154 = ptrtoint ptr %aen_clobber253 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %aen_clobber253, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool254.not = icmp eq i8 %155, 0
  br i1 %tobool254.not, label %if.then252.if.end259_crit_edge, label %if.then255

if.then252.if.end259_crit_edge:                   ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end259

if.then255:                                       ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #15
  %156 = ptrtoint ptr %status249 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 4100, ptr %status249, align 4
  %157 = ptrtoint ptr %aen_clobber253 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %aen_clobber253, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.then255, %if.then252.if.end259_crit_edge
  %error_index260 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 28
  %158 = ptrtoint ptr %error_index260 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %error_index260, align 8
  %phi.cast = zext i8 %159 to i32
  br label %if.end268

if.else261:                                       ; preds = %sw.bb244
  %error_index262 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 28
  %160 = ptrtoint ptr %error_index262 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %error_index262, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool263.not = icmp eq i8 %161, 0
  br i1 %tobool263.not, label %if.then264, label %if.else261.if.end268_crit_edge

if.else261.if.end268_crit_edge:                   ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end268

if.then264:                                       ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #15
  %162 = ptrtoint ptr %status249 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 4099, ptr %status249, align 4
  br label %sw.epilog

if.end268:                                        ; preds = %if.else261.if.end268_crit_edge, %if.end259
  %start_index.1 = phi i32 [ %phi.cast, %if.end259 ], [ 0, %if.else261.if.end268_crit_edge ]
  %add270 = add i32 %start_index.1, %150
  %arrayidx273 = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 27, i32 %start_index.1
  %163 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx273, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %164, align 4
  %167 = xor i32 %166, -1
  %sub276 = add i32 %add270, %167
  %idxprom280 = and i32 %sub276, 255
  %arrayidx281 = getelementptr %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 27, i32 %idxprom280
  %168 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx281, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %150)
  %cmp283 = icmp ult i32 %171, %150
  br i1 %cmp283, label %if.end295, label %if.then285

if.then285:                                       ; preds = %if.end268
  %172 = ptrtoint ptr %status249 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %status249, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4100, i32 %173)
  %cmp288 = icmp eq i32 %173, 4100
  br i1 %cmp288, label %if.then290, label %if.then285.if.end292_crit_edge

if.then285.if.end292_crit_edge:                   ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end292

if.then290:                                       ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #15
  %aen_clobber291 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 36
  %174 = ptrtoint ptr %aen_clobber291 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 1, ptr %aen_clobber291, align 4
  br label %if.end292

if.end292:                                        ; preds = %if.then290, %if.then285.if.end292_crit_edge
  %175 = ptrtoint ptr %status249 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 4099, ptr %status249, align 4
  br label %sw.epilog

if.end295:                                        ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #15
  %176 = call ptr @memcpy(ptr %data_buffer245, ptr %169, i32 112)
  %177 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx281, align 4
  %retrieved304 = getelementptr inbounds %struct.TAG_TW_Event, ptr %178, i32 0, i32 4
  %179 = ptrtoint ptr %retrieved304 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 2, ptr %retrieved304, align 1
  br label %sw.epilog

sw.bb305:                                         ; preds = %if.end21
  %data_buffer306 = getelementptr inbounds %struct.TAG_TW_Ioctl_Apache, ptr %call.i, i32 0, i32 3
  %call308 = call i64 @ktime_get() #13
  %force_flag = getelementptr inbounds %struct.TAG_TW_Ioctl_Apache, ptr %call.i, i32 1, i32 0, i32 2
  %180 = ptrtoint ptr %force_flag to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %force_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %181)
  %cmp309 = icmp eq i32 %181, 1
  br i1 %cmp309, label %sw.bb305.if.then316_crit_edge, label %lor.lhs.false

sw.bb305.if.then316_crit_edge:                    ; preds = %sw.bb305
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then316

lor.lhs.false:                                    ; preds = %sw.bb305
  %ioctl_sem_lock = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 31
  %182 = ptrtoint ptr %ioctl_sem_lock to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %ioctl_sem_lock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp311 = icmp eq i32 %183, 0
  br i1 %cmp311, label %lor.lhs.false.if.then316_crit_edge, label %lor.lhs.false313

lor.lhs.false.if.then316_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then316

lor.lhs.false313:                                 ; preds = %lor.lhs.false
  %ioctl_time = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 32
  %184 = ptrtoint ptr %ioctl_time to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %ioctl_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call308, i64 %185)
  %cmp3.i.i = icmp sgt i64 %call308, %185
  br i1 %cmp3.i.i, label %lor.lhs.false313.if.then316_crit_edge, label %if.else324

lor.lhs.false313.if.then316_crit_edge:            ; preds = %lor.lhs.false313
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then316

if.then316:                                       ; preds = %lor.lhs.false313.if.then316_crit_edge, %lor.lhs.false.if.then316_crit_edge, %sw.bb305.if.then316_crit_edge
  %ioctl_sem_lock317 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 31
  %186 = ptrtoint ptr %ioctl_sem_lock317 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 1, ptr %ioctl_sem_lock317, align 8
  %187 = ptrtoint ptr %data_buffer306 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %data_buffer306, align 4
  %conv318 = zext i32 %188 to i64
  %mul.i = mul nuw nsw i64 %conv318, 1000000
  %add.i = add i64 %mul.i, %call308
  %ioctl_time320 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 32
  %189 = ptrtoint ptr %ioctl_time320 to i32
  call void @__asan_store8_noabort(i32 %189)
  store i64 %add.i, ptr %ioctl_time320, align 8
  %status322 = getelementptr inbounds %struct.TAG_TW_Ioctl_Driver_Command, ptr %call.i, i32 0, i32 1
  %190 = ptrtoint ptr %status322 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %status322, align 4
  %191 = load i32, ptr %data_buffer306, align 4
  %time_remaining_msec = getelementptr inbounds %struct.TAG_TW_Ioctl_Apache, ptr %call.i, i32 1, i32 0, i32 1
  %192 = ptrtoint ptr %time_remaining_msec to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %time_remaining_msec, align 4
  br label %sw.epilog

if.else324:                                       ; preds = %lor.lhs.false313
  call void @__sanitizer_cov_trace_pc() #15
  %status326 = getelementptr inbounds %struct.TAG_TW_Ioctl_Driver_Command, ptr %call.i, i32 0, i32 1
  %193 = ptrtoint ptr %status326 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 4098, ptr %status326, align 4
  %194 = ptrtoint ptr %ioctl_time to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %ioctl_time, align 8
  %sub.i = sub i64 %195, %call308
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %196 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #13
  %197 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %196) #19, !srcloc !821
  %198 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %196, i64 %197, i32 0) #19, !srcloc !826
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %198, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv329 = trunc i64 %cond213.i.i.i to i32
  %time_remaining_msec330 = getelementptr inbounds %struct.TAG_TW_Ioctl_Apache, ptr %call.i, i32 1, i32 0, i32 1
  %199 = ptrtoint ptr %time_remaining_msec330 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %conv329, ptr %time_remaining_msec330, align 4
  br label %sw.epilog

sw.bb332:                                         ; preds = %if.end21
  %ioctl_sem_lock333 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %8, i32 0, i32 31
  %200 = ptrtoint ptr %ioctl_sem_lock333 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %ioctl_sem_lock333, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %201)
  %cmp334 = icmp eq i32 %201, 1
  br i1 %cmp334, label %if.then336, label %if.else340

if.then336:                                       ; preds = %sw.bb332
  call void @__sanitizer_cov_trace_pc() #15
  %202 = ptrtoint ptr %ioctl_sem_lock333 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %ioctl_sem_lock333, align 8
  %status339 = getelementptr inbounds %struct.TAG_TW_Ioctl_Driver_Command, ptr %call.i, i32 0, i32 1
  %203 = ptrtoint ptr %status339 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 0, ptr %status339, align 4
  br label %sw.epilog

if.else340:                                       ; preds = %sw.bb332
  call void @__sanitizer_cov_trace_pc() #15
  %status342 = getelementptr inbounds %struct.TAG_TW_Ioctl_Driver_Command, ptr %call.i, i32 0, i32 1
  %204 = ptrtoint ptr %status342 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 4097, ptr %status342, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else340, %if.then336, %if.else324, %if.then316, %if.end295, %if.end292, %if.then264, %if.end234, %if.end231, %if.then203, %if.end173, %if.then167, %if.end138, %if.then132, %sw.bb116, %if.end94
  %205 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %3, align 4
  %add345 = add i32 %206, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add345)
  %cmp9.i.i546 = icmp slt i32 %add345, 0
  br i1 %cmp9.i.i546, label %land.rhs16.i.i549, label %if.then.i.i.i552

land.rhs16.i.i549:                                ; preds = %sw.epilog
  %.b71.i.i548 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i548, label %land.rhs16.i.i549.out3_crit_edge, label %if.then27.i.i550, !prof !841

land.rhs16.i.i549.out3_crit_edge:                 ; preds = %land.rhs16.i.i549
  call void @__sanitizer_cov_trace_pc() #15
  br label %out3

if.then27.i.i550:                                 ; preds = %land.rhs16.i.i549
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.403, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %out3

if.then.i.i.i552:                                 ; preds = %sw.epilog
  call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %add345, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.405, i32 noundef 174) #13
  %call.i.i553 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i553, label %if.then.i.i.i552.copy_to_user.exit_crit_edge, label %if.end.i.i557

if.then.i.i.i552.copy_to_user.exit_crit_edge:     ; preds = %if.then.i.i.i552
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i557:                                    ; preds = %if.then.i.i.i552
  %207 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %add345, i32 -1226833920) #19, !srcloc !845
  %asmresult.i.i555 = extractvalue { i32, i32 } %207, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i555)
  %cmp.i6.i556 = icmp eq i32 %asmresult.i.i555, 0
  br i1 %cmp.i6.i556, label %if.then2.i.i, label %if.end.i.i557.copy_to_user.exit_crit_edge

if.end.i.i557.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i557
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i557
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i558 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call.i, i32 noundef %add345) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %call.i, i32 noundef %add345) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i557.copy_to_user.exit_crit_edge, %if.then.i.i.i552.copy_to_user.exit_crit_edge
  %n.addr.0.i559 = phi i32 [ %add345, %if.then.i.i.i552.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add345, %if.end.i.i557.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i559)
  %cmp347 = icmp eq i32 %n.addr.0.i559, 0
  %spec.select = select i1 %cmp347, i32 0, i32 -14
  br label %out3

out3:                                             ; preds = %copy_to_user.exit, %if.then27.i.i550, %land.rhs16.i.i549.out3_crit_edge, %do.end89, %if.end21.out3_crit_edge, %if.then11.i.i537, %if.then27.i.i, %land.rhs16.i.i.out3_crit_edge
  %retval2.0 = phi i32 [ -5, %do.end89 ], [ -25, %if.end21.out3_crit_edge ], [ -14, %if.then11.i.i537 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out3_crit_edge ], [ -14, %if.then27.i.i550 ], [ -14, %land.rhs16.i.i549.out3_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  %208 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %tw_pci_dev, align 4
  %dev352 = getelementptr inbounds %struct.pci_dev, ptr %209, i32 0, i32 44
  %210 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev352, i32 noundef %add11, ptr noundef nonnull %call.i, i32 noundef %211, i32 noundef 0) #13
  br label %out2

out2:                                             ; preds = %out3, %if.end9.out2_crit_edge, %if.end7.out2_crit_edge, %if.then11.i.i
  %retval2.1 = phi i32 [ %retval2.0, %out3 ], [ -22, %if.end7.out2_crit_edge ], [ -12, %if.end9.out2_crit_edge ], [ -14, %if.then11.i.i ]
  call void @mutex_unlock(ptr noundef %ioctl_lock) #13
  br label %out

out:                                              ; preds = %out2, %entry.out_crit_edge
  %retval2.2 = phi i32 [ %retval2.1, %out2 ], [ -4, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @twa_chrdev_mutex) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %driver_command) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #13
  ret i32 %retval2.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twa_chrdev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %2 = load i32, ptr @twa_device_extension_count, align 4
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

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @twa_load_sgl(ptr nocapture noundef readonly %tw_dev, ptr nocapture noundef %full_command_packet, i32 noundef %request_id, i32 noundef %dma_handle, i32 noundef %length) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %command = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %full_command_packet, i32 0, i32 1
  %0 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %command, align 4
  %2 = and i8 %1, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %2)
  %cmp = icmp eq i8 %2, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %request_id__lunl = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %full_command_packet, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %request_id__lunl to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %request_id__lunl, align 2
  %5 = shl i16 %4, 8
  %6 = and i16 %5, -4096
  %7 = trunc i32 %request_id to i16
  %8 = and i16 %7, 4095
  %conv7 = or i16 %6, %8
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %10 = ptrtoint ptr %request_id__lunl to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %request_id__lunl, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool.not = icmp eq i32 %length, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %add = add i32 %dma_handle, 1536
  %11 = tail call i32 @llvm.bswap.i32(i32 %add)
  %sg_list = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %full_command_packet, i32 0, i32 1, i32 0, i32 7
  %12 = ptrtoint ptr %sg_list to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %sg_list, align 2
  %13 = tail call i32 @llvm.bswap.i32(i32 %length)
  %length12 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %full_command_packet, i32 0, i32 1, i32 0, i32 7, i32 0, i32 1
  %14 = ptrtoint ptr %length12 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %length12, align 2
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %sgl_entries__lunh = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %full_command_packet, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %sgl_entries__lunh to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sgl_entries__lunh, align 2
  %17 = shl i16 %16, 8
  %18 = and i16 %17, -4096
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i16
  %or19 = or i16 %18, %cond
  %19 = tail call i16 @llvm.bswap.i16(i16 %or19)
  %20 = ptrtoint ptr %sgl_entries__lunh to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %sgl_entries__lunh, align 2
  br label %if.end52

if.else:                                          ; preds = %entry
  %conv23 = trunc i32 %request_id to i8
  %request_id24 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %full_command_packet, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %request_id24 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv23, ptr %request_id24, align 2
  %22 = lshr i8 %1, 5
  %23 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %1)
  %tobool28.not = icmp ult i8 %1, 32
  br i1 %tobool28.not, label %if.else.if.end52_crit_edge, label %if.then29

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then29:                                        ; preds = %if.else
  %tw_pci_dev = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 5
  %24 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tw_pci_dev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4101, i16 %27)
  %cmp31 = icmp eq i16 %27, 4101
  br i1 %cmp31, label %if.then33, label %if.else37

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %size = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %full_command_packet, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %size, align 1
  %conv34 = zext i8 %29 to i32
  %add.ptr = getelementptr i32, ptr %command, i32 %conv34
  %add.ptr35 = getelementptr i32, ptr %add.ptr, i32 -2
  br label %if.end43

if.else37:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr42 = getelementptr i32, ptr %command, i32 %23
  br label %if.end43

if.end43:                                         ; preds = %if.else37, %if.then33
  %sgl.0 = phi ptr [ %add.ptr35, %if.then33 ], [ %add.ptr42, %if.else37 ]
  %add44 = add i32 %dma_handle, 1536
  %30 = tail call i32 @llvm.bswap.i32(i32 %add44)
  %31 = ptrtoint ptr %sgl.0 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %sgl.0, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %length)
  %length46 = getelementptr inbounds %struct.TAG_TW_SG_Entry, ptr %sgl.0, i32 0, i32 1
  %33 = ptrtoint ptr %length46 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %length46, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.end43, %if.else.if.end52_crit_edge, %if.end
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
declare dso_local i64 @ktime_get() local_unnamed_addr #0

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
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__twa_shutdown(ptr noundef %tw_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !846
  tail call void @arm_heavy_mb() #13
  %0 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tw_dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 1073741824) #13, !srcloc !803
  %tw_pci_dev = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 5
  %2 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tw_pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef %tw_dev) #13
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 24
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_no, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.406, i32 noundef %9) #16
  %command_packet_virt.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 3
  %10 = ptrtoint ptr %command_packet_virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %command_packet_virt.i, align 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 1024)
  %header_desc.i = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %11, i32 0, i32 3
  %13 = ptrtoint ptr %header_desc.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -128, ptr %header_desc.i, align 4
  %command.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %command.i, align 4
  %message_credits4.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %11, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %message_credits4.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 256, ptr %message_credits4.i, align 2
  %16 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %11, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %16, align 1
  %call.i = tail call fastcc i32 @twa_post_command_packet(ptr noundef %tw_dev, i32 noundef 0, i8 noundef zeroext 1) #13
  %call6.i = tail call fastcc i32 @twa_poll_response(ptr noundef %tw_dev, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.end20.critedge, label %if.then8.i

if.then8.i:                                       ; preds = %entry
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %do.end16.i, label %do.end.i

do.end.i:                                         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %host_no.i, align 4
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %21, i32 noundef 6, i32 noundef 21, ptr noundef nonnull @.str.165) #16
  br label %if.then

do.end16.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 21, ptr noundef nonnull @.str.165) #16
  br label %if.then

if.then:                                          ; preds = %do.end16.i, %do.end.i
  %posted_request_count.i.c38 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14
  %22 = ptrtoint ptr %posted_request_count.i.c38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %posted_request_count.i.c38, align 4
  %dec.i.c39 = add i32 %23, -1
  store i32 %dec.i.c39, ptr %posted_request_count.i.c38, align 4
  %24 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %24, align 4
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %tobool6.not = icmp eq ptr %27, null
  br i1 %tobool6.not, label %do.end15, label %do.end9

do.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %host_no12 = getelementptr inbounds %struct.Scsi_Host, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %host_no12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %host_no12, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %29, i32 noundef 6, i32 noundef 49, ptr noundef nonnull @.str.410) #16
  br label %do.body24

do.end15:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 49, ptr noundef nonnull @.str.410) #16
  br label %do.body24

do.end20.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %posted_request_count.i.c = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14
  %30 = ptrtoint ptr %posted_request_count.i.c to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %posted_request_count.i.c, align 4
  %dec.i.c = add i32 %31, -1
  store i32 %dec.i.c, ptr %posted_request_count.i.c, align 4
  %state.i.c = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13
  %32 = ptrtoint ptr %state.i.c to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %state.i.c, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.414) #16
  br label %do.body24

do.body24:                                        ; preds = %do.end20.critedge, %do.end15, %do.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !847
  tail call void @arm_heavy_mb() #13
  %33 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tw_dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 57088) #13, !srcloc !803
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twa_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %host2 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 50, i32 10, i32 1, i32 4, i32 6
  %2 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host2, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.416, i32 noundef %5) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !848
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hostdata, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1073741824) #13, !srcloc !803
  %tw_pci_dev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 50, i32 2
  %8 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tw_pci_dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %hostdata) #13
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 50, i32 10, i32 1, i32 4, i32 7
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  tail call void @pci_disable_msi(ptr noundef %add.ptr) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %command_packet_virt.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 3
  %15 = ptrtoint ptr %command_packet_virt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %command_packet_virt.i, align 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 1024)
  %header_desc.i = getelementptr inbounds %struct.TAG_TW_Command_Apache_Header, ptr %16, i32 0, i32 3
  %18 = ptrtoint ptr %header_desc.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -128, ptr %header_desc.i, align 4
  %command.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %command.i, align 4
  %message_credits4.i = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %16, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %message_credits4.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 256, ptr %message_credits4.i, align 2
  %21 = getelementptr inbounds %struct.TAG_TW_Command_Full, ptr %16, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %21, align 1
  %call.i = tail call fastcc i32 @twa_post_command_packet(ptr noundef %hostdata, i32 noundef 0, i8 noundef zeroext 1) #13
  %call6.i = tail call fastcc i32 @twa_poll_response(ptr noundef %hostdata, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.end31.critedge, label %if.then8.i

if.then8.i:                                       ; preds = %if.end
  %23 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host2, align 4
  %tobool9.not.i = icmp eq ptr %24, null
  br i1 %tobool9.not.i, label %do.end16.i, label %do.end.i

do.end.i:                                         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %host_no.i, align 4
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %26, i32 noundef 6, i32 noundef 21, ptr noundef nonnull @.str.165) #16
  br label %if.then11

do.end16.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 21, ptr noundef nonnull @.str.165) #16
  br label %if.then11

if.then11:                                        ; preds = %do.end16.i, %do.end.i
  %posted_request_count.i.c52 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 50, i32 10
  %27 = ptrtoint ptr %posted_request_count.i.c52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %posted_request_count.i.c52, align 4
  %dec.i.c53 = add i32 %28, -1
  store i32 %dec.i.c53, ptr %posted_request_count.i.c52, align 4
  %29 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 49, i32 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %29, align 4
  %31 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host2, align 4
  %tobool13.not = icmp eq ptr %32, null
  br i1 %tobool13.not, label %do.end24, label %do.end17

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %host_no20 = getelementptr inbounds %struct.Scsi_Host, ptr %32, i32 0, i32 17
  %33 = ptrtoint ptr %host_no20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %host_no20, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %34, i32 noundef 6, i32 noundef 56, ptr noundef nonnull @.str.420) #16
  br label %do.body35

do.end24:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 56, ptr noundef nonnull @.str.420) #16
  br label %do.body35

do.end31.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %posted_request_count.i.c = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 50, i32 10
  %35 = ptrtoint ptr %posted_request_count.i.c to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %posted_request_count.i.c, align 4
  %dec.i.c = add i32 %36, -1
  store i32 %dec.i.c, ptr %posted_request_count.i.c, align 4
  %state.i.c = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 49, i32 8
  %37 = ptrtoint ptr %state.i.c to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %state.i.c, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.424) #16
  br label %do.body35

do.body35:                                        ; preds = %do.end31.critedge, %do.end24, %do.end17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !849
  tail call void @arm_heavy_mb() #13
  %38 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hostdata, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 57088) #13, !srcloc !803
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twa_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %host3 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 50, i32 10, i32 1, i32 4, i32 6
  %2 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host3, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.426, i32 noundef %5) #16
  %call5 = tail call i32 @pci_try_set_mwi(ptr noundef %add.ptr) #13
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then:                                          ; preds = %entry
  %call.i85 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %cmp.i86 = icmp eq i32 %call.i85, 0
  br i1 %cmp.i86, label %if.then.if.end26_crit_edge, label %if.then11

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then11:                                        ; preds = %if.then
  %tobool12.not = icmp eq ptr %1, null
  br i1 %tobool12.not, label %do.end22, label %do.end16

do.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %host_no18 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %host_no18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_no18, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %7, i32 noundef 6, i32 noundef 64, ptr noundef nonnull @.str.430) #16
  br label %out_disable_device

do.end22:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 64, ptr noundef nonnull @.str.430) #16
  br label %out_disable_device

if.end26:                                         ; preds = %if.then.if.end26_crit_edge, %entry.if.end26_crit_edge
  %.sink = phi i64 [ -1, %entry.if.end26_crit_edge ], [ 4294967295, %if.then.if.end26_crit_edge ]
  %call1.i87 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %.sink) #13
  %call27 = tail call fastcc i32 @twa_reset_sequence(ptr noundef %hostdata, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.out_disable_device_crit_edge

if.end26.out_disable_device_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_disable_device

if.end30:                                         ; preds = %if.end26
  %irq = getelementptr i8, ptr %dev, i32 932
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call.i90 = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @twa_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %hostdata) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool32.not = icmp eq i32 %call.i90, 0
  br i1 %tobool32.not, label %if.end51, label %if.then33

if.then33:                                        ; preds = %if.end30
  %10 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host3, align 4
  %tobool35.not = icmp eq ptr %11, null
  br i1 %tobool35.not, label %do.end47, label %do.end39

do.end39:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %host_no42 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %host_no42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %host_no42, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %13, i32 noundef 6, i32 noundef 66, ptr noundef nonnull @.str.435) #16
  br label %out_disable_device

do.end47:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 6, i32 noundef 66, ptr noundef nonnull @.str.435) #16
  br label %out_disable_device

if.end51:                                         ; preds = %if.end30
  %flags = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 50, i32 10, i32 1, i32 4, i32 7
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool53.not = icmp eq i32 %16, 0
  br i1 %tobool53.not, label %if.end51.do.body57_crit_edge, label %if.then54

if.end51.do.body57_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body57

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %call55 = tail call i32 @pci_enable_msi(ptr noundef %add.ptr) #13
  br label %do.body57

do.body57:                                        ; preds = %if.then54, %if.end51.do.body57_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !850
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hostdata, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 -2143288320) #13, !srcloc !803
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.439) #16
  br label %cleanup

out_disable_device:                               ; preds = %do.end47, %do.end39, %if.end26.out_disable_device_crit_edge, %do.end22, %do.end16
  tail call void @scsi_remove_host(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %out_disable_device, %do.body57
  %retval.0 = phi i32 [ -19, %out_disable_device ], [ 0, %do.body57 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 398)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 398)
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
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !91, !93, !95, !96, !97, !98, !99, !101, !103, !105, !106, !107, !108, !109, !110, !112, !113, !114, !115, !116, !118, !119, !120, !121, !122, !123, !125, !126, !127, !128, !129, !131, !132, !133, !134, !135, !137, !138, !139, !140, !141, !143, !144, !146, !147, !148, !149, !150, !151, !153, !154, !156, !158, !160, !162, !164, !165, !166, !167, !168, !169, !171, !172, !173, !174, !175, !177, !178, !179, !180, !181, !183, !184, !186, !187, !189, !190, !191, !192, !193, !194, !196, !197, !198, !199, !200, !202, !203, !204, !205, !206, !207, !209, !210, !211, !212, !213, !215, !216, !217, !218, !219, !221, !222, !223, !224, !225, !227, !228, !229, !230, !231, !233, !234, !235, !236, !237, !238, !240, !241, !242, !243, !244, !246, !247, !248, !249, !250, !252, !253, !254, !255, !256, !258, !259, !260, !261, !262, !263, !265, !266, !267, !268, !269, !270, !272, !273, !274, !275, !277, !278, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !504, !505, !506, !507, !508, !510, !511, !512, !513, !514, !516, !517, !518, !519, !520, !522, !524, !525, !526, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !680, !681, !682, !683, !684, !686, !687, !688, !689, !690, !691, !693, !694, !695, !696, !697, !699, !700, !701, !702, !703, !705, !706, !707, !708, !709, !710, !712, !714, !716, !718, !720, !721, !722, !723, !725, !726, !727, !729, !730, !732, !734, !736, !737, !738, !739, !741, !742, !743, !744, !745, !747, !748, !749, !751, !753, !754, !755, !756, !758, !759, !760, !761, !762, !764, !765, !766, !768, !769, !770, !771, !773, !774, !775, !776, !777, !779, !780, !781, !782, !783, !785, !786, !787, !789, !790, !791}
!llvm.named.register.sp = !{!792}
!llvm.module.flags = !{!793, !794, !795, !796, !797, !798, !799, !800}
!llvm.ident = !{!801}

!0 = !{ptr @__UNIQUE_ID_author287, !1, !"__UNIQUE_ID_author287", i1 false, i1 false}
!1 = !{!"../drivers/scsi/3w-9xxx.c", i32 111, i32 1}
!2 = !{ptr @__UNIQUE_ID_description288, !3, !"__UNIQUE_ID_description288", i1 false, i1 false}
!3 = !{!"../drivers/scsi/3w-9xxx.c", i32 112, i32 1}
!4 = !{ptr @__UNIQUE_ID_file289, !5, !"__UNIQUE_ID_file289", i1 false, i1 false}
!5 = !{!"../drivers/scsi/3w-9xxx.c", i32 113, i32 1}
!6 = !{ptr @__UNIQUE_ID_license290, !5, !"__UNIQUE_ID_license290", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version291, !8, !"__UNIQUE_ID_version291", i1 false, i1 false}
!8 = !{!"../drivers/scsi/3w-9xxx.c", i32 114, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_use_msi, !14, !"__param_use_msi", i1 false, i1 false}
!14 = !{!"../drivers/scsi/3w-9xxx.c", i32 117, i32 1}
!15 = !{ptr @__UNIQUE_ID_use_msitype292, !14, !"__UNIQUE_ID_use_msitype292", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_use_msi293, !17, !"__UNIQUE_ID_use_msi293", i1 false, i1 false}
!17 = !{!"../drivers/scsi/3w-9xxx.c", i32 118, i32 1}
!18 = !{ptr @__initcall__kmod_3w_9xxx__294_2303_twa_init6, !19, !"__initcall__kmod_3w_9xxx__294_2303_twa_init6", i1 false, i1 false}
!19 = !{!"../drivers/scsi/3w-9xxx.c", i32 2303, i32 1}
!20 = !{ptr @__exitcall_twa_exit, !21, !"__exitcall_twa_exit", i1 false, i1 false}
!21 = !{!"../drivers/scsi/3w-9xxx.c", i32 2304, i32 1}
!22 = !{ptr @__param_str_use_msi, !14, !"__param_str_use_msi", i1 false, i1 false}
!23 = !{ptr @use_msi, !24, !"use_msi", i1 false, i1 false}
!24 = !{!"../drivers/scsi/3w-9xxx.c", i32 116, i32 12}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/3w-9xxx.c", i32 2281, i32 11}
!27 = !{ptr @twa_driver, !28, !"twa_driver", i1 false, i1 false}
!28 = !{!"../drivers/scsi/3w-9xxx.c", i32 2280, i32 26}
!29 = !{ptr @twa_pci_tbl, !30, !"twa_pci_tbl", i1 false, i1 false}
!30 = !{!"../drivers/scsi/3w-9xxx.c", i32 2264, i32 29}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/3w-9xxx.c", i32 2008, i32 3}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @twa_probe._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @twa_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @twa_probe._entry.8, !32, !"_entry", i1 false, i1 false}
!40 = !{ptr @twa_probe._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @twa_probe._entry.11, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/scsi/3w-9xxx.c", i32 2019, i32 3}
!43 = !{ptr @twa_probe._entry_ptr.12, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @twa_probe._entry.14, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @twa_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @twa_probe._entry.16, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/scsi/3w-9xxx.c", i32 2026, i32 3}
!49 = !{ptr @twa_probe._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @twa_probe._entry.19, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @twa_probe._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @twa_probe._entry.21, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../drivers/scsi/3w-9xxx.c", i32 2037, i32 3}
!55 = !{ptr @twa_probe._entry_ptr.22, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @twa_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @twa_probe._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @twa_probe._entry.26, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../drivers/scsi/3w-9xxx.c", i32 2045, i32 3}
!61 = !{ptr @twa_probe._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @twa_probe._entry.29, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @twa_probe._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @twa_probe._entry.31, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/scsi/3w-9xxx.c", i32 2060, i32 3}
!67 = !{ptr @twa_probe._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @twa_probe._entry.34, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @twa_probe._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @twa_probe._entry.36, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../drivers/scsi/3w-9xxx.c", i32 2090, i32 3}
!73 = !{ptr @twa_probe._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @twa_probe._entry.39, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @twa_probe._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/3w-9xxx.c", i32 2096, i32 2}
!79 = !{ptr @twa_probe._entry.41, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @twa_probe._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/3w-9xxx.c", i32 2098, i32 2}
!83 = !{ptr @twa_probe._entry.44, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @twa_probe._entry_ptr.46, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @twa_probe._entry.47, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/scsi/3w-9xxx.c", i32 2115, i32 3}
!87 = !{ptr @twa_probe._entry_ptr.48, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @twa_probe._entry.50, !86, !"_entry", i1 false, i1 false}
!90 = !{ptr @twa_probe._entry_ptr.51, !86, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/3w-9xxx.c", i32 2129, i32 40}
!93 = !{ptr @twa_probe._entry.53, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/scsi/3w-9xxx.c", i32 2130, i32 4}
!95 = !{ptr @twa_probe._entry_ptr.54, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.55, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @twa_probe._entry.56, !94, !"_entry", i1 false, i1 false}
!98 = !{ptr @twa_probe._entry_ptr.57, !94, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.58, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/3w-9xxx.c", i32 1982, i32 12}
!101 = !{ptr @driver_template, !102, !"driver_template", i1 false, i1 false}
!102 = !{!"../drivers/scsi/3w-9xxx.c", i32 1980, i32 34}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/3w-9xxx.c", i32 1862, i32 7}
!105 = !{ptr @twa_scsiop_execute_scsi._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @twa_scsiop_execute_scsi._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.60, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @twa_scsiop_execute_scsi._entry.61, !104, !"_entry", i1 false, i1 false}
!109 = !{ptr @twa_scsiop_execute_scsi._entry_ptr.62, !104, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @twa_scsiop_execute_scsi._entry.63, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/scsi/3w-9xxx.c", i32 1875, i32 5}
!112 = !{ptr @twa_scsiop_execute_scsi._entry_ptr.64, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.65, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @twa_scsiop_execute_scsi._entry.66, !111, !"_entry", i1 false, i1 false}
!115 = !{ptr @twa_scsiop_execute_scsi._entry_ptr.67, !111, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.68, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/3w-9xxx.c", i32 914, i32 3}
!118 = !{ptr @twa_decode_bits._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @twa_decode_bits._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.69, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @twa_decode_bits._entry.70, !117, !"_entry", i1 false, i1 false}
!122 = !{ptr @twa_decode_bits._entry_ptr.71, !117, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @twa_decode_bits._entry.72, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/scsi/3w-9xxx.c", i32 919, i32 3}
!125 = !{ptr @twa_decode_bits._entry_ptr.73, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.74, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @twa_decode_bits._entry.75, !124, !"_entry", i1 false, i1 false}
!128 = !{ptr @twa_decode_bits._entry_ptr.76, !124, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @twa_decode_bits._entry.77, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/scsi/3w-9xxx.c", i32 928, i32 4}
!131 = !{ptr @twa_decode_bits._entry_ptr.78, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.79, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @twa_decode_bits._entry.80, !130, !"_entry", i1 false, i1 false}
!134 = !{ptr @twa_decode_bits._entry_ptr.81, !130, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @twa_decode_bits._entry.82, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/scsi/3w-9xxx.c", i32 934, i32 4}
!137 = !{ptr @twa_decode_bits._entry_ptr.83, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.84, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @twa_decode_bits._entry.85, !136, !"_entry", i1 false, i1 false}
!140 = !{ptr @twa_decode_bits._entry_ptr.86, !136, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.87, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/3w-9xxx.c", i32 1729, i32 2}
!143 = !{ptr @.str.88, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.89, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/3w-9xxx.c", i32 1738, i32 3}
!146 = !{ptr @twa_scsi_eh_reset._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @twa_scsi_eh_reset._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.90, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @twa_scsi_eh_reset._entry.91, !145, !"_entry", i1 false, i1 false}
!150 = !{ptr @twa_scsi_eh_reset._entry_ptr.92, !145, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @twa_host_groups, !152, !"twa_host_groups", i1 false, i1 false}
!152 = !{!"../drivers/scsi/3w-9xxx.c", i32 205, i32 1}
!153 = !{ptr @twa_host_group, !152, !"twa_host_group", i1 false, i1 false}
!154 = !{ptr @twa_host_attrs, !155, !"twa_host_attrs", i1 false, i1 false}
!155 = !{!"../drivers/scsi/3w-9xxx.c", i32 200, i32 26}
!156 = !{ptr @.str.93, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/3w-9xxx.c", i32 193, i32 12}
!158 = !{ptr @twa_host_stats_attr, !159, !"twa_host_stats_attr", i1 false, i1 false}
!159 = !{!"../drivers/scsi/3w-9xxx.c", i32 191, i32 32}
!160 = !{ptr @.str.94, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/3w-9xxx.c", i32 164, i32 33}
!162 = !{ptr @.str.95, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/3w-9xxx.c", i32 1176, i32 3}
!164 = !{ptr @twa_initialize_device_extension._entry, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @twa_initialize_device_extension._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.96, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @twa_initialize_device_extension._entry.97, !163, !"_entry", i1 false, i1 false}
!168 = !{ptr @twa_initialize_device_extension._entry_ptr.98, !163, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @twa_initialize_device_extension._entry.99, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/scsi/3w-9xxx.c", i32 1182, i32 3}
!171 = !{ptr @twa_initialize_device_extension._entry_ptr.100, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.101, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @twa_initialize_device_extension._entry.102, !170, !"_entry", i1 false, i1 false}
!174 = !{ptr @twa_initialize_device_extension._entry_ptr.103, !170, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @twa_initialize_device_extension._entry.104, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/scsi/3w-9xxx.c", i32 1189, i32 3}
!177 = !{ptr @twa_initialize_device_extension._entry_ptr.105, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.106, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @twa_initialize_device_extension._entry.107, !176, !"_entry", i1 false, i1 false}
!180 = !{ptr @twa_initialize_device_extension._entry_ptr.108, !176, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @twa_initialize_device_extension.__key, !182, !"__key", i1 false, i1 false}
!182 = !{!"../drivers/scsi/3w-9xxx.c", i32 1207, i32 2}
!183 = !{ptr @.str.109, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @twa_initialize_device_extension.__key.110, !185, !"__key", i1 false, i1 false}
!185 = !{!"../drivers/scsi/3w-9xxx.c", i32 1208, i32 2}
!186 = !{ptr @.str.111, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.112, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/3w-9xxx.c", i32 527, i32 3}
!189 = !{ptr @twa_allocate_memory._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @twa_allocate_memory._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.113, !188, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @twa_allocate_memory._entry.114, !188, !"_entry", i1 false, i1 false}
!193 = !{ptr @twa_allocate_memory._entry_ptr.115, !188, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @twa_allocate_memory._entry.116, !195, !"_entry", i1 false, i1 false}
!195 = !{!"../drivers/scsi/3w-9xxx.c", i32 532, i32 3}
!196 = !{ptr @twa_allocate_memory._entry_ptr.117, !195, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.118, !195, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @twa_allocate_memory._entry.119, !195, !"_entry", i1 false, i1 false}
!199 = !{ptr @twa_allocate_memory._entry_ptr.120, !195, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.121, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/3w-9xxx.c", i32 1643, i32 5}
!202 = !{ptr @twa_reset_sequence._entry, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @twa_reset_sequence._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.122, !201, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @twa_reset_sequence._entry.123, !201, !"_entry", i1 false, i1 false}
!206 = !{ptr @twa_reset_sequence._entry_ptr.124, !201, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @twa_reset_sequence._entry.125, !208, !"_entry", i1 false, i1 false}
!208 = !{!"../drivers/scsi/3w-9xxx.c", i32 1652, i32 4}
!209 = !{ptr @twa_reset_sequence._entry_ptr.126, !208, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.127, !208, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @twa_reset_sequence._entry.128, !208, !"_entry", i1 false, i1 false}
!212 = !{ptr @twa_reset_sequence._entry_ptr.129, !208, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @twa_reset_sequence._entry.130, !214, !"_entry", i1 false, i1 false}
!214 = !{!"../drivers/scsi/3w-9xxx.c", i32 1660, i32 4}
!215 = !{ptr @twa_reset_sequence._entry_ptr.131, !214, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.132, !214, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @twa_reset_sequence._entry.133, !214, !"_entry", i1 false, i1 false}
!218 = !{ptr @twa_reset_sequence._entry_ptr.134, !214, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @twa_reset_sequence._entry.135, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../drivers/scsi/3w-9xxx.c", i32 1670, i32 4}
!221 = !{ptr @twa_reset_sequence._entry_ptr.136, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.137, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @twa_reset_sequence._entry.138, !220, !"_entry", i1 false, i1 false}
!224 = !{ptr @twa_reset_sequence._entry_ptr.139, !220, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @twa_reset_sequence._entry.140, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../drivers/scsi/3w-9xxx.c", i32 1683, i32 4}
!227 = !{ptr @twa_reset_sequence._entry_ptr.141, !226, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.142, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @twa_reset_sequence._entry.143, !226, !"_entry", i1 false, i1 false}
!230 = !{ptr @twa_reset_sequence._entry_ptr.144, !226, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.145, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/3w-9xxx.c", i32 586, i32 3}
!233 = !{ptr @twa_check_srl._entry, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @twa_check_srl._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.146, !232, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @twa_check_srl._entry.147, !232, !"_entry", i1 false, i1 false}
!237 = !{ptr @twa_check_srl._entry_ptr.148, !232, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @twa_check_srl._entry.149, !239, !"_entry", i1 false, i1 false}
!239 = !{!"../drivers/scsi/3w-9xxx.c", i32 603, i32 4}
!240 = !{ptr @twa_check_srl._entry_ptr.150, !239, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.151, !239, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @twa_check_srl._entry.152, !239, !"_entry", i1 false, i1 false}
!243 = !{ptr @twa_check_srl._entry_ptr.153, !239, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @twa_check_srl._entry.154, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../drivers/scsi/3w-9xxx.c", i32 608, i32 5}
!246 = !{ptr @twa_check_srl._entry_ptr.155, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.156, !245, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @twa_check_srl._entry.157, !245, !"_entry", i1 false, i1 false}
!249 = !{ptr @twa_check_srl._entry_ptr.158, !245, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @twa_check_srl._entry.159, !251, !"_entry", i1 false, i1 false}
!251 = !{!"../drivers/scsi/3w-9xxx.c", i32 610, i32 5}
!252 = !{ptr @twa_check_srl._entry_ptr.160, !251, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.161, !251, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @twa_check_srl._entry.162, !251, !"_entry", i1 false, i1 false}
!255 = !{ptr @twa_check_srl._entry_ptr.163, !251, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.164, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/3w-9xxx.c", i32 1151, i32 3}
!258 = !{ptr @twa_initconnection._entry, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @twa_initconnection._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.165, !257, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @twa_initconnection._entry.166, !257, !"_entry", i1 false, i1 false}
!262 = !{ptr @twa_initconnection._entry_ptr.167, !257, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.168, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/3w-9xxx.c", i32 1429, i32 4}
!265 = !{ptr @twa_poll_response._entry, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @twa_poll_response._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.169, !264, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @twa_poll_response._entry.170, !264, !"_entry", i1 false, i1 false}
!269 = !{ptr @twa_poll_response._entry_ptr.171, !264, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.172, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/3w-9xxx.c", i32 1006, i32 4}
!272 = !{ptr @.str.173, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @twa_fill_sense._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @twa_fill_sense._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.175, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/3w-9xxx.c", i32 1012, i32 4}
!277 = !{ptr @twa_fill_sense._entry.174, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @twa_fill_sense._entry_ptr.176, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.177, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/scsi/3w-9xxx.h", i32 139, i32 11}
!281 = !{ptr @.str.178, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/3w-9xxx.h", i32 140, i32 11}
!283 = !{ptr @.str.179, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/3w-9xxx.h", i32 141, i32 11}
!285 = !{ptr @.str.180, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/3w-9xxx.h", i32 142, i32 11}
!287 = !{ptr @.str.181, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/3w-9xxx.h", i32 143, i32 11}
!289 = !{ptr @.str.182, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/scsi/3w-9xxx.h", i32 144, i32 11}
!291 = !{ptr @.str.183, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/scsi/3w-9xxx.h", i32 145, i32 11}
!293 = !{ptr @.str.184, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/3w-9xxx.h", i32 146, i32 11}
!295 = !{ptr @.str.185, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/scsi/3w-9xxx.h", i32 147, i32 11}
!297 = !{ptr @.str.186, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/scsi/3w-9xxx.h", i32 148, i32 11}
!299 = !{ptr @.str.187, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/scsi/3w-9xxx.h", i32 149, i32 11}
!301 = !{ptr @.str.188, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/scsi/3w-9xxx.h", i32 150, i32 11}
!303 = !{ptr @.str.189, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/3w-9xxx.h", i32 151, i32 11}
!305 = !{ptr @.str.190, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/scsi/3w-9xxx.h", i32 152, i32 11}
!307 = !{ptr @.str.191, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/scsi/3w-9xxx.h", i32 153, i32 11}
!309 = !{ptr @.str.192, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/scsi/3w-9xxx.h", i32 154, i32 11}
!311 = !{ptr @.str.193, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/3w-9xxx.h", i32 155, i32 11}
!313 = !{ptr @.str.194, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/scsi/3w-9xxx.h", i32 156, i32 11}
!315 = !{ptr @.str.195, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/3w-9xxx.h", i32 157, i32 11}
!317 = !{ptr @.str.196, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/scsi/3w-9xxx.h", i32 158, i32 11}
!319 = !{ptr @.str.197, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/scsi/3w-9xxx.h", i32 159, i32 11}
!321 = !{ptr @.str.198, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/scsi/3w-9xxx.h", i32 160, i32 11}
!323 = !{ptr @.str.199, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/3w-9xxx.h", i32 161, i32 11}
!325 = !{ptr @.str.200, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/scsi/3w-9xxx.h", i32 162, i32 11}
!327 = !{ptr @.str.201, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/3w-9xxx.h", i32 163, i32 11}
!329 = !{ptr @.str.202, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/scsi/3w-9xxx.h", i32 164, i32 11}
!331 = !{ptr @.str.203, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/scsi/3w-9xxx.h", i32 165, i32 11}
!333 = !{ptr @.str.204, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/scsi/3w-9xxx.h", i32 166, i32 11}
!335 = !{ptr @.str.205, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/scsi/3w-9xxx.h", i32 167, i32 11}
!337 = !{ptr @.str.206, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/scsi/3w-9xxx.h", i32 169, i32 11}
!339 = !{ptr @.str.207, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/scsi/3w-9xxx.h", i32 170, i32 11}
!341 = !{ptr @.str.208, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/scsi/3w-9xxx.h", i32 171, i32 11}
!343 = !{ptr @.str.209, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/scsi/3w-9xxx.h", i32 172, i32 11}
!345 = !{ptr @.str.210, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/scsi/3w-9xxx.h", i32 173, i32 11}
!347 = !{ptr @.str.211, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/scsi/3w-9xxx.h", i32 174, i32 11}
!349 = !{ptr @.str.212, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/scsi/3w-9xxx.h", i32 175, i32 11}
!351 = !{ptr @.str.213, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/scsi/3w-9xxx.h", i32 176, i32 11}
!353 = !{ptr @.str.214, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/scsi/3w-9xxx.h", i32 177, i32 11}
!355 = !{ptr @.str.215, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/scsi/3w-9xxx.h", i32 178, i32 11}
!357 = !{ptr @.str.216, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/scsi/3w-9xxx.h", i32 179, i32 11}
!359 = !{ptr @.str.217, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/scsi/3w-9xxx.h", i32 180, i32 11}
!361 = !{ptr @.str.218, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/scsi/3w-9xxx.h", i32 181, i32 11}
!363 = !{ptr @.str.219, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/scsi/3w-9xxx.h", i32 182, i32 11}
!365 = !{ptr @.str.220, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/3w-9xxx.h", i32 183, i32 11}
!367 = !{ptr @.str.221, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/scsi/3w-9xxx.h", i32 184, i32 11}
!369 = !{ptr @.str.222, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/scsi/3w-9xxx.h", i32 185, i32 11}
!371 = !{ptr @.str.223, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/scsi/3w-9xxx.h", i32 186, i32 11}
!373 = !{ptr @.str.224, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/scsi/3w-9xxx.h", i32 187, i32 11}
!375 = !{ptr @.str.225, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/scsi/3w-9xxx.h", i32 188, i32 11}
!377 = !{ptr @.str.226, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/scsi/3w-9xxx.h", i32 189, i32 11}
!379 = !{ptr @.str.227, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/scsi/3w-9xxx.h", i32 190, i32 11}
!381 = !{ptr @.str.228, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/scsi/3w-9xxx.h", i32 191, i32 11}
!383 = !{ptr @.str.229, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/scsi/3w-9xxx.h", i32 192, i32 11}
!385 = !{ptr @.str.230, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/scsi/3w-9xxx.h", i32 193, i32 11}
!387 = !{ptr @.str.231, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/scsi/3w-9xxx.h", i32 194, i32 11}
!389 = !{ptr @.str.232, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/scsi/3w-9xxx.h", i32 195, i32 11}
!391 = !{ptr @.str.233, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/scsi/3w-9xxx.h", i32 196, i32 11}
!393 = !{ptr @.str.234, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/scsi/3w-9xxx.h", i32 197, i32 11}
!395 = !{ptr @.str.235, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/scsi/3w-9xxx.h", i32 198, i32 11}
!397 = !{ptr @.str.236, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/scsi/3w-9xxx.h", i32 199, i32 11}
!399 = !{ptr @.str.237, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/scsi/3w-9xxx.h", i32 200, i32 11}
!401 = !{ptr @.str.238, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/scsi/3w-9xxx.h", i32 201, i32 11}
!403 = !{ptr @.str.239, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/scsi/3w-9xxx.h", i32 202, i32 11}
!405 = !{ptr @.str.240, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/scsi/3w-9xxx.h", i32 203, i32 11}
!407 = !{ptr @.str.241, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/scsi/3w-9xxx.h", i32 204, i32 11}
!409 = !{ptr @.str.242, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/scsi/3w-9xxx.h", i32 205, i32 11}
!411 = !{ptr @.str.243, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/scsi/3w-9xxx.h", i32 206, i32 11}
!413 = !{ptr @.str.244, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/scsi/3w-9xxx.h", i32 207, i32 11}
!415 = !{ptr @.str.245, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/scsi/3w-9xxx.h", i32 208, i32 11}
!417 = !{ptr @.str.246, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/scsi/3w-9xxx.h", i32 209, i32 11}
!419 = !{ptr @.str.247, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/scsi/3w-9xxx.h", i32 210, i32 11}
!421 = !{ptr @.str.248, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/scsi/3w-9xxx.h", i32 211, i32 11}
!423 = !{ptr @.str.249, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/scsi/3w-9xxx.h", i32 212, i32 11}
!425 = !{ptr @.str.250, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/scsi/3w-9xxx.h", i32 213, i32 11}
!427 = !{ptr @.str.251, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/scsi/3w-9xxx.h", i32 214, i32 11}
!429 = !{ptr @.str.252, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/scsi/3w-9xxx.h", i32 215, i32 11}
!431 = !{ptr @.str.253, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/scsi/3w-9xxx.h", i32 216, i32 11}
!433 = !{ptr @.str.254, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/scsi/3w-9xxx.h", i32 218, i32 11}
!435 = !{ptr @.str.255, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/scsi/3w-9xxx.h", i32 219, i32 11}
!437 = !{ptr @.str.256, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/scsi/3w-9xxx.h", i32 220, i32 11}
!439 = !{ptr @.str.257, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/scsi/3w-9xxx.h", i32 221, i32 11}
!441 = !{ptr @.str.258, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/scsi/3w-9xxx.h", i32 222, i32 11}
!443 = !{ptr @.str.259, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/scsi/3w-9xxx.h", i32 223, i32 11}
!445 = !{ptr @.str.260, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/scsi/3w-9xxx.h", i32 224, i32 11}
!447 = !{ptr @.str.261, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/scsi/3w-9xxx.h", i32 225, i32 11}
!449 = !{ptr @.str.262, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/scsi/3w-9xxx.h", i32 226, i32 11}
!451 = !{ptr @.str.263, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/scsi/3w-9xxx.h", i32 227, i32 11}
!453 = !{ptr @.str.264, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/scsi/3w-9xxx.h", i32 228, i32 11}
!455 = !{ptr @.str.265, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/scsi/3w-9xxx.h", i32 229, i32 11}
!457 = !{ptr @.str.266, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/scsi/3w-9xxx.h", i32 230, i32 11}
!459 = !{ptr @.str.267, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/scsi/3w-9xxx.h", i32 231, i32 11}
!461 = !{ptr @.str.268, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/scsi/3w-9xxx.h", i32 232, i32 11}
!463 = !{ptr @.str.269, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/scsi/3w-9xxx.h", i32 233, i32 11}
!465 = !{ptr @.str.270, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/scsi/3w-9xxx.h", i32 234, i32 11}
!467 = !{ptr @.str.271, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/scsi/3w-9xxx.h", i32 235, i32 11}
!469 = !{ptr @.str.272, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/scsi/3w-9xxx.h", i32 236, i32 11}
!471 = !{ptr @.str.273, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/scsi/3w-9xxx.h", i32 237, i32 11}
!473 = !{ptr @.str.274, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/scsi/3w-9xxx.h", i32 238, i32 11}
!475 = !{ptr @.str.275, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/scsi/3w-9xxx.h", i32 239, i32 11}
!477 = !{ptr @.str.276, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/scsi/3w-9xxx.h", i32 240, i32 11}
!479 = !{ptr @.str.277, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/scsi/3w-9xxx.h", i32 241, i32 11}
!481 = !{ptr @.str.278, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/scsi/3w-9xxx.h", i32 242, i32 11}
!483 = !{ptr @.str.279, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/scsi/3w-9xxx.h", i32 243, i32 11}
!485 = !{ptr @.str.280, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/scsi/3w-9xxx.h", i32 244, i32 11}
!487 = !{ptr @.str.281, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/scsi/3w-9xxx.h", i32 245, i32 11}
!489 = !{ptr @.str.282, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/scsi/3w-9xxx.h", i32 246, i32 11}
!491 = !{ptr @.str.283, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/scsi/3w-9xxx.h", i32 247, i32 11}
!493 = !{ptr @.str.284, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/scsi/3w-9xxx.h", i32 248, i32 11}
!495 = !{ptr @.str.285, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/scsi/3w-9xxx.h", i32 249, i32 11}
!497 = !{ptr @.str.286, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/scsi/3w-9xxx.h", i32 250, i32 11}
!499 = !{ptr @twa_error_table, !500, !"twa_error_table", i1 false, i1 false}
!500 = !{!"../drivers/scsi/3w-9xxx.h", i32 138, i32 25}
!501 = !{ptr @.str.287, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/scsi/3w-9xxx.c", i32 312, i32 3}
!503 = !{ptr @twa_aen_drain_queue._entry, !502, !"_entry", i1 false, i1 false}
!504 = !{ptr @twa_aen_drain_queue._entry_ptr, !502, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.288, !502, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @twa_aen_drain_queue._entry.289, !502, !"_entry", i1 false, i1 false}
!507 = !{ptr @twa_aen_drain_queue._entry_ptr.290, !502, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @twa_aen_drain_queue._entry.291, !509, !"_entry", i1 false, i1 false}
!509 = !{!"../drivers/scsi/3w-9xxx.c", i32 322, i32 4}
!510 = !{ptr @twa_aen_drain_queue._entry_ptr.292, !509, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.293, !509, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @twa_aen_drain_queue._entry.294, !509, !"_entry", i1 false, i1 false}
!513 = !{ptr @twa_aen_drain_queue._entry_ptr.295, !509, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @twa_aen_drain_queue._entry.296, !515, !"_entry", i1 false, i1 false}
!515 = !{!"../drivers/scsi/3w-9xxx.c", i32 328, i32 4}
!516 = !{ptr @twa_aen_drain_queue._entry_ptr.297, !515, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @.str.298, !515, !"<string literal>", i1 false, i1 false}
!518 = !{ptr @twa_aen_drain_queue._entry.299, !515, !"_entry", i1 false, i1 false}
!519 = !{ptr @twa_aen_drain_queue._entry_ptr.300, !515, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.301, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/scsi/3w-9xxx.c", i32 389, i32 17}
!522 = !{ptr @.str.302, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/scsi/3w-9xxx.c", i32 413, i32 3}
!524 = !{ptr @.str.303, !523, !"<string literal>", i1 false, i1 false}
!525 = !{ptr @twa_aen_queue_event._entry, !523, !"_entry", i1 false, i1 false}
!526 = !{ptr @twa_aen_queue_event._entry_ptr, !523, !"_entry_ptr", i1 false, i1 false}
!527 = !{ptr @.str.304, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/scsi/3w-9xxx.h", i32 134, i32 2}
!529 = !{ptr @.str.305, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/scsi/3w-9xxx.h", i32 134, i32 10}
!531 = !{ptr @.str.306, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/scsi/3w-9xxx.h", i32 134, i32 19}
!533 = !{ptr @.str.307, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/scsi/3w-9xxx.h", i32 134, i32 30}
!535 = !{ptr @.str.308, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/scsi/3w-9xxx.h", i32 134, i32 38}
!537 = !{ptr @twa_aen_severity_table, !538, !"twa_aen_severity_table", i1 false, i1 false}
!538 = !{!"../drivers/scsi/3w-9xxx.h", i32 132, i32 14}
!539 = !{ptr @.str.309, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/scsi/3w-9xxx.h", i32 58, i32 11}
!541 = !{ptr @.str.310, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/scsi/3w-9xxx.h", i32 59, i32 11}
!543 = !{ptr @.str.311, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/scsi/3w-9xxx.h", i32 60, i32 11}
!545 = !{ptr @.str.312, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/scsi/3w-9xxx.h", i32 61, i32 11}
!547 = !{ptr @.str.313, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/scsi/3w-9xxx.h", i32 62, i32 11}
!549 = !{ptr @.str.314, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/scsi/3w-9xxx.h", i32 63, i32 11}
!551 = !{ptr @.str.315, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/scsi/3w-9xxx.h", i32 64, i32 11}
!553 = !{ptr @.str.316, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/scsi/3w-9xxx.h", i32 65, i32 11}
!555 = !{ptr @.str.317, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/scsi/3w-9xxx.h", i32 66, i32 11}
!557 = !{ptr @.str.318, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/scsi/3w-9xxx.h", i32 67, i32 11}
!559 = !{ptr @.str.319, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/scsi/3w-9xxx.h", i32 68, i32 11}
!561 = !{ptr @.str.320, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/scsi/3w-9xxx.h", i32 69, i32 11}
!563 = !{ptr @.str.321, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/scsi/3w-9xxx.h", i32 70, i32 11}
!565 = !{ptr @.str.322, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/scsi/3w-9xxx.h", i32 71, i32 11}
!567 = !{ptr @.str.323, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/scsi/3w-9xxx.h", i32 72, i32 11}
!569 = !{ptr @.str.324, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/scsi/3w-9xxx.h", i32 74, i32 11}
!571 = !{ptr @.str.325, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/scsi/3w-9xxx.h", i32 75, i32 11}
!573 = !{ptr @.str.326, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/scsi/3w-9xxx.h", i32 76, i32 11}
!575 = !{ptr @.str.327, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/scsi/3w-9xxx.h", i32 77, i32 11}
!577 = !{ptr @.str.328, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/scsi/3w-9xxx.h", i32 78, i32 11}
!579 = !{ptr @.str.329, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/scsi/3w-9xxx.h", i32 79, i32 11}
!581 = !{ptr @.str.330, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/scsi/3w-9xxx.h", i32 80, i32 11}
!583 = !{ptr @.str.331, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/scsi/3w-9xxx.h", i32 81, i32 11}
!585 = !{ptr @.str.332, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/scsi/3w-9xxx.h", i32 82, i32 11}
!587 = !{ptr @.str.333, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/scsi/3w-9xxx.h", i32 83, i32 11}
!589 = !{ptr @.str.334, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/scsi/3w-9xxx.h", i32 84, i32 11}
!591 = !{ptr @.str.335, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/scsi/3w-9xxx.h", i32 85, i32 11}
!593 = !{ptr @.str.336, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/scsi/3w-9xxx.h", i32 86, i32 11}
!595 = !{ptr @.str.337, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/scsi/3w-9xxx.h", i32 87, i32 11}
!597 = !{ptr @.str.338, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/scsi/3w-9xxx.h", i32 88, i32 11}
!599 = !{ptr @.str.339, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/scsi/3w-9xxx.h", i32 89, i32 11}
!601 = !{ptr @.str.340, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/scsi/3w-9xxx.h", i32 90, i32 11}
!603 = !{ptr @.str.341, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/scsi/3w-9xxx.h", i32 91, i32 11}
!605 = !{ptr @.str.342, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/scsi/3w-9xxx.h", i32 92, i32 11}
!607 = !{ptr @.str.343, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/scsi/3w-9xxx.h", i32 93, i32 11}
!609 = !{ptr @.str.344, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/scsi/3w-9xxx.h", i32 94, i32 11}
!611 = !{ptr @.str.345, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/scsi/3w-9xxx.h", i32 95, i32 11}
!613 = !{ptr @.str.346, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/scsi/3w-9xxx.h", i32 96, i32 11}
!615 = !{ptr @.str.347, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/scsi/3w-9xxx.h", i32 97, i32 11}
!617 = !{ptr @.str.348, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/scsi/3w-9xxx.h", i32 98, i32 11}
!619 = !{ptr @.str.349, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/scsi/3w-9xxx.h", i32 99, i32 11}
!621 = !{ptr @.str.350, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/scsi/3w-9xxx.h", i32 100, i32 11}
!623 = !{ptr @.str.351, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/scsi/3w-9xxx.h", i32 101, i32 11}
!625 = !{ptr @.str.352, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/scsi/3w-9xxx.h", i32 102, i32 11}
!627 = !{ptr @.str.353, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/scsi/3w-9xxx.h", i32 103, i32 11}
!629 = !{ptr @.str.354, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/scsi/3w-9xxx.h", i32 104, i32 11}
!631 = !{ptr @.str.355, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/scsi/3w-9xxx.h", i32 105, i32 11}
!633 = !{ptr @.str.356, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/scsi/3w-9xxx.h", i32 106, i32 11}
!635 = !{ptr @.str.357, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/scsi/3w-9xxx.h", i32 107, i32 11}
!637 = !{ptr @.str.358, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/scsi/3w-9xxx.h", i32 108, i32 11}
!639 = !{ptr @.str.359, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/scsi/3w-9xxx.h", i32 109, i32 11}
!641 = !{ptr @.str.360, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/scsi/3w-9xxx.h", i32 110, i32 11}
!643 = !{ptr @.str.361, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/scsi/3w-9xxx.h", i32 111, i32 11}
!645 = !{ptr @.str.362, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/scsi/3w-9xxx.h", i32 112, i32 11}
!647 = !{ptr @.str.363, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/scsi/3w-9xxx.h", i32 113, i32 11}
!649 = !{ptr @.str.364, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/scsi/3w-9xxx.h", i32 114, i32 11}
!651 = !{ptr @.str.365, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/scsi/3w-9xxx.h", i32 115, i32 11}
!653 = !{ptr @.str.366, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/scsi/3w-9xxx.h", i32 116, i32 11}
!655 = !{ptr @.str.367, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/scsi/3w-9xxx.h", i32 117, i32 11}
!657 = !{ptr @.str.368, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/scsi/3w-9xxx.h", i32 118, i32 11}
!659 = !{ptr @.str.369, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/scsi/3w-9xxx.h", i32 120, i32 11}
!661 = !{ptr @.str.370, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/scsi/3w-9xxx.h", i32 121, i32 11}
!663 = !{ptr @.str.371, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/scsi/3w-9xxx.h", i32 122, i32 11}
!665 = !{ptr @.str.372, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/scsi/3w-9xxx.h", i32 123, i32 11}
!667 = !{ptr @.str.373, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/scsi/3w-9xxx.h", i32 124, i32 11}
!669 = !{ptr @.str.374, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/scsi/3w-9xxx.h", i32 125, i32 11}
!671 = !{ptr @.str.375, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/scsi/3w-9xxx.h", i32 126, i32 11}
!673 = !{ptr @.str.376, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/scsi/3w-9xxx.h", i32 127, i32 11}
!675 = !{ptr @twa_aen_table, !676, !"twa_aen_table", i1 false, i1 false}
!676 = !{!"../drivers/scsi/3w-9xxx.h", i32 57, i32 25}
!677 = !{ptr @.str.377, !678, !"<string literal>", i1 false, i1 false}
!678 = !{!"../drivers/scsi/3w-9xxx.c", i32 1088, i32 3}
!679 = !{ptr @twa_get_param._entry, !678, !"_entry", i1 false, i1 false}
!680 = !{ptr @twa_get_param._entry_ptr, !678, !"_entry_ptr", i1 false, i1 false}
!681 = !{ptr @.str.378, !678, !"<string literal>", i1 false, i1 false}
!682 = !{ptr @twa_get_param._entry.379, !678, !"_entry", i1 false, i1 false}
!683 = !{ptr @twa_get_param._entry_ptr.380, !678, !"_entry_ptr", i1 false, i1 false}
!684 = !{ptr @.str.381, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../drivers/scsi/3w-9xxx.c", i32 1275, i32 5}
!686 = !{ptr @twa_interrupt._entry, !685, !"_entry", i1 false, i1 false}
!687 = !{ptr @twa_interrupt._entry_ptr, !685, !"_entry_ptr", i1 false, i1 false}
!688 = !{ptr @.str.382, !685, !"<string literal>", i1 false, i1 false}
!689 = !{ptr @twa_interrupt._entry.383, !685, !"_entry", i1 false, i1 false}
!690 = !{ptr @twa_interrupt._entry_ptr.384, !685, !"_entry_ptr", i1 false, i1 false}
!691 = !{ptr @twa_interrupt._entry.385, !692, !"_entry", i1 false, i1 false}
!692 = !{!"../drivers/scsi/3w-9xxx.c", i32 1314, i32 6}
!693 = !{ptr @twa_interrupt._entry_ptr.386, !692, !"_entry_ptr", i1 false, i1 false}
!694 = !{ptr @.str.387, !692, !"<string literal>", i1 false, i1 false}
!695 = !{ptr @twa_interrupt._entry.388, !692, !"_entry", i1 false, i1 false}
!696 = !{ptr @twa_interrupt._entry_ptr.389, !692, !"_entry_ptr", i1 false, i1 false}
!697 = !{ptr @twa_interrupt._entry.390, !698, !"_entry", i1 false, i1 false}
!698 = !{!"../drivers/scsi/3w-9xxx.c", i32 1324, i32 7}
!699 = !{ptr @twa_interrupt._entry_ptr.391, !698, !"_entry_ptr", i1 false, i1 false}
!700 = !{ptr @.str.392, !698, !"<string literal>", i1 false, i1 false}
!701 = !{ptr @twa_interrupt._entry.393, !698, !"_entry", i1 false, i1 false}
!702 = !{ptr @twa_interrupt._entry_ptr.394, !698, !"_entry_ptr", i1 false, i1 false}
!703 = !{ptr @.str.395, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/scsi/3w-9xxx.c", i32 453, i32 3}
!705 = !{ptr @twa_aen_read_queue._entry, !704, !"_entry", i1 false, i1 false}
!706 = !{ptr @twa_aen_read_queue._entry_ptr, !704, !"_entry_ptr", i1 false, i1 false}
!707 = !{ptr @.str.396, !704, !"<string literal>", i1 false, i1 false}
!708 = !{ptr @twa_aen_read_queue._entry.397, !704, !"_entry", i1 false, i1 false}
!709 = !{ptr @twa_aen_read_queue._entry_ptr.398, !704, !"_entry_ptr", i1 false, i1 false}
!710 = !{ptr @twa_device_extension_list, !711, !"twa_device_extension_list", i1 false, i1 false}
!711 = !{!"../drivers/scsi/3w-9xxx.c", i32 105, i32 29}
!712 = !{ptr @twa_device_extension_count, !713, !"twa_device_extension_count", i1 false, i1 false}
!713 = !{!"../drivers/scsi/3w-9xxx.c", i32 106, i32 21}
!714 = !{ptr @twa_major, !715, !"twa_major", i1 false, i1 false}
!715 = !{!"../drivers/scsi/3w-9xxx.c", i32 107, i32 12}
!716 = !{ptr @twa_fops, !717, !"twa_fops", i1 false, i1 false}
!717 = !{!"../drivers/scsi/3w-9xxx.c", i32 208, i32 37}
!718 = !{ptr @.str.399, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../drivers/scsi/3w-9xxx.c", i32 725, i32 4}
!720 = !{ptr @.str.400, !719, !"<string literal>", i1 false, i1 false}
!721 = !{ptr @twa_chrdev_ioctl._entry, !719, !"_entry", i1 false, i1 false}
!722 = !{ptr @twa_chrdev_ioctl._entry_ptr, !719, !"_entry_ptr", i1 false, i1 false}
!723 = !{ptr @.str.401, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../drivers/scsi/3w-9xxx.c", i32 104, i32 8}
!725 = !{ptr @.str.402, !724, !"<string literal>", i1 false, i1 false}
!726 = !{ptr @twa_chrdev_mutex, !724, !"twa_chrdev_mutex", i1 false, i1 false}
!727 = distinct !{null, !728, !"__already_done", i1 false, i1 false}
!728 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!729 = !{ptr @.str.403, !728, !"<string literal>", i1 false, i1 false}
!730 = !{ptr @.str.404, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!732 = !{ptr @.str.405, !733, !"<string literal>", i1 false, i1 false}
!733 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!734 = !{ptr @.str.406, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../drivers/scsi/3w-9xxx.c", i32 1938, i32 2}
!736 = !{ptr @.str.407, !735, !"<string literal>", i1 false, i1 false}
!737 = !{ptr @__twa_shutdown._entry, !735, !"_entry", i1 false, i1 false}
!738 = !{ptr @__twa_shutdown._entry_ptr, !735, !"_entry_ptr", i1 false, i1 false}
!739 = !{ptr @__twa_shutdown._entry.408, !740, !"_entry", i1 false, i1 false}
!740 = !{!"../drivers/scsi/3w-9xxx.c", i32 1942, i32 3}
!741 = !{ptr @__twa_shutdown._entry_ptr.409, !740, !"_entry_ptr", i1 false, i1 false}
!742 = !{ptr @.str.410, !740, !"<string literal>", i1 false, i1 false}
!743 = !{ptr @__twa_shutdown._entry.411, !740, !"_entry", i1 false, i1 false}
!744 = !{ptr @__twa_shutdown._entry_ptr.412, !740, !"_entry_ptr", i1 false, i1 false}
!745 = !{ptr @.str.414, !746, !"<string literal>", i1 false, i1 false}
!746 = !{!"../drivers/scsi/3w-9xxx.c", i32 1944, i32 3}
!747 = !{ptr @__twa_shutdown._entry.413, !746, !"_entry", i1 false, i1 false}
!748 = !{ptr @__twa_shutdown._entry_ptr.415, !746, !"_entry_ptr", i1 false, i1 false}
!749 = !{ptr @twa_pm_ops, !750, !"twa_pm_ops", i1 false, i1 false}
!750 = !{!"../drivers/scsi/3w-9xxx.c", i32 2277, i32 8}
!751 = !{ptr @.str.416, !752, !"<string literal>", i1 false, i1 false}
!752 = !{!"../drivers/scsi/3w-9xxx.c", i32 2193, i32 2}
!753 = !{ptr @.str.417, !752, !"<string literal>", i1 false, i1 false}
!754 = !{ptr @twa_suspend._entry, !752, !"_entry", i1 false, i1 false}
!755 = !{ptr @twa_suspend._entry_ptr, !752, !"_entry_ptr", i1 false, i1 false}
!756 = !{ptr @twa_suspend._entry.418, !757, !"_entry", i1 false, i1 false}
!757 = !{!"../drivers/scsi/3w-9xxx.c", i32 2203, i32 3}
!758 = !{ptr @twa_suspend._entry_ptr.419, !757, !"_entry_ptr", i1 false, i1 false}
!759 = !{ptr @.str.420, !757, !"<string literal>", i1 false, i1 false}
!760 = !{ptr @twa_suspend._entry.421, !757, !"_entry", i1 false, i1 false}
!761 = !{ptr @twa_suspend._entry_ptr.422, !757, !"_entry_ptr", i1 false, i1 false}
!762 = !{ptr @.str.424, !763, !"<string literal>", i1 false, i1 false}
!763 = !{!"../drivers/scsi/3w-9xxx.c", i32 2205, i32 3}
!764 = !{ptr @twa_suspend._entry.423, !763, !"_entry", i1 false, i1 false}
!765 = !{ptr @twa_suspend._entry_ptr.425, !763, !"_entry_ptr", i1 false, i1 false}
!766 = !{ptr @.str.426, !767, !"<string literal>", i1 false, i1 false}
!767 = !{!"../drivers/scsi/3w-9xxx.c", i32 2220, i32 2}
!768 = !{ptr @.str.427, !767, !"<string literal>", i1 false, i1 false}
!769 = !{ptr @twa_resume._entry, !767, !"_entry", i1 false, i1 false}
!770 = !{ptr @twa_resume._entry_ptr, !767, !"_entry_ptr", i1 false, i1 false}
!771 = !{ptr @twa_resume._entry.428, !772, !"_entry", i1 false, i1 false}
!772 = !{!"../drivers/scsi/3w-9xxx.c", i32 2228, i32 3}
!773 = !{ptr @twa_resume._entry_ptr.429, !772, !"_entry_ptr", i1 false, i1 false}
!774 = !{ptr @.str.430, !772, !"<string literal>", i1 false, i1 false}
!775 = !{ptr @twa_resume._entry.431, !772, !"_entry", i1 false, i1 false}
!776 = !{ptr @twa_resume._entry_ptr.432, !772, !"_entry_ptr", i1 false, i1 false}
!777 = !{ptr @twa_resume._entry.433, !778, !"_entry", i1 false, i1 false}
!778 = !{!"../drivers/scsi/3w-9xxx.c", i32 2242, i32 3}
!779 = !{ptr @twa_resume._entry_ptr.434, !778, !"_entry_ptr", i1 false, i1 false}
!780 = !{ptr @.str.435, !778, !"<string literal>", i1 false, i1 false}
!781 = !{ptr @twa_resume._entry.436, !778, !"_entry", i1 false, i1 false}
!782 = !{ptr @twa_resume._entry_ptr.437, !778, !"_entry_ptr", i1 false, i1 false}
!783 = !{ptr @.str.439, !784, !"<string literal>", i1 false, i1 false}
!784 = !{!"../drivers/scsi/3w-9xxx.c", i32 2254, i32 2}
!785 = !{ptr @twa_resume._entry.438, !784, !"_entry", i1 false, i1 false}
!786 = !{ptr @twa_resume._entry_ptr.440, !784, !"_entry_ptr", i1 false, i1 false}
!787 = !{ptr @.str.441, !788, !"<string literal>", i1 false, i1 false}
!788 = !{!"../drivers/scsi/3w-9xxx.c", i32 2292, i32 2}
!789 = !{ptr @.str.442, !788, !"<string literal>", i1 false, i1 false}
!790 = !{ptr @twa_init._entry, !788, !"_entry", i1 false, i1 false}
!791 = !{ptr @twa_init._entry_ptr, !788, !"_entry_ptr", i1 false, i1 false}
!792 = !{!"sp"}
!793 = !{i32 1, !"wchar_size", i32 2}
!794 = !{i32 1, !"min_enum_size", i32 4}
!795 = !{i32 8, !"branch-target-enforcement", i32 0}
!796 = !{i32 8, !"sign-return-address", i32 0}
!797 = !{i32 8, !"sign-return-address-all", i32 0}
!798 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!799 = !{i32 7, !"uwtable", i32 1}
!800 = !{i32 7, !"frame-pointer", i32 2}
!801 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!802 = !{i64 2155314728}
!803 = !{i64 4693984}
!804 = !{i64 2155326998}
!805 = !{i64 2155236821}
!806 = !{i64 4694402}
!807 = !{i64 2155174990}
!808 = !{i64 2155225729}
!809 = !{i64 2155226408}
!810 = !{i64 2155172908}
!811 = !{i64 2155173602}
!812 = !{i64 2155174281}
!813 = !{i64 2155201262}
!814 = !{i64 2155201614}
!815 = !{i64 2155202156}
!816 = !{i64 2155202703}
!817 = !{i64 2155203473}
!818 = !{i64 2155207616}
!819 = !{i64 2155208521}
!820 = !{i64 2155212555}
!821 = !{i64 774622, i64 774649}
!822 = !{i64 775132, i64 775159, i64 775193, i64 775214}
!823 = !{i64 2155217492}
!824 = !{i64 2155217817}
!825 = !{i64 774909, i64 774936, i64 774958, i64 774986}
!826 = !{i64 775317, i64 775344, i64 775377, i64 775398, i64 775425, i64 775451}
!827 = !{i64 2155228917}
!828 = !{i64 2155229864}
!829 = !{i64 2155230233}
!830 = !{i64 2155160370}
!831 = !{i64 2155164343}
!832 = !{i64 2155168436}
!833 = !{i64 2155234116}
!834 = !{i64 2155234649}
!835 = !{i64 2155235727}
!836 = !{!"auto-init"}
!837 = !{i64 2155227492}
!838 = !{i64 2155228171}
!839 = !{i64 2155221210}
!840 = !{i64 2153962021, i64 2153962046}
!841 = !{!"branch_weights", i32 2000, i32 1}
!842 = !{i64 6457576}
!843 = !{i64 6457773}
!844 = !{i64 2153943006}
!845 = !{i64 2153962702, i64 2153962727}
!846 = !{i64 2155284912}
!847 = !{i64 2155291995}
!848 = !{i64 2155333897}
!849 = !{i64 2155339574}
!850 = !{i64 2155350208}
