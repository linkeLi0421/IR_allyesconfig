; ModuleID = '/llk/IR_all_yes/drivers/iio/magnetometer/ak8975.c_pt.bc'
source_filename = "../drivers/iio/magnetometer/ak8975.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.ak_def = type { i32, ptr, i16, [5 x i8], [4 x i8], [4 x i8], [3 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.87, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.87 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ak8975_data = type { ptr, ptr, %struct.mutex, [3 x i8], [3 x i32], ptr, ptr, i32, %struct.wait_queue_head, i32, i8, %struct.iio_mount_matrix, ptr, ptr, %struct.anon.86 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.anon.86 = type { [3 x i16], i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_ak8975__306_1124_ak8975_driver_init6 = internal global ptr @ak8975_driver_init, section ".initcall6.init", align 4
@ak8975_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ak8975_probe, ptr @ak8975_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ak8975_of_match, ptr @ak_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak8975_dev_pm_ops, ptr null, ptr null }, ptr @ak8975_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ak8975_driver_exit = internal global ptr @ak8975_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author307 = internal constant [53 x i8] c"ak8975.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [46 x i8] c"ak8975.description=AK8975 magnetometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [44 x i8] c"ak8975.file=drivers/iio/magnetometer/ak8975\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [19 x i8] c"ak8975.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ak8975\00", [25 x i8] zeroinitializer }, align 32
@ak8975_of_match = internal constant { [11 x %struct.of_device_id], [532 x i8] } { [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak8975\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ak8975\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak8963\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ak8963\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak09911\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ak09911\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak09912\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ak09912\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak09916\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ak09916\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [532 x i8] zeroinitializer }, align 32
@ak_acpi_match = internal constant { [8 x %struct.acpi_device_id], [32 x i8] } { [8 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"AK8975\00\00\00", i32 1, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AK8963\00\00\00", i32 2, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"INVN6500\00", i32 2, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AK009911\00", i32 3, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AK09911\00\00", i32 3, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AKM9911\00\00", i32 3, i32 0, i32 0 }, %struct.acpi_device_id { [9 x i8] c"AK09912\00\00", i32 4, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ak8975_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak8975_runtime_suspend, ptr @ak8975_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ak8975_id = internal constant { [7 x %struct.i2c_device_id], [56 x i8] } { [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ak8975\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ak8963\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"AK8963\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ak09911\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"ak09912\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"ak09916\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ak_8975\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ak_def_array = internal constant { [5 x %struct.ak_def], [52 x i8] } { [5 x %struct.ak_def] [%struct.ak_def { i32 1, ptr @ak8975_raw_to_gauss, i16 4096, [5 x i8] c"\02\09\0A\10\12", [4 x i8] c"\01\08\04\0F", [4 x i8] c"\00\01\08\0F", [3 x i8] c"\03\05\07" }, %struct.ak_def { i32 2, ptr @ak8963_09911_raw_to_gauss, i16 8190, [5 x i8] c"\02\09\0A\10\12", [4 x i8] c"\01\08\00\0F", [4 x i8] c"\00\01\08\0F", [3 x i8] c"\03\05\07" }, %struct.ak_def { i32 3, ptr @ak8963_09911_raw_to_gauss, i16 8192, [5 x i8] c"\10\181`b", [4 x i8] c"\01\08\00\1F", [4 x i8] c"\00\01\10\1F", [3 x i8] c"\11\13\15" }, %struct.ak_def { i32 4, ptr @ak09912_raw_to_gauss, i16 32752, [5 x i8] c"\10\181`b", [4 x i8] c"\01\08\00\1F", [4 x i8] c"\00\01\10\1F", [3 x i8] c"\11\13\15" }, %struct.ak_def { i32 5, ptr @ak09912_raw_to_gauss, i16 32752, [5 x i8] c"\10\181`b", [4 x i8] c"\01\08\00\1F", [4 x i8] c"\00\01\10\1F", [3 x i8] c"\11\13\15" }], [52 x i8] zeroinitializer }, align 32
@ak8975_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 946, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AKM device type unsupported: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ak8975_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/iio/magnetometer/ak8975.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ak8975_probe._entry_ptr = internal global ptr @ak8975_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vid\00", [28 x i8] zeroinitializer }, align 32
@ak8975_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 966, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unexpected device\0A\00", [45 x i8] zeroinitializer }, align 32
@ak8975_probe._entry_ptr.12 = internal global ptr @ak8975_probe._entry.10, section ".printk_index", align 4
@ak8975_probe.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.13, i8 0, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Asahi compass chip %s\0A\00", [41 x i8] zeroinitializer }, align 32
@ak8975_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 974, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s initialization fails\0A\00", [39 x i8] zeroinitializer }, align 32
@ak8975_probe._entry_ptr.16 = internal global ptr @ak8975_probe._entry.14, section ".printk_index", align 4
@ak8975_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@ak8975_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 0, %struct.anon.87 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ak8975_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 1, i32 1, %struct.anon.87 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ak8975_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 2, i32 2, %struct.anon.87 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ak8975_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.87 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@ak8975_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ak8975_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ak8975_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@ak8975_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 989, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"triggered buffer setup failed\0A\00", [33 x i8] zeroinitializer }, align 32
@ak8975_probe._entry_ptr.20 = internal global ptr @ak8975_probe._entry.18, section ".printk_index", align 4
@ak8975_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 995, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@ak8975_probe._entry_ptr.23 = internal global ptr @ak8975_probe._entry.21, section ".printk_index", align 4
@ak8975_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 412, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable specified Vdd supply\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ak8975_power_on\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ak8975_power_on._entry_ptr = internal global ptr @ak8975_power_on._entry, section ".printk_index", align 4
@ak8975_power_on._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.5, i32 418, ptr @.str.26, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable specified Vid supply\0A\00", [57 x i8] zeroinitializer }, align 32
@ak8975_power_on._entry_ptr.29 = internal global ptr @ak8975_power_on._entry.27, section ".printk_index", align 4
@ak8975_who_i_am._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 464, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Error reading WIA\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ak8975_who_i_am\00", [16 x i8] zeroinitializer }, align 32
@ak8975_who_i_am._entry_ptr = internal global ptr @ak8975_who_i_am._entry, section ".printk_index", align 4
@ak8975_who_i_am._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.5, i32 488, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Type %d unknown\0A\00", [47 x i8] zeroinitializer }, align 32
@ak8975_who_i_am._entry_ptr.34 = internal global ptr @ak8975_who_i_am._entry.32, section ".printk_index", align 4
@ak8975_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 571, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error in setting fuse access mode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ak8975_setup\00", [19 x i8] zeroinitializer }, align 32
@ak8975_setup._entry_ptr = internal global ptr @ak8975_setup._entry, section ".printk_index", align 4
@ak8975_setup._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.5, i32 580, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Not able to read asa data\0A\00", [37 x i8] zeroinitializer }, align 32
@ak8975_setup._entry_ptr.39 = internal global ptr @ak8975_setup._entry.37, section ".printk_index", align 4
@ak8975_setup._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.5, i32 587, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error in setting power-down mode\0A\00", [62 x i8] zeroinitializer }, align 32
@ak8975_setup._entry_ptr.42 = internal global ptr @ak8975_setup._entry.40, section ".printk_index", align 4
@ak8975_setup._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.5, i32 595, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error setting data ready interrupt\0A\00", [60 x i8] zeroinitializer }, align 32
@ak8975_setup._entry_ptr.45 = internal global ptr @ak8975_setup._entry.43, section ".printk_index", align 4
@ak8975_setup_irq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&data->data_ready_queue\00", [40 x i8] zeroinitializer }, align 32
@ak8975_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 548, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"irq %d request failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ak8975_setup_irq\00", [47 x i8] zeroinitializer }, align 32
@ak8975_setup_irq._entry_ptr = internal global ptr @ak8975_setup_irq._entry, section ".printk_index", align 4
@ak8975_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.49, i32 2, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @ak8975_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@ak8975_read_axis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 749, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error in reading axis\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ak8975_read_axis\00", [47 x i8] zeroinitializer }, align 32
@ak8975_read_axis._entry_ptr = internal global ptr @ak8975_read_axis._entry, section ".printk_index", align 4
@ak8975_start_read_axis._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.5, i32 681, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error in setting operating mode\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ak8975_start_read_axis\00", [41 x i8] zeroinitializer }, align 32
@ak8975_start_read_axis._entry_ptr = internal global ptr @ak8975_start_read_axis._entry, section ".printk_index", align 4
@ak8975_start_read_axis._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.5, i32 700, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error in reading ST2\0A\00", [42 x i8] zeroinitializer }, align 32
@ak8975_start_read_axis._entry_ptr.56 = internal global ptr @ak8975_start_read_axis._entry.54, section ".printk_index", align 4
@ak8975_start_read_axis._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.5, i32 705, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ST2 status error 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@ak8975_start_read_axis._entry_ptr.59 = internal global ptr @ak8975_start_read_axis._entry.57, section ".printk_index", align 4
@wait_conversion_complete_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.5, i32 621, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Conversion timeout happened\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wait_conversion_complete_gpio\00", [34 x i8] zeroinitializer }, align 32
@wait_conversion_complete_gpio._entry_ptr = internal global ptr @wait_conversion_complete_gpio._entry, section ".printk_index", align 4
@wait_conversion_complete_gpio._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.5, i32 627, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error in reading ST1\0A\00", [42 x i8] zeroinitializer }, align 32
@wait_conversion_complete_gpio._entry_ptr.64 = internal global ptr @wait_conversion_complete_gpio._entry.62, section ".printk_index", align 4
@wait_conversion_complete_polled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.65, ptr @.str.5, i32 645, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wait_conversion_complete_polled\00", [32 x i8] zeroinitializer }, align 32
@wait_conversion_complete_polled._entry_ptr = internal global ptr @wait_conversion_complete_polled._entry, section ".printk_index", align 4
@wait_conversion_complete_polled._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.65, ptr @.str.5, i32 654, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@wait_conversion_complete_polled._entry_ptr.67 = internal global ptr @wait_conversion_complete_polled._entry.66, section ".printk_index", align 4
@ak8975_fill_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.5, i32 865, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error in reading axes block\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ak8975_fill_buffer\00", [45 x i8] zeroinitializer }, align 32
@ak8975_fill_buffer._entry_ptr = internal global ptr @ak8975_fill_buffer._entry, section ".printk_index", align 4
@ak8975_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.70, ptr @.str.5, i32 1047, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ak8975_runtime_suspend\00", [41 x i8] zeroinitializer }, align 32
@ak8975_runtime_suspend._entry_ptr = internal global ptr @ak8975_runtime_suspend._entry, section ".printk_index", align 4
@ak8975_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.71, ptr @.str.5, i32 1071, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ak8975_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@ak8975_runtime_resume._entry_ptr = internal global ptr @ak8975_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"ak8975_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1113, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1115, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [16 x i8] c"ak8975_of_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1098, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"ak_acpi_match\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 814, i32 36 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"ak8975_dev_pm_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1079, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant [10 x i8] c"ak8975_id\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1086, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 900, i32 38 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 908, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [13 x i8] c"ak_def_array\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 250, i32 28 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 945, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 953, i32 47 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 956, i32 47 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 966, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 969, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 974, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 978, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [16 x i8] c"ak8975_channels\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 803, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"ak8975_info\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 810, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"ak8975_scan_masks\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 808, i32 28 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 989, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 995, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 411, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 417, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 464, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 488, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 571, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 580, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 587, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 594, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 537, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 548, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [16 x i8] c"ak8975_ext_info\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 780, i32 44 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 781, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 749, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 681, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 700, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 705, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 621, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 627, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 645, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 654, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 865, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1047, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private constant [37 x i8] c"../drivers/iio/magnetometer/ak8975.c\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 1071, i32 3 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_ak8975_driver_exit, ptr @__initcall__kmod_ak8975__306_1124_ak8975_driver_init6, ptr @ak8975_driver_exit, ptr @ak8975_fill_buffer._entry, ptr @ak8975_fill_buffer._entry_ptr, ptr @ak8975_power_on._entry, ptr @ak8975_power_on._entry.27, ptr @ak8975_power_on._entry_ptr, ptr @ak8975_power_on._entry_ptr.29, ptr @ak8975_probe._entry, ptr @ak8975_probe._entry.10, ptr @ak8975_probe._entry.14, ptr @ak8975_probe._entry.18, ptr @ak8975_probe._entry.21, ptr @ak8975_probe._entry_ptr, ptr @ak8975_probe._entry_ptr.12, ptr @ak8975_probe._entry_ptr.16, ptr @ak8975_probe._entry_ptr.20, ptr @ak8975_probe._entry_ptr.23, ptr @ak8975_read_axis._entry, ptr @ak8975_read_axis._entry_ptr, ptr @ak8975_runtime_resume._entry, ptr @ak8975_runtime_resume._entry_ptr, ptr @ak8975_runtime_suspend._entry, ptr @ak8975_runtime_suspend._entry_ptr, ptr @ak8975_setup._entry, ptr @ak8975_setup._entry.37, ptr @ak8975_setup._entry.40, ptr @ak8975_setup._entry.43, ptr @ak8975_setup._entry_ptr, ptr @ak8975_setup._entry_ptr.39, ptr @ak8975_setup._entry_ptr.42, ptr @ak8975_setup._entry_ptr.45, ptr @ak8975_setup_irq._entry, ptr @ak8975_setup_irq._entry_ptr, ptr @ak8975_start_read_axis._entry, ptr @ak8975_start_read_axis._entry.54, ptr @ak8975_start_read_axis._entry.57, ptr @ak8975_start_read_axis._entry_ptr, ptr @ak8975_start_read_axis._entry_ptr.56, ptr @ak8975_start_read_axis._entry_ptr.59, ptr @ak8975_who_i_am._entry, ptr @ak8975_who_i_am._entry.32, ptr @ak8975_who_i_am._entry_ptr, ptr @ak8975_who_i_am._entry_ptr.34, ptr @wait_conversion_complete_gpio._entry, ptr @wait_conversion_complete_gpio._entry.62, ptr @wait_conversion_complete_gpio._entry_ptr, ptr @wait_conversion_complete_gpio._entry_ptr.64, ptr @wait_conversion_complete_polled._entry, ptr @wait_conversion_complete_polled._entry.66, ptr @wait_conversion_complete_polled._entry_ptr, ptr @wait_conversion_complete_polled._entry_ptr.67, ptr @ak8975_driver, ptr @.str, ptr @ak8975_of_match, ptr @ak_acpi_match, ptr @ak8975_dev_pm_ops, ptr @ak8975_id, ptr @.str.1, ptr @.str.2, ptr @ak_def_array, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @ak8975_probe.__key, ptr @.str.17, ptr @ak8975_channels, ptr @ak8975_info, ptr @ak8975_scan_masks, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @ak8975_setup_irq.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @ak8975_ext_info, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_of_match to i32), i32 2156, i32 2688, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak_acpi_match to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_id to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak_def_array to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_power_on._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_who_i_am._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_who_i_am._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_setup._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_setup._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_setup._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_setup_irq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_read_axis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_start_read_axis._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_start_read_axis._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_start_read_axis._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_conversion_complete_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_conversion_complete_gpio._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_conversion_complete_polled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_conversion_complete_polled._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_fill_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak8975_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8975_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ak8975_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ak8975_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @ak8975_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8975_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef null, i32 noundef 1) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @gpiod_set_consumer_name(ptr noundef nonnull %call, ptr noundef nonnull @.str.1) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %call7 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 7) #9
  %cmp.i203 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %call13 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 248) #9
  %cmp = icmp eq ptr %call13, null
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call13, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %3, align 8
  %eoc_gpiod18 = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %eoc_gpiod18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %eoc_gpiod18, align 4
  %reset_gpiod19 = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %reset_gpiod19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %reset_gpiod19, align 8
  %eoc_irq = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %eoc_irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %eoc_irq, align 4
  %orientation = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 11
  %call21 = tail call i32 @iio_read_mount_matrix(ptr noundef %dev, ptr noundef %orientation) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %call26 = tail call ptr @device_get_match_data(ptr noundef %dev) #9
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end24
  %9 = ptrtoint ptr %call26 to i32
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then28.if.end36_crit_edge

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end.i:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end24
  %tobool31.not = icmp eq ptr %id, null
  br i1 %tobool31.not, label %if.else.cleanup_crit_edge, label %if.then32

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_data, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end.i, %if.then28.if.end36_crit_edge
  %chipset.0 = phi i32 [ %15, %if.then32 ], [ %9, %if.then28.if.end36_crit_edge ], [ %9, %if.end.i ]
  %name.0 = phi ptr [ %id, %if.then32 ], [ %11, %if.then28.if.end36_crit_edge ], [ %13, %if.end.i ]
  %switch.tableidx = add i32 %chipset.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 5
  br i1 %16, label %if.end44, label %do.end

do.end:                                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %chipset.0) #12
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %arrayidx45 = getelementptr [5 x %struct.ak_def], ptr @ak_def_array, i32 0, i32 %switch.tableidx
  %def = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %def to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx45, ptr %def, align 4
  %call47 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  %vdd = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call47, ptr %vdd, align 8
  %cmp.i205 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call47 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.end44
  %call55 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  %vid = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 13
  %20 = ptrtoint ptr %vid to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call55, ptr %vid, align 4
  %cmp.i206 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %call55 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.end53
  %call62 = tail call fastcc i32 @ak8975_power_on(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  %22 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %def, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %call68 = tail call fastcc i32 @ak8975_who_i_am(ptr noundef %client, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end73, label %do.body76

do.end73:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  br label %power_off

do.body76:                                        ; preds = %if.end65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ak8975_probe.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ak8975_probe, %if.then81)) #9
          to label %do.end85 [label %if.then81], !srcloc !172

if.then81:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ak8975_probe.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef %name.0) #9
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %do.body76
  %call86 = tail call fastcc i32 @ak8975_setup(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %do.end91, label %do.body94

do.end91:                                         ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %name.0) #12
  br label %power_off

do.body94:                                        ; preds = %do.end85
  %lock = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @ak8975_probe.__key) #9
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call13, i32 0, i32 13
  %26 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ak8975_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call13, i32 0, i32 14
  %27 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call13, i32 0, i32 17
  %28 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @ak8975_info, ptr %info, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call13, i32 0, i32 6
  %29 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @ak8975_scan_masks, ptr %available_scan_masks, align 4
  %30 = ptrtoint ptr %call13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %call13, align 8
  %name97 = getelementptr inbounds %struct.iio_dev, ptr %call13, i32 0, i32 15
  %31 = ptrtoint ptr %name97 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %name.0, ptr %name97, align 8
  %call98 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call13, ptr noundef null, ptr noundef nonnull @ak8975_handle_trigger, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end105, label %do.end103

do.end103:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #12
  br label %power_off

if.end105:                                        ; preds = %do.body94
  %call106 = tail call i32 @__iio_device_register(ptr noundef nonnull %call13, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end113, label %do.end111

do.end111:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #12
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call13) #9
  br label %power_off

if.end113:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !173
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 50) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i207 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  br label %cleanup

power_off:                                        ; preds = %do.end111, %do.end103, %do.end91, %do.end73
  %err.0 = phi i32 [ %call68, %do.end73 ], [ %call86, %do.end91 ], [ %call98, %do.end103 ], [ %call106, %do.end111 ]
  tail call fastcc void @ak8975_power_off(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %power_off, %if.end113, %if.end61.cleanup_crit_edge, %if.then58, %if.then50, %do.end, %if.else.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then9, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %1, %if.then9 ], [ -19, %do.end ], [ %19, %if.then50 ], [ %21, %if.then58 ], [ %err.0, %power_off ], [ 0, %if.end113 ], [ -12, %if.end11.cleanup_crit_edge ], [ %call21, %if.end15.cleanup_crit_edge ], [ -38, %if.else.cleanup_crit_edge ], [ %call62, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8975_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !175
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !176
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  tail call void @iio_device_unregister(ptr noundef %1) #9
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #9
  %cntl_cache.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %cntl_cache.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cntl_cache.i, align 8
  %def.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %def.i, align 4
  %arrayidx.i = getelementptr %struct.ak_def, ptr %8, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %neg.i = xor i8 %10, -1
  %and.i = and i8 %6, %neg.i
  %arrayidx3.i = getelementptr %struct.ak_def, ptr %8, i32 0, i32 5, i32 0
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx3.i, align 1
  %or.i = or i8 %and.i, %12
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %arrayidx7.i = getelementptr %struct.ak_def, ptr %8, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx7.i, align 2
  %call.i12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext %16, i8 noundef zeroext %or.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %cmp.i = icmp slt i32 %call.i12, 0
  br i1 %cmp.i, label %pm_runtime_put_noidle.exit.ak8975_set_mode.exit_crit_edge, label %if.end.i

pm_runtime_put_noidle.exit.ak8975_set_mode.exit_crit_edge: ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ak8975_set_mode.exit

if.end.i:                                         ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %cntl_cache.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %or.i, ptr %cntl_cache.i, align 8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #9
  br label %ak8975_set_mode.exit

ak8975_set_mode.exit:                             ; preds = %if.end.i, %pm_runtime_put_noidle.exit.ak8975_set_mode.exit_crit_edge
  %reset_gpiod.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %reset_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reset_gpiod.i, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef 1) #9
  %vid.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 13
  %20 = ptrtoint ptr %vid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vid.i, align 4
  %call.i13 = tail call i32 @regulator_disable(ptr noundef %21) #9
  %vdd.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 12
  %22 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdd.i, align 8
  %call1.i = tail call i32 @regulator_disable(ptr noundef %23) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ak8975_power_on(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.ak8975_data, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 8
  %call = tail call i32 @regulator_enable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %vid = getelementptr inbounds %struct.ak8975_data, ptr %data, i32 0, i32 13
  %4 = ptrtoint ptr %vid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vid, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %reset_gpiod = getelementptr inbounds %struct.ak8975_data, ptr %data, i32 0, i32 6
  %8 = ptrtoint ptr %reset_gpiod to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpiod, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call1, %do.end6 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ak8975_who_i_am(ptr noundef %client, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  %wia_val = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wia_val) #9
  %0 = ptrtoint ptr %wia_val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %wia_val, align 1, !annotation !177
  %1 = getelementptr inbounds [2 x i8], ptr %wia_val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !177
  %call = call i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef nonnull %wia_val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %wia_val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wia_val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %4)
  %cmp1.not = icmp eq i8 %4, 72
  br i1 %cmp1.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end28 [
    i32 1, label %if.end4.cleanup_crit_edge
    i32 2, label %if.end4.cleanup_crit_edge35
    i32 3, label %sw.bb5
    i32 4, label %sw.bb12
    i32 5, label %sw.bb19
  ]

if.end4.cleanup_crit_edge35:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb5:                                           ; preds = %if.end4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp8 = icmp eq i8 %7, 5
  br i1 %cmp8, label %sw.bb5.cleanup_crit_edge, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb12:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp15 = icmp eq i8 %9, 4
  br i1 %cmp15, label %sw.bb12.cleanup_crit_edge, label %sw.bb12.sw.epilog_crit_edge

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb19:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %11)
  %cmp22 = icmp eq i8 %11, 9
  br i1 %cmp22, label %sw.bb19.cleanup_crit_edge, label %sw.bb19.sw.epilog_crit_edge

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end28:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %dev29 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.33, i32 noundef %type) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end28, %sw.bb19.sw.epilog_crit_edge, %sw.bb12.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb19.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end4.cleanup_crit_edge35, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -19, %sw.epilog ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge35 ], [ 0, %sw.bb5.cleanup_crit_edge ], [ 0, %sw.bb12.cleanup_crit_edge ], [ 0, %sw.bb19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wia_val) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ak8975_setup(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %cntl_cache.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %cntl_cache.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cntl_cache.i, align 8
  %def.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %def.i, align 4
  %arrayidx.i = getelementptr %struct.ak_def, ptr %7, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %neg.i = xor i8 %9, -1
  %and.i = and i8 %5, %neg.i
  %arrayidx3.i = getelementptr %struct.ak_def, ptr %7, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3.i, align 1
  %or.i = or i8 %and.i, %11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %arrayidx7.i = getelementptr %struct.ak_def, ptr %7, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7.i, align 2
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext %15, i8 noundef zeroext %or.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %cntl_cache.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %or.i, ptr %cntl_cache.i, align 8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #9
  %17 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %def.i, align 4
  %arrayidx = getelementptr %struct.ak_def, ptr %18, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %asa = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 3
  %call3 = tail call i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef %client, i8 noundef zeroext %20, i8 noundef zeroext 3, ptr noundef %asa) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.38) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %21 = ptrtoint ptr %cntl_cache.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cntl_cache.i, align 8
  %23 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %def.i, align 4
  %arrayidx.i83 = getelementptr %struct.ak_def, ptr %24, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i83, align 1
  %neg.i84 = xor i8 %26, -1
  %and.i85 = and i8 %22, %neg.i84
  %arrayidx3.i86 = getelementptr %struct.ak_def, ptr %24, i32 0, i32 5, i32 0
  %27 = ptrtoint ptr %arrayidx3.i86 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx3.i86, align 1
  %or.i87 = or i8 %and.i85, %28
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 8
  %arrayidx7.i88 = getelementptr %struct.ak_def, ptr %24, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %arrayidx7.i88 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx7.i88, align 2
  %call.i89 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext %32, i8 noundef zeroext %or.i87) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp.i90 = icmp slt i32 %call.i89, 0
  br i1 %cmp.i90, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %33 = ptrtoint ptr %cntl_cache.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %or.i87, ptr %cntl_cache.i, align 8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #9
  %eoc_gpiod = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 5
  %34 = ptrtoint ptr %eoc_gpiod to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %eoc_gpiod, align 4
  %tobool.not = icmp eq ptr %35, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.end18.if.then20_crit_edge

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end18
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp19 = icmp sgt i32 %37, 0
  br i1 %cmp19, label %lor.lhs.false.if.then20_crit_edge, label %lor.lhs.false.if.end29_crit_edge

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end18.if.then20_crit_edge
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 8
  %data_ready_queue.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %data_ready_queue.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @ak8975_setup_irq.__key) #9
  %flags.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #9
  %irq2.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %irq2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then20.if.end.i95_crit_edge

if.then20.if.end.i95_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i95

if.else.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %eoc_gpiod to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eoc_gpiod, align 4
  %call.i94 = tail call i32 @gpiod_to_irq(ptr noundef %43) #9
  br label %if.end.i95

if.end.i95:                                       ; preds = %if.else.i, %if.then20.if.end.i95_crit_edge
  %irq.0.i = phi i32 [ %call.i94, %if.else.i ], [ %41, %if.then20.if.end.i95_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  %init_name.i.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4, i32 3
  %44 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i95.dev_name.exit.i_crit_edge

if.end.i95.dev_name.exit.i_crit_edge:             ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i95.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %47, %if.end.i.i ], [ %45, %if.end.i95.dev_name.exit.i_crit_edge ]
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev.i, i32 noundef %irq.0.i, ptr noundef nonnull @ak8975_irq_handler, ptr noundef null, i32 noundef 8193, ptr noundef %retval.0.i.i, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i96 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i96, label %do.end26, label %ak8975_setup_irq.exit

ak8975_setup_irq.exit:                            ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %eoc_irq.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 7
  %48 = ptrtoint ptr %eoc_irq.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %irq.0.i, ptr %eoc_irq.i, align 4
  br label %if.end29

do.end26:                                         ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, i32 noundef %irq.0.i, i32 noundef %call.i.i) #12
  %dev27 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end29:                                         ; preds = %ak8975_setup_irq.exit, %lor.lhs.false.if.end29_crit_edge
  %49 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %def.i, align 4
  %raw_to_gauss = getelementptr inbounds %struct.ak_def, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %raw_to_gauss to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %raw_to_gauss, align 4
  %53 = ptrtoint ptr %asa to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %asa, align 4
  %conv = zext i8 %54 to i16
  %call33 = tail call i32 %52(i16 noundef zeroext %conv) #9
  %raw_to_gauss34 = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 4
  %55 = ptrtoint ptr %raw_to_gauss34 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call33, ptr %raw_to_gauss34, align 8
  %56 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %def.i, align 4
  %raw_to_gauss37 = getelementptr inbounds %struct.ak_def, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %raw_to_gauss37 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %raw_to_gauss37, align 4
  %arrayidx39 = getelementptr %struct.ak8975_data, ptr %3, i32 0, i32 3, i32 1
  %60 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %61 to i16
  %call41 = tail call i32 %59(i16 noundef zeroext %conv40) #9
  %arrayidx43 = getelementptr %struct.ak8975_data, ptr %3, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call41, ptr %arrayidx43, align 4
  %63 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %def.i, align 4
  %raw_to_gauss45 = getelementptr inbounds %struct.ak_def, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %raw_to_gauss45 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %raw_to_gauss45, align 4
  %arrayidx47 = getelementptr %struct.ak8975_data, ptr %3, i32 0, i32 3, i32 2
  %67 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx47, align 2
  %conv48 = zext i8 %68 to i16
  %call49 = tail call i32 %66(i16 noundef zeroext %conv48) #9
  %arrayidx51 = getelementptr %struct.ak8975_data, ptr %3, i32 0, i32 4, i32 2
  %69 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call49, ptr %arrayidx51, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end26, %do.end16, %do.end8, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call3, %do.end8 ], [ %call.i89, %do.end16 ], [ %call.i.i, %do.end26 ], [ 0, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8975_handle_trigger(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %fval.i = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %def2.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %def2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %def2.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %fval.i) #9
  %8 = ptrtoint ptr %fval.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %fval.i, align 2, !annotation !177
  %9 = getelementptr inbounds [3 x i16], ptr %fval.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %9, align 2, !annotation !177
  %11 = getelementptr inbounds [3 x i16], ptr %fval.i, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %11, align 2, !annotation !177
  %lock.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %call3.i = tail call fastcc i32 @ak8975_start_read_axis(ptr noundef %3, ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.unlock.i_crit_edge

entry.unlock.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.i

if.end.i:                                         ; preds = %entry
  %data_regs.i = getelementptr inbounds %struct.ak_def, ptr %7, i32 0, i32 6
  %13 = ptrtoint ptr %data_regs.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data_regs.i, align 1
  %call4.i = call i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef %5, i8 noundef zeroext %14, i8 noundef zeroext 6, ptr noundef nonnull %fval.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.end.i.unlock.i_crit_edge, label %if.end6.i

if.end.i.unlock.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.i

if.end6.i:                                        ; preds = %if.end.i
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %15 = ptrtoint ptr %fval.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fval.i, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16) #9
  %range.i = getelementptr inbounds %struct.ak_def, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %range.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %range.i, align 4
  %sub.i = sub i16 0, %19
  %20 = call i16 @llvm.smax.i16(i16 %17, i16 %sub.i) #9
  %21 = call i16 @llvm.smin.i16(i16 %20, i16 %19) #9
  %scan.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 14
  %22 = ptrtoint ptr %scan.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %scan.i, align 8
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %9, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24) #9
  %26 = ptrtoint ptr %range.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %range.i, align 4
  %sub34.i = sub i16 0, %27
  %28 = call i16 @llvm.smax.i16(i16 %25, i16 %sub34.i) #9
  %29 = call i16 @llvm.smin.i16(i16 %28, i16 %27) #9
  %arrayidx63.i = getelementptr %struct.ak8975_data, ptr %3, i32 0, i32 14, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %arrayidx63.i, align 2
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %11, align 2
  %33 = call i16 @llvm.bswap.i16(i16 %32) #9
  %34 = ptrtoint ptr %range.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %range.i, align 4
  %sub67.i = sub i16 0, %35
  %36 = call i16 @llvm.smax.i16(i16 %33, i16 %sub67.i) #9
  %37 = call i16 @llvm.smin.i16(i16 %36, i16 %35) #9
  %arrayidx96.i = getelementptr %struct.ak8975_data, ptr %3, i32 0, i32 14, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %arrayidx96.i, align 4
  %call98.i = call i64 @iio_get_time_ns(ptr noundef %1) #9
  %scan_timestamp.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %39 = ptrtoint ptr %scan_timestamp.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %scan_timestamp.i.i, align 8, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i.i, label %if.end6.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge, label %if.then.i.i

if.end6.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iio_push_to_buffers_with_timestamp.exit.i

if.then.i.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %scan_bytes.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %scan_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scan_bytes.i.i, align 4
  %div1.i.i = lshr i32 %42, 3
  %sub.i.i = add nsw i32 %div1.i.i, -1
  %arrayidx.i.i = getelementptr i64, ptr %scan.i, i32 %sub.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %call98.i, ptr %arrayidx.i.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit.i

iio_push_to_buffers_with_timestamp.exit.i:        ; preds = %if.then.i.i, %if.end6.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge
  %call.i.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan.i) #9
  br label %ak8975_fill_buffer.exit

unlock.i:                                         ; preds = %if.end.i.unlock.i_crit_edge, %entry.unlock.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.68) #12
  br label %ak8975_fill_buffer.exit

ak8975_fill_buffer.exit:                          ; preds = %unlock.i, %iio_push_to_buffers_with_timestamp.exit.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %fval.i) #9
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %44 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %45) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ak8975_power_off(ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_gpiod = getelementptr inbounds %struct.ak8975_data, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %reset_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpiod, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #9
  %vid = getelementptr inbounds %struct.ak8975_data, ptr %data, i32 0, i32 13
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vid, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %3) #9
  %vdd = getelementptr inbounds %struct.ak8975_data, ptr %data, i32 0, i32 12
  %4 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd, align 8
  %call1 = tail call i32 @regulator_disable(ptr noundef %5) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ak8975_raw_to_gauss(i16 noundef zeroext %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %data to i32
  %0 = mul nuw nsw i32 %conv, 3000
  %mul = add nuw nsw i32 %0, 384000
  %div1 = lshr i32 %mul, 8
  ret i32 %div1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ak8963_09911_raw_to_gauss(i16 noundef zeroext %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %data to i32
  %0 = mul nuw nsw i32 %conv, 6000
  %mul = add nuw nsw i32 %0, 768000
  %div1 = lshr i32 %mul, 8
  ret i32 %div1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ak09912_raw_to_gauss(i16 noundef zeroext %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %data to i32
  %0 = mul nuw nsw i32 %conv, 1500
  %mul = add nuw nsw i32 %0, 192000
  %div1 = lshr i32 %mul, 8
  ret i32 %div1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8975_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ak8975_data, ptr %data, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #9
  %data_ready_queue = getelementptr inbounds %struct.ak8975_data, ptr %data, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %data_ready_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ak8975_get_mount_matrix(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %orientation = getelementptr inbounds %struct.ak8975_data, ptr %1, i32 0, i32 11
  ret ptr %orientation
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8975_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %rval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %def2.i = getelementptr inbounds %struct.ak8975_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %def2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %def2.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rval.i) #9
  %9 = ptrtoint ptr %rval.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %rval.i, align 2, !annotation !177
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #9
  %lock.i = getelementptr inbounds %struct.ak8975_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %call5.i = tail call fastcc i32 @ak8975_start_read_axis(ptr noundef %1, ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.exit.i_crit_edge

sw.bb.exit.i_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

if.end.i:                                         ; preds = %sw.bb
  %arrayidx.i = getelementptr %struct.ak_def, ptr %8, i32 0, i32 6, i32 %4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %call6.i = call i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef %6, i8 noundef zeroext %11, i8 noundef zeroext 2, ptr noundef nonnull %rval.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end.i.exit.i_crit_edge, label %if.end8.i

if.end.i.exit.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call.i60.i = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4, i32 12, i32 22
  %14 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store volatile i64 %call.i60.i, ptr %last_busy.i.i, align 8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %dev13.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %call.i61.i = call i32 @__pm_runtime_suspend(ptr noundef %dev13.i, i32 noundef 13) #9
  %17 = ptrtoint ptr %rval.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rval.i, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18) #9
  %range.i = getelementptr inbounds %struct.ak_def, ptr %8, i32 0, i32 2
  %20 = ptrtoint ptr %range.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %range.i, align 4
  %sub.i = sub i16 0, %21
  %22 = call i16 @llvm.smax.i16(i16 %19, i16 %sub.i) #9
  %23 = call i16 @llvm.smin.i16(i16 %22, i16 %21) #9
  %cond34.i = sext i16 %23 to i32
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond34.i, ptr %val, align 4
  br label %ak8975_read_axis.exit

exit.i:                                           ; preds = %if.end.i.exit.i_crit_edge, %sw.bb.exit.i_crit_edge
  %ret.0.i = phi i32 [ %call5.i, %sw.bb.exit.i_crit_edge ], [ %call6.i, %if.end.i.exit.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.50) #12
  br label %ak8975_read_axis.exit

ak8975_read_axis.exit:                            ; preds = %exit.i, %if.end8.i
  %retval.0.i = phi i32 [ %ret.0.i, %exit.i ], [ 1, %if.end8.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rval.i) #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %val, align 4
  %address3 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %26 = ptrtoint ptr %address3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %address3, align 4
  %arrayidx = getelementptr %struct.ak8975_data, ptr %1, i32 0, i32 4, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %ak8975_read_axis.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb2 ], [ %retval.0.i, %ak8975_read_axis.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ak8975_start_read_axis(ptr noundef %data, ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cntl_cache.i = getelementptr inbounds %struct.ak8975_data, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %cntl_cache.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cntl_cache.i, align 8
  %def.i = getelementptr inbounds %struct.ak8975_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %def.i, align 4
  %arrayidx.i = getelementptr %struct.ak_def, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %neg.i = xor i8 %5, -1
  %and.i = and i8 %1, %neg.i
  %arrayidx3.i = getelementptr %struct.ak_def, ptr %3, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.i, align 1
  %or.i = or i8 %and.i, %7
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %arrayidx7.i = getelementptr %struct.ak_def, ptr %3, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7.i, align 2
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext %11, i8 noundef zeroext %or.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %cntl_cache.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %or.i, ptr %cntl_cache.i, align 8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #9
  %eoc_irq = getelementptr inbounds %struct.ak8975_data, ptr %data, i32 0, i32 7
  %13 = ptrtoint ptr %eoc_irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eoc_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 668) #9
  %flags.i = getelementptr inbounds %struct.ak8975_data, ptr %data, i32 0, i32 9
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then9.i, label %if.end35.thread.i

if.end35.thread.i:                                ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #9
  br label %if.end12

if.then9.i:                                       ; preds = %if.then1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %17 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  %data_ready_queue.i = getelementptr inbounds %struct.ak8975_data, ptr %data, i32 0, i32 8
  %call1158.i = call i32 @prepare_to_wait_event(ptr noundef %data_ready_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %and1.i5159.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i5159.i)
  %tobool15.not60.not.i = icmp eq i32 %and1.i5159.i, 0
  br i1 %tobool15.not60.not.i, label %if.then9.i.cleanup.i_crit_edge, label %.critedge.i

if.then9.i.cleanup.i_crit_edge:                   ; preds = %if.then9.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then9.i.cleanup.i_crit_edge
  %__ret10.162.i = phi i32 [ %__ret10.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 10, %if.then9.i.cleanup.i_crit_edge ]
  %call32.i = call i32 @schedule_timeout(i32 noundef %__ret10.162.i) #9
  %call11.i = call i32 @prepare_to_wait_event(ptr noundef %data_ready_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %and1.i51.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i51.i)
  %tobool15.not.i = icmp eq i32 %and1.i51.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool19.not.i = icmp eq i32 %call32.i, 0
  %spec.store.select39.i = select i1 %tobool19.not.i, i32 1, i32 %call32.i
  %__ret10.1.i = select i1 %tobool15.not.i, i32 %call32.i, i32 %spec.store.select39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1.i)
  %tobool25.not.i = icmp eq i32 %__ret10.1.i, 0
  %not.tobool15.not.i = xor i1 %tobool15.not.i, true
  %22 = select i1 %not.tobool15.not.i, i1 true, i1 %tobool25.not.i
  br i1 %22, label %if.end35.loopexit.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end35.loopexit.i:                              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1.i)
  %phi.cmp.i = icmp sgt i32 %__ret10.1.i, 0
  call void @finish_wait(ptr noundef %data_ready_queue.i, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #9
  br i1 %phi.cmp.i, label %if.end35.loopexit.i.if.end12_crit_edge, label %if.end35.loopexit.i.cleanup_crit_edge

if.end35.loopexit.i.cleanup_crit_edge:            ; preds = %if.end35.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35.loopexit.i.if.end12_crit_edge:           ; preds = %if.end35.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

.critedge.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %data_ready_queue.i, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #9
  br label %if.end12

if.else:                                          ; preds = %if.end
  %eoc_gpiod = getelementptr inbounds %struct.ak8975_data, ptr %data, i32 0, i32 5
  %23 = ptrtoint ptr %eoc_gpiod to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %eoc_gpiod, align 4
  %tobool3.not = icmp eq ptr %24, null
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 8
  br i1 %tobool3.not, label %if.else.while.body.i77_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.while.body.i77_crit_edge:                 ; preds = %if.else
  br label %while.body.i77

while.cond.i:                                     ; preds = %while.body.i
  %sub.i = add nsw i32 %timeout_ms.022.i, -10
  %tobool.not.i64 = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i64, label %while.cond.i.cleanup.sink.split.i_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond.i.cleanup.sink.split.i_crit_edge:      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %timeout_ms.022.i = phi i32 [ %sub.i, %while.cond.i.while.body.i_crit_edge ], [ 500, %if.else.while.body.i_crit_edge ]
  tail call void @msleep(i32 noundef 10) #9
  %27 = ptrtoint ptr %eoc_gpiod to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %eoc_gpiod, align 4
  %call.i65 = tail call i32 @gpiod_get_value(ptr noundef %28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool2.not.i = icmp eq i32 %call.i65, 0
  br i1 %tobool2.not.i, label %while.cond.i, label %if.end5.i

if.end5.i:                                        ; preds = %while.body.i
  %29 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %def.i, align 4
  %ctrl_regs.i = getelementptr inbounds %struct.ak_def, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %ctrl_regs.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ctrl_regs.i, align 2
  %call6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %26, i8 noundef zeroext %32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i67 = icmp slt i32 %call6.i, 0
  br i1 %cmp.i67, label %if.end5.i.cleanup.sink.split.i_crit_edge, label %if.end5.i.if.end12_crit_edge

if.end5.i.if.end12_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end5.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end5.i.cleanup.sink.split.i_crit_edge, %while.cond.i.cleanup.sink.split.i_crit_edge
  %.str.63.sink.i = phi ptr [ @.str.63, %if.end5.i.cleanup.sink.split.i_crit_edge ], [ @.str.60, %while.cond.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call6.i, %if.end5.i.cleanup.sink.split.i_crit_edge ], [ -22, %while.cond.i.cleanup.sink.split.i_crit_edge ]
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull %.str.63.sink.i) #12
  br label %cleanup

while.cond.i73:                                   ; preds = %if.end.i79
  %sub.i71 = add nsw i32 %timeout_ms.026.i, -10
  %tobool.not.i72 = icmp eq i32 %sub.i71, 0
  br i1 %tobool.not.i72, label %do.end9.i, label %while.cond.i73.while.body.i77_crit_edge

while.cond.i73.while.body.i77_crit_edge:          ; preds = %while.cond.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i77

while.body.i77:                                   ; preds = %while.cond.i73.while.body.i77_crit_edge, %if.else.while.body.i77_crit_edge
  %timeout_ms.026.i = phi i32 [ %sub.i71, %while.cond.i73.while.body.i77_crit_edge ], [ 500, %if.else.while.body.i77_crit_edge ]
  tail call void @msleep(i32 noundef 10) #9
  %33 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %def.i, align 4
  %ctrl_regs.i74 = getelementptr inbounds %struct.ak_def, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %ctrl_regs.i74 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ctrl_regs.i74, align 2
  %call.i75 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %26, i8 noundef zeroext %36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp.i76 = icmp slt i32 %call.i75, 0
  br i1 %cmp.i76, label %do.end.i, label %if.end.i79

do.end.i:                                         ; preds = %while.body.i77
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.63) #12
  br label %cleanup

if.end.i79:                                       ; preds = %while.body.i77
  %conv.i = trunc i32 %call.i75 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool2.not.i78 = icmp eq i8 %conv.i, 0
  br i1 %tobool2.not.i78, label %while.cond.i73, label %if.end11.i

do.end9.i:                                        ; preds = %while.cond.i73
  call void @__sanitizer_cov_trace_pc() #11
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.60) #12
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #11
  %conv12.i = and i32 %call.i75, 255
  br label %if.end12

if.end12:                                         ; preds = %if.end11.i, %if.end5.i.if.end12_crit_edge, %.critedge.i, %if.end35.loopexit.i.if.end12_crit_edge, %if.end35.thread.i
  %ret.0 = phi i32 [ %call6.i, %if.end5.i.if.end12_crit_edge ], [ %conv12.i, %if.end11.i ], [ 0, %.critedge.i ], [ 0, %if.end35.loopexit.i.if.end12_crit_edge ], [ 0, %if.end35.thread.i ]
  %37 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %def.i, align 4
  %ctrl_masks = getelementptr inbounds %struct.ak_def, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %ctrl_masks to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ctrl_masks, align 1
  %conv = zext i8 %40 to i32
  %and = and i32 %ret.0, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  %arrayidx16 = getelementptr %struct.ak_def, ptr %38, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx16, align 1
  %call17 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.55) #12
  br label %cleanup

if.end25:                                         ; preds = %if.then14
  %43 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %def.i, align 4
  %arrayidx28 = getelementptr %struct.ak_def, ptr %44, i32 0, i32 4, i32 2
  %45 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx28, align 1
  %arrayidx32 = getelementptr %struct.ak_def, ptr %44, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx32, align 1
  %or63 = or i8 %48, %46
  %or = zext i8 %or63 to i32
  %and34 = and i32 %call17, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end25.cleanup_crit_edge, label %do.end39

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end39:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %dev40 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.58, i32 noundef %call17) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end25.cleanup_crit_edge, %do.end23, %if.end12.cleanup_crit_edge, %do.end9.i, %do.end.i, %cleanup.sink.split.i, %if.end35.loopexit.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call17, %do.end23 ], [ -22, %do.end39 ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ -22, %do.end9.i ], [ %call.i75, %do.end.i ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -62, %if.end35.loopexit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8975_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %cntl_cache.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %cntl_cache.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cntl_cache.i, align 8
  %def.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %def.i, align 4
  %arrayidx.i = getelementptr %struct.ak_def, ptr %7, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %neg.i = xor i8 %9, -1
  %and.i = and i8 %5, %neg.i
  %arrayidx3.i = getelementptr %struct.ak_def, ptr %7, i32 0, i32 5, i32 0
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3.i, align 1
  %or.i = or i8 %and.i, %11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %arrayidx7.i = getelementptr %struct.ak_def, ptr %7, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7.i, align 2
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext %15, i8 noundef zeroext %or.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %cntl_cache.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %or.i, ptr %cntl_cache.i, align 8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #9
  %reset_gpiod.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %reset_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reset_gpiod.i, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %18, i32 noundef 1) #9
  %vid.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %vid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vid.i, align 4
  %call.i10 = tail call i32 @regulator_disable(ptr noundef %20) #9
  %vdd.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vdd.i, align 8
  %call1.i = tail call i32 @regulator_disable(ptr noundef %22) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak8975_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call2 = tail call fastcc i32 @ak8975_power_on(ptr noundef %3)
  %cntl_cache.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %cntl_cache.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cntl_cache.i, align 8
  %def.i = getelementptr inbounds %struct.ak8975_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %def.i, align 4
  %arrayidx.i = getelementptr %struct.ak_def, ptr %7, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %neg.i = xor i8 %9, -1
  %and.i = and i8 %5, %neg.i
  %arrayidx3.i = getelementptr %struct.ak_def, ptr %7, i32 0, i32 5, i32 0
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3.i, align 1
  %or.i = or i8 %and.i, %11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %arrayidx7.i = getelementptr %struct.ak_def, ptr %7, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7.i, align 2
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext %15, i8 noundef zeroext %or.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end, label %ak8975_set_mode.exit

ak8975_set_mode.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %cntl_cache.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %or.i, ptr %cntl_cache.i, align 8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ak8975_set_mode.exit
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %ak8975_set_mode.exit ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96, !97, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !144, !145, !146, !147, !149, !151, !153, !155, !156, !157, !159, !160, !161}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @__initcall__kmod_ak8975__306_1124_ak8975_driver_init6, !1, !"__initcall__kmod_ak8975__306_1124_ak8975_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 1124, i32 1}
!2 = !{ptr @__exitcall_ak8975_driver_exit, !1, !"__exitcall_ak8975_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author307, !4, !"__UNIQUE_ID_author307", i1 false, i1 false}
!4 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 1126, i32 1}
!5 = !{ptr @__UNIQUE_ID_description308, !6, !"__UNIQUE_ID_description308", i1 false, i1 false}
!6 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 1127, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 1128, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 1115, i32 11}
!12 = !{ptr @ak8975_driver, !13, !"ak8975_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 1113, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 900, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 908, i32 12}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 945, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ak8975_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ak8975_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 953, i32 47}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 956, i32 47}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 966, i32 3}
!32 = !{ptr @ak8975_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ak8975_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 969, i32 2}
!36 = !{ptr @ak8975_probe.__UNIQUE_ID_ddebug305, !35, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 974, i32 3}
!39 = !{ptr @ak8975_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ak8975_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @ak8975_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 978, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 989, i32 3}
!46 = !{ptr @ak8975_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ak8975_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 995, i32 3}
!50 = !{ptr @ak8975_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ak8975_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @ak_def_array, !53, !"ak_def_array", i1 false, i1 false}
!53 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 250, i32 28}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 411, i32 3}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ak8975_power_on._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @ak8975_power_on._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 417, i32 3}
!62 = !{ptr @ak8975_power_on._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ak8975_power_on._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 464, i32 3}
!66 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ak8975_who_i_am._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @ak8975_who_i_am._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 488, i32 3}
!71 = !{ptr @ak8975_who_i_am._entry.32, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ak8975_who_i_am._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 571, i32 3}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ak8975_setup._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ak8975_setup._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 580, i32 3}
!80 = !{ptr @ak8975_setup._entry.37, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @ak8975_setup._entry_ptr.39, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 587, i32 3}
!84 = !{ptr @ak8975_setup._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ak8975_setup._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 594, i32 4}
!88 = !{ptr @ak8975_setup._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ak8975_setup._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @ak8975_setup_irq.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 537, i32 2}
!92 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 548, i32 3}
!95 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ak8975_setup_irq._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ak8975_setup_irq._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @ak8975_channels, !99, !"ak8975_channels", i1 false, i1 false}
!99 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 803, i32 35}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 781, i32 2}
!102 = !{ptr @ak8975_ext_info, !103, !"ak8975_ext_info", i1 false, i1 false}
!103 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 780, i32 44}
!104 = !{ptr @ak8975_info, !105, !"ak8975_info", i1 false, i1 false}
!105 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 810, i32 30}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 749, i32 2}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ak8975_read_axis._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @ak8975_read_axis._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 681, i32 3}
!113 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ak8975_start_read_axis._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @ak8975_start_read_axis._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 700, i32 4}
!118 = !{ptr @ak8975_start_read_axis._entry.54, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ak8975_start_read_axis._entry_ptr.56, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 705, i32 4}
!122 = !{ptr @ak8975_start_read_axis._entry.57, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ak8975_start_read_axis._entry_ptr.59, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 621, i32 3}
!126 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @wait_conversion_complete_gpio._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @wait_conversion_complete_gpio._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 627, i32 3}
!131 = !{ptr @wait_conversion_complete_gpio._entry.62, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @wait_conversion_complete_gpio._entry_ptr.64, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 645, i32 4}
!135 = !{ptr @wait_conversion_complete_polled._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @wait_conversion_complete_polled._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @wait_conversion_complete_polled._entry.66, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 654, i32 3}
!139 = !{ptr @wait_conversion_complete_polled._entry_ptr.67, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @ak8975_scan_masks, !141, !"ak8975_scan_masks", i1 false, i1 false}
!141 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 808, i32 28}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 865, i32 2}
!144 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @ak8975_fill_buffer._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @ak8975_fill_buffer._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @ak8975_of_match, !148, !"ak8975_of_match", i1 false, i1 false}
!148 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 1098, i32 34}
!149 = !{ptr @ak_acpi_match, !150, !"ak_acpi_match", i1 false, i1 false}
!150 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 814, i32 36}
!151 = !{ptr @ak8975_dev_pm_ops, !152, !"ak8975_dev_pm_ops", i1 false, i1 false}
!152 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 1079, i32 32}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 1047, i32 3}
!155 = !{ptr @ak8975_runtime_suspend._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @ak8975_runtime_suspend._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 1071, i32 3}
!159 = !{ptr @ak8975_runtime_resume._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @ak8975_runtime_resume._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @ak8975_id, !162, !"ak8975_id", i1 false, i1 false}
!162 = !{!"../drivers/iio/magnetometer/ak8975.c", i32 1086, i32 35}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i64 2148979252, i64 2148979257, i64 2148979270, i64 2148979314, i64 2148979348, i64 2148979369}
!173 = !{i64 2148365875, i64 2148365901, i64 2148365930, i64 2148365964, i64 2148365995, i64 2148366018}
!174 = !{i64 2148365294}
!175 = !{i64 850914, i64 850939, i64 850961, i64 850977, i64 850989, i64 851009, i64 851033, i64 851049, i64 851061}
!176 = !{i64 2148365482}
!177 = !{!"auto-init"}
!178 = !{i8 0, i8 2}
