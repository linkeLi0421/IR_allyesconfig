; ModuleID = '/llk/IR_all_yes/drivers/misc/hpilo.c_pt.bc'
source_filename = "../drivers/misc/hpilo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%union.anon.67 = type { ptr }
%struct.ilo_hwinfo = type { ptr, ptr, ptr, [24 x ptr], ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.cdev }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.ccb_data = type { %struct.ccb, %struct.ccb, ptr, ptr, i32, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.ccb = type { %union.anon.72, %union.anon.73, i64, %union.anon.74, %union.anon.75, i64, %union.anon.76, i64 }
%union.anon.72 = type { i64 }
%union.anon.73 = type { i64 }
%union.anon.74 = type { i64 }
%union.anon.75 = type { i64 }
%union.anon.76 = type { i64 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.fifo = type { i64, i64, i64, i64, [96 x i8], i64, [120 x i8], i64, [120 x i8], [0 x i64] }

@ilo_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @ilo_devices, ptr @ilo_probe, ptr @ilo_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@ilo_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ilo_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_version237 = internal constant [20 x i8] c"hpilo.version=1.5.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hpilo\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.5.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias238 = internal constant [18 x i8] c"hpilo.alias=hpilo\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [24 x i8] c"hpilo.description=hpilo\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [55 x i8] c"hpilo.author=David Altobelli <david.altobelli@hpe.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [30 x i8] c"hpilo.file=drivers/misc/hpilo\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [21 x i8] c"hpilo.license=GPL v2\00", section ".modinfo", align 1
@__param_str_max_ccb = internal constant [14 x i8] c"hpilo.max_ccb\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@max_ccb = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_max_ccb = internal constant %struct.kernel_param { ptr @__param_str_max_ccb, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @max_ccb } }, section "__param", align 4
@__UNIQUE_ID_max_ccbtype243 = internal constant [28 x i8] c"hpilo.parmtype=max_ccb:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_ccb244 = internal constant [82 x i8] c"hpilo.parm=max_ccb:Maximum number of HP iLO channels to attach (8-24)(default=16)\00", section ".modinfo", align 1
@__initcall__kmod_hpilo__245_932_ilo_init6 = internal global ptr @ilo_init, section ".initcall6.init", align 4
@__exitcall_ilo_exit = internal global ptr @ilo_exit, section ".exitcall.exit", align 4
@ilo_devices = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 3601, i32 45572, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4156, i32 13063, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ilo_blacklist = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4156, i32 13063, i32 4156, i32 6521, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4156, i32 13063, i32 5520, i32 649, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ilo_probe.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ilo_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/misc/hpilo.c\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Not supported on this device\0A\00", [34 x i8] zeroinitializer }, align 32
@ilo_hwdev = internal global { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ilo_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 799, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error finding free device\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ilo_probe._entry_ptr = internal global ptr @ilo_probe._entry, section ".printk_index", align 4
@ilo_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ilo_hw->alloc_lock\00", [44 x i8] zeroinitializer }, align 32
@ilo_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ilo_hw->fifo_lock\00", [45 x i8] zeroinitializer }, align 32
@ilo_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ilo_hw->open_lock\00", [45 x i8] zeroinitializer }, align 32
@ilo_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @ilo_read, ptr @ilo_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ilo_poll, ptr null, ptr null, ptr null, i32 0, ptr @ilo_open, ptr null, ptr @ilo_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ilo_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 842, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Could not add cdev\0A\00", [44 x i8] zeroinitializer }, align 32
@ilo_probe._entry_ptr.16 = internal global ptr @ilo_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hpilo!d%dccb%d\00", [17 x i8] zeroinitializer }, align 32
@ilo_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 852, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not create files\0A\00", [40 x i8] zeroinitializer }, align 32
@ilo_probe._entry_ptr.20 = internal global ptr @ilo_probe._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ilo_map_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 702, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Error mapping mmio\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ilo_map_device\00", [17 x i8] zeroinitializer }, align 32
@ilo_map_device._entry_ptr = internal global ptr @ilo_map_device._entry, section ".printk_index", align 4
@ilo_map_device._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 709, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error reading PCI rev id: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ilo_map_device._entry_ptr.25 = internal global ptr @ilo_map_device._entry.23, section ".printk_index", align 4
@ilo_map_device._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.4, i32 723, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error mapping shared mem\0A\00", [38 x i8] zeroinitializer }, align 32
@ilo_map_device._entry_ptr.28 = internal global ptr @ilo_map_device._entry.26, section ".printk_index", align 4
@ilo_map_device._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.4, i32 730, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error mapping doorbell\0A\00", [40 x i8] zeroinitializer }, align 32
@ilo_map_device._entry_ptr.31 = internal global ptr @ilo_map_device._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ilo_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&data->ccb_waitq\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ilo_ccb_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 364, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Open could not dequeue a packet\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ilo_ccb_verify\00", [17 x i8] zeroinitializer }, align 32
@ilo_ccb_verify._entry_ptr = internal global ptr @ilo_ccb_verify._entry, section ".printk_index", align 4
@ilo_ccb_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 253, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Closing, but controller still active\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ilo_ccb_close\00", [18 x i8] zeroinitializer }, align 32
@ilo_ccb_close._entry_ptr = internal global ptr @ilo_ccb_close._entry, section ".printk_index", align 4
@ilo_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iLO\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"ilo_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 879, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"ilo_major\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 29, i32 21 }
@___asan_gen_.47 = private unnamed_addr constant [10 x i8] c"ilo_class\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 28, i32 22 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 923, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [8 x i8] c"max_ccb\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 30, i32 21 }
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"ilo_devices\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 872, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"ilo_blacklist\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 32, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 781, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [10 x i8] c"ilo_hwdev\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 31, i32 13 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 799, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 810, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 811, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 812, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [9 x i8] c"ilo_fops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 640, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 842, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 850, i32 9 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 852, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 702, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 709, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 723, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 730, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 230, i32 6 }
@___asan_gen_.159 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 214, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 174, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 595, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 364, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 253, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.192 = private constant [24 x i8] c"../drivers/misc/hpilo.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 891, i32 14 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__UNIQUE_ID_max_ccb244, ptr @__UNIQUE_ID_max_ccbtype243, ptr @__UNIQUE_ID_version237, ptr @__exitcall_ilo_exit, ptr @__initcall__kmod_hpilo__245_932_ilo_init6, ptr @__modver_attr, ptr @__param_max_ccb, ptr @ilo_ccb_close._entry, ptr @ilo_ccb_close._entry_ptr, ptr @ilo_ccb_verify._entry, ptr @ilo_ccb_verify._entry_ptr, ptr @ilo_exit, ptr @ilo_map_device._entry, ptr @ilo_map_device._entry.23, ptr @ilo_map_device._entry.26, ptr @ilo_map_device._entry.29, ptr @ilo_map_device._entry_ptr, ptr @ilo_map_device._entry_ptr.25, ptr @ilo_map_device._entry_ptr.28, ptr @ilo_map_device._entry_ptr.31, ptr @ilo_probe._entry, ptr @ilo_probe._entry.14, ptr @ilo_probe._entry.18, ptr @ilo_probe._entry_ptr, ptr @ilo_probe._entry_ptr.16, ptr @ilo_probe._entry_ptr.20, ptr @ilo_driver, ptr @ilo_major, ptr @ilo_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @max_ccb, ptr @ilo_devices, ptr @ilo_blacklist, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ilo_hwdev, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ilo_probe.__key, ptr @.str.9, ptr @ilo_probe.__key.10, ptr @.str.11, ptr @ilo_probe.__key.12, ptr @.str.13, ptr @ilo_fops, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @ilo_open.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @ilo_init.__key, ptr @.str.40], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_ccb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_devices to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_blacklist to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_hwdev to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_map_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_map_device._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_map_device._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_map_device._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_ccb_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_ccb_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ilo_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ilo_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @ilo_driver) #9
  %0 = load i32, ptr @ilo_major, align 4
  %shl = shl i32 %0, 20
  tail call void @unregister_chrdev_region(i32 noundef %shl, i32 noundef 24) #9
  %1 = load ptr, ptr @ilo_class, align 4
  tail call void @class_destroy(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ilo_init() #0 section ".init.text" align 64 {
entry:
  %dev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #9
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev, align 4, !annotation !121
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @ilo_init.__key) #9
  store ptr %call, ptr @ilo_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @alloc_chrdev_region(ptr noundef nonnull %dev, i32 noundef 0, i32 noundef 24, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.class_destroy_crit_edge

if.end.class_destroy_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %class_destroy

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 4
  %shr = lshr i32 %3, 20
  store i32 %shr, ptr @ilo_major, align 4
  %call6 = call i32 @__pci_register_driver(ptr noundef nonnull @ilo_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %chr_remove

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

chr_remove:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev, align 4
  call void @unregister_chrdev_region(i32 noundef %5, i32 noundef 24) #9
  br label %class_destroy

class_destroy:                                    ; preds = %chr_remove, %if.end.class_destroy_crit_edge
  %error.0 = phi i32 [ %call3, %if.end.class_destroy_crit_edge ], [ %call6, %chr_remove ]
  %6 = load ptr, ptr @ilo_class, align 4
  call void @class_destroy(ptr noundef %6) #9
  br label %cleanup

cleanup:                                          ; preds = %class_destroy, %if.end5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end5.cleanup_crit_edge ], [ %1, %if.then ], [ %error.0, %class_destroy ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ilo_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %pci_rev_id.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pci_match_id(ptr noundef nonnull @ilo_blacklist, ptr noundef %pdev) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ilo_probe.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ilo_probe, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !122

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ilo_probe.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %0 = load i32, ptr @max_ccb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %0)
  %cmp = icmp ugt i32 %0, 24
  br i1 %cmp, label %if.end6.if.end11.sink.split_crit_edge, label %if.else

if.end6.if.end11.sink.split_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.sink.split

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %0)
  %cmp8 = icmp ult i32 %0, 8
  br i1 %cmp8, label %if.else.if.end11.sink.split_crit_edge, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.else.if.end11.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.else.if.end11.sink.split_crit_edge, %if.end6.if.end11.sink.split_crit_edge
  %.sink = phi i32 [ 24, %if.end6.if.end11.sink.split_crit_edge ], [ 8, %if.else.if.end11.sink.split_crit_edge ]
  store i32 %.sink, ptr @max_ccb, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.else.if.end11_crit_edge
  %1 = load i8, ptr @ilo_hwdev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp13 = icmp eq i8 %1, 0
  br i1 %cmp13, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end11
  store i8 1, ptr @ilo_hwdev, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 404) #13
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.end25.out_crit_edge, label %if.end29

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end29:                                         ; preds = %if.end25
  %ilo_dev = getelementptr inbounds %struct.ilo_hwinfo, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %ilo_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %ilo_dev, align 4
  %alloc_lock = getelementptr inbounds %struct.ilo_hwinfo, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %alloc_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @ilo_probe.__key, i16 noundef signext 3) #9
  %fifo_lock = getelementptr inbounds %struct.ilo_hwinfo, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %fifo_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @ilo_probe.__key.10, i16 noundef signext 3) #9
  %open_lock = getelementptr inbounds %struct.ilo_hwinfo, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %open_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @ilo_probe.__key.12, i16 noundef signext 3) #9
  %call42 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end29.free_crit_edge

if.end29.free_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

if.end45:                                         ; preds = %if.end29
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %call46 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.free_crit_edge

if.end45.free_crit_edge:                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

if.end49:                                         ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pci_rev_id.i) #9
  %4 = ptrtoint ptr %pci_rev_id.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %pci_rev_id.i, align 1, !annotation !121
  %call.i = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef 0) #9
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %call7.i.i, align 8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #12
  br label %ilo_map_device.exit.thread

if.end.i:                                         ; preds = %if.end49
  %call2.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 8, ptr noundef nonnull %pci_rev_id.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %if.end9.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.24, i32 noundef %call2.i) #12
  br label %ilo_map_device.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %pci_rev_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pci_rev_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp10.i = icmp ugt i8 %7, 6
  br i1 %cmp10.i, label %if.then12.i, label %if.end9.i.if.end21.i_crit_edge

if.end9.i.if.end21.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then12.i:                                      ; preds = %if.end9.i
  %end.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13.i = icmp eq i32 %9, 0
  br i1 %cmp13.i, label %if.then12.i.if.end21.i_crit_edge, label %cond.false.i

if.then12.i.if.end21.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

cond.false.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 8
  %sub.i = add i32 %9, -8191
  %phi.bo.i = sub i32 %sub.i, %11
  br label %if.end21.i

if.end21.i:                                       ; preds = %cond.false.i, %if.then12.i.if.end21.i_crit_edge, %if.end9.i.if.end21.i_crit_edge
  %bar.0.i = phi i32 [ 5, %if.then12.i.if.end21.i_crit_edge ], [ 5, %cond.false.i ], [ 2, %if.end9.i.if.end21.i_crit_edge ]
  %off.0.i = phi i32 [ -8192, %if.then12.i.if.end21.i_crit_edge ], [ %phi.bo.i, %cond.false.i ], [ 0, %if.end9.i.if.end21.i_crit_edge ]
  %12 = load i32, ptr @max_ccb, align 4
  %mul.i = shl i32 %12, 7
  %call22.i = call ptr @pci_iomap_range(ptr noundef %pdev, i32 noundef %bar.0.i, i32 noundef %off.0.i, i32 noundef %mul.i) #9
  %ram_vaddr.i = getelementptr inbounds %struct.ilo_hwinfo, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ram_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call22.i, ptr %ram_vaddr.i, align 8
  %cmp24.i = icmp eq ptr %call22.i, null
  br i1 %cmp24.i, label %do.end29.i, label %if.end31.i

do.end29.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev30.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30.i, ptr noundef nonnull @.str.27) #12
  br label %mmio_free.i

if.end31.i:                                       ; preds = %if.end21.i
  %14 = load i32, ptr @max_ccb, align 4
  %mul32.i = shl i32 %14, 14
  %call33.i = call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 3, i32 noundef %mul32.i) #9
  %db_vaddr.i = getelementptr inbounds %struct.ilo_hwinfo, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %db_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call33.i, ptr %db_vaddr.i, align 4
  %cmp35.i = icmp eq ptr %call33.i, null
  br i1 %cmp35.i, label %do.end40.i, label %if.end53

do.end40.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev41.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41.i, ptr noundef nonnull @.str.30) #12
  %16 = ptrtoint ptr %ram_vaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ram_vaddr.i, align 8
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %17) #9
  br label %mmio_free.i

mmio_free.i:                                      ; preds = %do.end40.i, %do.end29.i
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i, align 8
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %19) #9
  br label %ilo_map_device.exit.thread

ilo_map_device.exit.thread:                       ; preds = %mmio_free.i, %do.end7.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pci_rev_id.i) #9
  br label %free_regions

if.end53:                                         ; preds = %if.end31.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pci_rev_id.i) #9
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %arrayidx.i.i = getelementptr i8, ptr %22, i32 212
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 -1) #9, !srcloc !124
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %call.i141 = call i32 @request_threaded_irq(i32 noundef %24, ptr noundef nonnull @ilo_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.1, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool55.not = icmp eq i32 %call.i141, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.unmap_crit_edge

if.end53.unmap_crit_edge:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %unmap

if.end57:                                         ; preds = %if.end53
  call fastcc void @ilo_enable_interrupts(ptr noundef nonnull %call7.i.i)
  %cdev = getelementptr inbounds %struct.ilo_hwinfo, ptr %call7.i.i, i32 0, i32 8
  call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @ilo_fops) #9
  %owner = getelementptr inbounds %struct.ilo_hwinfo, ptr %call7.i.i, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %owner, align 4
  %26 = load i32, ptr @max_ccb, align 4
  %27 = load i32, ptr @ilo_major, align 4
  %shl = shl i32 %27, 20
  %call60 = call i32 @cdev_add(ptr noundef %cdev, i32 noundef %shl, i32 noundef %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %for.cond68.preheader, label %do.end65

for.cond68.preheader:                             ; preds = %if.end57
  %28 = load i32, ptr @max_ccb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp69148.not = icmp eq i32 %28, 0
  br i1 %cmp69148.not, label %for.cond68.preheader.cleanup_crit_edge, label %for.body71.lr.ph

for.cond68.preheader.cleanup_crit_edge:           ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body71.lr.ph:                                 ; preds = %for.cond68.preheader
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br label %for.body71

do.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66, ptr noundef nonnull @.str.15) #12
  call fastcc void @ilo_disable_interrupts(ptr noundef nonnull %call7.i.i)
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %call88 = call ptr @free_irq(i32 noundef %30, ptr noundef nonnull %call7.i.i) #9
  br label %unmap

for.body71:                                       ; preds = %if.end83.for.body71_crit_edge, %for.body71.lr.ph
  %minor.0149 = phi i32 [ 0, %for.body71.lr.ph ], [ %inc85, %if.end83.for.body71_crit_edge ]
  %31 = load ptr, ptr @ilo_class, align 4
  %32 = load i32, ptr @ilo_major, align 4
  %shl74 = shl i32 %32, 20
  %or75 = or i32 %shl74, %minor.0149
  %call76 = call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %31, ptr noundef %dev73, i32 noundef %or75, ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef %minor.0149) #9
  %cmp.i142 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %do.end81, label %for.body71.if.end83_crit_edge

for.body71.if.end83_crit_edge:                    ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

do.end81:                                         ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.19) #12
  br label %if.end83

if.end83:                                         ; preds = %do.end81, %for.body71.if.end83_crit_edge
  %inc85 = add nuw i32 %minor.0149, 1
  %33 = load i32, ptr @max_ccb, align 4
  %cmp69 = icmp ult i32 %inc85, %33
  br i1 %cmp69, label %if.end83.for.body71_crit_edge, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end83.for.body71_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body71

unmap:                                            ; preds = %do.end65, %if.end53.unmap_crit_edge
  %error.0 = phi i32 [ %call.i141, %if.end53.unmap_crit_edge ], [ %call60, %do.end65 ]
  call fastcc void @ilo_unmap_device(ptr noundef %pdev, ptr noundef nonnull %call7.i.i)
  br label %free_regions

free_regions:                                     ; preds = %unmap, %ilo_map_device.exit.thread
  %error.1 = phi i32 [ %error.0, %unmap ], [ -12, %ilo_map_device.exit.thread ]
  call void @pci_release_regions(ptr noundef %pdev) #9
  br label %free

free:                                             ; preds = %free_regions, %if.end45.free_crit_edge, %if.end29.free_crit_edge
  %error.2 = phi i32 [ %call42, %if.end29.free_crit_edge ], [ %call46, %if.end45.free_crit_edge ], [ %error.1, %free_regions ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %out

out:                                              ; preds = %free, %if.end25.out_crit_edge
  %error.3 = phi i32 [ %error.2, %free ], [ -12, %if.end25.out_crit_edge ]
  store i8 0, ptr @ilo_hwdev, align 1
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end83.cleanup_crit_edge, %for.cond68.preheader.cleanup_crit_edge, %do.end23, %if.then5, %do.body
  %retval.0 = phi i32 [ -19, %do.end23 ], [ %error.3, %out ], [ -19, %if.then5 ], [ -19, %do.body ], [ 0, %for.cond68.preheader.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ilo_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 -1) #9, !srcloc !124
  %cdev = getelementptr inbounds %struct.ilo_hwinfo, ptr %1, i32 0, i32 8
  %dev = getelementptr inbounds %struct.ilo_hwinfo, ptr %1, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev, align 4
  %and = and i32 %5, 1048575
  %6 = load i32, ptr @max_ccb, align 4
  %add19 = add i32 %6, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add19)
  %cmp20 = icmp ult i32 %and, %add19
  br i1 %cmp20, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %and, %if.end.for.body_crit_edge ]
  %7 = load ptr, ptr @ilo_class, align 4
  %8 = load i32, ptr @ilo_major, align 4
  %shl = shl i32 %8, 20
  %or = or i32 %shl, %i.021
  tail call void @device_destroy(ptr noundef %7, i32 noundef %or) #9
  %inc = add nuw i32 %i.021, 1
  %9 = load i32, ptr @max_ccb, align 4
  %add = add i32 %9, %and
  %cmp = icmp ult i32 %inc, %add
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @cdev_del(ptr noundef %cdev) #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr i8, ptr %11, i32 178
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.i) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  %13 = and i8 %12, -2
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %arrayidx3.i = getelementptr i8, ptr %15, i32 178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx3.i, i8 %13) #9, !srcloc !128
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %17, ptr noundef nonnull %1) #9
  %db_vaddr.i = getelementptr inbounds %struct.ilo_hwinfo, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %db_vaddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %db_vaddr.i, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %19) #9
  %ram_vaddr.i = getelementptr inbounds %struct.ilo_hwinfo, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %ram_vaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ram_vaddr.i, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %21) #9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %23) #9
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  %24 = load i32, ptr @max_ccb, align 4
  %div = udiv i32 %and, %24
  %arrayidx = getelementptr [1 x i8], ptr @ilo_hwdev, i32 0, i32 %div
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ilo_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_lock = getelementptr inbounds %struct.ilo_hwinfo, ptr %data, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock) #9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 212
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #9, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  %and.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not = icmp eq i32 %and.i, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %4 = load i32, ptr @max_ccb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp7.not.i = icmp eq i32 %4, 0
  br i1 %cmp7.not.i, label %if.then4.for.end_crit_edge, label %if.then4.for.body.i_crit_edge

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  br label %for.body.i

if.then4.for.end_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then4.for.body.i_crit_edge
  %slot.08.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then4.for.body.i_crit_edge ]
  %arrayidx.i31 = getelementptr %struct.ilo_hwinfo, ptr %data, i32 0, i32 3, i32 %slot.08.i
  %5 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i31, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %reset.i.i = getelementptr i8, ptr %8, i32 -360
  %9 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1, ptr %reset.i.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %slot.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %for.inc.i.if.end5_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %for.inc.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %pending.0.ph = phi i32 [ %3, %if.end.if.end5_crit_edge ], [ -1, %for.inc.i.if.end5_crit_edge ]
  %.pr = load i32, ptr @max_ccb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp33.not = icmp eq i32 %.pr, 0
  br i1 %cmp33.not, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ilo_hwinfo, ptr %data, i32 0, i32 3, i32 %i.034
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %shl = shl nuw i32 1, %i.034
  %and = and i32 %shl, %pending.0.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.for.inc_crit_edge, label %if.then10

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %ccb_waitq = getelementptr inbounds %struct.ccb_data, ptr %11, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %ccb_waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.034, 1
  %12 = load i32, ptr @max_ccb, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge, %if.then4.for.end_crit_edge
  %pending.038 = phi i32 [ %pending.0.ph, %if.end5.for.end_crit_edge ], [ -1, %if.then4.for.end_crit_edge ], [ %pending.0.ph, %for.inc.for.end_crit_edge ]
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %arrayidx.i32 = getelementptr i8, ptr %14, i32 212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %pending.038) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i32, i32 %15) #9, !srcloc !124
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock) #9
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ilo_enable_interrupts(ptr nocapture noundef readonly %hw) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 178
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  %3 = or i8 %2, 1
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %arrayidx3 = getelementptr i8, ptr %5, i32 178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx3, i8 %3) #9, !srcloc !128
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ilo_disable_interrupts(ptr nocapture noundef readonly %hw) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 178
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  %3 = and i8 %2, -2
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %arrayidx3 = getelementptr i8, ptr %5, i32 178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx3, i8 %3) #9, !srcloc !128
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ilo_unmap_device(ptr noundef %pdev, ptr nocapture noundef readonly %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %db_vaddr = getelementptr inbounds %struct.ilo_hwinfo, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %db_vaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %db_vaddr, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %1) #9
  %ram_vaddr = getelementptr inbounds %struct.ilo_hwinfo, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %ram_vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ram_vaddr, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %3) #9
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ilo_read(ptr nocapture noundef readonly %fp, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %reset.i = getelementptr i8, ptr %3, i32 -360
  %4 = ptrtoint ptr %reset.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %reset.i, align 8
  %conv.i = trunc i64 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %ilo_hw = getelementptr inbounds %struct.ccb_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %ilo_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ilo_hw, align 8
  %ccb_u3.i = getelementptr inbounds %struct.ccb, ptr %1, i32 0, i32 3
  %ccb_u4.i = getelementptr inbounds %struct.ccb, ptr %1, i32 0, i32 4
  %fifo_lock.i.i = getelementptr inbounds %struct.ilo_hwinfo, ptr %7, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %if.end5.do.body_crit_edge, %do.body.preheader
  %cnt.0 = phi i32 [ %dec, %if.end5.do.body_crit_edge ], [ 20, %do.body.preheader ]
  %8 = ptrtoint ptr %ccb_u4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %desc.0.i = load ptr, ptr %ccb_u4.i, align 8
  %9 = ptrtoint ptr %ccb_u3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %fifobar.0.i = load ptr, ptr %ccb_u3.i, align 8
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i.i) #9
  %head.i.i = getelementptr i8, ptr %fifobar.0.i, i32 -256
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %head.i.i, align 8
  %imask.i.i = getelementptr i8, ptr %fifobar.0.i, i32 -376
  %12 = ptrtoint ptr %imask.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %imask.i.i, align 8
  %and.i.i = and i64 %13, %11
  %idxprom.i.i = trunc i64 %and.i.i to i32
  %arrayidx.i.i = getelementptr [0 x i64], ptr %fifobar.0.i, i32 0, i32 %idxprom.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i.i, align 8
  %and7.i.i = and i64 %15, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i)
  %tobool.not.i.i = icmp eq i64 %and7.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5, label %if.end10

if.end5:                                          ; preds = %do.body
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i, i32 noundef %call3.i.i) #9
  tail call void @msleep(i32 noundef 100) #9
  %dec = add nsw i32 %cnt.0, -1
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end5.do.body_crit_edge

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %do.body
  %head.i.i.le = getelementptr i8, ptr %fifobar.0.i, i32 -256
  %16 = trunc i64 %15 to i32
  %conv11.i.i = and i32 %16, 4194303
  %or.i.i = or i64 %15, 16777215
  %add.i.i = add i64 %or.i.i, 1
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add.i.i, ptr %arrayidx.i.i, align 8
  %18 = ptrtoint ptr %head.i.i.le to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %head.i.i.le, align 8
  %add19.i.i = add i64 %19, 1
  store i64 %add19.i.i, ptr %head.i.i.le, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i, i32 noundef %call3.i.i) #9
  %and.i25.i = shl nuw nsw i32 %conv11.i.i, 3
  %shl.i.i = and i32 %and.i25.i, 8184
  %20 = shl nuw nsw i32 %conv11.i.i, 2
  %shl.i26.i = and i32 %20, 16773120
  %add.ptr.i = getelementptr i8, ptr %desc.0.i, i32 %shl.i26.i
  %21 = tail call i32 @llvm.umin.i32(i32 %shl.i.i, i32 %len)
  tail call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %21, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end10.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end10.copy_to_user.exit_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end10
  %22 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %21, i32 -1226833920) #14, !srcloc !131
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef %21) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr.i, i32 noundef %21) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end10.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %21, %if.end10.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %21, %if.end.i.i.copy_to_user.exit_crit_edge ]
  %23 = ptrtoint ptr %ccb_u3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %fifobar.0.i35 = load ptr, ptr %ccb_u3.i, align 8
  %call3.i.i37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i.i) #9
  %tail.i.i = getelementptr i8, ptr %fifobar.0.i35, i32 -128
  %24 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tail.i.i, align 8
  %add.i1.i = add i64 %25, 1
  %imask.i.i38 = getelementptr i8, ptr %fifobar.0.i35, i32 -376
  %26 = ptrtoint ptr %imask.i.i38 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %imask.i.i38, align 8
  %and.i2.i = and i64 %add.i1.i, %27
  %idxprom.i.i39 = trunc i64 %and.i2.i to i32
  %arrayidx.i.i40 = getelementptr [0 x i64], ptr %fifobar.0.i35, i32 0, i32 %idxprom.i.i39
  %28 = ptrtoint ptr %arrayidx.i.i40 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i.i40, align 8
  %and7.i.i41 = and i64 %29, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i41)
  %tobool.not.i3.i = icmp eq i64 %and7.i.i41, 0
  br i1 %tobool.not.i3.i, label %if.then.i.i44, label %copy_to_user.exit.ilo_pkt_enqueue.exit_crit_edge

copy_to_user.exit.ilo_pkt_enqueue.exit_crit_edge: ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ilo_pkt_enqueue.exit

if.then.i.i44:                                    ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i42 = and i32 %16, 4193280
  %or.i.i43 = or i32 %shl.i.i42, 512
  %30 = zext i32 %or.i.i43 to i64
  %merge.i.i = getelementptr i8, ptr %fifobar.0.i35, i32 -368
  %31 = ptrtoint ptr %merge.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %merge.i.i, align 8
  %or.i4.i = or i64 %32, %30
  %and13.i.i = and i64 %27, %25
  %idxprom14.i.i = trunc i64 %and13.i.i to i32
  %arrayidx15.i.i = getelementptr [0 x i64], ptr %fifobar.0.i35, i32 0, i32 %idxprom14.i.i
  %33 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx15.i.i, align 8
  %or16.i.i = or i64 %or.i4.i, %34
  store i64 %or16.i.i, ptr %arrayidx15.i.i, align 8
  %35 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tail.i.i, align 8
  %add18.i.i = add i64 %36, 1
  store i64 %add18.i.i, ptr %tail.i.i, align 8
  br label %ilo_pkt_enqueue.exit

ilo_pkt_enqueue.exit:                             ; preds = %if.then.i.i44, %copy_to_user.exit.ilo_pkt_enqueue.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i, i32 noundef %call3.i.i37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool16.not = icmp eq i32 %n.addr.0.i, 0
  %cond = select i1 %tobool16.not, i32 %21, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %ilo_pkt_enqueue.exit, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %ilo_pkt_enqueue.exit ], [ -19, %entry.cleanup_crit_edge ], [ -11, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ilo_write(ptr nocapture noundef readonly %fp, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %reset.i = getelementptr i8, ptr %3, i32 -360
  %4 = ptrtoint ptr %reset.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %reset.i, align 8
  %conv.i = trunc i64 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ilo_hw = getelementptr inbounds %struct.ccb_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %ilo_hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ilo_hw, align 8
  %ccb_u2.i = getelementptr inbounds %struct.ccb, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ccb_u2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %desc.0.i = load ptr, ptr %ccb_u2.i, align 8
  %fifo_lock.i.i = getelementptr inbounds %struct.ilo_hwinfo, ptr %7, i32 0, i32 7
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i.i) #9
  %head.i.i = getelementptr i8, ptr %3, i32 -256
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %head.i.i, align 8
  %imask.i.i = getelementptr i8, ptr %3, i32 -376
  %11 = ptrtoint ptr %imask.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %imask.i.i, align 8
  %and.i.i = and i64 %12, %10
  %idxprom.i.i = trunc i64 %and.i.i to i32
  %arrayidx.i.i = getelementptr [0 x i64], ptr %3, i32 0, i32 %idxprom.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx.i.i, align 8
  %and7.i.i = and i64 %14, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i)
  %tobool.not.i.i = icmp eq i64 %and7.i.i, 0
  br i1 %tobool.not.i.i, label %ilo_pkt_dequeue.exit.thread, label %if.end5

ilo_pkt_dequeue.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i, i32 noundef %call3.i.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %15 = trunc i64 %14 to i32
  %conv11.i.i = and i32 %15, 4194303
  %or.i.i = or i64 %14, 16777215
  %add.i.i = add i64 %or.i.i, 1
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add.i.i, ptr %arrayidx.i.i, align 8
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %head.i.i, align 8
  %add19.i.i = add i64 %18, 1
  store i64 %add19.i.i, ptr %head.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i, i32 noundef %call3.i.i) #9
  %and.i25.i = shl nuw nsw i32 %conv11.i.i, 3
  %shl.i.i = and i32 %and.i25.i, 8184
  %19 = shl nuw nsw i32 %conv11.i.i, 2
  %shl.i26.i = and i32 %19, 16773120
  %add.ptr.i = getelementptr i8, ptr %desc.0.i, i32 %shl.i26.i
  %20 = tail call i32 @llvm.umin.i32(i32 %shl.i.i, i32 %len)
  tail call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %20, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end5.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end5.if.end.i.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end5
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %20, i32 -1226833920) #14, !srcloc !132
  %asmresult.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !133

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef %20) #9
  %22 = tail call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !134
  %and.i.i.i.i = and i32 %24, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr.i, ptr noundef %buf, i32 noundef %20) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #9, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end5.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %20, %if.end5.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %20, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.then11.i.i, !prof !133

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %20, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %sub.i.i
  %25 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %fifobar.0.i30 = load ptr, ptr %1, align 8
  %call3.i.i32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i.i) #9
  %tail.i.i = getelementptr i8, ptr %fifobar.0.i30, i32 -128
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %tail.i.i, align 8
  %add.i1.i = add i64 %28, 1
  %imask.i.i33 = getelementptr i8, ptr %fifobar.0.i30, i32 -376
  %29 = ptrtoint ptr %imask.i.i33 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %imask.i.i33, align 8
  %and.i2.i = and i64 %add.i1.i, %30
  %idxprom.i.i34 = trunc i64 %and.i2.i to i32
  %arrayidx.i.i35 = getelementptr [0 x i64], ptr %fifobar.0.i30, i32 0, i32 %idxprom.i.i34
  %31 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i.i35, align 8
  %and7.i.i36 = and i64 %32, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i36)
  %tobool.not.i3.i = icmp eq i64 %and7.i.i36, 0
  br i1 %tobool.not.i3.i, label %if.then.i.i42, label %copy_from_user.exit.ilo_pkt_enqueue.exit_crit_edge

copy_from_user.exit.ilo_pkt_enqueue.exit_crit_edge: ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ilo_pkt_enqueue.exit

if.then.i.i42:                                    ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  %len.addr.1 = select i1 %tobool4.not.i.i, i32 %20, i32 0
  %33 = lshr i32 %len.addr.1, 3
  %and.i.i37 = and i32 %len.addr.1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37)
  %tobool.not.i.i38 = icmp ne i32 %and.i.i37, 0
  %add.i.i39 = zext i1 %tobool.not.i.i38 to i32
  %cond.i.i = add nuw nsw i32 %33, %add.i.i39
  %shl.i.i40 = and i32 %15, 4193280
  %and8.i.i = or i32 %cond.i.i, %shl.i.i40
  %34 = zext i32 %and8.i.i to i64
  %merge.i.i = getelementptr i8, ptr %fifobar.0.i30, i32 -368
  %35 = ptrtoint ptr %merge.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %merge.i.i, align 8
  %or.i4.i = or i64 %36, %34
  %and13.i.i = and i64 %30, %28
  %idxprom14.i.i = trunc i64 %and13.i.i to i32
  %arrayidx15.i.i = getelementptr [0 x i64], ptr %fifobar.0.i30, i32 0, i32 %idxprom14.i.i
  %37 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx15.i.i, align 8
  %or16.i.i = or i64 %or.i4.i, %38
  store i64 %or16.i.i, ptr %arrayidx15.i.i, align 8
  %39 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tail.i.i, align 8
  %add18.i.i = add i64 %40, 1
  store i64 %add18.i.i, ptr %tail.i.i, align 8
  br label %ilo_pkt_enqueue.exit

ilo_pkt_enqueue.exit:                             ; preds = %if.then.i.i42, %copy_from_user.exit.ilo_pkt_enqueue.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i, i32 noundef %call3.i.i32) #9
  %ccb_u5.i = getelementptr inbounds %struct.ccb, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %ccb_u5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ccb_u5.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %42, i8 1) #9, !srcloc !128
  %cond = select i1 %tobool4.not.i.i, i32 %20, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %ilo_pkt_enqueue.exit, %ilo_pkt_dequeue.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %ilo_pkt_enqueue.exit ], [ -19, %entry.cleanup_crit_edge ], [ -16, %ilo_pkt_dequeue.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ilo_poll(ptr noundef %fp, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ccb_waitq = getelementptr inbounds %struct.ccb_data, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %ccb_waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %fp, ptr noundef nonnull %ccb_waitq, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %reset.i = getelementptr i8, ptr %5, i32 -360
  %6 = ptrtoint ptr %reset.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %reset.i, align 8
  %conv.i = trunc i64 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not = icmp eq i32 %conv.i, 0
  br i1 %tobool.not, label %if.else, label %poll_wait.exit.cleanup_crit_edge

poll_wait.exit.cleanup_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ilo_hw = getelementptr inbounds %struct.ccb_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %ilo_hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ilo_hw, align 8
  %ccb_u3.i = getelementptr inbounds %struct.ccb, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %ccb_u3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ccb_u3.i, align 8
  %fifo_lock.i.i = getelementptr inbounds %struct.ilo_hwinfo, ptr %9, i32 0, i32 7
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i.i) #9
  %head.i.i = getelementptr i8, ptr %11, i32 -256
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %head.i.i, align 8
  %imask.i.i = getelementptr i8, ptr %11, i32 -376
  %14 = ptrtoint ptr %imask.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %imask.i.i, align 8
  %and.i.i = and i64 %15, %13
  %idxprom.i.i = trunc i64 %and.i.i to i32
  %arrayidx.i.i = getelementptr [0 x i64], ptr %11, i32 0, i32 %idxprom.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i, i32 noundef %call2.i.i) #9
  %18 = and i64 %17, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool3.not = icmp eq i64 %18, 0
  %. = select i1 %tobool3.not, i32 0, i32 65
  br label %cleanup

cleanup:                                          ; preds = %if.else, %poll_wait.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %poll_wait.exit.cleanup_crit_edge ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ilo_open(ptr nocapture noundef readonly %ip, ptr nocapture noundef %fp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %2 = load i32, ptr @max_ccb, align 4
  %rem = urem i32 %and.i, %2
  %3 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 48
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -244
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 208) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %open_lock = getelementptr i8, ptr %5, i32 -132
  tail call void @_raw_spin_lock(ptr noundef %open_lock) #9
  %ccb_alloc = getelementptr i8, ptr %5, i32 -232
  %arrayidx = getelementptr [24 x ptr], ptr %ccb_alloc, i32 0, i32 %rem
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %dma_size.i = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %dma_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 37824, ptr %dma_size.i, align 4
  %ilo_dev.i = getelementptr i8, ptr %5, i32 -136
  %10 = ptrtoint ptr %ilo_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ilo_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %dma_pa8.i = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 4
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 37824, ptr noundef %dma_pa8.i, i32 noundef 2592, i32 noundef 0) #9
  %dma_va10.i = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %dma_va10.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %dma_va10.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then2.out.thread.sink.split_crit_edge, label %if.end6

if.then2.out.thread.sink.split_crit_edge:         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread.sink.split

if.end6:                                          ; preds = %if.then2
  %ilo_ccb2.i = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %dma_pa8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_pa8.i, align 8
  %15 = ptrtoint ptr %call.i.i to i32
  %add14.i = add i32 %15, 4095
  %div113.i = and i32 %add14.i, -4096
  %16 = inttoptr i32 %div113.i to ptr
  %add19.i = add i32 %14, 4095
  %div20114.i = and i32 %add19.i, -4096
  %send_ctrl.i.i = getelementptr inbounds %struct.ccb, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %send_ctrl.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -2146697156, ptr %send_ctrl.i.i, align 8
  %recv_ctrl.i.i = getelementptr inbounds %struct.ccb, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %recv_ctrl.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -2146697156, ptr %recv_ctrl.i.i, align 8
  %send_ctrl.i117.i = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %send_ctrl.i117.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -2146697156, ptr %send_ctrl.i117.i, align 8
  %recv_ctrl.i118.i = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %recv_ctrl.i118.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -2146697156, ptr %recv_ctrl.i118.i, align 8
  %head.i.i = getelementptr inbounds %struct.fifo, ptr %16, i32 0, i32 5
  %21 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %head.i.i, align 128
  %tail.i.i = getelementptr inbounds %struct.fifo, ptr %16, i32 0, i32 7
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %tail.i.i, align 256
  %reset.i.i = getelementptr inbounds %struct.fifo, ptr %16, i32 0, i32 3
  %23 = ptrtoint ptr %reset.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %reset.i.i, align 8
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 4, ptr %16, align 4096
  %imask.i.i = getelementptr inbounds %struct.fifo, ptr %16, i32 0, i32 1
  %25 = ptrtoint ptr %imask.i.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 3, ptr %imask.i.i, align 8
  %merge.i.i = getelementptr inbounds %struct.fifo, ptr %16, i32 0, i32 2
  %26 = ptrtoint ptr %merge.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 8388608, ptr %merge.i.i, align 16
  %uglygep.i.i = getelementptr i8, ptr %16, i32 384
  %27 = call ptr @memset(ptr %uglygep.i.i, i32 0, i32 32)
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %uglygep.i.i, ptr %call7.i.i, align 8
  %add22.i = or i32 %div20114.i, 384
  %conv.i = zext i32 %add22.i to i64
  %29 = ptrtoint ptr %ilo_ccb2.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv.i, ptr %ilo_ccb2.i, align 8
  %add.ptr25.i = getelementptr i8, ptr %16, i32 416
  %30 = ptrtoint ptr %add.ptr25.i to i32
  %add31.i = add nuw nsw i32 %30, 127
  %div32115.i = and i32 %add31.i, -3584
  %31 = inttoptr i32 %div32115.i to ptr
  %head.i119.i = getelementptr inbounds %struct.fifo, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %head.i119.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %head.i119.i, align 128
  %tail.i120.i = getelementptr inbounds %struct.fifo, ptr %31, i32 0, i32 7
  %33 = ptrtoint ptr %tail.i120.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %tail.i120.i, align 256
  %reset.i121.i = getelementptr inbounds %struct.fifo, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %reset.i121.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %reset.i121.i, align 8
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 4, ptr %31, align 512
  %imask.i122.i = getelementptr inbounds %struct.fifo, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %imask.i122.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 3, ptr %imask.i122.i, align 8
  %merge.i123.i = getelementptr inbounds %struct.fifo, ptr %31, i32 0, i32 2
  %37 = ptrtoint ptr %merge.i123.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 8388608, ptr %merge.i123.i, align 16
  %uglygep.i124.i = getelementptr i8, ptr %31, i32 384
  %38 = call ptr @memset(ptr %uglygep.i124.i, i32 0, i32 32)
  %ccb_u3.i = getelementptr inbounds %struct.ccb, ptr %call7.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %ccb_u3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %uglygep.i124.i, ptr %ccb_u3.i, align 8
  %add41.i = or i32 %div20114.i, 896
  %conv42.i = zext i32 %add41.i to i64
  %ccb_u343.i = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %ccb_u343.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv42.i, ptr %ccb_u343.i, align 8
  %add.ptr45.i = getelementptr i8, ptr %31, i32 416
  %add47.i = or i32 %div20114.i, 928
  %ccb_u2.i = getelementptr inbounds %struct.ccb, ptr %call7.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %ccb_u2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr45.i, ptr %ccb_u2.i, align 8
  %conv48.i = zext i32 %add47.i to i64
  %ccb_u249.i = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %ccb_u249.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv48.i, ptr %ccb_u249.i, align 8
  %add51.i = add i32 %div20114.i, 17312
  %add.ptr53.i = getelementptr i8, ptr %31, i32 16800
  %ccb_u4.i = getelementptr inbounds %struct.ccb, ptr %call7.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %ccb_u4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr53.i, ptr %ccb_u4.i, align 8
  %conv54.i = zext i32 %add51.i to i64
  %ccb_u455.i = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %ccb_u455.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv54.i, ptr %ccb_u455.i, align 8
  %45 = zext i32 %rem to i64
  %channel.i = getelementptr inbounds %struct.ccb, ptr %call7.i.i, i32 0, i32 7
  %46 = ptrtoint ptr %channel.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %channel.i, align 8
  %channel58.i = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 1, i32 7
  %47 = ptrtoint ptr %channel58.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %45, ptr %channel58.i, align 8
  %db_vaddr.i = getelementptr i8, ptr %5, i32 -240
  %48 = ptrtoint ptr %db_vaddr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %db_vaddr.i, align 4
  %shl.i = shl i32 %rem, 14
  %add.ptr59.i = getelementptr i8, ptr %49, i32 %shl.i
  %ccb_u5.i = getelementptr inbounds %struct.ccb, ptr %call7.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %ccb_u5.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr59.i, ptr %ccb_u5.i, align 8
  %ccb_u560.i = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 1, i32 6
  %51 = ptrtoint ptr %ccb_u560.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %ccb_u560.i, align 8
  %ccb_cnt = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %ccb_cnt to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %ccb_cnt, align 8
  %f_flags = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 7
  %53 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %f_flags, align 4
  %and = and i32 %54, 128
  %ccb_excl = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 9
  %55 = ptrtoint ptr %ccb_excl to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and, ptr %ccb_excl, align 4
  %ilo_hw = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %ilo_hw to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr, ptr %ilo_hw, align 8
  %ccb_waitq = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %ccb_waitq, ptr noundef nonnull @.str.35, ptr noundef nonnull @ilo_open.__key) #9
  %alloc_lock = getelementptr i8, ptr %5, i32 -88
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %alloc_lock) #9
  %ram_vaddr.i = getelementptr i8, ptr %5, i32 -236
  %57 = ptrtoint ptr %ram_vaddr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ram_vaddr.i, align 4
  %mul.i = shl nuw nsw i32 %rem, 7
  %add.ptr.i = getelementptr i8, ptr %58, i32 %mul.i
  %mapped_ccb.i = getelementptr inbounds %struct.ccb_data, ptr %call7.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %mapped_ccb.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr.i, ptr %mapped_ccb.i, align 8
  tail call void @mmiocpy(ptr noundef %add.ptr.i, ptr noundef %ilo_ccb2.i, i32 noundef 64) #9
  %fifo_lock.i.i.i = getelementptr i8, ptr %5, i32 -44
  br label %for.body.i

for.cond4.preheader.i:                            ; preds = %ilo_pkt_enqueue.exit.i
  %60 = ptrtoint ptr %ccb_u3.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %fifobar.0.i26.i = load ptr, ptr %ccb_u3.i, align 8
  %call3.i.i28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i.i.i) #9
  %tail.i.i29.i = getelementptr i8, ptr %fifobar.0.i26.i, i32 -128
  %61 = ptrtoint ptr %tail.i.i29.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %tail.i.i29.i, align 8
  %add.i1.i30.i = add i64 %62, 1
  %imask.i.i31.i = getelementptr i8, ptr %fifobar.0.i26.i, i32 -376
  %63 = ptrtoint ptr %imask.i.i31.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %imask.i.i31.i, align 8
  %and.i2.i32.i = and i64 %add.i1.i30.i, %64
  %idxprom.i.i33.i = trunc i64 %and.i2.i32.i to i32
  %arrayidx.i.i34.i = getelementptr [0 x i64], ptr %fifobar.0.i26.i, i32 0, i32 %idxprom.i.i33.i
  %65 = ptrtoint ptr %arrayidx.i.i34.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx.i.i34.i, align 8
  %and7.i.i35.i = and i64 %66, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i35.i)
  %tobool.not.i3.i36.i = icmp eq i64 %and7.i.i35.i, 0
  br i1 %tobool.not.i3.i36.i, label %if.then.i.i46.i, label %for.cond4.preheader.i.ilo_pkt_enqueue.exit47.i_crit_edge

for.cond4.preheader.i.ilo_pkt_enqueue.exit47.i_crit_edge: ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ilo_pkt_enqueue.exit47.i

for.body.i:                                       ; preds = %ilo_pkt_enqueue.exit.i.for.body.i_crit_edge, %if.end6
  %pkt_id.049.i = phi i32 [ 0, %if.end6 ], [ %inc.i, %ilo_pkt_enqueue.exit.i.for.body.i_crit_edge ]
  %67 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %fifobar.0.i.i = load ptr, ptr %call7.i.i, align 8
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i.i.i) #9
  %tail.i.i.i = getelementptr i8, ptr %fifobar.0.i.i, i32 -128
  %68 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %tail.i.i.i, align 8
  %add.i1.i.i = add i64 %69, 1
  %imask.i.i.i = getelementptr i8, ptr %fifobar.0.i.i, i32 -376
  %70 = ptrtoint ptr %imask.i.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %imask.i.i.i, align 8
  %and.i2.i.i = and i64 %add.i1.i.i, %71
  %idxprom.i.i.i = trunc i64 %and.i2.i.i to i32
  %arrayidx.i.i.i = getelementptr [0 x i64], ptr %fifobar.0.i.i, i32 0, i32 %idxprom.i.i.i
  %72 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx.i.i.i, align 8
  %and7.i.i.i = and i64 %73, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i.i)
  %tobool.not.i3.i.i = icmp eq i64 %and7.i.i.i, 0
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.i, label %for.body.i.ilo_pkt_enqueue.exit.i_crit_edge

for.body.i.ilo_pkt_enqueue.exit.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ilo_pkt_enqueue.exit.i

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i.i = shl i32 %pkt_id.049.i, 10
  %74 = zext i32 %shl.i.i.i to i64
  %merge.i.i.i = getelementptr i8, ptr %fifobar.0.i.i, i32 -368
  %75 = ptrtoint ptr %merge.i.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %merge.i.i.i, align 8
  %or.i4.i.i = or i64 %76, %74
  %and13.i.i.i = and i64 %71, %69
  %idxprom14.i.i.i = trunc i64 %and13.i.i.i to i32
  %arrayidx15.i.i.i = getelementptr [0 x i64], ptr %fifobar.0.i.i, i32 0, i32 %idxprom14.i.i.i
  %77 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx15.i.i.i, align 8
  %or16.i.i.i = or i64 %or.i4.i.i, %78
  store i64 %or16.i.i.i, ptr %arrayidx15.i.i.i, align 8
  %79 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %tail.i.i.i, align 8
  %add18.i.i.i = add i64 %80, 1
  store i64 %add18.i.i.i, ptr %tail.i.i.i, align 8
  br label %ilo_pkt_enqueue.exit.i

ilo_pkt_enqueue.exit.i:                           ; preds = %if.then.i.i.i, %for.body.i.ilo_pkt_enqueue.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i.i, i32 noundef %call3.i.i.i) #9
  %81 = ptrtoint ptr %ccb_u5.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ccb_u5.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %82, i8 1) #9, !srcloc !128
  %inc.i = add nuw nsw i32 %pkt_id.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %for.cond4.preheader.i, label %ilo_pkt_enqueue.exit.i.for.body.i_crit_edge

ilo_pkt_enqueue.exit.i.for.body.i_crit_edge:      ; preds = %ilo_pkt_enqueue.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.then.i.i46.i:                                  ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %merge.i.i39.i = getelementptr i8, ptr %fifobar.0.i26.i, i32 -368
  %83 = ptrtoint ptr %merge.i.i39.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %merge.i.i39.i, align 8
  %and13.i.i41.i = and i64 %64, %62
  %idxprom14.i.i42.i = trunc i64 %and13.i.i41.i to i32
  %arrayidx15.i.i43.i = getelementptr [0 x i64], ptr %fifobar.0.i26.i, i32 0, i32 %idxprom14.i.i42.i
  %85 = ptrtoint ptr %arrayidx15.i.i43.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx15.i.i43.i, align 8
  %or.i4.i40.i = or i64 %84, %86
  %or16.i.i44.i = or i64 %or.i4.i40.i, 512
  store i64 %or16.i.i44.i, ptr %arrayidx15.i.i43.i, align 8
  %87 = ptrtoint ptr %tail.i.i29.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %tail.i.i29.i, align 8
  %add18.i.i45.i = add i64 %88, 1
  store i64 %add18.i.i45.i, ptr %tail.i.i29.i, align 8
  br label %ilo_pkt_enqueue.exit47.i

ilo_pkt_enqueue.exit47.i:                         ; preds = %if.then.i.i46.i, %for.cond4.preheader.i.ilo_pkt_enqueue.exit47.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i.i, i32 noundef %call3.i.i28.i) #9
  %89 = ptrtoint ptr %ccb_u3.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %fifobar.0.i26.1.i = load ptr, ptr %ccb_u3.i, align 8
  %call3.i.i28.1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i.i.i) #9
  %tail.i.i29.1.i = getelementptr i8, ptr %fifobar.0.i26.1.i, i32 -128
  %90 = ptrtoint ptr %tail.i.i29.1.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %tail.i.i29.1.i, align 8
  %add.i1.i30.1.i = add i64 %91, 1
  %imask.i.i31.1.i = getelementptr i8, ptr %fifobar.0.i26.1.i, i32 -376
  %92 = ptrtoint ptr %imask.i.i31.1.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %imask.i.i31.1.i, align 8
  %and.i2.i32.1.i = and i64 %add.i1.i30.1.i, %93
  %idxprom.i.i33.1.i = trunc i64 %and.i2.i32.1.i to i32
  %arrayidx.i.i34.1.i = getelementptr [0 x i64], ptr %fifobar.0.i26.1.i, i32 0, i32 %idxprom.i.i33.1.i
  %94 = ptrtoint ptr %arrayidx.i.i34.1.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx.i.i34.1.i, align 8
  %and7.i.i35.1.i = and i64 %95, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i35.1.i)
  %tobool.not.i3.i36.1.i = icmp eq i64 %and7.i.i35.1.i, 0
  br i1 %tobool.not.i3.i36.1.i, label %if.then.i.i46.1.i, label %ilo_pkt_enqueue.exit47.i.ilo_pkt_enqueue.exit47.1.i_crit_edge

ilo_pkt_enqueue.exit47.i.ilo_pkt_enqueue.exit47.1.i_crit_edge: ; preds = %ilo_pkt_enqueue.exit47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ilo_pkt_enqueue.exit47.1.i

if.then.i.i46.1.i:                                ; preds = %ilo_pkt_enqueue.exit47.i
  call void @__sanitizer_cov_trace_pc() #11
  %merge.i.i39.1.i = getelementptr i8, ptr %fifobar.0.i26.1.i, i32 -368
  %96 = ptrtoint ptr %merge.i.i39.1.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %merge.i.i39.1.i, align 8
  %and13.i.i41.1.i = and i64 %93, %91
  %idxprom14.i.i42.1.i = trunc i64 %and13.i.i41.1.i to i32
  %arrayidx15.i.i43.1.i = getelementptr [0 x i64], ptr %fifobar.0.i26.1.i, i32 0, i32 %idxprom14.i.i42.1.i
  %98 = ptrtoint ptr %arrayidx15.i.i43.1.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %arrayidx15.i.i43.1.i, align 8
  %or.i4.i40.1.i = or i64 %97, %99
  %or16.i.i44.1.i = or i64 %or.i4.i40.1.i, 1536
  store i64 %or16.i.i44.1.i, ptr %arrayidx15.i.i43.1.i, align 8
  %100 = ptrtoint ptr %tail.i.i29.1.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %tail.i.i29.1.i, align 8
  %add18.i.i45.1.i = add i64 %101, 1
  store i64 %add18.i.i45.1.i, ptr %tail.i.i29.1.i, align 8
  br label %ilo_pkt_enqueue.exit47.1.i

ilo_pkt_enqueue.exit47.1.i:                       ; preds = %if.then.i.i46.1.i, %ilo_pkt_enqueue.exit47.i.ilo_pkt_enqueue.exit47.1.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i.i, i32 noundef %call3.i.i28.1.i) #9
  %102 = ptrtoint ptr %ccb_u3.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %fifobar.0.i26.2.i = load ptr, ptr %ccb_u3.i, align 8
  %call3.i.i28.2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i.i.i) #9
  %tail.i.i29.2.i = getelementptr i8, ptr %fifobar.0.i26.2.i, i32 -128
  %103 = ptrtoint ptr %tail.i.i29.2.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %tail.i.i29.2.i, align 8
  %add.i1.i30.2.i = add i64 %104, 1
  %imask.i.i31.2.i = getelementptr i8, ptr %fifobar.0.i26.2.i, i32 -376
  %105 = ptrtoint ptr %imask.i.i31.2.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %imask.i.i31.2.i, align 8
  %and.i2.i32.2.i = and i64 %add.i1.i30.2.i, %106
  %idxprom.i.i33.2.i = trunc i64 %and.i2.i32.2.i to i32
  %arrayidx.i.i34.2.i = getelementptr [0 x i64], ptr %fifobar.0.i26.2.i, i32 0, i32 %idxprom.i.i33.2.i
  %107 = ptrtoint ptr %arrayidx.i.i34.2.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx.i.i34.2.i, align 8
  %and7.i.i35.2.i = and i64 %108, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i35.2.i)
  %tobool.not.i3.i36.2.i = icmp eq i64 %and7.i.i35.2.i, 0
  br i1 %tobool.not.i3.i36.2.i, label %if.then.i.i46.2.i, label %ilo_pkt_enqueue.exit47.1.i.ilo_pkt_enqueue.exit47.2.i_crit_edge

ilo_pkt_enqueue.exit47.1.i.ilo_pkt_enqueue.exit47.2.i_crit_edge: ; preds = %ilo_pkt_enqueue.exit47.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ilo_pkt_enqueue.exit47.2.i

if.then.i.i46.2.i:                                ; preds = %ilo_pkt_enqueue.exit47.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %merge.i.i39.2.i = getelementptr i8, ptr %fifobar.0.i26.2.i, i32 -368
  %109 = ptrtoint ptr %merge.i.i39.2.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %merge.i.i39.2.i, align 8
  %and13.i.i41.2.i = and i64 %106, %104
  %idxprom14.i.i42.2.i = trunc i64 %and13.i.i41.2.i to i32
  %arrayidx15.i.i43.2.i = getelementptr [0 x i64], ptr %fifobar.0.i26.2.i, i32 0, i32 %idxprom14.i.i42.2.i
  %111 = ptrtoint ptr %arrayidx15.i.i43.2.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %arrayidx15.i.i43.2.i, align 8
  %or.i4.i40.2.i = or i64 %110, %112
  %or16.i.i44.2.i = or i64 %or.i4.i40.2.i, 2560
  store i64 %or16.i.i44.2.i, ptr %arrayidx15.i.i43.2.i, align 8
  %113 = ptrtoint ptr %tail.i.i29.2.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %tail.i.i29.2.i, align 8
  %add18.i.i45.2.i = add i64 %114, 1
  store i64 %add18.i.i45.2.i, ptr %tail.i.i29.2.i, align 8
  br label %ilo_pkt_enqueue.exit47.2.i

ilo_pkt_enqueue.exit47.2.i:                       ; preds = %if.then.i.i46.2.i, %ilo_pkt_enqueue.exit47.1.i.ilo_pkt_enqueue.exit47.2.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i.i, i32 noundef %call3.i.i28.2.i) #9
  %115 = ptrtoint ptr %ccb_u3.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %fifobar.0.i26.3.i = load ptr, ptr %ccb_u3.i, align 8
  %call3.i.i28.3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i.i.i) #9
  %tail.i.i29.3.i = getelementptr i8, ptr %fifobar.0.i26.3.i, i32 -128
  %116 = ptrtoint ptr %tail.i.i29.3.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %tail.i.i29.3.i, align 8
  %add.i1.i30.3.i = add i64 %117, 1
  %imask.i.i31.3.i = getelementptr i8, ptr %fifobar.0.i26.3.i, i32 -376
  %118 = ptrtoint ptr %imask.i.i31.3.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %imask.i.i31.3.i, align 8
  %and.i2.i32.3.i = and i64 %add.i1.i30.3.i, %119
  %idxprom.i.i33.3.i = trunc i64 %and.i2.i32.3.i to i32
  %arrayidx.i.i34.3.i = getelementptr [0 x i64], ptr %fifobar.0.i26.3.i, i32 0, i32 %idxprom.i.i33.3.i
  %120 = ptrtoint ptr %arrayidx.i.i34.3.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %arrayidx.i.i34.3.i, align 8
  %and7.i.i35.3.i = and i64 %121, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i35.3.i)
  %tobool.not.i3.i36.3.i = icmp eq i64 %and7.i.i35.3.i, 0
  br i1 %tobool.not.i3.i36.3.i, label %if.then.i.i46.3.i, label %ilo_pkt_enqueue.exit47.2.i.ilo_ccb_open.exit_crit_edge

ilo_pkt_enqueue.exit47.2.i.ilo_ccb_open.exit_crit_edge: ; preds = %ilo_pkt_enqueue.exit47.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ilo_ccb_open.exit

if.then.i.i46.3.i:                                ; preds = %ilo_pkt_enqueue.exit47.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %merge.i.i39.3.i = getelementptr i8, ptr %fifobar.0.i26.3.i, i32 -368
  %122 = ptrtoint ptr %merge.i.i39.3.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %merge.i.i39.3.i, align 8
  %and13.i.i41.3.i = and i64 %119, %117
  %idxprom14.i.i42.3.i = trunc i64 %and13.i.i41.3.i to i32
  %arrayidx15.i.i43.3.i = getelementptr [0 x i64], ptr %fifobar.0.i26.3.i, i32 0, i32 %idxprom14.i.i42.3.i
  %124 = ptrtoint ptr %arrayidx15.i.i43.3.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx15.i.i43.3.i, align 8
  %or.i4.i40.3.i = or i64 %123, %125
  %or16.i.i44.3.i = or i64 %or.i4.i40.3.i, 3584
  store i64 %or16.i.i44.3.i, ptr %arrayidx15.i.i43.3.i, align 8
  %126 = ptrtoint ptr %tail.i.i29.3.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %tail.i.i29.3.i, align 8
  %add18.i.i45.3.i = add i64 %127, 1
  store i64 %add18.i.i45.3.i, ptr %tail.i.i29.3.i, align 8
  br label %ilo_ccb_open.exit

ilo_ccb_open.exit:                                ; preds = %if.then.i.i46.3.i, %ilo_pkt_enqueue.exit47.2.i.ilo_ccb_open.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i.i, i32 noundef %call3.i.i28.3.i) #9
  %128 = ptrtoint ptr %ccb_u5.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ccb_u5.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %129, i8 2) #9, !srcloc !128
  %130 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %alloc_lock, i32 noundef %call12) #9
  br label %for.body.i114

for.body.i114:                                    ; preds = %if.end.i115.for.body.i114_crit_edge, %ilo_ccb_open.exit
  %i.030.i = phi i32 [ 1000, %ilo_ccb_open.exit ], [ %dec.i, %if.end.i115.for.body.i114_crit_edge ]
  %131 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %fifobar.0.i.i108 = load ptr, ptr %call7.i.i, align 8
  %call3.i.i.i109 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i.i.i) #9
  %head.i.i.i = getelementptr i8, ptr %fifobar.0.i.i108, i32 -256
  %132 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %head.i.i.i, align 8
  %imask.i.i.i110 = getelementptr i8, ptr %fifobar.0.i.i108, i32 -376
  %134 = ptrtoint ptr %imask.i.i.i110 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %imask.i.i.i110, align 8
  %and.i.i.i = and i64 %135, %133
  %idxprom.i.i.i111 = trunc i64 %and.i.i.i to i32
  %arrayidx.i.i.i112 = getelementptr [0 x i64], ptr %fifobar.0.i.i108, i32 0, i32 %idxprom.i.i.i111
  %136 = ptrtoint ptr %arrayidx.i.i.i112 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %arrayidx.i.i.i112, align 8
  %and7.i.i.i113 = and i64 %137, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i.i113)
  %tobool.not.i.i.i = icmp eq i64 %and7.i.i.i113, 0
  br i1 %tobool.not.i.i.i, label %if.end.i115, label %if.end4.i

if.end.i115:                                      ; preds = %for.body.i114
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i.i, i32 noundef %call3.i.i.i109) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %138(i32 noundef 2147480) #9
  %dec.i = add nsw i32 %i.030.i, -1
  %cmp.i = icmp ugt i32 %i.030.i, 1
  br i1 %cmp.i, label %if.end.i115.for.body.i114_crit_edge, label %do.body24

if.end.i115.for.body.i114_crit_edge:              ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i114

if.end4.i:                                        ; preds = %for.body.i114
  %head.i.i.i.le = getelementptr i8, ptr %fifobar.0.i.i108, i32 -256
  %or.i.i.i = or i64 %137, 16777215
  %add.i.i.i = add i64 %or.i.i.i, 1
  %139 = ptrtoint ptr %arrayidx.i.i.i112 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %add.i.i.i, ptr %arrayidx.i.i.i112, align 8
  %140 = ptrtoint ptr %head.i.i.i.le to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %head.i.i.i.le, align 8
  %add19.i.i.i = add i64 %141, 1
  store i64 %add19.i.i.i, ptr %head.i.i.i.le, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i.i, i32 noundef %call3.i.i.i109) #9
  %142 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %fifobar.0.i15.i = load ptr, ptr %call7.i.i, align 8
  %call3.i.i17.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %fifo_lock.i.i.i) #9
  %tail.i.i.i118 = getelementptr i8, ptr %fifobar.0.i15.i, i32 -128
  %143 = ptrtoint ptr %tail.i.i.i118 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %tail.i.i.i118, align 8
  %add.i1.i.i119 = add i64 %144, 1
  %imask.i.i18.i = getelementptr i8, ptr %fifobar.0.i15.i, i32 -376
  %145 = ptrtoint ptr %imask.i.i18.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %imask.i.i18.i, align 8
  %and.i2.i.i120 = and i64 %add.i1.i.i119, %146
  %idxprom.i.i19.i = trunc i64 %and.i2.i.i120 to i32
  %arrayidx.i.i20.i = getelementptr [0 x i64], ptr %fifobar.0.i15.i, i32 0, i32 %idxprom.i.i19.i
  %147 = ptrtoint ptr %arrayidx.i.i20.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %arrayidx.i.i20.i, align 8
  %and7.i.i21.i = and i64 %148, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i.i21.i)
  %tobool.not.i3.i.i121 = icmp eq i64 %and7.i.i21.i, 0
  br i1 %tobool.not.i3.i.i121, label %if.then.i.i.i129, label %if.end4.i.ilo_ccb_verify.exit.thread_crit_edge

if.end4.i.ilo_ccb_verify.exit.thread_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ilo_ccb_verify.exit.thread

if.then.i.i.i129:                                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %149 = and i64 %137, 4193280
  %merge.i.i.i122 = getelementptr i8, ptr %fifobar.0.i15.i, i32 -368
  %150 = ptrtoint ptr %merge.i.i.i122 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %merge.i.i.i122, align 8
  %or.i4.i.i123 = or i64 %151, %149
  %and13.i.i.i124 = and i64 %146, %144
  %idxprom14.i.i.i125 = trunc i64 %and13.i.i.i124 to i32
  %arrayidx15.i.i.i126 = getelementptr [0 x i64], ptr %fifobar.0.i15.i, i32 0, i32 %idxprom14.i.i.i125
  %152 = ptrtoint ptr %arrayidx15.i.i.i126 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx15.i.i.i126, align 8
  %or16.i.i.i127 = or i64 %or.i4.i.i123, %153
  store i64 %or16.i.i.i127, ptr %arrayidx15.i.i.i126, align 8
  %154 = ptrtoint ptr %tail.i.i.i118 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %tail.i.i.i118, align 8
  %add18.i.i.i128 = add i64 %155, 1
  store i64 %add18.i.i.i128, ptr %tail.i.i.i118, align 8
  br label %ilo_ccb_verify.exit.thread

ilo_ccb_verify.exit.thread:                       ; preds = %if.then.i.i.i129, %if.end4.i.ilo_ccb_verify.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %fifo_lock.i.i.i, i32 noundef %call3.i.i17.i) #9
  %156 = ptrtoint ptr %ccb_u5.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ccb_u5.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %157, i8 1) #9, !srcloc !128
  br label %if.then57

do.body24:                                        ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #11
  %158 = ptrtoint ptr %ilo_dev.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ilo_dev.i, align 4
  %dev.i117 = getelementptr inbounds %struct.pci_dev, ptr %159, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i117, ptr noundef nonnull @.str.36) #12
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %alloc_lock) #9
  %160 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %alloc_lock, i32 noundef %call32) #9
  %161 = ptrtoint ptr %ilo_dev.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ilo_dev.i, align 4
  tail call fastcc void @ilo_ccb_close(ptr noundef %162, ptr noundef nonnull %call7.i.i)
  br label %out.thread.sink.split

if.else:                                          ; preds = %if.end
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %f_flags41 = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 7
  %163 = ptrtoint ptr %f_flags41 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %f_flags41, align 4
  %and42 = and i32 %164, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %lor.lhs.false, label %if.else.out.thread_crit_edge

if.else.out.thread_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

lor.lhs.false:                                    ; preds = %if.else
  %165 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx, align 4
  %ccb_excl46 = getelementptr inbounds %struct.ccb_data, ptr %166, i32 0, i32 9
  %167 = ptrtoint ptr %ccb_excl46 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ccb_excl46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool47.not = icmp eq i32 %168, 0
  br i1 %tobool47.not, label %if.else49, label %lor.lhs.false.out.thread_crit_edge

lor.lhs.false.out.thread_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.else49:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %ccb_cnt52 = getelementptr inbounds %struct.ccb_data, ptr %166, i32 0, i32 8
  %169 = ptrtoint ptr %ccb_cnt52 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %ccb_cnt52, align 8
  %inc = add i32 %170, 1
  store i32 %inc, ptr %ccb_cnt52, align 8
  br label %if.then57

out.thread.sink.split:                            ; preds = %do.body24, %if.then2.out.thread.sink.split_crit_edge
  %error.0.ph.ph = phi i32 [ -16, %do.body24 ], [ -12, %if.then2.out.thread.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %out.thread

out.thread:                                       ; preds = %out.thread.sink.split, %lor.lhs.false.out.thread_crit_edge, %if.else.out.thread_crit_edge
  %error.0.ph = phi i32 [ -16, %if.else.out.thread_crit_edge ], [ -16, %lor.lhs.false.out.thread_crit_edge ], [ %error.0.ph.ph, %out.thread.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %open_lock) #9
  br label %cleanup

if.then57:                                        ; preds = %if.else49, %ilo_ccb_verify.exit.thread
  tail call void @_raw_spin_unlock(ptr noundef %open_lock) #9
  %171 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %173 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %172, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %out.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then57 ], [ %error.0.ph, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ilo_close(ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %fp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %2 = load i32, ptr @max_ccb, align 4
  %rem = urem i32 %and.i, %2
  %3 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 48
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %open_lock = getelementptr i8, ptr %5, i32 -132
  tail call void @_raw_spin_lock(ptr noundef %open_lock) #9
  %ccb_alloc = getelementptr i8, ptr %5, i32 -232
  %arrayidx = getelementptr [24 x ptr], ptr %ccb_alloc, i32 0, i32 %rem
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %ccb_cnt = getelementptr inbounds %struct.ccb_data, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %ccb_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ccb_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %fp, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 4
  %alloc_lock = getelementptr i8, ptr %5, i32 -88
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %alloc_lock) #9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %alloc_lock, i32 noundef %call5) #9
  %ilo_dev = getelementptr i8, ptr %5, i32 -136
  %13 = ptrtoint ptr %ilo_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ilo_dev, align 4
  tail call fastcc void @ilo_ccb_close(ptr noundef %14, ptr noundef %11)
  tail call void @kfree(ptr noundef %11) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %9, -1
  %15 = ptrtoint ptr %ccb_cnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dec, ptr %ccb_cnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %open_lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ilo_ccb_close(ptr noundef %pdev, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapped_ccb = getelementptr inbounds %struct.ccb_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %mapped_ccb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapped_ccb, align 8
  %ccb_u5.i = getelementptr inbounds %struct.ccb, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %ccb_u5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ccb_u5.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 2) #9, !srcloc !128
  %send_ctrl = getelementptr inbounds %struct.ccb, ptr %1, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %send_ctrl) #9, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %5 = and i32 %4, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %send_ctrl, i32 %5) #9, !srcloc !124
  %recv_ctrl = getelementptr inbounds %struct.ccb, ptr %1, i32 0, i32 5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %recv_ctrl) #9, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %7 = and i32 %6, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %recv_ctrl, i32 %7) #9, !srcloc !124
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %retries.034 = phi i32 [ 1000, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %ccb_u5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ccb_u5.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 1) #9, !srcloc !128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %send_ctrl) #9, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %recv_ctrl) #9, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  %14 = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %retries.034, -1
  %cmp = icmp ugt i32 %retries.034, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %do.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #12
  br label %if.end15

if.end15:                                         ; preds = %do.end, %land.lhs.true.if.end15_crit_edge
  tail call void @mmioset(ptr noundef %1, i32 noundef 0, i32 noundef 64) #9
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %dma_size = getelementptr inbounds %struct.ccb_data, ptr %data, i32 0, i32 5
  %15 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_size, align 4
  %dma_va = getelementptr inbounds %struct.ccb_data, ptr %data, i32 0, i32 3
  %17 = ptrtoint ptr %dma_va to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma_va, align 4
  %dma_pa = getelementptr inbounds %struct.ccb_data, ptr %data, i32 0, i32 4
  %19 = ptrtoint ptr %dma_pa to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_pa, align 8
  tail call void @dma_free_attrs(ptr noundef %dev16, i32 noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef 0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !60, !61, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !87, !88, !90, !92, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !106, !108, !110}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__UNIQUE_ID_version237, !1, !"__UNIQUE_ID_version237", i1 false, i1 false}
!1 = !{!"../drivers/misc/hpilo.c", i32 923, i32 1}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__modver_attr, !1, !"__modver_attr", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_alias238, !7, !"__UNIQUE_ID_alias238", i1 false, i1 false}
!7 = !{!"../drivers/misc/hpilo.c", i32 924, i32 1}
!8 = !{ptr @__UNIQUE_ID_description239, !9, !"__UNIQUE_ID_description239", i1 false, i1 false}
!9 = !{!"../drivers/misc/hpilo.c", i32 925, i32 1}
!10 = !{ptr @__UNIQUE_ID_author240, !11, !"__UNIQUE_ID_author240", i1 false, i1 false}
!11 = !{!"../drivers/misc/hpilo.c", i32 926, i32 1}
!12 = !{ptr @__UNIQUE_ID_file241, !13, !"__UNIQUE_ID_file241", i1 false, i1 false}
!13 = !{!"../drivers/misc/hpilo.c", i32 927, i32 1}
!14 = !{ptr @__UNIQUE_ID_license242, !13, !"__UNIQUE_ID_license242", i1 false, i1 false}
!15 = !{ptr @__param_max_ccb, !16, !"__param_max_ccb", i1 false, i1 false}
!16 = !{!"../drivers/misc/hpilo.c", i32 929, i32 1}
!17 = !{ptr @__UNIQUE_ID_max_ccbtype243, !16, !"__UNIQUE_ID_max_ccbtype243", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_max_ccb244, !19, !"__UNIQUE_ID_max_ccb244", i1 false, i1 false}
!19 = !{!"../drivers/misc/hpilo.c", i32 930, i32 1}
!20 = !{ptr @__initcall__kmod_hpilo__245_932_ilo_init6, !21, !"__initcall__kmod_hpilo__245_932_ilo_init6", i1 false, i1 false}
!21 = !{!"../drivers/misc/hpilo.c", i32 932, i32 1}
!22 = !{ptr @__exitcall_ilo_exit, !23, !"__exitcall_ilo_exit", i1 false, i1 false}
!23 = !{!"../drivers/misc/hpilo.c", i32 933, i32 1}
!24 = !{ptr @ilo_class, !25, !"ilo_class", i1 false, i1 false}
!25 = !{!"../drivers/misc/hpilo.c", i32 28, i32 22}
!26 = !{ptr @ilo_major, !27, !"ilo_major", i1 false, i1 false}
!27 = !{!"../drivers/misc/hpilo.c", i32 29, i32 21}
!28 = !{ptr @ilo_driver, !29, !"ilo_driver", i1 false, i1 false}
!29 = !{!"../drivers/misc/hpilo.c", i32 879, i32 26}
!30 = !{ptr @ilo_devices, !31, !"ilo_devices", i1 false, i1 false}
!31 = !{!"../drivers/misc/hpilo.c", i32 872, i32 35}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/misc/hpilo.c", i32 781, i32 3}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ilo_probe.__UNIQUE_ID_ddebug236, !33, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/hpilo.c", i32 799, i32 3}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ilo_probe._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @ilo_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @ilo_probe.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/misc/hpilo.c", i32 810, i32 2}
!45 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ilo_probe.__key.10, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/misc/hpilo.c", i32 811, i32 2}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ilo_probe.__key.12, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/misc/hpilo.c", i32 812, i32 2}
!51 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/misc/hpilo.c", i32 842, i32 3}
!54 = !{ptr @ilo_probe._entry.14, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ilo_probe._entry_ptr.16, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/misc/hpilo.c", i32 850, i32 9}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/hpilo.c", i32 852, i32 4}
!60 = !{ptr @ilo_probe._entry.18, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ilo_probe._entry_ptr.20, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ilo_blacklist, !63, !"ilo_blacklist", i1 false, i1 false}
!63 = !{!"../drivers/misc/hpilo.c", i32 32, i32 35}
!64 = !{ptr @ilo_hwdev, !65, !"ilo_hwdev", i1 false, i1 false}
!65 = !{!"../drivers/misc/hpilo.c", i32 31, i32 13}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/misc/hpilo.c", i32 702, i32 3}
!68 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ilo_map_device._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @ilo_map_device._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/misc/hpilo.c", i32 709, i32 3}
!73 = !{ptr @ilo_map_device._entry.23, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ilo_map_device._entry_ptr.25, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/misc/hpilo.c", i32 723, i32 3}
!77 = !{ptr @ilo_map_device._entry.26, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ilo_map_device._entry_ptr.28, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/misc/hpilo.c", i32 730, i32 3}
!81 = !{ptr @ilo_map_device._entry.29, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ilo_map_device._entry_ptr.31, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @ilo_fops, !84, !"ilo_fops", i1 false, i1 false}
!84 = !{!"../drivers/misc/hpilo.c", i32 640, i32 37}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!92 = !{ptr @ilo_open.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/misc/hpilo.c", i32 595, i32 3}
!94 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/misc/hpilo.c", i32 364, i32 3}
!97 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ilo_ccb_verify._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @ilo_ccb_verify._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/misc/hpilo.c", i32 253, i32 3}
!102 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ilo_ccb_close._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @ilo_ccb_close._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @__param_str_max_ccb, !16, !"__param_str_max_ccb", i1 false, i1 false}
!106 = !{ptr @max_ccb, !107, !"max_ccb", i1 false, i1 false}
!107 = !{!"../drivers/misc/hpilo.c", i32 30, i32 21}
!108 = !{ptr @ilo_init.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../drivers/misc/hpilo.c", i32 891, i32 14}
!110 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"auto-init"}
!122 = !{i64 2148712141, i64 2148712146, i64 2148712159, i64 2148712203, i64 2148712237, i64 2148712258}
!123 = !{i64 2153271931}
!124 = !{i64 5729809}
!125 = !{i64 5730007}
!126 = !{i64 2153269352}
!127 = !{i64 2153270957}
!128 = !{i64 5729612}
!129 = !{i64 5730227}
!130 = !{i64 2153270576}
!131 = !{i64 2152425934, i64 2152425959}
!132 = !{i64 2152425253, i64 2152425278}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{i64 4920808}
!135 = !{i64 4921005}
!136 = !{i64 2152406238}
