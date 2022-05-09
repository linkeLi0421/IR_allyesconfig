; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-rmi.c_pt.bc'
source_filename = "../drivers/hid/hid-rmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.rmi_transport_ops = type { ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rmi_data = type { %struct.mutex, i32, %struct.rmi_transport_dev, %struct.wait_queue_head, ptr, ptr, i32, i32, i32, %struct.work_struct, ptr, i32, ptr, i32 }
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.rmi_device = type { %struct.device, i32, ptr, ptr }
%struct.rmi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_hid_rmi__237_784_rmi_driver_init6 = internal global ptr @rmi_driver_init, section ".initcall6.init", align 4
@rmi_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @rmi_id, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @rmi_probe, ptr @rmi_remove, ptr null, ptr @rmi_raw_event, ptr null, ptr @rmi_event, ptr @rmi_report, ptr null, ptr @rmi_input_mapping, ptr null, ptr @rmi_input_configured, ptr null, ptr @rmi_suspend, ptr @rmi_post_resume, ptr @rmi_post_resume, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rmi_driver_exit = internal global ptr @rmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [53 x i8] c"hid_rmi.author=Andrew Duggan <aduggan@synaptics.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [35 x i8] c"hid_rmi.description=RMI HID driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [33 x i8] c"hid_rmi.file=drivers/hid/hid-rmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [20 x i8] c"hid_rmi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hid_rmi\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hid-rmi\00", [24 x i8] zeroinitializer }, align 32
@rmi_id = internal constant { [6 x %struct.hid_device_id], [32 x i8] } { [6 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 5426, i32 285, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 6127, i32 24709, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1121, i32 20082, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1739, i32 33191, i32 4 }, %struct.hid_device_id { i16 -1, i16 256, i32 -1, i32 -1, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rmi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&data->reset_work)\00", [59 x i8] zeroinitializer }, align 32
@rmi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 667, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rmi_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/hid/hid-rmi.c\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_probe._entry_ptr = internal global ptr @rmi_probe._entry, section ".printk_index", align 4
@rmi_probe.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"device does not have set mode feature report\0A\00", [50 x i8] zeroinitializer }, align 32
@rmi_probe.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.9, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"device does not have attention input report\0A\00", [51 x i8] zeroinitializer }, align 32
@rmi_probe.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.10, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"device does not have rmi write output report\0A\00", [50 x i8] zeroinitializer }, align 32
@rmi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 706, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to allocate buffer for HID reports\0A\00", [53 x i8] zeroinitializer }, align 32
@rmi_probe._entry_ptr.13 = internal global ptr @rmi_probe._entry.11, section ".printk_index", align 4
@rmi_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->wait\00", [20 x i8] zeroinitializer }, align 32
@rmi_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&data->page_mutex\00", [46 x i8] zeroinitializer }, align 32
@rmi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 718, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to allocate IRQ domain\0A\00", [33 x i8] zeroinitializer }, align 32
@rmi_probe._entry_ptr.20 = internal global ptr @rmi_probe._entry.18, section ".printk_index", align 4
@rmi_hid_pdata = internal global { %struct.rmi_device_platform_data, [48 x i8] } { %struct.rmi_device_platform_data { i32 0, i32 0, %struct.rmi_device_platform_data_spi zeroinitializer, %struct.rmi_2d_sensor_platform_data { %struct.rmi_2d_axis_alignment { i8 0, i8 0, i8 1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0 }, i32 2, i32 0, i32 0, i32 0, i16 0, i8 0, i8 0, i32 0, i32 2, i32 1 }, %struct.rmi_f01_power_management zeroinitializer, %struct.rmi_gpio_data zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hid\00", [28 x i8] zeroinitializer }, align 32
@hid_rmi_ops = internal constant { %struct.rmi_transport_ops, [20 x i8] } { %struct.rmi_transport_ops { ptr @rmi_hid_write_block, ptr @rmi_hid_read_block, ptr @rmi_hid_reset }, [20 x i8] zeroinitializer }, align 32
@rmi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 734, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@rmi_probe._entry_ptr.24 = internal global ptr @rmi_probe._entry.22, section ".printk_index", align 4
@rmi_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 158, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to set rmi mode to %d (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rmi_set_mode\00", [19 x i8] zeroinitializer }, align 32
@rmi_set_mode._entry_ptr = internal global ptr @rmi_set_mode._entry, section ".printk_index", align 4
@rmi_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @rmi_irq_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rmi_setup_irq_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 637, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't allocate an IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rmi_setup_irq_domain\00", [43 x i8] zeroinitializer }, align 32
@rmi_setup_irq_domain._entry_ptr = internal global ptr @rmi_setup_irq_domain._entry, section ".printk_index", align 4
@dummy_irq_chip = external dso_local global %struct.irq_chip, align 4
@rmi_hid_write_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 286, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to write request output report (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rmi_hid_write_block\00", [44 x i8] zeroinitializer }, align 32
@rmi_hid_write_block._entry_ptr = internal global ptr @rmi_hid_write_block._entry, section ".printk_index", align 4
@rmi_set_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 135, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: set page failed: %d.\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rmi_set_page\00", [19 x i8] zeroinitializer }, align 32
@rmi_set_page._entry_ptr = internal global ptr @rmi_set_page._entry, section ".printk_index", align 4
@rmi_write_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 181, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to write hid report (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rmi_write_report\00", [47 x i8] zeroinitializer }, align 32
@rmi_write_report._entry_ptr = internal global ptr @rmi_write_report._entry, section ".printk_index", align 4
@rmi_hid_read_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.35, ptr @.str.5, i32 222, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rmi_hid_read_block\00", [45 x i8] zeroinitializer }, align 32
@rmi_hid_read_block._entry_ptr = internal global ptr @rmi_hid_read_block._entry, section ".printk_index", align 4
@rmi_hid_read_block._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.5, i32 233, ptr @.str.38, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: timeout elapsed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rmi_hid_read_block._entry_ptr.39 = internal global ptr @rmi_hid_read_block._entry.36, section ".printk_index", align 4
@rmi_read_data_event.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.5, ptr @.str.41, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rmi_read_data_event\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no read request pending\0A\00", [39 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rmi_input_configured.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.5, ptr @.str.43, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rmi_input_configured\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Opening low level driver\0A\00", [38 x i8] zeroinitializer }, align 32
@rmi_input_configured._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.5, i32 517, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set rmi mode\0A\00", [40 x i8] zeroinitializer }, align 32
@rmi_input_configured._entry_ptr = internal global ptr @rmi_input_configured._entry, section ".printk_index", align 4
@rmi_input_configured._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str.5, i32 523, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set page select to 0.\0A\00", [63 x i8] zeroinitializer }, align 32
@rmi_input_configured._entry_ptr.47 = internal global ptr @rmi_input_configured._entry.45, section ".printk_index", align 4
@rmi_input_configured._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.42, ptr @.str.5, i32 529, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register transport driver\0A\00", [59 x i8] zeroinitializer }, align 32
@rmi_input_configured._entry_ptr.50 = internal global ptr @rmi_input_configured._entry.48, section ".printk_index", align 4
@hid_device_io_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.53, i32 963, ptr @.str.38, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already started\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid_device_io_start\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry_ptr = internal global ptr @hid_device_io_start._entry, section ".printk_index", align 4
@hid_device_io_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.53, i32 983, ptr @.str.38, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already stopped\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hid_device_io_stop\00", [45 x i8] zeroinitializer }, align 32
@hid_device_io_stop._entry_ptr = internal global ptr @hid_device_io_stop._entry, section ".printk_index", align 4
@rmi_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 451, ptr @.str.38, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to suspend device: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rmi_suspend\00", [20 x i8] zeroinitializer }, align 32
@rmi_suspend._entry_ptr = internal global ptr @rmi_suspend._entry, section ".printk_index", align 4
@rmi_post_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.5, i32 478, ptr @.str.38, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to resume device: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rmi_post_resume\00", [16 x i8] zeroinitializer }, align 32
@rmi_post_resume._entry_ptr = internal global ptr @rmi_post_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 11, i64 12]
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"rmi_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 767, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 784, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 768, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"rmi_id\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 755, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 657, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 667, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 680, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 686, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 694, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 706, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 712, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 714, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 718, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [14 x i8] c"rmi_hid_pdata\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 579, i32 40 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 728, i32 27 }
@___asan_gen_.135 = private unnamed_addr constant [12 x i8] c"hid_rmi_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 588, i32 39 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 734, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 157, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [12 x i8] c"rmi_irq_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 617, i32 36 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 637, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 284, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 134, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 181, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 220, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 232, i32 5 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 346, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 507, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 517, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 523, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 529, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 963, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 983, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 451, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.274 = private constant [25 x i8] c"../drivers/hid/hid-rmi.c\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.274, i32 478, i32 3 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_rmi_driver_exit, ptr @__initcall__kmod_hid_rmi__237_784_rmi_driver_init6, ptr @hid_device_io_start._entry, ptr @hid_device_io_start._entry_ptr, ptr @hid_device_io_stop._entry, ptr @hid_device_io_stop._entry_ptr, ptr @rmi_driver_exit, ptr @rmi_hid_read_block._entry, ptr @rmi_hid_read_block._entry.36, ptr @rmi_hid_read_block._entry_ptr, ptr @rmi_hid_read_block._entry_ptr.39, ptr @rmi_hid_write_block._entry, ptr @rmi_hid_write_block._entry_ptr, ptr @rmi_input_configured._entry, ptr @rmi_input_configured._entry.45, ptr @rmi_input_configured._entry.48, ptr @rmi_input_configured._entry_ptr, ptr @rmi_input_configured._entry_ptr.47, ptr @rmi_input_configured._entry_ptr.50, ptr @rmi_post_resume._entry, ptr @rmi_post_resume._entry_ptr, ptr @rmi_probe._entry, ptr @rmi_probe._entry.11, ptr @rmi_probe._entry.18, ptr @rmi_probe._entry.22, ptr @rmi_probe._entry_ptr, ptr @rmi_probe._entry_ptr.13, ptr @rmi_probe._entry_ptr.20, ptr @rmi_probe._entry_ptr.24, ptr @rmi_set_mode._entry, ptr @rmi_set_mode._entry_ptr, ptr @rmi_set_page._entry, ptr @rmi_set_page._entry_ptr, ptr @rmi_setup_irq_domain._entry, ptr @rmi_setup_irq_domain._entry_ptr, ptr @rmi_suspend._entry, ptr @rmi_suspend._entry_ptr, ptr @rmi_write_report._entry, ptr @rmi_write_report._entry_ptr, ptr @rmi_driver, ptr @.str, ptr @.str.1, ptr @rmi_id, ptr @rmi_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @rmi_probe.__key.14, ptr @.str.15, ptr @rmi_probe.__key.16, ptr @.str.17, ptr @.str.19, ptr @rmi_hid_pdata, ptr @.str.21, ptr @hid_rmi_ops, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @rmi_irq_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_hid_pdata to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_rmi_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_setup_irq_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_hid_write_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_set_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_write_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_hid_read_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_hid_read_block._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_input_configured._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_input_configured._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_input_configured._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_post_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @rmi_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rmi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @hid_unregister_driver(ptr noundef nonnull @rmi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %irq.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 360, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %reset_work = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #7
  %0 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %reset_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @rmi_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry5 = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rmi_reset_work, ptr %func, align 4
  %hdev7 = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %hdev7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hdev, ptr %hdev7, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 8
  %or9 = or i32 %7, -1610612736
  store i32 %or9, ptr %quirks, align 8
  %call.i192 = tail call i32 @hid_open_report(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %tobool11.not = icmp eq i32 %call.i192, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end17:                                         ; preds = %do.body
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool18.not = icmp eq i32 %9, 0
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %device_flags = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 11
  %10 = ptrtoint ptr %device_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %device_flags, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %arrayidx1.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 2, i32 2, i32 15
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end21.do.body25_crit_edge, label %for.cond.preheader.i

if.end21.do.body25_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

for.cond.preheader.i:                             ; preds = %if.end21
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp12.not.i = icmp eq i32 %14, 0
  br i1 %cmp12.not.i, label %for.cond.preheader.i.do.body25_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.do.body25_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.cond.i.do.body25_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.do.body25_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr %struct.hid_report, ptr %12, i32 0, i32 5, i32 %i.013.i
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx2.i, align 4
  %application.i = getelementptr inbounds %struct.hid_field, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %application.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %application.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %18)
  %cmp3.i = icmp ugt i32 %18, -16777217
  br i1 %cmp3.i, label %if.end35, label %for.cond.i

do.body25:                                        ; preds = %for.cond.i.do.body25_crit_edge, %for.cond.preheader.i.do.body25_crit_edge, %if.end21.do.body25_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmi_probe.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmi_probe, %if.then30)) #7
          to label %start [label %if.then30], !srcloc !147

if.then30:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rmi_probe.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  br label %start

if.end35:                                         ; preds = %for.body.i
  %arrayidx1.i193 = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 0, i32 2, i32 12
  %19 = ptrtoint ptr %arrayidx1.i193 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx1.i193, align 4
  %tobool.not.i194 = icmp eq ptr %20, null
  br i1 %tobool.not.i194, label %if.end35.do.body39_crit_edge, label %for.cond.preheader.i197

if.end35.do.body39_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

for.cond.preheader.i197:                          ; preds = %if.end35
  %maxfield.i195 = getelementptr inbounds %struct.hid_report, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %maxfield.i195 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maxfield.i195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp12.not.i196 = icmp eq i32 %22, 0
  br i1 %cmp12.not.i196, label %for.cond.preheader.i197.do.body39_crit_edge, label %for.cond.preheader.i197.for.body.i205_crit_edge

for.cond.preheader.i197.for.body.i205_crit_edge:  ; preds = %for.cond.preheader.i197
  br label %for.body.i205

for.cond.preheader.i197.do.body39_crit_edge:      ; preds = %for.cond.preheader.i197
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

for.cond.i200:                                    ; preds = %for.body.i205
  %inc.i198 = add nuw i32 %i.013.i201, 1
  %exitcond.not.i199 = icmp eq i32 %inc.i198, %22
  br i1 %exitcond.not.i199, label %for.cond.i200.do.body39_crit_edge, label %for.cond.i200.for.body.i205_crit_edge

for.cond.i200.for.body.i205_crit_edge:            ; preds = %for.cond.i200
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i205

for.cond.i200.do.body39_crit_edge:                ; preds = %for.cond.i200
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

for.body.i205:                                    ; preds = %for.cond.i200.for.body.i205_crit_edge, %for.cond.preheader.i197.for.body.i205_crit_edge
  %i.013.i201 = phi i32 [ %inc.i198, %for.cond.i200.for.body.i205_crit_edge ], [ 0, %for.cond.preheader.i197.for.body.i205_crit_edge ]
  %arrayidx2.i202 = getelementptr %struct.hid_report, ptr %20, i32 0, i32 5, i32 %i.013.i201
  %23 = ptrtoint ptr %arrayidx2.i202 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2.i202, align 4
  %application.i203 = getelementptr inbounds %struct.hid_field, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %application.i203 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %application.i203, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %26)
  %cmp3.i204 = icmp ugt i32 %26, -16777217
  br i1 %cmp3.i204, label %if.end56, label %for.cond.i200

do.body39:                                        ; preds = %for.cond.i200.do.body39_crit_edge, %for.cond.preheader.i197.do.body39_crit_edge, %if.end35.do.body39_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmi_probe.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmi_probe, %if.then51)) #7
          to label %start [label %if.then51], !srcloc !147

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rmi_probe.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.9) #7
  br label %start

if.end56:                                         ; preds = %for.body.i205
  %size.i = getelementptr inbounds %struct.hid_report, ptr %20, i32 0, i32 7
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.i, align 4
  %sub.i = add i32 %28, 7
  %div3.i = lshr i32 %sub.i, 3
  %id.i = getelementptr inbounds %struct.hid_report, ptr %20, i32 0, i32 2
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp ne i32 %30, 0
  %conv.i = zext i1 %cmp.i to i32
  %add1.i = add nuw nsw i32 %div3.i, %conv.i
  %input_report_size = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %input_report_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add1.i, ptr %input_report_size, align 4
  %arrayidx1.i208 = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 1, i32 2, i32 9
  %32 = ptrtoint ptr %arrayidx1.i208 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx1.i208, align 4
  %tobool.not.i209 = icmp eq ptr %33, null
  br i1 %tobool.not.i209, label %if.end56.do.body61_crit_edge, label %for.cond.preheader.i212

if.end56.do.body61_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body61

for.cond.preheader.i212:                          ; preds = %if.end56
  %maxfield.i210 = getelementptr inbounds %struct.hid_report, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %maxfield.i210 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %maxfield.i210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp12.not.i211 = icmp eq i32 %35, 0
  br i1 %cmp12.not.i211, label %for.cond.preheader.i212.do.body61_crit_edge, label %for.cond.preheader.i212.for.body.i220_crit_edge

for.cond.preheader.i212.for.body.i220_crit_edge:  ; preds = %for.cond.preheader.i212
  br label %for.body.i220

for.cond.preheader.i212.do.body61_crit_edge:      ; preds = %for.cond.preheader.i212
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body61

for.cond.i215:                                    ; preds = %for.body.i220
  %inc.i213 = add nuw i32 %i.013.i216, 1
  %exitcond.not.i214 = icmp eq i32 %inc.i213, %35
  br i1 %exitcond.not.i214, label %for.cond.i215.do.body61_crit_edge, label %for.cond.i215.for.body.i220_crit_edge

for.cond.i215.for.body.i220_crit_edge:            ; preds = %for.cond.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i220

for.cond.i215.do.body61_crit_edge:                ; preds = %for.cond.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body61

for.body.i220:                                    ; preds = %for.cond.i215.for.body.i220_crit_edge, %for.cond.preheader.i212.for.body.i220_crit_edge
  %i.013.i216 = phi i32 [ %inc.i213, %for.cond.i215.for.body.i220_crit_edge ], [ 0, %for.cond.preheader.i212.for.body.i220_crit_edge ]
  %arrayidx2.i217 = getelementptr %struct.hid_report, ptr %33, i32 0, i32 5, i32 %i.013.i216
  %36 = ptrtoint ptr %arrayidx2.i217 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx2.i217, align 4
  %application.i218 = getelementptr inbounds %struct.hid_field, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %application.i218 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %application.i218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %39)
  %cmp3.i219 = icmp ugt i32 %39, -16777217
  br i1 %cmp3.i219, label %if.end78, label %for.cond.i215

do.body61:                                        ; preds = %for.cond.i215.do.body61_crit_edge, %for.cond.preheader.i212.do.body61_crit_edge, %if.end56.do.body61_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmi_probe.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmi_probe, %if.then73)) #7
          to label %start [label %if.then73], !srcloc !147

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rmi_probe.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.10) #7
  br label %start

if.end78:                                         ; preds = %for.body.i220
  %size.i223 = getelementptr inbounds %struct.hid_report, ptr %33, i32 0, i32 7
  %40 = ptrtoint ptr %size.i223 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i223, align 4
  %sub.i224 = add i32 %41, 7
  %div3.i225 = lshr i32 %sub.i224, 3
  %id.i226 = getelementptr inbounds %struct.hid_report, ptr %33, i32 0, i32 2
  %42 = ptrtoint ptr %id.i226 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id.i226, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i227 = icmp ne i32 %43, 0
  %conv.i228 = zext i1 %cmp.i227 to i32
  %add1.i229 = add nuw nsw i32 %div3.i225, %conv.i228
  %output_report_size = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 7
  %44 = ptrtoint ptr %output_report_size to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add1.i229, ptr %output_report_size, align 4
  %device_flags80 = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 11
  %45 = ptrtoint ptr %device_flags80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %device_flags80, align 4
  %or81 = or i32 %46, 1
  store i32 %or81, ptr %device_flags80, align 4
  %add = add nuw nsw i32 %add1.i229, %add1.i
  %call.i230 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add, i32 noundef 3520) #7
  %writeReport = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 4
  %47 = ptrtoint ptr %writeReport to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i230, ptr %writeReport, align 4
  %tobool87.not = icmp eq ptr %call.i230, null
  br i1 %tobool87.not, label %do.end91, label %if.end93

do.end91:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end93:                                         ; preds = %if.end78
  %48 = ptrtoint ptr %output_report_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %output_report_size, align 4
  %add.ptr = getelementptr i8, ptr %call.i230, i32 %49
  %readReport = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 5
  %50 = ptrtoint ptr %readReport to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr, ptr %readReport, align 4
  %wait = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.15, ptr noundef nonnull @rmi_probe.__key.14) #7
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @rmi_probe.__key.16) #7
  %51 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver_data.i.i, align 4
  %fwnode.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 28
  %53 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fwnode.i, align 4
  %call.i.i = tail call ptr @__irq_domain_add(ptr noundef %54, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @rmi_irq_ops, ptr noundef %52) #7
  %domain.i = getelementptr inbounds %struct.rmi_data, ptr %52, i32 0, i32 12
  %55 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i, ptr %domain.i, align 4
  %tobool.not.i231 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i231, label %if.end93.do.end107_crit_edge, label %if.end.i

if.end93.do.end107_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end107

if.end.i:                                         ; preds = %if.end93
  %call.i30.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @rmi_irq_teardown, ptr noundef %52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i.i = icmp eq i32 %call.i30.i, 0
  %56 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %domain.i, align 4
  br i1 %tobool.not.i.i, label %if.end7.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %tobool.not.i.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.do.end107_crit_edge, label %if.end.i.i.i

if.then.i.i.do.end107_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end107

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i.i.i) #7
  %58 = ptrtoint ptr %irq.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %irq.i.i.i.i, align 4, !annotation !148
  %call.i.i.i.i = call ptr @__irq_resolve_mapping(ptr noundef nonnull %57, i32 noundef 0, ptr noundef nonnull %irq.i.i.i.i) #7
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.irq_find_mapping.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.i.irq_find_mapping.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %irq.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq.i.i.i.i, align 4
  br label %irq_find_mapping.exit.i.i.i

irq_find_mapping.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %if.end.i.i.i.irq_find_mapping.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %60, %if.then.i.i.i.i ], [ 0, %if.end.i.i.i.irq_find_mapping.exit.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i.i.i) #7
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.i.i.i) #7
  call void @irq_domain_remove(ptr noundef nonnull %57) #7
  %61 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %domain.i, align 4
  %rmi_irq.i.i.i = getelementptr inbounds %struct.rmi_data, ptr %52, i32 0, i32 13
  %62 = ptrtoint ptr %rmi_irq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %rmi_irq.i.i.i, align 4
  br label %do.end107

if.end7.i:                                        ; preds = %if.end.i
  %call.i31.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %57, i32 noundef 0, ptr noundef null) #7
  %rmi_irq.i = getelementptr inbounds %struct.rmi_data, ptr %52, i32 0, i32 13
  %63 = ptrtoint ptr %rmi_irq.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call.i31.i, ptr %rmi_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i31.i)
  %cmp.i232 = icmp slt i32 %call.i31.i, 1
  br i1 %cmp.i232, label %do.end.i, label %if.end109

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #10
  %64 = ptrtoint ptr %rmi_irq.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rmi_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp14.i = icmp slt i32 %65, 0
  %spec.select = select i1 %cmp14.i, i32 %65, i32 -6
  br label %do.end107

do.end107:                                        ; preds = %do.end.i, %irq_find_mapping.exit.i.i.i, %if.then.i.i.do.end107_crit_edge, %if.end93.do.end107_crit_edge
  %retval.0.i233.ph = phi i32 [ %call.i30.i, %irq_find_mapping.exit.i.i.i ], [ %call.i30.i, %if.then.i.i.do.end107_crit_edge ], [ -12, %if.end93.do.end107_crit_edge ], [ %spec.select, %do.end.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end109:                                        ; preds = %if.end7.i
  %66 = ptrtoint ptr %device_flags80 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %device_flags80, align 4
  %and = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool111.not = icmp eq i32 %and, 0
  br i1 %tobool111.not, label %if.end109.if.end113_crit_edge, label %if.then112

if.end109.if.end113_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  store i8 1, ptr getelementptr inbounds (%struct.rmi_device_platform_data, ptr @rmi_hid_pdata, i32 0, i32 5, i32 2), align 2
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %if.end109.if.end113_crit_edge
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %68 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %parent, align 8
  %xport = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 2
  %70 = ptrtoint ptr %xport to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %xport, align 4
  %pdata = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 2, i32 4
  %71 = call ptr @memcpy(ptr %pdata, ptr @rmi_hid_pdata, i32 112)
  %rmi_irq = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 13
  %72 = ptrtoint ptr %rmi_irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rmi_irq, align 4
  %irq = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 2, i32 4, i32 1
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %irq, align 4
  %proto_name = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 2, i32 2
  %75 = ptrtoint ptr %proto_name to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.21, ptr %proto_name, align 4
  %ops = getelementptr inbounds %struct.rmi_data, ptr %call.i, i32 0, i32 2, i32 3
  %76 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @hid_rmi_ops, ptr %ops, align 4
  br label %start

start:                                            ; preds = %if.end113, %if.then73, %do.body61, %if.then51, %do.body39, %if.then30, %do.body25
  %call121 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %start.cleanup_crit_edge, label %do.end126

start.cleanup_crit_edge:                          ; preds = %start
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end126:                                        ; preds = %start
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end126, %start.cleanup_crit_edge, %do.end107, %do.end91, %do.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i192, %do.end15 ], [ %retval.0.i233.ph, %do.end107 ], [ %call121, %do.end126 ], [ -12, %do.end91 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %start.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_flags = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #7
  %reset_work = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 9
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %reset_work) #7
  %xport = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 2
  tail call void @rmi_unregister_transport_device(ptr noundef %xport) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_raw_event(ptr noundef %hdev, ptr nocapture noundef readnone %report, ptr noundef %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_flags = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.while.cond.i_crit_edge

entry.while.cond.i_crit_edge:                     ; preds = %entry
  br label %while.cond.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry.while.cond.i_crit_edge
  %valid_size.0.i = phi i32 [ %sub.i, %while.cond.i.while.cond.i_crit_edge ], [ %size, %entry.while.cond.i_crit_edge ]
  %sub.i = add i32 %valid_size.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %data, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp.i = icmp eq i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid_size.0.i)
  %cmp2.i = icmp sgt i32 %valid_size.0.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp2.i, i1 false
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %rmi_check_sanity.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

rmi_check_sanity.exit:                            ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %valid_size.0.i)
  %cmp = icmp slt i32 %valid_size.0.i, 2
  br i1 %cmp, label %rmi_check_sanity.exit.cleanup_crit_edge, label %if.end3

rmi_check_sanity.exit.cleanup_crit_edge:          ; preds = %rmi_check_sanity.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %rmi_check_sanity.exit
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.end3.cleanup_crit_edge [
    i8 11, label %sw.bb
    i8 12, label %sw.bb5
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  %flags.i = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmi_read_data_event.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmi_raw_event, %if.then6.i)) #7
          to label %cleanup [label %if.then6.i], !srcloc !147

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rmi_read_data_event.__UNIQUE_ID_ddebug232, ptr noundef %dev.i, ptr noundef nonnull @.str.41) #7
  br label %cleanup

if.end7.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %readReport.i = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %readReport.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %readReport.i, align 4
  %input_report_size.i = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %input_report_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %input_report_size.i, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %valid_size.0.i) #7
  %16 = call ptr @memcpy(ptr %12, ptr %data, i32 %15)
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #7
  %wait.i = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

sw.bb5:                                           ; preds = %if.end3
  %rmi_dev1.i = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmi_dev1.i, align 4
  %flags2.i = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags2.i, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i17 = icmp eq i32 %21, 0
  br i1 %tobool.not.i17, label %sw.bb5.cleanup_crit_edge, label %do.body4.i

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body4.i:                                       ; preds = %sw.bb5
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !149
  %and.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool13.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %do.body32.critedge.i

if.then14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %arrayidx.c.i = getelementptr i8, ptr %data, i32 1
  %23 = ptrtoint ptr %arrayidx.c.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.c.i, align 1
  %conv18.c.i = zext i8 %24 to i32
  %arrayidx19.c.i = getelementptr i8, ptr %data, i32 2
  %sub.c.i = add nsw i32 %valid_size.0.i, -2
  tail call void @rmi_set_attn_data(ptr noundef %18, i32 noundef %conv18.c.i, ptr noundef %arrayidx19.c.i, i32 noundef %sub.c.i) #7
  %rmi_irq.c.i = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 13
  %25 = ptrtoint ptr %rmi_irq.c.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rmi_irq.c.i, align 4
  %call20.c.i = tail call i32 @generic_handle_irq(i32 noundef %26) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body32.i

do.body32.critedge.i:                             ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.c60.i = getelementptr i8, ptr %data, i32 1
  %27 = ptrtoint ptr %arrayidx.c60.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.c60.i, align 1
  %conv18.c61.i = zext i8 %28 to i32
  %arrayidx19.c62.i = getelementptr i8, ptr %data, i32 2
  %sub.c63.i = add nsw i32 %valid_size.0.i, -2
  tail call void @rmi_set_attn_data(ptr noundef %18, i32 noundef %conv18.c61.i, ptr noundef %arrayidx19.c62.i, i32 noundef %sub.c63.i) #7
  %rmi_irq.c64.i = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %rmi_irq.c64.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rmi_irq.c64.i, align 4
  %call20.c65.i = tail call i32 @generic_handle_irq(i32 noundef %30) #7
  br label %do.body32.i

do.body32.i:                                      ; preds = %do.body32.critedge.i, %if.then14.i
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !150
  %and.i.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool40.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool40.not.i, label %if.then44.i, label %do.body32.i.do.end47.i_crit_edge, !prof !151

do.body32.i.do.end47.i_crit_edge:                 ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end47.i

if.then44.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end47.i

do.end47.i:                                       ; preds = %if.then44.i, %do.body32.i.do.end47.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #7, !srcloc !152
  br label %cleanup

cleanup:                                          ; preds = %do.end47.i, %sw.bb5.cleanup_crit_edge, %if.end7.i, %if.then6.i, %do.body.i, %if.end3.cleanup_crit_edge, %rmi_check_sanity.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %rmi_check_sanity.exit.cleanup_crit_edge ], [ 1, %if.end3.cleanup_crit_edge ], [ 1, %if.end7.i ], [ 0, %if.then6.i ], [ 0, %do.body.i ], [ 1, %do.end47.i ], [ 0, %sw.bb5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readonly %field, ptr nocapture noundef readonly %usage, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_flags = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %application = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %4 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %application, align 4
  %.off = add i32 %5, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %and4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then.if.end19_crit_edge, label %if.then6

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then6:                                         ; preds = %if.then
  %6 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usage, align 4
  %and7 = and i32 %7, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 589824, i32 %and7)
  %cmp8 = icmp eq i32 %and7, 589824
  br i1 %cmp8, label %if.then6.cleanup_crit_edge, label %if.end

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then6
  %8 = and i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65584, i32 %8)
  %switch29 = icmp eq i32 %8, 65584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool16.not = icmp eq i32 %value, 0
  %or.cond = and i1 %tobool16.not, %switch29
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end.if.end19_crit_edge, %if.then.if.end19_crit_edge
  %reset_work = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %reset_work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end19 ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_report(ptr nocapture noundef readonly %hid, ptr nocapture noundef readonly %report) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %field1 = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 5
  %0 = ptrtoint ptr %field1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %field1, align 4
  %claimed = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 33
  %2 = ptrtoint ptr %claimed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %claimed, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.hid_report, ptr %report, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %.off = add i32 %5, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %switch, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %hidinput = getelementptr inbounds %struct.hid_field, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %hidinput to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hidinput, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true4:                                   ; preds = %land.lhs.true
  %input = getelementptr inbounds %struct.hid_input, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.lhs.true4.cleanup_crit_edge, label %if.then7

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_event(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.lhs.true4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rmi_input_mapping(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %hi, ptr nocapture noundef readnone %field, ptr nocapture noundef readonly %usage, ptr nocapture noundef readnone %bit, ptr nocapture noundef readnone %max) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_flags = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %and2 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usage, align 4
  %and4 = and i32 %5, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 589824, i32 %and4)
  %cmp = icmp eq i32 %and4, 589824
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_input_configured(ptr noundef %hdev, ptr nocapture noundef readonly %hi) #2 align 64 {
entry:
  %txbuf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_flags = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %input1 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %4 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input1, align 4
  %xport = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 2
  %input2 = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %input2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %input2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rmi_input_configured.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rmi_input_configured, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !147

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rmi_input_configured.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.43) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %call9 = tail call i32 @hid_hw_open(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %io_started.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 35
  %7 = ptrtoint ptr %io_started.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %io_started.i, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.51) #10
  br label %hid_device_io_start.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %io_started.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %io_started.i, align 4
  %driver_input_lock.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 17
  tail call void @up(ptr noundef %driver_input_lock.i) #7
  br label %hid_device_io_start.exit

hid_device_io_start.exit:                         ; preds = %if.end.i, %do.end.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i) #7
  %10 = getelementptr inbounds [2 x i8], ptr %txbuf.i, i32 0, i32 1
  %11 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 15, ptr %txbuf.i, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %10, align 1
  %call.i = call ptr @kmemdup(ptr noundef nonnull %txbuf.i, i32 noundef 2, i32 noundef 3264) #7
  %tobool.not.i57 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i57, label %hid_device_io_start.exit.do.end17_crit_edge, label %if.end.i58

hid_device_io_start.exit.do.end17_crit_edge:      ; preds = %hid_device_io_start.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

if.end.i58:                                       ; preds = %hid_device_io_start.exit
  %call1.i = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 15, ptr noundef nonnull %call.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #7
  call void @kfree(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i60, label %if.end19

do.end.i60:                                       ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i59 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i59, ptr noundef nonnull @.str.25, i32 noundef 1, i32 noundef %call1.i) #10
  br label %do.end17

do.end17:                                         ; preds = %do.end.i60, %hid_device_io_start.exit.do.end17_crit_edge
  %retval.0.i61.ph = phi i32 [ -12, %hid_device_io_start.exit.do.end17_crit_edge ], [ %call1.i, %do.end.i60 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i) #7
  %dev18 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.44) #10
  br label %exit

if.end19:                                         ; preds = %if.end.i58
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i) #7
  %call20 = call fastcc i32 @rmi_set_page(ptr noundef %hdev, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.46) #10
  br label %exit

if.end27:                                         ; preds = %if.end19
  %call29 = call i32 @rmi_register_transport_device(ptr noundef %xport) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %dev35 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.49) #10
  br label %exit

if.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 8
  call void @_set_bit(i32 noundef 2, ptr noundef %flags) #7
  br label %exit

exit:                                             ; preds = %if.end36, %do.end34, %do.end25, %do.end17
  %ret.0 = phi i32 [ %retval.0.i61.ph, %do.end17 ], [ %call20, %do.end25 ], [ %call29, %do.end34 ], [ %call29, %if.end36 ]
  %13 = ptrtoint ptr %io_started.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %io_started.i, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i63 = icmp eq i8 %14, 0
  br i1 %tobool.not.i63, label %do.end.i65, label %if.end.i67

do.end.i65:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i64 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i64, ptr noundef nonnull @.str.54) #10
  br label %hid_device_io_stop.exit

if.end.i67:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %io_started.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %io_started.i, align 4
  %driver_input_lock.i66 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 17
  call void @down(ptr noundef %driver_input_lock.i66) #7
  br label %hid_device_io_stop.exit

hid_device_io_stop.exit:                          ; preds = %if.end.i67, %do.end.i65
  call void @hid_hw_close(ptr noundef %hdev) #7
  br label %cleanup

cleanup:                                          ; preds = %hid_device_io_stop.exit, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %hid_device_io_stop.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call9, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_suspend(ptr noundef %hdev, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %device_flags = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rmi_dev1 = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmi_dev1, align 4
  %call2 = tail call i32 @rmi_driver_suspend(ptr noundef %5, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_post_resume(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rmi_dev1 = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev1, align 4
  %device_flags = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %device_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @hid_hw_open(ptr noundef %hdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @rmi_reset_attn_mode(ptr noundef %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @rmi_driver_resume(ptr noundef %3, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.out_crit_edge, label %do.end

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call10) #10
  br label %out

out:                                              ; preds = %do.end, %if.end9.out_crit_edge, %if.end5.out_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end5.out_crit_edge ], [ %call10, %do.end ], [ 0, %if.end9.out_crit_edge ]
  tail call void @hid_hw_close(ptr noundef %hdev) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_reset_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %call = tail call fastcc i32 @rmi_reset_attn_mode(ptr noundef %1)
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_reset_attn_mode(ptr noundef %hdev) unnamed_addr #2 align 64 {
entry:
  %txbuf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rmi_dev1 = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %txbuf.i) #7
  %4 = getelementptr inbounds [2 x i8], ptr %txbuf.i, i32 0, i32 1
  %5 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 15, ptr %txbuf.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %4, align 1
  %call.i = call ptr @kmemdup(ptr noundef nonnull %txbuf.i, i32 noundef 2, i32 noundef 3264) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.rmi_set_mode.exit.thread_crit_edge, label %if.end.i

entry.rmi_set_mode.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_set_mode.exit.thread

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 15, ptr noundef nonnull %call.i, i32 noundef 2, i8 noundef zeroext 2, i32 noundef 9) #7
  call void @kfree(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef 1, i32 noundef %call1.i) #10
  br label %rmi_set_mode.exit.thread

rmi_set_mode.exit.thread:                         ; preds = %do.end.i, %entry.rmi_set_mode.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %entry.rmi_set_mode.exit.thread_crit_edge ], [ %call1.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %txbuf.i) #7
  %flags = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver = getelementptr inbounds %struct.rmi_device, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %reset_handler = getelementptr inbounds %struct.rmi_driver, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %reset_handler to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_handler, align 4
  %call6 = call i32 %13(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %rmi_set_mode.exit.thread
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %rmi_set_mode.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_irq_teardown(ptr nocapture noundef %data) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.rmi_data, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !148
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %irq.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.irq_find_mapping.exit_crit_edge, label %if.then.i

if.end.irq_find_mapping.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.end.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ 0, %if.end.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @irq_dispose_mapping(i32 noundef %retval.0.i) #7
  call void @irq_domain_remove(ptr noundef nonnull %1) #7
  %5 = ptrtoint ptr %domain1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %domain1, align 4
  %rmi_irq = getelementptr inbounds %struct.rmi_data, ptr %data, i32 0, i32 13
  %6 = ptrtoint ptr %rmi_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rmi_irq, align 4
  br label %cleanup

cleanup:                                          ; preds = %irq_find_mapping.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_irq_map(ptr nocapture noundef readnone %h, i32 noundef %virq, i32 noundef %hw_irq_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @dummy_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_hid_write_block(ptr noundef %xport, i16 noundef zeroext %addr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %xport, i32 -96
  %hdev1 = getelementptr i8, ptr %xport, i32 248
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #7
  %2 = lshr i16 %addr, 8
  %3 = zext i16 %2 to i32
  %page = getelementptr i8, ptr %xport, i32 -4
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not = icmp eq i32 %5, %3
  %.pre = trunc i16 %2 to i8
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @rmi_set_page(ptr noundef %1, i8 noundef zeroext %.pre)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then.exit_crit_edge, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %writeReport = getelementptr i8, ptr %xport, i32 184
  %6 = ptrtoint ptr %writeReport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %writeReport, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 9, ptr %7, align 1
  %conv11 = trunc i32 %len to i8
  %9 = load ptr, ptr %writeReport, align 4
  %arrayidx13 = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv11, ptr %arrayidx13, align 1
  %conv16 = trunc i16 %addr to i8
  %11 = load ptr, ptr %writeReport, align 4
  %arrayidx18 = getelementptr i8, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv16, ptr %arrayidx18, align 1
  %13 = load ptr, ptr %writeReport, align 4
  %arrayidx24 = getelementptr i8, ptr %13, i32 3
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.pre, ptr %arrayidx24, align 1
  %15 = load ptr, ptr %writeReport, align 4
  %arrayidx26 = getelementptr i8, ptr %15, i32 4
  %16 = call ptr @memcpy(ptr %arrayidx26, ptr %buf, i32 %len)
  %17 = load ptr, ptr %writeReport, align 4
  %output_report_size = getelementptr i8, ptr %xport, i32 196
  %18 = ptrtoint ptr %output_report_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %output_report_size, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i, align 4
  %device_flags.i = getelementptr inbounds %struct.rmi_data, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %device_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %device_flags.i, align 4
  %and.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %17, align 1
  %call1.i = tail call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %25, ptr noundef %17, i32 noundef %19, i8 noundef zeroext 1, i32 noundef 9) #7
  br label %if.end.i

if.else.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @hid_hw_output_report(ptr noundef %1, ptr noundef %17, i32 noundef %19) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp.i, label %do.end, label %if.end.i.exit_crit_edge

if.end.i.exit_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.33, i32 noundef %ret.0.i) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %ret.0.i) #10
  br label %exit

exit:                                             ; preds = %do.end, %if.end.i.exit_crit_edge, %if.then.exit_crit_edge
  %ret.0 = phi i32 [ %call, %if.then.exit_crit_edge ], [ %ret.0.i, %do.end ], [ 0, %if.end.i.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %add.ptr) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_hid_read_block(ptr noundef %xport, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %buf, i32 noundef %len) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %xport, i32 -96
  %hdev1 = getelementptr i8, ptr %xport, i32 248
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #7
  %2 = lshr i16 %addr, 8
  %3 = zext i16 %2 to i32
  %page = getelementptr i8, ptr %xport, i32 -4
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not = icmp eq i32 %5, %3
  %.pre = trunc i16 %2 to i8
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @rmi_set_page(ptr noundef %1, i8 noundef zeroext %.pre)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then.exit_crit_edge, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %writeReport = getelementptr i8, ptr %xport, i32 184
  %conv17 = trunc i16 %addr to i8
  %conv27 = trunc i32 %len to i8
  %shr30 = lshr i32 %len, 8
  %conv32 = trunc i32 %shr30 to i8
  %flags = getelementptr i8, ptr %xport, i32 200
  %output_report_size = getelementptr i8, ptr %xport, i32 196
  %driver_data.i.i.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18, i32 8
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %1, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp42190.not = icmp eq i32 %len, 0
  %wait = getelementptr i8, ptr %xport, i32 132
  %readReport = getelementptr i8, ptr %xport, i32 188
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10
  %retries.0193 = phi i32 [ 5, %if.end10 ], [ %dec, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %writeReport to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %writeReport, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %7, align 1
  %9 = load ptr, ptr %writeReport, align 4
  %arrayidx14 = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx14, align 1
  %11 = load ptr, ptr %writeReport, align 4
  %arrayidx19 = getelementptr i8, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv17, ptr %arrayidx19, align 1
  %13 = load ptr, ptr %writeReport, align 4
  %arrayidx25 = getelementptr i8, ptr %13, i32 3
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.pre, ptr %arrayidx25, align 1
  %15 = load ptr, ptr %writeReport, align 4
  %arrayidx29 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv27, ptr %arrayidx29, align 1
  %17 = load ptr, ptr %writeReport, align 4
  %arrayidx34 = getelementptr i8, ptr %17, i32 5
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv32, ptr %arrayidx34, align 1
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #7
  %19 = ptrtoint ptr %writeReport to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %writeReport, align 4
  %21 = ptrtoint ptr %output_report_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %output_report_size, align 4
  %23 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i.i, align 4
  %device_flags.i = getelementptr inbounds %struct.rmi_data, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %device_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %device_flags.i, align 4
  %and.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %20, align 1
  %call1.i = call i32 @hid_hw_raw_request(ptr noundef %1, i8 noundef zeroext %28, ptr noundef %20, i32 noundef %22, i8 noundef zeroext 1, i32 noundef 9) #7
  br label %if.end.i

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = call i32 @hid_hw_output_report(ptr noundef %1, ptr noundef %20, i32 noundef %22) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.rmi_write_report.exit_crit_edge

if.end.i.rmi_write_report.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_write_report.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.33, i32 noundef %ret.0.i) #10
  br label %rmi_write_report.exit

rmi_write_report.exit:                            ; preds = %do.end.i, %if.end.i.rmi_write_report.exit_crit_edge
  %29 = ptrtoint ptr %output_report_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %output_report_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.i, i32 %30)
  %cmp38.not = icmp eq i32 %ret.0.i, %30
  br i1 %cmp38.not, label %while.cond.preheader, label %do.end

while.cond.preheader:                             ; preds = %rmi_write_report.exit
  br i1 %cmp42190.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end:                                           ; preds = %rmi_write_report.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %ret.0.i) #10
  br label %exit

while.body:                                       ; preds = %if.end101.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %bytes_read.0192 = phi i32 [ %add, %if.end101.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %bytes_needed.0191 = phi i32 [ %sub, %if.end101.while.body_crit_edge ], [ %len, %while.cond.preheader.while.body_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 231) #7
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags, align 4
  %33 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  br i1 %tobool.not, label %if.then63, label %while.body.if.end101_crit_edge

while.body.if.end101_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then63:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %34 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call67185 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool71.not186.not = icmp eq i32 %37, 0
  br i1 %tobool71.not186.not, label %if.then63.cleanup_crit_edge, label %if.end93.thread

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  br label %cleanup

if.end93.thread:                                  ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end101

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then63.cleanup_crit_edge
  %__ret64.1188 = phi i32 [ %__ret64.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then63.cleanup_crit_edge ]
  %call90 = call i32 @schedule_timeout(i32 noundef %__ret64.1188) #7
  %call67 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags, align 4
  %40 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool71.not = icmp eq i32 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool76.not = icmp eq i32 %call90, 0
  %spec.store.select124 = select i1 %tobool76.not, i32 1, i32 %call90
  %__ret64.1 = select i1 %tobool71.not, i32 %call90, i32 %spec.store.select124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret64.1)
  %tobool83.not = icmp eq i32 %__ret64.1, 0
  %not.tobool71.not = xor i1 %tobool71.not, true
  %41 = select i1 %not.tobool71.not, i1 true, i1 %tobool83.not
  br i1 %41, label %if.end93, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end93:                                         ; preds = %cleanup
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret64.1)
  %tobool95.not = icmp eq i32 %__ret64.1, 0
  br i1 %tobool95.not, label %while.end.thread, label %if.end93.if.end101_crit_edge

if.end93.if.end101_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

while.end.thread:                                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35) #10
  br label %for.inc

if.end101:                                        ; preds = %if.end93.if.end101_crit_edge, %if.end93.thread, %while.body.if.end101_crit_edge
  %42 = ptrtoint ptr %readReport to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %readReport, align 4
  %arrayidx102 = getelementptr i8, ptr %43, i32 1
  %44 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %45 to i32
  %add.ptr104 = getelementptr i8, ptr %buf, i32 %bytes_read.0192
  %arrayidx106 = getelementptr i8, ptr %43, i32 2
  %46 = call i32 @llvm.smin.i32(i32 %bytes_needed.0191, i32 %conv103)
  %47 = call ptr @memcpy(ptr %add.ptr104, ptr %arrayidx106, i32 %46)
  %add = add i32 %bytes_read.0192, %conv103
  %sub = sub i32 %bytes_needed.0191, %conv103
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #7
  %cmp42 = icmp ult i32 %add, %len
  br i1 %cmp42, label %if.end101.while.body_crit_edge, label %if.end101.while.end_crit_edge

if.end101.while.end_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end101.while.body_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end101.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0.i)
  %cmp110 = icmp sgt i32 %ret.0.i, -1
  br i1 %cmp110, label %while.end.exit_crit_edge, label %while.end.for.inc_crit_edge

while.end.for.inc_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

while.end.exit_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

for.inc:                                          ; preds = %while.end.for.inc_crit_edge, %while.end.thread
  %ret.2184 = phi i32 [ -11, %while.end.thread ], [ %ret.0.i, %while.end.for.inc_crit_edge ]
  %dec = add nsw i32 %retries.0193, -1
  %cmp11.not = icmp eq i32 %dec, 0
  br i1 %cmp11.not, label %for.inc.exit_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.exit_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

exit:                                             ; preds = %for.inc.exit_crit_edge, %while.end.exit_crit_edge, %do.end, %if.then.exit_crit_edge
  %ret.3 = phi i32 [ %call, %if.then.exit_crit_edge ], [ %ret.0.i, %do.end ], [ 0, %while.end.exit_crit_edge ], [ %ret.2184, %for.inc.exit_crit_edge ]
  %flags115 = getelementptr i8, ptr %xport, i32 200
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags115) #7
  call void @mutex_unlock(ptr noundef %add.ptr) #7
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_hid_reset(ptr nocapture noundef readonly %xport, i16 noundef zeroext %reset_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdev1 = getelementptr i8, ptr %xport, i32 248
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev1, align 4
  %call = tail call fastcc i32 @rmi_reset_attn_mode(ptr noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rmi_set_page(ptr noundef %hdev, i8 noundef zeroext %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %writeReport = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %writeReport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %writeReport, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %3, align 1
  %5 = load ptr, ptr %writeReport, align 4
  %arrayidx3 = getelementptr i8, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx3, align 1
  %7 = load ptr, ptr %writeReport, align 4
  %arrayidx5 = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %arrayidx5, align 1
  %9 = load ptr, ptr %writeReport, align 4
  %arrayidx7 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %page, ptr %arrayidx7, align 1
  %11 = load ptr, ptr %writeReport, align 4
  %output_report_size = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %output_report_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %output_report_size, align 4
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %device_flags.i = getelementptr inbounds %struct.rmi_data, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %device_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %device_flags.i, align 4
  %and.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %11, align 1
  %call1.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %18, ptr noundef %11, i32 noundef %13, i8 noundef zeroext 1, i32 noundef 9) #7
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @hid_hw_output_report(ptr noundef %hdev, ptr noundef %11, i32 noundef %13) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call2.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.rmi_write_report.exit_crit_edge

if.end.i.rmi_write_report.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rmi_write_report.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.33, i32 noundef %ret.0.i) #10
  br label %rmi_write_report.exit

rmi_write_report.exit:                            ; preds = %do.end.i, %if.end.i.rmi_write_report.exit_crit_edge
  %19 = ptrtoint ptr %output_report_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %output_report_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.i, i32 %20)
  %cmp.not = icmp eq i32 %ret.0.i, %20
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %rmi_write_report.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %ret.0.i) #10
  br label %cleanup

if.end:                                           ; preds = %rmi_write_report.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %page to i32
  %page11 = getelementptr inbounds %struct.rmi_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %page11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %page11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %ret.0.i, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_unregister_transport_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_set_attn_data(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_register_transport_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_driver_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_driver_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !51, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__initcall__kmod_hid_rmi__237_784_rmi_driver_init6, !1, !"__initcall__kmod_hid_rmi__237_784_rmi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-rmi.c", i32 784, i32 1}
!2 = !{ptr @__exitcall_rmi_driver_exit, !1, !"__exitcall_rmi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author238, !4, !"__UNIQUE_ID_author238", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-rmi.c", i32 786, i32 1}
!5 = !{ptr @__UNIQUE_ID_description239, !6, !"__UNIQUE_ID_description239", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-rmi.c", i32 787, i32 1}
!7 = !{ptr @__UNIQUE_ID_file240, !8, !"__UNIQUE_ID_file240", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-rmi.c", i32 788, i32 1}
!9 = !{ptr @__UNIQUE_ID_license241, !8, !"__UNIQUE_ID_license241", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-rmi.c", i32 768, i32 10}
!13 = !{ptr @rmi_driver, !14, !"rmi_driver", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-rmi.c", i32 767, i32 26}
!15 = !{ptr @rmi_id, !16, !"rmi_id", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-rmi.c", i32 755, i32 35}
!17 = !{ptr @rmi_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-rmi.c", i32 657, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hid/hid-rmi.c", i32 667, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rmi_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @rmi_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-rmi.c", i32 680, i32 3}
!30 = !{ptr @rmi_probe.__UNIQUE_ID_ddebug234, !29, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hid/hid-rmi.c", i32 686, i32 3}
!33 = !{ptr @rmi_probe.__UNIQUE_ID_ddebug235, !32, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-rmi.c", i32 694, i32 3}
!36 = !{ptr @rmi_probe.__UNIQUE_ID_ddebug236, !35, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hid/hid-rmi.c", i32 706, i32 3}
!39 = !{ptr @rmi_probe._entry.11, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rmi_probe._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @rmi_probe.__key.14, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/hid/hid-rmi.c", i32 712, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rmi_probe.__key.16, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-rmi.c", i32 714, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hid/hid-rmi.c", i32 718, i32 3}
!49 = !{ptr @rmi_probe._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @rmi_probe._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-rmi.c", i32 728, i32 27}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-rmi.c", i32 734, i32 3}
!55 = !{ptr @rmi_probe._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rmi_probe._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hid/hid-rmi.c", i32 157, i32 3}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rmi_set_mode._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @rmi_set_mode._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-rmi.c", i32 637, i32 3}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rmi_setup_irq_domain._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @rmi_setup_irq_domain._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @rmi_irq_ops, !68, !"rmi_irq_ops", i1 false, i1 false}
!68 = !{!"../drivers/hid/hid-rmi.c", i32 617, i32 36}
!69 = !{ptr @rmi_hid_pdata, !70, !"rmi_hid_pdata", i1 false, i1 false}
!70 = !{!"../drivers/hid/hid-rmi.c", i32 579, i32 40}
!71 = !{ptr @hid_rmi_ops, !72, !"hid_rmi_ops", i1 false, i1 false}
!72 = !{!"../drivers/hid/hid-rmi.c", i32 588, i32 39}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hid/hid-rmi.c", i32 284, i32 3}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @rmi_hid_write_block._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @rmi_hid_write_block._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hid/hid-rmi.c", i32 134, i32 3}
!80 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @rmi_set_page._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @rmi_set_page._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hid/hid-rmi.c", i32 181, i32 3}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rmi_write_report._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @rmi_write_report._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hid/hid-rmi.c", i32 220, i32 4}
!90 = !{ptr @rmi_hid_read_block._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @rmi_hid_read_block._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hid/hid-rmi.c", i32 232, i32 5}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @rmi_hid_read_block._entry.36, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @rmi_hid_read_block._entry_ptr.39, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hid/hid-rmi.c", i32 346, i32 3}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @rmi_read_data_event.__UNIQUE_ID_ddebug232, !98, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hid/hid-rmi.c", i32 507, i32 2}
!103 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rmi_input_configured.__UNIQUE_ID_ddebug233, !102, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hid/hid-rmi.c", i32 517, i32 3}
!107 = !{ptr @rmi_input_configured._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @rmi_input_configured._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hid/hid-rmi.c", i32 523, i32 3}
!111 = !{ptr @rmi_input_configured._entry.45, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @rmi_input_configured._entry_ptr.47, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hid/hid-rmi.c", i32 529, i32 3}
!115 = !{ptr @rmi_input_configured._entry.48, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @rmi_input_configured._entry_ptr.50, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../include/linux/hid.h", i32 963, i32 3}
!119 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @hid_device_io_start._entry, !118, !"_entry", i1 false, i1 false}
!122 = !{ptr @hid_device_io_start._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/hid.h", i32 983, i32 3}
!125 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @hid_device_io_stop._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @hid_device_io_stop._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hid/hid-rmi.c", i32 451, i32 3}
!130 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @rmi_suspend._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @rmi_suspend._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hid/hid-rmi.c", i32 478, i32 3}
!135 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @rmi_post_resume._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @rmi_post_resume._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{i64 2148708930, i64 2148708935, i64 2148708948, i64 2148708992, i64 2148709026, i64 2148709047}
!148 = !{!"auto-init"}
!149 = !{i64 619596, i64 619657}
!150 = !{i64 622328}
!151 = !{!"branch_weights", i32 1, i32 2000}
!152 = !{i64 622613}
!153 = !{i8 0, i8 2}
