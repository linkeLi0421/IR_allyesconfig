; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-i801.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-i801.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.itco_wdt_platform_data = type { [32 x i8], i32, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.84 = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i801_priv = type { %struct.i2c_adapter, i32, i8, i8, i8, ptr, i32, %struct.completion, i8, i8, i8, i32, i32, ptr, ptr, i8, %struct.mutex }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@__param_str_disable_features = internal constant [26 x i8] c"i2c_i801.disable_features\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@disable_features = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_features = internal constant %struct.kernel_param { ptr @__param_str_disable_features, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @disable_features } }, section "__param", align 4
@__UNIQUE_ID_disable_featurestype293 = internal constant [40 x i8] c"i2c_i801.parmtype=disable_features:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_features294 = internal constant [247 x i8] c"i2c_i801.parm=disable_features:Disable selected driver features:\0A\09\09  0x01  disable SMBus PEC\0A\09\09  0x02  disable the block buffer\0A\09\09  0x08  disable the I2C block read functionality\0A\09\09  0x10  don't use interrupts\0A\09\09  0x20  disable SMBus Host Notify \00", section ".modinfo", align 1
@i801_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @i801_ids, ptr @i801_probe, ptr @i801_remove, ptr null, ptr null, ptr @i801_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i801_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author303 = internal constant [57 x i8] c"i2c_i801.author=Mark D. Studebaker <mdsxyz123@yahoo.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [48 x i8] c"i2c_i801.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [39 x i8] c"i2c_i801.description=I801 SMBus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [42 x i8] c"i2c_i801.file=drivers/i2c/busses/i2c-i801\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [21 x i8] c"i2c_i801.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_i2c_i801__308_1871_i2c_i801_init6 = internal global ptr @i2c_i801_init, section ".initcall6.init", align 4
@__exitcall_i2c_i801_exit = internal global ptr @i2c_i801_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i801_smbus\00", [21 x i8] zeroinitializer }, align 32
@i801_ids = internal constant { [60 x %struct.pci_device_id], [480 x i8] } { [60 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 9235, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9251, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9283, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 9347, i32 -1, i32 -1, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 32902, i32 9411, i32 -1, i32 -1, i32 0, i32 0, i32 35, i32 0 }, %struct.pci_device_id { i32 32902, i32 9427, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 9636, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 9834, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 10202, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 9883, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 10302, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 10544, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 20530, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 14896, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 14944, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 15152, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 7202, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 7458, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 7536, i32 -1, i32 -1, i32 0, i32 0, i32 32831, i32 0 }, %struct.pci_device_id { i32 32902, i32 7537, i32 -1, i32 -1, i32 0, i32 0, i32 32831, i32 0 }, %struct.pci_device_id { i32 32902, i32 7538, i32 -1, i32 -1, i32 0, i32 0, i32 32831, i32 0 }, %struct.pci_device_id { i32 32902, i32 9008, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 7714, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 35874, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 39970, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 7996, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 36130, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 36221, i32 -1, i32 -1, i32 0, i32 0, i32 32831, i32 0 }, %struct.pci_device_id { i32 32902, i32 36222, i32 -1, i32 -1, i32 0, i32 0, i32 32831, i32 0 }, %struct.pci_device_id { i32 32902, i32 36223, i32 -1, i32 -1, i32 0, i32 0, i32 32831, i32 0 }, %struct.pci_device_id { i32 32902, i32 9136, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 12756, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 36002, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 40098, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 3858, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 8850, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 41251, i32 -1, i32 -1, i32 0, i32 0, i32 65599, i32 0 }, %struct.pci_device_id { i32 32902, i32 40227, i32 -1, i32 -1, i32 0, i32 0, i32 65599, i32 0 }, %struct.pci_device_id { i32 32902, i32 6367, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id { i32 32902, i32 6623, i32 -1, i32 -1, i32 0, i32 0, i32 65599, i32 0 }, %struct.pci_device_id { i32 32902, i32 7113, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id { i32 32902, i32 23252, i32 -1, i32 -1, i32 0, i32 0, i32 63, i32 0 }, %struct.pci_device_id { i32 32902, i32 41379, i32 -1, i32 -1, i32 0, i32 0, i32 65599, i32 0 }, %struct.pci_device_id { i32 32902, i32 41507, i32 -1, i32 -1, i32 0, i32 0, i32 65599, i32 0 }, %struct.pci_device_id { i32 32902, i32 41635, i32 -1, i32 -1, i32 0, i32 0, i32 65599, i32 0 }, %struct.pci_device_id { i32 32902, i32 41763, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id { i32 32902, i32 40355, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id { i32 32902, i32 13475, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id { i32 32902, i32 14499, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id { i32 32902, i32 675, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id { i32 32902, i32 1699, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id { i32 32902, i32 41891, i32 -1, i32 -1, i32 0, i32 0, i32 65599, i32 0 }, %struct.pci_device_id { i32 32902, i32 19235, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id { i32 32902, i32 41123, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id { i32 32902, i32 17315, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id { i32 32902, i32 19875, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id { i32 32902, i32 31395, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id { i32 32902, i32 20899, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id { i32 32902, i32 21667, i32 -1, i32 -1, i32 0, i32 0, i32 131135, i32 0 }, %struct.pci_device_id zeroinitializer], [480 x i8] zeroinitializer }, align 32
@i801_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @i801_suspend, ptr @i801_resume, ptr @i801_suspend, ptr @i801_resume, ptr @i801_suspend, ptr @i801_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @i801_access, ptr null, ptr @i801_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@i801_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->acpi_lock\00", [47 x i8] zeroinitializer }, align 32
@i801_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1675, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s disabled by user\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i801_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/i2c/busses/i2c-i801.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i801_probe._entry_ptr = internal global ptr @i801_probe._entry, section ".printk_index", align 4
@i801_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1682, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to enable SMBus PCI device (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@i801_probe._entry_ptr.10 = internal global ptr @i801_probe._entry.7, section ".printk_index", align 4
@i801_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1691, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"SMBus base address uninitialized, upgrade BIOS\0A\00", [48 x i8] zeroinitializer }, align 32
@i801_probe._entry_ptr.13 = internal global ptr @i801_probe._entry.11, section ".printk_index", align 4
@i801_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1703, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to request SMBus region 0x%lx-0x%Lx\0A\00", [52 x i8] zeroinitializer }, align 32
@i801_probe._entry_ptr.16 = internal global ptr @i801_probe._entry.14, section ".printk_index", align 4
@i801_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1711, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enabling SMBus device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@i801_probe._entry_ptr.20 = internal global ptr @i801_probe._entry.17, section ".printk_index", align 4
@i801_probe.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.3, ptr @.str.4, ptr @.str.22, i8 1, i8 -84, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_i801\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SMBus using interrupt SMI#\0A\00", [36 x i8] zeroinitializer }, align 32
@i801_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 1719, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPD Write Disable is set\0A\00", [38 x i8] zeroinitializer }, align 32
@i801_probe._entry_ptr.25 = internal global ptr @i801_probe._entry.23, section ".printk_index", align 4
@i801_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 1743, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"An interrupt is pending!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@i801_probe._entry_ptr.29 = internal global ptr @i801_probe._entry.26, section ".printk_index", align 4
@i801_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 1753, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate irq %d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@i801_probe._entry_ptr.32 = internal global ptr @i801_probe._entry.30, section ".printk_index", align 4
@i801_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 1758, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMBus using %s\0A\00", [16 x i8] zeroinitializer }, align 32
@i801_probe._entry_ptr.35 = internal global ptr @i801_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCI interrupt\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"polling\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SMBus I801 adapter at %04lx\00", [36 x i8] zeroinitializer }, align 32
@i801_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 875, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i801_access\00", [20 x i8] zeroinitializer }, align 32
@i801_access._entry_ptr = internal global ptr @i801_access._entry, section ".printk_index", align 4
@i801_block_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 760, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"I2C block read is unsupported!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i801_block_transaction\00", [41 x i8] zeroinitializer }, align 32
@i801_block_transaction._entry_ptr = internal global ptr @i801_block_transaction._entry, section ".printk_index", align 4
@i801_block_transaction_byte_by_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 713, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Illegal SMBus block read size %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"i801_block_transaction_byte_by_byte\00", [60 x i8] zeroinitializer }, align 32
@i801_block_transaction_byte_by_byte._entry_ptr = internal global ptr @i801_block_transaction_byte_by_byte._entry, section ".printk_index", align 4
@i801_check_pre._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 331, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SMBus is busy, can't use it!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i801_check_pre\00", [17 x i8] zeroinitializer }, align 32
@i801_check_pre._entry_ptr = internal global ptr @i801_check_pre._entry, section ".printk_index", align 4
@i801_check_pre.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 0, i8 84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Clearing status flags (%02x)\0A\00", [34 x i8] zeroinitializer }, align 32
@i801_check_pre.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.46, ptr @.str.4, ptr @.str.48, i8 0, i8 87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Clearing aux status flags (%02x)\0A\00", [62 x i8] zeroinitializer }, align 32
@i801_check_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 370, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Transaction timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i801_check_post\00", [16 x i8] zeroinitializer }, align 32
@i801_check_post._entry_ptr = internal global ptr @i801_check_post._entry, section ".printk_index", align 4
@i801_check_post.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.50, ptr @.str.4, ptr @.str.51, i8 0, i8 93, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Terminating the current operation\0A\00", [61 x i8] zeroinitializer }, align 32
@i801_check_post._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.4, i32 382, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed terminating the transaction\0A\00", [60 x i8] zeroinitializer }, align 32
@i801_check_post._entry_ptr.54 = internal global ptr @i801_check_post._entry.52, section ".printk_index", align 4
@i801_check_post._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.4, i32 388, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Transaction failed\0A\00", [44 x i8] zeroinitializer }, align 32
@i801_check_post._entry_ptr.57 = internal global ptr @i801_check_post._entry.55, section ".printk_index", align 4
@i801_check_post.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.50, ptr @.str.4, ptr @.str.58, i8 0, i8 102, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PEC error\0A\00", [21 x i8] zeroinitializer }, align 32
@i801_check_post.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.50, ptr @.str.4, ptr @.str.59, i8 0, i8 103, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No response\0A\00", [19 x i8] zeroinitializer }, align 32
@i801_check_post.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.50, ptr @.str.4, ptr @.str.60, i8 0, i8 104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Lost arbitration\0A\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SMBus PEC\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Block buffer\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Block process call\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"I2C block read\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Interrupt\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SMBus Host Notify\00", [46 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@i801_isr_byte_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.68, ptr @.str.4, i32 540, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i801_isr_byte_done\00", [45 x i8] zeroinitializer }, align 32
@i801_isr_byte_done._entry_ptr = internal global ptr @i801_isr_byte_done._entry, section ".printk_index", align 4
@i801_isr_byte_done.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.68, ptr @.str.4, ptr @.str.69, i8 0, i8 -118, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Discarding extra byte on block read\0A\00", [59 x i8] zeroinitializer }, align 32
@i801_add_tco._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 1568, ptr @.str.28, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to create iTCO device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i801_add_tco\00", [19 x i8] zeroinitializer }, align 32
@i801_add_tco._entry_ptr = internal global ptr @i801_add_tco._entry, section ".printk_index", align 4
@i801_add_tco_cnl.pldata = internal constant { %struct.itco_wdt_platform_data, [56 x i8] } { %struct.itco_wdt_platform_data { [32 x i8] c"Intel PCH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iTCO_wdt\00", [23 x i8] zeroinitializer }, align 32
@i801_add_tco_spt.pldata = internal constant { %struct.itco_wdt_platform_data, [56 x i8] } { %struct.itco_wdt_platform_data { [32 x i8] c"Intel PCH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 12]
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"disable_features\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 314, i32 21 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"i801_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1843, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1844, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant [9 x i8] c"i801_ids\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 984, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"i801_pm_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1841, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 973, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1666, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1674, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1681, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1690, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1700, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1711, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1714, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1719, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1743, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1752, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1757, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1763, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 874, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 759, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 711, i32 5 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 331, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 337, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 351, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 370, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 372, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 381, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 388, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 410, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 413, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 418, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 306, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 307, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 308, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 309, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 310, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 311, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 87, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 538, i32 5 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 551, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1568, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1525, i32 45 }
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1530, i32 58 }
@___asan_gen_.313 = private unnamed_addr constant [7 x i8] c"pldata\00", align 1
@___asan_gen_.314 = private constant [33 x i8] c"../drivers/i2c/busses/i2c-i801.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1472, i32 45 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_disable_features294, ptr @__UNIQUE_ID_disable_featurestype293, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_i2c_i801_exit, ptr @__initcall__kmod_i2c_i801__308_1871_i2c_i801_init6, ptr @__param_disable_features, ptr @i2c_i801_exit, ptr @i801_access._entry, ptr @i801_access._entry_ptr, ptr @i801_add_tco._entry, ptr @i801_add_tco._entry_ptr, ptr @i801_block_transaction._entry, ptr @i801_block_transaction._entry_ptr, ptr @i801_block_transaction_byte_by_byte._entry, ptr @i801_block_transaction_byte_by_byte._entry_ptr, ptr @i801_check_post._entry, ptr @i801_check_post._entry.52, ptr @i801_check_post._entry.55, ptr @i801_check_post._entry_ptr, ptr @i801_check_post._entry_ptr.54, ptr @i801_check_post._entry_ptr.57, ptr @i801_check_pre._entry, ptr @i801_check_pre._entry_ptr, ptr @i801_isr_byte_done._entry, ptr @i801_isr_byte_done._entry_ptr, ptr @i801_probe._entry, ptr @i801_probe._entry.11, ptr @i801_probe._entry.14, ptr @i801_probe._entry.17, ptr @i801_probe._entry.23, ptr @i801_probe._entry.26, ptr @i801_probe._entry.30, ptr @i801_probe._entry.33, ptr @i801_probe._entry.7, ptr @i801_probe._entry_ptr, ptr @i801_probe._entry_ptr.10, ptr @i801_probe._entry_ptr.13, ptr @i801_probe._entry_ptr.16, ptr @i801_probe._entry_ptr.20, ptr @i801_probe._entry_ptr.25, ptr @i801_probe._entry_ptr.29, ptr @i801_probe._entry_ptr.32, ptr @i801_probe._entry_ptr.35, ptr @disable_features, ptr @i801_driver, ptr @.str, ptr @i801_ids, ptr @i801_pm_ops, ptr @smbus_algorithm, ptr @i801_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @init_completion.__key, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @i801_add_tco_cnl.pldata, ptr @.str.72, ptr @i801_add_tco_spt.pldata], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_features to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_ids to i32), i32 1920, i32 2400, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_block_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_block_transaction_byte_by_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_check_pre._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_check_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_check_post._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_check_post._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_isr_byte_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_add_tco._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_add_tco_cnl.pldata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i801_add_tco_spt.pldata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_i801_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @i801_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_i801_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @i801_driver, ptr noundef null, ptr noundef nonnull @.str.21) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i801_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %pcists = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1552, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %call.i, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 129, ptr %class, align 4
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @smbus_algorithm, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %parent, align 8
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %retries, align 8
  %acpi_lock = getelementptr inbounds %struct.i801_priv, ptr %call.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %acpi_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @i801_probe.__key) #8
  %pci_dev = getelementptr inbounds %struct.i801_priv, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %pci_dev, align 8
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  %features = getelementptr inbounds %struct.i801_priv, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %features, align 4
  %10 = load i32, ptr @disable_features, align 4
  %and = and i32 %8, 1
  %and14 = and i32 %and, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.for.inc_crit_edge, label %do.end19

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.61) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end19, %if.end.for.inc_crit_edge
  %11 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %features, align 4
  %13 = load i32, ptr @disable_features, align 4
  %and.1 = and i32 %12, 2
  %and14.1 = and i32 %and.1, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.1)
  %tobool15.not.1 = icmp eq i32 %and14.1, 0
  br i1 %tobool15.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end19.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

do.end19.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.62) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end19.1, %for.inc.for.inc.1_crit_edge
  %14 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %features, align 4
  %16 = load i32, ptr @disable_features, align 4
  %and.2 = and i32 %15, 4
  %and14.2 = and i32 %and.2, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.2)
  %tobool15.not.2 = icmp eq i32 %and14.2, 0
  br i1 %tobool15.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.end19.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

do.end19.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.63) #11
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end19.2, %for.inc.1.for.inc.2_crit_edge
  %17 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %features, align 4
  %19 = load i32, ptr @disable_features, align 4
  %and.3 = and i32 %18, 8
  %and14.3 = and i32 %and.3, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.3)
  %tobool15.not.3 = icmp eq i32 %and14.3, 0
  br i1 %tobool15.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.end19.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

do.end19.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.64) #11
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end19.3, %for.inc.2.for.inc.3_crit_edge
  %20 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %features, align 4
  %22 = load i32, ptr @disable_features, align 4
  %and.4 = and i32 %21, 16
  %and14.4 = and i32 %and.4, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.4)
  %tobool15.not.4 = icmp eq i32 %and14.4, 0
  br i1 %tobool15.not.4, label %for.inc.3.for.inc.4_crit_edge, label %do.end19.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

do.end19.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.65) #11
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.end19.4, %for.inc.3.for.inc.4_crit_edge
  %23 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %features, align 4
  %25 = load i32, ptr @disable_features, align 4
  %and.5 = and i32 %24, 32
  %and14.5 = and i32 %and.5, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.5)
  %tobool15.not.5 = icmp eq i32 %and14.5, 0
  br i1 %tobool15.not.5, label %for.inc.4.for.inc.5_crit_edge, label %do.end19.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

do.end19.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.66) #11
  br label %for.inc.5

for.inc.5:                                        ; preds = %do.end19.5, %for.inc.4.for.inc.5_crit_edge
  %26 = load i32, ptr @disable_features, align 4
  %neg = xor i32 %26, -1
  %27 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %features, align 4
  %and23 = and i32 %28, %neg
  store i32 %and23, ptr %features, align 4
  %call24 = tail call i32 @pcim_enable_device(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call24) #11
  br label %cleanup

if.end31:                                         ; preds = %for.inc.5
  tail call void @pcim_pin_device(ptr noundef %dev) #8
  %arrayidx32 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4
  %29 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx32, align 8
  %smba = getelementptr inbounds %struct.i801_priv, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %smba to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %smba, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool34.not = icmp eq i32 %30, 0
  br i1 %tobool34.not, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  %call45 = tail call i32 @pcim_iomap_regions(ptr noundef %dev, i32 noundef 16, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end55, label %do.end50

do.end50:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %smba, align 8
  %end = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4, i32 1
  %34 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end, align 4
  %conv = zext i32 %35 to i64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %33, i64 noundef %conv) #11
  br label %cleanup

if.end55:                                         ; preds = %if.end40
  %36 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_dev, align 8
  %original_hstcfg = getelementptr inbounds %struct.i801_priv, ptr %call.i, i32 0, i32 2
  %call57 = tail call i32 @pci_read_config_byte(ptr noundef %37, i32 noundef 64, ptr noundef %original_hstcfg) #8
  %38 = ptrtoint ptr %original_hstcfg to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %original_hstcfg, align 4
  %40 = and i8 %39, -6
  %41 = or i8 %40, 1
  %42 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci_dev, align 8
  %call.i277 = tail call i32 @pci_write_config_byte(ptr noundef %43, i32 noundef 64, i8 noundef zeroext %41) #8
  %44 = ptrtoint ptr %original_hstcfg to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %original_hstcfg, align 4
  %46 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool61.not = icmp eq i8 %46, 0
  br i1 %tobool61.not, label %do.end65, label %if.end55.if.end67_crit_edge

if.end55.if.end67_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

do.end65:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.18) #11
  br label %if.end67

if.end67:                                         ; preds = %do.end65, %if.end55.if.end67_crit_edge
  %47 = ptrtoint ptr %original_hstcfg to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %original_hstcfg, align 4
  %49 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool71.not = icmp eq i8 %49, 0
  br i1 %tobool71.not, label %if.end67.if.end86_crit_edge, label %do.body73

if.end67.if.end86_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

do.body73:                                        ; preds = %if.end67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i801_probe.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i801_probe, %do.end83)) #8
          to label %if.then79 [label %do.end83], !srcloc !182

if.then79:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i801_probe.__UNIQUE_ID_ddebug302, ptr noundef %dev1, ptr noundef nonnull @.str.22) #8
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %do.body73
  %50 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %features, align 4
  %and85 = and i32 %51, -17
  store i32 %and85, ptr %features, align 4
  br label %if.end86

if.end86:                                         ; preds = %do.end83, %if.end67.if.end86_crit_edge
  %52 = ptrtoint ptr %original_hstcfg to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %original_hstcfg, align 4
  %54 = and i8 %53, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool90.not = icmp eq i8 %54, 0
  br i1 %tobool90.not, label %if.end86.if.end96_crit_edge, label %do.end94

if.end86.if.end96_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

do.end94:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.24) #11
  br label %if.end96

if.end96:                                         ; preds = %do.end94, %if.end86.if.end96_crit_edge
  %55 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %features, align 4
  %and98 = and i32 %56, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end96.if.end108_crit_edge, label %if.then100

if.end96.if.end108_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then100:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %smba, align 8
  %add = add i32 %58, 13
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %59 = inttoptr i32 %add.i to ptr
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %59) #8, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %61 = and i8 %60, -4
  %62 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %smba, align 8
  %add107 = add i32 %63, 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i278 = and i32 %add107, 1048575
  %add.i279 = or i32 %and.i278, -18874368
  %64 = inttoptr i32 %add.i279 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 %61) #8, !srcloc !186
  br label %if.end108

if.end108:                                        ; preds = %if.then100, %if.end96.if.end108_crit_edge
  %65 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %smba, align 8
  %add110 = add i32 %66, 2
  %and.i280 = and i32 %add110, 1048575
  %add.i281 = or i32 %and.i280, -18874368
  %67 = inttoptr i32 %add.i281 to ptr
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #8, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %69 = and i8 %68, -3
  %original_hstcnt = getelementptr inbounds %struct.i801_priv, ptr %call.i, i32 0, i32 3
  %70 = ptrtoint ptr %original_hstcnt to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %original_hstcnt, align 1
  %71 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %features, align 4
  %and116 = and i32 %72, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end108.if.end122_crit_edge, label %if.then118

if.end108.if.end122_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then118:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %smba, align 8
  %add120 = add i32 %74, 17
  %and.i282 = and i32 %add120, 1048575
  %add.i283 = or i32 %and.i282, -18874368
  %75 = inttoptr i32 %add.i283 to ptr
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %75) #8, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %original_slvcmd = getelementptr inbounds %struct.i801_priv, ptr %call.i, i32 0, i32 4
  %77 = ptrtoint ptr %original_slvcmd to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %original_slvcmd, align 2
  br label %if.end122

if.end122:                                        ; preds = %if.then118, %if.end108.if.end122_crit_edge
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 7
  %78 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 20, ptr %timeout, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %79 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %80)
  %cmp124 = icmp eq i32 %80, -2147483648
  br i1 %cmp124, label %if.then126, label %if.end122.if.end129_crit_edge

if.end122.if.end129_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %features, align 4
  %and128 = and i32 %82, -17
  store i32 %and128, ptr %features, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %if.end122.if.end129_crit_edge
  %83 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %features, align 4
  %and131 = and i32 %84, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end129.if.end145_crit_edge, label %if.then133

if.end129.if.end145_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then133:                                       ; preds = %if.end129
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pcists) #8
  %85 = ptrtoint ptr %pcists to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 -1, ptr %pcists, align 2, !annotation !187
  %86 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pci_dev, align 8
  %call135 = call i32 @pci_read_config_word(ptr noundef %87, i32 noundef 6, ptr noundef nonnull %pcists) #8
  %88 = ptrtoint ptr %pcists to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %pcists, align 2
  %90 = and i16 %89, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool138.not = icmp eq i16 %90, 0
  br i1 %tobool138.not, label %if.then133.if.end144_crit_edge, label %do.end142

if.then133.if.end144_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

do.end142:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.27) #11
  br label %if.end144

if.end144:                                        ; preds = %do.end142, %if.then133.if.end144_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pcists) #8
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end129.if.end145_crit_edge
  %91 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %features, align 4
  %and147 = and i32 %92, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end145.do.end166_crit_edge, label %if.then149

if.end145.do.end166_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end166

if.then149:                                       ; preds = %if.end145
  %done = getelementptr inbounds %struct.i801_priv, ptr %call.i, i32 0, i32 7
  %93 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.i801_priv, ptr %call.i, i32 0, i32 7, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @init_completion.__key) #8
  %94 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %irq, align 4
  %call.i284 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %95, ptr noundef nonnull @i801_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284)
  %tobool153.not = icmp eq i32 %call.i284, 0
  br i1 %tobool153.not, label %if.then149.do.end166_crit_edge, label %do.end157

if.then149.do.end166_crit_edge:                   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end166

do.end157:                                        ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %97, i32 noundef %call.i284) #11
  %98 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %features, align 4
  %and161 = and i32 %99, -17
  store i32 %and161, ptr %features, align 4
  br label %do.end166

do.end166:                                        ; preds = %do.end157, %if.then149.do.end166_crit_edge, %if.end145.do.end166_crit_edge
  %100 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %features, align 4
  %and169 = and i32 %101, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  %cond = select i1 %tobool170.not, ptr @.str.37, ptr @.str.36
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond) #11
  call fastcc void @i801_add_tco(ptr noundef nonnull %call.i)
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %102 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %smba, align 8
  %call173 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.38, i32 noundef %103)
  %call175 = call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end178, label %do.end166.cleanup_crit_edge

do.end166.cleanup_crit_edge:                      ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end178:                                        ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @i801_enable_host_notify(ptr noundef nonnull %call.i)
  %driver_data.i.i285 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %104 = ptrtoint ptr %driver_data.i.i285 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i, ptr %driver_data.i.i285, align 4
  %driver_flags.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 12, i32 2
  %105 = ptrtoint ptr %driver_flags.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %driver_flags.i, align 8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #8
  %call.i286 = call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #8
  call void @pm_runtime_allow(ptr noundef %dev1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end178, %do.end166.cleanup_crit_edge, %do.end50, %do.end38, %do.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %do.end29 ], [ %call45, %do.end50 ], [ 0, %if.end178 ], [ -19, %do.end38 ], [ -12, %entry.cleanup_crit_edge ], [ %call175, %do.end166.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i801_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %original_hstcnt = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %original_hstcnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %original_hstcnt, align 1
  %smba = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smba, align 8
  %add = add i32 %5, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %3) #8, !srcloc !186
  %features.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %features.i, align 4
  %and.i13 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i = icmp eq i32 %and.i13, 0
  br i1 %tobool.not.i, label %entry.i801_disable_host_notify.exit_crit_edge, label %if.end.i

entry.i801_disable_host_notify.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %i801_disable_host_notify.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %original_slvcmd.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %original_slvcmd.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %original_slvcmd.i, align 2
  %11 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smba, align 8
  %add.i14 = add i32 %12, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i.i = and i32 %add.i14, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %13 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %10) #8, !srcloc !186
  br label %i801_disable_host_notify.exit

i801_disable_host_notify.exit:                    ; preds = %if.end.i, %entry.i801_disable_host_notify.exit_crit_edge
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  %original_hstcfg = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %original_hstcfg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %original_hstcfg, align 4
  %call1 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 64, i8 noundef zeroext %15) #8
  %tco_pdev = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %tco_pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tco_pdev, align 8
  tail call void @platform_device_unregister(ptr noundef %17) #8
  %acpi_reserved = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %acpi_reserved to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %acpi_reserved, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.then, label %i801_disable_host_notify.exit.if.end_crit_edge

i801_disable_host_notify.exit.if.end_crit_edge:   ; preds = %i801_disable_host_notify.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %i801_disable_host_notify.exit
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !189
  br label %if.end

if.end:                                           ; preds = %if.then, %i801_disable_host_notify.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i801_shutdown(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %original_hstcnt = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %original_hstcnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %original_hstcnt, align 1
  %smba = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smba, align 8
  %add = add i32 %5, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %3) #8, !srcloc !186
  %features.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %features.i, align 4
  %and.i6 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.not.i = icmp eq i32 %and.i6, 0
  br i1 %tobool.not.i, label %entry.i801_disable_host_notify.exit_crit_edge, label %if.end.i

entry.i801_disable_host_notify.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %i801_disable_host_notify.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %original_slvcmd.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %original_slvcmd.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %original_slvcmd.i, align 2
  %11 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smba, align 8
  %add.i7 = add i32 %12, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i.i = and i32 %add.i7, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %13 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %10) #8, !srcloc !186
  br label %i801_disable_host_notify.exit

i801_disable_host_notify.exit:                    ; preds = %if.end.i, %entry.i801_disable_host_notify.exit_crit_edge
  %original_hstcfg = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %original_hstcfg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %original_hstcfg, align 4
  %call1 = tail call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 64, i8 noundef zeroext %15) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_pin_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i801_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %pcists = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pcists) #8
  %0 = ptrtoint ptr %pcists to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %pcists, align 2, !annotation !187
  %pci_dev = getelementptr inbounds %struct.i801_priv, ptr %dev_id, i32 0, i32 5
  %1 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_dev, align 8
  %call = call i32 @pci_read_config_word(ptr noundef %2, i32 noundef 6, ptr noundef nonnull %pcists) #8
  %3 = ptrtoint ptr %pcists to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pcists, align 2
  %5 = and i16 %4, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %features = getelementptr inbounds %struct.i801_priv, ptr %dev_id, i32 0, i32 6
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features, align 4
  %and1 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %if.then3

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %smba = getelementptr inbounds %struct.i801_priv, ptr %dev_id, i32 0, i32 1
  %8 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smba, align 8
  %add = add i32 %9, 16
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add.i to ptr
  %11 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #8, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %if.then3.if.end11_crit_edge, label %if.then8

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %smba, align 8
  %add.i52 = add i32 %14, 20
  %and.i.i = and i32 %add.i52, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %17 = lshr i8 %16, 1
  %conv1.i = zext i8 %17 to i16
  %call2.i = call i32 @i2c_handle_smbus_host_notify(ptr noundef %dev_id, i16 noundef zeroext %conv1.i) #8
  %18 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smba, align 8
  %add4.i = add i32 %19, 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %and.i1.i = and i32 %add4.i, 1048575
  %add.i2.i = or i32 %and.i1.i, -18874368
  %20 = inttoptr i32 %add.i2.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 1) #8, !srcloc !186
  br label %cleanup

if.end11:                                         ; preds = %if.then3.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %smba12 = getelementptr inbounds %struct.i801_priv, ptr %dev_id, i32 0, i32 1
  %21 = ptrtoint ptr %smba12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %smba12, align 8
  %and.i53 = and i32 %22, 1048575
  %add.i54 = or i32 %and.i53, -18874368
  %23 = inttoptr i32 %add.i54 to ptr
  %24 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #8, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool17.not = icmp sgt i8 %24, -1
  br i1 %tobool17.not, label %if.end11.if.end19_crit_edge, label %if.then18

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @i801_isr_byte_done(ptr noundef %dev_id)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end11.if.end19_crit_edge
  %and21 = and i8 %24, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and21)
  %tobool23.not = icmp eq i8 %and21, 0
  br i1 %tobool23.not, label %if.end19.if.end27_crit_edge, label %if.then24

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %smba12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %smba12, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %and.i55 = and i32 %26, 1048575
  %add.i56 = or i32 %and.i55, -18874368
  %27 = inttoptr i32 %add.i56 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %and21) #8, !srcloc !186
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end19.if.end27_crit_edge
  %28 = and i8 %24, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool31.not = icmp eq i8 %28, 0
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %if.then32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %status33 = getelementptr inbounds %struct.i801_priv, ptr %dev_id, i32 0, i32 8
  %29 = ptrtoint ptr %status33 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %status33, align 8
  %done = getelementptr inbounds %struct.i801_priv, ptr %dev_id, i32 0, i32 7
  call void @complete(ptr noundef %done) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end27.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then32 ], [ 1, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pcists) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i801_add_tco(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  %pdevinfo.i.i44 = alloca %struct.platform_device_info, align 8
  %base_addr.i = alloca i32, align 4
  %hidden.i = alloca i8, align 1
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %tco_res = alloca [2 x %struct.resource], align 4
  %tco_base = alloca i32, align 4
  %tco_ctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev1 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tco_res) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tco_base) #8
  %2 = ptrtoint ptr %tco_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tco_base, align 4, !annotation !187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tco_ctl) #8
  %3 = ptrtoint ptr %tco_ctl to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tco_ctl, align 4, !annotation !187
  %features = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 6
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  %call4 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 80, ptr noundef nonnull %tco_base) #8
  %call5 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 84, ptr noundef nonnull %tco_ctl) #8
  %6 = ptrtoint ptr %tco_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tco_ctl, align 4
  %and6 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %8 = getelementptr inbounds i8, ptr %tco_res, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 56)
  %10 = ptrtoint ptr %tco_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tco_base, align 4
  %and10 = and i32 %11, -2
  %12 = ptrtoint ptr %tco_res to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and10, ptr %tco_res, align 4
  %sub = add i32 %and10, 31
  %end = getelementptr inbounds %struct.resource, ptr %tco_res, i32 0, i32 1
  %13 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %end, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %tco_res, i32 0, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 256, ptr %flags, align 4
  %15 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %features, align 4
  %and13 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %17 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 255, i32 48)
  %19 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev.i, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %fwnode.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %17, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.72, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tco_res, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @i801_add_tco_cnl.pldata, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 40, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  br label %if.end21

if.else:                                          ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base_addr.i) #8
  %29 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %base_addr.i, align 4, !annotation !187
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hidden.i) #8
  %30 = ptrtoint ptr %hidden.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %hidden.i, align 1, !annotation !187
  call void @pci_lock_rescan_remove() #8
  %devfn1.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %devfn1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %devfn1.i, align 4
  %and.i = and i32 %32, 248
  %or.i = or i32 %and.i, 1
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus.i, align 8
  %call.i = call i32 @pci_bus_read_config_byte(ptr noundef %34, i32 noundef %or.i, i32 noundef 225, ptr noundef nonnull %hidden.i) #8
  %35 = ptrtoint ptr %hidden.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hidden.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %if.else.if.end.i_crit_edge, label %if.then.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus.i, align 8
  %call4.i = call i32 @pci_bus_write_config_byte(ptr noundef %38, i32 noundef %or.i, i32 noundef 225, i8 noundef zeroext 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %39 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i, align 8
  %call6.i = call i32 @pci_bus_read_config_dword(ptr noundef %40, i32 noundef %or.i, i32 noundef 16, ptr noundef nonnull %base_addr.i) #8
  %41 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base_addr.i, align 4
  %43 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bus.i, align 8
  %call9.i = call i32 @pci_bus_read_config_dword(ptr noundef %44, i32 noundef %or.i, i32 noundef 20, ptr noundef nonnull %base_addr.i) #8
  %45 = ptrtoint ptr %hidden.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %hidden.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool13.not.i = icmp eq i8 %46, 0
  br i1 %tobool13.not.i, label %if.end.i.i801_add_tco_spt.exit_crit_edge, label %if.then14.i

if.end.i.i801_add_tco_spt.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i801_add_tco_spt.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus.i, align 8
  %call16.i = call i32 @pci_bus_write_config_byte(ptr noundef %48, i32 noundef %or.i, i32 noundef 225, i8 noundef zeroext %46) #8
  br label %i801_add_tco_spt.exit

i801_add_tco_spt.exit:                            ; preds = %if.then14.i, %if.end.i.i801_add_tco_spt.exit_crit_edge
  %and7.i = and i32 %42, -16
  call void @pci_unlock_rescan_remove() #8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %49 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6623, i16 %50)
  %cmp.i = icmp eq i16 %50, 6623
  %storemerge.v.i = select i1 %cmp.i, i32 13565964, i32 12976140
  %storemerge.i = add i32 %storemerge.v.i, %and7.i
  %arrayidx.i = getelementptr inbounds %struct.resource, ptr %tco_res, i32 1
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %storemerge.i, ptr %arrayidx.i, align 4
  %add27.i = or i32 %storemerge.i, 3
  %end.i = getelementptr inbounds %struct.resource, ptr %tco_res, i32 1, i32 1
  %52 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add27.i, ptr %end.i, align 4
  %flags.i = getelementptr inbounds %struct.resource, ptr %tco_res, i32 1, i32 3
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 512, ptr %flags.i, align 4
  %dev.i45 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i44) #8
  %54 = getelementptr inbounds i8, ptr %pdevinfo.i.i44, i32 8
  %55 = call ptr @memset(ptr %54, i32 255, i32 48)
  %56 = ptrtoint ptr %pdevinfo.i.i44 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %dev.i45, ptr %pdevinfo.i.i44, align 8
  %fwnode.i.i46 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i44, i32 0, i32 1
  %57 = ptrtoint ptr %fwnode.i.i46 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %fwnode.i.i46, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %54, align 8
  %name2.i.i47 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i44, i32 0, i32 3
  %59 = ptrtoint ptr %name2.i.i47 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @.str.72, ptr %name2.i.i47, align 4
  %res4.i.i48 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i44, i32 0, i32 5
  %60 = ptrtoint ptr %res4.i.i48 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %tco_res, ptr %res4.i.i48, align 4
  %num_res.i.i49 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i44, i32 0, i32 6
  %61 = ptrtoint ptr %num_res.i.i49 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %num_res.i.i49, align 8
  %data5.i.i50 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i44, i32 0, i32 7
  %62 = ptrtoint ptr %data5.i.i50 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @i801_add_tco_spt.pldata, ptr %data5.i.i50, align 4
  %size_data.i.i51 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i44, i32 0, i32 8
  %63 = ptrtoint ptr %size_data.i.i51 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 40, ptr %size_data.i.i51, align 8
  %dma_mask.i.i52 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i44, i32 0, i32 9
  %64 = ptrtoint ptr %dma_mask.i.i52 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %dma_mask.i.i52, align 8
  %properties.i.i53 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i44, i32 0, i32 10
  %65 = ptrtoint ptr %properties.i.i53 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %properties.i.i53, align 8
  %call.i.i54 = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i44) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i44) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hidden.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_addr.i) #8
  br label %if.end21

if.end21:                                         ; preds = %i801_add_tco_spt.exit, %if.then15
  %call.i.i54.sink = phi ptr [ %call.i.i54, %i801_add_tco_spt.exit ], [ %call.i.i, %if.then15 ]
  %tco_pdev20 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 14
  %66 = ptrtoint ptr %tco_pdev20 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i.i54.sink, ptr %tco_pdev20, align 8
  %cmp.i55 = icmp ugt ptr %call.i.i54.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55, label %do.end, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.70) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end21.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tco_ctl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tco_base) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tco_res) #8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i801_enable_host_notify(ptr nocapture noundef readonly %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %features = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %original_slvcmd = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %original_slvcmd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %original_slvcmd, align 2
  %6 = or i8 %5, 5
  %smba = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smba, align 8
  %add = add i32 %8, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %6) #8, !srcloc !186
  %10 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %smba, align 8
  %add3 = add i32 %11, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i7 = and i32 %add3, 1048575
  %add.i8 = or i32 %and.i7, -18874368
  %12 = inttoptr i32 %add.i8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 1) #8, !srcloc !186
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i801_access(ptr nocapture noundef readonly %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr noundef %data) #2 align 64 {
entry:
  %hostc.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %acpi_lock = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %acpi_lock, i32 noundef 0) #8
  %acpi_reserved = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %acpi_reserved to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %acpi_reserved, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %acpi_lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pci_dev = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %features = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %features, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %8 = and i16 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool5.not = icmp eq i16 %8, 0
  %or.cond = or i1 %tobool5.not, %tobool3.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not = icmp eq i32 %size, 0
  %or.cond287 = or i1 %cmp.not, %or.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp8 = icmp ne i32 %size, 8
  %not.or.cond287 = xor i1 %or.cond287, true
  %spec.select290 = and i1 %cmp8, %not.or.cond287
  %9 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb32
    i32 3, label %sw.bb51
    i32 5, label %sw.bb78
    i32 8, label %sw.bb90
    i32 7, label %sw.bb112
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %addr.tr286 = trunc i16 %addr to i8
  %shl = shl i8 %addr.tr286, 1
  %10 = and i8 %read_write, 1
  %or = or i8 %10, %shl
  %smba = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smba, align 8
  %add = add i32 %12, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %or) #8, !srcloc !186
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %addr.tr285 = trunc i16 %addr to i8
  %shl18 = shl i8 %addr.tr285, 1
  %and20 = and i8 %read_write, 1
  %or21 = or i8 %and20, %shl18
  %smba23 = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %smba23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %smba23, align 8
  %add24 = add i32 %15, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i291 = and i32 %add24, 1048575
  %add.i292 = or i32 %and.i291, -18874368
  %16 = inttoptr i32 %add.i292 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %or21) #8, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp26 = icmp eq i8 %read_write, 0
  br i1 %cmp26, label %if.then28, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then28:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %smba23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %smba23, align 8
  %add30 = add i32 %18, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i293 = and i32 %add30, 1048575
  %add.i294 = or i32 %and.i293, -18874368
  %19 = inttoptr i32 %add.i294 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %command) #8, !srcloc !186
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end
  %addr.tr284 = trunc i16 %addr to i8
  %shl35 = shl i8 %addr.tr284, 1
  %and37 = and i8 %read_write, 1
  %or38 = or i8 %and37, %shl35
  %smba40 = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %smba40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smba40, align 8
  %add41 = add i32 %21, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i295 = and i32 %add41, 1048575
  %add.i296 = or i32 %and.i295, -18874368
  %22 = inttoptr i32 %add.i296 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %or38) #8, !srcloc !186
  %23 = ptrtoint ptr %smba40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %smba40, align 8
  %add43 = add i32 %24, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i297 = and i32 %add43, 1048575
  %add.i298 = or i32 %and.i297, -18874368
  %25 = inttoptr i32 %add.i298 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %command) #8, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp45 = icmp eq i8 %read_write, 0
  br i1 %cmp45, label %if.then47, label %sw.bb32.sw.epilog_crit_edge

sw.bb32.sw.epilog_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then47:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data, align 2
  %28 = ptrtoint ptr %smba40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %smba40, align 8
  %add49 = add i32 %29, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i299 = and i32 %add49, 1048575
  %add.i300 = or i32 %and.i299, -18874368
  %30 = inttoptr i32 %add.i300 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %27) #8, !srcloc !186
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end
  %addr.tr283 = trunc i16 %addr to i8
  %shl54 = shl i8 %addr.tr283, 1
  %and56 = and i8 %read_write, 1
  %or57 = or i8 %and56, %shl54
  %smba59 = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %smba59 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %smba59, align 8
  %add60 = add i32 %32, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i301 = and i32 %add60, 1048575
  %add.i302 = or i32 %and.i301, -18874368
  %33 = inttoptr i32 %add.i302 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %or57) #8, !srcloc !186
  %34 = ptrtoint ptr %smba59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %smba59, align 8
  %add62 = add i32 %35, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i303 = and i32 %add62, 1048575
  %add.i304 = or i32 %and.i303, -18874368
  %36 = inttoptr i32 %add.i304 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %command) #8, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp64 = icmp eq i8 %read_write, 0
  br i1 %cmp64, label %if.then66, label %sw.bb51.sw.epilog_crit_edge

sw.bb51.sw.epilog_crit_edge:                      ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then66:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %data, align 2
  %conv69 = trunc i16 %38 to i8
  %39 = ptrtoint ptr %smba59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %smba59, align 8
  %add71 = add i32 %40, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i305 = and i32 %add71, 1048575
  %add.i306 = or i32 %and.i305, -18874368
  %41 = inttoptr i32 %add.i306 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %conv69) #8, !srcloc !186
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %data, align 2
  %44 = lshr i16 %43, 8
  %conv74 = trunc i16 %44 to i8
  %45 = ptrtoint ptr %smba59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %smba59, align 8
  %add76 = add i32 %46, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i307 = and i32 %add76, 1048575
  %add.i308 = or i32 %and.i307, -18874368
  %47 = inttoptr i32 %add.i308 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %47, i8 %conv74) #8, !srcloc !186
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %addr.tr282 = trunc i16 %addr to i8
  %shl81 = shl i8 %addr.tr282, 1
  %48 = and i8 %read_write, 1
  %or84 = or i8 %48, %shl81
  %smba86 = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %smba86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %smba86, align 8
  %add87 = add i32 %50, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i309 = and i32 %add87, 1048575
  %add.i310 = or i32 %and.i309, -18874368
  %51 = inttoptr i32 %add.i310 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 %or84) #8, !srcloc !186
  %52 = ptrtoint ptr %smba86 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %smba86, align 8
  %add89 = add i32 %53, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i311 = and i32 %add89, 1048575
  %add.i312 = or i32 %and.i311, -18874368
  %54 = inttoptr i32 %add.i312 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %command) #8, !srcloc !186
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.end
  %addr.tr281 = trunc i16 %addr to i8
  %shl93 = shl i8 %addr.tr281, 1
  %original_hstcfg = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %original_hstcfg to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %original_hstcfg, align 4
  %57 = and i8 %56, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool96.not = icmp eq i8 %57, 0
  %and98 = and i8 %read_write, 1
  %spec.select = select i1 %tobool96.not, i8 0, i8 %and98
  %or99 = or i8 %spec.select, %shl93
  %smba101 = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %smba101 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %smba101, align 8
  %add102 = add i32 %59, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i313 = and i32 %add102, 1048575
  %add.i314 = or i32 %and.i313, -18874368
  %60 = inttoptr i32 %add.i314 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 %or99) #8, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp104 = icmp eq i8 %read_write, 1
  %61 = ptrtoint ptr %smba101 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %smba101, align 8
  br i1 %cmp104, label %if.then106, label %if.else

if.then106:                                       ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #10
  %add108 = add i32 %62, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i315 = and i32 %add108, 1048575
  %add.i316 = or i32 %and.i315, -18874368
  %63 = inttoptr i32 %add.i316 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %command) #8, !srcloc !186
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #10
  %add110 = add i32 %62, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i317 = and i32 %add110, 1048575
  %add.i318 = or i32 %and.i317, -18874368
  %64 = inttoptr i32 %add.i318 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 %command) #8, !srcloc !186
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %addr.tr = trunc i16 %addr to i8
  %conv116 = shl i8 %addr.tr, 1
  %smba117 = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %smba117 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %smba117, align 8
  %add118 = add i32 %66, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i319 = and i32 %add118, 1048575
  %add.i320 = or i32 %and.i319, -18874368
  %67 = inttoptr i32 %add.i320 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 %conv116) #8, !srcloc !186
  %68 = ptrtoint ptr %smba117 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %smba117, align 8
  %add120 = add i32 %69, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i321 = and i32 %add120, 1048575
  %add.i322 = or i32 %and.i321, -18874368
  %70 = inttoptr i32 %add.i322 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %70, i8 %command) #8, !srcloc !186
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pci_dev, align 8
  %dev122 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev122, ptr noundef nonnull @.str.39, i32 noundef %size) #11
  br label %out

sw.epilog:                                        ; preds = %sw.bb112, %if.else, %if.then106, %sw.bb78, %if.then66, %sw.bb51.sw.epilog_crit_edge, %if.then47, %sw.bb32.sw.epilog_crit_edge, %if.then28, %sw.bb15.sw.epilog_crit_edge, %sw.bb
  %tobool143.not = phi i1 [ false, %sw.bb112 ], [ false, %sw.bb78 ], [ true, %sw.bb ], [ true, %if.then28 ], [ true, %sw.bb15.sw.epilog_crit_edge ], [ true, %if.then47 ], [ true, %sw.bb32.sw.epilog_crit_edge ], [ true, %if.then66 ], [ true, %sw.bb51.sw.epilog_crit_edge ], [ false, %if.else ], [ false, %if.then106 ]
  %cmp171 = phi i1 [ true, %sw.bb112 ], [ true, %sw.bb78 ], [ true, %sw.bb ], [ false, %if.then28 ], [ false, %sw.bb15.sw.epilog_crit_edge ], [ false, %if.then47 ], [ false, %sw.bb32.sw.epilog_crit_edge ], [ false, %if.then66 ], [ false, %sw.bb51.sw.epilog_crit_edge ], [ true, %if.else ], [ true, %if.then106 ]
  %xact.0 = phi i32 [ 0, %sw.bb112 ], [ 0, %sw.bb78 ], [ 0, %sw.bb ], [ 4, %if.then28 ], [ 4, %sw.bb15.sw.epilog_crit_edge ], [ 8, %if.then47 ], [ 8, %sw.bb32.sw.epilog_crit_edge ], [ 12, %if.then66 ], [ 12, %sw.bb51.sw.epilog_crit_edge ], [ 0, %if.else ], [ 0, %if.then106 ]
  %smba125 = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %73 = ptrtoint ptr %smba125 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %smba125, align 8
  %add126 = add i32 %74, 13
  %and.i323 = and i32 %add126, 1048575
  %add.i324 = or i32 %and.i323, -18874368
  %75 = inttoptr i32 %add.i324 to ptr
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %75) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %spec.select290, label %if.then124, label %if.else133

if.then124:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %77 = or i8 %76, 1
  %78 = ptrtoint ptr %smba125 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %smba125, align 8
  %add132 = add i32 %79, 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i325 = and i32 %add132, 1048575
  %add.i326 = or i32 %and.i325, -18874368
  %80 = inttoptr i32 %add.i326 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %80, i8 %77) #8, !srcloc !186
  br label %if.end142

if.else133:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %81 = and i8 %76, -2
  %82 = ptrtoint ptr %smba125 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %smba125, align 8
  %add141 = add i32 %83, 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i329 = and i32 %add141, 1048575
  %add.i330 = or i32 %and.i329, -18874368
  %84 = inttoptr i32 %add.i330 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 %81) #8, !srcloc !186
  br label %if.end142

if.end142:                                        ; preds = %if.else133, %if.then124
  br i1 %tobool143.not, label %if.else146, label %if.then144

if.then144:                                       ; preds = %if.end142
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hostc.i) #8
  %85 = ptrtoint ptr %hostc.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -1, ptr %hostc.i, align 1, !annotation !187
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp.i = icmp eq i8 %read_write, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %size)
  %cmp2.i = icmp eq i32 %size, 5
  %or.cond.i = and i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %if.end30.thread105.i, label %if.else.i

if.else.i:                                        ; preds = %if.then144
  %86 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %data, align 2
  %88 = add i8 %87, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %88)
  %89 = icmp ult i8 %88, -32
  br i1 %89, label %if.else.i.i801_block_transaction.exit_crit_edge, label %if.end13.i

if.else.i.i801_block_transaction.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i801_block_transaction.exit

if.end13.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp14.i = icmp eq i32 %size, 8
  br i1 %cmp14.i, label %if.then16.i, label %if.end30.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp18.i = icmp eq i8 %read_write, 0
  br i1 %cmp18.i, label %if.then20.i, label %if.else25.i

if.then20.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pci_dev, align 8
  %call.i331 = call i32 @pci_read_config_byte(ptr noundef %91, i32 noundef 64, ptr noundef nonnull %hostc.i) #8
  %92 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pci_dev, align 8
  %94 = ptrtoint ptr %hostc.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %hostc.i, align 1
  %96 = or i8 %95, 4
  %call24.i = call i32 @pci_write_config_byte(ptr noundef %93, i32 noundef 64, i8 noundef zeroext %96) #8
  br label %if.end.i77.i

if.else25.i:                                      ; preds = %if.then16.i
  %97 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %features, align 4
  %and.i332 = and i32 %98, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i332)
  %tobool.not.i = icmp eq i32 %and.i332, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.else25.i.if.end.i77.i_crit_edge

if.else25.i.if.end.i77.i_crit_edge:               ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i77.i

do.end.i:                                         ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pci_dev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41) #11
  br label %i801_block_transaction.exit

if.end30.i:                                       ; preds = %if.end13.i
  %101 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %features, align 4
  %and32.i = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.else39.i, label %if.then37.i

if.end30.thread105.i:                             ; preds = %if.then144
  %103 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 32, ptr %data, align 2
  %104 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %features, align 4
  %and32108.i = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32108.i)
  %tobool33.not109.i = icmp eq i32 %and32108.i, 0
  br i1 %tobool33.not109.i, label %if.end30.thread105.i.if.end.i77.i_crit_edge, label %if.end30.thread105.i.sw.bb1.i.i_crit_edge

if.end30.thread105.i.sw.bb1.i.i_crit_edge:        ; preds = %if.end30.thread105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

if.end30.thread105.i.if.end.i77.i_crit_edge:      ; preds = %if.end30.thread105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i77.i

if.then37.i:                                      ; preds = %if.end30.i
  %106 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %size, label %if.then37.i.i801_block_transaction.exit_crit_edge [
    i32 7, label %if.then37.i.sw.epilog.i.i_crit_edge
    i32 5, label %if.then37.i.sw.bb1.i.i_crit_edge
  ]

if.then37.i.sw.bb1.i.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

if.then37.i.sw.epilog.i.i_crit_edge:              ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

if.then37.i.i801_block_transaction.exit_crit_edge: ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i801_block_transaction.exit

sw.bb1.i.i:                                       ; preds = %if.then37.i.sw.bb1.i.i_crit_edge, %if.end30.thread105.i.sw.bb1.i.i_crit_edge
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %if.then37.i.sw.epilog.i.i_crit_edge
  %xact.0.i.i = phi i32 [ 20, %sw.bb1.i.i ], [ 28, %if.then37.i.sw.epilog.i.i_crit_edge ]
  %smba.i.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %107 = ptrtoint ptr %smba.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %smba.i.i, align 8
  %add.i.i = add i32 %108, 13
  %and.i.i.i = and i32 %add.i.i, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %109 = inttoptr i32 %add.i.i.i to ptr
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %109) #8, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %111 = or i8 %110, 2
  %112 = ptrtoint ptr %smba.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %smba.i.i, align 8
  %add4.i.i = add i32 %113, 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i82.i.i = and i32 %add4.i.i, 1048575
  %add.i83.i.i = or i32 %and.i82.i.i, -18874368
  %114 = inttoptr i32 %add.i83.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %114, i8 %111) #8, !srcloc !186
  %115 = ptrtoint ptr %smba.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %smba.i.i, align 8
  %add6.i.i = add i32 %116, 2
  %and.i84.i.i = and i32 %add6.i.i, 1048575
  %add.i85.i.i = or i32 %and.i84.i.i, -18874368
  %117 = inttoptr i32 %add.i85.i.i to ptr
  %118 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %117) #8, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp.i.i = icmp eq i8 %read_write, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.epilog.i.i.if.end.i.i_crit_edge

sw.epilog.i.i.if.end.i.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.epilog.i.i
  %119 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %data, align 2
  %conv10.i.i = zext i8 %120 to i32
  %121 = ptrtoint ptr %smba.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %smba.i.i, align 8
  %add13.i.i = add i32 %122, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i86.i.i = and i32 %add13.i.i, 1048575
  %add.i87.i.i = or i32 %and.i86.i.i, -18874368
  %123 = inttoptr i32 %add.i87.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %123, i8 %120) #8, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %cmp1494.not.i.i = icmp eq i8 %120, 0
  br i1 %cmp1494.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then.i.i.for.body.i.i_crit_edge

if.then.i.i.for.body.i.i_crit_edge:               ; preds = %if.then.i.i
  br label %for.body.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.i.for.body.i.i_crit_edge
  %i.095.i.i = phi i32 [ %add16.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.i.for.body.i.i_crit_edge ]
  %add16.i.i = add nuw nsw i32 %i.095.i.i, 1
  %arrayidx17.i.i = getelementptr [34 x i8], ptr %data, i32 0, i32 %add16.i.i
  %124 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx17.i.i, align 1
  %126 = ptrtoint ptr %smba.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %smba.i.i, align 8
  %add19.i.i = add i32 %127, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i88.i.i = and i32 %add19.i.i, 1048575
  %add.i89.i.i = or i32 %and.i88.i.i, -18874368
  %128 = inttoptr i32 %add.i89.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 %125) #8, !srcloc !186
  %exitcond.not.i.i = icmp eq i32 %add16.i.i, %conv10.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge, %sw.epilog.i.i.if.end.i.i_crit_edge
  %call20.i.i = tail call fastcc i32 @i801_transaction(ptr noundef %1, i32 noundef %xact.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool.not.i.i, label %if.end22.i.i, label %if.end.i.i.i801_block_transaction.exit_crit_edge

if.end.i.i.i801_block_transaction.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i801_block_transaction.exit

if.end22.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp26.i.i = icmp eq i32 %size, 7
  %or.cond.i.i = or i1 %cmp.i, %cmp26.i.i
  br i1 %or.cond.i.i, label %if.then28.i.i, label %if.end22.i.i.i801_block_transaction.exit_crit_edge

if.end22.i.i.i801_block_transaction.exit_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i801_block_transaction.exit

if.then28.i.i:                                    ; preds = %if.end22.i.i
  %129 = ptrtoint ptr %smba.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %smba.i.i, align 8
  %add30.i.i = add i32 %130, 5
  %and.i90.i.i = and i32 %add30.i.i, 1048575
  %add.i91.i.i = or i32 %and.i90.i.i, -18874368
  %131 = inttoptr i32 %add.i91.i.i to ptr
  %132 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %131) #8, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %conv32.i.i = zext i8 %132 to i32
  %133 = add i8 %132, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %133)
  %134 = icmp ult i8 %133, -32
  br i1 %134, label %if.then28.i.i.i801_block_transaction.exit_crit_edge, label %for.body45.preheader.i.i

if.then28.i.i.i801_block_transaction.exit_crit_edge: ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i801_block_transaction.exit

for.body45.preheader.i.i:                         ; preds = %if.then28.i.i
  %135 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %132, ptr %data, align 2
  br label %for.body45.i.i

for.body45.i.i:                                   ; preds = %for.body45.i.i.for.body45.i.i_crit_edge, %for.body45.preheader.i.i
  %i.197.i.i = phi i32 [ %add49.i.i, %for.body45.i.i.for.body45.i.i_crit_edge ], [ 0, %for.body45.preheader.i.i ]
  %136 = ptrtoint ptr %smba.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %smba.i.i, align 8
  %add47.i.i = add i32 %137, 7
  %and.i92.i.i = and i32 %add47.i.i, 1048575
  %add.i93.i.i = or i32 %and.i92.i.i, -18874368
  %138 = inttoptr i32 %add.i93.i.i to ptr
  %139 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %138) #8, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %add49.i.i = add nuw nsw i32 %i.197.i.i, 1
  %arrayidx50.i.i = getelementptr [34 x i8], ptr %data, i32 0, i32 %add49.i.i
  %140 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx50.i.i, align 1
  %exitcond98.not.i.i = icmp eq i32 %add49.i.i, %conv32.i.i
  br i1 %exitcond98.not.i.i, label %for.body45.i.i.i801_block_transaction.exit_crit_edge, label %for.body45.i.i.for.body45.i.i_crit_edge

for.body45.i.i.for.body45.i.i_crit_edge:          ; preds = %for.body45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body45.i.i

for.body45.i.i.i801_block_transaction.exit_crit_edge: ; preds = %for.body45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i801_block_transaction.exit

if.else39.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp.i76.i = icmp eq i32 %size, 7
  br i1 %cmp.i76.i, label %if.else39.i.i801_block_transaction.exit_crit_edge, label %if.else39.i.if.end.i77.i_crit_edge

if.else39.i.if.end.i77.i_crit_edge:               ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i77.i

if.else39.i.i801_block_transaction.exit_crit_edge: ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i801_block_transaction.exit

if.end.i77.i:                                     ; preds = %if.else39.i.if.end.i77.i_crit_edge, %if.end30.thread105.i.if.end.i77.i_crit_edge, %if.else25.i.if.end.i77.i_crit_edge, %if.then20.i
  %cmp148895101.i = phi i1 [ false, %if.else39.i.if.end.i77.i_crit_edge ], [ false, %if.end30.thread105.i.if.end.i77.i_crit_edge ], [ true, %if.else25.i.if.end.i77.i_crit_edge ], [ true, %if.then20.i ]
  %call.i.i = call fastcc i32 @i801_check_pre(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %if.end.i77.i.if.end41.i_crit_edge, label %if.end3.i.i

if.end.i77.i.if.end41.i_crit_edge:                ; preds = %if.end.i77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.end3.i.i:                                      ; preds = %if.end.i77.i
  %141 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %data, align 2
  %conv.i.i = zext i8 %142 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp5.i.i = icmp eq i8 %read_write, 0
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.end3.i.i.if.end12.i.i_crit_edge

if.end3.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i.i

if.then7.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %smba.i78.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %143 = ptrtoint ptr %smba.i78.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %smba.i78.i, align 8
  %add.i79.i = add i32 %144, 5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %and.i.i80.i = and i32 %add.i79.i, 1048575
  %add.i.i81.i = or i32 %and.i.i80.i, -18874368
  %145 = inttoptr i32 %add.i.i81.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %145, i8 %142) #8, !srcloc !186
  %arrayidx9.i.i = getelementptr [34 x i8], ptr %data, i32 0, i32 1
  %146 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx9.i.i, align 1
  %148 = ptrtoint ptr %smba.i78.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %smba.i78.i, align 8
  %add11.i.i = add i32 %149, 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %and.i216.i.i = and i32 %add11.i.i, 1048575
  %add.i217.i.i = or i32 %and.i216.i.i, -18874368
  %150 = inttoptr i32 %add.i217.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %150, i8 %147) #8, !srcloc !186
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then7.i.i, %if.end3.i.i.if.end12.i.i_crit_edge
  %or.cond.i82.i = and i1 %cmp.i, %cmp148895101.i
  %smbcmd.0.i.i = select i1 %or.cond.i82.i, i32 24, i32 20
  %151 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %features, align 4
  %and.i.i = and i32 %152, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i83.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i83.i, label %for.cond.preheader.i.i, label %if.then20.i.i

for.cond.preheader.i.i:                           ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %cmp50.not263.i.i = icmp eq i8 %142, 0
  br i1 %cmp50.not263.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %smba62.i.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %timeout1.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 7
  %cmp5.not.i.i = xor i1 %cmp5.i.i, true
  br label %for.body.i85.i

if.then20.i.i:                                    ; preds = %if.end12.i.i
  %is_read.i.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 10
  %frombool.i.i = zext i1 %cmp.i to i8
  %153 = ptrtoint ptr %is_read.i.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %frombool.i.i, ptr %is_read.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %142)
  %cmp24.i84.i = icmp eq i8 %142, 1
  %or.i.i = or i32 %smbcmd.0.i.i, 32
  %154 = and i1 %cmp.i, %cmp24.i84.i
  %smbcmd.1.i.i = select i1 %154, i32 %or.i.i, i32 %smbcmd.0.i.i
  %155 = trunc i32 %smbcmd.1.i.i to i8
  %conv33.i.i = or i8 %155, 1
  %cmd.i.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 9
  %156 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv33.i.i, ptr %cmd.i.i, align 1
  %len34.i.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 12
  %157 = ptrtoint ptr %len34.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %conv.i.i, ptr %len34.i.i, align 8
  %count.i.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 11
  %158 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %count.i.i, align 4
  %arrayidx35.i.i = getelementptr [34 x i8], ptr %data, i32 0, i32 1
  %data36.i.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 13
  %159 = ptrtoint ptr %data36.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %arrayidx35.i.i, ptr %data36.i.i, align 4
  %done.i.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 7
  %160 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %done.i.i, align 4
  %161 = or i8 %155, 65
  %smba41.i.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %162 = ptrtoint ptr %smba41.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %smba41.i.i, align 8
  %add42.i.i = add i32 %163, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %and.i218.i.i = and i32 %add42.i.i, 1048575
  %add.i219.i.i = or i32 %and.i218.i.i, -18874368
  %164 = inttoptr i32 %add.i219.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %164, i8 %161) #8, !srcloc !186
  %timeout.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 7
  %165 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %timeout.i.i, align 4
  %call44.i.i = call i32 @wait_for_completion_timeout(ptr noundef %done.i.i, i32 noundef %166) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.i)
  %tobool45.not.i.i = icmp eq i32 %call44.i.i, 0
  br i1 %tobool45.not.i.i, label %if.then20.i.i.if.end41.sink.split.i_crit_edge, label %cond.true.i.i

if.then20.i.i.if.end41.sink.split.i_crit_edge:    ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split.i

cond.true.i.i:                                    ; preds = %if.then20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %status46.i.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 8
  %167 = ptrtoint ptr %status46.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %status46.i.i, align 8
  %conv47.i.i = zext i8 %168 to i32
  br label %if.end41.sink.split.i

for.body.i85.i:                                   ; preds = %if.end137.i.i.for.body.i85.i_crit_edge, %for.body.lr.ph.i.i
  %i.0266.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %add129.i.i, %if.end137.i.i.for.body.i85.i_crit_edge ]
  %smbcmd.2265.i.i = phi i32 [ %smbcmd.0.i.i, %for.body.lr.ph.i.i ], [ %smbcmd.3.i.i, %if.end137.i.i.for.body.i85.i_crit_edge ]
  %len.0264.i.i = phi i32 [ %conv.i.i, %for.body.lr.ph.i.i ], [ %len.1.i.i, %if.end137.i.i.for.body.i85.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0266.i.i, i32 %len.0264.i.i)
  %cmp52.i.i = icmp eq i32 %i.0266.i.i, %len.0264.i.i
  %or.cond212.i.i = and i1 %cmp.i, %cmp52.i.i
  %or59.i.i = or i32 %smbcmd.2265.i.i, 32
  %smbcmd.3.i.i = select i1 %or.cond212.i.i, i32 %or59.i.i, i32 %smbcmd.2265.i.i
  %conv61.i.i = trunc i32 %smbcmd.3.i.i to i8
  %169 = ptrtoint ptr %smba62.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %smba62.i.i, align 8
  %add63.i.i = add i32 %170, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %and.i220.i.i = and i32 %add63.i.i, 1048575
  %add.i221.i.i = or i32 %and.i220.i.i, -18874368
  %171 = inttoptr i32 %add.i221.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %171, i8 %conv61.i.i) #8, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0266.i.i)
  %cmp64.i.i = icmp eq i32 %i.0266.i.i, 1
  br i1 %cmp64.i.i, label %if.then66.i.i, label %for.body.i85.i.if.end78.i.i_crit_edge

for.body.i85.i.if.end78.i.i_crit_edge:            ; preds = %for.body.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.i.i

if.then66.i.i:                                    ; preds = %for.body.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  %172 = ptrtoint ptr %smba62.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %smba62.i.i, align 8
  %add68.i.i = add i32 %173, 2
  %and69.i.i = and i32 %add68.i.i, 1048575
  %add70.i.i = or i32 %and69.i.i, -18874368
  %174 = inttoptr i32 %add70.i.i to ptr
  %175 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %174) #8, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  %176 = or i8 %175, 64
  %177 = ptrtoint ptr %smba62.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %smba62.i.i, align 8
  %add77.i.i = add i32 %178, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %and.i222.i.i = and i32 %add77.i.i, 1048575
  %add.i223.i.i = or i32 %and.i222.i.i, -18874368
  %179 = inttoptr i32 %add.i223.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %179, i8 %176) #8, !srcloc !186
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %if.then66.i.i, %for.body.i85.i.if.end78.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %180 = load volatile i32, ptr @jiffies, align 128
  %181 = ptrtoint ptr %timeout1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %timeout1.i.i.i, align 4
  %add.i224.i.i = add i32 %182, %180
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond.i.i.i.do.body.i.i.i_crit_edge, %if.end78.i.i
  call void @usleep_range_state(i32 noundef 250, i32 noundef 500, i32 noundef 2) #8
  %183 = ptrtoint ptr %smba62.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %smba62.i.i, align 8
  %and.i.i.i.i = and i32 %184, 1048575
  %add.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %185 = inttoptr i32 %add.i.i.i.i to ptr
  %186 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %185) #8, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %conv.i.i.i = zext i8 %186 to i32
  %and.i225.i.i = and i32 %conv.i.i.i, 156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i225.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i225.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.cond.i.i.i, label %i801_wait_byte_done.exit.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %187 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i224.i.i, %187
  %cmp.i.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i.i, label %do.cond.i.i.i.do.body.i.i.i_crit_edge, label %do.cond.i.i.i.if.end41.sink.split.i_crit_edge

do.cond.i.i.i.if.end41.sink.split.i_crit_edge:    ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split.i

do.cond.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

i801_wait_byte_done.exit.i.i:                     ; preds = %do.body.i.i.i
  %and3.i.i.i = and i32 %conv.i.i.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool80.not.i.i = icmp eq i32 %and3.i.i.i, 0
  br i1 %tobool80.not.i.i, label %if.end82.i.i, label %i801_wait_byte_done.exit.i.i.if.end41.sink.split.i_crit_edge

i801_wait_byte_done.exit.i.i.if.end41.sink.split.i_crit_edge: ; preds = %i801_wait_byte_done.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split.i

if.end82.i.i:                                     ; preds = %i801_wait_byte_done.exit.i.i
  %or.cond213.i.i = and i1 %cmp.i, %cmp64.i.i
  %or.cond213.not.i.i = xor i1 %or.cond213.i.i, true
  %or.cond214.i.i = or i1 %cmp148895101.i, %or.cond213.not.i.i
  br i1 %or.cond214.i.i, label %if.end82.i.i.if.end115.i.i_crit_edge, label %if.then92.i.i

if.end82.i.i.if.end115.i.i_crit_edge:             ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end115.i.i

if.then92.i.i:                                    ; preds = %if.end82.i.i
  %188 = ptrtoint ptr %smba62.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %smba62.i.i, align 8
  %add94.i.i = add i32 %189, 5
  %and.i226.i.i = and i32 %add94.i.i, 1048575
  %add.i227.i.i = or i32 %and.i226.i.i, -18874368
  %190 = inttoptr i32 %add.i227.i.i to ptr
  %191 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %190) #8, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %conv96.i.i = zext i8 %191 to i32
  %192 = add i8 %191, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %192)
  %193 = icmp ult i8 %192, -32
  br i1 %193, label %do.end.i.i, label %if.end112.i.i

do.end.i.i:                                       ; preds = %if.then92.i.i
  %194 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pci_dev, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %195, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.43, i32 noundef %conv96.i.i) #11
  %196 = ptrtoint ptr %smba62.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %smba62.i.i, align 8
  %and.i228269.i.i = and i32 %197, 1048575
  %add.i229270.i.i = or i32 %and.i228269.i.i, -18874368
  %198 = inttoptr i32 %add.i229270.i.i to ptr
  %199 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %198) #8, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %200 = and i8 %199, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool107.not271.i.i = icmp eq i8 %200, 0
  br i1 %tobool107.not271.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.while.body.i.i_crit_edge

do.end.i.i.while.body.i.i_crit_edge:              ; preds = %do.end.i.i
  br label %while.body.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end.i.i.while.body.i.i_crit_edge
  %201 = ptrtoint ptr %smba62.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %smba62.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %and.i230.i.i = and i32 %202, 1048575
  %add.i231.i.i = or i32 %and.i230.i.i, -18874368
  %203 = inttoptr i32 %add.i231.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %203, i8 -128) #8, !srcloc !186
  %204 = ptrtoint ptr %smba62.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %smba62.i.i, align 8
  %and.i228.i.i = and i32 %205, 1048575
  %add.i229.i.i = or i32 %and.i228.i.i, -18874368
  %206 = inttoptr i32 %add.i229.i.i to ptr
  %207 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %206) #8, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %208 = and i8 %207, 1
  %tobool107.not.i.i = icmp eq i8 %208, 0
  br i1 %tobool107.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %do.end.i.i.while.end.i.i_crit_edge
  %209 = ptrtoint ptr %smba62.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %smba62.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %and.i232.i.i = and i32 %210, 1048575
  %add.i233.i.i = or i32 %and.i232.i.i, -18874368
  %211 = inttoptr i32 %add.i233.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %211, i8 2) #8, !srcloc !186
  br label %i801_block_transaction.exit

if.end112.i.i:                                    ; preds = %if.then92.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %212 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %191, ptr %data, align 2
  br label %if.end115.i.i

if.end115.i.i:                                    ; preds = %if.end112.i.i, %if.end82.i.i.if.end115.i.i_crit_edge
  %len.1.i.i = phi i32 [ %conv96.i.i, %if.end112.i.i ], [ %len.0264.i.i, %if.end82.i.i.if.end115.i.i_crit_edge ]
  br i1 %cmp.i, label %if.then119.i.i, label %if.end115.i.i.if.end124.i.i_crit_edge

if.end115.i.i.if.end124.i.i_crit_edge:            ; preds = %if.end115.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124.i.i

if.then119.i.i:                                   ; preds = %if.end115.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %213 = ptrtoint ptr %smba62.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %smba62.i.i, align 8
  %add121.i.i = add i32 %214, 7
  %and.i234.i.i = and i32 %add121.i.i, 1048575
  %add.i235.i.i = or i32 %and.i234.i.i, -18874368
  %215 = inttoptr i32 %add.i235.i.i to ptr
  %216 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %215) #8, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %arrayidx123.i.i = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.0266.i.i
  %217 = ptrtoint ptr %arrayidx123.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %216, ptr %arrayidx123.i.i, align 1
  br label %if.end124.i.i

if.end124.i.i:                                    ; preds = %if.then119.i.i, %if.end115.i.i.if.end124.i.i_crit_edge
  %add129.i.i = add i32 %i.0266.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i.i, i32 %len.1.i.i)
  %cmp130.not.i.i = icmp sgt i32 %add129.i.i, %len.1.i.i
  %or.cond282.i.i = select i1 %cmp5.not.i.i, i1 true, i1 %cmp130.not.i.i
  br i1 %or.cond282.i.i, label %if.end124.i.i.if.end137.i.i_crit_edge, label %if.then132.i.i

if.end124.i.i.if.end137.i.i_crit_edge:            ; preds = %if.end124.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137.i.i

if.then132.i.i:                                   ; preds = %if.end124.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx134.i.i = getelementptr [34 x i8], ptr %data, i32 0, i32 %add129.i.i
  %218 = ptrtoint ptr %arrayidx134.i.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx134.i.i, align 1
  %220 = ptrtoint ptr %smba62.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %smba62.i.i, align 8
  %add136.i.i = add i32 %221, 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %and.i236.i.i = and i32 %add136.i.i, 1048575
  %add.i237.i.i = or i32 %and.i236.i.i, -18874368
  %222 = inttoptr i32 %add.i237.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %222, i8 %219) #8, !srcloc !186
  br label %if.end137.i.i

if.end137.i.i:                                    ; preds = %if.then132.i.i, %if.end124.i.i.if.end137.i.i_crit_edge
  %223 = ptrtoint ptr %smba62.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %smba62.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %and.i238.i.i = and i32 %224, 1048575
  %add.i239.i.i = or i32 %and.i238.i.i, -18874368
  %225 = inttoptr i32 %add.i239.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %225, i8 -128) #8, !srcloc !186
  br i1 %cmp130.not.i.i, label %if.end137.i.i.for.end.i.i_crit_edge, label %if.end137.i.i.for.body.i85.i_crit_edge

if.end137.i.i.for.body.i85.i_crit_edge:           ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i85.i

if.end137.i.i.for.end.i.i_crit_edge:              ; preds = %if.end137.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end137.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %226 = load volatile i32, ptr @jiffies, align 128
  %timeout1.i240.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 7
  %227 = ptrtoint ptr %timeout1.i240.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %timeout1.i240.i.i, align 4
  %add.i241.i.i = add i32 %228, %226
  %smba.i242.i.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  br label %do.body.i249.i.i

do.body.i249.i.i:                                 ; preds = %do.cond.i252.i.i.do.body.i249.i.i_crit_edge, %for.end.i.i
  call void @usleep_range_state(i32 noundef 250, i32 noundef 500, i32 noundef 2) #8
  %229 = ptrtoint ptr %smba.i242.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %smba.i242.i.i, align 8
  %and.i.i243.i.i = and i32 %230, 1048575
  %add.i.i244.i.i = or i32 %and.i.i243.i.i, -18874368
  %231 = inttoptr i32 %add.i.i244.i.i to ptr
  %232 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %231) #8, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %conv.i245.i.i = zext i8 %232 to i32
  %and.i246.i.i = and i32 %conv.i245.i.i, 1
  %and3.i247.i.i = and i32 %conv.i245.i.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i246.i.i)
  %tobool.not.i248.i.i = icmp ne i32 %and.i246.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i247.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i247.i.i, 0
  %or.cond.i.i.i = or i1 %tobool.not.i248.i.i, %tobool4.not.i.i.i
  br i1 %or.cond.i.i.i, label %do.cond.i252.i.i, label %do.body.i249.i.i.if.end41.sink.split.i_crit_edge

do.body.i249.i.i.if.end41.sink.split.i_crit_edge: ; preds = %do.body.i249.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split.i

do.cond.i252.i.i:                                 ; preds = %do.body.i249.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %233 = load volatile i32, ptr @jiffies, align 128
  %sub.i250.i.i = sub i32 %add.i241.i.i, %233
  %cmp.i251.i.i = icmp sgt i32 %sub.i250.i.i, -1
  br i1 %cmp.i251.i.i, label %do.cond.i252.i.i.do.body.i249.i.i_crit_edge, label %do.cond.i252.i.i.if.end41.sink.split.i_crit_edge

do.cond.i252.i.i.if.end41.sink.split.i_crit_edge: ; preds = %do.cond.i252.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split.i

do.cond.i252.i.i.do.body.i249.i.i_crit_edge:      ; preds = %do.cond.i252.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i249.i.i

if.end41.sink.split.i:                            ; preds = %do.cond.i252.i.i.if.end41.sink.split.i_crit_edge, %do.body.i249.i.i.if.end41.sink.split.i_crit_edge, %i801_wait_byte_done.exit.i.i.if.end41.sink.split.i_crit_edge, %do.cond.i.i.i.if.end41.sink.split.i_crit_edge, %cond.true.i.i, %if.then20.i.i.if.end41.sink.split.i_crit_edge
  %status.0.i.sink.i = phi i32 [ %conv47.i.i, %cond.true.i.i ], [ -110, %if.then20.i.i.if.end41.sink.split.i_crit_edge ], [ -110, %do.cond.i252.i.i.if.end41.sink.split.i_crit_edge ], [ %and3.i247.i.i, %do.body.i249.i.i.if.end41.sink.split.i_crit_edge ], [ -110, %do.cond.i.i.i.if.end41.sink.split.i_crit_edge ], [ %and3.i.i.i, %i801_wait_byte_done.exit.i.i.if.end41.sink.split.i_crit_edge ]
  %call141.i.i = call fastcc i32 @i801_check_post(ptr noundef %1, i32 noundef %status.0.i.sink.i) #8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end41.sink.split.i, %if.end.i77.i.if.end41.i_crit_edge
  %result.0.i = phi i32 [ %call.i.i, %if.end.i77.i.if.end41.i_crit_edge ], [ %call141.i.i, %if.end41.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp46.i = icmp eq i8 %read_write, 0
  %or.cond75.i = and i1 %cmp46.i, %cmp148895101.i
  br i1 %or.cond75.i, label %if.then48.i, label %if.end41.i.i801_block_transaction.exit_crit_edge

if.end41.i.i801_block_transaction.exit_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i801_block_transaction.exit

if.then48.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %234 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pci_dev, align 8
  %236 = ptrtoint ptr %hostc.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %hostc.i, align 1
  %call50.i = call i32 @pci_write_config_byte(ptr noundef %235, i32 noundef 64, i8 noundef zeroext %237) #8
  br label %i801_block_transaction.exit

i801_block_transaction.exit:                      ; preds = %if.then48.i, %if.end41.i.i801_block_transaction.exit_crit_edge, %while.end.i.i, %if.else39.i.i801_block_transaction.exit_crit_edge, %for.body45.i.i.i801_block_transaction.exit_crit_edge, %if.then28.i.i.i801_block_transaction.exit_crit_edge, %if.end22.i.i.i801_block_transaction.exit_crit_edge, %if.end.i.i.i801_block_transaction.exit_crit_edge, %if.then37.i.i801_block_transaction.exit_crit_edge, %do.end.i, %if.else.i.i801_block_transaction.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %do.end.i ], [ -71, %if.else.i.i801_block_transaction.exit_crit_edge ], [ %result.0.i, %if.then48.i ], [ %result.0.i, %if.end41.i.i801_block_transaction.exit_crit_edge ], [ -95, %if.else39.i.i801_block_transaction.exit_crit_edge ], [ -95, %if.then37.i.i801_block_transaction.exit_crit_edge ], [ -71, %while.end.i.i ], [ -71, %if.then28.i.i.i801_block_transaction.exit_crit_edge ], [ 0, %if.end22.i.i.i801_block_transaction.exit_crit_edge ], [ %call20.i.i, %if.end.i.i.i801_block_transaction.exit_crit_edge ], [ 0, %for.body45.i.i.i801_block_transaction.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hostc.i) #8
  br label %if.end148

if.else146:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  %call147 = tail call fastcc i32 @i801_transaction(ptr noundef %1, i32 noundef %xact.0)
  br label %if.end148

if.end148:                                        ; preds = %if.else146, %i801_block_transaction.exit
  %ret.0 = phi i32 [ %retval.0.i, %i801_block_transaction.exit ], [ %call147, %if.else146 ]
  %tobool143.not.not = xor i1 %tobool143.not, true
  %brmerge = or i1 %spec.select290, %tobool143.not.not
  br i1 %brmerge, label %if.then151, label %if.end148.if.end160_crit_edge

if.end148.if.end160_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

if.then151:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %smba152 = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %238 = ptrtoint ptr %smba152 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %smba152, align 8
  %add153 = add i32 %239, 13
  %and.i333 = and i32 %add153, 1048575
  %add.i334 = or i32 %and.i333, -18874368
  %240 = inttoptr i32 %add.i334 to ptr
  %241 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %240) #8, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %242 = and i8 %241, -4
  %243 = ptrtoint ptr %smba152 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %smba152, align 8
  %add159 = add i32 %244, 13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %and.i335 = and i32 %add159, 1048575
  %add.i336 = or i32 %and.i335, -18874368
  %245 = inttoptr i32 %add.i336 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %245, i8 %242) #8, !srcloc !186
  br label %if.end160

if.end160:                                        ; preds = %if.then151, %if.end148.if.end160_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool164.not = icmp eq i32 %ret.0, 0
  %or.cond288 = select i1 %tobool143.not, i1 %tobool164.not, i1 false
  br i1 %or.cond288, label %if.end166, label %if.end160.out_crit_edge

if.end160.out_crit_edge:                          ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end166:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp168 = icmp eq i8 %read_write, 0
  %brmerge289 = or i1 %cmp168, %cmp171
  br i1 %brmerge289, label %if.end166.out_crit_edge, label %if.end174

if.end166.out_crit_edge:                          ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end174:                                        ; preds = %if.end166
  %246 = zext i32 %xact.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %246, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %xact.0, label %if.end174.out_crit_edge [
    i32 4, label %if.end174.sw.bb176_crit_edge
    i32 8, label %if.end174.sw.bb176_crit_edge376
    i32 12, label %sw.bb180
  ]

if.end174.sw.bb176_crit_edge376:                  ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb176

if.end174.sw.bb176_crit_edge:                     ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb176

if.end174.out_crit_edge:                          ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb176:                                         ; preds = %if.end174.sw.bb176_crit_edge, %if.end174.sw.bb176_crit_edge376
  %smba177 = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %247 = ptrtoint ptr %smba177 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %smba177, align 8
  %add178 = add i32 %248, 5
  %and.i337 = and i32 %add178, 1048575
  %add.i338 = or i32 %and.i337, -18874368
  %249 = inttoptr i32 %add.i338 to ptr
  %250 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %249) #8, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %251 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %250, ptr %data, align 2
  br label %out

sw.bb180:                                         ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  %smba181 = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %252 = ptrtoint ptr %smba181 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %smba181, align 8
  %add182 = add i32 %253, 5
  %and.i339 = and i32 %add182, 1048575
  %add.i340 = or i32 %and.i339, -18874368
  %254 = inttoptr i32 %add.i340 to ptr
  %255 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %254) #8, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %conv184 = zext i8 %255 to i16
  %256 = ptrtoint ptr %smba181 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %smba181, align 8
  %add186 = add i32 %257, 6
  %and.i341 = and i32 %add186, 1048575
  %add.i342 = or i32 %and.i341, -18874368
  %258 = inttoptr i32 %add.i342 to ptr
  %259 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %258) #8, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %conv188 = zext i8 %259 to i16
  %shl189 = shl nuw i16 %conv188, 8
  %add190 = or i16 %shl189, %conv184
  %260 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 %add190, ptr %data, align 2
  br label %out

out:                                              ; preds = %sw.bb180, %sw.bb176, %if.end174.out_crit_edge, %if.end166.out_crit_edge, %if.end160.out_crit_edge, %do.end
  %ret.1 = phi i32 [ -95, %do.end ], [ %ret.0, %if.end160.out_crit_edge ], [ 0, %if.end166.out_crit_edge ], [ 0, %if.end174.out_crit_edge ], [ 0, %sw.bb180 ], [ 0, %sw.bb176 ]
  %smba193 = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %261 = ptrtoint ptr %smba193 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %smba193, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  call void @arm_heavy_mb() #8
  %and.i343 = and i32 %262, 1048575
  %add.i344 = or i32 %and.i343, -18874368
  %263 = inttoptr i32 %add.i344 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %263, i8 -34) #8, !srcloc !186
  %264 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %pci_dev, align 8
  %call.i345 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.pci_dev, ptr %265, i32 0, i32 44, i32 12, i32 22
  %266 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %266)
  store volatile i64 %call.i345, ptr %last_busy.i, align 8
  %267 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %pci_dev, align 8
  %dev198 = getelementptr inbounds %struct.pci_dev, ptr %268, i32 0, i32 44
  %call.i346 = call i32 @__pm_runtime_suspend(ptr noundef %dev198, i32 noundef 13) #8
  call void @mutex_unlock(ptr noundef %acpi_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ %ret.1, %out ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i801_func(ptr nocapture noundef readonly %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %features = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and = shl i32 %3, 3
  %4 = and i32 %and, 8
  %and2 = shl i32 %3, 13
  %5 = and i32 %and2, 32768
  %and7 = shl i32 %3, 23
  %6 = and i32 %and7, 67108864
  %7 = and i32 %and7, 268435456
  %or = or i32 %5, %4
  %or5 = or i32 %or, %6
  %or10 = or i32 %or5, %7
  %or15 = or i32 %or10, 192872448
  ret i32 %or15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i801_transaction(ptr noundef %priv, i32 noundef %xact) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @i801_check_pre(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %features = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %if.then1

if.then1:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  %3 = trunc i32 %xact to i8
  %conv = or i8 %3, 65
  %smba = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smba, align 8
  %add = add i32 %5, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv) #8, !srcloc !186
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %priv, i32 0, i32 7
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout, align 4
  %call4 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then1.cleanup.sink.split_crit_edge, label %cond.true

if.then1.cleanup.sink.split_crit_edge:            ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cond.true:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %status6 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 8
  %9 = ptrtoint ptr %status6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status6, align 8
  %conv7 = zext i8 %10 to i32
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  %11 = trunc i32 %xact to i8
  %conv11 = or i8 %11, 64
  %smba12 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %smba12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smba12, align 8
  %add13 = add i32 %13, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i31 = and i32 %add13, 1048575
  %add.i32 = or i32 %and.i31, -18874368
  %14 = inttoptr i32 %add.i32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv11) #8, !srcloc !186
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %timeout1.i = getelementptr inbounds %struct.i2c_adapter, ptr %priv, i32 0, i32 7
  %16 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %timeout1.i, align 4
  %add.i33 = add i32 %17, %15
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end9
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 500, i32 noundef 2) #8
  %18 = ptrtoint ptr %smba12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smba12, align 8
  %and.i.i = and i32 %19, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %20 = inttoptr i32 %add.i.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #8, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %conv.i = zext i8 %21 to i32
  %and.i34 = and i32 %conv.i, 1
  %and3.i = and i32 %conv.i, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i = icmp ne i32 %and.i34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool4.not.i
  br i1 %or.cond.i, label %do.cond.i, label %do.body.i.cleanup.sink.split_crit_edge

do.body.i.cleanup.sink.split_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.cond.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i33, %22
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.cleanup.sink.split_crit_edge

do.cond.i.cleanup.sink.split_crit_edge:           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

cleanup.sink.split:                               ; preds = %do.cond.i.cleanup.sink.split_crit_edge, %do.body.i.cleanup.sink.split_crit_edge, %cond.true, %if.then1.cleanup.sink.split_crit_edge
  %retval.0.i.sink = phi i32 [ %conv7, %cond.true ], [ -110, %if.then1.cleanup.sink.split_crit_edge ], [ %and3.i, %do.body.i.cleanup.sink.split_crit_edge ], [ -110, %do.cond.i.cleanup.sink.split_crit_edge ]
  %call15 = tail call fastcc i32 @i801_check_post(ptr noundef %priv, i32 noundef %retval.0.i.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call15, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i801_check_pre(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smba = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smba, align 8
  %and.i = and i32 %1, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %conv, 158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end19_crit_edge, label %do.body4

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i801_check_pre.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i801_check_pre, %do.end15)) #8
          to label %if.then10 [label %do.end15], !srcloc !182

if.then10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev11 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 5
  %6 = ptrtoint ptr %pci_dev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev11, align 8
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i801_check_pre.__UNIQUE_ID_ddebug295, ptr noundef %dev12, ptr noundef nonnull @.str.47, i32 noundef %and1) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %do.body4
  %conv16 = trunc i32 %and1 to i8
  %8 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smba, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i72 = and i32 %9, 1048575
  %add.i73 = or i32 %and.i72, -18874368
  %10 = inttoptr i32 %add.i73 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv16) #8, !srcloc !186
  br label %if.end19

if.end19:                                         ; preds = %do.end15, %if.end.if.end19_crit_edge
  %features = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 6
  %11 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %features, align 4
  %and20 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.then22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  %13 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %smba, align 8
  %add24 = add i32 %14, 12
  %and.i74 = and i32 %add24, 1048575
  %add.i75 = or i32 %and.i74, -18874368
  %15 = inttoptr i32 %add.i75 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool28.not = icmp eq i8 %17, 0
  br i1 %tobool28.not, label %if.then22.cleanup_crit_edge, label %do.body30

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body30:                                        ; preds = %if.then22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i801_check_pre.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i801_check_pre, %do.end49)) #8
          to label %if.then44 [label %do.end49], !srcloc !182

if.then44:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev45 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 5
  %18 = ptrtoint ptr %pci_dev45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev45, align 8
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i801_check_pre.__UNIQUE_ID_ddebug296, ptr noundef %dev46, ptr noundef nonnull @.str.48, i32 noundef 1) #8
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body30
  %20 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %smba, align 8
  %add52 = add i32 %21, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i76 = and i32 %add52, 1048575
  %add.i77 = or i32 %and.i76, -18874368
  %22 = inttoptr i32 %add.i77 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 1) #8, !srcloc !186
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.then22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.then22.cleanup_crit_edge ], [ 0, %do.end49 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i801_check_post(ptr nocapture noundef readonly %priv, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp slt i32 %status, 0
  br i1 %cmp, label %do.end, label %if.end32, !prof !191

do.end:                                           ; preds = %entry
  %pci_dev = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i801_check_post.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i801_check_post, %do.end16)) #8
          to label %if.then12 [label %do.end16], !srcloc !182

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i801_check_post.__UNIQUE_ID_ddebug297, ptr noundef %dev14, ptr noundef nonnull @.str.51) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then12, %do.end
  %smba = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smba, align 8
  %add = add i32 %5, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 2) #8, !srcloc !186
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %7 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smba, align 8
  %add18 = add i32 %8, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i148 = and i32 %add18, 1048575
  %add.i149 = or i32 %and.i148, -18874368
  %9 = inttoptr i32 %add.i149 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #8, !srcloc !186
  %10 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %smba, align 8
  %and.i150 = and i32 %11, 1048575
  %add.i151 = or i32 %and.i150, -18874368
  %12 = inttoptr i32 %add.i151 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #8, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %14 = and i8 %13, 17
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %14)
  %.not = icmp eq i8 %14, 16
  br i1 %.not, label %do.end16.cleanup_crit_edge, label %do.end28

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end28:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev, align 8
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.53) #11
  br label %cleanup

if.end32:                                         ; preds = %entry
  %and33 = and i32 %status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end41_crit_edge, label %if.then35

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev39 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 5
  %17 = ptrtoint ptr %pci_dev39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev39, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.56) #11
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.end32.if.end41_crit_edge
  %result.0 = phi i32 [ -5, %if.then35 ], [ 0, %if.end32.if.end41_crit_edge ]
  %and42 = and i32 %status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end97_crit_edge, label %if.then44

if.end41.if.end97_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then44:                                        ; preds = %if.end41
  %features = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 6
  %19 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %features, align 4
  %and45 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then44.if.else_crit_edge, label %land.lhs.true

if.then44.if.else_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then44
  %smba47 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 1
  %21 = ptrtoint ptr %smba47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %smba47, align 8
  %add48 = add i32 %22, 12
  %and.i152 = and i32 %add48, 1048575
  %add.i153 = or i32 %and.i152, -18874368
  %23 = inttoptr i32 %add.i153 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #8, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool52.not = icmp eq i8 %25, 0
  br i1 %tobool52.not, label %land.lhs.true.if.else_crit_edge, label %if.then53

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %smba47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %smba47, align 8
  %add55 = add i32 %27, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i154 = and i32 %add55, 1048575
  %add.i155 = or i32 %and.i154, -18874368
  %28 = inttoptr i32 %add.i155 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 1) #8, !srcloc !186
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i801_check_post.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i801_check_post, %if.end97)) #8
          to label %if.then70 [label %if.end97], !srcloc !182

if.then70:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev71 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 5
  %29 = ptrtoint ptr %pci_dev71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci_dev71, align 8
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i801_check_post.__UNIQUE_ID_ddebug298, ptr noundef %dev72, ptr noundef nonnull @.str.58) #8
  br label %if.end97

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then44.if.else_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i801_check_post.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i801_check_post, %if.end97)) #8
          to label %if.then90 [label %if.end97], !srcloc !182

if.then90:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev91 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 5
  %31 = ptrtoint ptr %pci_dev91 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_dev91, align 8
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i801_check_post.__UNIQUE_ID_ddebug299, ptr noundef %dev92, ptr noundef nonnull @.str.59) #8
  br label %if.end97

if.end97:                                         ; preds = %if.then90, %if.else, %if.then70, %if.then53, %if.end41.if.end97_crit_edge
  %result.1 = phi i32 [ -74, %if.then70 ], [ -6, %if.then90 ], [ %result.0, %if.end41.if.end97_crit_edge ], [ -74, %if.then53 ], [ -6, %if.else ]
  %and98 = and i32 %status, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end97.cleanup_crit_edge, label %if.then100

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i801_check_post.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i801_check_post, %cleanup)) #8
          to label %if.then115 [label %cleanup], !srcloc !182

if.then115:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev116 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 5
  %33 = ptrtoint ptr %pci_dev116 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci_dev116, align 8
  %dev117 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i801_check_post.__UNIQUE_ID_ddebug300, ptr noundef %dev117, ptr noundef nonnull @.str.60) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then115, %if.then100, %if.end97.cleanup_crit_edge, %do.end28, %do.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end16.cleanup_crit_edge ], [ -110, %do.end28 ], [ -11, %if.then115 ], [ %result.1, %if.end97.cleanup_crit_edge ], [ -11, %if.then100 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i801_isr_byte_done(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_read = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %is_read to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_read, align 2, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else56, label %if.then

if.then:                                          ; preds = %entry
  %cmd = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd, align 1
  %4 = and i8 %3, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %4)
  %cmp = icmp eq i8 %4, 20
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true:                                    ; preds = %if.then
  %count = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 11
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then4, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then4:                                         ; preds = %land.lhs.true
  %smba = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %smba, align 8
  %add = add i32 %8, 5
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #8, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %conv5 = zext i8 %10 to i32
  %len = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 12
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv5, ptr %len, align 8
  %12 = add i8 %10, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %12)
  %13 = icmp ult i8 %12, -32
  br i1 %13, label %do.end, label %if.then4.if.end_crit_edge

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 5
  %14 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %conv5) #11
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %len, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4.if.end_crit_edge
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 8
  %conv16 = trunc i32 %18 to i8
  %data = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 13
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %20, i32 -1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv16, ptr %arrayidx, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.end, %land.lhs.true.if.end17_crit_edge, %if.then.if.end17_crit_edge
  %count18 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 11
  %22 = ptrtoint ptr %count18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count18, align 4
  %len19 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 12
  %24 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len19, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp20 = icmp slt i32 %23, %25
  br i1 %cmp20, label %if.then22, label %do.body32

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %smba23 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 1
  %26 = ptrtoint ptr %smba23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %smba23, align 8
  %add24 = add i32 %27, 7
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %28 = inttoptr i32 %add26 to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #8, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  %data29 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 13
  %30 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data29, align 4
  %32 = ptrtoint ptr %count18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count18, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %count18, align 4
  %arrayidx31 = getelementptr i8, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %29, ptr %arrayidx31, align 1
  br label %if.end44

do.body32:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i801_isr_byte_done.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i801_isr_byte_done, %if.end44)) #8
          to label %if.then39 [label %if.end44], !srcloc !182

if.then39:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev40 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 5
  %35 = ptrtoint ptr %pci_dev40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci_dev40, align 8
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i801_isr_byte_done.__UNIQUE_ID_ddebug301, ptr noundef %dev41, ptr noundef nonnull @.str.69) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %do.body32, %if.then22
  %37 = ptrtoint ptr %count18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %count18, align 4
  %39 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len19, align 8
  %sub = add i32 %40, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %sub)
  %cmp47 = icmp eq i32 %38, %sub
  br i1 %cmp47, label %if.then49, label %if.end44.if.end70_crit_edge

if.end44.if.end70_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cmd, align 1
  %43 = or i8 %42, 32
  %smba53 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 1
  %44 = ptrtoint ptr %smba53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %smba53, align 8
  %add54 = add i32 %45, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i100 = and i32 %add54, 1048575
  %add.i101 = or i32 %and.i100, -18874368
  %46 = inttoptr i32 %add.i101 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %46, i8 %43) #8, !srcloc !186
  br label %if.end70

if.else56:                                        ; preds = %entry
  %count57 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 11
  %47 = ptrtoint ptr %count57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count57, align 4
  %len58 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 12
  %49 = ptrtoint ptr %len58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len58, align 8
  %sub59 = add i32 %50, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %sub59)
  %cmp60 = icmp slt i32 %48, %sub59
  br i1 %cmp60, label %if.then62, label %if.else56.if.end70_crit_edge

if.else56.if.end70_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then62:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #10
  %data63 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 13
  %51 = ptrtoint ptr %data63 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data63, align 4
  %inc65 = add nsw i32 %48, 1
  %53 = ptrtoint ptr %count57 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %inc65, ptr %count57, align 4
  %arrayidx66 = getelementptr i8, ptr %52, i32 %inc65
  %54 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx66, align 1
  %smba67 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 1
  %56 = ptrtoint ptr %smba67 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %smba67, align 8
  %add68 = add i32 %57, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i102 = and i32 %add68, 1048575
  %add.i103 = or i32 %and.i102, -18874368
  %58 = inttoptr i32 %add.i103 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %55) #8, !srcloc !186
  br label %if.end70

if.end70:                                         ; preds = %if.then62, %if.else56.if.end70_crit_edge, %if.then49, %if.end44.if.end70_crit_edge
  %smba71 = getelementptr inbounds %struct.i801_priv, ptr %priv, i32 0, i32 1
  %59 = ptrtoint ptr %smba71 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %smba71, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i104 = and i32 %60, 1048575
  %add.i105 = or i32 %and.i104, -18874368
  %61 = inttoptr i32 %add.i105 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 -128) #8, !srcloc !186
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_handle_smbus_host_notify(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_lock_rescan_remove() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_read_config_byte(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_write_config_byte(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_read_config_dword(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unlock_rescan_remove() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i801_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %original_hstcnt = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %original_hstcnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %original_hstcnt, align 1
  %smba = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %smba to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smba, align 8
  %add = add i32 %5, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %3) #8, !srcloc !186
  %pci_dev = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev, align 8
  %original_hstcfg = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %original_hstcfg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %original_hstcfg, align 4
  %call1 = tail call i32 @pci_write_config_byte(ptr noundef %8, i32 noundef 64, i8 noundef zeroext %10) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i801_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %original_hstcfg.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %original_hstcfg.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %original_hstcfg.i, align 4
  %4 = and i8 %3, -6
  %5 = or i8 %4, 1
  %pci_dev.i = getelementptr inbounds %struct.i801_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev.i, align 8
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %7, i32 noundef 64, i8 noundef zeroext %5) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %features.i = getelementptr inbounds %struct.i801_priv, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features.i, align 4
  %and.i = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.i801_enable_host_notify.exit_crit_edge, label %if.end.i

entry.i801_enable_host_notify.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %i801_enable_host_notify.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %original_slvcmd.i = getelementptr inbounds %struct.i801_priv, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %original_slvcmd.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %original_slvcmd.i, align 2
  %14 = or i8 %13, 5
  %smba.i = getelementptr inbounds %struct.i801_priv, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %smba.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smba.i, align 8
  %add.i = add i32 %16, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %17 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %14) #8, !srcloc !186
  %18 = ptrtoint ptr %smba.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %smba.i, align 8
  %add3.i = add i32 %19, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  tail call void @arm_heavy_mb() #8
  %and.i7.i = and i32 %add3.i, 1048575
  %add.i8.i = or i32 %and.i7.i, -18874368
  %20 = inttoptr i32 %add.i8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 1) #8, !srcloc !186
  br label %i801_enable_host_notify.exit

i801_enable_host_notify.exit:                     ; preds = %if.end.i, %entry.i801_enable_host_notify.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !23, !25, !27, !29, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !108, !109, !111, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !130, !131, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !153, !154, !155, !157, !158, !160, !161, !162, !163, !165, !167, !169, !171}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__param_disable_features, !1, !"__param_disable_features", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 315, i32 1}
!2 = !{ptr @__UNIQUE_ID_disable_featurestype293, !1, !"__UNIQUE_ID_disable_featurestype293", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_disable_features294, !4, !"__UNIQUE_ID_disable_features294", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 316, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1866, i32 1}
!7 = !{ptr @__UNIQUE_ID_author304, !8, !"__UNIQUE_ID_author304", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1867, i32 1}
!9 = !{ptr @__UNIQUE_ID_description305, !10, !"__UNIQUE_ID_description305", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1868, i32 1}
!11 = !{ptr @__UNIQUE_ID_file306, !12, !"__UNIQUE_ID_file306", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1869, i32 1}
!13 = !{ptr @__UNIQUE_ID_license307, !12, !"__UNIQUE_ID_license307", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_i2c_i801__308_1871_i2c_i801_init6, !15, !"__initcall__kmod_i2c_i801__308_1871_i2c_i801_init6", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1871, i32 1}
!16 = !{ptr @__exitcall_i2c_i801_exit, !17, !"__exitcall_i2c_i801_exit", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1872, i32 1}
!18 = !{ptr @disable_features, !19, !"disable_features", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 314, i32 21}
!20 = !{ptr @__param_str_disable_features, !1, !"__param_str_disable_features", i1 false, i1 false}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1844, i32 11}
!23 = !{ptr @i801_driver, !24, !"i801_driver", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1843, i32 26}
!25 = !{ptr @i801_ids, !26, !"i801_ids", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 984, i32 35}
!27 = !{ptr @i801_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1666, i32 2}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1674, i32 4}
!32 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @i801_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @i801_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1681, i32 3}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @i801_probe._entry.7, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @i801_probe._entry_ptr.10, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1690, i32 3}
!45 = !{ptr @i801_probe._entry.11, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @i801_probe._entry_ptr.13, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1700, i32 3}
!49 = !{ptr @i801_probe._entry.14, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @i801_probe._entry_ptr.16, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1711, i32 3}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @i801_probe._entry.17, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @i801_probe._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1714, i32 3}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @i801_probe.__UNIQUE_ID_ddebug302, !57, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1719, i32 3}
!62 = !{ptr @i801_probe._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @i801_probe._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1743, i32 4}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @i801_probe._entry.26, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @i801_probe._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1752, i32 4}
!71 = !{ptr @i801_probe._entry.30, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @i801_probe._entry_ptr.32, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1757, i32 2}
!75 = !{ptr @i801_probe._entry.33, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @i801_probe._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1763, i32 3}
!81 = !{ptr @smbus_algorithm, !82, !"smbus_algorithm", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 973, i32 35}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 874, i32 3}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @i801_access._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @i801_access._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 759, i32 4}
!90 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @i801_block_transaction._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @i801_block_transaction._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 711, i32 5}
!95 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @i801_block_transaction_byte_by_byte._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @i801_block_transaction_byte_by_byte._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 331, i32 3}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @i801_check_pre._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @i801_check_pre._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 337, i32 3}
!105 = !{ptr @i801_check_pre.__UNIQUE_ID_ddebug295, !104, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 351, i32 4}
!108 = !{ptr @i801_check_pre.__UNIQUE_ID_ddebug296, !107, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 370, i32 3}
!111 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @i801_check_post._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @i801_check_post._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 372, i32 3}
!116 = !{ptr @i801_check_post.__UNIQUE_ID_ddebug297, !115, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 381, i32 4}
!119 = !{ptr @i801_check_post._entry.52, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @i801_check_post._entry_ptr.54, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 388, i32 3}
!123 = !{ptr @i801_check_post._entry.55, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @i801_check_post._entry_ptr.57, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 410, i32 4}
!127 = !{ptr @i801_check_post.__UNIQUE_ID_ddebug298, !126, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 413, i32 4}
!130 = !{ptr @i801_check_post.__UNIQUE_ID_ddebug299, !129, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 418, i32 3}
!133 = !{ptr @i801_check_post.__UNIQUE_ID_ddebug300, !132, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 306, i32 2}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 307, i32 2}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 308, i32 2}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 309, i32 2}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 310, i32 2}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 311, i32 2}
!146 = distinct !{null, !147, !"i801_feature_names", i1 false, i1 false}
!147 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 305, i32 20}
!148 = !{ptr @init_completion.__key, !149, !"__key", i1 false, i1 false}
!149 = !{!"../include/linux/completion.h", i32 87, i32 2}
!150 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 538, i32 5}
!153 = !{ptr @i801_isr_byte_done._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @i801_isr_byte_done._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 551, i32 4}
!157 = !{ptr @i801_isr_byte_done.__UNIQUE_ID_ddebug301, !156, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1568, i32 3}
!160 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @i801_add_tco._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @i801_add_tco._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @i801_add_tco_cnl.pldata, !164, !"pldata", i1 false, i1 false}
!164 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1525, i32 45}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1530, i32 58}
!167 = !{ptr @i801_add_tco_spt.pldata, !168, !"pldata", i1 false, i1 false}
!168 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1472, i32 45}
!169 = !{ptr @i801_pm_ops, !170, !"i801_pm_ops", i1 false, i1 false}
!170 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1841, i32 8}
!171 = distinct !{null, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/i2c/busses/i2c-i801.c", i32 1856, i32 26}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{i64 2148771974, i64 2148771979, i64 2148771992, i64 2148772036, i64 2148772070, i64 2148772091}
!183 = !{i64 4252980}
!184 = !{i64 2151786656}
!185 = !{i64 2151788641}
!186 = !{i64 4252585}
!187 = !{!"auto-init"}
!188 = !{i8 0, i8 2}
!189 = !{i64 2148290159, i64 2148290185, i64 2148290214, i64 2148290248, i64 2148290279, i64 2148290302}
!190 = !{i64 2156033683}
!191 = !{!"branch_weights", i32 1, i32 2000}
!192 = !{i64 2156029096}
