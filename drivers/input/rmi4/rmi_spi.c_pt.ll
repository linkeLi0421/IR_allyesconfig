; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_spi.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rmi_transport_ops = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.rmi_spi_xport = type { %struct.rmi_transport_dev, ptr, %struct.mutex, i32, ptr, ptr, i32, ptr, ptr, i32, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.rmi_spi_cmd = type { i32, i16 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_rmi_spi__236_528_rmi_spi_driver_init6 = internal global ptr @rmi_spi_driver_init, section ".initcall6.init", align 4
@rmi_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @rmi_id, ptr @rmi_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rmi_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmi_spi_pm, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rmi_spi_driver_exit = internal global ptr @rmi_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [56 x i8] c"rmi_spi.author=Christopher Heiny <cheiny@synaptics.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [53 x i8] c"rmi_spi.author=Andrew Duggan <aduggan@synaptics.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [35 x i8] c"rmi_spi.description=RMI SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [40 x i8] c"rmi_spi.file=drivers/input/rmi4/rmi_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [20 x i8] c"rmi_spi.license=GPL\00", section ".modinfo", align 1
@rmi_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"rmi4_spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmi4_spi\00", [23 x i8] zeroinitializer }, align 32
@rmi_spi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"syna,rmi4-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rmi_spi_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rmi_spi_suspend, ptr @rmi_spi_resume, ptr @rmi_spi_suspend, ptr @rmi_spi_resume, ptr @rmi_spi_suspend, ptr @rmi_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmi_spi_runtime_suspend, ptr @rmi_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rmi_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spi_setup failed!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rmi_spi_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/rmi4/rmi_spi.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_spi_probe._entry_ptr = internal global ptr @rmi_spi_probe._entry, section ".printk_index", align 4
@rmi_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&rmi_spi->page_mutex\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@rmi_spi_ops = internal constant { %struct.rmi_transport_ops, [20 x i8] } { %struct.rmi_transport_ops { ptr @rmi_spi_write_block, ptr @rmi_spi_read_block, ptr null }, [20 x i8] zeroinitializer }, align 32
@rmi_spi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set page select to 0.\0A\00", [63 x i8] zeroinitializer }, align 32
@rmi_spi_probe._entry_ptr.10 = internal global ptr @rmi_spi_probe._entry.8, section ".printk_index", align 4
@rmi_spi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 433, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"registering SPI-connected sensor\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rmi_spi_probe._entry_ptr.14 = internal global ptr @rmi_spi_probe._entry.11, section ".printk_index", align 4
@rmi_spi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 437, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register sensor: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rmi_spi_probe._entry_ptr.17 = internal global ptr @rmi_spi_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spi-rx-delay-us\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spi-tx-delay-us\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: cmd: %s tx_buf len: %d tx_buf: %*ph\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.rmi_spi_xfer = private unnamed_addr constant [13 x i8] c"rmi_spi_xfer\00", align 1
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@rmi_spi_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.rmi_spi_xfer, ptr @.str.3, i32 229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spi xfer failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@rmi_spi_xfer._entry_ptr = internal global ptr @rmi_spi_xfer._entry, section ".printk_index", align 4
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: (%d) %*ph\0A\00", [17 x i8] zeroinitializer }, align 32
@rmi_spi_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 459, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to resume device: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rmi_spi_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rmi_spi_suspend._entry_ptr = internal global ptr @rmi_spi_suspend._entry, section ".printk_index", align 4
@rmi_spi_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.28, ptr @.str.3, i32 472, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rmi_spi_resume\00", [17 x i8] zeroinitializer }, align 32
@rmi_spi_resume._entry_ptr = internal global ptr @rmi_spi_resume._entry, section ".printk_index", align 4
@rmi_spi_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.29, ptr @.str.3, i32 487, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rmi_spi_runtime_suspend\00", [40 x i8] zeroinitializer }, align 32
@rmi_spi_runtime_suspend._entry_ptr = internal global ptr @rmi_spi_runtime_suspend._entry, section ".printk_index", align 4
@rmi_spi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.30, ptr @.str.3, i32 500, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rmi_spi_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@rmi_spi_runtime_resume._entry_ptr = internal global ptr @rmi_spi_runtime_resume._entry, section ".printk_index", align 4
@switch.table.rmi_spi_xfer = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 2, i32 4, i32 4, i32 4], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"rmi_spi_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 518, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"rmi_id\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 512, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 520, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"rmi_spi_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 351, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [11 x i8] c"rmi_spi_pm\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 506, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 404, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 411, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 414, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"rmi_spi_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 324, i32 39 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 429, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 433, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 437, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 338, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 344, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 203, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 204, i32 40 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 204, i32 50 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 229, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 235, i32 39 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 459, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 472, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 487, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [32 x i8] c"../drivers/input/rmi4/rmi_spi.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 500, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [26 x i8] c"switch.table.rmi_spi_xfer\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_rmi_spi_driver_exit, ptr @__initcall__kmod_rmi_spi__236_528_rmi_spi_driver_init6, ptr @rmi_spi_driver_exit, ptr @rmi_spi_probe._entry, ptr @rmi_spi_probe._entry.11, ptr @rmi_spi_probe._entry.15, ptr @rmi_spi_probe._entry.8, ptr @rmi_spi_probe._entry_ptr, ptr @rmi_spi_probe._entry_ptr.10, ptr @rmi_spi_probe._entry_ptr.14, ptr @rmi_spi_probe._entry_ptr.17, ptr @rmi_spi_resume._entry, ptr @rmi_spi_resume._entry_ptr, ptr @rmi_spi_runtime_resume._entry, ptr @rmi_spi_runtime_resume._entry_ptr, ptr @rmi_spi_runtime_suspend._entry, ptr @rmi_spi_runtime_suspend._entry_ptr, ptr @rmi_spi_suspend._entry, ptr @rmi_spi_suspend._entry_ptr, ptr @rmi_spi_xfer._entry, ptr @rmi_spi_xfer._entry_ptr, ptr @rmi_spi_driver, ptr @rmi_id, ptr @.str, ptr @rmi_spi_of_match, ptr @rmi_spi_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rmi_spi_probe.__key, ptr @.str.6, ptr @.str.7, ptr @rmi_spi_ops, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @switch.table.rmi_spi_xfer], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_spi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_spi_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_spi_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_spi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_spi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_spi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_spi_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_spi_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_spi_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_spi_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_spi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rmi_spi_xfer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @rmi_spi_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rmi_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @rmi_spi_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %flags = getelementptr inbounds %struct.spi_controller, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 4
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 260, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pdata5 = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end4
  %read_delay_us.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 4, i32 2, i32 2
  %call.i127 = tail call i32 @rmi_of_property_read_u32(ptr noundef %spi, ptr noundef %read_delay_us.i, ptr noundef nonnull @.str.18, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool.not.i = icmp eq i32 %call.i127, 0
  br i1 %tobool.not.i, label %rmi_spi_of_probe.exit, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

rmi_spi_of_probe.exit:                            ; preds = %if.then8
  %write_delay_us.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 4, i32 2, i32 3
  %call4.i = tail call i32 @rmi_of_property_read_u32(ptr noundef %spi, ptr noundef %write_delay_us.i, ptr noundef nonnull @.str.19, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool10.not = icmp eq i32 %call4.i, 0
  br i1 %tobool10.not, label %rmi_spi_of_probe.exit.if.end16_crit_edge, label %rmi_spi_of_probe.exit.cleanup_crit_edge

rmi_spi_of_probe.exit.cleanup_crit_edge:          ; preds = %rmi_spi_of_probe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

rmi_spi_of_probe.exit.if.end16_crit_edge:         ; preds = %rmi_spi_of_probe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.else:                                          ; preds = %if.end4
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %if.else.if.end16_crit_edge, label %if.then14

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %9 = call ptr @memcpy(ptr %pdata5, ptr %1, i32 112)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.else.if.end16_crit_edge, %rmi_spi_of_probe.exit.if.end16_crit_edge
  %bits_per_word = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 4, i32 2, i32 7
  %10 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bits_per_word, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not = icmp eq i8 %11, 0
  br i1 %tobool17.not, label %if.end16.if.end22_crit_edge, label %if.then18

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %bits_per_word21 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %12 = ptrtoint ptr %bits_per_word21 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %bits_per_word21, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end16.if.end22_crit_edge
  %mode = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 4, i32 2, i32 8
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool24.not = icmp eq i16 %14, 0
  br i1 %tobool24.not, label %if.end22.if.end30_crit_edge, label %if.then25

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %conv28 = zext i16 %14 to i32
  %mode29 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %15 = ptrtoint ptr %mode29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv28, ptr %mode29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end22.if.end30_crit_edge
  %call31 = tail call i32 @spi_setup(ptr noundef %spi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %do.end, label %if.end35

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %irq36 = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %irq36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %irq36, align 4
  %spi37 = getelementptr inbounds %struct.rmi_spi_xport, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %spi37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spi, ptr %spi37, align 4
  %page_mutex = getelementptr inbounds %struct.rmi_spi_xport, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %page_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @rmi_spi_probe.__key) #7
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spi, ptr %call.i, align 4
  %proto_name = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %proto_name to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.7, ptr %proto_name, align 4
  %ops = getelementptr inbounds %struct.rmi_transport_dev, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @rmi_spi_ops, ptr %ops, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call46 = tail call fastcc i32 @rmi_spi_manage_pools(ptr noundef nonnull %call.i, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %if.end35
  %call50 = tail call fastcc i32 @rmi_set_page(ptr noundef nonnull %call.i, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.end60, label %do.end55

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9) #10
  br label %cleanup

do.end60:                                         ; preds = %if.end49
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.12) #10
  %call63 = tail call i32 @rmi_register_transport_device(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16, i32 noundef %call63) #10
  br label %cleanup

if.end70:                                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  %call72 = tail call fastcc i32 @devm_add_action_or_reset(ptr noundef %spi, ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %do.end68, %do.end55, %if.end35.cleanup_crit_edge, %do.end, %rmi_spi_of_probe.exit.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %do.end ], [ %call50, %do.end55 ], [ %call63, %do.end68 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call4.i, %rmi_spi_of_probe.exit.cleanup_crit_edge ], [ %call46, %if.end35.cleanup_crit_edge ], [ %call72, %if.end70 ], [ %call.i127, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_spi_manage_pools(ptr nocapture noundef %rmi_spi, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %xfer_buf_size = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 6
  %2 = ptrtoint ptr %xfer_buf_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xfer_buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, i32 64, i32 %3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %buf_size.0 = phi i32 [ %spec.select, %entry ], [ %mul, %while.cond.while.cond_crit_edge ]
  %cmp = icmp slt i32 %buf_size.0, %len
  %mul = shl i32 %buf_size.0, 1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = tail call i32 @llvm.smin.i32(i32 %buf_size.0, i32 255)
  %rx_buf = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 4
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_buf, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 2) #7
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %while.end.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !95

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %while.end
  %9 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %9, i32 noundef 3521) #7
  %tobool4.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool4.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end6

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %devm_kcalloc.exit
  %10 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %rx_buf, align 4
  %arrayidx = getelementptr i8, ptr %call5.i.i, i32 %4
  %tx_buf = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 5
  %11 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %tx_buf, align 4
  %12 = ptrtoint ptr %xfer_buf_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %4, ptr %xfer_buf_size, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %if.end6.if.end13_crit_edge, label %if.then11

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %6) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end6.if.end13_crit_edge
  %read_delay_us = getelementptr inbounds %struct.rmi_transport_dev, ptr %rmi_spi, i32 0, i32 4, i32 2, i32 2
  %13 = ptrtoint ptr %read_delay_us to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %read_delay_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  %spec.select90 = select i1 %tobool14.not, i32 1, i32 %4
  %15 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 9
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select90, ptr %15, align 4
  %write_delay_us = getelementptr inbounds %struct.rmi_transport_dev, ptr %rmi_spi, i32 0, i32 4, i32 2, i32 3
  %17 = ptrtoint ptr %write_delay_us to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %write_delay_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool21.not = icmp eq i32 %18, 0
  %.sink89 = select i1 %tobool21.not, i32 1, i32 %4
  %19 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 10
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink89, ptr %19, align 4
  %rx_xfers = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 7
  %21 = ptrtoint ptr %rx_xfers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_xfers, align 4
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %15, align 4
  %add = add i32 %.sink89, %24
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 96) #7
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %if.end13.cleanup_crit_edge, label %devm_kcalloc.exit84, !prof !95

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

devm_kcalloc.exit84:                              ; preds = %if.end13
  %27 = extractvalue { i32, i1 } %25, 0
  %call5.i.i81 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %27, i32 noundef 3520) #7
  %tobool30.not = icmp eq ptr %call5.i.i81, null
  br i1 %tobool30.not, label %devm_kcalloc.exit84.cleanup_crit_edge, label %if.end32

devm_kcalloc.exit84.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %devm_kcalloc.exit84
  %28 = ptrtoint ptr %rx_xfers to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i.i81, ptr %rx_xfers, align 4
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %15, align 4
  %arrayidx35 = getelementptr %struct.spi_transfer, ptr %call5.i.i81, i32 %30
  %tx_xfers = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 8
  %31 = ptrtoint ptr %tx_xfers to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx35, ptr %tx_xfers, align 4
  %tobool36.not = icmp eq ptr %22, null
  br i1 %tobool36.not, label %if.end32.cleanup_crit_edge, label %if.then37

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end32.cleanup_crit_edge, %devm_kcalloc.exit84.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit84.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %if.end32.cleanup_crit_edge ], [ -12, %while.end.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_set_page(ptr noundef %rmi_spi, i8 noundef zeroext %page) unnamed_addr #2 align 64 {
entry:
  %page.addr = alloca i8, align 1
  %cmd = alloca %struct.rmi_spi_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %page, ptr %page.addr, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #7
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 16777215, ptr %cmd, align 8, !annotation !96
  %call = call fastcc i32 @rmi_spi_xfer(ptr noundef %rmi_spi, ptr noundef nonnull %cmd, ptr noundef nonnull %page.addr, i32 noundef 1, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %page.addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %page.addr, align 1
  %conv = zext i8 %3 to i32
  %page1 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 3
  %4 = ptrtoint ptr %page1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %page1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #7
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_register_transport_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @rmi_spi_unregister_transport, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rmi_unregister_transport_device(ptr noundef %data) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_spi_unregister_transport(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rmi_unregister_transport_device(ptr noundef %data) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_of_property_read_u32(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_spi_write_block(ptr noundef %xport, i16 noundef zeroext %addr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %page.addr.i = alloca i8, align 1
  %cmd.i = alloca %struct.rmi_spi_cmd, align 8
  %cmd = alloca %struct.rmi_spi_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #7
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 4294967295, ptr %cmd, align 8, !annotation !96
  %page_mutex = getelementptr inbounds %struct.rmi_spi_xport, ptr %xport, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %page_mutex, i32 noundef 0) #7
  %1 = lshr i16 %addr, 8
  %2 = and i16 %1, 128
  %and = zext i16 %2 to i32
  %page = getelementptr inbounds %struct.rmi_spi_xport, ptr %xport, i32 0, i32 3
  %3 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %and)
  %cmp.not = icmp eq i32 %4, %and
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %conv5 = trunc i16 %2 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %page.addr.i)
  %5 = ptrtoint ptr %page.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv5, ptr %page.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %6 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 16777215, ptr %cmd.i, align 8, !annotation !96
  %call.i = call fastcc i32 @rmi_spi_xfer(ptr noundef %xport, ptr noundef nonnull %cmd.i, ptr noundef nonnull %page.addr.i, i32 noundef 1, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %rmi_set_page.exit.thread, label %rmi_set_page.exit

rmi_set_page.exit.thread:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %page.addr.i)
  br label %if.end7

rmi_set_page.exit:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %page.addr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %page.addr.i, align 1
  %conv.i = zext i8 %8 to i32
  %9 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %page, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %page.addr.i)
  br label %exit

if.end7:                                          ; preds = %rmi_set_page.exit.thread, %entry.if.end7_crit_edge
  %addr8 = getelementptr inbounds %struct.rmi_spi_cmd, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %addr8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %addr, ptr %addr8, align 4
  %call9 = call fastcc i32 @rmi_spi_xfer(ptr noundef %xport, ptr noundef nonnull %cmd, ptr noundef %buf, i32 noundef %len, ptr noundef null, i32 noundef 0)
  br label %exit

exit:                                             ; preds = %if.end7, %rmi_set_page.exit
  %ret.0 = phi i32 [ %call.i, %rmi_set_page.exit ], [ %call9, %if.end7 ]
  call void @mutex_unlock(ptr noundef %page_mutex) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_spi_read_block(ptr noundef %xport, i16 noundef zeroext %addr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %page.addr.i = alloca i8, align 1
  %cmd.i = alloca %struct.rmi_spi_cmd, align 8
  %cmd = alloca %struct.rmi_spi_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #7
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 8589934591, ptr %cmd, align 8, !annotation !96
  %page_mutex = getelementptr inbounds %struct.rmi_spi_xport, ptr %xport, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %page_mutex, i32 noundef 0) #7
  %1 = lshr i16 %addr, 8
  %2 = and i16 %1, 128
  %and = zext i16 %2 to i32
  %page = getelementptr inbounds %struct.rmi_spi_xport, ptr %xport, i32 0, i32 3
  %3 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %and)
  %cmp.not = icmp eq i32 %4, %and
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %conv5 = trunc i16 %2 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %page.addr.i)
  %5 = ptrtoint ptr %page.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv5, ptr %page.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #7
  %6 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 16777215, ptr %cmd.i, align 8, !annotation !96
  %call.i = call fastcc i32 @rmi_spi_xfer(ptr noundef %xport, ptr noundef nonnull %cmd.i, ptr noundef nonnull %page.addr.i, i32 noundef 1, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %rmi_set_page.exit.thread, label %rmi_set_page.exit

rmi_set_page.exit.thread:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %page.addr.i)
  br label %if.end7

rmi_set_page.exit:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %page.addr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %page.addr.i, align 1
  %conv.i = zext i8 %8 to i32
  %9 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %page, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %page.addr.i)
  br label %exit

if.end7:                                          ; preds = %rmi_set_page.exit.thread, %entry.if.end7_crit_edge
  %addr8 = getelementptr inbounds %struct.rmi_spi_cmd, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %addr8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %addr, ptr %addr8, align 4
  %call9 = call fastcc i32 @rmi_spi_xfer(ptr noundef %xport, ptr noundef nonnull %cmd, ptr noundef null, i32 noundef 0, ptr noundef %buf, i32 noundef %len)
  br label %exit

exit:                                             ; preds = %if.end7, %rmi_set_page.exit
  %ret.0 = phi i32 [ %call.i, %rmi_set_page.exit ], [ %call9, %if.end7 ]
  call void @mutex_unlock(ptr noundef %page_mutex) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_spi_xfer(ptr noundef %rmi_spi, ptr nocapture noundef readonly %cmd, ptr noundef readonly %tx_buf, i32 noundef %tx_len, ptr noundef %rx_buf, i32 noundef %rx_len) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #7
  %addr3 = getelementptr inbounds %struct.rmi_spi_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %addr3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr3, align 4
  %4 = getelementptr inbounds i8, ptr %msg, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %12 = icmp ult i32 %11, 5
  br i1 %12, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rmi_spi_xfer, i32 0, i32 %11
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %cmd_len.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %add6 = add i32 %cmd_len.0, %tx_len
  %14 = call i32 @llvm.smax.i32(i32 %add6, i32 %rx_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %14)
  %cmp7 = icmp sgt i32 %14, 255
  br i1 %cmp7, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %xfer_buf_size = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 6
  %15 = ptrtoint ptr %xfer_buf_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xfer_buf_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp8 = icmp slt i32 %16, %14
  br i1 %cmp8, label %if.then9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.end
  %call = call fastcc i32 @rmi_spi_manage_pools(ptr noundef %rmi_spi, i32 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp slt i32 %call, 0
  br i1 %cmp10, label %if.then9.cleanup_crit_edge, label %if.then9.if.end13_crit_edge

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.then9.if.end13_crit_edge, %if.end.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp14 = icmp eq i16 %3, 0
  %spec.store.select = select i1 %cmp14, i16 2047, i16 %3
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %if.end13.sw.epilog55_crit_edge [
    i32 0, label %sw.bb19
    i32 1, label %sw.bb27
    i32 4, label %sw.bb38
  ]

if.end13.sw.epilog55_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog55

sw.bb19:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %20 = lshr i16 %spec.store.select, 8
  %conv21 = trunc i16 %20 to i8
  %tx_buf22 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 5
  %21 = ptrtoint ptr %tx_buf22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_buf22, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv21, ptr %22, align 1
  %conv24 = trunc i16 %spec.store.select to i8
  br label %sw.epilog55.sink.split

sw.bb27:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %24 = lshr i16 %spec.store.select, 8
  %25 = trunc i16 %24 to i8
  %conv30 = or i8 %25, -128
  %tx_buf31 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 5
  %26 = ptrtoint ptr %tx_buf31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_buf31, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv30, ptr %27, align 1
  %conv35 = trunc i16 %spec.store.select to i8
  br label %sw.epilog55.sink.split

sw.bb38:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %tx_buf39 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 5
  %29 = ptrtoint ptr %tx_buf39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_buf39, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 64, ptr %30, align 1
  %32 = lshr i16 %spec.store.select, 8
  %conv44 = trunc i16 %32 to i8
  %33 = load ptr, ptr %tx_buf39, align 4
  %arrayidx46 = getelementptr i8, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv44, ptr %arrayidx46, align 1
  %conv49 = trunc i16 %spec.store.select to i8
  %35 = load ptr, ptr %tx_buf39, align 4
  %arrayidx51 = getelementptr i8, ptr %35, i32 2
  %36 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv49, ptr %arrayidx51, align 1
  %conv52 = trunc i32 %tx_len to i8
  br label %sw.epilog55.sink.split

sw.epilog55.sink.split:                           ; preds = %sw.bb38, %sw.bb27, %sw.bb19
  %tx_buf39.sink = phi ptr [ %tx_buf39, %sw.bb38 ], [ %tx_buf31, %sw.bb27 ], [ %tx_buf22, %sw.bb19 ]
  %.sink248 = phi i32 [ 3, %sw.bb38 ], [ 1, %sw.bb27 ], [ 1, %sw.bb19 ]
  %conv52.sink = phi i8 [ %conv52, %sw.bb38 ], [ %conv35, %sw.bb27 ], [ %conv24, %sw.bb19 ]
  %37 = ptrtoint ptr %tx_buf39.sink to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_buf39.sink, align 4
  %arrayidx54 = getelementptr i8, ptr %38, i32 %.sink248
  %39 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv52.sink, ptr %arrayidx54, align 1
  br label %sw.epilog55

sw.epilog55:                                      ; preds = %sw.epilog55.sink.split, %if.end13.sw.epilog55_crit_edge
  %tobool.not = icmp eq ptr %tx_buf, null
  br i1 %tobool.not, label %sw.epilog55.if.end59_crit_edge, label %if.then56

sw.epilog55.if.end59_crit_edge:                   ; preds = %sw.epilog55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then56:                                        ; preds = %sw.epilog55
  call void @__sanitizer_cov_trace_pc() #9
  %tx_buf57 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 5
  %40 = ptrtoint ptr %tx_buf57 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_buf57, align 4
  %arrayidx58 = getelementptr i8, ptr %41, i32 %cmd_len.0
  %42 = call ptr @memcpy(ptr %arrayidx58, ptr %tx_buf, i32 %tx_len)
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %sw.epilog55.if.end59_crit_edge
  %tx_xfer_count = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 10
  %43 = ptrtoint ptr %tx_xfer_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_xfer_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp60 = icmp sgt i32 %44, 1
  br i1 %cmp60, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add6)
  %cmp63241 = icmp sgt i32 %add6, 0
  br i1 %cmp63241, label %for.body.lr.ph, label %for.cond.preheader.if.end76_crit_edge

for.cond.preheader.if.end76_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tx_xfers = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 8
  %tx_buf66 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 5
  %write_delay_us = getelementptr inbounds %struct.rmi_transport_dev, ptr %rmi_spi, i32 0, i32 4, i32 2, i32 3
  br label %for.body

for.body:                                         ; preds = %spi_message_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0242 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %spi_message_add_tail.exit.for.body_crit_edge ]
  %45 = ptrtoint ptr %tx_xfers to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_xfers, align 4
  %arrayidx65 = getelementptr %struct.spi_transfer, ptr %46, i32 %i.0242
  %47 = call ptr @memset(ptr %arrayidx65, i32 0, i32 96)
  %48 = ptrtoint ptr %tx_buf66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tx_buf66, align 4
  %arrayidx67 = getelementptr i8, ptr %49, i32 %i.0242
  %50 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx67, ptr %arrayidx65, align 4
  %len69 = getelementptr %struct.spi_transfer, ptr %46, i32 %i.0242, i32 2
  %51 = ptrtoint ptr %len69 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %len69, align 4
  %52 = ptrtoint ptr %write_delay_us to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %write_delay_us, align 4
  %conv70 = trunc i32 %53 to i16
  %delay = getelementptr %struct.spi_transfer, ptr %46, i32 %i.0242, i32 9
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv70, ptr %delay, align 2
  %unit = getelementptr %struct.spi_transfer, ptr %46, i32 %i.0242, i32 9, i32 1
  %55 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %unit, align 2
  %transfer_list.i = getelementptr %struct.spi_transfer, ptr %46, i32 %i.0242, i32 18
  %56 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %57, ptr noundef nonnull %msg) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.spi_message_add_tail.exit_crit_edge

for.body.spi_message_add_tail.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr %struct.spi_transfer, ptr %46, i32 %i.0242, i32 18, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %transfer_list.i, ptr %57, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %for.body.spi_message_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0242, 1
  %exitcond.not = icmp eq i32 %inc, %add6
  br i1 %exitcond.not, label %spi_message_add_tail.exit.if.end76_crit_edge, label %spi_message_add_tail.exit.for.body_crit_edge

spi_message_add_tail.exit.for.body_crit_edge:     ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

spi_message_add_tail.exit.if.end76_crit_edge:     ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.else:                                          ; preds = %if.end59
  %tx_xfers72 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 8
  %62 = ptrtoint ptr %tx_xfers72 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_xfers72, align 4
  %64 = call ptr @memset(ptr %63, i32 0, i32 96)
  %tx_buf73 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 5
  %65 = ptrtoint ptr %tx_buf73 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tx_buf73, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %63, align 4
  %len75 = getelementptr inbounds %struct.spi_transfer, ptr %63, i32 0, i32 2
  %68 = ptrtoint ptr %len75 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add6, ptr %len75, align 4
  %transfer_list.i220 = getelementptr inbounds %struct.spi_transfer, ptr %63, i32 0, i32 18
  %69 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i222 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i220, ptr noundef %70, ptr noundef nonnull %msg) #7
  br i1 %call.i.i.i222, label %if.end.i.i.i224, label %if.else.if.end76_crit_edge

if.else.if.end76_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.end.i.i.i224:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %transfer_list.i220, ptr %prev.i.i.i, align 4
  %72 = ptrtoint ptr %transfer_list.i220 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %msg, ptr %transfer_list.i220, align 4
  %prev3.i.i.i223 = getelementptr inbounds %struct.spi_transfer, ptr %63, i32 0, i32 18, i32 1
  %73 = ptrtoint ptr %prev3.i.i.i223 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev3.i.i.i223, align 4
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %transfer_list.i220, ptr %70, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end.i.i.i224, %if.else.if.end76_crit_edge, %spi_message_add_tail.exit.if.end76_crit_edge, %for.cond.preheader.if.end76_crit_edge
  %75 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp78 = icmp eq i32 %76, 0
  %cond80 = select i1 %cmp78, ptr @.str.21, ptr @.str.22
  %tx_buf81 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 5
  %77 = ptrtoint ptr %tx_buf81 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx_buf81, align 4
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.rmi_spi_xfer, ptr noundef nonnull %cond80, i32 noundef %add6, i32 noundef %add6, ptr noundef %78) #7
  %tobool82.not = icmp eq ptr %rx_buf, null
  br i1 %tobool82.not, label %if.end110.thread, label %if.then83

if.then83:                                        ; preds = %if.end76
  %rx_xfer_count = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 9
  %79 = ptrtoint ptr %rx_xfer_count to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_xfer_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %80)
  %cmp84 = icmp sgt i32 %80, 1
  br i1 %cmp84, label %for.cond87.preheader, label %if.else104

for.cond87.preheader:                             ; preds = %if.then83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_len)
  %cmp88244 = icmp sgt i32 %rx_len, 0
  br i1 %cmp88244, label %for.body90.lr.ph, label %for.cond87.preheader.if.end110_crit_edge

for.cond87.preheader.if.end110_crit_edge:         ; preds = %for.cond87.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

for.body90.lr.ph:                                 ; preds = %for.cond87.preheader
  %rx_xfers = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 7
  %rx_buf92 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 4
  %read_delay_us = getelementptr inbounds %struct.rmi_transport_dev, ptr %rmi_spi, i32 0, i32 4, i32 2, i32 2
  br label %for.body90

for.body90:                                       ; preds = %spi_message_add_tail.exit231.for.body90_crit_edge, %for.body90.lr.ph
  %i.1245 = phi i32 [ 0, %for.body90.lr.ph ], [ %inc102, %spi_message_add_tail.exit231.for.body90_crit_edge ]
  %81 = ptrtoint ptr %rx_xfers to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rx_xfers, align 4
  %arrayidx91 = getelementptr %struct.spi_transfer, ptr %82, i32 %i.1245
  %83 = call ptr @memset(ptr %arrayidx91, i32 0, i32 96)
  %84 = ptrtoint ptr %rx_buf92 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx_buf92, align 4
  %arrayidx93 = getelementptr i8, ptr %85, i32 %i.1245
  %rx_buf94 = getelementptr %struct.spi_transfer, ptr %82, i32 %i.1245, i32 1
  %86 = ptrtoint ptr %rx_buf94 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %arrayidx93, ptr %rx_buf94, align 4
  %len95 = getelementptr %struct.spi_transfer, ptr %82, i32 %i.1245, i32 2
  %87 = ptrtoint ptr %len95 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %len95, align 4
  %88 = ptrtoint ptr %read_delay_us to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %read_delay_us, align 4
  %conv96 = trunc i32 %89 to i16
  %delay97 = getelementptr %struct.spi_transfer, ptr %82, i32 %i.1245, i32 9
  %90 = ptrtoint ptr %delay97 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv96, ptr %delay97, align 2
  %unit100 = getelementptr %struct.spi_transfer, ptr %82, i32 %i.1245, i32 9, i32 1
  %91 = ptrtoint ptr %unit100 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %unit100, align 2
  %transfer_list.i226 = getelementptr %struct.spi_transfer, ptr %82, i32 %i.1245, i32 18
  %92 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i228 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i226, ptr noundef %93, ptr noundef nonnull %msg) #7
  br i1 %call.i.i.i228, label %if.end.i.i.i230, label %for.body90.spi_message_add_tail.exit231_crit_edge

for.body90.spi_message_add_tail.exit231_crit_edge: ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit231

if.end.i.i.i230:                                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %transfer_list.i226, ptr %prev.i.i.i, align 4
  %95 = ptrtoint ptr %transfer_list.i226 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %msg, ptr %transfer_list.i226, align 4
  %prev3.i.i.i229 = getelementptr %struct.spi_transfer, ptr %82, i32 %i.1245, i32 18, i32 1
  %96 = ptrtoint ptr %prev3.i.i.i229 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev3.i.i.i229, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %transfer_list.i226, ptr %93, align 4
  br label %spi_message_add_tail.exit231

spi_message_add_tail.exit231:                     ; preds = %if.end.i.i.i230, %for.body90.spi_message_add_tail.exit231_crit_edge
  %inc102 = add nuw nsw i32 %i.1245, 1
  %exitcond247.not = icmp eq i32 %inc102, %rx_len
  br i1 %exitcond247.not, label %spi_message_add_tail.exit231.if.end110_crit_edge, label %spi_message_add_tail.exit231.for.body90_crit_edge

spi_message_add_tail.exit231.for.body90_crit_edge: ; preds = %spi_message_add_tail.exit231
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body90

spi_message_add_tail.exit231.if.end110_crit_edge: ; preds = %spi_message_add_tail.exit231
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.else104:                                       ; preds = %if.then83
  %rx_xfers105 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 7
  %98 = ptrtoint ptr %rx_xfers105 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rx_xfers105, align 4
  %100 = call ptr @memset(ptr %99, i32 0, i32 96)
  %rx_buf106 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 4
  %101 = ptrtoint ptr %rx_buf106 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rx_buf106, align 4
  %rx_buf107 = getelementptr inbounds %struct.spi_transfer, ptr %99, i32 0, i32 1
  %103 = ptrtoint ptr %rx_buf107 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %rx_buf107, align 4
  %len108 = getelementptr inbounds %struct.spi_transfer, ptr %99, i32 0, i32 2
  %104 = ptrtoint ptr %len108 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %rx_len, ptr %len108, align 4
  %transfer_list.i232 = getelementptr inbounds %struct.spi_transfer, ptr %99, i32 0, i32 18
  %105 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i234 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i232, ptr noundef %106, ptr noundef nonnull %msg) #7
  br i1 %call.i.i.i234, label %if.end.i.i.i236, label %if.else104.if.end110_crit_edge

if.else104.if.end110_crit_edge:                   ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.end.i.i.i236:                                  ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %transfer_list.i232, ptr %prev.i.i.i, align 4
  %108 = ptrtoint ptr %transfer_list.i232 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %msg, ptr %transfer_list.i232, align 4
  %prev3.i.i.i235 = getelementptr inbounds %struct.spi_transfer, ptr %99, i32 0, i32 18, i32 1
  %109 = ptrtoint ptr %prev3.i.i.i235 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev3.i.i.i235, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %transfer_list.i232, ptr %106, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.end.i.i.i236, %if.else104.if.end110_crit_edge, %spi_message_add_tail.exit231.if.end110_crit_edge, %for.cond87.preheader.if.end110_crit_edge
  %call111 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.end110.do.end_crit_edge, label %if.then118

if.end110.do.end_crit_edge:                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end110.thread:                                 ; preds = %if.end76
  %call111238 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111238)
  %cmp112239 = icmp slt i32 %call111238, 0
  br i1 %cmp112239, label %if.end110.thread.do.end_crit_edge, label %if.end110.thread.cleanup_crit_edge

if.end110.thread.cleanup_crit_edge:               ; preds = %if.end110.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end110.thread.do.end_crit_edge:                ; preds = %if.end110.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end110.thread.do.end_crit_edge, %if.end110.do.end_crit_edge
  %call111240 = phi i32 [ %call111238, %if.end110.thread.do.end_crit_edge ], [ %call111, %if.end110.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %call111240) #10
  br label %cleanup

if.then118:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %rx_buf119 = getelementptr inbounds %struct.rmi_spi_xport, ptr %rmi_spi, i32 0, i32 4
  %111 = ptrtoint ptr %rx_buf119 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rx_buf119, align 4
  %113 = call ptr @memcpy(ptr %rx_buf, ptr %112, i32 %rx_len)
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.rmi_spi_xfer, i32 noundef %rx_len, i32 noundef %rx_len, ptr noundef nonnull %rx_buf) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then118, %do.end, %if.end110.thread.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call111240, %do.end ], [ -22, %sw.epilog.cleanup_crit_edge ], [ %call, %if.then9.cleanup_crit_edge ], [ 0, %if.then118 ], [ 0, %if.end110.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_unregister_transport_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_spi_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %call2 = tail call i32 @rmi_driver_suspend(ptr noundef %3, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call2) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_spi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %call2 = tail call i32 @rmi_driver_resume(ptr noundef %3, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call2) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_spi_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %call2 = tail call i32 @rmi_driver_suspend(ptr noundef %3, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call2) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_spi_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rmi_dev = getelementptr inbounds %struct.rmi_transport_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev, align 4
  %call2 = tail call i32 @rmi_driver_resume(ptr noundef %3, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call2) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_driver_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_driver_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !64, !66, !68, !70, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_rmi_spi__236_528_rmi_spi_driver_init6, !1, !"__initcall__kmod_rmi_spi__236_528_rmi_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 528, i32 1}
!2 = !{ptr @__exitcall_rmi_spi_driver_exit, !1, !"__exitcall_rmi_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 530, i32 1}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 531, i32 1}
!7 = !{ptr @__UNIQUE_ID_description239, !8, !"__UNIQUE_ID_description239", i1 false, i1 false}
!8 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 532, i32 1}
!9 = !{ptr @__UNIQUE_ID_file240, !10, !"__UNIQUE_ID_file240", i1 false, i1 false}
!10 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 533, i32 1}
!11 = !{ptr @__UNIQUE_ID_license241, !10, !"__UNIQUE_ID_license241", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 520, i32 11}
!14 = !{ptr @rmi_spi_driver, !15, !"rmi_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 518, i32 26}
!16 = !{ptr @rmi_id, !17, !"rmi_id", i1 false, i1 false}
!17 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 512, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 404, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rmi_spi_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rmi_spi_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @rmi_spi_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 411, i32 2}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 414, i32 30}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 429, i32 3}
!33 = !{ptr @rmi_spi_probe._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rmi_spi_probe._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 433, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rmi_spi_probe._entry.11, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @rmi_spi_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 437, i32 3}
!42 = !{ptr @rmi_spi_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rmi_spi_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 338, i32 4}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 344, i32 4}
!48 = !{ptr @rmi_spi_ops, !49, !"rmi_spi_ops", i1 false, i1 false}
!49 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 324, i32 39}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 203, i32 38}
!52 = !{ptr @__func__.rmi_spi_xfer, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 204, i32 3}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 204, i32 40}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 204, i32 50}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 229, i32 3}
!60 = !{ptr @rmi_spi_xfer._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @rmi_spi_xfer._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 235, i32 39}
!64 = !{ptr @rmi_spi_of_match, !65, !"rmi_spi_of_match", i1 false, i1 false}
!65 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 351, i32 34}
!66 = !{ptr @rmi_spi_pm, !67, !"rmi_spi_pm", i1 false, i1 false}
!67 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 506, i32 32}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 459, i32 3}
!70 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rmi_spi_suspend._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @rmi_spi_suspend._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 472, i32 3}
!76 = !{ptr @rmi_spi_resume._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @rmi_spi_resume._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 487, i32 3}
!80 = !{ptr @rmi_spi_runtime_suspend._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @rmi_spi_runtime_suspend._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/rmi4/rmi_spi.c", i32 500, i32 3}
!84 = !{ptr @rmi_spi_runtime_resume._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @rmi_spi_runtime_resume._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{!"auto-init"}
