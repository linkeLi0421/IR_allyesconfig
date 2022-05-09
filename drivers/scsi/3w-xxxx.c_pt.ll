; ModuleID = '/llk/IR_all_yes/drivers/scsi/3w-xxxx.c_pt.bc'
source_filename = "../drivers/scsi/3w-xxxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
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
%struct.TAG_TW_Device_Extension = type { i32, [256 x ptr], [256 x i32], [16 x i32], [256 x ptr], [256 x i32], ptr, [256 x ptr], [256 x i8], i8, i8, [256 x i8], i8, i8, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, [256 x i16], i8, i8, i32, i32, i32, %struct.wait_queue_head }
%struct.TW_Command = type { i8, i8, i8, i8, i8, i8, %union.anon.84, %union.anon.85 }
%union.anon.84 = type { i16 }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { i32, [62 x %struct.TAG_TW_SG_Entry], i32 }
%struct.TAG_TW_SG_Entry = type { i32, i32 }
%struct.TW_Param = type <{ i16, i8, i8, [1 x i8] }>
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
%struct.TAG_TW_New_Ioctl = type <{ i32, [508 x i8], %struct.TW_Command, [1 x i8] }>

@__UNIQUE_ID_author287 = internal constant [19 x i8] c"3w_xxxx.author=LSI\00", section ".modinfo", align 1
@__UNIQUE_ID_description288 = internal constant [58 x i8] c"3w_xxxx.description=3ware Storage Controller Linux Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [34 x i8] c"3w_xxxx.file=drivers/scsi/3w-xxxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [20 x i8] c"3w_xxxx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version291 = internal constant [28 x i8] c"3w_xxxx.version=1.26.02.003\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3w_xxxx\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"1.26.02.003\00", [20 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@tw_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @tw_pci_tbl, ptr @tw_probe, ptr @tw_remove, ptr null, ptr null, ptr @tw_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_3w_xxxx__292_2426_tw_init6 = internal global ptr @tw_init, section ".initcall6.init", align 4
@__exitcall_tw_exit = internal global ptr @tw_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3w-xxxx\00", [24 x i8] zeroinitializer }, align 32
@tw_pci_tbl = internal global { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5057, i32 4096, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5057, i32 4097, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 2259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\0143w-xxxx: Failed to enable pci device.\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tw_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/scsi/3w-xxxx.c\00", [41 x i8] zeroinitializer }, align 32
@tw_probe._entry_ptr = internal global ptr @tw_probe._entry, section ".printk_index", align 4
@tw_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 2267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\0143w-xxxx: Failed to set dma mask.\00", [61 x i8] zeroinitializer }, align 32
@tw_probe._entry_ptr.9 = internal global ptr @tw_probe._entry.7, section ".printk_index", align 4
@driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @tw_scsi_queue, ptr null, ptr null, ptr @.str.35, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw_scsi_eh_reset, ptr null, ptr @tw_slave_configure, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr @tw_scsi_biosparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 254, i32 -1, i16 62, i16 0, i32 256, i32 0, i32 0, i32 0, i16 254, i8 0, i32 0, i8 20, i32 0, ptr @tw_host_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@tw_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 2273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\0143w-xxxx: Failed to allocate memory for device extension.\00", [37 x i8] zeroinitializer }, align 32
@tw_probe._entry_ptr.12 = internal global ptr @tw_probe._entry.10, section ".printk_index", align 4
@tw_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 2284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\0143w-xxxx: Failed to initialize device extension.\00", [46 x i8] zeroinitializer }, align 32
@tw_probe._entry_ptr.15 = internal global ptr @tw_probe._entry.13, section ".printk_index", align 4
@tw_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 2292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\0143w-xxxx: Failed to get mem region.\00", [59 x i8] zeroinitializer }, align 32
@tw_probe._entry_ptr.18 = internal global ptr @tw_probe._entry.16, section ".printk_index", align 4
@tw_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 2299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\0143w-xxxx: Failed to get io address.\00", [59 x i8] zeroinitializer }, align 32
@tw_probe._entry_ptr.21 = internal global ptr @tw_probe._entry.19, section ".printk_index", align 4
@tw_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 2322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\0143w-xxxx: scsi add host failed\00", [32 x i8] zeroinitializer }, align 32
@tw_probe._entry_ptr.24 = internal global ptr @tw_probe._entry.22, section ".printk_index", align 4
@tw_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 2328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\0143w-xxxx: scsi%d: Found a 3ware Storage Controller at 0x%x, IRQ: %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@tw_probe._entry_ptr.27 = internal global ptr @tw_probe._entry.25, section ".printk_index", align 4
@tw_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.6, i32 2333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\0143w-xxxx: Error requesting IRQ.\00", [63 x i8] zeroinitializer }, align 32
@tw_probe._entry_ptr.30 = internal global ptr @tw_probe._entry.28, section ".printk_index", align 4
@tw_device_extension_list = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@tw_device_extension_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@twe_major = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"twe\00", [28 x i8] zeroinitializer }, align 32
@tw_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw_chrdev_ioctl, ptr null, ptr null, i32 0, ptr @tw_chrdev_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tw_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.5, ptr @.str.6, i32 2348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\0143w-xxxx: Failed to register character device.\00", [48 x i8] zeroinitializer }, align 32
@tw_probe._entry_ptr.34 = internal global ptr @tw_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"3ware Storage Controller\00", [39 x i8] zeroinitializer }, align 32
@tw_host_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @tw_host_group, ptr null], [24 x i8] zeroinitializer }, align 32
@tw_scsi_queue_lck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.6, i32 1974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\0143w-xxxx: SCSI_IOCTL_SEND_COMMAND deprecated, please update your 3ware tools.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tw_scsi_queue_lck\00", [46 x i8] zeroinitializer }, align 32
@tw_scsi_queue_lck._entry_ptr = internal global ptr @tw_scsi_queue_lck._entry, section ".printk_index", align 4
@tw_scsi_queue_lck._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.6, i32 1977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\0153w-xxxx: scsi%d: Unknown scsi opcode: 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@tw_scsi_queue_lck._entry_ptr.40 = internal global ptr @tw_scsi_queue_lck._entry.38, section ".printk_index", align 4
@tw_scsiop_read_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.6, i32 1710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\0143w-xxxx: tw_scsiop_read_write(): Request buffer NULL.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tw_scsiop_read_write\00", [43 x i8] zeroinitializer }, align 32
@tw_scsiop_read_write._entry_ptr = internal global ptr @tw_scsiop_read_write._entry, section ".printk_index", align 4
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" scsi%d:\00", [23 x i8] zeroinitializer }, align 32
@tw_decode_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.6, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\0143w-xxxx:%s PCI Parity Error: clearing.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tw_decode_bits\00", [17 x i8] zeroinitializer }, align 32
@tw_decode_bits._entry_ptr = internal global ptr @tw_decode_bits._entry, section ".printk_index", align 4
@tw_decode_bits._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.6, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\0143w-xxxx:%s PCI Abort: clearing.\0A\00", [61 x i8] zeroinitializer }, align 32
@tw_decode_bits._entry_ptr.48 = internal global ptr @tw_decode_bits._entry.46, section ".printk_index", align 4
@tw_decode_bits._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.6, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\0143w-xxxx:%s Controller Queue Error: clearing.\0A\00", [48 x i8] zeroinitializer }, align 32
@tw_decode_bits._entry_ptr.51 = internal global ptr @tw_decode_bits._entry.49, section ".printk_index", align 4
@tw_decode_bits._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.6, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\0143w-xxxx:%s SBUF Write Error: clearing.\0A\00", [54 x i8] zeroinitializer }, align 32
@tw_decode_bits._entry_ptr.54 = internal global ptr @tw_decode_bits._entry.52, section ".printk_index", align 4
@tw_decode_bits._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.6, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\0143w-xxxx:%s Microcontroller Error: clearing.\0A\00", [49 x i8] zeroinitializer }, align 32
@tw_decode_bits._entry_ptr.57 = internal global ptr @tw_decode_bits._entry.55, section ".printk_index", align 4
@tw_scsiop_test_unit_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.6, i32 1855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\0143w-xxxx: tw_scsiop_test_unit_ready(): Bad command packet virtual address.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tw_scsiop_test_unit_ready\00", [38 x i8] zeroinitializer }, align 32
@tw_scsiop_test_unit_ready._entry_ptr = internal global ptr @tw_scsiop_test_unit_ready._entry, section ".printk_index", align 4
@tw_scsiop_test_unit_ready._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.6, i32 1868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\0143w-xxxx: tw_scsiop_test_unit_ready(): Bad alignment virtual address.\0A\00", [56 x i8] zeroinitializer }, align 32
@tw_scsiop_test_unit_ready._entry_ptr.62 = internal global ptr @tw_scsiop_test_unit_ready._entry.60, section ".printk_index", align 4
@tw_scsiop_test_unit_ready._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.6, i32 1878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\0143w-xxxx: tw_scsiop_test_unit_ready(): Bad alignment physical address.\0A\00", [55 x i8] zeroinitializer }, align 32
@tw_scsiop_test_unit_ready._entry_ptr.65 = internal global ptr @tw_scsiop_test_unit_ready._entry.63, section ".printk_index", align 4
@tw_scsiop_test_unit_ready._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.6, i32 1886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\0143w-xxxx: tw_scsiop_test_unit_ready(): Bad command packet physical address.\0A\00", [50 x i8] zeroinitializer }, align 32
@tw_scsiop_test_unit_ready._entry_ptr.68 = internal global ptr @tw_scsiop_test_unit_ready._entry.66, section ".printk_index", align 4
@tw_scsiop_inquiry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.6, i32 1410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\0143w-xxxx: tw_scsiop_inquiry(): Bad command packet virtual address.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tw_scsiop_inquiry\00", [46 x i8] zeroinitializer }, align 32
@tw_scsiop_inquiry._entry_ptr = internal global ptr @tw_scsiop_inquiry._entry, section ".printk_index", align 4
@tw_scsiop_inquiry._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.6, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\0143w-xxxx: tw_scsiop_inquiry(): Bad alignment virtual address.\0A\00", [32 x i8] zeroinitializer }, align 32
@tw_scsiop_inquiry._entry_ptr.73 = internal global ptr @tw_scsiop_inquiry._entry.71, section ".printk_index", align 4
@tw_scsiop_inquiry._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.6, i32 1433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\0143w-xxxx: tw_scsiop_inquiry(): Bad alignment physical address.\0A\00", [63 x i8] zeroinitializer }, align 32
@tw_scsiop_inquiry._entry_ptr.76 = internal global ptr @tw_scsiop_inquiry._entry.74, section ".printk_index", align 4
@tw_scsiop_inquiry._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.70, ptr @.str.6, i32 1441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\0143w-xxxx: tw_scsiop_inquiry(): Bad command packet physical address.\0A\00", [58 x i8] zeroinitializer }, align 32
@tw_scsiop_inquiry._entry_ptr.79 = internal global ptr @tw_scsiop_inquiry._entry.77, section ".printk_index", align 4
@tw_scsiop_mode_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.6, i32 1517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\0143w-xxxx: tw_scsiop_mode_sense(): Bad command packet virtual address.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tw_scsiop_mode_sense\00", [43 x i8] zeroinitializer }, align 32
@tw_scsiop_mode_sense._entry_ptr = internal global ptr @tw_scsiop_mode_sense._entry, section ".printk_index", align 4
@tw_scsiop_mode_sense._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.6, i32 1532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\0143w-xxxx: tw_scsiop_mode_sense(): Bad alignment virtual address.\0A\00", [61 x i8] zeroinitializer }, align 32
@tw_scsiop_mode_sense._entry_ptr.84 = internal global ptr @tw_scsiop_mode_sense._entry.82, section ".printk_index", align 4
@tw_scsiop_mode_sense._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.81, ptr @.str.6, i32 1543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\0143w-xxxx: tw_scsiop_mode_sense(): Bad alignment physical address.\0A\00", [60 x i8] zeroinitializer }, align 32
@tw_scsiop_mode_sense._entry_ptr.87 = internal global ptr @tw_scsiop_mode_sense._entry.85, section ".printk_index", align 4
@tw_scsiop_mode_sense._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.81, ptr @.str.6, i32 1551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\0143w-xxxx: tw_scsiop_mode_sense(): Bad command packet physical address.\0A\00", [55 x i8] zeroinitializer }, align 32
@tw_scsiop_mode_sense._entry_ptr.90 = internal global ptr @tw_scsiop_mode_sense._entry.88, section ".printk_index", align 4
@tw_scsiop_synchronize_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.6, i32 1817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\0143w-xxxx: tw_scsiop_synchronize_cache(): Bad command packet virtual address.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tw_scsiop_synchronize_cache\00", [36 x i8] zeroinitializer }, align 32
@tw_scsiop_synchronize_cache._entry_ptr = internal global ptr @tw_scsiop_synchronize_cache._entry, section ".printk_index", align 4
@tw_scsiop_synchronize_cache._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.6, i32 1832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\0143w-xxxx: tw_scsiop_synchronize_cache(): Bad command packet physical address.\0A\00", [48 x i8] zeroinitializer }, align 32
@tw_scsiop_synchronize_cache._entry_ptr.95 = internal global ptr @tw_scsiop_synchronize_cache._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"WARNING: Command (0x%x) timed out, resetting card.\0A\00", [44 x i8] zeroinitializer }, align 32
@tw_scsi_eh_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.6, i32 1387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\0143w-xxxx: scsi%d: Reset failed.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tw_scsi_eh_reset\00", [47 x i8] zeroinitializer }, align 32
@tw_scsi_eh_reset._entry_ptr = internal global ptr @tw_scsi_eh_reset._entry, section ".printk_index", align 4
@tw_reset_device_extension._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.6, i32 1331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\0143w-xxxx: scsi%d: Reset sequence failed.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tw_reset_device_extension\00", [38 x i8] zeroinitializer }, align 32
@tw_reset_device_extension._entry_ptr = internal global ptr @tw_reset_device_extension._entry, section ".printk_index", align 4
@tw_host_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tw_host_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@tw_host_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @tw_host_stats_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@tw_host_stats_attr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tw_show_stats, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [338 x i8], [78 x i8] } { [338 x i8] c"3w-xxxx Driver version: %s\0ACurrent commands posted:   %4d\0AMax commands posted:       %4d\0ACurrent pending commands:  %4d\0AMax pending commands:      %4d\0ALast sgl length:           %4d\0AMax sgl length:            %4d\0ALast sector count:         %4d\0AMax sector count:          %4d\0ASCSI Host Resets:          %4d\0AAEN's:                     %4d\0A\00", [78 x i8] zeroinitializer }, align 32
@tw_initialize_device_extension._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.6, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\0143w-xxxx: Command packet memory allocation failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tw_initialize_device_extension\00", [33 x i8] zeroinitializer }, align 32
@tw_initialize_device_extension._entry_ptr = internal global ptr @tw_initialize_device_extension._entry, section ".printk_index", align 4
@tw_initialize_device_extension._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.6, i32 1268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\0143w-xxxx: Generic memory allocation failed.\0A\00", [50 x i8] zeroinitializer }, align 32
@tw_initialize_device_extension._entry_ptr.108 = internal global ptr @tw_initialize_device_extension._entry.106, section ".printk_index", align 4
@tw_initialize_device_extension.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&tw_dev->ioctl_lock\00", [44 x i8] zeroinitializer }, align 32
@tw_initialize_device_extension.__key.110 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&tw_dev->ioctl_wqueue\00", [42 x i8] zeroinitializer }, align 32
@tw_allocate_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.6, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\0143w-xxxx: dma_alloc_coherent() failed.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tw_allocate_memory\00", [45 x i8] zeroinitializer }, align 32
@tw_allocate_memory._entry_ptr = internal global ptr @tw_allocate_memory._entry, section ".printk_index", align 4
@tw_allocate_memory._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.6, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\0143w-xxxx: Couldn't allocate correctly aligned memory.\0A\00", [40 x i8] zeroinitializer }, align 32
@tw_allocate_memory._entry_ptr.116 = internal global ptr @tw_allocate_memory._entry.114, section ".printk_index", align 4
@tw_allocate_memory._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.6, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\0143w-xxxx: tw_allocate_memory(): case slip in tw_allocate_memory()\0A\00", [60 x i8] zeroinitializer }, align 32
@tw_allocate_memory._entry_ptr.119 = internal global ptr @tw_allocate_memory._entry.117, section ".printk_index", align 4
@tw_reset_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.6, i32 1216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\0143w-xxxx: scsi%d: AEN drain failed, retrying.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tw_reset_sequence\00", [46 x i8] zeroinitializer }, align 32
@tw_reset_sequence._entry_ptr = internal global ptr @tw_reset_sequence._entry, section ".printk_index", align 4
@tw_reset_sequence._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.6, i32 1223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\0143w-xxxx: scsi%d: Controller errors found, retrying.\0A\00", [41 x i8] zeroinitializer }, align 32
@tw_reset_sequence._entry_ptr.124 = internal global ptr @tw_reset_sequence._entry.122, section ".printk_index", align 4
@tw_reset_sequence._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.6, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\0143w-xxxx: scsi%d: Controller errors, card not responding, check all cabling.\0A\00", [49 x i8] zeroinitializer }, align 32
@tw_reset_sequence._entry_ptr.127 = internal global ptr @tw_reset_sequence._entry.125, section ".printk_index", align 4
@tw_reset_sequence._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.121, ptr @.str.6, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\0143w-xxxx: scsi%d: Connection initialization failed.\0A\00", [42 x i8] zeroinitializer }, align 32
@tw_reset_sequence._entry_ptr.130 = internal global ptr @tw_reset_sequence._entry.128, section ".printk_index", align 4
@tw_reset_sequence._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.121, ptr @.str.6, i32 1245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\0143w-xxxx: Unable to set features for card, probable old firmware or card.\0A\00", [52 x i8] zeroinitializer }, align 32
@tw_reset_sequence._entry_ptr.133 = internal global ptr @tw_reset_sequence._entry.131, section ".printk_index", align 4
@tw_aen_drain_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.6, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\0143w-xxxx: tw_aen_drain_queue(): Bad command packet virtual address.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tw_aen_drain_queue\00", [45 x i8] zeroinitializer }, align 32
@tw_aen_drain_queue._entry_ptr = internal global ptr @tw_aen_drain_queue._entry, section ".printk_index", align 4
@tw_aen_drain_queue._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.6, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\0143w-xxxx: tw_aen_drain_queue(): Bad command packet physical address.\0A\00", [57 x i8] zeroinitializer }, align 32
@tw_aen_drain_queue._entry_ptr.138 = internal global ptr @tw_aen_drain_queue._entry.136, section ".printk_index", align 4
@tw_aen_drain_queue._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.6, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\0143w-xxxx: tw_aen_drain_queue(): Bad alignment virtual address.\0A\00", [63 x i8] zeroinitializer }, align 32
@tw_aen_drain_queue._entry_ptr.141 = internal global ptr @tw_aen_drain_queue._entry.139, section ".printk_index", align 4
@tw_aen_drain_queue._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.135, ptr @.str.6, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\0143w-xxxx: tw_aen_drain_queue(): Bad alignment physical address.\0A\00", [62 x i8] zeroinitializer }, align 32
@tw_aen_drain_queue._entry_ptr.144 = internal global ptr @tw_aen_drain_queue._entry.142, section ".printk_index", align 4
@tw_aen_drain_queue._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.135, ptr @.str.6, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\0143w-xxxx: tw_aen_drain_queue(): Unexpected request id.\0A\00", [39 x i8] zeroinitializer }, align 32
@tw_aen_drain_queue._entry_ptr.147 = internal global ptr @tw_aen_drain_queue._entry.145, section ".printk_index", align 4
@tw_aen_drain_queue._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.135, ptr @.str.6, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0143w-xxxx: AEN: %s.\0A\00", [43 x i8] zeroinitializer }, align 32
@tw_aen_drain_queue._entry_ptr.150 = internal global ptr @tw_aen_drain_queue._entry.148, section ".printk_index", align 4
@tw_aen_string = internal constant { [49 x ptr], [60 x i8] } { [49 x ptr] [ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr null, ptr @.str.181, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197], [60 x i8] zeroinitializer }, align 32
@tw_aen_drain_queue._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.135, ptr @.str.6, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\0143w-xxxx: AEN: INFO: AEN queue overflow.\0A\00", [53 x i8] zeroinitializer }, align 32
@tw_aen_drain_queue._entry_ptr.153 = internal global ptr @tw_aen_drain_queue._entry.151, section ".printk_index", align 4
@tw_aen_drain_queue._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.135, ptr @.str.6, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\0143w-xxxx: AEN: %s%d.\0A\00", [41 x i8] zeroinitializer }, align 32
@tw_aen_drain_queue._entry_ptr.156 = internal global ptr @tw_aen_drain_queue._entry.154, section ".printk_index", align 4
@tw_aen_drain_queue._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.135, ptr @.str.6, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tw_aen_drain_queue._entry_ptr.158 = internal global ptr @tw_aen_drain_queue._entry.157, section ".printk_index", align 4
@tw_aen_drain_queue._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.135, ptr @.str.6, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0143w-xxxx: Received AEN %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@tw_aen_drain_queue._entry_ptr.161 = internal global ptr @tw_aen_drain_queue._entry.159, section ".printk_index", align 4
@tw_aen_drain_queue._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.135, ptr @.str.6, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\0143w-xxxx: tw_aen_drain_queue(): Response never received.\0A\00", [37 x i8] zeroinitializer }, align 32
@tw_aen_drain_queue._entry_ptr.164 = internal global ptr @tw_aen_drain_queue._entry.162, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tw_decode_sense._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.6, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\0143w-xxxx: scsi%d: Command failed: status = 0x%x, flags = 0x%x, unit #%d.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tw_decode_sense\00", [16 x i8] zeroinitializer }, align 32
@tw_decode_sense._entry_ptr = internal global ptr @tw_decode_sense._entry, section ".printk_index", align 4
@tw_sense_table = internal constant { [11 x [4 x i8]], [52 x i8] } { [11 x [4 x i8]] [[4 x i8] c"\01\03\13\00", [4 x i8] c"\04\0B\00\00", [4 x i8] c"\10\0B\14\00", [4 x i8] c"@\03\11\00", [4 x i8] c"a\04\00\00", [4 x i8] c"\84\0BG\00", [4 x i8] c"\D0\0B\00\00", [4 x i8] c"\D1\0B\00\00", [4 x i8] c"7\02\04\00", [4 x i8] c"\09\02\04\00", [4 x i8] c"Q\0B\00\00"], [52 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"INFO: AEN queue empty\00", [42 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"INFO: Soft reset occurred\00", [38 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ERROR: Unit degraded: Unit #\00", [35 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ERROR: Controller error\00", [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ERROR: Rebuild failed: Unit #\00", [34 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"INFO: Rebuild complete: Unit #\00", [33 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ERROR: Incomplete unit detected: Unit #\00", [56 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"INFO: Initialization complete: Unit #\00", [58 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"WARNING: Unclean shutdown detected: Unit #\00", [53 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WARNING: ATA port timeout: Port #\00", [62 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ERROR: Drive error: Port #\00", [37 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"INFO: Rebuild started: Unit #\00", [34 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"INFO: Initialization started: Unit #\00", [59 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ERROR: Logical unit deleted: Unit #\00", [60 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"WARNING: SMART threshold exceeded: Port #\00", [54 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"WARNING: ATA UDMA downgrade: Port #\00", [60 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WARNING: ATA UDMA upgrade: Port #\00", [62 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"WARNING: Sector repair occurred: Port #\00", [56 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ERROR: SBUF integrity check failure\00", [60 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ERROR: Lost cached write: Port #\00", [63 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ERROR: Drive ECC error detected: Port #\00", [56 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ERROR: DCB checksum error: Port #\00", [62 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ERROR: DCB unsupported version: Port #\00", [57 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"INFO: Verify started: Unit #\00", [35 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ERROR: Verify failed: Port #\00", [35 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"INFO: Verify complete: Unit #\00", [34 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"WARNING: Overwrote bad sector during rebuild: Port #\00", [43 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ERROR: Encountered bad sector during rebuild: Port #\00", [43 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ERROR: Replacement drive is too small: Port #\00", [50 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"WARNING: Verify error: Unit not previously initialized: Unit #\00", [33 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ERROR: Drive not supported: Port #\00", [61 x i8] zeroinitializer }, align 32
@tw_initconnection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.199, ptr @.str.6, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\0143w-xxxx: tw_initconnection(): Bad command packet virtual address.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tw_initconnection\00", [46 x i8] zeroinitializer }, align 32
@tw_initconnection._entry_ptr = internal global ptr @tw_initconnection._entry, section ".printk_index", align 4
@tw_initconnection._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.199, ptr @.str.6, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\0143w-xxxx: tw_initconnection(): Bad command packet physical address.\0A\00", [58 x i8] zeroinitializer }, align 32
@tw_initconnection._entry_ptr.202 = internal global ptr @tw_initconnection._entry.200, section ".printk_index", align 4
@tw_initconnection._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.199, ptr @.str.6, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\0143w-xxxx: tw_initconnection(): Unexpected request id.\0A\00", [40 x i8] zeroinitializer }, align 32
@tw_initconnection._entry_ptr.205 = internal global ptr @tw_initconnection._entry.203, section ".printk_index", align 4
@tw_setfeature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.6, i32 1146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\0143w-xxxx: tw_setfeature(): Bad command packet virtual address.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tw_setfeature\00", [18 x i8] zeroinitializer }, align 32
@tw_setfeature._entry_ptr = internal global ptr @tw_setfeature._entry, section ".printk_index", align 4
@tw_setfeature._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.207, ptr @.str.6, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\0143w-xxxx: tw_setfeature(): Bad alignment physical address.\0A\00", [35 x i8] zeroinitializer }, align 32
@tw_setfeature._entry_ptr.210 = internal global ptr @tw_setfeature._entry.208, section ".printk_index", align 4
@tw_setfeature._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.207, ptr @.str.6, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\0143w-xxxx: tw_setfeature(): Bad command packet physical address.\0A\00", [62 x i8] zeroinitializer }, align 32
@tw_setfeature._entry_ptr.213 = internal global ptr @tw_setfeature._entry.211, section ".printk_index", align 4
@tw_setfeature._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.207, ptr @.str.6, i32 1190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\0143w-xxxx: tw_setfeature(): Unexpected request id.\0A\00", [44 x i8] zeroinitializer }, align 32
@tw_setfeature._entry_ptr.216 = internal global ptr @tw_setfeature._entry.214, section ".printk_index", align 4
@tw_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.218, ptr @.str.6, i32 2045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\0143w-xxxx: scsi%d: Error reading aen queue.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tw_interrupt\00", [19 x i8] zeroinitializer }, align 32
@tw_interrupt._entry_ptr = internal global ptr @tw_interrupt._entry, section ".printk_index", align 4
@tw_interrupt._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.218, ptr @.str.6, i32 2057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\0143w-xxxx: scsi%d: Found request id that wasn't pending.\0A\00", [38 x i8] zeroinitializer }, align 32
@tw_interrupt._entry_ptr.221 = internal global ptr @tw_interrupt._entry.219, section ".printk_index", align 4
@tw_interrupt._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.218, ptr @.str.6, i32 2100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\0143w-xxxx: scsi%d: Received a request id that wasn't posted.\0A\00", [34 x i8] zeroinitializer }, align 32
@tw_interrupt._entry_ptr.224 = internal global ptr @tw_interrupt._entry.222, section ".printk_index", align 4
@tw_interrupt._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.218, ptr @.str.6, i32 2114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\0143w-xxxx: scsi%d: Error completing aen.\0A\00", [54 x i8] zeroinitializer }, align 32
@tw_interrupt._entry_ptr.227 = internal global ptr @tw_interrupt._entry.225, section ".printk_index", align 4
@tw_interrupt._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.218, ptr @.str.6, i32 2150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\0143w-xxxx: case slip in tw_interrupt()\0A\00", [56 x i8] zeroinitializer }, align 32
@tw_interrupt._entry_ptr.230 = internal global ptr @tw_interrupt._entry.228, section ".printk_index", align 4
@tw_aen_read_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.232, ptr @.str.6, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\0143w-xxxx: tw_aen_read_queue(): Bad command packet virtual address.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tw_aen_read_queue\00", [46 x i8] zeroinitializer }, align 32
@tw_aen_read_queue._entry_ptr = internal global ptr @tw_aen_read_queue._entry, section ".printk_index", align 4
@tw_aen_read_queue._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.232, ptr @.str.6, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\0143w-xxxx: tw_aen_read_queue(): Bad command packet physical address.\0A\00", [58 x i8] zeroinitializer }, align 32
@tw_aen_read_queue._entry_ptr.235 = internal global ptr @tw_aen_read_queue._entry.233, section ".printk_index", align 4
@tw_aen_read_queue._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.232, ptr @.str.6, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\0143w-xxxx: tw_aen_read_queue(): Bad alignment virtual address.\0A\00", [32 x i8] zeroinitializer }, align 32
@tw_aen_read_queue._entry_ptr.238 = internal global ptr @tw_aen_read_queue._entry.236, section ".printk_index", align 4
@tw_aen_read_queue._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.232, ptr @.str.6, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\0143w-xxxx: tw_aen_read_queue(): Bad alignment physical address.\0A\00", [63 x i8] zeroinitializer }, align 32
@tw_aen_read_queue._entry_ptr.241 = internal global ptr @tw_aen_read_queue._entry.239, section ".printk_index", align 4
@tw_aen_read_queue._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.232, ptr @.str.6, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\0143w-xxxx: tw_aen_read_queue(): Post failed, will retry.\0A\00", [38 x i8] zeroinitializer }, align 32
@tw_aen_read_queue._entry_ptr.244 = internal global ptr @tw_aen_read_queue._entry.242, section ".printk_index", align 4
@tw_aen_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.246, ptr @.str.6, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\0143w-xxxx: tw_aen_complete(): Bad alignment virtual address.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tw_aen_complete\00", [16 x i8] zeroinitializer }, align 32
@tw_aen_complete._entry_ptr = internal global ptr @tw_aen_complete._entry, section ".printk_index", align 4
@tw_aen_complete._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.246, ptr @.str.6, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\0143w-xxxx: scsi%d: AEN: INFO: AEN queue overflow.\0A\00", [45 x i8] zeroinitializer }, align 32
@tw_aen_complete._entry_ptr.249 = internal global ptr @tw_aen_complete._entry.247, section ".printk_index", align 4
@tw_aen_complete._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.246, ptr @.str.6, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0143w-xxxx: scsi%d: AEN: %s%d.\0A\00", [33 x i8] zeroinitializer }, align 32
@tw_aen_complete._entry_ptr.252 = internal global ptr @tw_aen_complete._entry.250, section ".printk_index", align 4
@tw_aen_complete._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.246, ptr @.str.6, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0143w-xxxx: scsi%d: AEN: %s.\0A\00", [35 x i8] zeroinitializer }, align 32
@tw_aen_complete._entry_ptr.255 = internal global ptr @tw_aen_complete._entry.253, section ".printk_index", align 4
@tw_aen_complete._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.257, ptr @.str.246, ptr @.str.6, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\0143w-xxxx: scsi%d: Received AEN %d.\0A\00", [59 x i8] zeroinitializer }, align 32
@tw_aen_complete._entry_ptr.258 = internal global ptr @tw_aen_complete._entry.256, section ".printk_index", align 4
@tw_aen_complete._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.246, ptr @.str.6, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\0143w-xxxx: scsi%d: Error completing AEN.\0A\00", [54 x i8] zeroinitializer }, align 32
@tw_aen_complete._entry_ptr.261 = internal global ptr @tw_aen_complete._entry.259, section ".printk_index", align 4
@tw_scsiop_test_unit_ready_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.263, ptr @.str.6, i32 1906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\0143w-xxxx: tw_scsiop_test_unit_ready_complete(): Bad alignment virtual address.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tw_scsiop_test_unit_ready_complete\00", [61 x i8] zeroinitializer }, align 32
@tw_scsiop_test_unit_ready_complete._entry_ptr = internal global ptr @tw_scsiop_test_unit_ready_complete._entry, section ".printk_index", align 4
@.str.265 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Logical Disk %-2d \00", [45 x i8] zeroinitializer }, align 32
@tw_scsiop_inquiry_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.267, ptr @.str.6, i32 1479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\0143w-xxxx: tw_scsiop_inquiry_complete(): Bad alignment virtual address.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tw_scsiop_inquiry_complete\00", [37 x i8] zeroinitializer }, align 32
@tw_scsiop_inquiry_complete._entry_ptr = internal global ptr @tw_scsiop_inquiry_complete._entry, section ".printk_index", align 4
@tw_scsiop_read_capacity_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.269, ptr @.str.6, i32 1664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\0143w-xxxx: tw_scsiop_read_capacity_complete(): Bad alignment virtual address.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tw_scsiop_read_capacity_complete\00", [63 x i8] zeroinitializer }, align 32
@tw_scsiop_read_capacity_complete._entry_ptr = internal global ptr @tw_scsiop_read_capacity_complete._entry, section ".printk_index", align 4
@tw_scsiop_mode_sense_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.271, ptr @.str.6, i32 1572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\0143w-xxxx: tw_scsiop_mode_sense_complete(): Bad alignment virtual address.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tw_scsiop_mode_sense_complete\00", [34 x i8] zeroinitializer }, align 32
@tw_scsiop_mode_sense_complete._entry_ptr = internal global ptr @tw_scsiop_mode_sense_complete._entry, section ".printk_index", align 4
@tw_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.277, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tw_mutex, i64 52), ptr getelementptr (i8, ptr @tw_mutex, i64 52) }, ptr @tw_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.278, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@tw_chrdev_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.273, ptr @.str.6, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\0143w-xxxx: scsi%d: Character ioctl (0x%x) timed out, resetting card.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tw_chrdev_ioctl\00", [16 x i8] zeroinitializer }, align 32
@tw_chrdev_ioctl._entry_ptr = internal global ptr @tw_chrdev_ioctl._entry, section ".printk_index", align 4
@tw_chrdev_ioctl._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.273, ptr @.str.6, i32 999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\0143w-xxxx: tw_chrdev_ioctl(): Reset failed for card %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@tw_chrdev_ioctl._entry_ptr.276 = internal global ptr @tw_chrdev_ioctl._entry.274, section ".printk_index", align 4
@.str.277 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tw_mutex.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tw_mutex\00", [23 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.279 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__tw_shutdown._entry = internal constant %struct.pi_entry { ptr @.str.282, ptr @.str.283, ptr @.str.6, i32 2201, ptr null, ptr null }, align 1
@.str.282 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\0143w-xxxx: Shutting down host %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__tw_shutdown\00", [18 x i8] zeroinitializer }, align 32
@__tw_shutdown._entry_ptr = internal global ptr @__tw_shutdown._entry, section ".printk_index", align 4
@__tw_shutdown._entry.284 = internal constant %struct.pi_entry { ptr @.str.285, ptr @.str.283, ptr @.str.6, i32 2205, ptr null, ptr null }, align 1
@.str.285 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\0143w-xxxx: Connection shutdown failed.\0A\00", [56 x i8] zeroinitializer }, align 32
@__tw_shutdown._entry_ptr.286 = internal global ptr @__tw_shutdown._entry.284, section ".printk_index", align 4
@__tw_shutdown._entry.287 = internal constant %struct.pi_entry { ptr @.str.288, ptr @.str.283, ptr @.str.6, i32 2207, ptr null, ptr null }, align 1
@.str.288 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0143w-xxxx: Shutdown complete.\0A\00", [33 x i8] zeroinitializer }, align 32
@__tw_shutdown._entry_ptr.289 = internal global ptr @__tw_shutdown._entry.287, section ".printk_index", align 4
@tw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.290, ptr @.str.291, ptr @.str.6, i32 2415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\0143ware Storage Controller device driver for Linux v%s.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tw_init\00", [24 x i8] zeroinitializer }, align 32
@tw_init._entry_ptr = internal global ptr @tw_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.292 = internal global [4 x i64] [i64 2, i64 8, i64 199, i64 203]
@__sancov_gen_cov_switch_values.293 = internal global [13 x i64] [i64 11, i64 8, i64 1, i64 4, i64 9, i64 16, i64 55, i64 64, i64 81, i64 97, i64 132, i64 208, i64 209]
@__sancov_gen_cov_switch_values.294 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 8, i64 10, i64 18, i64 26, i64 37, i64 40, i64 42, i64 53]
@__sancov_gen_cov_switch_values.295 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.296 = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 3, i64 8, i64 10, i64 18, i64 26, i64 37, i64 40, i64 42, i64 53, i64 128]
@__sancov_gen_cov_switch_values.297 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 10]
@__sancov_gen_cov_switch_values.298 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 16, i64 32]
@__sancov_gen_cov_switch_values.299 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 28, i64 31]
@__sancov_gen_cov_switch_values.300 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 232, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant [10 x i8] c"tw_driver\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2404, i32 26 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2405, i32 11 }
@___asan_gen_.316 = private unnamed_addr constant [11 x i8] c"tw_pci_tbl\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2394, i32 29 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2259, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2267, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant [16 x i8] c"driver_template\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2232, i32 34 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2273, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2284, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2292, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2299, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2322, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2328, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2333, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant [25 x i8] c"tw_device_extension_list\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 224, i32 29 }
@___asan_gen_.385 = private unnamed_addr constant [26 x i8] c"tw_device_extension_count\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 225, i32 12 }
@___asan_gen_.388 = private unnamed_addr constant [10 x i8] c"twe_major\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 226, i32 12 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2347, i32 40 }
@___asan_gen_.394 = private unnamed_addr constant [8 x i8] c"tw_fops\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1051, i32 37 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2348, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2234, i32 12 }
@___asan_gen_.406 = private unnamed_addr constant [15 x i8] c"tw_host_groups\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1974, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1977, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1710, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 262, i32 17 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 267, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 272, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 278, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 283, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 289, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1855, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1868, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1878, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1886, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1410, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1423, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1433, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1441, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1517, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1532, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1543, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1551, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1817, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1832, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1378, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1387, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1331, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant [14 x i8] c"tw_host_group\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 540, i32 1 }
@___asan_gen_.592 = private unnamed_addr constant [14 x i8] c"tw_host_attrs\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 535, i32 26 }
@___asan_gen_.595 = private unnamed_addr constant [19 x i8] c"tw_host_stats_attr\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 526, i32 32 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 528, i32 12 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 499, i32 33 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1261, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1268, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1281, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1282, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 842, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 847, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 866, i32 4 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1216, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1223, i32 4 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1233, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1239, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1245, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 701, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 714, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 720, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 730, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 748, i32 5 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 780, i32 7 }
@___asan_gen_.724 = private unnamed_addr constant [14 x i8] c"tw_aen_string\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 61, i32 14 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 787, i32 7 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 792, i32 9 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 794, i32 9 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 797, i32 8 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 822, i32 4 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 409, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant [15 x i8] c"tw_sense_table\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 99, i32 22 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 62, i32 12 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 63, i32 12 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 64, i32 12 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 65, i32 12 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 66, i32 12 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 67, i32 12 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 68, i32 12 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 69, i32 12 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 70, i32 12 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 71, i32 12 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 72, i32 12 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 73, i32 12 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 74, i32 12 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 75, i32 12 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 76, i32 12 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 77, i32 12 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 78, i32 12 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 79, i32 12 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 80, i32 12 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 81, i32 12 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 82, i32 12 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 83, i32 12 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 84, i32 12 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 85, i32 12 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 86, i32 12 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 87, i32 12 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 88, i32 12 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 89, i32 12 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 90, i32 12 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 91, i32 12 }
@___asan_gen_.857 = private unnamed_addr constant [26 x i8] c"../drivers/scsi/3w-xxxx.h\00", align 1
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.857, i32 92, i32 12 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1091, i32 3 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1107, i32 3 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1121, i32 4 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1146, i32 3 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1161, i32 3 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1176, i32 3 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1190, i32 4 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2045, i32 4 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2057, i32 5 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2100, i32 6 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2114, i32 7 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2150, i32 6 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 560, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 573, i32 3 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 578, i32 3 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 588, i32 3 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 601, i32 3 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 617, i32 3 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 626, i32 3 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 631, i32 5 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 634, i32 6 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 637, i32 4 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 660, i32 4 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1906, i32 3 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1472, i32 31 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1479, i32 3 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1664, i32 3 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 1572, i32 3 }
@___asan_gen_.1051 = private unnamed_addr constant [9 x i8] c"tw_mutex\00", align 1
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 996, i32 5 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 999, i32 6 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 223, i32 8 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1079, i32 230, i32 6 }
@___asan_gen_.1079 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1079, i32 214, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1082, i32 156, i32 2 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2201, i32 2 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2205, i32 3 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2207, i32 3 }
@___asan_gen_.1096 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1103 = private constant [26 x i8] c"../drivers/scsi/3w-xxxx.c\00", align 1
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1103, i32 2415, i32 2 }
@llvm.compiler.used = appending global [369 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__UNIQUE_ID_version291, ptr @__exitcall_tw_exit, ptr @__initcall__kmod_3w_xxxx__292_2426_tw_init6, ptr @__modver_attr, ptr @__tw_shutdown._entry, ptr @__tw_shutdown._entry.284, ptr @__tw_shutdown._entry.287, ptr @__tw_shutdown._entry_ptr, ptr @__tw_shutdown._entry_ptr.286, ptr @__tw_shutdown._entry_ptr.289, ptr @tw_aen_complete._entry, ptr @tw_aen_complete._entry.247, ptr @tw_aen_complete._entry.250, ptr @tw_aen_complete._entry.253, ptr @tw_aen_complete._entry.256, ptr @tw_aen_complete._entry.259, ptr @tw_aen_complete._entry_ptr, ptr @tw_aen_complete._entry_ptr.249, ptr @tw_aen_complete._entry_ptr.252, ptr @tw_aen_complete._entry_ptr.255, ptr @tw_aen_complete._entry_ptr.258, ptr @tw_aen_complete._entry_ptr.261, ptr @tw_aen_drain_queue._entry, ptr @tw_aen_drain_queue._entry.136, ptr @tw_aen_drain_queue._entry.139, ptr @tw_aen_drain_queue._entry.142, ptr @tw_aen_drain_queue._entry.145, ptr @tw_aen_drain_queue._entry.148, ptr @tw_aen_drain_queue._entry.151, ptr @tw_aen_drain_queue._entry.154, ptr @tw_aen_drain_queue._entry.157, ptr @tw_aen_drain_queue._entry.159, ptr @tw_aen_drain_queue._entry.162, ptr @tw_aen_drain_queue._entry_ptr, ptr @tw_aen_drain_queue._entry_ptr.138, ptr @tw_aen_drain_queue._entry_ptr.141, ptr @tw_aen_drain_queue._entry_ptr.144, ptr @tw_aen_drain_queue._entry_ptr.147, ptr @tw_aen_drain_queue._entry_ptr.150, ptr @tw_aen_drain_queue._entry_ptr.153, ptr @tw_aen_drain_queue._entry_ptr.156, ptr @tw_aen_drain_queue._entry_ptr.158, ptr @tw_aen_drain_queue._entry_ptr.161, ptr @tw_aen_drain_queue._entry_ptr.164, ptr @tw_aen_read_queue._entry, ptr @tw_aen_read_queue._entry.233, ptr @tw_aen_read_queue._entry.236, ptr @tw_aen_read_queue._entry.239, ptr @tw_aen_read_queue._entry.242, ptr @tw_aen_read_queue._entry_ptr, ptr @tw_aen_read_queue._entry_ptr.235, ptr @tw_aen_read_queue._entry_ptr.238, ptr @tw_aen_read_queue._entry_ptr.241, ptr @tw_aen_read_queue._entry_ptr.244, ptr @tw_allocate_memory._entry, ptr @tw_allocate_memory._entry.114, ptr @tw_allocate_memory._entry.117, ptr @tw_allocate_memory._entry_ptr, ptr @tw_allocate_memory._entry_ptr.116, ptr @tw_allocate_memory._entry_ptr.119, ptr @tw_chrdev_ioctl._entry, ptr @tw_chrdev_ioctl._entry.274, ptr @tw_chrdev_ioctl._entry_ptr, ptr @tw_chrdev_ioctl._entry_ptr.276, ptr @tw_decode_bits._entry, ptr @tw_decode_bits._entry.46, ptr @tw_decode_bits._entry.49, ptr @tw_decode_bits._entry.52, ptr @tw_decode_bits._entry.55, ptr @tw_decode_bits._entry_ptr, ptr @tw_decode_bits._entry_ptr.48, ptr @tw_decode_bits._entry_ptr.51, ptr @tw_decode_bits._entry_ptr.54, ptr @tw_decode_bits._entry_ptr.57, ptr @tw_decode_sense._entry, ptr @tw_decode_sense._entry_ptr, ptr @tw_exit, ptr @tw_init._entry, ptr @tw_init._entry_ptr, ptr @tw_initconnection._entry, ptr @tw_initconnection._entry.200, ptr @tw_initconnection._entry.203, ptr @tw_initconnection._entry_ptr, ptr @tw_initconnection._entry_ptr.202, ptr @tw_initconnection._entry_ptr.205, ptr @tw_initialize_device_extension._entry, ptr @tw_initialize_device_extension._entry.106, ptr @tw_initialize_device_extension._entry_ptr, ptr @tw_initialize_device_extension._entry_ptr.108, ptr @tw_interrupt._entry, ptr @tw_interrupt._entry.219, ptr @tw_interrupt._entry.222, ptr @tw_interrupt._entry.225, ptr @tw_interrupt._entry.228, ptr @tw_interrupt._entry_ptr, ptr @tw_interrupt._entry_ptr.221, ptr @tw_interrupt._entry_ptr.224, ptr @tw_interrupt._entry_ptr.227, ptr @tw_interrupt._entry_ptr.230, ptr @tw_probe._entry, ptr @tw_probe._entry.10, ptr @tw_probe._entry.13, ptr @tw_probe._entry.16, ptr @tw_probe._entry.19, ptr @tw_probe._entry.22, ptr @tw_probe._entry.25, ptr @tw_probe._entry.28, ptr @tw_probe._entry.32, ptr @tw_probe._entry.7, ptr @tw_probe._entry_ptr, ptr @tw_probe._entry_ptr.12, ptr @tw_probe._entry_ptr.15, ptr @tw_probe._entry_ptr.18, ptr @tw_probe._entry_ptr.21, ptr @tw_probe._entry_ptr.24, ptr @tw_probe._entry_ptr.27, ptr @tw_probe._entry_ptr.30, ptr @tw_probe._entry_ptr.34, ptr @tw_probe._entry_ptr.9, ptr @tw_reset_device_extension._entry, ptr @tw_reset_device_extension._entry_ptr, ptr @tw_reset_sequence._entry, ptr @tw_reset_sequence._entry.122, ptr @tw_reset_sequence._entry.125, ptr @tw_reset_sequence._entry.128, ptr @tw_reset_sequence._entry.131, ptr @tw_reset_sequence._entry_ptr, ptr @tw_reset_sequence._entry_ptr.124, ptr @tw_reset_sequence._entry_ptr.127, ptr @tw_reset_sequence._entry_ptr.130, ptr @tw_reset_sequence._entry_ptr.133, ptr @tw_scsi_eh_reset._entry, ptr @tw_scsi_eh_reset._entry_ptr, ptr @tw_scsi_queue_lck._entry, ptr @tw_scsi_queue_lck._entry.38, ptr @tw_scsi_queue_lck._entry_ptr, ptr @tw_scsi_queue_lck._entry_ptr.40, ptr @tw_scsiop_inquiry._entry, ptr @tw_scsiop_inquiry._entry.71, ptr @tw_scsiop_inquiry._entry.74, ptr @tw_scsiop_inquiry._entry.77, ptr @tw_scsiop_inquiry._entry_ptr, ptr @tw_scsiop_inquiry._entry_ptr.73, ptr @tw_scsiop_inquiry._entry_ptr.76, ptr @tw_scsiop_inquiry._entry_ptr.79, ptr @tw_scsiop_inquiry_complete._entry, ptr @tw_scsiop_inquiry_complete._entry_ptr, ptr @tw_scsiop_mode_sense._entry, ptr @tw_scsiop_mode_sense._entry.82, ptr @tw_scsiop_mode_sense._entry.85, ptr @tw_scsiop_mode_sense._entry.88, ptr @tw_scsiop_mode_sense._entry_ptr, ptr @tw_scsiop_mode_sense._entry_ptr.84, ptr @tw_scsiop_mode_sense._entry_ptr.87, ptr @tw_scsiop_mode_sense._entry_ptr.90, ptr @tw_scsiop_mode_sense_complete._entry, ptr @tw_scsiop_mode_sense_complete._entry_ptr, ptr @tw_scsiop_read_capacity_complete._entry, ptr @tw_scsiop_read_capacity_complete._entry_ptr, ptr @tw_scsiop_read_write._entry, ptr @tw_scsiop_read_write._entry_ptr, ptr @tw_scsiop_synchronize_cache._entry, ptr @tw_scsiop_synchronize_cache._entry.93, ptr @tw_scsiop_synchronize_cache._entry_ptr, ptr @tw_scsiop_synchronize_cache._entry_ptr.95, ptr @tw_scsiop_test_unit_ready._entry, ptr @tw_scsiop_test_unit_ready._entry.60, ptr @tw_scsiop_test_unit_ready._entry.63, ptr @tw_scsiop_test_unit_ready._entry.66, ptr @tw_scsiop_test_unit_ready._entry_ptr, ptr @tw_scsiop_test_unit_ready._entry_ptr.62, ptr @tw_scsiop_test_unit_ready._entry_ptr.65, ptr @tw_scsiop_test_unit_ready._entry_ptr.68, ptr @tw_scsiop_test_unit_ready_complete._entry, ptr @tw_scsiop_test_unit_ready_complete._entry_ptr, ptr @tw_setfeature._entry, ptr @tw_setfeature._entry.208, ptr @tw_setfeature._entry.211, ptr @tw_setfeature._entry.214, ptr @tw_setfeature._entry_ptr, ptr @tw_setfeature._entry_ptr.210, ptr @tw_setfeature._entry_ptr.213, ptr @tw_setfeature._entry_ptr.216, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tw_driver, ptr @.str.3, ptr @tw_pci_tbl, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @driver_template, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @tw_device_extension_list, ptr @tw_device_extension_count, ptr @twe_major, ptr @.str.31, ptr @tw_fops, ptr @.str.33, ptr @.str.35, ptr @tw_host_groups, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @tw_host_group, ptr @tw_host_attrs, ptr @tw_host_stats_attr, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @tw_initialize_device_extension.__key, ptr @.str.109, ptr @tw_initialize_device_extension.__key.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @tw_aen_string, ptr @.str.152, ptr @.str.155, ptr @.str.160, ptr @.str.163, ptr @.str.165, ptr @.str.166, ptr @tw_sense_table, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @.str.204, ptr @.str.206, ptr @.str.207, ptr @.str.209, ptr @.str.212, ptr @.str.215, ptr @.str.217, ptr @.str.218, ptr @.str.220, ptr @.str.223, ptr @.str.226, ptr @.str.229, ptr @.str.231, ptr @.str.232, ptr @.str.234, ptr @.str.237, ptr @.str.240, ptr @.str.243, ptr @.str.245, ptr @.str.246, ptr @.str.248, ptr @.str.251, ptr @.str.254, ptr @.str.257, ptr @.str.260, ptr @.str.262, ptr @.str.263, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @tw_mutex, ptr @.str.272, ptr @.str.273, ptr @.str.275, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.285, ptr @.str.288, ptr @.str.290, ptr @.str.291], section "llvm.metadata"
@0 = internal global [268 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_device_extension_list to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_device_extension_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twe_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_host_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsi_queue_lck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsi_queue_lck._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_read_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_decode_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_decode_bits._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_decode_bits._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_decode_bits._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_decode_bits._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_test_unit_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_test_unit_ready._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_test_unit_ready._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_test_unit_ready._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_inquiry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_inquiry._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_inquiry._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_inquiry._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_mode_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_mode_sense._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_mode_sense._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_mode_sense._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_synchronize_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_synchronize_cache._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsi_eh_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_reset_device_extension._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_host_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_host_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_host_stats_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 338, i32 416, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_initialize_device_extension._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_initialize_device_extension._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_initialize_device_extension.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_initialize_device_extension.__key.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_allocate_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_allocate_memory._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_allocate_memory._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_reset_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_reset_sequence._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_reset_sequence._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_reset_sequence._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_reset_sequence._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_drain_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_drain_queue._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_drain_queue._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_drain_queue._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_drain_queue._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_drain_queue._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_string to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_drain_queue._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_drain_queue._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_drain_queue._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_drain_queue._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_drain_queue._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_decode_sense._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_sense_table to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_initconnection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_initconnection._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_initconnection._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_setfeature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_setfeature._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_setfeature._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_setfeature._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_interrupt._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_interrupt._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_interrupt._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_interrupt._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_read_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_read_queue._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_read_queue._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_read_queue._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_read_queue._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_complete._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_complete._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_complete._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_complete._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_aen_complete._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_test_unit_ready_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_inquiry_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_read_capacity_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_scsiop_mode_sense_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_chrdev_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_chrdev_ioctl._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tw_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @tw_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tw_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.290, ptr noundef nonnull @.str.2) #13
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @tw_driver, ptr noundef null, ptr noundef nonnull @.str.1) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw_probe(ptr noundef %pdev, ptr nocapture noundef readnone %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %out_disable_device

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %out_disable_device

if.end11:                                         ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  %call12 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @driver_template, i32 noundef 7452) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #13
  br label %out_disable_device

if.end20:                                         ; preds = %if.end11
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 0, i32 53
  %host21 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 3, i32 50, i32 11, i32 2
  %0 = ptrtoint ptr %host21 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call12, ptr %host21, align 4
  %tw_pci_dev = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 50, i32 9, i32 1, i32 4, i32 3
  %1 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %tw_pci_dev, align 4
  %call.i144 = tail call fastcc i32 @tw_allocate_memory(ptr noundef %hostdata, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool.not.i = icmp eq i32 %call.i144, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.do.end27_crit_edge

if.end20.do.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

if.end.i:                                         ; preds = %if.end20
  %call5.i = tail call fastcc i32 @tw_allocate_memory(ptr noundef %hostdata, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.do.end27_crit_edge

if.end.i.do.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.035.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.035.i to i8
  %arrayidx.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 8, i32 %i.035.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %arrayidx14.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 14, i32 %i.035.i
  %3 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %arrayidx14.i, align 4
  %inc.i = add nuw nsw i32 %i.035.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %if.end30, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end27:                                         ; preds = %if.end.i.do.end27_crit_edge, %if.end20.do.end27_crit_edge
  %.str.104.sink = phi ptr [ @.str.104, %if.end20.do.end27_crit_edge ], [ @.str.107, %if.end.i.do.end27_crit_edge ]
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.104.sink) #13
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %out_free_device_extension

if.end30:                                         ; preds = %for.body.i
  %pending_head.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 12
  %4 = ptrtoint ptr %pending_head.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pending_head.i, align 2
  %pending_tail.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata, i32 0, i32 13
  %5 = ptrtoint ptr %pending_tail.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %pending_tail.i, align 1
  %chrdev_request_id.i = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 4, i32 3, i32 0, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %chrdev_request_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 -1, ptr %chrdev_request_id.i, align 4
  %ioctl_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 3, i32 50, i32 11, i32 2, i32 1
  tail call void @__mutex_init(ptr noundef %ioctl_lock.i, ptr noundef nonnull @.str.109, ptr noundef nonnull @tw_initialize_device_extension.__key) #10
  %ioctl_wqueue.i = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 4, i32 3, i32 0, i32 0, i32 4, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %ioctl_wqueue.i, ptr noundef nonnull @.str.111, ptr noundef nonnull @tw_initialize_device_extension.__key.110) #10
  %call31 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %out_free_device_extension

if.end39:                                         ; preds = %if.end30
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 8
  %9 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %hostdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool41.not = icmp eq i32 %8, 0
  br i1 %tobool41.not, label %do.end45, label %do.body49

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #13
  br label %out_release_mem_region

do.body49:                                        ; preds = %if.end39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !533
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hostdata, align 4
  %and = and i32 %11, 1048575
  %add = or i32 %and, -18874368
  %12 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 1073741824) #10, !srcloc !534
  %call54 = tail call fastcc i32 @tw_reset_sequence(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %do.body49.out_release_mem_region_crit_edge

do.body49.out_release_mem_region_crit_edge:       ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_release_mem_region

if.end57:                                         ; preds = %do.body49
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 0, i32 21
  %13 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16, ptr %max_id, align 4
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 0, i32 24
  %14 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 16, ptr %max_cmd_len, align 4
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 0, i32 22
  %15 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %max_lun, align 8
  %max_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 0, i32 20
  %16 = ptrtoint ptr %max_channel to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %max_channel, align 8
  %call.i145 = tail call i32 @scsi_add_host_with_dma(ptr noundef %call12, ptr noundef %dev, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool60.not = icmp eq i32 %call.i145, 0
  br i1 %tobool60.not, label %if.end67, label %do.end64

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #13
  br label %out_release_mem_region

if.end67:                                         ; preds = %if.end57
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call12, ptr %driver_data.i.i, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 0, i32 17
  %18 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %host_no, align 4
  %20 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hostdata, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %19, i32 noundef %21, i32 noundef %23) #13
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %call.i146 = tail call i32 @request_threaded_irq(i32 noundef %25, ptr noundef nonnull @tw_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %hostdata) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool76.not = icmp eq i32 %call.i146, 0
  br i1 %tobool76.not, label %if.end83, label %do.end80

do.end80:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #13
  tail call void @scsi_remove_host(ptr noundef nonnull %call12) #10
  br label %out_release_mem_region

if.end83:                                         ; preds = %if.end67
  %26 = load i32, ptr @tw_device_extension_count, align 4
  %arrayidx84 = getelementptr [32 x ptr], ptr @tw_device_extension_list, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hostdata, ptr %arrayidx84, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr @tw_device_extension_count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !535
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hostdata, align 4
  %and89 = and i32 %29, 1048575
  %add90 = or i32 %and89, -18874368
  %30 = inttoptr i32 %add90 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 -2143288320) #10, !srcloc !534
  tail call void @scsi_scan_host(ptr noundef nonnull %call12) #10
  %31 = load i32, ptr @twe_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp = icmp eq i32 %31, -1
  br i1 %cmp, label %if.then92, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then92:                                        ; preds = %if.end83
  %call.i147 = tail call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.31, ptr noundef nonnull @tw_fops) #10
  store i32 %call.i147, ptr @twe_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp94 = icmp slt i32 %call.i147, 0
  br i1 %cmp94, label %do.end98, label %if.then92.cleanup_crit_edge

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end98:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #13
  br label %cleanup

out_release_mem_region:                           ; preds = %do.end80, %do.end64, %do.body49.out_release_mem_region_crit_edge, %do.end45
  %retval1.0 = phi i32 [ 0, %do.body49.out_release_mem_region_crit_edge ], [ %call.i145, %do.end64 ], [ %call.i146, %do.end80 ], [ -12, %do.end45 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #10
  br label %out_free_device_extension

out_free_device_extension:                        ; preds = %out_release_mem_region, %do.end36, %do.end27
  %retval1.1 = phi i32 [ -12, %do.end27 ], [ %call31, %do.end36 ], [ %retval1.0, %out_release_mem_region ]
  %command_packet_virtual_address.i = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 50, i32 12, i32 10, i32 3, i32 6
  %32 = ptrtoint ptr %command_packet_virtual_address.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %command_packet_virtual_address.i, align 4
  %tobool.not.i148 = icmp eq ptr %33, null
  br i1 %tobool.not.i148, label %out_free_device_extension.if.end.i150_crit_edge, label %if.then.i149

out_free_device_extension.if.end.i150_crit_edge:  ; preds = %out_free_device_extension
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i150

if.then.i149:                                     ; preds = %out_free_device_extension
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tw_pci_dev, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %command_packet_physical_address.i = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 0, i32 7, i32 1, i32 4, i32 2
  %36 = ptrtoint ptr %command_packet_physical_address.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %command_packet_physical_address.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 131072, ptr noundef nonnull %33, i32 noundef %37, i32 noundef 0) #10
  br label %if.end.i150

if.end.i150:                                      ; preds = %if.then.i149, %out_free_device_extension.if.end.i150_crit_edge
  %alignment_virtual_address.i = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %alignment_virtual_address.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %alignment_virtual_address.i, align 4
  %tobool5.not.i = icmp eq ptr %39, null
  br i1 %tobool5.not.i, label %if.end.i150.tw_free_device_extension.exit_crit_edge, label %if.then6.i

if.end.i150.tw_free_device_extension.exit_crit_edge: ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw_free_device_extension.exit

if.then6.i:                                       ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tw_pci_dev, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %alignment_physical_address.i = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 49, i32 12, i32 4, i32 1
  %42 = ptrtoint ptr %alignment_physical_address.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %alignment_physical_address.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev8.i, i32 noundef 131072, ptr noundef nonnull %39, i32 noundef %43, i32 noundef 0) #10
  br label %tw_free_device_extension.exit

tw_free_device_extension.exit:                    ; preds = %if.then6.i, %if.end.i150.tw_free_device_extension.exit_crit_edge
  tail call void @scsi_host_put(ptr noundef nonnull %call12) #10
  br label %out_disable_device

out_disable_device:                               ; preds = %tw_free_device_extension.exit, %do.end17, %do.end8, %do.end
  %retval1.2 = phi i32 [ %call, %do.end ], [ %call.i, %do.end8 ], [ %retval1.1, %tw_free_device_extension.exit ], [ -12, %do.end17 ]
  tail call void @pci_disable_device(ptr noundef %pdev) #10
  br label %cleanup

cleanup:                                          ; preds = %out_disable_device, %do.end98, %if.then92.cleanup_crit_edge, %if.end83.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.2, %out_disable_device ], [ 0, %if.then92.cleanup_crit_edge ], [ 0, %do.end98 ], [ 0, %if.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %host1 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 50, i32 11, i32 2
  %2 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host1, align 4
  tail call void @scsi_remove_host(ptr noundef %3) #10
  %4 = load i32, ptr @twe_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp sgt i32 %4, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__unregister_chrdev(i32 noundef %4, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.31) #10
  store i32 -1, ptr @twe_major, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !536
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hostdata, align 4
  %and.i = and i32 %6, 1048575
  %add.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 1073741824) #10, !srcloc !534
  %tw_pci_dev.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 50, i32 9, i32 1, i32 4, i32 3
  %8 = ptrtoint ptr %tw_pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tw_pci_dev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 46
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  %call1.i = tail call ptr @free_irq(i32 noundef %11, ptr noundef %hostdata) #10
  %12 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host1, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_no.i, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, i32 noundef %15) #13
  %call5.i = tail call fastcc i32 @tw_initconnection(ptr noundef %hostdata, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  %.str.288..str.285.i = select i1 %tobool.not.i, ptr @.str.288, ptr @.str.285
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.288..str.285.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !537
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hostdata, align 4
  %and17.i = and i32 %17, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %18 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 -2143288320) #10, !srcloc !534
  tail call void @pci_release_regions(ptr noundef %pdev) #10
  %command_packet_virtual_address.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 50, i32 12, i32 10, i32 3, i32 6
  %19 = ptrtoint ptr %command_packet_virtual_address.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %command_packet_virtual_address.i, align 4
  %tobool.not.i8 = icmp eq ptr %20, null
  br i1 %tobool.not.i8, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %tw_pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tw_pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %command_packet_physical_address.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 49, i32 0, i32 7, i32 1, i32 4, i32 2
  %23 = ptrtoint ptr %command_packet_physical_address.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %command_packet_physical_address.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 131072, ptr noundef nonnull %20, i32 noundef %24, i32 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %alignment_virtual_address.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %alignment_virtual_address.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %alignment_virtual_address.i, align 4
  %tobool5.not.i = icmp eq ptr %26, null
  br i1 %tobool5.not.i, label %if.end.i.tw_free_device_extension.exit_crit_edge, label %if.then6.i

if.end.i.tw_free_device_extension.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw_free_device_extension.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %tw_pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tw_pci_dev.i, align 4
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %alignment_physical_address.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 12, i32 4, i32 1
  %29 = ptrtoint ptr %alignment_physical_address.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %alignment_physical_address.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev8.i, i32 noundef 131072, ptr noundef nonnull %26, i32 noundef %30, i32 noundef 0) #10
  br label %tw_free_device_extension.exit

tw_free_device_extension.exit:                    ; preds = %if.then6.i, %if.end.i.tw_free_device_extension.exit_crit_edge
  %31 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host1, align 4
  tail call void @scsi_host_put(ptr noundef %32) #10
  tail call void @pci_disable_device(ptr noundef %pdev) #10
  %33 = load i32, ptr @tw_device_extension_count, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr @tw_device_extension_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !536
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hostdata, align 4
  %and.i = and i32 %3, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 1073741824) #10, !srcloc !534
  %tw_pci_dev.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 50, i32 9, i32 1, i32 4, i32 3
  %5 = ptrtoint ptr %tw_pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tw_pci_dev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  %call1.i = tail call ptr @free_irq(i32 noundef %8, ptr noundef %hostdata) #10
  %host.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 3, i32 50, i32 11, i32 2
  %9 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host.i, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %host_no.i, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, i32 noundef %12) #13
  %call5.i = tail call fastcc i32 @tw_initconnection(ptr noundef %hostdata, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  %.str.288..str.285.i = select i1 %tobool.not.i, ptr @.str.288, ptr @.str.285
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.288..str.285.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !537
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hostdata, align 4
  %and17.i = and i32 %14, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %15 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 -2143288320) #10, !srcloc !534
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
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tw_reset_sequence(ptr noundef %tw_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %command_packet_virtual_address.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 4
  %command_packet_physical_address.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 5
  %alignment_virtual_address.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 1
  %alignment_physical_address.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 2
  %aen_count.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 25
  %aen_tail.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 30
  %aen_head.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 29
  %host.i.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 26
  br label %do.body

do.body:                                          ; preds = %while.cond.backedge.do.body_crit_edge, %entry
  %tries.0106 = phi i32 [ 0, %entry ], [ %tries.0.be, %while.cond.backedge.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !538
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tw_dev, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 1073942272) #10, !srcloc !534
  %3 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tw_dev, align 4
  %add.i.i = add i32 %4, 4
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %5 = inttoptr i32 %add2.i.i to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #10, !srcloc !539
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = and i32 %7, 15736840
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %9)
  %.not.i.i = icmp eq i32 %9, 8192
  br i1 %.not.i.i, label %do.body.if.end.i.i_crit_edge, label %if.then.i.i

do.body.if.end.i.i_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i.i = tail call fastcc i32 @tw_decode_bits(ptr noundef %tw_dev, i32 noundef %7, i32 noundef 0) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %do.body.if.end.i.i_crit_edge
  %and63.i.i = and i32 %7, 270336
  call void @__sanitizer_cov_trace_const_cmp4(i32 270336, i32 %and63.i.i)
  %cmp.not4.i.i = icmp eq i32 %and63.i.i, 270336
  br i1 %cmp.not4.i.i, label %if.end.i.i.do.body4.i_crit_edge, label %while.body.lr.ph.i.i

if.end.i.i.do.body4.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

while.body.lr.ph.i.i:                             ; preds = %if.end.i.i
  %add20.i.i = add i32 %8, 3000
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end23.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %10 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tw_dev, align 4
  %add9.i.i = add i32 %11, 4
  %and10.i.i = and i32 %add9.i.i, 1048575
  %add11.i.i = or i32 %and10.i.i, -18874368
  %12 = inttoptr i32 %add11.i.i to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #10, !srcloc !539
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !541
  %15 = and i32 %14, 15736840
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %15)
  %.not2.i.i = icmp eq i32 %15, 8192
  br i1 %.not2.i.i, label %while.body.i.i.if.end19.i.i_crit_edge, label %if.then17.i.i

while.body.i.i.if.end19.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i.i

if.then17.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call18.i.i = tail call fastcc i32 @tw_decode_bits(ptr noundef %tw_dev, i32 noundef %14, i32 noundef 0) #10
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then17.i.i, %while.body.i.i.if.end19.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add20.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp21.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp21.i.i, label %if.end19.i.i.while.cond.backedge_crit_edge, label %if.end23.i.i

if.end19.i.i.while.cond.backedge_crit_edge:       ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end23.i.i:                                     ; preds = %if.end19.i.i
  tail call void @msleep(i32 noundef 50) #10
  %and6.i.i = and i32 %14, 270336
  %cmp.not.i.i = icmp eq i32 %and6.i.i, 270336
  br i1 %cmp.not.i.i, label %if.end23.i.i.do.body4.i_crit_edge, label %if.end23.i.i.while.body.i.i_crit_edge

if.end23.i.i.while.body.i.i_crit_edge:            ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end23.i.i.do.body4.i_crit_edge:                ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.end23.i.i.do.body4.i_crit_edge, %if.end.i.i.do.body4.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !542
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tw_dev, align 4
  %and.i = and i32 %18, 1048575
  %add.i = or i32 %and.i, -18874368
  %19 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 1024) #10, !srcloc !534
  %20 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tw_dev, align 4
  %add.i307.i = add i32 %21, 4
  %and.i308.i = and i32 %add.i307.i, 1048575
  %add1.i.i = or i32 %and.i308.i, -18874368
  %22 = inttoptr i32 %add1.i.i to ptr
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %22) #10, !srcloc !539
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !543
  %24 = and i32 %23, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp23.i.i = icmp eq i32 %24, 0
  br i1 %cmp23.i.i, label %do.body4.i.while.body.i309.i_crit_edge, label %do.body4.i.tw_empty_response_que.exit.i_crit_edge

do.body4.i.tw_empty_response_que.exit.i_crit_edge: ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw_empty_response_que.exit.i

do.body4.i.while.body.i309.i_crit_edge:           ; preds = %do.body4.i
  br label %while.body.i309.i

while.body.i309.i:                                ; preds = %while.body.i309.i.while.body.i309.i_crit_edge, %do.body4.i.while.body.i309.i_crit_edge
  %25 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tw_dev, align 4
  %add6.i.i = add i32 %26, 12
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %27 = inttoptr i32 %add8.i.i to ptr
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %27) #10, !srcloc !539
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !544
  %29 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tw_dev, align 4
  %add14.i.i = add i32 %30, 4
  %and15.i.i = and i32 %add14.i.i, 1048575
  %add16.i.i = or i32 %and15.i.i, -18874368
  %31 = inttoptr i32 %add16.i.i to ptr
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %31) #10, !srcloc !539
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !545
  %33 = and i32 %32, 4194304
  %cmp.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i, label %while.body.i309.i.while.body.i309.i_crit_edge, label %while.body.i309.i.tw_empty_response_que.exit.i_crit_edge

while.body.i309.i.tw_empty_response_que.exit.i_crit_edge: ; preds = %while.body.i309.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw_empty_response_que.exit.i

while.body.i309.i.while.body.i309.i_crit_edge:    ; preds = %while.body.i309.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i309.i

tw_empty_response_que.exit.i:                     ; preds = %while.body.i309.i.tw_empty_response_que.exit.i_crit_edge, %do.body4.i.tw_empty_response_que.exit.i_crit_edge
  %34 = ptrtoint ptr %command_packet_virtual_address.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %command_packet_virtual_address.i, align 4
  %cmp.i = icmp eq ptr %35, null
  br i1 %cmp.i, label %do.end11.i, label %if.end13.i

do.end11.i:                                       ; preds = %tw_empty_response_que.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134) #13
  br label %while.cond.backedge

if.end13.i:                                       ; preds = %tw_empty_response_que.exit.i
  %36 = getelementptr inbounds i8, ptr %35, i32 3
  %37 = call ptr @memset(ptr %36, i32 0, i32 509)
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 82, ptr %35, align 1
  %size.i = getelementptr inbounds %struct.TW_Command, ptr %35, i32 0, i32 1
  %39 = ptrtoint ptr %size.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %size.i, align 1
  %request_id16.i = getelementptr inbounds %struct.TW_Command, ptr %35, i32 0, i32 2
  %40 = ptrtoint ptr %request_id16.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %request_id16.i, align 1
  %status.i = getelementptr inbounds %struct.TW_Command, ptr %35, i32 0, i32 4
  %flags.i = getelementptr inbounds %struct.TW_Command, ptr %35, i32 0, i32 5
  %byte6.i = getelementptr inbounds %struct.TW_Command, ptr %35, i32 0, i32 6
  %41 = ptrtoint ptr %byte6.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 1, ptr %byte6.i, align 1
  %42 = ptrtoint ptr %command_packet_physical_address.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %command_packet_physical_address.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp18.i = icmp eq i32 %43, 0
  br i1 %cmp18.i, label %do.end23.i, label %if.end26.i

do.end23.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137) #13
  br label %while.cond.backedge

if.end26.i:                                       ; preds = %if.end13.i
  %44 = ptrtoint ptr %alignment_virtual_address.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %alignment_virtual_address.i, align 4
  %cmp28.i = icmp eq ptr %45, null
  br i1 %cmp28.i, label %do.end33.i, label %if.end36.i

do.end33.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #13
  br label %while.cond.backedge

if.end36.i:                                       ; preds = %if.end26.i
  %46 = getelementptr inbounds i8, ptr %45, i32 4
  %47 = call ptr @memset(ptr %46, i32 0, i32 508)
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 1025, ptr %45, align 1
  %parameter_id.i = getelementptr inbounds %struct.TW_Param, ptr %45, i32 0, i32 1
  %49 = ptrtoint ptr %parameter_id.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %parameter_id.i, align 1
  %parameter_size_bytes.i = getelementptr inbounds %struct.TW_Param, ptr %45, i32 0, i32 2
  %50 = ptrtoint ptr %parameter_size_bytes.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %parameter_size_bytes.i, align 1
  %51 = ptrtoint ptr %alignment_physical_address.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %alignment_physical_address.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp40.i = icmp eq i32 %52, 0
  br i1 %cmp40.i, label %do.end45.i, label %if.end48.i

do.end45.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143) #13
  br label %while.cond.backedge

if.end48.i:                                       ; preds = %if.end36.i
  %byte8.i = getelementptr inbounds %struct.TW_Command, ptr %35, i32 0, i32 7
  %53 = ptrtoint ptr %byte8.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %byte8.i, align 1
  %length.i = getelementptr inbounds %struct.TW_Command, ptr %35, i32 0, i32 7, i32 0, i32 1
  %54 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 512, ptr %length.i, align 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %43) #10
  br label %do.body53.i.outer

do.body53.i.outer:                                ; preds = %do.body53.i.outer.backedge, %if.end48.i
  %cmp218.i.ph = phi i1 [ true, %if.end48.i ], [ false, %do.body53.i.outer.backedge ]
  %first_reset.0.i.ph = phi i32 [ 0, %if.end48.i ], [ %first_reset.0.i.ph.be, %do.body53.i.outer.backedge ]
  br label %do.body53.i

do.body53.i:                                      ; preds = %if.end217.i.do.body53.i_crit_edge, %do.body53.i.outer
  %cmp218.i = phi i1 [ false, %if.end217.i.do.body53.i_crit_edge ], [ %cmp218.i.ph, %do.body53.i.outer ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !546
  tail call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tw_dev, align 4
  %add58.i = add i32 %57, 8
  %and59.i = and i32 %add58.i, 1048575
  %add60.i = or i32 %and59.i, -18874368
  %58 = inttoptr i32 %add60.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %58, i32 %55) #10, !srcloc !534
  %call62.i = tail call fastcc i32 @tw_poll_status_gone(ptr noundef %tw_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp63.i = icmp eq i32 %call62.i, 0
  br i1 %cmp63.i, label %if.then65.i, label %if.end217.i

if.then65.i:                                      ; preds = %do.body53.i
  %59 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tw_dev, align 4
  %add67.i = add i32 %60, 12
  %and68.i = and i32 %add67.i, 1048575
  %add69.i = or i32 %and68.i, -18874368
  %61 = inttoptr i32 %add69.i to ptr
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %61) #10, !srcloc !539
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !547
  %63 = and i32 %62, -267452416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp74.not.i = icmp eq i32 %63, 0
  br i1 %cmp74.not.i, label %if.end82.i, label %do.end79.i

do.end79.i:                                       ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #12
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146) #13
  br label %while.cond.backedge

if.end82.i:                                       ; preds = %if.then65.i
  %64 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp85.not.i = icmp eq i8 %65, 0
  br i1 %cmp85.not.i, label %if.end94.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end82.i
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %67)
  %cmp90.not.i = icmp eq i8 %67, 21
  br i1 %cmp90.not.i, label %if.then87.i.if.end_crit_edge, label %if.then92.i

if.then87.i.if.end_crit_edge:                     ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then92.i:                                      ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %command_packet_virtual_address.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %command_packet_virtual_address.i, align 4
  %70 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %host.i.i, align 4
  %host_no.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %71, i32 0, i32 17
  %72 = ptrtoint ptr %host_no.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %host_no.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.TW_Command, ptr %69, i32 0, i32 4
  %74 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %status.i.i, align 1
  %conv.i.i = zext i8 %75 to i32
  %flags.i.i = getelementptr inbounds %struct.TW_Command, ptr %69, i32 0, i32 5
  %76 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %flags.i.i, align 1
  %conv4.i.i = zext i8 %77 to i32
  %unit__hostid.i.i = getelementptr inbounds %struct.TW_Command, ptr %69, i32 0, i32 3
  %78 = ptrtoint ptr %unit__hostid.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %unit__hostid.i.i, align 1
  %80 = and i8 %79, 15
  %and.i310.i = zext i8 %80 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, i32 noundef %73, i32 noundef %conv.i.i, i32 noundef %conv4.i.i, i32 noundef %and.i310.i) #13
  br label %while.cond.backedge

if.end94.i:                                       ; preds = %if.end82.i
  %81 = ptrtoint ptr %46 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %46, align 1
  %conv95.i = zext i16 %82 to i32
  %and96.i = and i32 %conv95.i, 255
  %trunc.i = trunc i16 %82 to i8
  %83 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %sw.default.i [
    i8 0, label %tw_aen_drain_queue.exit
    i8 1, label %sw.bb107.i
  ]

sw.bb107.i:                                       ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_reset.0.i.ph)
  %cmp108.i = icmp eq i32 %first_reset.0.i.ph, 0
  br i1 %cmp108.i, label %sw.bb107.i.do.body53.i.outer.backedge_crit_edge, label %do.end114.i

sw.bb107.i.do.body53.i.outer.backedge_crit_edge:  ; preds = %sw.bb107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53.i.outer.backedge

do.end114.i:                                      ; preds = %sw.bb107.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx118.i = getelementptr [49 x ptr], ptr @tw_aen_string, i32 0, i32 %and96.i
  %84 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx118.i, align 4
  %call119.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %85) #13
  br label %if.then181.i

sw.default.i:                                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %82)
  %cmp122.i = icmp eq i16 %82, 255
  br i1 %cmp122.i, label %do.end127.i, label %if.else130.i

do.end127.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  %call129.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #13
  br label %if.then181.i

if.else130.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %and96.i)
  %cmp133.i = icmp ult i32 %and96.i, 49
  br i1 %cmp133.i, label %if.then135.i, label %do.end171.i

if.then135.i:                                     ; preds = %if.else130.i
  %arrayidx138.i = getelementptr [49 x ptr], ptr @tw_aen_string, i32 0, i32 %and96.i
  %86 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx138.i, align 4
  %call142.i = tail call i32 @strlen(ptr noundef %87) #14
  %sub.i = add i32 %call142.i, -1
  %arrayidx143.i = getelementptr i8, ptr %87, i32 %sub.i
  %88 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx143.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %89)
  %cmp145.i = icmp eq i8 %89, 35
  br i1 %cmp145.i, label %do.end150.i, label %do.end161.i

do.end150.i:                                      ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #12
  %90 = lshr i32 %conv95.i, 8
  %call157.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef %87, i32 noundef %90) #13
  br label %if.then181.i

do.end161.i:                                      ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #12
  %call166.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %87) #13
  br label %if.then181.i

do.end171.i:                                      ; preds = %if.else130.i
  call void @__sanitizer_cov_trace_pc() #12
  %call174.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef %conv95.i) #13
  br label %if.then181.i

if.then181.i:                                     ; preds = %do.end171.i, %do.end161.i, %do.end150.i, %do.end127.i, %do.end114.i
  %first_reset.1.ph.i = phi i32 [ 1, %do.end114.i ], [ %first_reset.0.i.ph, %do.end171.i ], [ %first_reset.0.i.ph, %do.end161.i ], [ %first_reset.0.i.ph, %do.end150.i ], [ %first_reset.0.i.ph, %do.end127.i ]
  %91 = ptrtoint ptr %aen_count.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %storemerge.in.i = load i32, ptr %aen_count.i, align 4
  %storemerge.i = add i32 %storemerge.in.i, 1
  store i32 %storemerge.i, ptr %aen_count.i, align 4
  %92 = ptrtoint ptr %aen_tail.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %aen_tail.i, align 1
  %idxprom.i = zext i8 %93 to i32
  %arrayidx182.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 28, i32 %idxprom.i
  %94 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %82, ptr %arrayidx182.i, align 2
  %add192.i = add i8 %93, 1
  store i8 %add192.i, ptr %aen_tail.i, align 1
  %95 = ptrtoint ptr %aen_head.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %aen_head.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %96, i8 %add192.i)
  %cmp199.i = icmp eq i8 %96, %add192.i
  br i1 %cmp199.i, label %if.then201.i, label %if.then181.i.do.body53.i.outer.backedge_crit_edge

if.then181.i.do.body53.i.outer.backedge_crit_edge: ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53.i.outer.backedge

if.then201.i:                                     ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %add192.i)
  %cmp204.i = icmp eq i8 %add192.i, -1
  %add211.i = add i8 %93, 2
  %.sink.i = select i1 %cmp204.i, i8 0, i8 %add211.i
  %97 = ptrtoint ptr %aen_head.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %.sink.i, ptr %aen_head.i, align 4
  br label %do.body53.i.outer.backedge

do.body53.i.outer.backedge:                       ; preds = %if.then201.i, %if.then181.i.do.body53.i.outer.backedge_crit_edge, %sw.bb107.i.do.body53.i.outer.backedge_crit_edge
  %first_reset.0.i.ph.be = phi i32 [ 1, %sw.bb107.i.do.body53.i.outer.backedge_crit_edge ], [ %first_reset.1.ph.i, %if.then181.i.do.body53.i.outer.backedge_crit_edge ], [ %first_reset.1.ph.i, %if.then201.i ]
  br label %do.body53.i.outer

if.end217.i:                                      ; preds = %do.body53.i
  br i1 %cmp218.i, label %do.end223.i, label %if.end217.i.do.body53.i_crit_edge

if.end217.i.do.body53.i_crit_edge:                ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53.i

do.end223.i:                                      ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #12
  %call225.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #13
  br label %while.cond.backedge

tw_aen_drain_queue.exit:                          ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %first_reset.0.i.ph)
  %cmp102.not.i.not = icmp eq i32 %first_reset.0.i.ph, 1
  br i1 %cmp102.not.i.not, label %tw_aen_drain_queue.exit.if.end_crit_edge, label %tw_aen_drain_queue.exit.while.cond.backedge_crit_edge

tw_aen_drain_queue.exit.while.cond.backedge_crit_edge: ; preds = %tw_aen_drain_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

tw_aen_drain_queue.exit.if.end_crit_edge:         ; preds = %tw_aen_drain_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.cond.backedge:                              ; preds = %do.end11, %tw_aen_drain_queue.exit.while.cond.backedge_crit_edge, %do.end223.i, %if.then92.i, %do.end79.i, %do.end45.i, %do.end33.i, %do.end23.i, %do.end11.i, %if.end19.i.i.while.cond.backedge_crit_edge
  %.str.120.sink = phi ptr [ @.str.123, %do.end11 ], [ @.str.120, %do.end223.i ], [ @.str.120, %if.then92.i ], [ @.str.120, %do.end79.i ], [ @.str.120, %do.end45.i ], [ @.str.120, %do.end33.i ], [ @.str.120, %do.end23.i ], [ @.str.120, %do.end11.i ], [ @.str.120, %tw_aen_drain_queue.exit.while.cond.backedge_crit_edge ], [ @.str.120, %if.end19.i.i.while.cond.backedge_crit_edge ]
  %98 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %host.i.i, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %99, i32 0, i32 17
  %100 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %host_no, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.120.sink, i32 noundef %101) #13
  %tries.0.be = add nuw nsw i32 %tries.0106, 1
  %exitcond.not = icmp eq i32 %tries.0.be, 3
  br i1 %exitcond.not, label %while.cond.backedge.do.end22_crit_edge, label %while.cond.backedge.do.body_crit_edge

while.cond.backedge.do.body_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

while.cond.backedge.do.end22_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

if.end:                                           ; preds = %tw_aen_drain_queue.exit.if.end_crit_edge, %if.then87.i.if.end_crit_edge
  %102 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tw_dev, align 4
  %add.i63 = add i32 %103, 4
  %and.i64 = and i32 %add.i63, 1048575
  %add1.i = or i32 %and.i64, -18874368
  %104 = inttoptr i32 %add1.i to ptr
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %104) #10, !srcloc !539
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !548
  %107 = and i32 %106, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %108 = icmp eq i32 %107, 0
  %and12.i = and i32 %106, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  %or.cond27.i = or i1 %108, %tobool13.not.i
  %109 = and i32 %106, 15736840
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %109)
  %.not.i = icmp eq i32 %109, 8192
  %or.cond.i = select i1 %or.cond27.i, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %while.end, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i = tail call fastcc i32 @tw_decode_bits(ptr noundef %tw_dev, i32 noundef %106, i32 noundef 0) #10
  br label %while.cond.backedge

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tries.0106)
  %cmp18 = icmp ugt i32 %tries.0106, 2
  br i1 %cmp18, label %while.end.do.end22_crit_edge, label %if.end27

while.end.do.end22_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

do.end22:                                         ; preds = %while.end.do.end22_crit_edge, %while.cond.backedge.do.end22_crit_edge
  %110 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %host.i.i, align 4
  %host_no25 = getelementptr inbounds %struct.Scsi_Host, ptr %111, i32 0, i32 17
  %112 = ptrtoint ptr %host_no25 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %host_no25, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, i32 noundef %113) #13
  br label %cleanup

if.end27:                                         ; preds = %while.end
  %call28 = tail call fastcc i32 @tw_initconnection(ptr noundef %tw_dev, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end38, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %host.i.i, align 4
  %host_no36 = getelementptr inbounds %struct.Scsi_Host, ptr %115, i32 0, i32 17
  %116 = ptrtoint ptr %host_no36 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %host_no36, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, i32 noundef %117) #13
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  %118 = ptrtoint ptr %command_packet_virtual_address.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %command_packet_virtual_address.i, align 4
  %cmp.i67 = icmp eq ptr %119, null
  br i1 %cmp.i67, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206) #13
  br label %do.end44

if.end.i:                                         ; preds = %if.end38
  %120 = call ptr @memset(ptr %119, i32 0, i32 512)
  %121 = ptrtoint ptr %alignment_virtual_address.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %alignment_virtual_address.i, align 4
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 83, ptr %119, align 1
  %124 = ptrtoint ptr %122 to i32
  call void @__asan_storeN_noabort(i32 %124, i32 2)
  store i16 1028, ptr %122, align 1
  %parameter_id.i69 = getelementptr inbounds %struct.TW_Param, ptr %122, i32 0, i32 1
  %125 = ptrtoint ptr %parameter_id.i69 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 2, ptr %parameter_id.i69, align 1
  %parameter_size_bytes.i70 = getelementptr inbounds %struct.TW_Param, ptr %122, i32 0, i32 2
  %126 = ptrtoint ptr %parameter_size_bytes.i70 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %parameter_size_bytes.i70, align 1
  %data.i71 = getelementptr inbounds %struct.TW_Param, ptr %122, i32 0, i32 3
  %127 = ptrtoint ptr %data.i71 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %data.i71, align 1
  %128 = ptrtoint ptr %alignment_physical_address.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %alignment_physical_address.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp6.i = icmp eq i32 %129, 0
  br i1 %cmp6.i, label %do.end11.i73, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

do.end11.i73:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209) #13
  %state.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14
  %free_tail.i.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 10
  %130 = ptrtoint ptr %free_tail.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %free_tail.i.i, align 1
  %idxprom.i.i = zext i8 %131 to i32
  %arrayidx.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 8, i32 %idxprom.i.i
  %132 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %arrayidx.i.i, align 1
  %133 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 32, ptr %state.i, align 4
  %134 = add i8 %131, 1
  store i8 %134, ptr %free_tail.i.i, align 1
  %srb.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 7
  %135 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %srb.i, align 4
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %136, i32 0, i32 24
  %137 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %result.i, align 4
  %138 = load ptr, ptr %srb.i, align 4
  tail call void @scsi_done(ptr noundef %138) #10
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end11.i73, %if.end.i.if.end18.i_crit_edge
  %byte8.i74 = getelementptr inbounds %struct.TW_Command, ptr %119, i32 0, i32 7
  %139 = ptrtoint ptr %byte8.i74 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 %129, ptr %byte8.i74, align 1
  %length.i75 = getelementptr inbounds %struct.TW_Command, ptr %119, i32 0, i32 7, i32 0, i32 1
  %140 = ptrtoint ptr %length.i75 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 512, ptr %length.i75, align 1
  %size.i76 = getelementptr inbounds %struct.TW_Command, ptr %119, i32 0, i32 1
  %141 = ptrtoint ptr %size.i76 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 4, ptr %size.i76, align 1
  %request_id24.i = getelementptr inbounds %struct.TW_Command, ptr %119, i32 0, i32 2
  %142 = ptrtoint ptr %request_id24.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %request_id24.i, align 1
  %byte6.i77 = getelementptr inbounds %struct.TW_Command, ptr %119, i32 0, i32 6
  %143 = ptrtoint ptr %byte6.i77 to i32
  call void @__asan_storeN_noabort(i32 %143, i32 2)
  store i16 1, ptr %byte6.i77, align 1
  %144 = ptrtoint ptr %command_packet_physical_address.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %command_packet_physical_address.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp26.i = icmp eq i32 %145, 0
  br i1 %cmp26.i, label %do.end31.i, label %do.body35.i

do.end31.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212) #13
  br label %do.end44

do.body35.i:                                      ; preds = %if.end18.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !549
  tail call void @arm_heavy_mb() #10
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #10
  %147 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %tw_dev, align 4
  %add.i79 = add i32 %148, 8
  %and.i80 = and i32 %add.i79, 1048575
  %add38.i = or i32 %and.i80, -18874368
  %149 = inttoptr i32 %add38.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %149, i32 %146) #10, !srcloc !534
  %call40.i = tail call fastcc i32 @tw_poll_status_gone(ptr noundef %tw_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp eq i32 %call40.i, 0
  br i1 %cmp41.i, label %if.then43.i, label %do.body35.i.cleanup_crit_edge

do.body35.i.cleanup_crit_edge:                    ; preds = %do.body35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then43.i:                                      ; preds = %do.body35.i
  %150 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %tw_dev, align 4
  %add45.i = add i32 %151, 12
  %and46.i = and i32 %add45.i, 1048575
  %add47.i = or i32 %and46.i, -18874368
  %152 = inttoptr i32 %add47.i to ptr
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %152) #10, !srcloc !539
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !550
  %154 = and i32 %153, -267452416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp52.not.i = icmp eq i32 %154, 0
  br i1 %cmp52.not.i, label %if.end60.i, label %do.end57.i

do.end57.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215) #13
  br label %do.end44

if.end60.i:                                       ; preds = %if.then43.i
  %status.i81 = getelementptr inbounds %struct.TW_Command, ptr %119, i32 0, i32 4
  %155 = ptrtoint ptr %status.i81 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %status.i81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %cmp62.not.i = icmp eq i8 %156, 0
  br i1 %cmp62.not.i, label %if.end60.i.cleanup_crit_edge, label %if.then64.i

if.end60.i.cleanup_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then64.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  %157 = ptrtoint ptr %command_packet_virtual_address.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %command_packet_virtual_address.i, align 4
  %159 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %host.i.i, align 4
  %host_no.i.i83 = getelementptr inbounds %struct.Scsi_Host, ptr %160, i32 0, i32 17
  %161 = ptrtoint ptr %host_no.i.i83 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %host_no.i.i83, align 4
  %status.i.i84 = getelementptr inbounds %struct.TW_Command, ptr %158, i32 0, i32 4
  %163 = ptrtoint ptr %status.i.i84 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %status.i.i84, align 1
  %conv.i.i85 = zext i8 %164 to i32
  %flags.i.i86 = getelementptr inbounds %struct.TW_Command, ptr %158, i32 0, i32 5
  %165 = ptrtoint ptr %flags.i.i86 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %flags.i.i86, align 1
  %conv4.i.i87 = zext i8 %166 to i32
  %unit__hostid.i.i88 = getelementptr inbounds %struct.TW_Command, ptr %158, i32 0, i32 3
  %167 = ptrtoint ptr %unit__hostid.i.i88 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %unit__hostid.i.i88, align 1
  %169 = and i8 %168, 15
  %and.i.i89 = zext i8 %169 to i32
  %call.i.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, i32 noundef %162, i32 noundef %conv.i.i85, i32 noundef %conv4.i.i87, i32 noundef %and.i.i89) #13
  br label %do.end44

do.end44:                                         ; preds = %if.then64.i, %do.end57.i, %do.end31.i, %do.end.i
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end60.i.cleanup_crit_edge, %do.body35.i.cleanup_crit_edge, %do.end33, %do.end22
  %retval.0 = phi i32 [ 1, %do.end22 ], [ 1, %do.end33 ], [ 0, %do.end44 ], [ 0, %do.body35.i.cleanup_crit_edge ], [ 0, %if.end60.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  %request_buffer.i419 = alloca [8 x i8], align 8
  %buff.i = alloca [8 x i8], align 8
  %request_buffer.i = alloca [36 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 26
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_instance, align 4
  %add = add i32 %5, 4
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %6 = inttoptr i32 %add2 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #10, !srcloc !539
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !551
  %and4 = and i32 %8, 14614536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.tw_interrupt_bail_crit_edge, label %if.end

entry.tw_interrupt_bail_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw_interrupt_bail

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 31
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.tw_interrupt_bail_crit_edge

if.end.tw_interrupt_bail_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw_interrupt_bail

if.end8:                                          ; preds = %if.end
  %12 = and i32 %8, 15736840
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %12)
  %.not = icmp eq i32 %12, 8192
  br i1 %.not, label %if.end8.if.end23_crit_edge, label %do.end

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end:                                           ; preds = %if.end8
  %call12 = tail call fastcc i32 @tw_decode_bits(ptr noundef %dev_instance, i32 noundef %8, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end.if.end23_crit_edge, label %do.body15

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.body15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !552
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_instance, align 4
  %and19 = and i32 %14, 1048575
  %add20 = or i32 %and19, -18874368
  %15 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 134274816) #10, !srcloc !534
  br label %tw_interrupt_bail

if.end23:                                         ; preds = %do.end.if.end23_crit_edge, %if.end8.if.end23_crit_edge
  %and24 = and i32 %8, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end37_crit_edge, label %do.body30

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.body30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !553
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_instance, align 4
  %and34 = and i32 %17, 1048575
  %add35 = or i32 %and34, -18874368
  %18 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 2048) #10, !srcloc !534
  br label %if.end37

if.end37:                                         ; preds = %do.body30, %if.end23.if.end37_crit_edge
  %and38 = and i32 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end61_crit_edge, label %do.body44

if.end37.if.end61_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

do.body44:                                        ; preds = %if.end37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !554
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dev_instance, align 4
  %and48 = and i32 %20, 1048575
  %add49 = or i32 %and48, -18874368
  %21 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 1024) #10, !srcloc !534
  %free_head.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 9
  %22 = ptrtoint ptr %free_head.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %free_head.i, align 4
  %idxprom.i = zext i8 %23 to i32
  %arrayidx.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 8, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %25 to i32
  %26 = add i8 %23, 1
  store i8 %26, ptr %free_head.i, align 4
  %arrayidx5.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 14, i32 %conv.i
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %arrayidx5.i, align 4
  %call51 = tail call fastcc i32 @tw_aen_read_queue(ptr noundef %dev_instance, i32 noundef %conv.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %do.body44.if.end61_crit_edge, label %do.end56

do.body44.if.end61_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

do.end56:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %29, i32 0, i32 17
  %30 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %host_no, align 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, i32 noundef %31) #13
  %free_tail.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 10
  %32 = ptrtoint ptr %free_tail.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %free_tail.i, align 1
  %idxprom.i353 = zext i8 %33 to i32
  %arrayidx.i354 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 8, i32 %idxprom.i353
  %34 = ptrtoint ptr %arrayidx.i354 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %25, ptr %arrayidx.i354, align 1
  %35 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 32, ptr %arrayidx5.i, align 4
  %36 = add i8 %33, 1
  store i8 %36, ptr %free_tail.i, align 1
  br label %if.end61

if.end61:                                         ; preds = %do.end56, %do.body44.if.end61_crit_edge, %if.end37.if.end61_crit_edge
  %and62 = and i32 %8, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end110_crit_edge, label %while.cond.preheader

if.end61.if.end110_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

while.cond.preheader:                             ; preds = %if.end61
  %pending_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 18
  %37 = ptrtoint ptr %pending_request_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pending_request_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not460 = icmp eq i32 %38, 0
  br i1 %cmp.not460, label %while.cond.preheader.do.body102_crit_edge, label %while.body.lr.ph

while.cond.preheader.do.body102_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body102

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %pending_head = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %if.then82.while.body_crit_edge, %while.body.lr.ph
  %39 = ptrtoint ptr %pending_head to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pending_head, align 2
  %idxprom = zext i8 %40 to i32
  %arrayidx65 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 11, i32 %idxprom
  %41 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx65, align 1
  %conv = zext i8 %42 to i32
  %arrayidx67 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 14, i32 %conv
  %43 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %44)
  %cmp68.not = icmp eq i32 %44, 8
  br i1 %cmp68.not, label %if.end78, label %do.end73

do.end73:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host, align 4
  %host_no76 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %host_no76 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %host_no76, align 4
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, i32 noundef %48) #13
  br label %while.end

if.end78:                                         ; preds = %while.body
  %call79 = tail call fastcc i32 @tw_post_command_packet(ptr noundef %dev_instance, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.end78.while.end_crit_edge

if.end78.while.end_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then82:                                        ; preds = %if.end78
  %49 = ptrtoint ptr %pending_head to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pending_head, align 2
  %add91 = add i8 %50, 1
  store i8 %add91, ptr %pending_head, align 2
  %51 = ptrtoint ptr %pending_request_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pending_request_count, align 4
  %dec = add i32 %52, -1
  store i32 %dec, ptr %pending_request_count, align 4
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.then82.do.body102_crit_edge, label %if.then82.while.body_crit_edge

if.then82.while.body_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.then82.do.body102_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body102

while.end:                                        ; preds = %if.end78.while.end_crit_edge, %do.end73
  %53 = ptrtoint ptr %pending_request_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load i32, ptr %pending_request_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp99 = icmp eq i32 %.pr, 0
  br i1 %cmp99, label %while.end.do.body102_crit_edge, label %while.end.if.end110_crit_edge

while.end.if.end110_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

while.end.do.body102_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body102

do.body102:                                       ; preds = %while.end.do.body102_crit_edge, %if.then82.do.body102_crit_edge, %while.cond.preheader.do.body102_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !555
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dev_instance, align 4
  %and106 = and i32 %55, 1048575
  %add107 = or i32 %and106, -18874368
  %56 = inttoptr i32 %add107 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %56, i32 512) #10, !srcloc !534
  br label %if.end110

if.end110:                                        ; preds = %do.body102, %while.end.if.end110_crit_edge, %if.end61.if.end110_crit_edge
  %57 = and i32 %8, 81920
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %57)
  %58 = icmp eq i32 %57, 65536
  br i1 %58, label %while.body118.lr.ph, label %if.end110.tw_interrupt_bail_crit_edge

if.end110.tw_interrupt_bail_crit_edge:            ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw_interrupt_bail

while.body118.lr.ph:                              ; preds = %if.end110
  %59 = getelementptr inbounds [8 x i8], ptr %request_buffer.i419, i32 0, i32 6
  %60 = getelementptr inbounds [8 x i8], ptr %buff.i, i32 0, i32 3
  %61 = getelementptr inbounds [8 x i8], ptr %buff.i, i32 0, i32 2
  %62 = getelementptr inbounds [8 x i8], ptr %buff.i, i32 0, i32 1
  %arrayidx3.i = getelementptr inbounds [36 x i8], ptr %request_buffer.i, i32 0, i32 4
  %arrayidx4.i = getelementptr inbounds [36 x i8], ptr %request_buffer.i, i32 0, i32 8
  %arrayidx5.i388 = getelementptr inbounds [36 x i8], ptr %request_buffer.i, i32 0, i32 16
  %arrayidx7.i = getelementptr inbounds [36 x i8], ptr %request_buffer.i, i32 0, i32 32
  %free_tail.i433 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 10
  %posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 15
  %chrdev_request_id = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 33
  %aen_count.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 25
  %aen_tail.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 30
  %aen_head.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 29
  %ioctl_wqueue = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 34
  br label %while.body118

while.body118:                                    ; preds = %if.end280.while.body118_crit_edge, %while.body118.lr.ph
  %63 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dev_instance, align 4
  %add121 = add i32 %64, 12
  %and122 = and i32 %add121, 1048575
  %add123 = or i32 %and122, -18874368
  %65 = inttoptr i32 %add123 to ptr
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %65) #10, !srcloc !539
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !556
  %shr = lshr i32 %67, 4
  %and127 = and i32 %shr, 255
  %arrayidx128 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 4, i32 %and127
  %68 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx128, align 4
  %status = getelementptr inbounds %struct.TW_Command, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp130.not = icmp eq i8 %71, 0
  br i1 %cmp130.not, label %while.body118.if.end141_crit_edge, label %if.then132

while.body118.if.end141_crit_edge:                ; preds = %while.body118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then132:                                       ; preds = %while.body118
  %arrayidx133 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 7, i32 %and127
  %72 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx133, align 4
  %cmp134 = icmp eq ptr %73, null
  %74 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %host, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %75, i32 0, i32 17
  %76 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %host_no.i, align 4
  %conv.i356 = zext i8 %71 to i32
  %flags.i = getelementptr inbounds %struct.TW_Command, ptr %69, i32 0, i32 5
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %flags.i, align 1
  %conv4.i = zext i8 %79 to i32
  %unit__hostid.i = getelementptr inbounds %struct.TW_Command, ptr %69, i32 0, i32 3
  %80 = ptrtoint ptr %unit__hostid.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %unit__hostid.i, align 1
  %82 = and i8 %81, 15
  %and.i = zext i8 %82 to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, i32 noundef %77, i32 noundef %conv.i356, i32 noundef %conv4.i, i32 noundef %and.i) #13
  br i1 %cmp134, label %if.then132.if.end141_crit_edge, label %if.else138

if.then132.if.end141_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.else138:                                       ; preds = %if.then132
  %83 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %status, align 1
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.292)
  switch i8 %84, label %if.else138.if.end141_crit_edge [
    i8 -57, label %if.else138.if.then13.i_crit_edge
    i8 -53, label %if.else138.if.then13.i_crit_edge464
  ]

if.else138.if.then13.i_crit_edge464:              ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13.i

if.else138.if.then13.i_crit_edge:                 ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13.i

if.else138.if.end141_crit_edge:                   ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then13.i:                                      ; preds = %if.else138.if.then13.i_crit_edge, %if.else138.if.then13.i_crit_edge464
  %86 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %flags.i, align 1
  %88 = zext i8 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.293)
  switch i8 %87, label %if.then13.i.if.end141_crit_edge [
    i8 1, label %if.then13.i.if.then23.i_crit_edge
    i8 4, label %if.then23.fold.split.i
    i8 16, label %if.then23.fold.split79.i
    i8 64, label %if.then23.fold.split80.i
    i8 97, label %if.then23.fold.split81.i
    i8 -124, label %if.then23.fold.split82.i
    i8 -48, label %if.then23.fold.split83.i
    i8 -47, label %if.then23.fold.split84.i
    i8 55, label %if.then23.fold.split85.i
    i8 9, label %if.then23.fold.split86.i
    i8 81, label %if.then23.fold.split87.i
  ]

if.then13.i.if.then23.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then13.i.if.end141_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then23.fold.split.i:                           ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.fold.split79.i:                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.fold.split80.i:                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.fold.split81.i:                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.fold.split82.i:                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.fold.split83.i:                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.fold.split84.i:                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.fold.split85.i:                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.fold.split86.i:                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.fold.split87.i:                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.then23.i:                                      ; preds = %if.then23.fold.split87.i, %if.then23.fold.split86.i, %if.then23.fold.split85.i, %if.then23.fold.split84.i, %if.then23.fold.split83.i, %if.then23.fold.split82.i, %if.then23.fold.split81.i, %if.then23.fold.split80.i, %if.then23.fold.split79.i, %if.then23.fold.split.i, %if.then13.i.if.then23.i_crit_edge
  %i.077.lcssa.i = phi i32 [ 0, %if.then13.i.if.then23.i_crit_edge ], [ 1, %if.then23.fold.split.i ], [ 2, %if.then23.fold.split79.i ], [ 3, %if.then23.fold.split80.i ], [ 4, %if.then23.fold.split81.i ], [ 5, %if.then23.fold.split82.i ], [ 6, %if.then23.fold.split83.i ], [ 7, %if.then23.fold.split84.i ], [ 8, %if.then23.fold.split85.i ], [ 9, %if.then23.fold.split86.i ], [ 10, %if.then23.fold.split87.i ]
  %89 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx133, align 4
  %sense_buffer.i = getelementptr inbounds %struct.scsi_cmnd, ptr %90, i32 0, i32 21
  %91 = ptrtoint ptr %sense_buffer.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sense_buffer.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -16, ptr %92, align 1
  %arrayidx27.i = getelementptr [11 x [4 x i8]], ptr @tw_sense_table, i32 0, i32 %i.077.lcssa.i, i32 1
  %94 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx27.i, align 1
  %96 = load ptr, ptr %arrayidx133, align 4
  %sense_buffer30.i = getelementptr inbounds %struct.scsi_cmnd, ptr %96, i32 0, i32 21
  %97 = ptrtoint ptr %sense_buffer30.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sense_buffer30.i, align 4
  %arrayidx31.i = getelementptr i8, ptr %98, i32 2
  %99 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %95, ptr %arrayidx31.i, align 1
  %100 = load ptr, ptr %arrayidx133, align 4
  %sense_buffer34.i = getelementptr inbounds %struct.scsi_cmnd, ptr %100, i32 0, i32 21
  %101 = ptrtoint ptr %sense_buffer34.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sense_buffer34.i, align 4
  %arrayidx35.i = getelementptr i8, ptr %102, i32 7
  %103 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 10, ptr %arrayidx35.i, align 1
  %arrayidx37.i = getelementptr [11 x [4 x i8]], ptr @tw_sense_table, i32 0, i32 %i.077.lcssa.i, i32 2
  %104 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx37.i, align 1
  %106 = load ptr, ptr %arrayidx133, align 4
  %sense_buffer40.i = getelementptr inbounds %struct.scsi_cmnd, ptr %106, i32 0, i32 21
  %107 = ptrtoint ptr %sense_buffer40.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %sense_buffer40.i, align 4
  %arrayidx41.i = getelementptr i8, ptr %108, i32 12
  %109 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %105, ptr %arrayidx41.i, align 1
  %arrayidx43.i = getelementptr [11 x [4 x i8]], ptr @tw_sense_table, i32 0, i32 %i.077.lcssa.i, i32 3
  %110 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx43.i, align 1
  %112 = load ptr, ptr %arrayidx133, align 4
  %sense_buffer46.i = getelementptr inbounds %struct.scsi_cmnd, ptr %112, i32 0, i32 21
  %113 = ptrtoint ptr %sense_buffer46.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %sense_buffer46.i, align 4
  %arrayidx47.i = getelementptr i8, ptr %114, i32 13
  %115 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %111, ptr %arrayidx47.i, align 1
  %116 = load ptr, ptr %arrayidx133, align 4
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %116, i32 0, i32 24
  %117 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 2, ptr %result.i, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then23.i, %if.then13.i.if.end141_crit_edge, %if.else138.if.end141_crit_edge, %if.then132.if.end141_crit_edge, %while.body118.if.end141_crit_edge
  %error.0 = phi i32 [ 0, %while.body118.if.end141_crit_edge ], [ 3, %if.then23.i ], [ 1, %if.else138.if.end141_crit_edge ], [ 1, %if.then13.i.if.end141_crit_edge ], [ 0, %if.then132.if.end141_crit_edge ]
  %arrayidx143 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 14, i32 %and127
  %118 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %119)
  %cmp144.not = icmp eq i32 %119, 4
  br i1 %cmp144.not, label %if.end141.do.end163_crit_edge, label %if.then146

if.end141.do.end163_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end163

if.then146:                                       ; preds = %if.end141
  %arrayidx148 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 7, i32 %and127
  %120 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx148, align 4
  %cmp149.not = icmp eq ptr %121, null
  br i1 %cmp149.not, label %if.then146.do.end163_crit_edge, label %do.end154

if.then146.do.end163_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end163

do.end154:                                        ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %host, align 4
  %host_no157 = getelementptr inbounds %struct.Scsi_Host, ptr %123, i32 0, i32 17
  %124 = ptrtoint ptr %host_no157 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %host_no157, align 4
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, i32 noundef %125) #13
  br label %do.end163

do.end163:                                        ; preds = %do.end154, %if.then146.do.end163_crit_edge, %if.end141.do.end163_crit_edge
  %error.1 = phi i32 [ 1, %do.end154 ], [ %error.0, %if.then146.do.end163_crit_edge ], [ %error.0, %if.end141.do.end163_crit_edge ]
  %arrayidx165 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 7, i32 %and127
  %126 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx165, align 4
  %cmp166 = icmp eq ptr %127, null
  br i1 %cmp166, label %do.end171, label %if.else189

do.end171:                                        ; preds = %do.end163
  %128 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %chrdev_request_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and127, i32 %129)
  %cmp172.not = icmp eq i32 %and127, %129
  br i1 %cmp172.not, label %if.else186, label %if.then174

if.then174:                                       ; preds = %do.end171
  %arrayidx.i369 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 1, i32 %and127
  %130 = ptrtoint ptr %arrayidx.i369 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i369, align 4
  %cmp.i = icmp eq ptr %131, null
  br i1 %cmp.i, label %do.end180, label %if.end.i

if.end.i:                                         ; preds = %if.then174
  %data.i = getelementptr inbounds %struct.TW_Param, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 2)
  %133 = load i16, ptr %data.i, align 1
  %conv.i371 = zext i16 %133 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %133)
  %cmp9.i = icmp eq i16 %133, 255
  br i1 %cmp9.i, label %if.end71.thread.i, label %if.else.i

if.end71.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %host, align 4
  %host_no.i373 = getelementptr inbounds %struct.Scsi_Host, ptr %135, i32 0, i32 17
  %136 = ptrtoint ptr %host_no.i373 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %host_no.i373, align 4
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, i32 noundef %137) #13
  br label %if.then75.i

if.else.i:                                        ; preds = %if.end.i
  %and.i374 = and i32 %conv.i371, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %and.i374)
  %cmp18.i = icmp ult i32 %and.i374, 49
  br i1 %cmp18.i, label %if.then20.i, label %do.end64.i

if.then20.i:                                      ; preds = %if.else.i
  %arrayidx23.i = getelementptr [49 x ptr], ptr @tw_aen_string, i32 0, i32 %and.i374
  %138 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx23.i, align 4
  %call27.i = call i32 @strlen(ptr noundef %139) #14
  %sub.i = add i32 %call27.i, -1
  %arrayidx28.i = getelementptr i8, ptr %139, i32 %sub.i
  %140 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx28.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %141)
  %cmp30.i = icmp eq i8 %141, 35
  br i1 %cmp30.i, label %do.end35.i, label %if.else44.i

do.end35.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %host, align 4
  %host_no38.i = getelementptr inbounds %struct.Scsi_Host, ptr %143, i32 0, i32 17
  %144 = ptrtoint ptr %host_no38.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %host_no38.i, align 4
  %146 = lshr i32 %conv.i371, 8
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, i32 noundef %145, ptr noundef %139, i32 noundef %146) #13
  br label %if.end71.i

if.else44.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %cond.i = icmp eq i16 %133, 0
  br i1 %cond.i, label %if.else44.i.if.else120.i_crit_edge, label %do.end51.i

if.else44.i.if.else120.i_crit_edge:               ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.i

do.end51.i:                                       ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %host, align 4
  %host_no54.i = getelementptr inbounds %struct.Scsi_Host, ptr %148, i32 0, i32 17
  %149 = ptrtoint ptr %host_no54.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %host_no54.i, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254, i32 noundef %150, ptr noundef %139) #13
  br label %if.end71.i

do.end64.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %host, align 4
  %host_no67.i = getelementptr inbounds %struct.Scsi_Host, ptr %152, i32 0, i32 17
  %153 = ptrtoint ptr %host_no67.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %host_no67.i, align 4
  %call69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.257, i32 noundef %154, i32 noundef %conv.i371) #13
  br label %if.end71.i

if.end71.i:                                       ; preds = %do.end64.i, %do.end51.i, %do.end35.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %cmp73.not.i = icmp eq i16 %133, 0
  br i1 %cmp73.not.i, label %if.end71.i.if.else120.i_crit_edge, label %if.end71.i.if.then75.i_crit_edge

if.end71.i.if.then75.i_crit_edge:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then75.i

if.end71.i.if.else120.i_crit_edge:                ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else120.i

if.then75.i:                                      ; preds = %if.end71.i.if.then75.i_crit_edge, %if.end71.thread.i
  %155 = ptrtoint ptr %aen_count.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %aen_count.i, align 4
  %inc.i = add i32 %156, 1
  store i32 %inc.i, ptr %aen_count.i, align 4
  %157 = ptrtoint ptr %aen_tail.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %aen_tail.i, align 1
  %idxprom.i375 = zext i8 %158 to i32
  %arrayidx76.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 28, i32 %idxprom.i375
  %159 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %133, ptr %arrayidx76.i, align 2
  %add.i = add i8 %158, 1
  store i8 %add.i, ptr %aen_tail.i, align 1
  %160 = ptrtoint ptr %aen_head.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %aen_head.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %161, i8 %add.i)
  %cmp92.i = icmp eq i8 %161, %add.i
  br i1 %cmp92.i, label %if.then94.i, label %if.then75.i.if.end108.i_crit_edge

if.then75.i.if.end108.i_crit_edge:                ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108.i

if.then94.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %add.i)
  %cmp97.i = icmp eq i8 %add.i, -1
  %add104.i = add i8 %158, 2
  %.sink.i = select i1 %cmp97.i, i8 0, i8 %add104.i
  %162 = ptrtoint ptr %aen_head.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %.sink.i, ptr %aen_head.i, align 4
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then94.i, %if.then75.i.if.end108.i_crit_edge
  %call109.i = call fastcc i32 @tw_aen_read_queue(ptr noundef %dev_instance, i32 noundef %and127) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %tobool.not.i = icmp eq i32 %call109.i, 0
  br i1 %tobool.not.i, label %if.end108.i.if.end254_crit_edge, label %do.end113.i

if.end108.i.if.end254_crit_edge:                  ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end254

do.end113.i:                                      ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #12
  %163 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %host, align 4
  %host_no116.i = getelementptr inbounds %struct.Scsi_Host, ptr %164, i32 0, i32 17
  %165 = ptrtoint ptr %host_no116.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %host_no116.i, align 4
  %call117.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.260, i32 noundef %166) #13
  %conv.i.i = trunc i32 %shr to i8
  %167 = ptrtoint ptr %free_tail.i433 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %free_tail.i433, align 1
  %idxprom.i.i = zext i8 %168 to i32
  %arrayidx.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 8, i32 %idxprom.i.i
  %169 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv.i.i, ptr %arrayidx.i.i, align 1
  %170 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 32, ptr %arrayidx143, align 4
  %171 = add i8 %168, 1
  store i8 %171, ptr %free_tail.i433, align 1
  br label %if.end254

if.else120.i:                                     ; preds = %if.end71.i.if.else120.i_crit_edge, %if.else44.i.if.else120.i_crit_edge
  %conv.i167.i = trunc i32 %shr to i8
  %172 = ptrtoint ptr %free_tail.i433 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %free_tail.i433, align 1
  %idxprom.i169.i = zext i8 %173 to i32
  %arrayidx.i170.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 8, i32 %idxprom.i169.i
  %174 = ptrtoint ptr %arrayidx.i170.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %conv.i167.i, ptr %arrayidx.i170.i, align 1
  %175 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 32, ptr %arrayidx143, align 4
  %176 = add i8 %173, 1
  store i8 %176, ptr %free_tail.i433, align 1
  br label %if.end254

do.end180:                                        ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  %call.i370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245) #13
  %177 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %host, align 4
  %host_no183 = getelementptr inbounds %struct.Scsi_Host, ptr %178, i32 0, i32 17
  %179 = ptrtoint ptr %host_no183 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %host_no183, align 4
  %call184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, i32 noundef %180) #13
  br label %if.end254

if.else186:                                       ; preds = %do.end171
  call void @__sanitizer_cov_trace_pc() #12
  %181 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile i32 -1, ptr %chrdev_request_id, align 4
  call void @__wake_up(ptr noundef %ioctl_wqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end254

if.else189:                                       ; preds = %do.end163
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %127, i32 0, i32 16
  %182 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cmnd, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %183, align 1
  %186 = zext i8 %185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.294)
  switch i8 %185, label %if.else189.if.then238.sink.split_crit_edge [
    i8 40, label %if.else189.sw.epilog_crit_edge
    i8 8, label %if.else189.sw.epilog_crit_edge465
    i8 42, label %if.else189.sw.epilog_crit_edge466
    i8 10, label %if.else189.sw.epilog_crit_edge467
    i8 0, label %do.end204
    i8 18, label %do.end209
    i8 37, label %do.end214
    i8 26, label %do.end219
    i8 53, label %if.else189.sw.epilog_crit_edge468
  ]

if.else189.sw.epilog_crit_edge468:                ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else189.sw.epilog_crit_edge467:                ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else189.sw.epilog_crit_edge466:                ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else189.sw.epilog_crit_edge465:                ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else189.sw.epilog_crit_edge:                   ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else189.if.then238.sink.split_crit_edge:       ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then238.sink.split

do.end204:                                        ; preds = %if.else189
  %arrayidx.i377 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 1, i32 %and127
  %187 = ptrtoint ptr %arrayidx.i377 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx.i377, align 4
  %cmp.i378 = icmp eq ptr %188, null
  br i1 %cmp.i378, label %do.end204.if.then238.sink.split_crit_edge, label %if.end.i384

do.end204.if.then238.sink.split_crit_edge:        ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then238.sink.split

if.end.i384:                                      ; preds = %do.end204
  %data.i381 = getelementptr inbounds %struct.TW_Param, ptr %188, i32 0, i32 3
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %127, i32 0, i32 1
  %189 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %device.i, align 4
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %190, i32 0, i32 16
  %191 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %id.i, align 8
  %arrayidx6.i = getelementptr i8, ptr %data.i381, i32 %192
  %193 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx6.i, align 1
  %195 = and i8 %194, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool.not.i383 = icmp eq i8 %195, 0
  %arrayidx19.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 3, i32 %192
  br i1 %tobool.not.i383, label %sw.epilog.thread452, label %sw.epilog.thread454

sw.epilog.thread454:                              ; preds = %if.end.i384
  call void @__sanitizer_cov_trace_pc() #12
  %196 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 1, ptr %arrayidx19.i, align 4
  br label %if.then245.sink.split

sw.epilog.thread452:                              ; preds = %if.end.i384
  call void @__sanitizer_cov_trace_pc() #12
  %197 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %arrayidx19.i, align 4
  br label %if.then245.sink.split

do.end209:                                        ; preds = %if.else189
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %request_buffer.i) #10
  %198 = call ptr @memset(ptr %request_buffer.i, i32 0, i32 36)
  %199 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 31, ptr %arrayidx3.i, align 1
  %200 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_storeN_noabort(i32 %200, i32 8)
  store i64 3708539962113663008, ptr %arrayidx4.i, align 1
  %device.i390 = getelementptr inbounds %struct.scsi_cmnd, ptr %127, i32 0, i32 1
  %201 = ptrtoint ptr %device.i390 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %device.i390, align 4
  %id.i391 = getelementptr inbounds %struct.scsi_device, ptr %202, i32 0, i32 16
  %203 = ptrtoint ptr %id.i391 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %id.i391, align 8
  %call.i392 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx5.i388, ptr noundef nonnull @.str.265, i32 noundef %204) #10
  %205 = call ptr @memcpy(ptr %arrayidx7.i, ptr @.str.2, i32 3)
  %206 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx165, align 4
  %sdb.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %207, i32 0, i32 17
  %208 = ptrtoint ptr %sdb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %sdb.i.i.i.i, align 4
  %nents.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %207, i32 0, i32 17, i32 0, i32 1
  %210 = ptrtoint ptr %nents.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %nents.i.i.i.i, align 4
  %call2.i.i.i = call i32 @sg_copy_from_buffer(ptr noundef %209, i32 noundef %211, ptr noundef nonnull %request_buffer.i, i32 noundef 36) #10
  %arrayidx9.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 1, i32 %and127
  %212 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx9.i, align 4
  %cmp.i393 = icmp eq ptr %213, null
  br i1 %cmp.i393, label %do.end12.i, label %if.end.i397

do.end12.i:                                       ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266) #13
  br label %tw_scsiop_inquiry_complete.exit

if.end.i397:                                      ; preds = %do.end209
  %data.i394 = getelementptr inbounds %struct.TW_Param, ptr %213, i32 0, i32 3
  %214 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %arrayidx165, align 4
  %device17.i = getelementptr inbounds %struct.scsi_cmnd, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %device17.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %device17.i, align 4
  %id18.i = getelementptr inbounds %struct.scsi_device, ptr %217, i32 0, i32 16
  %218 = ptrtoint ptr %id18.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %id18.i, align 8
  %arrayidx19.i395 = getelementptr i8, ptr %data.i394, i32 %219
  %220 = ptrtoint ptr %arrayidx19.i395 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx19.i395, align 1
  %222 = and i8 %221, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool.not.i396 = icmp eq i8 %222, 0
  %arrayidx32.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 3, i32 %219
  br i1 %tobool.not.i396, label %if.else.i400, label %if.then20.i398

if.then20.i398:                                   ; preds = %if.end.i397
  call void @__sanitizer_cov_trace_pc() #12
  %223 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 1, ptr %arrayidx32.i, align 4
  br label %tw_scsiop_inquiry_complete.exit

if.else.i400:                                     ; preds = %if.end.i397
  call void @__sanitizer_cov_trace_pc() #12
  %224 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 0, ptr %arrayidx32.i, align 4
  %225 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx165, align 4
  %result.i399 = getelementptr inbounds %struct.scsi_cmnd, ptr %226, i32 0, i32 24
  %227 = ptrtoint ptr %result.i399 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 262144, ptr %result.i399, align 4
  br label %tw_scsiop_inquiry_complete.exit

tw_scsiop_inquiry_complete.exit:                  ; preds = %if.else.i400, %if.then20.i398, %do.end12.i
  %retval.0.i401 = phi i32 [ 1, %do.end12.i ], [ 0, %if.then20.i398 ], [ 3, %if.else.i400 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %request_buffer.i) #10
  br label %sw.epilog

do.end214:                                        ; preds = %if.else189
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buff.i) #10
  %228 = ptrtoint ptr %buff.i to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 512, ptr %buff.i, align 8
  %arrayidx.i402 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 1, i32 %and127
  %229 = ptrtoint ptr %arrayidx.i402 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %arrayidx.i402, align 4
  %cmp.i403 = icmp eq ptr %230, null
  br i1 %cmp.i403, label %do.end3.i405, label %if.end.i417

do.end3.i405:                                     ; preds = %do.end214
  call void @__sanitizer_cov_trace_pc() #12
  %call.i404 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268) #13
  br label %tw_scsiop_read_capacity_complete.exit

if.end.i417:                                      ; preds = %do.end214
  call void @__sanitizer_cov_trace_pc() #12
  %data.i406 = getelementptr inbounds %struct.TW_Param, ptr %230, i32 0, i32 3
  %arrayidx5.i407 = getelementptr %struct.TW_Param, ptr %230, i32 1, i32 1
  %231 = ptrtoint ptr %arrayidx5.i407 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx5.i407, align 1
  %conv.i408 = zext i8 %232 to i32
  %shl.i = shl nuw i32 %conv.i408, 24
  %arrayidx6.i409 = getelementptr i8, ptr %data.i406, i32 2
  %233 = ptrtoint ptr %arrayidx6.i409 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx6.i409, align 1
  %conv7.i = zext i8 %234 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 16
  %or.i = or i32 %shl8.i, %shl.i
  %arrayidx9.i410 = getelementptr %struct.TW_Param, ptr %230, i32 1
  %235 = ptrtoint ptr %arrayidx9.i410 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx9.i410, align 1
  %conv10.i = zext i8 %236 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 8
  %or12.i = or i32 %or.i, %shl11.i
  %237 = ptrtoint ptr %data.i406 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %data.i406, align 1
  %conv14.i = zext i8 %238 to i32
  %or15.i = or i32 %or12.i, %conv14.i
  %sub.i411 = add i32 %or15.i, -1
  %shr.i412 = lshr i32 %sub.i411, 24
  %conv19.i = trunc i32 %shr.i412 to i8
  %239 = ptrtoint ptr %buff.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %conv19.i, ptr %buff.i, align 8
  %shr21.i = lshr i32 %sub.i411, 16
  %conv22.i = trunc i32 %shr21.i to i8
  %240 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv22.i, ptr %62, align 1
  %shr24.i = lshr i32 %sub.i411, 8
  %conv26.i = trunc i32 %shr24.i to i8
  %241 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %conv26.i, ptr %61, align 2
  %conv29.i = trunc i32 %sub.i411 to i8
  %242 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %conv29.i, ptr %60, align 1
  %sdb.i.i.i.i414 = getelementptr inbounds %struct.scsi_cmnd, ptr %127, i32 0, i32 17
  %243 = ptrtoint ptr %sdb.i.i.i.i414 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %sdb.i.i.i.i414, align 4
  %nents.i.i.i.i415 = getelementptr inbounds %struct.scsi_cmnd, ptr %127, i32 0, i32 17, i32 0, i32 1
  %245 = ptrtoint ptr %nents.i.i.i.i415 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %nents.i.i.i.i415, align 4
  %call2.i.i.i416 = call i32 @sg_copy_from_buffer(ptr noundef %244, i32 noundef %246, ptr noundef nonnull %buff.i, i32 noundef 8) #10
  br label %tw_scsiop_read_capacity_complete.exit

tw_scsiop_read_capacity_complete.exit:            ; preds = %if.end.i417, %do.end3.i405
  %retval.0.i418 = phi i32 [ 1, %do.end3.i405 ], [ 0, %if.end.i417 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buff.i) #10
  br label %sw.epilog

do.end219:                                        ; preds = %if.else189
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %request_buffer.i419) #10
  %arrayidx.i420 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 1, i32 %and127
  %247 = ptrtoint ptr %arrayidx.i420 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %arrayidx.i420, align 4
  %cmp.i421 = icmp eq ptr %248, null
  br i1 %cmp.i421, label %do.end3.i423, label %if.end.i430

do.end3.i423:                                     ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #12
  %call.i422 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.270) #13
  br label %tw_scsiop_mode_sense_complete.exit

if.end.i430:                                      ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #12
  %data.i424 = getelementptr inbounds %struct.TW_Param, ptr %248, i32 0, i32 3
  %249 = ptrtoint ptr %request_buffer.i419 to i32
  call void @__asan_store8_noabort(i32 %249)
  store i64 1080881502889836544, ptr %request_buffer.i419, align 8
  %250 = ptrtoint ptr %data.i424 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %data.i424, align 1
  %252 = and i8 %251, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool.not.i425 = icmp eq i8 %252, 0
  %..i = select i1 %tobool.not.i425, i8 1, i8 5
  %253 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %..i, ptr %59, align 2
  %sdb.i.i.i.i427 = getelementptr inbounds %struct.scsi_cmnd, ptr %127, i32 0, i32 17
  %254 = ptrtoint ptr %sdb.i.i.i.i427 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %sdb.i.i.i.i427, align 4
  %nents.i.i.i.i428 = getelementptr inbounds %struct.scsi_cmnd, ptr %127, i32 0, i32 17, i32 0, i32 1
  %256 = ptrtoint ptr %nents.i.i.i.i428 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %nents.i.i.i.i428, align 4
  %call2.i.i.i429 = call i32 @sg_copy_from_buffer(ptr noundef %255, i32 noundef %257, ptr noundef nonnull %request_buffer.i419, i32 noundef 8) #10
  br label %tw_scsiop_mode_sense_complete.exit

tw_scsiop_mode_sense_complete.exit:               ; preds = %if.end.i430, %do.end3.i423
  %retval.0.i431 = phi i32 [ 1, %do.end3.i423 ], [ 0, %if.end.i430 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %request_buffer.i419) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %tw_scsiop_mode_sense_complete.exit, %tw_scsiop_read_capacity_complete.exit, %tw_scsiop_inquiry_complete.exit, %if.else189.sw.epilog_crit_edge, %if.else189.sw.epilog_crit_edge465, %if.else189.sw.epilog_crit_edge466, %if.else189.sw.epilog_crit_edge467, %if.else189.sw.epilog_crit_edge468
  %error.2 = phi i32 [ %retval.0.i431, %tw_scsiop_mode_sense_complete.exit ], [ %retval.0.i418, %tw_scsiop_read_capacity_complete.exit ], [ %retval.0.i401, %tw_scsiop_inquiry_complete.exit ], [ %error.1, %if.else189.sw.epilog_crit_edge ], [ %error.1, %if.else189.sw.epilog_crit_edge465 ], [ %error.1, %if.else189.sw.epilog_crit_edge466 ], [ %error.1, %if.else189.sw.epilog_crit_edge467 ], [ %error.1, %if.else189.sw.epilog_crit_edge468 ]
  %258 = zext i32 %error.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %258, ptr @__sancov_gen_cov_switch_values.295)
  switch i32 %error.2, label %sw.epilog.if.then245_crit_edge [
    i32 0, label %sw.epilog.if.then245.sink.split_crit_edge
    i32 1, label %sw.epilog.if.then238_crit_edge
    i32 2, label %sw.epilog.if.end254_crit_edge
  ]

sw.epilog.if.end254_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end254

sw.epilog.if.then238_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then238

sw.epilog.if.then245.sink.split_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then245.sink.split

sw.epilog.if.then245_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then245

if.then238.sink.split:                            ; preds = %do.end204.if.then238.sink.split_crit_edge, %if.else189.if.then238.sink.split_crit_edge
  %.str.262.sink = phi ptr [ @.str.262, %do.end204.if.then238.sink.split_crit_edge ], [ @.str.229, %if.else189.if.then238.sink.split_crit_edge ]
  %call.i379 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.262.sink) #13
  br label %if.then238

if.then238:                                       ; preds = %if.then238.sink.split, %sw.epilog.if.then238_crit_edge
  br label %if.then245.sink.split

if.then245.sink.split:                            ; preds = %if.then238, %sw.epilog.if.then245.sink.split_crit_edge, %sw.epilog.thread452, %sw.epilog.thread454
  %.sink = phi i32 [ 262144, %sw.epilog.thread452 ], [ 2, %if.then238 ], [ 0, %sw.epilog.thread454 ], [ %error.2, %sw.epilog.if.then245.sink.split_crit_edge ]
  %259 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %arrayidx165, align 4
  %result.i385 = getelementptr inbounds %struct.scsi_cmnd, ptr %260, i32 0, i32 24
  %261 = ptrtoint ptr %result.i385 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %.sink, ptr %result.i385, align 4
  br label %if.then245

if.then245:                                       ; preds = %if.then245.sink.split, %sw.epilog.if.then245_crit_edge
  %262 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx165, align 4
  call void @scsi_dma_unmap(ptr noundef %263) #10
  %264 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %arrayidx165, align 4
  call void @scsi_done(ptr noundef %265) #10
  %conv.i432 = trunc i32 %shr to i8
  %266 = ptrtoint ptr %free_tail.i433 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %free_tail.i433, align 1
  %idxprom.i434 = zext i8 %267 to i32
  %arrayidx.i435 = getelementptr %struct.TAG_TW_Device_Extension, ptr %dev_instance, i32 0, i32 8, i32 %idxprom.i434
  %268 = ptrtoint ptr %arrayidx.i435 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %conv.i432, ptr %arrayidx.i435, align 1
  %269 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 32, ptr %arrayidx143, align 4
  %270 = add i8 %267, 1
  store i8 %270, ptr %free_tail.i433, align 1
  %271 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %posted_request_count, align 4
  %dec252 = add i32 %272, -1
  store i32 %dec252, ptr %posted_request_count, align 4
  br label %if.end254

if.end254:                                        ; preds = %if.then245, %sw.epilog.if.end254_crit_edge, %if.else186, %do.end180, %if.else120.i, %do.end113.i, %if.end108.i.if.end254_crit_edge
  %273 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %dev_instance, align 4
  %add257 = add i32 %274, 4
  %and258 = and i32 %add257, 1048575
  %add259 = or i32 %and258, -18874368
  %275 = inttoptr i32 %add259 to ptr
  %276 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %275) #10, !srcloc !539
  %277 = call i32 @llvm.bswap.i32(i32 %276)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !557
  %278 = and i32 %277, 15736840
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %278)
  %.not456 = icmp eq i32 %278, 8192
  br i1 %.not456, label %if.end254.if.end280_crit_edge, label %do.end268

if.end254.if.end280_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end280

do.end268:                                        ; preds = %if.end254
  %call269 = call fastcc i32 @tw_decode_bits(ptr noundef %dev_instance, i32 noundef %277, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %do.end268.if.end280_crit_edge, label %do.body272

do.end268.if.end280_crit_edge:                    ; preds = %do.end268
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end280

do.body272:                                       ; preds = %do.end268
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !558
  call void @arm_heavy_mb() #10
  %279 = ptrtoint ptr %dev_instance to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %dev_instance, align 4
  %and276 = and i32 %280, 1048575
  %add277 = or i32 %and276, -18874368
  %281 = inttoptr i32 %add277 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %281, i32 134274816) #10, !srcloc !534
  br label %tw_interrupt_bail

if.end280:                                        ; preds = %do.end268.if.end280_crit_edge, %if.end254.if.end280_crit_edge
  %and115 = and i32 %277, 16384
  %cmp116 = icmp eq i32 %and115, 0
  br i1 %cmp116, label %if.end280.while.body118_crit_edge, label %if.end280.tw_interrupt_bail_crit_edge

if.end280.tw_interrupt_bail_crit_edge:            ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw_interrupt_bail

if.end280.while.body118_crit_edge:                ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body118

tw_interrupt_bail:                                ; preds = %if.end280.tw_interrupt_bail_crit_edge, %do.body272, %if.end110.tw_interrupt_bail_crit_edge, %do.body15, %if.end.tw_interrupt_bail_crit_edge, %entry.tw_interrupt_bail_crit_edge
  %282 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %host, align 4
  %host_lock284 = getelementptr inbounds %struct.Scsi_Host, ptr %283, i32 0, i32 4
  %284 = ptrtoint ptr %host_lock284 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %host_lock284, align 4
  call void @_raw_spin_unlock(ptr noundef %285) #10
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #0

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
define internal i32 @tw_scsi_queue(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
entry:
  %request_buffer.i.i = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %2 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmnd.i, align 4
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 53
  %flags.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 4, i32 3, i32 0, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.tw_scsi_queue_lck.exit_crit_edge

entry.tw_scsi_queue_lck.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tw_scsi_queue_lck.exit

if.end.i:                                         ; preds = %entry
  %free_head.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 3, i32 40
  %11 = ptrtoint ptr %free_head.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %free_head.i.i, align 4
  %idxprom.i.i = zext i8 %12 to i32
  %arrayidx.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 8, i32 %idxprom.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %14 to i32
  %15 = add i8 %12, 1
  store i8 %15, ptr %free_head.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 14, i32 %conv.i.i
  %16 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %arrayidx5.i.i, align 4
  %srb.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 2, i32 50, i32 9, i32 1, i32 4, i32 6
  %arrayidx.i = getelementptr [256 x ptr], ptr %srb.i, i32 0, i32 %conv.i.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cmd, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %3, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.296)
  switch i8 %19, label %do.end40.i [
    i8 40, label %if.end.i.do.end.i_crit_edge
    i8 8, label %if.end.i.do.end.i_crit_edge8
    i8 42, label %if.end.i.do.end.i_crit_edge9
    i8 10, label %if.end.i.do.end.i_crit_edge10
    i8 0, label %do.end6.i
    i8 18, label %do.end11.i
    i8 37, label %do.end16.i
    i8 3, label %do.end21.i
    i8 26, label %do.end26.i
    i8 53, label %do.end31.i
    i8 -128, label %if.end.i.if.then47.sink.split.i_crit_edge
  ]

if.end.i.if.then47.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end.i.do.end.i_crit_edge10:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.do.end.i_crit_edge9:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.do.end.i_crit_edge8:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge8, %if.end.i.do.end.i_crit_edge9, %if.end.i.do.end.i_crit_edge10
  %arrayidx.i78.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 7, i32 %conv.i.i
  %21 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i78.i, align 4
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sdb.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %do.end.i.if.then47.sink.split.i_crit_edge, label %if.end.i.i

do.end.i.if.then47.sink.split.i_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end.i.i:                                       ; preds = %do.end.i
  %arrayidx6.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 4, i32 %conv.i.i
  %25 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx6.i.i, align 4
  %cmp.i.i = icmp eq ptr %26, null
  br i1 %cmp.i.i, label %if.end.i.i.if.then47.i_crit_edge, label %if.end11.i.i

if.end.i.i.if.then47.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  %cmnd.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 16
  %27 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmnd.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %31 = add i8 %30, -8
  %switch.and.i.i = and i8 %31, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i8 %switch.and.i.i, 0
  %32 = select i1 %switch.selectcmp.i.i, i8 98, i8 99
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %26, align 1
  %size.i.i = getelementptr inbounds %struct.TW_Command, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %size.i.i, align 1
  %request_id24.i.i = getelementptr inbounds %struct.TW_Command, ptr %26, i32 0, i32 2
  %35 = ptrtoint ptr %request_id24.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %14, ptr %request_id24.i.i, align 1
  %device.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %22, i32 0, i32 1
  %36 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.scsi_device, ptr %37, i32 0, i32 16
  %38 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id.i.i, align 8
  %40 = trunc i32 %39 to i8
  %conv25.i.i = and i8 %40, 15
  %unit__hostid.i.i = getelementptr inbounds %struct.TW_Command, ptr %26, i32 0, i32 3
  %41 = ptrtoint ptr %unit__hostid.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv25.i.i, ptr %unit__hostid.i.i, align 1
  %status.i.i = getelementptr inbounds %struct.TW_Command, ptr %26, i32 0, i32 4
  %42 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %status.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.TW_Command, ptr %26, i32 0, i32 5
  %43 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %flags.i.i, align 1
  %44 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmnd.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %47)
  %cmp29.i.i = icmp eq i8 %47, 42
  br i1 %cmp29.i.i, label %if.then31.i.i, label %if.end11.i.i.if.end46.i.i_crit_edge

if.end11.i.i.if.end46.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i.i

if.then31.i.i:                                    ; preds = %if.end11.i.i
  %arrayidx33.i.i = getelementptr i8, ptr %45, i32 1
  %48 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx33.i.i, align 1
  %50 = and i8 %49, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %if.then31.i.i.if.end46.i.i_crit_edge, label %if.then43.i.i

if.then31.i.i.if.end46.i.i_crit_edge:             ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i.i

if.then43.i.i:                                    ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %flags.i.i, align 1
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then43.i.i, %if.then31.i.i.if.end46.i.i_crit_edge, %if.end11.i.i.if.end46.i.i_crit_edge
  %53 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cmnd.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.297)
  switch i8 %56, label %if.else74.i.i [
    i8 8, label %if.end46.i.i.if.then58.i.i_crit_edge
    i8 10, label %if.end46.i.i.if.then58.i.i_crit_edge11
  ]

if.end46.i.i.if.then58.i.i_crit_edge11:           ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58.i.i

if.end46.i.i.if.then58.i.i_crit_edge:             ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then58.i.i

if.then58.i.i:                                    ; preds = %if.end46.i.i.if.then58.i.i_crit_edge, %if.end46.i.i.if.then58.i.i_crit_edge11
  %arrayidx60.i.i = getelementptr i8, ptr %54, i32 1
  %58 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx60.i.i, align 1
  %conv61.i.i = zext i8 %59 to i32
  %shl.i.i = shl nuw nsw i32 %conv61.i.i, 16
  %arrayidx63.i.i = getelementptr i8, ptr %54, i32 2
  %60 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx63.i.i, align 1
  %conv64.i.i = zext i8 %61 to i32
  %shl65.i.i = shl nuw nsw i32 %conv64.i.i, 8
  %or66.i.i = or i32 %shl65.i.i, %shl.i.i
  %arrayidx68.i.i = getelementptr i8, ptr %54, i32 3
  %62 = ptrtoint ptr %arrayidx68.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx68.i.i, align 1
  %conv69.i.i = zext i8 %63 to i32
  %or70.i.i = or i32 %or66.i.i, %conv69.i.i
  %arrayidx72.i.i = getelementptr i8, ptr %54, i32 4
  %64 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %65 to i32
  br label %if.end101.i.i

if.else74.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx76.i.i = getelementptr i8, ptr %54, i32 2
  %66 = ptrtoint ptr %arrayidx76.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx76.i.i, align 1
  %conv77.i.i = zext i8 %67 to i32
  %shl78.i.i = shl nuw i32 %conv77.i.i, 24
  %arrayidx80.i.i = getelementptr i8, ptr %54, i32 3
  %68 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx80.i.i, align 1
  %conv81.i.i = zext i8 %69 to i32
  %shl82.i.i = shl nuw nsw i32 %conv81.i.i, 16
  %or83.i.i = or i32 %shl82.i.i, %shl78.i.i
  %arrayidx85.i.i = getelementptr i8, ptr %54, i32 4
  %70 = ptrtoint ptr %arrayidx85.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx85.i.i, align 1
  %conv86.i.i = zext i8 %71 to i32
  %shl87.i.i = shl nuw nsw i32 %conv86.i.i, 8
  %or88.i.i = or i32 %or83.i.i, %shl87.i.i
  %arrayidx90.i.i = getelementptr i8, ptr %54, i32 5
  %72 = ptrtoint ptr %arrayidx90.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx90.i.i, align 1
  %conv91.i.i = zext i8 %73 to i32
  %or92.i.i = or i32 %or88.i.i, %conv91.i.i
  %arrayidx94.i.i = getelementptr i8, ptr %54, i32 8
  %74 = ptrtoint ptr %arrayidx94.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx94.i.i, align 1
  %conv95.i.i = zext i8 %75 to i32
  %arrayidx97.i.i = getelementptr i8, ptr %54, i32 7
  %76 = ptrtoint ptr %arrayidx97.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx97.i.i, align 1
  %conv98.i.i = zext i8 %77 to i32
  %shl99.i.i = shl nuw nsw i32 %conv98.i.i, 8
  %or100.i.i = or i32 %shl99.i.i, %conv95.i.i
  br label %if.end101.i.i

if.end101.i.i:                                    ; preds = %if.else74.i.i, %if.then58.i.i
  %lba.0.i.i = phi i32 [ %or70.i.i, %if.then58.i.i ], [ %or92.i.i, %if.else74.i.i ]
  %num_sectors.0.i.i = phi i32 [ %conv73.i.i, %if.then58.i.i ], [ %or100.i.i, %if.else74.i.i ]
  %sector_count.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 3, i32 50, i32 11, i32 0, i32 1
  %78 = ptrtoint ptr %sector_count.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %num_sectors.0.i.i, ptr %sector_count.i.i, align 4
  %max_sector_count.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 3, i32 50, i32 11, i32 1
  %79 = ptrtoint ptr %max_sector_count.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_sector_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num_sectors.0.i.i, i32 %80)
  %cmp103.i.i = icmp ugt i32 %num_sectors.0.i.i, %80
  br i1 %cmp103.i.i, label %if.then105.i.i, label %if.end101.i.i.do.end111.i.i_crit_edge

if.end101.i.i.do.end111.i.i_crit_edge:            ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end111.i.i

if.then105.i.i:                                   ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %max_sector_count.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %num_sectors.0.i.i, ptr %max_sector_count.i.i, align 4
  br label %do.end111.i.i

do.end111.i.i:                                    ; preds = %if.then105.i.i, %if.end101.i.i.do.end111.i.i_crit_edge
  %byte8.i.i = getelementptr inbounds %struct.TW_Command, ptr %26, i32 0, i32 7
  %82 = ptrtoint ptr %byte8.i.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %lba.0.i.i, ptr %byte8.i.i, align 1
  %conv113.i.i = trunc i32 %num_sectors.0.i.i to i16
  %byte6.i.i = getelementptr inbounds %struct.TW_Command, ptr %26, i32 0, i32 6
  %83 = ptrtoint ptr %byte6.i.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %conv113.i.i, ptr %byte6.i.i, align 1
  %call114.i.i = tail call i32 @scsi_dma_map(ptr noundef %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call114.i.i)
  %cmp115.i.i = icmp slt i32 %call114.i.i, 1
  br i1 %cmp115.i.i, label %do.end111.i.i.if.then47.i_crit_edge, label %for.body.preheader.i.i

do.end111.i.i.if.then47.i_crit_edge:              ; preds = %do.end111.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.i

for.body.preheader.i.i:                           ; preds = %do.end111.i.i
  %84 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i78.i, align 4
  %sdb.i220.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %85, i32 0, i32 17
  %86 = ptrtoint ptr %sdb.i220.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sdb.i220.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %sg.0223.i.i = phi ptr [ %call132.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %87, %for.body.preheader.i.i ]
  %i.0222.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0223.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_address.i.i, align 4
  %arrayidx125.i.i = getelementptr %struct.TW_Command, ptr %26, i32 0, i32 7, i32 0, i32 1, i32 %i.0222.i.i
  %90 = ptrtoint ptr %arrayidx125.i.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %89, ptr %arrayidx125.i.i, align 1
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0223.i.i, i32 0, i32 4
  %91 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma_length.i.i, align 4
  %length.i.i = getelementptr %struct.TW_Command, ptr %26, i32 0, i32 7, i32 0, i32 1, i32 %i.0222.i.i, i32 1
  %93 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %92, ptr %length.i.i, align 1
  %94 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %size.i.i, align 1
  %add.i.i = add i8 %95, 2
  store i8 %add.i.i, ptr %size.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.0222.i.i, 1
  %call132.i.i = tail call ptr @sg_next(ptr noundef %sg.0223.i.i) #10
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call114.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %96 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i78.i, align 4
  %nents.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %97, i32 0, i32 17, i32 0, i32 1
  %98 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nents.i.i.i, align 4
  %sgl_entries.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 3, i32 50, i32 10, i32 5, i32 7
  %100 = ptrtoint ptr %sgl_entries.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %sgl_entries.i.i, align 4
  %max_sgl_entries.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 3, i32 50, i32 10, i32 5, i32 6
  %101 = ptrtoint ptr %max_sgl_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %max_sgl_entries.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %102)
  %cmp137.i.i = icmp ugt i32 %99, %102
  br i1 %cmp137.i.i, label %if.then139.i.i, label %for.end.i.i.if.end142.i.i_crit_edge

for.end.i.i.if.end142.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end142.i.i

if.then139.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %max_sgl_entries.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %99, ptr %max_sgl_entries.i.i, align 4
  br label %if.end142.i.i

if.end142.i.i:                                    ; preds = %if.then139.i.i, %for.end.i.i.if.end142.i.i_crit_edge
  %arrayidx143.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 5, i32 %conv.i.i
  %104 = ptrtoint ptr %arrayidx143.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx143.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp144.i.i = icmp eq i32 %105, 0
  br i1 %cmp144.i.i, label %if.end142.i.i.if.then47.i_crit_edge, label %if.end150.i.i

if.end142.i.i.if.then47.i_crit_edge:              ; preds = %if.end142.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.i

if.end150.i.i:                                    ; preds = %if.end142.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call151.i.i = tail call fastcc i32 @tw_post_command_packet(ptr noundef %hostdata.i, i32 noundef %conv.i.i) #10
  br label %tw_scsi_queue_lck.exit

do.end6.i:                                        ; preds = %if.end.i
  %arrayidx.i79.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 4, i32 %conv.i.i
  %106 = ptrtoint ptr %arrayidx.i79.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx.i79.i, align 4
  %cmp.i80.i = icmp eq ptr %107, null
  br i1 %cmp.i80.i, label %do.end6.i.if.then47.sink.split.i_crit_edge, label %if.end.i86.i

do.end6.i.if.then47.sink.split.i_crit_edge:       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end.i86.i:                                     ; preds = %do.end6.i
  %108 = getelementptr inbounds i8, ptr %107, i32 3
  %109 = call ptr @memset(ptr %108, i32 0, i32 509)
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 82, ptr %107, align 1
  %size.i81.i = getelementptr inbounds %struct.TW_Command, ptr %107, i32 0, i32 1
  %111 = ptrtoint ptr %size.i81.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 4, ptr %size.i81.i, align 1
  %request_id4.i.i = getelementptr inbounds %struct.TW_Command, ptr %107, i32 0, i32 2
  %112 = ptrtoint ptr %request_id4.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %14, ptr %request_id4.i.i, align 1
  %byte6.i84.i = getelementptr inbounds %struct.TW_Command, ptr %107, i32 0, i32 6
  %113 = ptrtoint ptr %byte6.i84.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 1, ptr %byte6.i84.i, align 1
  %arrayidx5.i85.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 1, i32 %conv.i.i
  %114 = ptrtoint ptr %arrayidx5.i85.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx5.i85.i, align 4
  %cmp6.i.i = icmp eq ptr %115, null
  br i1 %cmp6.i.i, label %if.end.i86.i.if.then47.sink.split.i_crit_edge, label %if.end14.i.i

if.end.i86.i.if.then47.sink.split.i_crit_edge:    ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end14.i.i:                                     ; preds = %if.end.i86.i
  %116 = getelementptr inbounds i8, ptr %115, i32 4
  %117 = call ptr @memset(ptr %116, i32 0, i32 508)
  %118 = ptrtoint ptr %115 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 3, ptr %115, align 1
  %parameter_id.i.i = getelementptr inbounds %struct.TW_Param, ptr %115, i32 0, i32 1
  %119 = ptrtoint ptr %parameter_id.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 3, ptr %parameter_id.i.i, align 1
  %parameter_size_bytes.i.i = getelementptr inbounds %struct.TW_Param, ptr %115, i32 0, i32 2
  %120 = ptrtoint ptr %parameter_size_bytes.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 16, ptr %parameter_size_bytes.i.i, align 1
  %arrayidx17.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 2, i32 %conv.i.i
  %121 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp18.i.i = icmp eq i32 %122, 0
  br i1 %cmp18.i.i, label %if.end14.i.i.if.then47.sink.split.i_crit_edge, label %if.end26.i.i

if.end14.i.i.if.then47.sink.split.i_crit_edge:    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end26.i.i:                                     ; preds = %if.end14.i.i
  %byte8.i87.i = getelementptr inbounds %struct.TW_Command, ptr %107, i32 0, i32 7
  %123 = ptrtoint ptr %byte8.i87.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 %122, ptr %byte8.i87.i, align 1
  %length.i88.i = getelementptr inbounds %struct.TW_Command, ptr %107, i32 0, i32 7, i32 0, i32 1
  %124 = ptrtoint ptr %length.i88.i to i32
  call void @__asan_storeN_noabort(i32 %124, i32 4)
  store i32 512, ptr %length.i88.i, align 1
  %arrayidx31.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 5, i32 %conv.i.i
  %125 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx31.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp32.i.i = icmp eq i32 %126, 0
  br i1 %cmp32.i.i, label %if.end26.i.i.if.then47.sink.split.i_crit_edge, label %if.end40.i.i

if.end26.i.i.if.then47.sink.split.i_crit_edge:    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end40.i.i:                                     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call41.i.i = tail call fastcc i32 @tw_post_command_packet(ptr noundef %hostdata.i, i32 noundef %conv.i.i) #10
  br label %tw_scsi_queue_lck.exit

do.end11.i:                                       ; preds = %if.end.i
  %arrayidx.i90.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 4, i32 %conv.i.i
  %127 = ptrtoint ptr %arrayidx.i90.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i90.i, align 4
  %cmp.i91.i = icmp eq ptr %128, null
  br i1 %cmp.i91.i, label %do.end11.i.if.then47.sink.split.i_crit_edge, label %if.end.i101.i

do.end11.i.if.then47.sink.split.i_crit_edge:      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end.i101.i:                                    ; preds = %do.end11.i
  %129 = getelementptr inbounds i8, ptr %128, i32 3
  %130 = call ptr @memset(ptr %129, i32 0, i32 509)
  %131 = ptrtoint ptr %128 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 82, ptr %128, align 1
  %size.i94.i = getelementptr inbounds %struct.TW_Command, ptr %128, i32 0, i32 1
  %132 = ptrtoint ptr %size.i94.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 4, ptr %size.i94.i, align 1
  %request_id4.i96.i = getelementptr inbounds %struct.TW_Command, ptr %128, i32 0, i32 2
  %133 = ptrtoint ptr %request_id4.i96.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %14, ptr %request_id4.i96.i, align 1
  %byte6.i98.i = getelementptr inbounds %struct.TW_Command, ptr %128, i32 0, i32 6
  %134 = ptrtoint ptr %byte6.i98.i to i32
  call void @__asan_storeN_noabort(i32 %134, i32 2)
  store i16 1, ptr %byte6.i98.i, align 1
  %arrayidx5.i99.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 1, i32 %conv.i.i
  %135 = ptrtoint ptr %arrayidx5.i99.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx5.i99.i, align 4
  %cmp6.i100.i = icmp eq ptr %136, null
  br i1 %cmp6.i100.i, label %if.end.i101.i.if.then47.sink.split.i_crit_edge, label %if.end14.i108.i

if.end.i101.i.if.then47.sink.split.i_crit_edge:   ; preds = %if.end.i101.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end14.i108.i:                                  ; preds = %if.end.i101.i
  %137 = getelementptr inbounds i8, ptr %136, i32 4
  %138 = call ptr @memset(ptr %137, i32 0, i32 508)
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 2)
  store i16 3, ptr %136, align 1
  %parameter_id.i104.i = getelementptr inbounds %struct.TW_Param, ptr %136, i32 0, i32 1
  %140 = ptrtoint ptr %parameter_id.i104.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 3, ptr %parameter_id.i104.i, align 1
  %parameter_size_bytes.i105.i = getelementptr inbounds %struct.TW_Param, ptr %136, i32 0, i32 2
  %141 = ptrtoint ptr %parameter_size_bytes.i105.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 16, ptr %parameter_size_bytes.i105.i, align 1
  %arrayidx17.i106.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 2, i32 %conv.i.i
  %142 = ptrtoint ptr %arrayidx17.i106.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx17.i106.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp18.i107.i = icmp eq i32 %143, 0
  br i1 %cmp18.i107.i, label %if.end14.i108.i.if.then47.sink.split.i_crit_edge, label %if.end26.i115.i

if.end14.i108.i.if.then47.sink.split.i_crit_edge: ; preds = %if.end14.i108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end26.i115.i:                                  ; preds = %if.end14.i108.i
  %byte8.i111.i = getelementptr inbounds %struct.TW_Command, ptr %128, i32 0, i32 7
  %144 = ptrtoint ptr %byte8.i111.i to i32
  call void @__asan_storeN_noabort(i32 %144, i32 4)
  store i32 %143, ptr %byte8.i111.i, align 1
  %length.i112.i = getelementptr inbounds %struct.TW_Command, ptr %128, i32 0, i32 7, i32 0, i32 1
  %145 = ptrtoint ptr %length.i112.i to i32
  call void @__asan_storeN_noabort(i32 %145, i32 4)
  store i32 512, ptr %length.i112.i, align 1
  %arrayidx31.i113.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 5, i32 %conv.i.i
  %146 = ptrtoint ptr %arrayidx31.i113.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx31.i113.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp32.i114.i = icmp eq i32 %147, 0
  br i1 %cmp32.i114.i, label %if.end26.i115.i.if.then47.sink.split.i_crit_edge, label %if.end40.i119.i

if.end26.i115.i.if.then47.sink.split.i_crit_edge: ; preds = %if.end26.i115.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end40.i119.i:                                  ; preds = %if.end26.i115.i
  call void @__sanitizer_cov_trace_pc() #12
  %call41.i118.i = tail call fastcc i32 @tw_post_command_packet(ptr noundef %hostdata.i, i32 noundef %conv.i.i) #10
  br label %tw_scsi_queue_lck.exit

do.end16.i:                                       ; preds = %if.end.i
  %arrayidx.i121.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 4, i32 %conv.i.i
  %148 = ptrtoint ptr %arrayidx.i121.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i121.i, align 4
  %cmp.i122.i = icmp eq ptr %149, null
  br i1 %cmp.i122.i, label %do.end16.i.if.then47.i_crit_edge, label %if.end.i133.i

do.end16.i.if.then47.i_crit_edge:                 ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.i

if.end.i133.i:                                    ; preds = %do.end16.i
  %150 = getelementptr inbounds i8, ptr %149, i32 3
  %151 = call ptr @memset(ptr %150, i32 0, i32 509)
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 82, ptr %149, align 1
  %size.i123.i = getelementptr inbounds %struct.TW_Command, ptr %149, i32 0, i32 1
  %153 = ptrtoint ptr %size.i123.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 4, ptr %size.i123.i, align 1
  %request_id4.i125.i = getelementptr inbounds %struct.TW_Command, ptr %149, i32 0, i32 2
  %154 = ptrtoint ptr %request_id4.i125.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %14, ptr %request_id4.i125.i, align 1
  %arrayidx5.i126.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 7, i32 %conv.i.i
  %155 = ptrtoint ptr %arrayidx5.i126.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx5.i126.i, align 4
  %device.i127.i = getelementptr inbounds %struct.scsi_cmnd, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %device.i127.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %device.i127.i, align 4
  %id.i128.i = getelementptr inbounds %struct.scsi_device, ptr %158, i32 0, i32 16
  %159 = ptrtoint ptr %id.i128.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %id.i128.i, align 8
  %161 = trunc i32 %160 to i8
  %conv6.i.i = and i8 %161, 15
  %162 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv6.i.i, ptr %150, align 1
  %status.i130.i = getelementptr inbounds %struct.TW_Command, ptr %149, i32 0, i32 4
  %163 = ptrtoint ptr %status.i130.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %status.i130.i, align 1
  %flags.i131.i = getelementptr inbounds %struct.TW_Command, ptr %149, i32 0, i32 5
  %164 = ptrtoint ptr %flags.i131.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %flags.i131.i, align 1
  %byte6.i132.i = getelementptr inbounds %struct.TW_Command, ptr %149, i32 0, i32 6
  %165 = ptrtoint ptr %byte6.i132.i to i32
  call void @__asan_storeN_noabort(i32 %165, i32 2)
  store i16 1, ptr %byte6.i132.i, align 1
  %arrayidx7.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 1, i32 %conv.i.i
  %166 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx7.i.i, align 4
  %cmp8.i.i = icmp eq ptr %167, null
  br i1 %cmp8.i.i, label %if.end.i133.i.if.then47.i_crit_edge, label %if.end14.i136.i

if.end.i133.i.if.then47.i_crit_edge:              ; preds = %if.end.i133.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.i

if.end14.i136.i:                                  ; preds = %if.end.i133.i
  %168 = call ptr @memset(ptr %167, i32 0, i32 512)
  %169 = ptrtoint ptr %arrayidx5.i126.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx5.i126.i, align 4
  %device19.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %device19.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %device19.i.i, align 4
  %id20.i.i = getelementptr inbounds %struct.scsi_device, ptr %172, i32 0, i32 16
  %173 = ptrtoint ptr %id20.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %id20.i.i, align 8
  %175 = trunc i32 %174 to i16
  %conv21.i.i = add i16 %175, 768
  %176 = ptrtoint ptr %167 to i32
  call void @__asan_storeN_noabort(i32 %176, i32 2)
  store i16 %conv21.i.i, ptr %167, align 1
  %parameter_id.i134.i = getelementptr inbounds %struct.TW_Param, ptr %167, i32 0, i32 1
  %177 = ptrtoint ptr %parameter_id.i134.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 4, ptr %parameter_id.i134.i, align 1
  %parameter_size_bytes.i135.i = getelementptr inbounds %struct.TW_Param, ptr %167, i32 0, i32 2
  %178 = ptrtoint ptr %parameter_size_bytes.i135.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 4, ptr %parameter_size_bytes.i135.i, align 1
  %arrayidx22.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 2, i32 %conv.i.i
  %179 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx22.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp23.i.i = icmp eq i32 %180, 0
  br i1 %cmp23.i.i, label %if.end14.i136.i.if.then47.i_crit_edge, label %if.end29.i.i

if.end14.i136.i.if.then47.i_crit_edge:            ; preds = %if.end14.i136.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.i

if.end29.i.i:                                     ; preds = %if.end14.i136.i
  %byte8.i137.i = getelementptr inbounds %struct.TW_Command, ptr %149, i32 0, i32 7
  %181 = ptrtoint ptr %byte8.i137.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 %180, ptr %byte8.i137.i, align 1
  %length.i138.i = getelementptr inbounds %struct.TW_Command, ptr %149, i32 0, i32 7, i32 0, i32 1
  %182 = ptrtoint ptr %length.i138.i to i32
  call void @__asan_storeN_noabort(i32 %182, i32 4)
  store i32 512, ptr %length.i138.i, align 1
  %arrayidx34.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 5, i32 %conv.i.i
  %183 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx34.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp35.i.i = icmp eq i32 %184, 0
  br i1 %cmp35.i.i, label %if.end29.i.i.if.then47.i_crit_edge, label %if.end41.i.i

if.end29.i.i.if.then47.i_crit_edge:               ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.i

if.end41.i.i:                                     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i139.i = tail call fastcc i32 @tw_post_command_packet(ptr noundef %hostdata.i, i32 noundef %conv.i.i) #10
  br label %tw_scsi_queue_lck.exit

do.end21.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %request_buffer.i.i) #10
  %185 = getelementptr inbounds [18 x i8], ptr %request_buffer.i.i, i32 0, i32 7
  %186 = getelementptr inbounds i8, ptr %request_buffer.i.i, i32 1
  %187 = call ptr @memset(ptr %186, i32 0, i32 17)
  %188 = ptrtoint ptr %request_buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 112, ptr %request_buffer.i.i, align 1
  %189 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 10, ptr %185, align 1
  %arrayidx.i.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 7, i32 %conv.i.i
  %190 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx.i.i.i, align 4
  %sdb.i.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %191, i32 0, i32 17
  %192 = ptrtoint ptr %sdb.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %sdb.i.i.i.i.i, align 4
  %nents.i.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %191, i32 0, i32 17, i32 0, i32 1
  %194 = ptrtoint ptr %nents.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %nents.i.i.i.i.i, align 4
  %call2.i.i.i.i = call i32 @sg_copy_from_buffer(ptr noundef %193, i32 noundef %195, ptr noundef nonnull %request_buffer.i.i, i32 noundef 18) #10
  %free_tail.i.i.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 10
  %196 = ptrtoint ptr %free_tail.i.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %free_tail.i.i.i, align 1
  %idxprom.i.i.i = zext i8 %197 to i32
  %arrayidx.i1.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 8, i32 %idxprom.i.i.i
  %198 = ptrtoint ptr %arrayidx.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %14, ptr %arrayidx.i1.i.i, align 1
  %199 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 32, ptr %arrayidx5.i.i, align 4
  %200 = add i8 %197, 1
  store i8 %200, ptr %free_tail.i.i.i, align 1
  %201 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i.i.i, align 4
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %202, i32 0, i32 24
  %203 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 458752, ptr %result.i.i, align 4
  %204 = load ptr, ptr %arrayidx.i.i.i, align 4
  call void @scsi_done(ptr noundef %204) #10
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %request_buffer.i.i) #10
  br label %tw_scsi_queue_lck.exit

do.end26.i:                                       ; preds = %if.end.i
  %arrayidx.i141.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 7, i32 %conv.i.i
  %205 = ptrtoint ptr %arrayidx.i141.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx.i141.i, align 4
  %cmnd.i142.i = getelementptr inbounds %struct.scsi_cmnd, ptr %206, i32 0, i32 16
  %207 = ptrtoint ptr %cmnd.i142.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cmnd.i142.i, align 4
  %arrayidx1.i.i = getelementptr i8, ptr %208, i32 2
  %209 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %210)
  %cmp.not.i.i = icmp eq i8 %210, 8
  br i1 %cmp.not.i.i, label %if.end.i149.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %free_tail.i.i145.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 10
  %211 = ptrtoint ptr %free_tail.i.i145.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %free_tail.i.i145.i, align 1
  %idxprom.i.i146.i = zext i8 %212 to i32
  %arrayidx.i.i147.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 8, i32 %idxprom.i.i146.i
  %213 = ptrtoint ptr %arrayidx.i.i147.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %14, ptr %arrayidx.i.i147.i, align 1
  %214 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 32, ptr %arrayidx5.i.i, align 4
  %215 = add i8 %212, 1
  store i8 %215, ptr %free_tail.i.i145.i, align 1
  %result.i148.i = getelementptr inbounds %struct.scsi_cmnd, ptr %206, i32 0, i32 24
  %216 = ptrtoint ptr %result.i148.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %result.i148.i, align 4
  %217 = ptrtoint ptr %arrayidx.i141.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx.i141.i, align 4
  tail call void @scsi_done(ptr noundef %218) #10
  br label %tw_scsi_queue_lck.exit

if.end.i149.i:                                    ; preds = %do.end26.i
  %arrayidx8.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 4, i32 %conv.i.i
  %219 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx8.i.i, align 4
  %cmp9.i.i = icmp eq ptr %220, null
  br i1 %cmp9.i.i, label %if.end.i149.i.if.then47.sink.split.i_crit_edge, label %if.end15.i.i

if.end.i149.i.if.then47.sink.split.i_crit_edge:   ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end15.i.i:                                     ; preds = %if.end.i149.i
  %221 = getelementptr inbounds i8, ptr %220, i32 3
  %222 = call ptr @memset(ptr %221, i32 0, i32 509)
  %223 = ptrtoint ptr %220 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 82, ptr %220, align 1
  %size.i151.i = getelementptr inbounds %struct.TW_Command, ptr %220, i32 0, i32 1
  %224 = ptrtoint ptr %size.i151.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 4, ptr %size.i151.i, align 1
  %request_id17.i.i = getelementptr inbounds %struct.TW_Command, ptr %220, i32 0, i32 2
  %225 = ptrtoint ptr %request_id17.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %14, ptr %request_id17.i.i, align 1
  %byte6.i153.i = getelementptr inbounds %struct.TW_Command, ptr %220, i32 0, i32 6
  %226 = ptrtoint ptr %byte6.i153.i to i32
  call void @__asan_storeN_noabort(i32 %226, i32 2)
  store i16 1, ptr %byte6.i153.i, align 1
  %arrayidx18.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 1, i32 %conv.i.i
  %227 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %arrayidx18.i.i, align 4
  %cmp19.i.i = icmp eq ptr %228, null
  br i1 %cmp19.i.i, label %if.end15.i.i.if.then47.sink.split.i_crit_edge, label %if.end27.i.i

if.end15.i.i.if.then47.sink.split.i_crit_edge:    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end27.i.i:                                     ; preds = %if.end15.i.i
  %229 = call ptr @memset(ptr %228, i32 0, i32 512)
  %230 = ptrtoint ptr %arrayidx.i141.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %arrayidx.i141.i, align 4
  %device.i154.i = getelementptr inbounds %struct.scsi_cmnd, ptr %231, i32 0, i32 1
  %232 = ptrtoint ptr %device.i154.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %device.i154.i, align 4
  %id.i155.i = getelementptr inbounds %struct.scsi_device, ptr %233, i32 0, i32 16
  %234 = ptrtoint ptr %id.i155.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %id.i155.i, align 8
  %236 = trunc i32 %235 to i16
  %conv32.i.i = add i16 %236, 768
  %237 = ptrtoint ptr %228 to i32
  call void @__asan_storeN_noabort(i32 %237, i32 2)
  store i16 %conv32.i.i, ptr %228, align 1
  %parameter_id.i156.i = getelementptr inbounds %struct.TW_Param, ptr %228, i32 0, i32 1
  %238 = ptrtoint ptr %parameter_id.i156.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 7, ptr %parameter_id.i156.i, align 1
  %parameter_size_bytes.i157.i = getelementptr inbounds %struct.TW_Param, ptr %228, i32 0, i32 2
  %239 = ptrtoint ptr %parameter_size_bytes.i157.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 1, ptr %parameter_size_bytes.i157.i, align 1
  %arrayidx33.i158.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 2, i32 %conv.i.i
  %240 = ptrtoint ptr %arrayidx33.i158.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx33.i158.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp34.i.i = icmp eq i32 %241, 0
  br i1 %cmp34.i.i, label %if.end27.i.i.if.then47.sink.split.i_crit_edge, label %if.end42.i.i

if.end27.i.i.if.then47.sink.split.i_crit_edge:    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end42.i.i:                                     ; preds = %if.end27.i.i
  %byte8.i160.i = getelementptr inbounds %struct.TW_Command, ptr %220, i32 0, i32 7
  %242 = ptrtoint ptr %byte8.i160.i to i32
  call void @__asan_storeN_noabort(i32 %242, i32 4)
  store i32 %241, ptr %byte8.i160.i, align 1
  %length.i161.i = getelementptr inbounds %struct.TW_Command, ptr %220, i32 0, i32 7, i32 0, i32 1
  %243 = ptrtoint ptr %length.i161.i to i32
  call void @__asan_storeN_noabort(i32 %243, i32 4)
  store i32 512, ptr %length.i161.i, align 1
  %arrayidx47.i.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 5, i32 %conv.i.i
  %244 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx47.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %cmp48.i.i = icmp eq i32 %245, 0
  br i1 %cmp48.i.i, label %if.end42.i.i.if.then47.sink.split.i_crit_edge, label %if.end56.i.i

if.end42.i.i.if.then47.sink.split.i_crit_edge:    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end56.i.i:                                     ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call57.i.i = tail call fastcc i32 @tw_post_command_packet(ptr noundef %hostdata.i, i32 noundef %conv.i.i) #10
  br label %tw_scsi_queue_lck.exit

do.end31.i:                                       ; preds = %if.end.i
  %arrayidx.i163.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 4, i32 %conv.i.i
  %246 = ptrtoint ptr %arrayidx.i163.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx.i163.i, align 4
  %cmp.i164.i = icmp eq ptr %247, null
  br i1 %cmp.i164.i, label %do.end31.i.if.then47.sink.split.i_crit_edge, label %if.end.i180.i

do.end31.i.if.then47.sink.split.i_crit_edge:      ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end.i180.i:                                    ; preds = %do.end31.i
  %248 = getelementptr inbounds i8, ptr %247, i32 3
  %249 = call ptr @memset(ptr %248, i32 0, i32 509)
  %250 = ptrtoint ptr %247 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 14, ptr %247, align 1
  %size.i167.i = getelementptr inbounds %struct.TW_Command, ptr %247, i32 0, i32 1
  %251 = ptrtoint ptr %size.i167.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 2, ptr %size.i167.i, align 1
  %request_id4.i169.i = getelementptr inbounds %struct.TW_Command, ptr %247, i32 0, i32 2
  %252 = ptrtoint ptr %request_id4.i169.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %14, ptr %request_id4.i169.i, align 1
  %arrayidx5.i170.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 7, i32 %conv.i.i
  %253 = ptrtoint ptr %arrayidx5.i170.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %arrayidx5.i170.i, align 4
  %device.i171.i = getelementptr inbounds %struct.scsi_cmnd, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %device.i171.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %device.i171.i, align 4
  %id.i172.i = getelementptr inbounds %struct.scsi_device, ptr %256, i32 0, i32 16
  %257 = ptrtoint ptr %id.i172.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %id.i172.i, align 8
  %259 = trunc i32 %258 to i8
  %conv6.i173.i = and i8 %259, 15
  %260 = ptrtoint ptr %248 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %conv6.i173.i, ptr %248, align 1
  %status.i175.i = getelementptr inbounds %struct.TW_Command, ptr %247, i32 0, i32 4
  %261 = ptrtoint ptr %status.i175.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 0, ptr %status.i175.i, align 1
  %flags.i176.i = getelementptr inbounds %struct.TW_Command, ptr %247, i32 0, i32 5
  %262 = ptrtoint ptr %flags.i176.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 0, ptr %flags.i176.i, align 1
  %byte6.i177.i = getelementptr inbounds %struct.TW_Command, ptr %247, i32 0, i32 6
  %263 = ptrtoint ptr %byte6.i177.i to i32
  call void @__asan_storeN_noabort(i32 %263, i32 2)
  store i16 1, ptr %byte6.i177.i, align 1
  %arrayidx7.i178.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 5, i32 %conv.i.i
  %264 = ptrtoint ptr %arrayidx7.i178.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx7.i178.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %cmp8.i179.i = icmp eq i32 %265, 0
  br i1 %cmp8.i179.i, label %if.end.i180.i.if.then47.sink.split.i_crit_edge, label %if.end16.i.i

if.end.i180.i.if.then47.sink.split.i_crit_edge:   ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then47.sink.split.i

if.end16.i.i:                                     ; preds = %if.end.i180.i
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i.i = tail call fastcc i32 @tw_post_command_packet(ptr noundef %hostdata.i, i32 noundef %conv.i.i) #10
  br label %tw_scsi_queue_lck.exit

do.end40.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %19 to i32
  %host42.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 3, i32 50, i32 11, i32 2
  %266 = ptrtoint ptr %host42.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %host42.i, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %267, i32 0, i32 17
  %268 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %host_no.i, align 4
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %269, i32 noundef %conv.i) #13
  %free_tail.i.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 10
  %270 = ptrtoint ptr %free_tail.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %free_tail.i.i, align 1
  %idxprom.i183.i = zext i8 %271 to i32
  %arrayidx.i184.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 8, i32 %idxprom.i183.i
  %272 = ptrtoint ptr %arrayidx.i184.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %14, ptr %arrayidx.i184.i, align 1
  %273 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 32, ptr %arrayidx5.i.i, align 4
  %274 = add i8 %271, 1
  store i8 %274, ptr %free_tail.i.i, align 1
  tail call void @scsi_build_sense(ptr noundef %cmd, i32 noundef 1, i8 noundef zeroext 5, i8 noundef zeroext 32, i8 noundef zeroext 0) #10
  tail call void @scsi_done(ptr noundef %cmd) #10
  br label %tw_scsi_queue_lck.exit

if.then47.sink.split.i:                           ; preds = %if.end.i180.i.if.then47.sink.split.i_crit_edge, %do.end31.i.if.then47.sink.split.i_crit_edge, %if.end42.i.i.if.then47.sink.split.i_crit_edge, %if.end27.i.i.if.then47.sink.split.i_crit_edge, %if.end15.i.i.if.then47.sink.split.i_crit_edge, %if.end.i149.i.if.then47.sink.split.i_crit_edge, %if.end26.i115.i.if.then47.sink.split.i_crit_edge, %if.end14.i108.i.if.then47.sink.split.i_crit_edge, %if.end.i101.i.if.then47.sink.split.i_crit_edge, %do.end11.i.if.then47.sink.split.i_crit_edge, %if.end26.i.i.if.then47.sink.split.i_crit_edge, %if.end14.i.i.if.then47.sink.split.i_crit_edge, %if.end.i86.i.if.then47.sink.split.i_crit_edge, %do.end6.i.if.then47.sink.split.i_crit_edge, %do.end.i.if.then47.sink.split.i_crit_edge, %if.end.i.if.then47.sink.split.i_crit_edge
  %.str.36.sink.i = phi ptr [ @.str.41, %do.end.i.if.then47.sink.split.i_crit_edge ], [ @.str.58, %do.end6.i.if.then47.sink.split.i_crit_edge ], [ @.str.61, %if.end.i86.i.if.then47.sink.split.i_crit_edge ], [ @.str.64, %if.end14.i.i.if.then47.sink.split.i_crit_edge ], [ @.str.67, %if.end26.i.i.if.then47.sink.split.i_crit_edge ], [ @.str.69, %do.end11.i.if.then47.sink.split.i_crit_edge ], [ @.str.72, %if.end.i101.i.if.then47.sink.split.i_crit_edge ], [ @.str.75, %if.end14.i108.i.if.then47.sink.split.i_crit_edge ], [ @.str.78, %if.end26.i115.i.if.then47.sink.split.i_crit_edge ], [ @.str.80, %if.end.i149.i.if.then47.sink.split.i_crit_edge ], [ @.str.83, %if.end15.i.i.if.then47.sink.split.i_crit_edge ], [ @.str.86, %if.end27.i.i.if.then47.sink.split.i_crit_edge ], [ @.str.89, %if.end42.i.i.if.then47.sink.split.i_crit_edge ], [ @.str.91, %do.end31.i.if.then47.sink.split.i_crit_edge ], [ @.str.94, %if.end.i180.i.if.then47.sink.split.i_crit_edge ], [ @.str.36, %if.end.i.if.then47.sink.split.i_crit_edge ]
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.36.sink.i) #13
  br label %if.then47.i

if.then47.i:                                      ; preds = %if.then47.sink.split.i, %if.end29.i.i.if.then47.i_crit_edge, %if.end14.i136.i.if.then47.i_crit_edge, %if.end.i133.i.if.then47.i_crit_edge, %do.end16.i.if.then47.i_crit_edge, %if.end142.i.i.if.then47.i_crit_edge, %do.end111.i.i.if.then47.i_crit_edge, %if.end.i.i.if.then47.i_crit_edge
  %free_tail.i187.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 10
  %275 = ptrtoint ptr %free_tail.i187.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %free_tail.i187.i, align 1
  %idxprom.i188.i = zext i8 %276 to i32
  %arrayidx.i189.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %hostdata.i, i32 0, i32 8, i32 %idxprom.i188.i
  %277 = ptrtoint ptr %arrayidx.i189.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %14, ptr %arrayidx.i189.i, align 1
  %278 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 32, ptr %arrayidx5.i.i, align 4
  %279 = add i8 %276, 1
  store i8 %279, ptr %free_tail.i187.i, align 1
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %280 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 458752, ptr %result.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #10
  br label %tw_scsi_queue_lck.exit

tw_scsi_queue_lck.exit:                           ; preds = %if.then47.i, %do.end40.i, %if.end16.i.i, %if.end56.i.i, %if.then.i.i, %do.end21.i, %if.end41.i.i, %if.end40.i119.i, %if.end40.i.i, %if.end150.i.i, %entry.tw_scsi_queue_lck.exit_crit_edge
  %retval.0.i = phi i32 [ 4181, %entry.tw_scsi_queue_lck.exit_crit_edge ], [ 0, %if.then47.i ], [ 0, %if.end16.i.i ], [ 0, %if.end56.i.i ], [ 0, %if.then.i.i ], [ 0, %if.end41.i.i ], [ 0, %if.end40.i119.i ], [ 0, %if.end40.i.i ], [ 0, %if.end150.i.i ], [ 0, %do.end40.i ], [ 0, %do.end21.i ]
  %281 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %host_lock, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %282, i32 noundef %call2) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw_scsi_eh_reset(ptr nocapture noundef readonly %SCpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %SCpnt, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %num_resets = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 3, i32 50, i32 11
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
  tail call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.96, ptr noundef %6, ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef %conv) #10
  %ioctl_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 3, i32 50, i32 11, i32 2, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ioctl_lock, i32 noundef 0) #10
  %call = tail call fastcc i32 @tw_reset_device_extension(ptr noundef %hostdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %host3 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 3, i32 50, i32 11, i32 2
  %11 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host3, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %host_no, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %14) #13
  br label %out

out:                                              ; preds = %do.end, %entry.out_crit_edge
  %retval1.0 = phi i32 [ 8195, %do.end ], [ 8194, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ioctl_lock) #10
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw_slave_configure(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_rq_timeout(ptr noundef %1, i32 noundef 6000) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #0

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @tw_scsi_biosparam(ptr nocapture noundef readnone %sdev, ptr nocapture noundef readnone %bdev, i64 noundef %capacity, ptr nocapture noundef writeonly %geom) #5 align 64 {
if.end179:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i64 %capacity to i32
  %conv1 = and i32 %0, 2047
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %capacity)
  %cmp181 = icmp ugt i64 %capacity, 4294967295
  br i1 %cmp181, label %if.then215, label %if.end179.do.end409_crit_edge

if.end179.do.end409_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end409

if.then215:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i64 %capacity, 11
  %conv218 = trunc i64 %shr to i32
  %1 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9040225091336153120, i64 %shr, i32 0) #15, !srcloc !559
  %asmresult.i578 = extractvalue { i64, i32 } %1, 0
  %asmresult4.i579 = extractvalue { i64, i32 } %1, 1
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9040225091336153120, i64 %shr, i64 %asmresult.i578, i32 %asmresult4.i579) #15, !srcloc !560
  %asmresult10.i580 = extractvalue { i64, i32 } %2, 0
  %div380577 = lshr i64 %asmresult10.i580, 13
  %conv381 = trunc i64 %div380577 to i32
  %mul382.neg = mul i32 %conv381, -16065
  %sub383 = add i32 %mul382.neg, %conv218
  br label %do.end409

do.end409:                                        ; preds = %if.then215, %if.end179.do.end409_crit_edge
  %cylinders.0 = phi i32 [ %conv1, %if.end179.do.end409_crit_edge ], [ %sub383, %if.then215 ]
  %sectors.0 = phi i32 [ 32, %if.end179.do.end409_crit_edge ], [ 63, %if.then215 ]
  %heads.0 = phi i32 [ 64, %if.end179.do.end409_crit_edge ], [ 255, %if.then215 ]
  %3 = ptrtoint ptr %geom to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %heads.0, ptr %geom, align 4
  %arrayidx410 = getelementptr i32, ptr %geom, i32 1
  %4 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sectors.0, ptr %arrayidx410, align 4
  %arrayidx411 = getelementptr i32, ptr %geom, i32 2
  %5 = ptrtoint ptr %arrayidx411 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cylinders.0, ptr %arrayidx411, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_build_sense(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tw_post_command_packet(ptr nocapture noundef %tw_dev, i32 noundef %request_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 5, i32 %request_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tw_dev, align 4
  %add = add i32 %3, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #10, !srcloc !539
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !561
  %7 = and i32 %6, 15736840
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %7)
  %.not = icmp eq i32 %7, 8192
  br i1 %.not, label %entry.if.end_crit_edge, label %do.end6

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call fastcc i32 @tw_decode_bits(ptr noundef %tw_dev, i32 noundef %6, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %do.end6, %entry.if.end_crit_edge
  %and8 = and i32 %6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp = icmp eq i32 %and8, 0
  br i1 %cmp, label %do.body10, label %if.else

do.body10:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !562
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %1)
  %9 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tw_dev, align 4
  %add14 = add i32 %10, 8
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %11 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %8) #10, !srcloc !534
  %arrayidx18 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14, i32 %request_id
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %arrayidx18, align 4
  %posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 15
  %13 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %posted_request_count, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %posted_request_count, align 4
  %max_posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 16
  %15 = ptrtoint ptr %max_posted_request_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_posted_request_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %16)
  %cmp20 = icmp ugt i32 %inc, %16
  br i1 %cmp20, label %if.then21, label %do.body10.cleanup_crit_edge

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %max_posted_request_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc, ptr %max_posted_request_count, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %arrayidx26 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14, i32 %request_id
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp27.not = icmp eq i32 %19, 8
  br i1 %cmp27.not, label %if.else.do.body53_crit_edge, label %if.then28

if.else.do.body53_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body53

if.then28:                                        ; preds = %if.else
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %arrayidx26, align 4
  %pending_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 18
  %21 = ptrtoint ptr %pending_request_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pending_request_count, align 4
  %inc31 = add i32 %22, 1
  store i32 %inc31, ptr %pending_request_count, align 4
  %max_pending_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 19
  %23 = ptrtoint ptr %max_pending_request_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_pending_request_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc31, i32 %24)
  %cmp33 = icmp ugt i32 %inc31, %24
  br i1 %cmp33, label %if.then34, label %if.then28.if.end37_crit_edge

if.then28.if.end37_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then34:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %max_pending_request_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %inc31, ptr %max_pending_request_count, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then28.if.end37_crit_edge
  %conv = trunc i32 %request_id to i8
  %pending_tail = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13
  %26 = ptrtoint ptr %pending_tail to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pending_tail, align 1
  %idxprom = zext i8 %27 to i32
  %arrayidx38 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 11, i32 %idxprom
  %28 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %arrayidx38, align 1
  %add48 = add i8 %27, 1
  store i8 %add48, ptr %pending_tail, align 1
  br label %do.body53

do.body53:                                        ; preds = %if.end37, %if.else.do.body53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !563
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tw_dev, align 4
  %and57 = and i32 %30, 1048575
  %add58 = or i32 %and57, -18874368
  %31 = inttoptr i32 %add58 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 8388608) #10, !srcloc !534
  br label %cleanup

cleanup:                                          ; preds = %do.body53, %if.then21, %do.body10.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body53 ], [ 0, %do.body10.cleanup_crit_edge ], [ 0, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tw_decode_bits(ptr nocapture noundef %tw_dev, i32 noundef %status_reg_value, i32 noundef %print_host) unnamed_addr #2 align 64 {
entry:
  %host = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %host) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print_host)
  %tobool.not = icmp eq i32 %print_host, 0
  %0 = call ptr @memset(ptr %host, i32 255, i32 16)
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %host1 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 26
  %1 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host1, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %host_no, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %host, ptr noundef nonnull @.str.43, i32 noundef %4)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %host to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %host, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %and = and i32 %status_reg_value, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end14_crit_edge, label %do.end6

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull %host) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !564
  call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tw_dev, align 4
  %and12 = and i32 %7, 1048575
  %add = or i32 %and12, -18874368
  %8 = inttoptr i32 %add to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 32768) #10, !srcloc !534
  br label %if.end14

if.end14:                                         ; preds = %do.end6, %if.end.if.end14_crit_edge
  %and15 = and i32 %status_reg_value, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end32_crit_edge, label %do.end20

if.end14.if.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull %host) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !565
  call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tw_dev, align 4
  %and28 = and i32 %10, 1048575
  %add29 = or i32 %and28, -18874368
  %11 = inttoptr i32 %add29 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 4096) #10, !srcloc !534
  %tw_pci_dev = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 6
  %12 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tw_pci_dev, align 4
  %call31 = call i32 @pci_write_config_word(ptr noundef %13, i32 noundef 6, i16 noundef zeroext 8192) #10
  br label %if.end32

if.end32:                                         ; preds = %do.end20, %if.end14.if.end32_crit_edge
  %and33 = and i32 %status_reg_value, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end49_crit_edge, label %do.end38

if.end32.if.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull %host) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !566
  call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tw_dev, align 4
  %and46 = and i32 %15, 1048575
  %add47 = or i32 %and46, -18874368
  %16 = inttoptr i32 %add47 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 16384) #10, !srcloc !534
  br label %if.end49

if.end49:                                         ; preds = %do.end38, %if.end32.if.end49_crit_edge
  %and50 = and i32 %status_reg_value, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end66_crit_edge, label %do.end55

if.end49.if.end66_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull %host) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !567
  call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tw_dev, align 4
  %and63 = and i32 %18, 1048575
  %add64 = or i32 %and63, -18874368
  %19 = inttoptr i32 %add64 to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 134217728) #10, !srcloc !534
  br label %if.end66

if.end66:                                         ; preds = %do.end55, %if.end49.if.end66_crit_edge
  %and67 = and i32 %status_reg_value, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.cleanup_crit_edge, label %if.then69

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then69:                                        ; preds = %if.end66
  %reset_print = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 32
  %20 = ptrtoint ptr %reset_print to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reset_print, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %do.end73, label %if.then69.cleanup_crit_edge

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end73:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull %host) #13
  %22 = ptrtoint ptr %reset_print to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %reset_print, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %if.then69.cleanup_crit_edge, %if.end66.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end73 ], [ 1, %if.then69.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %host) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tw_reset_device_extension(ptr noundef %tw_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 31
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !568
  tail call void @arm_heavy_mb() #10
  %0 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tw_dev, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 1073741824) #10, !srcloc !534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !569
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tw_dev, align 4
  %and9 = and i32 %4, 1048575
  %add10 = or i32 %and9, -18874368
  %5 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 512) #10, !srcloc !534
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 26
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock, align 4
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0107 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14, i32 %i.0107
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.298)
  switch i32 %11, label %if.then [
    i32 32, label %for.body.for.inc_crit_edge
    i32 1, label %for.body.for.inc_crit_edge111
    i32 16, label %for.body.for.inc_crit_edge112
  ]

for.body.for.inc_crit_edge112:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.for.inc_crit_edge111:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx34 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 7, i32 %i.0107
  %13 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx34, align 4
  %cmp35.not = icmp eq ptr %14, null
  br i1 %cmp35.not, label %if.then.for.inc_crit_edge, label %if.then37

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then37:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 524288, ptr %result, align 4
  tail call void @scsi_dma_unmap(ptr noundef nonnull %14) #10
  tail call void @scsi_done(ptr noundef nonnull %14) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then37, %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge111, %for.body.for.inc_crit_edge112
  %inc = add nuw nsw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.for.body42_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.body42_crit_edge:                     ; preds = %for.inc
  br label %for.body42

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.inc.for.body42_crit_edge
  %i.1109 = phi i32 [ %inc48, %for.body42.for.body42_crit_edge ], [ 0, %for.inc.for.body42_crit_edge ]
  %conv43 = trunc i32 %i.1109 to i8
  %arrayidx44 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 8, i32 %i.1109
  %16 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv43, ptr %arrayidx44, align 1
  %arrayidx46 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14, i32 %i.1109
  %17 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %arrayidx46, align 4
  %inc48 = add nuw nsw i32 %i.1109, 1
  %exitcond110.not = icmp eq i32 %inc48, 256
  br i1 %exitcond110.not, label %for.end49, label %for.body42.for.body42_crit_edge

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body42

for.end49:                                        ; preds = %for.body42
  %free_head = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 9
  %18 = ptrtoint ptr %free_head to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %free_head, align 4
  %free_tail = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 10
  %19 = ptrtoint ptr %free_tail to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %free_tail, align 1
  %posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 15
  %20 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %posted_request_count, align 4
  %pending_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 18
  %21 = ptrtoint ptr %pending_request_count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pending_request_count, align 4
  %pending_head = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 12
  %22 = ptrtoint ptr %pending_head to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %pending_head, align 2
  %pending_tail = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 13
  %23 = ptrtoint ptr %pending_tail to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %pending_tail, align 1
  %reset_print = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 32
  %24 = ptrtoint ptr %reset_print to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %reset_print, align 4
  %25 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host, align 4
  %host_lock51 = getelementptr inbounds %struct.Scsi_Host, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %host_lock51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host_lock51, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %call15) #10
  %call52 = tail call fastcc i32 @tw_reset_sequence(ptr noundef %tw_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool.not = icmp eq i32 %call52, 0
  br i1 %tobool.not, label %do.body61, label %do.end56

do.end56:                                         ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %host_no, align 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %32) #13
  br label %cleanup

do.body61:                                        ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !570
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tw_dev, align 4
  %and65 = and i32 %34, 1048575
  %add66 = or i32 %and65, -18874368
  %35 = inttoptr i32 %add66 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 -2143288320) #10, !srcloc !534
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags1) #10
  %chrdev_request_id = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 33
  %36 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 -1, ptr %chrdev_request_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body61, %do.end56
  %retval.0 = phi i32 [ 1, %do.end56 ], [ 0, %do.body61 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw_show_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host3 = getelementptr i8, ptr %dev, i32 7712
  %0 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host3, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %posted_request_count = getelementptr i8, ptr %dev, i32 7668
  %4 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %posted_request_count, align 4
  %max_posted_request_count = getelementptr i8, ptr %dev, i32 7672
  %6 = ptrtoint ptr %max_posted_request_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_posted_request_count, align 4
  %pending_request_count = getelementptr i8, ptr %dev, i32 7680
  %8 = ptrtoint ptr %pending_request_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pending_request_count, align 4
  %max_pending_request_count = getelementptr i8, ptr %dev, i32 7684
  %10 = ptrtoint ptr %max_pending_request_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_pending_request_count, align 4
  %sgl_entries = getelementptr i8, ptr %dev, i32 7692
  %12 = ptrtoint ptr %sgl_entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sgl_entries, align 4
  %max_sgl_entries = getelementptr i8, ptr %dev, i32 7688
  %14 = ptrtoint ptr %max_sgl_entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_sgl_entries, align 4
  %sector_count = getelementptr i8, ptr %dev, i32 7700
  %16 = ptrtoint ptr %sector_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sector_count, align 4
  %max_sector_count = getelementptr i8, ptr %dev, i32 7704
  %18 = ptrtoint ptr %max_sector_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_sector_count, align 4
  %num_resets = getelementptr i8, ptr %dev, i32 7696
  %20 = ptrtoint ptr %num_resets to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_resets, align 4
  %aen_count = getelementptr i8, ptr %dev, i32 7708
  %22 = ptrtoint ptr %aen_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %aen_count, align 4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.2, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23)
  %24 = ptrtoint ptr %host3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host3, align 4
  %host_lock9 = getelementptr inbounds %struct.Scsi_Host, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %host_lock9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host_lock9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %27, i32 noundef %call4) #10
  ret i32 %call7
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tw_allocate_memory(ptr nocapture noundef %tw_dev, i32 noundef %which) unnamed_addr #2 align 64 {
entry:
  %dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #10
  %0 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle, align 4, !annotation !571
  %tw_pci_dev = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 6
  %1 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tw_pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 131072, ptr noundef nonnull %dma_handle, i32 noundef 3264, i32 noundef 0) #10
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  %4 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tw_pci_dev, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %7)
  %cmp6 = icmp eq i16 %7, 4096
  %8 = select i1 %cmp6, i32 63, i32 3
  %rem = and i32 %8, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end17, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #13
  %9 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tw_pci_dev, align 4
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev15, i32 noundef 131072, ptr noundef nonnull %call.i, i32 noundef %12, i32 noundef 0) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %13 = call ptr @memset(ptr %call.i, i32 0, i32 131072)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %which)
  %switch = icmp ult i32 %which, 2
  br i1 %switch, label %for.body.preheader, label %do.end33

for.body.preheader:                               ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cond = icmp eq i32 %which, 0
  %14 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_handle, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.01 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul21 = shl i32 %i.01, 9
  %add = add i32 %15, %mul21
  br i1 %cond, label %sw.bb, label %sw.bb24

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 5, i32 %i.01
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %call.i, i32 %mul21
  %arrayidx23 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 4, i32 %i.01
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %arrayidx23, align 4
  br label %for.inc

sw.bb24:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx27 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 2, i32 %i.01
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %arrayidx27, align 4
  %add.ptr29 = getelementptr i8, ptr %call.i, i32 %mul21
  %arrayidx30 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 1, i32 %i.01
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr29, ptr %arrayidx30, align 4
  br label %for.inc

do.end33:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #13
  br label %cleanup

for.inc:                                          ; preds = %sw.bb24, %sw.bb
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end33, %do.end11, %do.end3
  %retval.0 = phi i32 [ 1, %do.end3 ], [ 1, %do.end11 ], [ 1, %do.end33 ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tw_initconnection(ptr nocapture noundef %tw_dev, i32 noundef %message_credits) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %command_packet_virtual_address = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 4
  %0 = ptrtoint ptr %command_packet_virtual_address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %command_packet_virtual_address, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %1, i32 3
  %3 = call ptr @memset(ptr %2, i32 0, i32 509)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %1, align 1
  %size = getelementptr inbounds %struct.TW_Command, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %size, align 1
  %request_id6 = getelementptr inbounds %struct.TW_Command, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %request_id6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %request_id6, align 1
  %status = getelementptr inbounds %struct.TW_Command, ptr %1, i32 0, i32 4
  %flags = getelementptr inbounds %struct.TW_Command, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %flags, align 1
  %conv7 = trunc i32 %message_credits to i16
  %byte6 = getelementptr inbounds %struct.TW_Command, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %byte6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %conv7, ptr %byte6, align 1
  %command_packet_physical_address = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 5
  %9 = ptrtoint ptr %command_packet_physical_address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %command_packet_physical_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %do.end14, label %do.body18

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201) #13
  br label %cleanup

do.body18:                                        ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !572
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tw_dev, align 4
  %add = add i32 %13, 8
  %and = and i32 %add, 1048575
  %add21 = or i32 %and, -18874368
  %14 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #10, !srcloc !534
  %call23 = tail call fastcc i32 @tw_poll_status_gone(ptr noundef %tw_dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %do.body18.cleanup_crit_edge

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %do.body18
  %15 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tw_dev, align 4
  %add28 = add i32 %16, 12
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %17 = inttoptr i32 %add30 to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #10, !srcloc !539
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !573
  %19 = and i32 %18, -267452416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp35.not = icmp eq i32 %19, 0
  br i1 %cmp35.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204) #13
  br label %cleanup

if.end43:                                         ; preds = %if.then26
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp46.not = icmp eq i8 %21, 0
  br i1 %cmp46.not, label %if.end43.cleanup_crit_edge, label %if.then48

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %command_packet_virtual_address to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %command_packet_virtual_address, align 4
  %host.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 26
  %24 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %host.i, align 4
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %host_no.i, align 4
  %status.i = getelementptr inbounds %struct.TW_Command, ptr %23, i32 0, i32 4
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %status.i, align 1
  %conv.i = zext i8 %29 to i32
  %flags.i = getelementptr inbounds %struct.TW_Command, ptr %23, i32 0, i32 5
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags.i, align 1
  %conv4.i = zext i8 %31 to i32
  %unit__hostid.i = getelementptr inbounds %struct.TW_Command, ptr %23, i32 0, i32 3
  %32 = ptrtoint ptr %unit__hostid.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %unit__hostid.i, align 1
  %34 = and i8 %33, 15
  %and.i = zext i8 %34 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, i32 noundef %27, i32 noundef %conv.i, i32 noundef %conv4.i, i32 noundef %and.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end43.cleanup_crit_edge, %do.end40, %do.body18.cleanup_crit_edge, %do.end14, %do.end3
  %retval.0 = phi i32 [ 1, %do.end3 ], [ 1, %do.end14 ], [ 1, %do.end40 ], [ 1, %if.then48 ], [ 0, %if.end43.cleanup_crit_edge ], [ 0, %do.body18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tw_poll_status_gone(ptr nocapture noundef %tw_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tw_dev, align 4
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %2 = inttoptr i32 %add2 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #10, !srcloc !539
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !574
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %6 = and i32 %4, 15736840
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %6)
  %.not = icmp eq i32 %6, 8192
  br i1 %.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call fastcc i32 @tw_decode_bits(ptr noundef %tw_dev, i32 noundef %4, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and63 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %cmp.not4 = icmp eq i32 %and63, 0
  br i1 %cmp.not4, label %if.end.out_crit_edge, label %while.body.lr.ph

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.lr.ph:                                 ; preds = %if.end
  %add20 = add i32 %5, 3000
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.body.lr.ph
  %7 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tw_dev, align 4
  %add9 = add i32 %8, 4
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %9 = inttoptr i32 %add11 to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #10, !srcloc !539
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !575
  %12 = and i32 %11, 15736840
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %12)
  %.not2 = icmp eq i32 %12, 8192
  br i1 %.not2, label %while.body.if.end19_crit_edge, label %if.then17

while.body.if.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call fastcc i32 @tw_decode_bits(ptr noundef %tw_dev, i32 noundef %11, i32 noundef 0)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %while.body.if.end19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add20, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp21 = icmp slt i32 %sub, 0
  br i1 %cmp21, label %if.end19.out_crit_edge, label %if.end23

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end23:                                         ; preds = %if.end19
  tail call void @msleep(i32 noundef 50) #10
  %and6 = and i32 %11, 16384
  %cmp.not = icmp eq i32 %and6, 0
  br i1 %cmp.not, label %if.end23.out_crit_edge, label %if.end23.while.body_crit_edge

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %if.end23.out_crit_edge, %if.end19.out_crit_edge, %if.end.out_crit_edge
  %retval1.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %if.end23.out_crit_edge ], [ 1, %if.end19.out_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tw_aen_read_queue(ptr nocapture noundef %tw_dev, i32 noundef %request_id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tw_dev, align 4
  %add = add i32 %1, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #10, !srcloc !539
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !576
  %5 = and i32 %4, 15736840
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %5)
  %.not = icmp eq i32 %5, 8192
  br i1 %.not, label %if.end, label %do.end6

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call fastcc i32 @tw_decode_bits(ptr noundef %tw_dev, i32 noundef %4, i32 noundef 1)
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 4, i32 %request_id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231) #13
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %8 = getelementptr inbounds i8, ptr %7, i32 3
  %9 = call ptr @memset(ptr %8, i32 0, i32 509)
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 82, ptr %7, align 1
  %size = getelementptr inbounds %struct.TW_Command, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %size, align 1
  %conv = trunc i32 %request_id to i8
  %request_id17 = getelementptr inbounds %struct.TW_Command, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %request_id17 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %request_id17, align 1
  %flags = getelementptr inbounds %struct.TW_Command, ptr %7, i32 0, i32 5
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %flags, align 1
  %byte6 = getelementptr inbounds %struct.TW_Command, ptr %7, i32 0, i32 6
  %14 = ptrtoint ptr %byte6 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 1, ptr %byte6, align 1
  %arrayidx18 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 5, i32 %request_id
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp19 = icmp eq i32 %16, 0
  br i1 %cmp19, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.234) #13
  br label %cleanup

if.end27:                                         ; preds = %if.end14
  %arrayidx28 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 1, i32 %request_id
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx28, align 4
  %cmp29 = icmp eq ptr %18, null
  br i1 %cmp29, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237) #13
  br label %cleanup

if.end37:                                         ; preds = %if.end27
  %19 = getelementptr inbounds i8, ptr %18, i32 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 508)
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 1025, ptr %18, align 1
  %parameter_id = getelementptr inbounds %struct.TW_Param, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %parameter_id to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %parameter_id, align 1
  %parameter_size_bytes = getelementptr inbounds %struct.TW_Param, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %parameter_size_bytes to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %parameter_size_bytes, align 1
  %arrayidx40 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 2, i32 %request_id
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp41 = icmp eq i32 %25, 0
  br i1 %cmp41, label %do.end46, label %if.end49

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240) #13
  br label %cleanup

if.end49:                                         ; preds = %if.end37
  %byte8 = getelementptr inbounds %struct.TW_Command, ptr %7, i32 0, i32 7
  %26 = ptrtoint ptr %byte8 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %byte8, align 1
  %length = getelementptr inbounds %struct.TW_Command, ptr %7, i32 0, i32 7, i32 0, i32 1
  %27 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 512, ptr %length, align 1
  %and54 = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %cmp55 = icmp eq i32 %and54, 0
  br i1 %cmp55, label %do.end60, label %do.end73

do.end60:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx61 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 7, i32 %request_id
  %28 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx61, align 4
  %arrayidx62 = getelementptr %struct.TAG_TW_Device_Extension, ptr %tw_dev, i32 0, i32 14, i32 %request_id
  %29 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %arrayidx62, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !577
  tail call void @arm_heavy_mb() #10
  %30 = tail call i32 @llvm.bswap.i32(i32 %16)
  %31 = ptrtoint ptr %tw_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tw_dev, align 4
  %add67 = add i32 %32, 8
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %33 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 %30) #10, !srcloc !534
  br label %cleanup

do.end73:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %do.end60, %do.end46, %do.end34, %do.end24, %do.end11, %do.end6
  %retval.0 = phi i32 [ 1, %do.end6 ], [ 1, %do.end11 ], [ 1, %do.end24 ], [ 1, %do.end34 ], [ 1, %do.end46 ], [ 0, %do.end60 ], [ 1, %do.end73 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw_chrdev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %dma_handle = alloca i32, align 4
  %data_buffer_length = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #10
  %0 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle, align 4, !annotation !571
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_buffer_length) #10
  %1 = ptrtoint ptr %data_buffer_length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %data_buffer_length, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %5, 1048575
  %arrayidx = getelementptr [32 x ptr], ptr @tw_device_extension_list, i32 0, i32 %and.i
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = inttoptr i32 %arg to ptr
  tail call void @mutex_lock_nested(ptr noundef nonnull @tw_mutex, i32 noundef 0) #10
  %ioctl_lock = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 27
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ioctl_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end8.i.i, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull @tw_mutex) #10
  br label %cleanup227

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.281, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 4, i32 -1226833920) #15, !srcloc !578
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !579

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data_buffer_length, i32 noundef 4) #10
  %10 = call i32 @llvm.read_register.i32(metadata !523) #10
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !580
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !581
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !582
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data_buffer_length, ptr noundef %8, i32 noundef 4) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !581
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !582
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end7, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !579

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i362 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i362
  %add.ptr.i.i = getelementptr i8, ptr %data_buffer_length, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i362)
  br label %out

if.end7:                                          ; preds = %if.end.i.i
  %14 = ptrtoint ptr %data_buffer_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_buffer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %15)
  %cmp = icmp ugt i32 %15, 262144
  br i1 %cmp, label %if.end7.out_crit_edge, label %if.end9

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9:                                          ; preds = %if.end7
  %add = add nuw nsw i32 %15, 511
  %and = and i32 %add, -512
  %tw_pci_dev = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 6
  %16 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tw_pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %sub = add nuw nsw i32 %and, 1024
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %sub, ptr noundef nonnull %dma_handle, i32 noundef 3264, i32 noundef 0) #10
  %cmp12 = icmp eq ptr %call.i, null
  br i1 %cmp12, label %if.end9.out_crit_edge, label %if.end14

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %if.end9
  %18 = ptrtoint ptr %data_buffer_length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_buffer_length, align 4
  %sub16 = add i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub16)
  %cmp9.i.i = icmp slt i32 %sub16, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end14
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out2_crit_edge, label %if.then27.i.i, !prof !579

land.rhs16.i.i.out2_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out2

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.279, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %out2

if.then.i.i.i:                                    ; preds = %if.end14
  call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %sub16, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.281, i32 noundef 156) #10
  %call.i.i312 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i312, label %if.then.i.i.i.if.end.i.i325_crit_edge, label %land.lhs.true.i.i315

if.then.i.i.i.if.end.i.i325_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i325

land.lhs.true.i.i315:                             ; preds = %if.then.i.i.i
  %20 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %sub16, i32 -1226833920) #15, !srcloc !578
  %asmresult.i.i313 = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i313)
  %cmp.i6.i314 = icmp eq i32 %asmresult.i.i313, 0
  br i1 %cmp.i6.i314, label %if.then.i7.i322, label %land.lhs.true.i.i315.if.end.i.i325_crit_edge, !prof !579

land.lhs.true.i.i315.if.end.i.i325_crit_edge:     ; preds = %land.lhs.true.i.i315
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i325

if.then.i7.i322:                                  ; preds = %land.lhs.true.i.i315
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i316 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef %sub16) #10
  %21 = call i32 @llvm.read_register.i32(metadata !523) #10
  %and.i.i.i.i.i.i317 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i317 to ptr
  %cpu_domain.i.i.i.i.i318 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i318) #9, !srcloc !580
  %and.i.i.i.i319 = and i32 %23, -13
  %or.i.i.i.i320 = or i32 %and.i.i.i.i319, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i320) #10, !srcloc !581
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !582
  %call1.i.i.i321 = call i32 @arm_copy_from_user(ptr noundef nonnull %call.i, ptr noundef %8, i32 noundef %sub16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #10, !srcloc !581
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !582
  br label %if.end.i.i325

if.end.i.i325:                                    ; preds = %if.then.i7.i322, %land.lhs.true.i.i315.if.end.i.i325_crit_edge, %if.then.i.i.i.if.end.i.i325_crit_edge
  %res.0.i.i323 = phi i32 [ %sub16, %if.then.i.i.i.if.end.i.i325_crit_edge ], [ %call1.i.i.i321, %if.then.i7.i322 ], [ %sub16, %land.lhs.true.i.i315.if.end.i.i325_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i323)
  %tobool4.not.i.i324 = icmp eq i32 %res.0.i.i323, 0
  br i1 %tobool4.not.i.i324, label %if.end20, label %if.then11.i.i328, !prof !579

if.then11.i.i328:                                 ; preds = %if.end.i.i325
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i326 = sub i32 %sub16, %res.0.i.i323
  %add.ptr.i.i327 = getelementptr i8, ptr %call.i, i32 %sub.i.i326
  %24 = call ptr @memset(ptr %add.ptr.i.i327, i32 0, i32 %res.0.i.i323)
  br label %out2

if.end20:                                         ; preds = %if.end.i.i325
  %firmware_command = getelementptr inbounds %struct.TAG_TW_New_Ioctl, ptr %call.i, i32 0, i32 2
  %25 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.299)
  switch i32 %cmd, label %if.end20.out2_crit_edge [
    i32 0, label %if.end20.sw.epilog215_crit_edge
    i32 28, label %do.end27
    i32 31, label %do.body67
  ]

if.end20.sw.epilog215_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog215

if.end20.out2_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %out2

do.end27:                                         ; preds = %if.end20
  %data_buffer = getelementptr inbounds %struct.TAG_TW_New_Ioctl, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %data_buffer_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_buffer_length, align 4
  %28 = call ptr @memset(ptr %data_buffer, i32 0, i32 %27)
  %host = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 26
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host_lock, align 4
  %call32 = call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #10
  %aen_head = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 29
  %33 = ptrtoint ptr %aen_head to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %aen_head, align 4
  %aen_tail = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 30
  %35 = ptrtoint ptr %aen_tail to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %aen_tail, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp39 = icmp eq i8 %34, %36
  br i1 %cmp39, label %do.end27.if.end57_crit_edge, label %if.else

do.end27.if.end57_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.else:                                          ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %conv37 = zext i8 %34 to i32
  %arrayidx43 = getelementptr %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 28, i32 %conv37
  %37 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx43, align 2
  %add53 = add i8 %34, 1
  %39 = ptrtoint ptr %aen_head to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %add53, ptr %aen_head, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else, %do.end27.if.end57_crit_edge
  %tw_aen_code.0 = phi i16 [ 0, %do.end27.if.end57_crit_edge ], [ %38, %if.else ]
  %40 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host, align 4
  %host_lock59 = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %host_lock59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %host_lock59, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %43, i32 noundef %call32) #10
  %44 = ptrtoint ptr %data_buffer to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %tw_aen_code.0, ptr %data_buffer, align 1
  br label %sw.epilog215

do.body67:                                        ; preds = %if.end20
  %host73 = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 26
  %45 = ptrtoint ptr %host73 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host73, align 4
  %host_lock74 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %host_lock74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host_lock74, align 4
  %call76 = call i32 @_raw_spin_lock_irqsave(ptr noundef %48) #10
  %free_head.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 9
  %49 = ptrtoint ptr %free_head.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %free_head.i, align 4
  %idxprom.i = zext i8 %50 to i32
  %arrayidx.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 8, i32 %idxprom.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %52 to i32
  %53 = add i8 %50, 1
  store i8 %53, ptr %free_head.i, align 4
  %arrayidx5.i = getelementptr %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 14, i32 %conv.i
  %54 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %arrayidx5.i, align 4
  %arrayidx81 = getelementptr %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 7, i32 %conv.i
  %55 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %arrayidx81, align 4
  %chrdev_request_id = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 33
  %56 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 %conv.i, ptr %chrdev_request_id, align 4
  %request_id84 = getelementptr inbounds %struct.TAG_TW_New_Ioctl, ptr %call.i, i32 0, i32 2, i32 2
  %57 = ptrtoint ptr %request_id84 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %52, ptr %request_id84, align 1
  %58 = ptrtoint ptr %firmware_command to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %firmware_command, align 1
  %60 = lshr i8 %59, 5
  %61 = zext i8 %60 to i32
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.300)
  switch i32 %61, label %do.body67.sw.epilog_crit_edge [
    i32 2, label %sw.bb88
    i32 3, label %sw.bb97
    i32 5, label %sw.bb110
  ]

do.body67.sw.epilog_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb88:                                          ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_handle, align 4
  %sub90 = add i32 %64, 1024
  %byte8 = getelementptr inbounds %struct.TAG_TW_New_Ioctl, ptr %call.i, i32 0, i32 2, i32 7
  %65 = ptrtoint ptr %byte8 to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %sub90, ptr %byte8, align 1
  %length = getelementptr inbounds %struct.TAG_TW_New_Ioctl, ptr %call.i, i32 0, i32 2, i32 7, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.bb97:                                          ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_handle, align 4
  %sub99 = add i32 %67, 1024
  %sgl102 = getelementptr inbounds %struct.TAG_TW_New_Ioctl, ptr %call.i, i32 0, i32 2, i32 7, i32 0, i32 1
  %68 = ptrtoint ptr %sgl102 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %sub99, ptr %sgl102, align 1
  %length109 = getelementptr inbounds %struct.TAG_TW_New_Ioctl, ptr %call.i, i32 0, i32 2, i32 7, i32 0, i32 1, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.bb110:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dma_handle, align 4
  %sub112 = add i32 %70, 1024
  %sg_list = getelementptr inbounds %struct.TAG_TW_New_Ioctl, ptr %call.i, i32 0, i32 2, i32 7, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %sg_list to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %sub112, ptr %sg_list, align 1
  %length117 = getelementptr inbounds %struct.TAG_TW_New_Ioctl, ptr %call.i, i32 0, i32 2, i32 7, i32 0, i32 1, i32 1, i32 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb110, %sw.bb97, %sw.bb88
  %length117.sink = phi ptr [ %length117, %sw.bb110 ], [ %length109, %sw.bb97 ], [ %length, %sw.bb88 ]
  %72 = ptrtoint ptr %length117.sink to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %and, ptr %length117.sink, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body67.sw.epilog_crit_edge
  %arrayidx118 = getelementptr %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 4, i32 %conv.i
  %73 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx118, align 4
  %75 = call ptr @memcpy(ptr %74, ptr %firmware_command, i32 512)
  %call120 = call fastcc i32 @tw_post_command_packet(ptr noundef %7, i32 noundef %conv.i)
  %76 = ptrtoint ptr %host73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %host73, align 4
  %host_lock122 = getelementptr inbounds %struct.Scsi_Host, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %host_lock122 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %host_lock122, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %79, i32 noundef %call76) #10
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 991) #10
  %80 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %chrdev_request_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %cmp130 = icmp eq i32 %81, -1
  br i1 %cmp130, label %sw.epilog.if.end170_crit_edge, label %if.then142

sw.epilog.if.end170_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

if.then142:                                       ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %82 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %ioctl_wqueue = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 34
  %call144370 = call i32 @prepare_to_wait_event(ptr noundef %ioctl_wqueue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %83 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %chrdev_request_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp147371 = icmp eq i32 %84, -1
  br i1 %cmp147371, label %if.then142.for.end_crit_edge, label %if.then142.cleanup_crit_edge

if.then142.cleanup_crit_edge:                     ; preds = %if.then142
  br label %cleanup

if.then142.for.end_crit_edge:                     ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then142.cleanup_crit_edge
  %__ret143.1372 = phi i32 [ %__ret143.1, %cleanup.cleanup_crit_edge ], [ 6000, %if.then142.cleanup_crit_edge ]
  %call167 = call i32 @schedule_timeout(i32 noundef %__ret143.1372) #10
  %call144 = call i32 @prepare_to_wait_event(ptr noundef %ioctl_wqueue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %85 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %chrdev_request_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %cmp147 = icmp eq i32 %86, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool153.not = icmp eq i32 %call167, 0
  %87 = select i1 %cmp147, i1 %tobool153.not, i1 false
  %__ret143.1 = select i1 %87, i32 1, i32 %call167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret143.1)
  %tobool160.not = icmp eq i32 %__ret143.1, 0
  %88 = select i1 %cmp147, i1 true, i1 %tobool160.not
  br i1 %88, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then142.for.end_crit_edge
  call void @finish_wait(ptr noundef %ioctl_wqueue, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end170

if.end170:                                        ; preds = %for.end, %sw.epilog.if.end170_crit_edge
  %89 = ptrtoint ptr %chrdev_request_id to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %chrdev_request_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp173.not = icmp eq i32 %90, -1
  br i1 %cmp173.not, label %if.end193, label %do.end178

do.end178:                                        ; preds = %if.end170
  %91 = ptrtoint ptr %host73 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %host73, align 4
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %92, i32 0, i32 17
  %93 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %host_no, align 4
  %call181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, i32 noundef %94, i32 noundef 31) #13
  %call182 = call fastcc i32 @tw_reset_device_extension(ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %do.end178.out2_crit_edge, label %do.end187

do.end178.out2_crit_edge:                         ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %out2

do.end187:                                        ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %host73 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %host73, align 4
  %host_no190 = getelementptr inbounds %struct.Scsi_Host, ptr %96, i32 0, i32 17
  %97 = ptrtoint ptr %host_no190 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %host_no190, align 4
  %call191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, i32 noundef %98) #13
  br label %out2

if.end193:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx118, align 4
  %101 = call ptr @memcpy(ptr %firmware_command, ptr %100, i32 512)
  %102 = ptrtoint ptr %host73 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %host73, align 4
  %host_lock205 = getelementptr inbounds %struct.Scsi_Host, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %host_lock205 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %host_lock205, align 4
  %call207 = call i32 @_raw_spin_lock_irqsave(ptr noundef %105) #10
  %posted_request_count = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 15
  %106 = ptrtoint ptr %posted_request_count to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %posted_request_count, align 4
  %dec = add i32 %107, -1
  store i32 %dec, ptr %posted_request_count, align 4
  %free_tail.i = getelementptr inbounds %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 10
  %108 = ptrtoint ptr %free_tail.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %free_tail.i, align 1
  %idxprom.i352 = zext i8 %109 to i32
  %arrayidx.i353 = getelementptr %struct.TAG_TW_Device_Extension, ptr %7, i32 0, i32 8, i32 %idxprom.i352
  %110 = ptrtoint ptr %arrayidx.i353 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %52, ptr %arrayidx.i353, align 1
  %111 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 32, ptr %arrayidx5.i, align 4
  %112 = add i8 %109, 1
  store i8 %112, ptr %free_tail.i, align 1
  %113 = ptrtoint ptr %host73 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %host73, align 4
  %host_lock214 = getelementptr inbounds %struct.Scsi_Host, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %host_lock214 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %host_lock214, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %116, i32 noundef %call207) #10
  br label %sw.epilog215

sw.epilog215:                                     ; preds = %if.end193, %if.end57, %if.end20.sw.epilog215_crit_edge
  %117 = ptrtoint ptr %data_buffer_length to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %data_buffer_length, align 4
  %sub217 = add i32 %118, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub217)
  %cmp9.i.i337 = icmp slt i32 %sub217, 0
  br i1 %cmp9.i.i337, label %land.rhs16.i.i340, label %if.then.i.i.i343

land.rhs16.i.i340:                                ; preds = %sw.epilog215
  %.b71.i.i339 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i339, label %land.rhs16.i.i340.out2_crit_edge, label %if.then27.i.i341, !prof !579

land.rhs16.i.i340.out2_crit_edge:                 ; preds = %land.rhs16.i.i340
  call void @__sanitizer_cov_trace_pc() #12
  br label %out2

if.then27.i.i341:                                 ; preds = %land.rhs16.i.i340
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.279, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %out2

if.then.i.i.i343:                                 ; preds = %sw.epilog215
  call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %sub217, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.281, i32 noundef 174) #10
  %call.i.i344 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i344, label %if.then.i.i.i343.copy_to_user.exit_crit_edge, label %if.end.i.i348

if.then.i.i.i343.copy_to_user.exit_crit_edge:     ; preds = %if.then.i.i.i343
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i348:                                    ; preds = %if.then.i.i.i343
  %119 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %sub217, i32 -1226833920) #15, !srcloc !583
  %asmresult.i.i346 = extractvalue { i32, i32 } %119, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i346)
  %cmp.i6.i347 = icmp eq i32 %asmresult.i.i346, 0
  br i1 %cmp.i6.i347, label %if.then2.i.i, label %if.end.i.i348.copy_to_user.exit_crit_edge

if.end.i.i348.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i348
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i348
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i349 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call.i, i32 noundef %sub217) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef nonnull %call.i, i32 noundef %sub217) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i348.copy_to_user.exit_crit_edge, %if.then.i.i.i343.copy_to_user.exit_crit_edge
  %n.addr.0.i350 = phi i32 [ %sub217, %if.then.i.i.i343.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %sub217, %if.end.i.i348.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i350)
  %tobool219.not = icmp eq i32 %n.addr.0.i350, 0
  %spec.select = select i1 %tobool219.not, i32 0, i32 -14
  br label %out2

out2:                                             ; preds = %copy_to_user.exit, %if.then27.i.i341, %land.rhs16.i.i340.out2_crit_edge, %do.end187, %do.end178.out2_crit_edge, %if.end20.out2_crit_edge, %if.then11.i.i328, %if.then27.i.i, %land.rhs16.i.i.out2_crit_edge
  %retval2.0 = phi i32 [ -5, %do.end187 ], [ -5, %do.end178.out2_crit_edge ], [ -25, %if.end20.out2_crit_edge ], [ -14, %if.then11.i.i328 ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out2_crit_edge ], [ -14, %if.then27.i.i341 ], [ -14, %land.rhs16.i.i340.out2_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  %120 = ptrtoint ptr %tw_pci_dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tw_pci_dev, align 4
  %dev223 = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  %122 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev223, i32 noundef %sub, ptr noundef nonnull %call.i, i32 noundef %123, i32 noundef 0) #10
  br label %out

out:                                              ; preds = %out2, %if.end9.out_crit_edge, %if.end7.out_crit_edge, %if.then11.i.i
  %retval2.1 = phi i32 [ %retval2.0, %out2 ], [ -22, %if.end7.out_crit_edge ], [ -12, %if.end9.out_crit_edge ], [ -14, %if.then11.i.i ]
  call void @mutex_unlock(ptr noundef %ioctl_lock) #10
  call void @mutex_unlock(ptr noundef nonnull @tw_mutex) #10
  br label %cleanup227

cleanup227:                                       ; preds = %out, %if.then
  %retval.0 = phi i32 [ -4, %if.then ], [ %retval2.1, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_buffer_length) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw_chrdev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %2 = load i32, ptr @tw_device_extension_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %2)
  %cmp.not = icmp ult i32 %and.i, %2
  %. = select i1 %cmp.not, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

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
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 268)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 268)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !186, !188, !190, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !206, !207, !209, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !374, !376, !377, !378, !380, !381, !382, !384, !385, !386, !388, !389, !390, !391, !393, !394, !395, !397, !398, !399, !401, !402, !403, !405, !406, !407, !409, !410, !411, !412, !414, !415, !416, !418, !419, !420, !422, !423, !424, !426, !427, !428, !430, !431, !432, !433, !435, !436, !437, !439, !440, !441, !443, !444, !445, !447, !448, !449, !451, !452, !453, !455, !456, !457, !458, !460, !462, !464, !465, !466, !467, !469, !470, !471, !472, !474, !475, !476, !477, !479, !481, !483, !485, !487, !488, !489, !490, !492, !493, !494, !496, !497, !498, !500, !501, !503, !505, !507, !508, !509, !510, !512, !513, !514, !516, !517, !518, !520, !521, !522}
!llvm.named.register.sp = !{!523}
!llvm.module.flags = !{!524, !525, !526, !527, !528, !529, !530, !531}
!llvm.ident = !{!532}

!0 = !{ptr @__UNIQUE_ID_author287, !1, !"__UNIQUE_ID_author287", i1 false, i1 false}
!1 = !{!"../drivers/scsi/3w-xxxx.c", i32 229, i32 1}
!2 = !{ptr @__UNIQUE_ID_description288, !3, !"__UNIQUE_ID_description288", i1 false, i1 false}
!3 = !{!"../drivers/scsi/3w-xxxx.c", i32 230, i32 1}
!4 = !{ptr @__UNIQUE_ID_file289, !5, !"__UNIQUE_ID_file289", i1 false, i1 false}
!5 = !{!"../drivers/scsi/3w-xxxx.c", i32 231, i32 1}
!6 = !{ptr @__UNIQUE_ID_license290, !5, !"__UNIQUE_ID_license290", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version291, !8, !"__UNIQUE_ID_version291", i1 false, i1 false}
!8 = !{!"../drivers/scsi/3w-xxxx.c", i32 232, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_3w_xxxx__292_2426_tw_init6, !14, !"__initcall__kmod_3w_xxxx__292_2426_tw_init6", i1 false, i1 false}
!14 = !{!"../drivers/scsi/3w-xxxx.c", i32 2426, i32 1}
!15 = !{ptr @__exitcall_tw_exit, !16, !"__exitcall_tw_exit", i1 false, i1 false}
!16 = !{!"../drivers/scsi/3w-xxxx.c", i32 2427, i32 1}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/3w-xxxx.c", i32 2405, i32 11}
!19 = !{ptr @tw_driver, !20, !"tw_driver", i1 false, i1 false}
!20 = !{!"../drivers/scsi/3w-xxxx.c", i32 2404, i32 26}
!21 = !{ptr @tw_pci_tbl, !22, !"tw_pci_tbl", i1 false, i1 false}
!22 = !{!"../drivers/scsi/3w-xxxx.c", i32 2394, i32 29}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/3w-xxxx.c", i32 2259, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tw_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @tw_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/3w-xxxx.c", i32 2267, i32 3}
!31 = !{ptr @tw_probe._entry.7, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @tw_probe._entry_ptr.9, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/3w-xxxx.c", i32 2273, i32 3}
!35 = !{ptr @tw_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tw_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/3w-xxxx.c", i32 2284, i32 3}
!39 = !{ptr @tw_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tw_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/3w-xxxx.c", i32 2292, i32 3}
!43 = !{ptr @tw_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tw_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/3w-xxxx.c", i32 2299, i32 3}
!47 = !{ptr @tw_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @tw_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/3w-xxxx.c", i32 2322, i32 3}
!51 = !{ptr @tw_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @tw_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/3w-xxxx.c", i32 2328, i32 2}
!55 = !{ptr @tw_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @tw_probe._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/3w-xxxx.c", i32 2333, i32 3}
!59 = !{ptr @tw_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tw_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/3w-xxxx.c", i32 2347, i32 40}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/3w-xxxx.c", i32 2348, i32 4}
!65 = !{ptr @tw_probe._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @tw_probe._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/3w-xxxx.c", i32 2234, i32 12}
!69 = !{ptr @driver_template, !70, !"driver_template", i1 false, i1 false}
!70 = !{!"../drivers/scsi/3w-xxxx.c", i32 2232, i32 34}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/scsi/3w-xxxx.c", i32 1974, i32 3}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @tw_scsi_queue_lck._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @tw_scsi_queue_lck._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/3w-xxxx.c", i32 1977, i32 3}
!78 = !{ptr @tw_scsi_queue_lck._entry.38, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @tw_scsi_queue_lck._entry_ptr.40, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/scsi/3w-xxxx.c", i32 1710, i32 3}
!82 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @tw_scsiop_read_write._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @tw_scsiop_read_write._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/3w-xxxx.c", i32 262, i32 17}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/3w-xxxx.c", i32 267, i32 3}
!89 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @tw_decode_bits._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @tw_decode_bits._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/3w-xxxx.c", i32 272, i32 3}
!94 = !{ptr @tw_decode_bits._entry.46, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @tw_decode_bits._entry_ptr.48, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/3w-xxxx.c", i32 278, i32 3}
!98 = !{ptr @tw_decode_bits._entry.49, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @tw_decode_bits._entry_ptr.51, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/3w-xxxx.c", i32 283, i32 3}
!102 = !{ptr @tw_decode_bits._entry.52, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @tw_decode_bits._entry_ptr.54, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/3w-xxxx.c", i32 289, i32 4}
!106 = !{ptr @tw_decode_bits._entry.55, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @tw_decode_bits._entry_ptr.57, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/3w-xxxx.c", i32 1855, i32 3}
!110 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @tw_scsiop_test_unit_ready._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @tw_scsiop_test_unit_ready._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/3w-xxxx.c", i32 1868, i32 3}
!115 = !{ptr @tw_scsiop_test_unit_ready._entry.60, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @tw_scsiop_test_unit_ready._entry_ptr.62, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/3w-xxxx.c", i32 1878, i32 3}
!119 = !{ptr @tw_scsiop_test_unit_ready._entry.63, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @tw_scsiop_test_unit_ready._entry_ptr.65, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.67, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/3w-xxxx.c", i32 1886, i32 3}
!123 = !{ptr @tw_scsiop_test_unit_ready._entry.66, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @tw_scsiop_test_unit_ready._entry_ptr.68, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.69, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/3w-xxxx.c", i32 1410, i32 3}
!127 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @tw_scsiop_inquiry._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @tw_scsiop_inquiry._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/3w-xxxx.c", i32 1423, i32 3}
!132 = !{ptr @tw_scsiop_inquiry._entry.71, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @tw_scsiop_inquiry._entry_ptr.73, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.75, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/3w-xxxx.c", i32 1433, i32 3}
!136 = !{ptr @tw_scsiop_inquiry._entry.74, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @tw_scsiop_inquiry._entry_ptr.76, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/3w-xxxx.c", i32 1441, i32 3}
!140 = !{ptr @tw_scsiop_inquiry._entry.77, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @tw_scsiop_inquiry._entry_ptr.79, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.80, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/3w-xxxx.c", i32 1517, i32 3}
!144 = !{ptr @.str.81, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @tw_scsiop_mode_sense._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @tw_scsiop_mode_sense._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.83, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/3w-xxxx.c", i32 1532, i32 3}
!149 = !{ptr @tw_scsiop_mode_sense._entry.82, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @tw_scsiop_mode_sense._entry_ptr.84, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.86, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/3w-xxxx.c", i32 1543, i32 3}
!153 = !{ptr @tw_scsiop_mode_sense._entry.85, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @tw_scsiop_mode_sense._entry_ptr.87, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.89, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/3w-xxxx.c", i32 1551, i32 3}
!157 = !{ptr @tw_scsiop_mode_sense._entry.88, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @tw_scsiop_mode_sense._entry_ptr.90, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.91, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/3w-xxxx.c", i32 1817, i32 3}
!161 = !{ptr @.str.92, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @tw_scsiop_synchronize_cache._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @tw_scsiop_synchronize_cache._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.94, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/3w-xxxx.c", i32 1832, i32 3}
!166 = !{ptr @tw_scsiop_synchronize_cache._entry.93, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @tw_scsiop_synchronize_cache._entry_ptr.95, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.96, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/3w-xxxx.c", i32 1378, i32 2}
!170 = !{ptr @.str.97, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.98, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/3w-xxxx.c", i32 1387, i32 3}
!173 = !{ptr @.str.99, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @tw_scsi_eh_reset._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @tw_scsi_eh_reset._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.100, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/3w-xxxx.c", i32 1331, i32 3}
!178 = !{ptr @.str.101, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @tw_reset_device_extension._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @tw_reset_device_extension._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @tw_host_groups, !182, !"tw_host_groups", i1 false, i1 false}
!182 = !{!"../drivers/scsi/3w-xxxx.c", i32 540, i32 1}
!183 = !{ptr @tw_host_group, !182, !"tw_host_group", i1 false, i1 false}
!184 = !{ptr @tw_host_attrs, !185, !"tw_host_attrs", i1 false, i1 false}
!185 = !{!"../drivers/scsi/3w-xxxx.c", i32 535, i32 26}
!186 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/3w-xxxx.c", i32 528, i32 12}
!188 = !{ptr @tw_host_stats_attr, !189, !"tw_host_stats_attr", i1 false, i1 false}
!189 = !{!"../drivers/scsi/3w-xxxx.c", i32 526, i32 32}
!190 = !{ptr @.str.103, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/3w-xxxx.c", i32 499, i32 33}
!192 = !{ptr @.str.104, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/3w-xxxx.c", i32 1261, i32 3}
!194 = !{ptr @.str.105, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @tw_initialize_device_extension._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @tw_initialize_device_extension._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.107, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/3w-xxxx.c", i32 1268, i32 3}
!199 = !{ptr @tw_initialize_device_extension._entry.106, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @tw_initialize_device_extension._entry_ptr.108, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @tw_initialize_device_extension.__key, !202, !"__key", i1 false, i1 false}
!202 = !{!"../drivers/scsi/3w-xxxx.c", i32 1281, i32 2}
!203 = !{ptr @.str.109, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @tw_initialize_device_extension.__key.110, !205, !"__key", i1 false, i1 false}
!205 = !{!"../drivers/scsi/3w-xxxx.c", i32 1282, i32 2}
!206 = !{ptr @.str.111, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.112, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/3w-xxxx.c", i32 842, i32 3}
!209 = !{ptr @.str.113, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @tw_allocate_memory._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @tw_allocate_memory._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.115, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/3w-xxxx.c", i32 847, i32 3}
!214 = !{ptr @tw_allocate_memory._entry.114, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @tw_allocate_memory._entry_ptr.116, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.118, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/3w-xxxx.c", i32 866, i32 4}
!218 = !{ptr @tw_allocate_memory._entry.117, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @tw_allocate_memory._entry_ptr.119, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.120, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/3w-xxxx.c", i32 1216, i32 4}
!222 = !{ptr @.str.121, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @tw_reset_sequence._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @tw_reset_sequence._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.123, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/3w-xxxx.c", i32 1223, i32 4}
!227 = !{ptr @tw_reset_sequence._entry.122, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @tw_reset_sequence._entry_ptr.124, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.126, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/3w-xxxx.c", i32 1233, i32 3}
!231 = !{ptr @tw_reset_sequence._entry.125, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @tw_reset_sequence._entry_ptr.127, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.129, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/3w-xxxx.c", i32 1239, i32 3}
!235 = !{ptr @tw_reset_sequence._entry.128, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @tw_reset_sequence._entry_ptr.130, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.132, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/3w-xxxx.c", i32 1245, i32 3}
!239 = !{ptr @tw_reset_sequence._entry.131, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @tw_reset_sequence._entry_ptr.133, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.134, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/3w-xxxx.c", i32 701, i32 3}
!243 = !{ptr @.str.135, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @tw_aen_drain_queue._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @tw_aen_drain_queue._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.137, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/3w-xxxx.c", i32 714, i32 3}
!248 = !{ptr @tw_aen_drain_queue._entry.136, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @tw_aen_drain_queue._entry_ptr.138, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.140, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/3w-xxxx.c", i32 720, i32 3}
!252 = !{ptr @tw_aen_drain_queue._entry.139, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @tw_aen_drain_queue._entry_ptr.141, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.143, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/3w-xxxx.c", i32 730, i32 3}
!256 = !{ptr @tw_aen_drain_queue._entry.142, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @tw_aen_drain_queue._entry_ptr.144, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.146, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/3w-xxxx.c", i32 748, i32 5}
!260 = !{ptr @tw_aen_drain_queue._entry.145, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @tw_aen_drain_queue._entry_ptr.147, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.149, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/3w-xxxx.c", i32 780, i32 7}
!264 = !{ptr @tw_aen_drain_queue._entry.148, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @tw_aen_drain_queue._entry_ptr.150, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.152, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/3w-xxxx.c", i32 787, i32 7}
!268 = !{ptr @tw_aen_drain_queue._entry.151, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @tw_aen_drain_queue._entry_ptr.153, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.155, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/scsi/3w-xxxx.c", i32 792, i32 9}
!272 = !{ptr @tw_aen_drain_queue._entry.154, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @tw_aen_drain_queue._entry_ptr.156, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @tw_aen_drain_queue._entry.157, !275, !"_entry", i1 false, i1 false}
!275 = !{!"../drivers/scsi/3w-xxxx.c", i32 794, i32 9}
!276 = !{ptr @tw_aen_drain_queue._entry_ptr.158, !275, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.160, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/3w-xxxx.c", i32 797, i32 8}
!279 = !{ptr @tw_aen_drain_queue._entry.159, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @tw_aen_drain_queue._entry_ptr.161, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.163, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/scsi/3w-xxxx.c", i32 822, i32 4}
!283 = !{ptr @tw_aen_drain_queue._entry.162, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @tw_aen_drain_queue._entry_ptr.164, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.165, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/3w-xxxx.c", i32 409, i32 2}
!287 = !{ptr @.str.166, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @tw_decode_sense._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @tw_decode_sense._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @tw_sense_table, !291, !"tw_sense_table", i1 false, i1 false}
!291 = !{!"../drivers/scsi/3w-xxxx.h", i32 99, i32 22}
!292 = !{ptr @.str.167, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/3w-xxxx.h", i32 62, i32 12}
!294 = !{ptr @.str.168, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/3w-xxxx.h", i32 63, i32 12}
!296 = !{ptr @.str.169, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/3w-xxxx.h", i32 64, i32 12}
!298 = !{ptr @.str.170, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/3w-xxxx.h", i32 65, i32 12}
!300 = !{ptr @.str.171, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/3w-xxxx.h", i32 66, i32 12}
!302 = !{ptr @.str.172, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/scsi/3w-xxxx.h", i32 67, i32 12}
!304 = !{ptr @.str.173, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/3w-xxxx.h", i32 68, i32 12}
!306 = !{ptr @.str.174, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/3w-xxxx.h", i32 69, i32 12}
!308 = !{ptr @.str.175, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/3w-xxxx.h", i32 70, i32 12}
!310 = !{ptr @.str.176, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/scsi/3w-xxxx.h", i32 71, i32 12}
!312 = !{ptr @.str.177, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/scsi/3w-xxxx.h", i32 72, i32 12}
!314 = !{ptr @.str.178, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/3w-xxxx.h", i32 73, i32 12}
!316 = !{ptr @.str.179, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/scsi/3w-xxxx.h", i32 74, i32 12}
!318 = !{ptr @.str.180, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/scsi/3w-xxxx.h", i32 75, i32 12}
!320 = !{ptr @.str.181, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/scsi/3w-xxxx.h", i32 76, i32 12}
!322 = !{ptr @.str.182, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/3w-xxxx.h", i32 77, i32 12}
!324 = !{ptr @.str.183, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/3w-xxxx.h", i32 78, i32 12}
!326 = !{ptr @.str.184, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/scsi/3w-xxxx.h", i32 79, i32 12}
!328 = !{ptr @.str.185, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/3w-xxxx.h", i32 80, i32 12}
!330 = !{ptr @.str.186, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/scsi/3w-xxxx.h", i32 81, i32 12}
!332 = !{ptr @.str.187, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/3w-xxxx.h", i32 82, i32 12}
!334 = !{ptr @.str.188, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/scsi/3w-xxxx.h", i32 83, i32 12}
!336 = !{ptr @.str.189, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/3w-xxxx.h", i32 84, i32 12}
!338 = !{ptr @.str.190, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/scsi/3w-xxxx.h", i32 85, i32 12}
!340 = !{ptr @.str.191, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/3w-xxxx.h", i32 86, i32 12}
!342 = !{ptr @.str.192, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/scsi/3w-xxxx.h", i32 87, i32 12}
!344 = !{ptr @.str.193, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/3w-xxxx.h", i32 88, i32 12}
!346 = !{ptr @.str.194, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/scsi/3w-xxxx.h", i32 89, i32 12}
!348 = !{ptr @.str.195, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/3w-xxxx.h", i32 90, i32 12}
!350 = !{ptr @.str.196, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/3w-xxxx.h", i32 91, i32 12}
!352 = !{ptr @.str.197, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/3w-xxxx.h", i32 92, i32 12}
!354 = !{ptr @tw_aen_string, !355, !"tw_aen_string", i1 false, i1 false}
!355 = !{!"../drivers/scsi/3w-xxxx.h", i32 61, i32 14}
!356 = !{ptr @.str.198, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/scsi/3w-xxxx.c", i32 1091, i32 3}
!358 = !{ptr @.str.199, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @tw_initconnection._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @tw_initconnection._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.201, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/scsi/3w-xxxx.c", i32 1107, i32 3}
!363 = !{ptr @tw_initconnection._entry.200, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @tw_initconnection._entry_ptr.202, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.204, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/3w-xxxx.c", i32 1121, i32 4}
!367 = !{ptr @tw_initconnection._entry.203, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @tw_initconnection._entry_ptr.205, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.206, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/scsi/3w-xxxx.c", i32 1146, i32 3}
!371 = !{ptr @.str.207, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @tw_setfeature._entry, !370, !"_entry", i1 false, i1 false}
!373 = !{ptr @tw_setfeature._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.209, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/scsi/3w-xxxx.c", i32 1161, i32 3}
!376 = !{ptr @tw_setfeature._entry.208, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @tw_setfeature._entry_ptr.210, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.212, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/scsi/3w-xxxx.c", i32 1176, i32 3}
!380 = !{ptr @tw_setfeature._entry.211, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @tw_setfeature._entry_ptr.213, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.215, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/scsi/3w-xxxx.c", i32 1190, i32 4}
!384 = !{ptr @tw_setfeature._entry.214, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @tw_setfeature._entry_ptr.216, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.217, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/scsi/3w-xxxx.c", i32 2045, i32 4}
!388 = !{ptr @.str.218, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @tw_interrupt._entry, !387, !"_entry", i1 false, i1 false}
!390 = !{ptr @tw_interrupt._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.220, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/scsi/3w-xxxx.c", i32 2057, i32 5}
!393 = !{ptr @tw_interrupt._entry.219, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @tw_interrupt._entry_ptr.221, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.223, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/scsi/3w-xxxx.c", i32 2100, i32 6}
!397 = !{ptr @tw_interrupt._entry.222, !396, !"_entry", i1 false, i1 false}
!398 = !{ptr @tw_interrupt._entry_ptr.224, !396, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.226, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/scsi/3w-xxxx.c", i32 2114, i32 7}
!401 = !{ptr @tw_interrupt._entry.225, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @tw_interrupt._entry_ptr.227, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.229, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/scsi/3w-xxxx.c", i32 2150, i32 6}
!405 = !{ptr @tw_interrupt._entry.228, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @tw_interrupt._entry_ptr.230, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.231, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/scsi/3w-xxxx.c", i32 560, i32 3}
!409 = !{ptr @.str.232, !408, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @tw_aen_read_queue._entry, !408, !"_entry", i1 false, i1 false}
!411 = !{ptr @tw_aen_read_queue._entry_ptr, !408, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.234, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/scsi/3w-xxxx.c", i32 573, i32 3}
!414 = !{ptr @tw_aen_read_queue._entry.233, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @tw_aen_read_queue._entry_ptr.235, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.237, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/scsi/3w-xxxx.c", i32 578, i32 3}
!418 = !{ptr @tw_aen_read_queue._entry.236, !417, !"_entry", i1 false, i1 false}
!419 = !{ptr @tw_aen_read_queue._entry_ptr.238, !417, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.240, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/scsi/3w-xxxx.c", i32 588, i32 3}
!422 = !{ptr @tw_aen_read_queue._entry.239, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @tw_aen_read_queue._entry_ptr.241, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.243, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/scsi/3w-xxxx.c", i32 601, i32 3}
!426 = !{ptr @tw_aen_read_queue._entry.242, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @tw_aen_read_queue._entry_ptr.244, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.245, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/scsi/3w-xxxx.c", i32 617, i32 3}
!430 = !{ptr @.str.246, !429, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @tw_aen_complete._entry, !429, !"_entry", i1 false, i1 false}
!432 = !{ptr @tw_aen_complete._entry_ptr, !429, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.248, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/scsi/3w-xxxx.c", i32 626, i32 3}
!435 = !{ptr @tw_aen_complete._entry.247, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @tw_aen_complete._entry_ptr.249, !434, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.251, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/scsi/3w-xxxx.c", i32 631, i32 5}
!439 = !{ptr @tw_aen_complete._entry.250, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @tw_aen_complete._entry_ptr.252, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.254, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/scsi/3w-xxxx.c", i32 634, i32 6}
!443 = !{ptr @tw_aen_complete._entry.253, !442, !"_entry", i1 false, i1 false}
!444 = !{ptr @tw_aen_complete._entry_ptr.255, !442, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.257, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/scsi/3w-xxxx.c", i32 637, i32 4}
!447 = !{ptr @tw_aen_complete._entry.256, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @tw_aen_complete._entry_ptr.258, !446, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.260, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/scsi/3w-xxxx.c", i32 660, i32 4}
!451 = !{ptr @tw_aen_complete._entry.259, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @tw_aen_complete._entry_ptr.261, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.262, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/scsi/3w-xxxx.c", i32 1906, i32 3}
!455 = !{ptr @.str.263, !454, !"<string literal>", i1 false, i1 false}
!456 = !{ptr @tw_scsiop_test_unit_ready_complete._entry, !454, !"_entry", i1 false, i1 false}
!457 = !{ptr @tw_scsiop_test_unit_ready_complete._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!458 = distinct !{null, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/scsi/3w-xxxx.c", i32 1471, i32 29}
!460 = !{ptr @.str.265, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/scsi/3w-xxxx.c", i32 1472, i32 31}
!462 = !{ptr @.str.266, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/scsi/3w-xxxx.c", i32 1479, i32 3}
!464 = !{ptr @.str.267, !463, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @tw_scsiop_inquiry_complete._entry, !463, !"_entry", i1 false, i1 false}
!466 = !{ptr @tw_scsiop_inquiry_complete._entry_ptr, !463, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.268, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/scsi/3w-xxxx.c", i32 1664, i32 3}
!469 = !{ptr @.str.269, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @tw_scsiop_read_capacity_complete._entry, !468, !"_entry", i1 false, i1 false}
!471 = !{ptr @tw_scsiop_read_capacity_complete._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.270, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/scsi/3w-xxxx.c", i32 1572, i32 3}
!474 = !{ptr @.str.271, !473, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @tw_scsiop_mode_sense_complete._entry, !473, !"_entry", i1 false, i1 false}
!476 = !{ptr @tw_scsiop_mode_sense_complete._entry_ptr, !473, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @tw_device_extension_list, !478, !"tw_device_extension_list", i1 false, i1 false}
!478 = !{!"../drivers/scsi/3w-xxxx.c", i32 224, i32 29}
!479 = !{ptr @tw_device_extension_count, !480, !"tw_device_extension_count", i1 false, i1 false}
!480 = !{!"../drivers/scsi/3w-xxxx.c", i32 225, i32 12}
!481 = !{ptr @twe_major, !482, !"twe_major", i1 false, i1 false}
!482 = !{!"../drivers/scsi/3w-xxxx.c", i32 226, i32 12}
!483 = !{ptr @tw_fops, !484, !"tw_fops", i1 false, i1 false}
!484 = !{!"../drivers/scsi/3w-xxxx.c", i32 1051, i32 37}
!485 = !{ptr @.str.272, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/scsi/3w-xxxx.c", i32 996, i32 5}
!487 = !{ptr @.str.273, !486, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @tw_chrdev_ioctl._entry, !486, !"_entry", i1 false, i1 false}
!489 = !{ptr @tw_chrdev_ioctl._entry_ptr, !486, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.275, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/scsi/3w-xxxx.c", i32 999, i32 6}
!492 = !{ptr @tw_chrdev_ioctl._entry.274, !491, !"_entry", i1 false, i1 false}
!493 = !{ptr @tw_chrdev_ioctl._entry_ptr.276, !491, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.277, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/scsi/3w-xxxx.c", i32 223, i32 8}
!496 = !{ptr @.str.278, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @tw_mutex, !495, !"tw_mutex", i1 false, i1 false}
!498 = distinct !{null, !499, !"__already_done", i1 false, i1 false}
!499 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!500 = !{ptr @.str.279, !499, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @.str.280, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!503 = !{ptr @.str.281, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!505 = !{ptr @.str.282, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/scsi/3w-xxxx.c", i32 2201, i32 2}
!507 = !{ptr @.str.283, !506, !"<string literal>", i1 false, i1 false}
!508 = !{ptr @__tw_shutdown._entry, !506, !"_entry", i1 false, i1 false}
!509 = !{ptr @__tw_shutdown._entry_ptr, !506, !"_entry_ptr", i1 false, i1 false}
!510 = !{ptr @.str.285, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/scsi/3w-xxxx.c", i32 2205, i32 3}
!512 = !{ptr @__tw_shutdown._entry.284, !511, !"_entry", i1 false, i1 false}
!513 = !{ptr @__tw_shutdown._entry_ptr.286, !511, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.288, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/scsi/3w-xxxx.c", i32 2207, i32 3}
!516 = !{ptr @__tw_shutdown._entry.287, !515, !"_entry", i1 false, i1 false}
!517 = !{ptr @__tw_shutdown._entry_ptr.289, !515, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.290, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/scsi/3w-xxxx.c", i32 2415, i32 2}
!520 = !{ptr @.str.291, !519, !"<string literal>", i1 false, i1 false}
!521 = !{ptr @tw_init._entry, !519, !"_entry", i1 false, i1 false}
!522 = !{ptr @tw_init._entry_ptr, !519, !"_entry_ptr", i1 false, i1 false}
!523 = !{!"sp"}
!524 = !{i32 1, !"wchar_size", i32 2}
!525 = !{i32 1, !"min_enum_size", i32 4}
!526 = !{i32 8, !"branch-target-enforcement", i32 0}
!527 = !{i32 8, !"sign-return-address", i32 0}
!528 = !{i32 8, !"sign-return-address-all", i32 0}
!529 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!530 = !{i32 7, !"uwtable", i32 1}
!531 = !{i32 7, !"frame-pointer", i32 2}
!532 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!533 = !{i64 2155291730}
!534 = !{i64 4701969}
!535 = !{i64 2155297148}
!536 = !{i64 2155272643}
!537 = !{i64 2155281893}
!538 = !{i64 2155192436}
!539 = !{i64 4702387}
!540 = !{i64 2155113375}
!541 = !{i64 2155114121}
!542 = !{i64 2155146101}
!543 = !{i64 2155122578}
!544 = !{i64 2155123335}
!545 = !{i64 2155124081}
!546 = !{i64 2155153342}
!547 = !{i64 2155154358}
!548 = !{i64 2155121490}
!549 = !{i64 2155189016}
!550 = !{i64 2155190032}
!551 = !{i64 2155259222}
!552 = !{i64 2155259628}
!553 = !{i64 2155260263}
!554 = !{i64 2155260903}
!555 = !{i64 2155264749}
!556 = !{i64 2155265756}
!557 = !{i64 2155271619}
!558 = !{i64 2155271998}
!559 = !{i64 782894, i64 782921, i64 782943, i64 782971}
!560 = !{i64 783302, i64 783329, i64 783362, i64 783383, i64 783410, i64 783436}
!561 = !{i64 2155117185}
!562 = !{i64 2155117518}
!563 = !{i64 2155118168}
!564 = !{i64 2155104647}
!565 = !{i64 2155106666}
!566 = !{i64 2155108775}
!567 = !{i64 2155110836}
!568 = !{i64 2155205108}
!569 = !{i64 2155205718}
!570 = !{i64 2155208449}
!571 = !{!"auto-init"}
!572 = !{i64 2155181100}
!573 = !{i64 2155182116}
!574 = !{i64 2155115272}
!575 = !{i64 2155116018}
!576 = !{i64 2155126934}
!577 = !{i64 2155133971}
!578 = !{i64 2153970006, i64 2153970031}
!579 = !{!"branch_weights", i32 2000, i32 1}
!580 = !{i64 6465561}
!581 = !{i64 6465758}
!582 = !{i64 2153950991}
!583 = !{i64 2153970687, i64 2153970712}
