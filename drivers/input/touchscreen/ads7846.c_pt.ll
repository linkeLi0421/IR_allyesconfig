; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/ads7846.c_pt.bc'
source_filename = "../drivers/input/touchscreen/ads7846.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.list_head = type { ptr, ptr }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.ads7846 = type { ptr, [32 x i8], [32 x i8], ptr, ptr, i16, i16, i16, i16, i16, i8, i8, ptr, [18 x %struct.spi_transfer], [5 x %struct.spi_message], i32, %struct.wait_queue_head, i8, i32, i32, i32, i16, i16, i16, i16, %struct.touchscreen_properties, %struct.mutex, i8, i8, i8, ptr, ptr, ptr, i32, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.ads7846_platform_data = type { i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, ptr, ptr, i8, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.ads7846_packet = type { i32, i32, i32, i32, [5 x %struct.ads7846_buf_layout], ptr, ptr, %struct.ads7846_buf, i8, i16, i16, i16, i16 }
%struct.ads7846_buf_layout = type { i32, i32, i32 }
%struct.ads7846_buf = type <{ i8, i16 }>
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ads7845_ser_req = type { [3 x i8], %struct.spi_message, [2 x %struct.spi_transfer], [4 x i8], [3 x i8], [125 x i8] }
%struct.ser_req = type { i8, i8, i8, i16, %struct.spi_message, [6 x %struct.spi_transfer], i16, [126 x i8] }

@__initcall__kmod_ads7846__293_1433_ads7846_driver_init6 = internal global ptr @ads7846_driver_init, section ".initcall6.init", align 4
@ads7846_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ads7846_probe, ptr @ads7846_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ads7846_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ads7846_pm, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ads7846_driver_exit = internal global ptr @ads7846_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [47 x i8] c"ads7846.description=ADS7846 TouchScreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [47 x i8] c"ads7846.file=drivers/input/touchscreen/ads7846\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [20 x i8] c"ads7846.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [26 x i8] c"ads7846.alias=spi:ads7846\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ads7846\00", [24 x i8] zeroinitializer }, align 32
@ads7846_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tsc2046\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7846 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7843\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7843 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7845\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7845 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7846\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7846 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ads7873\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7873 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@ads7846_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ads7846_suspend, ptr @ads7846_resume, ptr @ads7846_suspend, ptr @ads7846_resume, ptr @ads7846_suspend, ptr @ads7846_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ads7846_probe.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ads7846_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/touchscreen/ads7846.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no IRQ?\0A\00", [23 x i8] zeroinitializer }, align 32
@ads7846_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"f(sample) %d KHz?\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ads7846_probe._entry_ptr = internal global ptr @ads7846_probe._entry, section ".printk_index", align 4
@ads7846_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ts->lock\00", [22 x i8] zeroinitializer }, align 32
@ads7846_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ts->wait\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADS%d Touchscreen\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@ads7846_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 1344, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to get regulator: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ads7846_probe._entry_ptr.15 = internal global ptr @ads7846_probe._entry.13, section ".printk_index", align 4
@ads7846_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 1350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ads7846_probe._entry_ptr.18 = internal global ptr @ads7846_probe._entry.16, section ".printk_index", align 4
@ads7846_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 1366, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"trying pin change workaround on irq %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ads7846_probe._entry_ptr.22 = internal global ptr @ads7846_probe._entry.19, section ".printk_index", align 4
@ads7846_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.23, i8 1, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irq %d busy?\0A\00", [18 x i8] zeroinitializer }, align 32
@ads7846_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 1383, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"touchscreen, irq %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ads7846_probe._entry_ptr.26 = internal global ptr @ads7846_probe._entry.24, section ".printk_index", align 4
@ads784x_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ads784x_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ads7846_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1138, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Device does not have associated DT data\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ads7846_probe_dt\00", [47 x i8] zeroinitializer }, align 32
@ads7846_probe_dt._entry_ptr = internal global ptr @ads7846_probe_dt._entry, section ".printk_index", align 4
@ads7846_probe_dt._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 1144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown device model\0A\00", [42 x i8] zeroinitializer }, align 32
@ads7846_probe_dt._entry_ptr.31 = internal global ptr @ads7846_probe_dt._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,vref-delay-usecs\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,vref-mv\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,keep-vref-on\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,swap-xy\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti,settle-delay-usec\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ti,penirq-recheck-delay-usecs\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,x-plate-ohms\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,y-plate-ohms\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,x-min\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,y-min\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,x-max\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,y-max\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,pressure-min\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"touchscreen-min-pressure\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,pressure-max\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,debounce-max\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"touchscreen-average-samples\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,debounce-tol\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,debounce-rep\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,pendown-gpio-debounce\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"linux,wakeup\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pendown-gpio\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ads7846_pendown\00", [16 x i8] zeroinitializer }, align 32
@ads7846_setup_pendown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 1014, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to request/setup pendown GPIO%d: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ads7846_setup_pendown\00", [42 x i8] zeroinitializer }, align 32
@ads7846_setup_pendown._entry_ptr = internal global ptr @ads7846_setup_pendown._entry, section ".printk_index", align 4
@ads7846_setup_pendown._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 1024, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no get_pendown_state nor gpio_pendown?\0A\00", [56 x i8] zeroinitializer }, align 32
@ads7846_setup_pendown._entry_ptr.60 = internal global ptr @ads7846_setup_pendown._entry.58, section ".printk_index", align 4
@ads7846_cmd_need_settle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ads7846_get_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ads7846_read_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 813, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_sync --> %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ads7846_read_state\00", [45 x i8] zeroinitializer }, align 32
@ads7846_read_state._entry_ptr = internal global ptr @ads7846_read_state._entry, section ".printk_index", align 4
@ads7846_set_cmd_val.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ads784x_hwmon_register.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ads784x_hwmon_register\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"assuming 2.5V internal vREF\0A\00", [35 x i8] zeroinitializer }, align 32
@ads784x_hwmon_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 569, ptr @.str.66, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"external vREF for ADS%d not specified\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ads784x_hwmon_register._entry_ptr = internal global ptr @ads784x_hwmon_register._entry, section ".printk_index", align 4
@ads7846_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ads7846_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ads7846_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @ads7846_is_visible, ptr null, ptr @ads7846_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ads7846_attributes = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_temp0, ptr @dev_attr_temp1, ptr @dev_attr_in0_input, ptr @dev_attr_in1_input, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_temp0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp0_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_in0_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in0_input_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_in1_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in1_input_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"temp0\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"temp1\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ads784x_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_pen_down, ptr @dev_attr_disable, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_pen_down = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ads7846_pen_down_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_disable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ads7846_disable_show, ptr @ads7846_disable_store }, [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pen_down\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@__ads7846_enable._entry = internal constant %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 286, ptr @.str.5, ptr @.str.6 }, align 1
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable supply: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__ads7846_enable\00", [47 x i8] zeroinitializer }, align 32
@__ads7846_enable._entry_ptr = internal global ptr @__ads7846_enable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.76 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 16, i64 7843, i64 7845, i64 7846]
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"ads7846_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1423, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1425, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"ads7846_dt_ids\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1120, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [11 x i8] c"ads7846_pm\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 991, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1223, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1229, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1264, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1265, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1301, i32 39 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1302, i32 39 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1341, i32 36 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1344, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1350, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1365, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1375, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1383, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"ads784x_attr_group\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 636, i32 37 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1138, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1144, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1154, i32 29 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1156, i32 29 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1157, i32 52 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1159, i32 47 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1161, i32 29 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1163, i32 29 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1166, i32 29 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1167, i32 29 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1169, i32 29 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1170, i32 29 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1171, i32 29 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1172, i32 29 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1178, i32 29 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1179, i32 34 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1181, i32 29 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1183, i32 29 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1184, i32 34 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1186, i32 29 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1187, i32 29 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1189, i32 29 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1192, i32 46 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1193, i32 32 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1195, i32 56 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1010, i32 20 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1012, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1024, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 813, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 559, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 567, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant [20 x i8] c"ads7846_attr_groups\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 549, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant [19 x i8] c"ads7846_attr_group\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 545, i32 37 }
@___asan_gen_.300 = private unnamed_addr constant [19 x i8] c"ads7846_attributes\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 537, i32 26 }
@___asan_gen_.303 = private unnamed_addr constant [15 x i8] c"dev_attr_temp0\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [15 x i8] c"dev_attr_temp1\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [19 x i8] c"dev_attr_in0_input\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [19 x i8] c"dev_attr_in1_input\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 490, i32 1 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 491, i32 1 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 520, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 521, i32 1 }
@___asan_gen_.330 = private unnamed_addr constant [19 x i8] c"ads784x_attributes\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 630, i32 26 }
@___asan_gen_.333 = private unnamed_addr constant [18 x i8] c"dev_attr_pen_down\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"dev_attr_disable\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 598, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 628, i32 8 }
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.349 = private constant [39 x i8] c"../drivers/input/touchscreen/ads7846.c\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 286, i32 3 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__ads7846_enable._entry, ptr @__ads7846_enable._entry_ptr, ptr @__exitcall_ads7846_driver_exit, ptr @__initcall__kmod_ads7846__293_1433_ads7846_driver_init6, ptr @ads7846_driver_exit, ptr @ads7846_probe._entry, ptr @ads7846_probe._entry.13, ptr @ads7846_probe._entry.16, ptr @ads7846_probe._entry.19, ptr @ads7846_probe._entry.24, ptr @ads7846_probe._entry_ptr, ptr @ads7846_probe._entry_ptr.15, ptr @ads7846_probe._entry_ptr.18, ptr @ads7846_probe._entry_ptr.22, ptr @ads7846_probe._entry_ptr.26, ptr @ads7846_probe_dt._entry, ptr @ads7846_probe_dt._entry.29, ptr @ads7846_probe_dt._entry_ptr, ptr @ads7846_probe_dt._entry_ptr.31, ptr @ads7846_read_state._entry, ptr @ads7846_read_state._entry_ptr, ptr @ads7846_setup_pendown._entry, ptr @ads7846_setup_pendown._entry.58, ptr @ads7846_setup_pendown._entry_ptr, ptr @ads7846_setup_pendown._entry_ptr.60, ptr @ads784x_hwmon_register._entry, ptr @ads784x_hwmon_register._entry_ptr, ptr @ads7846_driver, ptr @.str, ptr @ads7846_dt_ids, ptr @ads7846_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ads7846_probe.__key, ptr @.str.7, ptr @ads7846_probe.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @ads784x_attr_group, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @ads7846_attr_groups, ptr @ads7846_attr_group, ptr @ads7846_attributes, ptr @dev_attr_temp0, ptr @dev_attr_temp1, ptr @dev_attr_in0_input, ptr @dev_attr_in1_input, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @ads784x_attributes, ptr @dev_attr_pen_down, ptr @dev_attr_disable, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads784x_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_probe_dt._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_setup_pendown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_setup_pendown._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_read_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads784x_hwmon_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads7846_attributes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in0_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in1_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads784x_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pen_down to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_disable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ads7846_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ads7846_driver) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ads7846_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ads7846_driver, i32 0, i32 4)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads7846_probe(ptr noundef %spi) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ads7846_probe.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ads7846_probe, %if.then5)) #12
          to label %cleanup [label %if.then5], !srcloc !190

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ads7846_probe.__UNIQUE_ID_ddebug291, ptr noundef %spi, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %2 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3250000, i32 %3)
  %cmp = icmp ugt i32 %3, 3250000
  br i1 %cmp, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %div12 = udiv i32 %3, 26000
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.4, i32 noundef %div12) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %4 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %bits_per_word, align 1
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 8
  %and = and i32 %6, -4
  store i32 %and, ptr %mode, align 8
  %call15 = tail call i32 @spi_setup(ptr noundef %spi) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 2308, i32 noundef 3520) #12
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call.i436 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 96, i32 noundef 3520) #12
  %tobool24.not = icmp eq ptr %call.i436, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call27 = tail call ptr @devm_input_allocate_device(ptr noundef %spi) #12
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %packet31 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 12
  %8 = ptrtoint ptr %packet31 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i436, ptr %packet31, align 4
  %spi32 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %spi32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spi, ptr %spi32, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call27, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 26
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @ads7846_probe.__key) #12
  %wait = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.9, ptr noundef nonnull @ads7846_probe.__key.8) #12
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %11 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platform_data.i, align 8
  %tobool40.not = icmp eq ptr %12, null
  br i1 %tobool40.not, label %if.then41, label %if.end30.if.end47_crit_edge

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then41:                                        ; preds = %if.end30
  %of_node.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %13 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #12
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %value.i, align 4, !annotation !191
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then41.ads7846_probe_dt.exit.thread.sink.split_crit_edge, label %if.end.i

if.then41.ads7846_probe_dt.exit.thread.sink.split_crit_edge: ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_probe_dt.exit.thread.sink.split

if.end.i:                                         ; preds = %if.then41
  %call1.i = tail call ptr @of_match_device(ptr noundef nonnull @ads7846_dt_ids, ptr noundef %spi) #12
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.ads7846_probe_dt.exit.thread.sink.split_crit_edge, label %if.end8.i

if.end.i.ads7846_probe_dt.exit.thread.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_probe_dt.exit.thread.sink.split

if.end8.i:                                        ; preds = %if.end.i
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 60, i32 noundef 3520) #12
  %tobool10.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not.i, label %if.end8.i.ads7846_probe_dt.exit.thread_crit_edge, label %if.end13.i

if.end8.i.ads7846_probe_dt.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_probe_dt.exit.thread

if.end13.i:                                       ; preds = %if.end8.i
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call1.i, i32 0, i32 3
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %conv.i = trunc i32 %18 to i16
  %19 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %call.i.i, align 4
  %vref_delay_usecs.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 1
  %call.i.i.i = tail call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.32, ptr noundef %vref_delay_usecs.i, i32 noundef 1, i32 noundef 0) #12
  %vref_mv.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 2
  %call.i.i107.i = tail call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.33, ptr noundef %vref_mv.i, i32 noundef 1, i32 noundef 0) #12
  %call.i108.i = tail call ptr @of_find_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.34, ptr noundef null) #12
  %tobool.i.i = icmp ne ptr %call.i108.i, null
  %keep_vref_on.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 3
  %frombool.i = zext i1 %tobool.i.i to i8
  %20 = ptrtoint ptr %keep_vref_on.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool.i, ptr %keep_vref_on.i, align 2
  %call.i109.i = tail call ptr @of_find_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.35, ptr noundef null) #12
  %tobool.i110.i = icmp ne ptr %call.i109.i, null
  %swap_xy.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 4
  %frombool18.i = zext i1 %tobool.i110.i to i8
  %21 = ptrtoint ptr %swap_xy.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool18.i, ptr %swap_xy.i, align 1
  %settle_delay_usecs.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 5
  %call.i.i111.i = tail call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.36, ptr noundef %settle_delay_usecs.i, i32 noundef 1, i32 noundef 0) #12
  %penirq_recheck_delay_usecs.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 6
  %call.i.i112.i = tail call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.37, ptr noundef %penirq_recheck_delay_usecs.i, i32 noundef 1, i32 noundef 0) #12
  %x_plate_ohms.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 7
  %call.i.i113.i = tail call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.38, ptr noundef %x_plate_ohms.i, i32 noundef 1, i32 noundef 0) #12
  %y_plate_ohms.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 8
  %call.i.i114.i = tail call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.39, ptr noundef %y_plate_ohms.i, i32 noundef 1, i32 noundef 0) #12
  %x_min.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 9
  %call.i.i115.i = tail call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.40, ptr noundef %x_min.i, i32 noundef 1, i32 noundef 0) #12
  %y_min.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 11
  %call.i.i116.i = tail call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.41, ptr noundef %y_min.i, i32 noundef 1, i32 noundef 0) #12
  %x_max.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 10
  %call.i.i117.i = tail call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.42, ptr noundef %x_max.i, i32 noundef 1, i32 noundef 0) #12
  %y_max.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 12
  %call.i.i118.i = tail call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.43, ptr noundef %y_max.i, i32 noundef 1, i32 noundef 0) #12
  %pressure_min.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 13
  %call.i.i119.i = tail call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.44, ptr noundef %pressure_min.i, i32 noundef 1, i32 noundef 0) #12
  %call.i.i120.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.45, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i120.i)
  %tobool29.not.i = icmp sgt i32 %call.i.i120.i, -1
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end13.i.if.end33.i_crit_edge

if.end13.i.if.end33.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value.i, align 4
  %conv31.i = trunc i32 %23 to i16
  %24 = ptrtoint ptr %pressure_min.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv31.i, ptr %pressure_min.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %if.end13.i.if.end33.i_crit_edge
  %pressure_max.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 14
  %call.i.i121.i = call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.46, ptr noundef %pressure_max.i, i32 noundef 1, i32 noundef 0) #12
  %debounce_max.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 15
  %call.i.i122.i = call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.47, ptr noundef %debounce_max.i, i32 noundef 1, i32 noundef 0) #12
  %call.i.i123.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.48, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i123.i)
  %tobool37.not.i = icmp sgt i32 %call.i.i123.i, -1
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end33.i.if.end41.i_crit_edge

if.end33.i.if.end41.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.then38.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value.i, align 4
  %conv39.i = trunc i32 %26 to i16
  %27 = ptrtoint ptr %debounce_max.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv39.i, ptr %debounce_max.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then38.i, %if.end33.i.if.end41.i_crit_edge
  %debounce_tol.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 16
  %call.i.i124.i = call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.49, ptr noundef %debounce_tol.i, i32 noundef 1, i32 noundef 0) #12
  %debounce_rep.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 17
  %call.i.i125.i = call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.50, ptr noundef %debounce_rep.i, i32 noundef 1, i32 noundef 0) #12
  %gpio_pendown_debounce.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 19
  %call.i.i126.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str.51, ptr noundef %gpio_pendown_debounce.i, i32 noundef 1, i32 noundef 0) #12
  %call.i127.i = call ptr @of_find_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.52, ptr noundef null) #12
  %tobool.i128.not.i = icmp eq ptr %call.i127.i, null
  br i1 %tobool.i128.not.i, label %lor.rhs.i, label %if.end41.i.ads7846_probe_dt.exit_crit_edge

if.end41.i.ads7846_probe_dt.exit_crit_edge:       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_probe_dt.exit

lor.rhs.i:                                        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i129.i = call ptr @of_find_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.53, ptr noundef null) #12
  %tobool.i130.i = icmp ne ptr %call.i129.i, null
  br label %ads7846_probe_dt.exit

ads7846_probe_dt.exit.thread.sink.split:          ; preds = %if.end.i.ads7846_probe_dt.exit.thread.sink.split_crit_edge, %if.then41.ads7846_probe_dt.exit.thread.sink.split_crit_edge
  %.str.30.sink = phi ptr [ @.str.27, %if.then41.ads7846_probe_dt.exit.thread.sink.split_crit_edge ], [ @.str.30, %if.end.i.ads7846_probe_dt.exit.thread.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull %.str.30.sink) #15
  br label %ads7846_probe_dt.exit.thread

ads7846_probe_dt.exit.thread:                     ; preds = %ads7846_probe_dt.exit.thread.sink.split, %if.end8.i.ads7846_probe_dt.exit.thread_crit_edge
  %retval.0.i437.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end8.i.ads7846_probe_dt.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %ads7846_probe_dt.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #12
  br label %if.then44

ads7846_probe_dt.exit:                            ; preds = %lor.rhs.i, %if.end41.i.ads7846_probe_dt.exit_crit_edge
  %28 = phi i1 [ true, %if.end41.i.ads7846_probe_dt.exit_crit_edge ], [ %tobool.i130.i, %lor.rhs.i ]
  %wakeup.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 22
  %frombool49.i = zext i1 %28 to i8
  %29 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool49.i, ptr %wakeup.i, align 4
  %30 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node.i, align 8
  %call.i131.i = call i32 @of_get_named_gpio_flags(ptr noundef %31, ptr noundef nonnull @.str.54, i32 noundef 0, ptr noundef null) #12
  %gpio_pendown.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %call.i.i, i32 0, i32 18
  %32 = ptrtoint ptr %gpio_pendown.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i131.i, ptr %gpio_pendown.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #12
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ads7846_probe_dt.exit.if.then44_crit_edge, label %ads7846_probe_dt.exit.if.end47_crit_edge

ads7846_probe_dt.exit.if.end47_crit_edge:         ; preds = %ads7846_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

ads7846_probe_dt.exit.if.then44_crit_edge:        ; preds = %ads7846_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then44

if.then44:                                        ; preds = %ads7846_probe_dt.exit.if.then44_crit_edge, %ads7846_probe_dt.exit.thread
  %retval.0.i437468 = phi ptr [ %retval.0.i437.ph, %ads7846_probe_dt.exit.thread ], [ %call.i.i, %ads7846_probe_dt.exit.if.then44_crit_edge ]
  %33 = ptrtoint ptr %retval.0.i437468 to i32
  br label %cleanup

if.end47:                                         ; preds = %ads7846_probe_dt.exit.if.end47_crit_edge, %if.end30.if.end47_crit_edge
  %pdata.0 = phi ptr [ %12, %if.end30.if.end47_crit_edge ], [ %call.i.i, %ads7846_probe_dt.exit.if.end47_crit_edge ]
  %34 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pdata.0, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool48.not = icmp eq i16 %35, 0
  %narrow = select i1 %tobool48.not, i16 7846, i16 %35
  %model50 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %model50 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %narrow, ptr %model50, align 4
  %vref_delay_usecs = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 1
  %37 = ptrtoint ptr %vref_delay_usecs to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vref_delay_usecs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool52.not = icmp eq i16 %38, 0
  %narrow429 = select i1 %tobool52.not, i16 100, i16 %38
  %vref_delay_usecs58 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 7
  %39 = ptrtoint ptr %vref_delay_usecs58 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %narrow429, ptr %vref_delay_usecs58, align 4
  %x_plate_ohms = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 7
  %40 = ptrtoint ptr %x_plate_ohms to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %x_plate_ohms, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool60.not = icmp eq i16 %41, 0
  %narrow430 = select i1 %tobool60.not, i16 400, i16 %41
  %x_plate_ohms66 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 8
  %42 = ptrtoint ptr %x_plate_ohms66 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %narrow430, ptr %x_plate_ohms66, align 2
  %vref_mv = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 2
  %43 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vref_mv, align 4
  %vref_mv67 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 6
  %45 = ptrtoint ptr %vref_mv67 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %vref_mv67, align 2
  %debounce_max = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 15
  %46 = ptrtoint ptr %debounce_max to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %debounce_max, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool68.not = icmp eq i16 %47, 0
  br i1 %tobool68.not, label %if.end47.if.end82_crit_edge, label %if.then69

if.end47.if.end82_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then69:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  %debounce_max71 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %47)
  %cmp74 = icmp eq i16 %47, 1
  %spec.select = select i1 %cmp74, i16 2, i16 %47
  %48 = ptrtoint ptr %debounce_max71 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %spec.select, ptr %debounce_max71, align 4
  %debounce_tol = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 16
  %49 = ptrtoint ptr %debounce_tol to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %debounce_tol, align 2
  %debounce_tol79 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 22
  %51 = ptrtoint ptr %debounce_tol79 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %debounce_tol79, align 2
  %debounce_rep = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 17
  %52 = ptrtoint ptr %debounce_rep to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %debounce_rep, align 4
  %debounce_rep80 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 23
  %54 = ptrtoint ptr %debounce_rep80 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %debounce_rep80, align 4
  %filter_data = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 31
  %55 = ptrtoint ptr %filter_data to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i, ptr %filter_data, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then69, %if.end47.if.end82_crit_edge
  %ads7846_debounce_filter.sink = phi ptr [ @ads7846_debounce_filter, %if.then69 ], [ @ads7846_no_filter, %if.end47.if.end82_crit_edge ]
  %56 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 30
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %ads7846_debounce_filter.sink, ptr %56, align 4
  %get_pendown_state.i = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 20
  %58 = ptrtoint ptr %get_pendown_state.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %get_pendown_state.i, align 4
  %tobool.not.i438 = icmp eq ptr %59, null
  br i1 %tobool.not.i438, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  %get_pendown_state2.i = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 32
  %60 = ptrtoint ptr %get_pendown_state2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %get_pendown_state2.i, align 4
  br label %if.end86

if.else.i:                                        ; preds = %if.end82
  %gpio_pendown.i439 = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 18
  %61 = ptrtoint ptr %gpio_pendown.i439 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %gpio_pendown.i439, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %62)
  %63 = icmp ult i32 %62, 2048
  br i1 %63, label %if.then3.i, label %do.end21.i

if.then3.i:                                       ; preds = %if.else.i
  %call5.i = call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %62, i32 noundef 1, ptr noundef nonnull @.str.55) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  %64 = ptrtoint ptr %gpio_pendown.i439 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %gpio_pendown.i439, align 4
  br i1 %tobool6.not.i, label %if.end.i442, label %do.end.i440

do.end.i440:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.56, i32 noundef %65, i32 noundef %call5.i) #15
  br label %cleanup

if.end.i442:                                      ; preds = %if.then3.i
  %gpio_pendown11.i = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 33
  %66 = ptrtoint ptr %gpio_pendown11.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %gpio_pendown11.i, align 4
  %gpio_pendown_debounce.i441 = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 19
  %67 = ptrtoint ptr %gpio_pendown_debounce.i441 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %gpio_pendown_debounce.i441, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool12.not.i = icmp eq i32 %68, 0
  br i1 %tobool12.not.i, label %if.end.i442.if.end86_crit_edge, label %if.then13.i

if.end.i442.if.end86_crit_edge:                   ; preds = %if.end.i442
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then13.i:                                      ; preds = %if.end.i442
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %gpio_pendown.i439 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %gpio_pendown.i439, align 4
  %call.i.i443 = call ptr @gpio_to_desc(i32 noundef %70) #12
  %call1.i.i = call i32 @gpiod_set_debounce(ptr noundef %call.i.i443, i32 noundef %68) #12
  br label %if.end86

do.end21.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.59) #15
  br label %cleanup

if.end86:                                         ; preds = %if.then13.i, %if.end.i442.if.end86_crit_edge, %if.then.i
  %penirq_recheck_delay_usecs = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 6
  %71 = ptrtoint ptr %penirq_recheck_delay_usecs to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %penirq_recheck_delay_usecs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool87.not = icmp eq i16 %72, 0
  br i1 %tobool87.not, label %if.end86.if.end91_crit_edge, label %if.then88

if.end86.if.end91_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  %penirq_recheck_delay_usecs90 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 24
  %73 = ptrtoint ptr %penirq_recheck_delay_usecs90 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %penirq_recheck_delay_usecs90, align 2
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end86.if.end91_crit_edge
  %wait_for_sync = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 21
  %74 = ptrtoint ptr %wait_for_sync to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %wait_for_sync, align 4
  %tobool92.not = icmp eq ptr %75, null
  %.null_wait_for_sync = select i1 %tobool92.not, ptr @null_wait_for_sync, ptr %75
  %wait_for_sync97 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 34
  %76 = ptrtoint ptr %wait_for_sync97 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %.null_wait_for_sync, ptr %wait_for_sync97, align 4
  %phys = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %77 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i445 = icmp eq ptr %78, null
  br i1 %tobool.not.i445, label %if.end.i446, label %if.end91.dev_name.exit_crit_edge

if.end91.dev_name.exit_crit_edge:                 ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i446:                                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i446, %if.end91.dev_name.exit_crit_edge
  %retval.0.i447 = phi ptr [ %80, %if.end.i446 ], [ %78, %if.end91.dev_name.exit_crit_edge ]
  %call99 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i447)
  %name = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 2
  %81 = ptrtoint ptr %model50 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %model50, align 4
  %conv102 = zext i16 %82 to i32
  %call103 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %conv102)
  %83 = ptrtoint ptr %call27 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %name, ptr %call27, align 8
  %phys109 = getelementptr inbounds %struct.input_dev, ptr %call27, i32 0, i32 1
  %84 = ptrtoint ptr %phys109 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %phys, ptr %phys109, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call27, i32 0, i32 3
  %85 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 28, ptr %id, align 4
  %86 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %pdata.0, align 4
  %product = getelementptr inbounds %struct.input_dev, ptr %call27, i32 0, i32 3, i32 2
  %88 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %product, align 4
  call void @input_set_capability(ptr noundef nonnull %call27, i32 noundef 1, i32 noundef 330) #12
  %x_min = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 9
  %89 = ptrtoint ptr %x_min to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %x_min, align 4
  %conv112 = zext i16 %90 to i32
  %x_max = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 10
  %91 = ptrtoint ptr %x_max to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %x_max, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool119.not = icmp eq i16 %92, 0
  %narrow431 = select i1 %tobool119.not, i16 4095, i16 %92
  %cond123 = zext i16 %narrow431 to i32
  call void @input_set_abs_params(ptr noundef nonnull %call27, i32 noundef 0, i32 noundef %conv112, i32 noundef %cond123, i32 noundef 0, i32 noundef 0) #12
  %y_min = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 11
  %93 = ptrtoint ptr %y_min to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %y_min, align 4
  %conv124 = zext i16 %94 to i32
  %y_max = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 12
  %95 = ptrtoint ptr %y_max to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %y_max, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool131.not = icmp eq i16 %96, 0
  %narrow432 = select i1 %tobool131.not, i16 4095, i16 %96
  %cond135 = zext i16 %narrow432 to i32
  call void @input_set_abs_params(ptr noundef nonnull %call27, i32 noundef 1, i32 noundef %conv124, i32 noundef %cond135, i32 noundef 0, i32 noundef 0) #12
  %pressure_min = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 13
  %97 = ptrtoint ptr %pressure_min to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %pressure_min, align 4
  %conv136 = zext i16 %98 to i32
  %pressure_max = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 14
  %99 = ptrtoint ptr %pressure_max to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %pressure_max, align 2
  %conv137 = zext i16 %100 to i32
  call void @input_set_abs_params(ptr noundef nonnull %call27, i32 noundef 24, i32 noundef %conv136, i32 noundef %conv137, i32 noundef 0, i32 noundef 0) #12
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call.i, align 4
  %core_prop = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 25
  call void @touchscreen_parse_properties(ptr noundef %102, i1 noundef zeroext false, ptr noundef %core_prop) #12
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %call27, i32 0, i32 26
  %103 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i448 = icmp eq ptr %104, null
  br i1 %tobool.not.i448, label %dev_name.exit.input_abs_get_max.exit.thread_crit_edge, label %input_abs_get_max.exit

dev_name.exit.input_abs_get_max.exit.thread_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %input_abs_get_max.exit.thread

input_abs_get_max.exit:                           ; preds = %dev_name.exit
  %maximum.i = getelementptr %struct.input_absinfo, ptr %104, i32 24, i32 2
  %105 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %maximum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool140.not = icmp eq i32 %106, 0
  %107 = trunc i32 %106 to i16
  br i1 %tobool140.not, label %input_abs_get_max.exit.input_abs_get_max.exit.thread_crit_edge, label %input_abs_get_max.exit._crit_edge

input_abs_get_max.exit._crit_edge:                ; preds = %input_abs_get_max.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %108

input_abs_get_max.exit.input_abs_get_max.exit.thread_crit_edge: ; preds = %input_abs_get_max.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %input_abs_get_max.exit.thread

input_abs_get_max.exit.thread:                    ; preds = %input_abs_get_max.exit.input_abs_get_max.exit.thread_crit_edge, %dev_name.exit.input_abs_get_max.exit.thread_crit_edge
  br label %108

108:                                              ; preds = %input_abs_get_max.exit.thread, %input_abs_get_max.exit._crit_edge
  %109 = phi i16 [ -1, %input_abs_get_max.exit.thread ], [ %107, %input_abs_get_max.exit._crit_edge ]
  %pressure_max146 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 9
  %110 = ptrtoint ptr %pressure_max146 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %pressure_max146, align 4
  %swap_x_y = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 25, i32 4
  %111 = ptrtoint ptr %swap_x_y to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %swap_x_y, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool148.not = icmp eq i8 %112, 0
  br i1 %tobool148.not, label %land.lhs.true, label %.if.end163_crit_edge

.if.end163_crit_edge:                             ; preds = %108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

land.lhs.true:                                    ; preds = %108
  %swap_xy = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 4
  %113 = ptrtoint ptr %swap_xy to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %swap_xy, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool149.not = icmp eq i8 %114, 0
  br i1 %tobool149.not, label %land.lhs.true.if.end163_crit_edge, label %do.body152

land.lhs.true.if.end163_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end163

do.body152:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %115 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %absinfo.i, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %__tmp.sroa.0.0.copyload = load i32, ptr %116, align 4
  %__tmp.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %116, i32 4
  %118 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %118)
  %__tmp.sroa.5.0.copyload = load i32, ptr %__tmp.sroa.5.0.arrayidx.sroa_idx, align 4
  %__tmp.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %116, i32 8
  %119 = ptrtoint ptr %__tmp.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %119)
  %__tmp.sroa.6.0.copyload = load i32, ptr %__tmp.sroa.6.0.arrayidx.sroa_idx, align 4
  %__tmp.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %116, i32 12
  %120 = ptrtoint ptr %__tmp.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %120)
  %__tmp.sroa.7.0.copyload = load i32, ptr %__tmp.sroa.7.0.arrayidx.sroa_idx, align 4
  %__tmp.sroa.8.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %116, i32 16
  %121 = ptrtoint ptr %__tmp.sroa.8.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %121)
  %__tmp.sroa.8.0.copyload = load i32, ptr %__tmp.sroa.8.0.arrayidx.sroa_idx, align 4
  %__tmp.sroa.9.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %116, i32 20
  %122 = ptrtoint ptr %__tmp.sroa.9.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %122)
  %__tmp.sroa.9.0.copyload = load i32, ptr %__tmp.sroa.9.0.arrayidx.sroa_idx, align 4
  %arrayidx156 = getelementptr %struct.input_absinfo, ptr %116, i32 1
  %123 = call ptr @memcpy(ptr %116, ptr %arrayidx156, i32 24)
  %124 = load ptr, ptr %absinfo.i, align 8
  %arrayidx158 = getelementptr %struct.input_absinfo, ptr %124, i32 1
  %125 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %__tmp.sroa.0.0.copyload, ptr %arrayidx158, align 4
  %__tmp.sroa.5.0.arrayidx158.sroa_idx = getelementptr %struct.input_absinfo, ptr %124, i32 1, i32 1
  %126 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx158.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %__tmp.sroa.5.0.copyload, ptr %__tmp.sroa.5.0.arrayidx158.sroa_idx, align 4
  %__tmp.sroa.6.0.arrayidx158.sroa_idx = getelementptr %struct.input_absinfo, ptr %124, i32 1, i32 2
  %127 = ptrtoint ptr %__tmp.sroa.6.0.arrayidx158.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %__tmp.sroa.6.0.copyload, ptr %__tmp.sroa.6.0.arrayidx158.sroa_idx, align 4
  %__tmp.sroa.7.0.arrayidx158.sroa_idx = getelementptr %struct.input_absinfo, ptr %124, i32 1, i32 3
  %128 = ptrtoint ptr %__tmp.sroa.7.0.arrayidx158.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %__tmp.sroa.7.0.copyload, ptr %__tmp.sroa.7.0.arrayidx158.sroa_idx, align 4
  %__tmp.sroa.8.0.arrayidx158.sroa_idx = getelementptr %struct.input_absinfo, ptr %124, i32 1, i32 4
  %129 = ptrtoint ptr %__tmp.sroa.8.0.arrayidx158.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %__tmp.sroa.8.0.copyload, ptr %__tmp.sroa.8.0.arrayidx158.sroa_idx, align 4
  %__tmp.sroa.9.0.arrayidx158.sroa_idx = getelementptr %struct.input_absinfo, ptr %124, i32 1, i32 5
  %130 = ptrtoint ptr %__tmp.sroa.9.0.arrayidx158.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %__tmp.sroa.9.0.copyload, ptr %__tmp.sroa.9.0.arrayidx158.sroa_idx, align 4
  %131 = ptrtoint ptr %swap_x_y to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %swap_x_y, align 2
  br label %if.end163

if.end163:                                        ; preds = %do.body152, %land.lhs.true.if.end163_crit_edge, %.if.end163_crit_edge
  %msg.i = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 14
  %xfer.i = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 13
  %132 = ptrtoint ptr %packet31 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %packet31, align 4
  %keep_vref_on.i449 = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 3
  %134 = ptrtoint ptr %keep_vref_on.i449 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %keep_vref_on.i449, align 2, !range !192
  %136 = zext i8 %135 to i32
  %137 = ptrtoint ptr %spi32 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %spi32, align 4
  %max_speed_hz.i = getelementptr inbounds %struct.spi_device, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %max_speed_hz.i, align 8
  %div.i = udiv i32 1000000000, %140
  %settle_delay_usecs.i450 = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 5
  %141 = ptrtoint ptr %settle_delay_usecs.i450 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %settle_delay_usecs.i450, align 4
  %conv2.i = zext i16 %142 to i32
  %mul.i = mul nuw nsw i32 %conv2.i, 1000
  %div3.i = udiv i32 %mul.i, %div.i
  %sub.i = add nuw nsw i32 %div3.i, 23
  %div4.i = udiv i32 %sub.i, 24
  %count_skip.i = getelementptr inbounds %struct.ads7846_packet, ptr %133, i32 0, i32 1
  %143 = ptrtoint ptr %count_skip.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %div4.i, ptr %count_skip.i, align 4
  %debounce_max.i451 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 21
  %144 = ptrtoint ptr %debounce_max.i451 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %debounce_max.i451, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %145)
  %tobool6.not.i452 = icmp eq i16 %145, 0
  br i1 %tobool6.not.i452, label %if.end163.if.end.i456_crit_edge, label %land.lhs.true.i

if.end163.if.end.i456_crit_edge:                  ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i456

land.lhs.true.i:                                  ; preds = %if.end163
  %debounce_rep.i453 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 23
  %146 = ptrtoint ptr %debounce_rep.i453 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %debounce_rep.i453, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %tobool8.not.i = icmp eq i16 %147, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.if.end.i456_crit_edge, label %if.then.i454

land.lhs.true.i.if.end.i456_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i456

if.then.i454:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv7.i = zext i16 %147 to i32
  %add11.i = add nuw nsw i32 %conv7.i, 2
  br label %if.end.i456

if.end.i456:                                      ; preds = %if.then.i454, %land.lhs.true.i.if.end.i456_crit_edge, %if.end163.if.end.i456_crit_edge
  %storemerge.i = phi i32 [ %add11.i, %if.then.i454 ], [ 1, %land.lhs.true.i.if.end.i456_crit_edge ], [ 1, %if.end163.if.end.i456_crit_edge ]
  %148 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %storemerge.i, ptr %133, align 4
  %149 = ptrtoint ptr %model50 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %model50, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7846, i16 %150)
  %cmp.i455 = icmp eq i16 %150, 7846
  %spec.select.i = select i1 %cmp.i455, i32 5, i32 3
  %151 = getelementptr inbounds %struct.ads7846_packet, ptr %133, i32 0, i32 2
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %spec.select.i, ptr %151, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end31.i.for.body.i_crit_edge, %if.end.i456
  %size.010.i = phi i32 [ %add37.i, %if.end31.i.for.body.i_crit_edge ], [ 0, %if.end.i456 ]
  %cmd_idx.09.i = phi i32 [ %inc.i, %if.end31.i.for.body.i_crit_edge ], [ 0, %if.end.i456 ]
  %offset.08.i = phi i32 [ %add33.i, %if.end31.i.for.body.i_crit_edge ], [ 0, %if.end.i456 ]
  %arrayidx24.i = getelementptr %struct.ads7846_packet, ptr %133, i32 0, i32 4, i32 %cmd_idx.09.i
  %153 = zext i32 %cmd_idx.09.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd_idx.09.i, label %land.end.i.i [
    i32 0, label %for.body.i.if.then25.i_crit_edge
    i32 1, label %for.body.i.if.then25.i_crit_edge480
    i32 2, label %for.body.i.if.then25.i_crit_edge481
    i32 3, label %for.body.i.if.then25.i_crit_edge482
    i32 4, label %for.body.i.if.else29.i_crit_edge
  ]

for.body.i.if.else29.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else29.i

for.body.i.if.then25.i_crit_edge482:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i

for.body.i.if.then25.i_crit_edge481:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i

for.body.i.if.then25.i_crit_edge480:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i

for.body.i.if.then25.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then25.i

land.end.i.i:                                     ; preds = %for.body.i
  %.b36.i.i = load i1, ptr @ads7846_cmd_need_settle.__already_done, align 1
  br i1 %.b36.i.i, label %land.end.i.i.if.else29.i_crit_edge, label %if.then.i.i, !prof !193

land.end.i.i.if.else29.i_crit_edge:               ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else29.i

if.then.i.i:                                      ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ads7846_cmd_need_settle.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 759, i32 noundef 9, ptr noundef null) #12
  br label %if.else29.i

if.then25.i:                                      ; preds = %for.body.i.if.then25.i_crit_edge, %for.body.i.if.then25.i_crit_edge480, %for.body.i.if.then25.i_crit_edge481, %for.body.i.if.then25.i_crit_edge482
  %154 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %133, align 4
  %156 = ptrtoint ptr %count_skip.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %count_skip.i, align 4
  %add28.i = add i32 %157, %155
  br label %if.end31.i

if.else29.i:                                      ; preds = %if.then.i.i, %land.end.i.i.if.else29.i_crit_edge, %for.body.i.if.else29.i_crit_edge
  %158 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %133, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else29.i, %if.then25.i
  %max_count.0.i = phi i32 [ %add28.i, %if.then25.i ], [ %159, %if.else29.i ]
  %160 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %offset.08.i, ptr %arrayidx24.i, align 4
  %add33.i = add i32 %max_count.0.i, %offset.08.i
  %count34.i = getelementptr %struct.ads7846_packet, ptr %133, i32 0, i32 4, i32 %cmd_idx.09.i, i32 1
  %161 = ptrtoint ptr %count34.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %max_count.0.i, ptr %count34.i, align 4
  %162 = ptrtoint ptr %count_skip.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %count_skip.i, align 4
  %skip.i = getelementptr %struct.ads7846_packet, ptr %133, i32 0, i32 4, i32 %cmd_idx.09.i, i32 2
  %164 = ptrtoint ptr %skip.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %skip.i, align 4
  %mul36.i = mul i32 %max_count.0.i, 3
  %add37.i = add i32 %mul36.i, %size.010.i
  %inc.i = add nuw i32 %cmd_idx.09.i, 1
  %165 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %151, align 4
  %cmp21.i = icmp ult i32 %inc.i, %166
  br i1 %cmp21.i, label %if.end31.i.for.body.i_crit_edge, label %for.end.i

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %if.end31.i
  %167 = ptrtoint ptr %spi32 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %spi32, align 4
  %call.i.i457 = call noalias ptr @devm_kmalloc(ptr noundef %168, i32 noundef %add37.i, i32 noundef 3520) #12
  %tx.i = getelementptr inbounds %struct.ads7846_packet, ptr %133, i32 0, i32 6
  %169 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %call.i.i457, ptr %tx.i, align 4
  %tobool41.not.i = icmp eq ptr %call.i.i457, null
  br i1 %tobool41.not.i, label %for.end.i.ads7846_setup_spi_msg.exit_crit_edge, label %if.end43.i

for.end.i.ads7846_setup_spi_msg.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_setup_spi_msg.exit

if.end43.i:                                       ; preds = %for.end.i
  %170 = ptrtoint ptr %spi32 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %spi32, align 4
  %call.i1.i = call noalias ptr @devm_kmalloc(ptr noundef %171, i32 noundef %add37.i, i32 noundef 3520) #12
  %rx.i = getelementptr inbounds %struct.ads7846_packet, ptr %133, i32 0, i32 5
  %172 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call.i1.i, ptr %rx.i, align 4
  %tobool48.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool48.not.i, label %if.end43.i.ads7846_setup_spi_msg.exit_crit_edge, label %if.end50.i

if.end43.i.ads7846_setup_spi_msg.exit_crit_edge:  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_setup_spi_msg.exit

if.end50.i:                                       ; preds = %if.end43.i
  %173 = ptrtoint ptr %model50 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %model50, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7873, i16 %174)
  %cmp53.i = icmp eq i16 %174, 7873
  br i1 %cmp53.i, label %if.then55.i, label %if.end50.i.if.end57.i_crit_edge

if.end50.i.if.end57.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i

if.then55.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  %175 = ptrtoint ptr %model50 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 7846, ptr %model50, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then55.i, %if.end50.i.if.end57.i_crit_edge
  %vref.0.i = phi i32 [ 0, %if.then55.i ], [ %136, %if.end50.i.if.end57.i_crit_edge ]
  %msg_count.i = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 15
  %176 = ptrtoint ptr %msg_count.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 1, ptr %msg_count.i, align 4
  %177 = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 14, i32 0, i32 1
  %178 = call ptr @memset(ptr %177, i32 0, i32 40)
  %179 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 14, i32 0, i32 0, i32 1
  %180 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 14, i32 0, i32 10
  %181 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 14, i32 0, i32 10, i32 1
  %182 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %context.i = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 14, i32 0, i32 4
  %183 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call.i, ptr %context.i, align 4
  %184 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp6013.not.i = icmp eq i32 %185, 0
  br i1 %cmp6013.not.i, label %if.end57.i.for.end82.i_crit_edge, label %for.body62.lr.ph.i

if.end57.i.for.end82.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end82.i

for.body62.lr.ph.i:                               ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vref.0.i)
  %tobool12.not.i.i = icmp eq i32 %vref.0.i, 0
  %conv15.i.i = select i1 %tobool12.not.i.i, i8 -63, i8 -61
  %conv10.i.i = select i1 %tobool12.not.i.i, i8 -79, i8 -77
  %conv5.i.i = select i1 %tobool12.not.i.i, i8 -47, i8 -45
  %conv.i.i = select i1 %tobool12.not.i.i, i8 -111, i8 -109
  br label %for.body62.i

for.body62.i:                                     ; preds = %for.end79.i.for.body62.i_crit_edge, %for.body62.lr.ph.i
  %cmd_idx.114.i = phi i32 [ 0, %for.body62.lr.ph.i ], [ %inc81.i, %for.end79.i.for.body62.i_crit_edge ]
  %arrayidx65.i = getelementptr %struct.ads7846_packet, ptr %133, i32 0, i32 4, i32 %cmd_idx.114.i
  %186 = zext i32 %cmd_idx.114.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %cmd_idx.114.i, label %land.end.i3.i [
    i32 1, label %sw.bb.i.i
    i32 0, label %sw.bb1.i2.i
    i32 2, label %sw.bb6.i.i
    i32 3, label %sw.bb11.i.i
    i32 4, label %for.body62.i.ads7846_get_cmd.exit.i_crit_edge
  ]

for.body62.i.ads7846_get_cmd.exit.i_crit_edge:    ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_get_cmd.exit.i

sw.bb.i.i:                                        ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_get_cmd.exit.i

sw.bb1.i2.i:                                      ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_get_cmd.exit.i

sw.bb6.i.i:                                       ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_get_cmd.exit.i

sw.bb11.i.i:                                      ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_get_cmd.exit.i

land.end.i3.i:                                    ; preds = %for.body62.i
  %.b56.i.i = load i1, ptr @ads7846_get_cmd.__already_done, align 1
  br i1 %.b56.i.i, label %land.end.i3.i.ads7846_get_cmd.exit.i_crit_edge, label %if.then.i4.i, !prof !193

land.end.i3.i.ads7846_get_cmd.exit.i_crit_edge:   ; preds = %land.end.i3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_get_cmd.exit.i

if.then.i4.i:                                     ; preds = %land.end.i3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ads7846_get_cmd.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 742, i32 noundef 9, ptr noundef null) #12
  br label %ads7846_get_cmd.exit.i

ads7846_get_cmd.exit.i:                           ; preds = %if.then.i4.i, %land.end.i3.i.ads7846_get_cmd.exit.i_crit_edge, %sw.bb11.i.i, %sw.bb6.i.i, %sw.bb1.i2.i, %sw.bb.i.i, %for.body62.i.ads7846_get_cmd.exit.i_crit_edge
  %retval.0.i5.i = phi i8 [ %conv15.i.i, %sw.bb11.i.i ], [ %conv10.i.i, %sw.bb6.i.i ], [ %conv5.i.i, %sw.bb1.i2.i ], [ %conv.i.i, %sw.bb.i.i ], [ -112, %for.body62.i.ads7846_get_cmd.exit.i_crit_edge ], [ 0, %if.then.i4.i ], [ 0, %land.end.i3.i.ads7846_get_cmd.exit.i_crit_edge ]
  %count68.i = getelementptr %struct.ads7846_packet, ptr %133, i32 0, i32 4, i32 %cmd_idx.114.i, i32 1
  %187 = ptrtoint ptr %count68.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %count68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %cmp6911.not.i = icmp eq i32 %188, 0
  br i1 %cmp6911.not.i, label %ads7846_get_cmd.exit.i.for.end79.i_crit_edge, label %ads7846_get_cmd.exit.i.for.body71.i_crit_edge

ads7846_get_cmd.exit.i.for.body71.i_crit_edge:    ; preds = %ads7846_get_cmd.exit.i
  br label %for.body71.i

ads7846_get_cmd.exit.i.for.end79.i_crit_edge:     ; preds = %ads7846_get_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end79.i

for.body71.i:                                     ; preds = %for.body71.i.for.body71.i_crit_edge, %ads7846_get_cmd.exit.i.for.body71.i_crit_edge
  %b.012.i = phi i32 [ %inc78.i, %for.body71.i.for.body71.i_crit_edge ], [ 0, %ads7846_get_cmd.exit.i.for.body71.i_crit_edge ]
  %189 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %tx.i, align 4
  %191 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx65.i, align 4
  %add74.i = add i32 %192, %b.012.i
  %arrayidx75.i = getelementptr %struct.ads7846_buf, ptr %190, i32 %add74.i
  %193 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %retval.0.i5.i, ptr %arrayidx75.i, align 1
  %inc78.i = add nuw i32 %b.012.i, 1
  %194 = ptrtoint ptr %count68.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %count68.i, align 4
  %cmp69.i = icmp ult i32 %inc78.i, %195
  br i1 %cmp69.i, label %for.body71.i.for.body71.i_crit_edge, label %for.body71.i.for.end79.i_crit_edge

for.body71.i.for.end79.i_crit_edge:               ; preds = %for.body71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end79.i

for.body71.i.for.body71.i_crit_edge:              ; preds = %for.body71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body71.i

for.end79.i:                                      ; preds = %for.body71.i.for.end79.i_crit_edge, %ads7846_get_cmd.exit.i.for.end79.i_crit_edge
  %inc81.i = add nuw i32 %cmd_idx.114.i, 1
  %196 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %151, align 4
  %cmp60.i = icmp ult i32 %inc81.i, %197
  br i1 %cmp60.i, label %for.end79.i.for.body62.i_crit_edge, label %for.end79.i.for.end82.i_crit_edge

for.end79.i.for.end82.i_crit_edge:                ; preds = %for.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end82.i

for.end79.i.for.body62.i_crit_edge:               ; preds = %for.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body62.i

for.end82.i:                                      ; preds = %for.end79.i.for.end82.i_crit_edge, %if.end57.i.for.end82.i_crit_edge
  %198 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %tx.i, align 4
  %200 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %199, ptr %xfer.i, align 4
  %201 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rx.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 13, i32 0, i32 1
  %203 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %202, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 13, i32 0, i32 2
  %204 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %add37.i, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 13, i32 0, i32 18
  %205 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %206, ptr noundef %msg.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.end82.i.ads7846_setup_spi_msg.exit_crit_edge

for.end82.i.ads7846_setup_spi_msg.exit_crit_edge: ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_setup_spi_msg.exit

if.end.i.i.i.i:                                   ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  %207 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %208 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 13, i32 0, i32 18, i32 1
  %209 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %206, ptr %prev3.i.i.i.i, align 4
  %210 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %210)
  store volatile ptr %transfer_list.i.i, ptr %206, align 4
  br label %ads7846_setup_spi_msg.exit

ads7846_setup_spi_msg.exit:                       ; preds = %if.end.i.i.i.i, %for.end82.i.ads7846_setup_spi_msg.exit_crit_edge, %if.end43.i.ads7846_setup_spi_msg.exit_crit_edge, %for.end.i.ads7846_setup_spi_msg.exit_crit_edge
  %call165 = call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.12) #12
  %reg = getelementptr inbounds %struct.ads7846, ptr %call.i, i32 0, i32 4
  %211 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %call165, ptr %reg, align 4
  %cmp.i458 = icmp ugt ptr %call165, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i458, label %if.then168, label %if.end174

if.then168:                                       ; preds = %ads7846_setup_spi_msg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %212 = ptrtoint ptr %call165 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.14, i32 noundef %212) #15
  br label %cleanup

if.end174:                                        ; preds = %ads7846_setup_spi_msg.exit
  %call176 = call i32 @regulator_enable(ptr noundef %call165) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end182, label %do.end181

do.end181:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.17, i32 noundef %call176) #15
  br label %cleanup

if.end182:                                        ; preds = %if.end174
  %213 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %reg, align 4
  %call.i459 = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @ads7846_regulator_disable, ptr noundef %214) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i459)
  %tobool.not.i460 = icmp eq i32 %call.i459, 0
  br i1 %tobool.not.i460, label %if.end187, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i461 = call i32 @regulator_disable(ptr noundef %214) #12
  br label %cleanup

if.end187:                                        ; preds = %if.end182
  %irq_flags188 = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 23
  %215 = ptrtoint ptr %irq_flags188 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %irq_flags188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool189.not = icmp eq i32 %216, 0
  %.op = or i32 %216, 8192
  %or194 = select i1 %tobool189.not, i32 8194, i32 %.op
  %217 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %irq, align 4
  %driver = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 6
  %219 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %driver, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %220, align 4
  %call197 = call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %218, ptr noundef nonnull @ads7846_hard_irq, ptr noundef nonnull @ads7846_irq, i32 noundef %or194, ptr noundef %222, ptr noundef nonnull %call.i) #12
  %223 = zext i32 %call197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %223, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %call197, label %land.lhs.true202 [
    i32 0, label %if.end187.if.end235_crit_edge
    i32 -517, label %if.end187.do.body218_crit_edge
  ]

if.end187.do.body218_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body218

if.end187.if.end235_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end235

land.lhs.true202:                                 ; preds = %if.end187
  %224 = ptrtoint ptr %irq_flags188 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %irq_flags188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool204.not = icmp eq i32 %225, 0
  br i1 %tobool204.not, label %do.end208, label %land.lhs.true202.if.end215_crit_edge

land.lhs.true202.if.end215_crit_edge:             ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end215

do.end208:                                        ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #14
  %226 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.20, i32 noundef %227) #15
  %or210 = or i32 %or194, 1
  %228 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %irq, align 4
  %230 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %driver, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %231, align 4
  %call214 = call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %229, ptr noundef nonnull @ads7846_hard_irq, ptr noundef nonnull @ads7846_irq, i32 noundef %or210, ptr noundef %233, ptr noundef nonnull %call.i) #12
  br label %if.end215

if.end215:                                        ; preds = %do.end208, %land.lhs.true202.if.end215_crit_edge
  %err.0 = phi i32 [ %call197, %land.lhs.true202.if.end215_crit_edge ], [ %call214, %do.end208 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool216.not = icmp eq i32 %err.0, 0
  br i1 %tobool216.not, label %if.end215.if.end235_crit_edge, label %if.end215.do.body218_crit_edge

if.end215.do.body218_crit_edge:                   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body218

if.end215.if.end235_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end235

do.body218:                                       ; preds = %if.end215.do.body218_crit_edge, %if.end187.do.body218_crit_edge
  %err.0478 = phi i32 [ %err.0, %if.end215.do.body218_crit_edge ], [ %call197, %if.end187.do.body218_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ads7846_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ads7846_probe, %if.then230)) #12
          to label %cleanup [label %if.then230], !srcloc !190

if.then230:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #14
  %234 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ads7846_probe.__UNIQUE_ID_ddebug292, ptr noundef %spi, ptr noundef nonnull @.str.23, i32 noundef %235) #12
  br label %cleanup

if.end235:                                        ; preds = %if.end215.if.end235_crit_edge, %if.end187.if.end235_crit_edge
  %call236 = call fastcc i32 @ads784x_hwmon_register(ptr noundef %spi, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %do.end242, label %if.end235.cleanup_crit_edge

if.end235.cleanup_crit_edge:                      ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end242:                                        ; preds = %if.end235
  %236 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.25, i32 noundef %237) #15
  %238 = ptrtoint ptr %model50 to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %model50, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7845, i16 %239)
  %cmp246 = icmp eq i16 %239, 7845
  br i1 %cmp246, label %if.then248, label %if.else250

if.then248:                                       ; preds = %do.end242
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @ads7845_read12_ser(ptr noundef %spi)
  br label %if.end252

if.else250:                                       ; preds = %do.end242
  call void @__sanitizer_cov_trace_pc() #14
  %call251 = call fastcc i32 @ads7846_read12_ser(ptr noundef %spi, i32 noundef 228)
  br label %if.end252

if.end252:                                        ; preds = %if.else250, %if.then248
  %call253 = call i32 @devm_device_add_group(ptr noundef %spi, ptr noundef nonnull @ads784x_attr_group) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %if.end256, label %if.end252.cleanup_crit_edge

if.end252.cleanup_crit_edge:                      ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end256:                                        ; preds = %if.end252
  %call257 = call i32 @input_register_device(ptr noundef nonnull %call27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call257)
  %tobool258.not = icmp eq i32 %call257, 0
  br i1 %tobool258.not, label %if.end260, label %if.end256.cleanup_crit_edge

if.end256.cleanup_crit_edge:                      ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end260:                                        ; preds = %if.end256
  %wakeup = getelementptr inbounds %struct.ads7846_platform_data, ptr %pdata.0, i32 0, i32 22
  %240 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %wakeup, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool261 = icmp ne i8 %241, 0
  %call262 = call i32 @device_init_wakeup(ptr noundef %spi, i1 noundef zeroext %tobool261) #12
  %242 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %platform_data.i, align 8
  %tobool264.not = icmp eq ptr %243, null
  br i1 %tobool264.not, label %if.then265, label %if.end260.cleanup_crit_edge

if.end260.cleanup_crit_edge:                      ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then265:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #14
  call void @devm_kfree(ptr noundef %spi, ptr noundef %pdata.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then265, %if.end260.cleanup_crit_edge, %if.end256.cleanup_crit_edge, %if.end252.cleanup_crit_edge, %if.end235.cleanup_crit_edge, %if.then230, %do.body218, %devm_add_action_or_reset.exit, %do.end181, %if.then168, %do.end21.i, %do.end.i440, %if.then44, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end10, %if.then5, %do.body
  %retval.0 = phi i32 [ -22, %do.end10 ], [ %212, %if.then168 ], [ %call176, %do.end181 ], [ %33, %if.then44 ], [ -22, %if.then5 ], [ %call15, %if.end13.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ], [ -12, %if.end26.cleanup_crit_edge ], [ %call.i459, %devm_add_action_or_reset.exit ], [ %err.0478, %if.then230 ], [ %call236, %if.end235.cleanup_crit_edge ], [ %call253, %if.end252.cleanup_crit_edge ], [ %call257, %if.end256.cleanup_crit_edge ], [ 0, %if.then265 ], [ 0, %if.end260.cleanup_crit_edge ], [ -22, %do.body ], [ %call5.i, %do.end.i440 ], [ -22, %do.end21.i ], [ %err.0478, %do.body218 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads7846_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %disabled.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled.i, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.ads7846_stop.exit_crit_edge

entry.ads7846_stop.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_stop.exit

land.lhs.true.i:                                  ; preds = %entry
  %suspended.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %suspended.i, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.ads7846_stop.exit_crit_edge

land.lhs.true.i.ads7846_stop.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_stop.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %stopped.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %stopped.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  tail call void @arm_heavy_mb() #12
  %wait.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %spi.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi.i, align 4
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %10) #12
  br label %ads7846_stop.exit

ads7846_stop.exit:                                ; preds = %if.then.i, %land.lhs.true.i.ads7846_stop.exit_crit_edge, %entry.ads7846_stop.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ads7846_debounce_filter(ptr nocapture noundef %ads, i32 noundef %data_idx, ptr nocapture noundef readonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %read_cnt = getelementptr inbounds %struct.ads7846, ptr %ads, i32 0, i32 18
  %0 = ptrtoint ptr %read_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %read_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %last_read = getelementptr inbounds %struct.ads7846, ptr %ads, i32 0, i32 20
  %2 = ptrtoint ptr %last_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_read, align 4
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %sub = sub i32 %3, %5
  %6 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %debounce_tol = getelementptr inbounds %struct.ads7846, ptr %ads, i32 0, i32 22
  %7 = ptrtoint ptr %debounce_tol to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %debounce_tol, align 2
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp2 = icmp sgt i32 %6, %conv
  br i1 %cmp2, label %lor.lhs.false.if.then_crit_edge, label %if.else12

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %read_rep = getelementptr inbounds %struct.ads7846, ptr %ads, i32 0, i32 19
  %9 = ptrtoint ptr %read_rep to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %read_rep, align 4
  %debounce_max = getelementptr inbounds %struct.ads7846, ptr %ads, i32 0, i32 21
  %10 = ptrtoint ptr %debounce_max to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %debounce_max, align 4
  %conv5 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv5)
  %cmp6 = icmp slt i32 %1, %conv5
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %last_read9 = getelementptr inbounds %struct.ads7846, ptr %ads, i32 0, i32 20
  %14 = ptrtoint ptr %last_read9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %last_read9, align 4
  %inc = add nsw i32 %1, 1
  %15 = ptrtoint ptr %read_cnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %inc, ptr %read_cnt, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %read_cnt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %read_cnt, align 4
  br label %cleanup

if.else12:                                        ; preds = %lor.lhs.false
  %read_rep13 = getelementptr inbounds %struct.ads7846, ptr %ads, i32 0, i32 19
  %17 = ptrtoint ptr %read_rep13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %read_rep13, align 4
  %inc14 = add i32 %18, 1
  store i32 %inc14, ptr %read_rep13, align 4
  %debounce_rep = getelementptr inbounds %struct.ads7846, ptr %ads, i32 0, i32 23
  %19 = ptrtoint ptr %debounce_rep to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %debounce_rep, align 4
  %conv15 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc14, i32 %conv15)
  %cmp16 = icmp sgt i32 %inc14, %conv15
  br i1 %cmp16, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %read_cnt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %read_cnt, align 4
  %22 = ptrtoint ptr %read_rep13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %read_rep13, align 4
  br label %cleanup

if.else21:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #14
  %inc23 = add i32 %1, 1
  %23 = ptrtoint ptr %read_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %inc23, ptr %read_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else21, %if.then18, %if.else, %if.then8
  %retval.0 = phi i32 [ 1, %if.then8 ], [ 2, %if.else ], [ 0, %if.then18 ], [ 1, %if.else21 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ads7846_no_filter(ptr nocapture noundef readnone %ads, i32 noundef %data_idx, ptr nocapture noundef readnone %val) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @null_wait_for_sync() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ads7846_regulator_disable(ptr noundef %regulator) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %regulator) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads7846_hard_irq(i32 noundef %irq, ptr nocapture noundef readonly %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %get_pendown_state.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 32
  %0 = ptrtoint ptr %get_pendown_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_pendown_state.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %1() #12
  br label %get_pendown_state.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gpio_pendown.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 33
  %2 = ptrtoint ptr %gpio_pendown.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_pendown.i, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %3) #12
  %call1.i.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool3.not.i = icmp eq i32 %call1.i.i, 0
  %lnot.ext.i = zext i1 %tobool3.not.i to i32
  br label %get_pendown_state.exit

get_pendown_state.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %lnot.ext.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads7846_irq(i32 noundef %irq, ptr noundef %handle) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 1) #12
  %stopped = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 27
  %0 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stopped, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not92 = icmp eq i8 %1, 0
  br i1 %tobool.not92, label %land.rhs.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %get_pendown_state.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 32
  %gpio_pendown.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 33
  %packet1.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 12
  %wait_for_sync.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 34
  %msg.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 14
  %spi.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 3
  %filter.i.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 30
  %filter_data.i.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 31
  %model.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 5
  %x_plate_ohms.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 8
  %pressure_max.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 9
  %penirq_recheck_delay_usecs.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 24
  %pendown.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 17
  %core_prop.i = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 25
  %wait = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 16
  br label %land.rhs

land.rhs:                                         ; preds = %if.end43.land.rhs_crit_edge, %land.rhs.lr.ph
  %2 = ptrtoint ptr %get_pendown_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_pendown_state.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call i32 %3() #12
  br label %get_pendown_state.exit

if.end.i:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %gpio_pendown.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_pendown.i, align 4
  %call.i.i = call ptr @gpio_to_desc(i32 noundef %5) #12
  %call1.i.i = call i32 @gpiod_get_raw_value(ptr noundef %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool3.not.i = icmp eq i32 %call1.i.i, 0
  %lnot.ext.i = zext i1 %tobool3.not.i to i32
  br label %get_pendown_state.exit

get_pendown_state.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %lnot.ext.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool1.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool1.not, label %get_pendown_state.exit.while.end_crit_edge, label %while.body

get_pendown_state.exit.while.end_crit_edge:       ; preds = %get_pendown_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %get_pendown_state.exit
  %6 = ptrtoint ptr %packet1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %packet1.i, align 4
  %last_cmd_idx.i = getelementptr inbounds %struct.ads7846_packet, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %last_cmd_idx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %last_cmd_idx.i, align 4
  %9 = ptrtoint ptr %wait_for_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wait_for_sync.i, align 4
  call void %10() #12
  %11 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spi.i, align 4
  %call29.i = call i32 @spi_sync(ptr noundef %12, ptr noundef %msg.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool.not30.i = icmp eq i32 %call29.i, 0
  br i1 %tobool.not30.i, label %while.body.if.end.i71_crit_edge, label %while.body.do.end.i_crit_edge

while.body.do.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

while.body.if.end.i71_crit_edge:                  ; preds = %while.body
  br label %if.end.i71

do.end.i:                                         ; preds = %ads7846_filter.exit.i.do.end.i_crit_edge, %while.body.do.end.i_crit_edge
  %call.lcssa.i = phi i32 [ %call29.i, %while.body.do.end.i_crit_edge ], [ %call.i72, %ads7846_filter.exit.i.do.end.i_crit_edge ]
  %13 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.61, i32 noundef %call.lcssa.i) #15
  %ignore.i = getelementptr inbounds %struct.ads7846_packet, ptr %7, i32 0, i32 8
  %15 = ptrtoint ptr %ignore.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %ignore.i, align 1
  br label %ads7846_read_state.exit

if.end.i71:                                       ; preds = %ads7846_filter.exit.i.if.end.i71_crit_edge, %while.body.if.end.i71_crit_edge
  %16 = ptrtoint ptr %packet1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %packet1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #12
  %18 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i.i, align 4, !annotation !191
  %ignore.i.i = getelementptr inbounds %struct.ads7846_packet, ptr %17, i32 0, i32 8
  %19 = ptrtoint ptr %ignore.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ignore.i.i, align 1
  %last_cmd_idx.i.i = getelementptr inbounds %struct.ads7846_packet, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %last_cmd_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_cmd_idx.i.i, align 4
  %cmds.i.i = getelementptr inbounds %struct.ads7846_packet, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %cmds.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmds.i.i, align 4
  %sub54.i.i = add i32 %23, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %sub54.i.i)
  %cmp55.i.i = icmp ult i32 %21, %sub54.i.i
  br i1 %cmp55.i.i, label %for.body.lr.ph.i.i, label %if.end.i71.ads7846_filter.exit.thread.i_crit_edge

if.end.i71.ads7846_filter.exit.thread.i_crit_edge: ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_filter.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i71
  %rx.i.i = getelementptr inbounds %struct.ads7846_packet, ptr %17, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc19.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %cmd_idx.056.i.i = phi i32 [ %21, %for.body.lr.ph.i.i ], [ %inc20.i.i, %for.inc19.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ads7846_packet, ptr %17, i32 0, i32 4, i32 %cmd_idx.056.i.i
  %24 = ptrtoint ptr %last_cmd_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cmd_idx.056.i.i, ptr %last_cmd_idx.i.i, align 4
  %skip.i.i = getelementptr %struct.ads7846_packet, ptr %17, i32 0, i32 4, i32 %cmd_idx.056.i.i, i32 2
  %25 = ptrtoint ptr %skip.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %skip.i.i, align 4
  %count.i.i = getelementptr %struct.ads7846_packet, ptr %17, i32 0, i32 4, i32 %cmd_idx.056.i.i, i32 1
  %27 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp552.i.i = icmp ult i32 %26, %28
  br i1 %cmp552.i.i, label %for.body.i.i.for.body6.i.i_crit_edge, label %for.body.i.i.for.inc19.i.i_crit_edge

for.body.i.i.for.inc19.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc19.i.i

for.body.i.i.for.body6.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body6.i.i

for.cond4.i.i:                                    ; preds = %if.then.i.i
  %inc.i.i = add nuw i32 %b.053.i.i, 1
  %cmp5.i.i = icmp ult i32 %inc.i.i, %44
  br i1 %cmp5.i.i, label %for.cond4.i.i.for.body6.i.i_crit_edge, label %for.cond4.i.i.for.inc19.i.i_crit_edge

for.cond4.i.i.for.inc19.i.i_crit_edge:            ; preds = %for.cond4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc19.i.i

for.cond4.i.i.for.body6.i.i_crit_edge:            ; preds = %for.cond4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body6.i.i

for.body6.i.i:                                    ; preds = %for.cond4.i.i.for.body6.i.i_crit_edge, %for.body.i.i.for.body6.i.i_crit_edge
  %b.053.i.i = phi i32 [ %inc.i.i, %for.cond4.i.i.for.body6.i.i_crit_edge ], [ %26, %for.body.i.i.for.body6.i.i_crit_edge ]
  %29 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx.i.i, align 4
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %32, %b.053.i.i
  %data.i.i.i = getelementptr %struct.ads7846_buf, ptr %30, i32 %add.i.i, i32 1
  %33 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %data.i.i.i, align 2
  %35 = lshr i16 %34, 3
  %36 = and i16 %35, 4095
  %and.i.i.i = zext i16 %36 to i32
  %37 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i.i.i, ptr %val.i.i, align 4
  %38 = ptrtoint ptr %filter.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %filter.i.i, align 4
  %40 = ptrtoint ptr %filter_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %filter_data.i.i, align 4
  %call8.i.i = call i32 %39(ptr noundef %41, i32 noundef %cmd_idx.056.i.i, ptr noundef nonnull %val.i.i) #12
  %42 = zext i32 %call8.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call8.i.i, label %if.else16.i.i [
    i32 1, label %if.then.i.i
    i32 0, label %if.then15.i.i
  ]

if.then.i.i:                                      ; preds = %for.body6.i.i
  %43 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count.i.i, align 4
  %sub11.i.i = add i32 %44, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %b.053.i.i, i32 %sub11.i.i)
  %cmp12.i.i = icmp eq i32 %b.053.i.i, %sub11.i.i
  br i1 %cmp12.i.i, label %ads7846_filter.exit.i, label %for.cond4.i.i

if.then15.i.i:                                    ; preds = %for.body6.i.i
  %45 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i.i, align 4
  %conv.i.i = trunc i32 %46 to i16
  %47 = ptrtoint ptr %packet1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %packet1.i, align 4
  %49 = zext i32 %cmd_idx.056.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %cmd_idx.056.i.i, label %land.end.i.i.i [
    i32 1, label %sw.bb.i.i.i
    i32 0, label %sw.bb2.i.i.i
    i32 2, label %sw.bb3.i.i.i
    i32 3, label %sw.bb4.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %y.i.i.i = getelementptr inbounds %struct.ads7846_packet, ptr %48, i32 0, i32 10
  %50 = ptrtoint ptr %y.i.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i.i, ptr %y.i.i.i, align 2
  br label %for.inc19.i.i

sw.bb2.i.i.i:                                     ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %x.i.i.i = getelementptr inbounds %struct.ads7846_packet, ptr %48, i32 0, i32 9
  %51 = ptrtoint ptr %x.i.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i.i, ptr %x.i.i.i, align 4
  br label %for.inc19.i.i

sw.bb3.i.i.i:                                     ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %z1.i.i.i = getelementptr inbounds %struct.ads7846_packet, ptr %48, i32 0, i32 11
  %52 = ptrtoint ptr %z1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i.i, ptr %z1.i.i.i, align 4
  br label %for.inc19.i.i

sw.bb4.i.i.i:                                     ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %z2.i.i.i = getelementptr inbounds %struct.ads7846_packet, ptr %48, i32 0, i32 12
  %53 = ptrtoint ptr %z2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i.i, ptr %z2.i.i.i, align 2
  br label %for.inc19.i.i

land.end.i.i.i:                                   ; preds = %if.then15.i.i
  %.b45.i.i.i = load i1, ptr @ads7846_set_cmd_val.__already_done, align 1
  br i1 %.b45.i.i.i, label %land.end.i.i.i.for.inc19.i.i_crit_edge, label %if.then.i.i.i, !prof !193

land.end.i.i.i.for.inc19.i.i_crit_edge:           ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc19.i.i

if.then.i.i.i:                                    ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ads7846_set_cmd_val.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 722, i32 noundef 9, ptr noundef null) #12
  br label %for.inc19.i.i

if.else16.i.i:                                    ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ignore.i.i.le = getelementptr inbounds %struct.ads7846_packet, ptr %17, i32 0, i32 8
  %54 = ptrtoint ptr %ignore.i.i.le to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %ignore.i.i.le, align 1
  br label %ads7846_filter.exit.thread.i

for.inc19.i.i:                                    ; preds = %if.then.i.i.i, %land.end.i.i.i.for.inc19.i.i_crit_edge, %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb.i.i.i, %for.cond4.i.i.for.inc19.i.i_crit_edge, %for.body.i.i.for.inc19.i.i_crit_edge
  %inc20.i.i = add nuw i32 %cmd_idx.056.i.i, 1
  %55 = ptrtoint ptr %cmds.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cmds.i.i, align 4
  %sub.i.i = add i32 %56, -1
  %cmp.i.i = icmp ult i32 %inc20.i.i, %sub.i.i
  br i1 %cmp.i.i, label %for.inc19.i.i.for.body.i.i_crit_edge, label %for.inc19.i.i.ads7846_filter.exit.thread.i_crit_edge

for.inc19.i.i.ads7846_filter.exit.thread.i_crit_edge: ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_filter.exit.thread.i

for.inc19.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

ads7846_filter.exit.thread.i:                     ; preds = %for.inc19.i.i.ads7846_filter.exit.thread.i_crit_edge, %if.else16.i.i, %if.end.i71.ads7846_filter.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #12
  br label %ads7846_read_state.exit

ads7846_filter.exit.i:                            ; preds = %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #12
  %57 = ptrtoint ptr %wait_for_sync.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wait_for_sync.i, align 4
  call void %58() #12
  %59 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %spi.i, align 4
  %call.i72 = call i32 @spi_sync(ptr noundef %60, ptr noundef %msg.i) #12
  %tobool.not.i73 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i73, label %ads7846_filter.exit.i.if.end.i71_crit_edge, label %ads7846_filter.exit.i.do.end.i_crit_edge

ads7846_filter.exit.i.do.end.i_crit_edge:         ; preds = %ads7846_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

ads7846_filter.exit.i.if.end.i71_crit_edge:       ; preds = %ads7846_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i71

ads7846_read_state.exit:                          ; preds = %ads7846_filter.exit.thread.i, %do.end.i
  %61 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %stopped, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool3.not = icmp eq i8 %62, 0
  br i1 %tobool3.not, label %if.then, label %ads7846_read_state.exit.if.end_crit_edge

ads7846_read_state.exit.if.end_crit_edge:         ; preds = %ads7846_read_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %ads7846_read_state.exit
  %63 = ptrtoint ptr %packet1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %packet1.i, align 4
  %x2.i = getelementptr inbounds %struct.ads7846_packet, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %x2.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %x2.i, align 4
  %y3.i = getelementptr inbounds %struct.ads7846_packet, ptr %64, i32 0, i32 10
  %67 = ptrtoint ptr %y3.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %y3.i, align 2
  %69 = ptrtoint ptr %model.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %model.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7845, i16 %70)
  %cmp.i = icmp eq i16 %70, 7845
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i75

if.end.thread.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %66)
  %cmp8162.i = icmp eq i16 %66, 4095
  %spec.store.select163.i = select i1 %cmp8162.i, i16 0, i16 %66
  %71 = ptrtoint ptr %get_pendown_state.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %get_pendown_state.i, align 4
  %tobool.not.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i77

if.end.i75:                                       ; preds = %if.then
  %z15.i = getelementptr inbounds %struct.ads7846_packet, ptr %64, i32 0, i32 11
  %73 = ptrtoint ptr %z15.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %z15.i, align 4
  %z26.i = getelementptr inbounds %struct.ads7846_packet, ptr %64, i32 0, i32 12
  %75 = ptrtoint ptr %z26.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %z26.i, align 2
  %phi.cast.i = zext i16 %76 to i32
  %phi.cast144.i = zext i16 %74 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %66)
  %cmp8.i = icmp eq i16 %66, 4095
  %spec.store.select.i = select i1 %cmp8.i, i16 0, i16 %66
  call void @__sanitizer_cov_trace_const_cmp2(i16 7843, i16 %70)
  %cond.i = icmp eq i16 %70, 7843
  br i1 %cond.i, label %if.then16.i, label %if.else30.i

if.then16.i:                                      ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %pressure_max.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %pressure_max.i, align 4
  %79 = lshr i16 %78, 1
  %div.i = zext i16 %79 to i32
  br label %if.end56.i

if.then.i.i77:                                    ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i76 = call i32 %72() #12
  br label %get_pendown_state.exit.i

if.end.i.i:                                       ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %gpio_pendown.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %gpio_pendown.i, align 4
  %call.i.i.i = call ptr @gpio_to_desc(i32 noundef %81) #12
  %call1.i.i.i = call i32 @gpiod_get_raw_value(ptr noundef %call.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %call1.i.i.i, 0
  %lnot.ext.i.i = zext i1 %tobool3.not.i.i to i32
  br label %get_pendown_state.exit.i

get_pendown_state.exit.i:                         ; preds = %if.end.i.i, %if.then.i.i77
  %retval.0.i.i = phi i32 [ %call.i.i76, %if.then.i.i77 ], [ %lnot.ext.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i78 = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i78, label %get_pendown_state.exit.i.if.end56.i_crit_edge, label %if.then24.i

get_pendown_state.exit.i.if.end56.i_crit_edge:    ; preds = %get_pendown_state.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then24.i:                                      ; preds = %get_pendown_state.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %pressure_max.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %pressure_max.i, align 4
  %84 = lshr i16 %83, 1
  %div27.i = zext i16 %84 to i32
  br label %if.end56.i

if.else30.i:                                      ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.store.select.i)
  %tobool32.not.i = icmp ne i16 %spec.store.select.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool34.i = icmp ne i16 %74, 0
  %spec.select.i = select i1 %tobool32.not.i, i1 %tobool34.i, i1 false
  br i1 %spec.select.i, label %if.then37.i, label %if.else30.i.if.end56.i_crit_edge, !prof !193

if.else30.i.if.end56.i_crit_edge:                 ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then37.i:                                      ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv31.i = zext i16 %spec.store.select.i to i32
  %sub.i = sub nsw i32 %phi.cast.i, %phi.cast144.i
  %85 = ptrtoint ptr %x_plate_ohms.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %x_plate_ohms.i, align 2
  %conv40.i = zext i16 %86 to i32
  %mul.i = mul i32 %sub.i, %conv40.i
  %add.i = add i32 %mul.i, 8
  %div42145.i = lshr i32 %add.i, 4
  %mul44.i = mul i32 %div42145.i, %conv31.i
  %div46.i = udiv i32 %mul44.i, %phi.cast144.i
  %add51.i = add i32 %div46.i, 128
  %div52146.i = lshr i32 %add51.i, 8
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then37.i, %if.else30.i.if.end56.i_crit_edge, %if.then24.i, %get_pendown_state.exit.i.if.end56.i_crit_edge, %if.then16.i
  %spec.store.select164.i = phi i16 [ %spec.store.select.i, %if.then16.i ], [ %spec.store.select163.i, %if.then24.i ], [ %spec.store.select.i, %if.then37.i ], [ %spec.store.select163.i, %get_pendown_state.exit.i.if.end56.i_crit_edge ], [ %spec.store.select.i, %if.else30.i.if.end56.i_crit_edge ]
  %Rt.0.i = phi i32 [ %div.i, %if.then16.i ], [ %div27.i, %if.then24.i ], [ %div52146.i, %if.then37.i ], [ 0, %get_pendown_state.exit.i.if.end56.i_crit_edge ], [ 0, %if.else30.i.if.end56.i_crit_edge ]
  %ignore.i79 = getelementptr inbounds %struct.ads7846_packet, ptr %64, i32 0, i32 8
  %87 = ptrtoint ptr %ignore.i79 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ignore.i79, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool57.not.i = icmp eq i8 %88, 0
  br i1 %tobool57.not.i, label %lor.lhs.false.i, label %if.end56.i.if.end_crit_edge

if.end56.i.if.end_crit_edge:                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.end56.i
  %89 = ptrtoint ptr %pressure_max.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %pressure_max.i, align 4
  %conv60.i = zext i16 %90 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %Rt.0.i, i32 %conv60.i)
  %cmp61.i = icmp ugt i32 %Rt.0.i, %conv60.i
  br i1 %cmp61.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end64.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end64.i:                                       ; preds = %lor.lhs.false.i
  %91 = ptrtoint ptr %penirq_recheck_delay_usecs.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %penirq_recheck_delay_usecs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool65.not.i = icmp eq i16 %92, 0
  br i1 %tobool65.not.i, label %if.end84.i, label %cond.false76.i

cond.false76.i:                                   ; preds = %if.end64.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv78.i = zext i16 %92 to i32
  call void %93(i32 noundef %conv78.i) #12
  %94 = ptrtoint ptr %get_pendown_state.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %get_pendown_state.i, align 4
  %tobool.not.i149.i = icmp eq ptr %95, null
  br i1 %tobool.not.i149.i, label %if.end.i157.i, label %if.then.i151.i

if.then.i151.i:                                   ; preds = %cond.false76.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i150.i = call i32 %95() #12
  br label %get_pendown_state.exit159.i

if.end.i157.i:                                    ; preds = %cond.false76.i
  call void @__sanitizer_cov_trace_pc() #14
  %96 = ptrtoint ptr %gpio_pendown.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %gpio_pendown.i, align 4
  %call.i.i153.i = call ptr @gpio_to_desc(i32 noundef %97) #12
  %call1.i.i154.i = call i32 @gpiod_get_raw_value(ptr noundef %call.i.i153.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i154.i)
  %tobool3.not.i155.i = icmp eq i32 %call1.i.i154.i, 0
  %lnot.ext.i156.i = zext i1 %tobool3.not.i155.i to i32
  br label %get_pendown_state.exit159.i

get_pendown_state.exit159.i:                      ; preds = %if.end.i157.i, %if.then.i151.i
  %retval.0.i158.i = phi i32 [ %call.i150.i, %if.then.i151.i ], [ %lnot.ext.i156.i, %if.end.i157.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i158.i)
  %tobool81.not.i = icmp eq i32 %retval.0.i158.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Rt.0.i)
  %tobool85.not.i = icmp eq i32 %Rt.0.i, 0
  %or.cond.i = select i1 %tobool81.not.i, i1 true, i1 %tobool85.not.i
  br i1 %or.cond.i, label %get_pendown_state.exit159.i.if.end_crit_edge, label %get_pendown_state.exit159.i.if.then86.i_crit_edge

get_pendown_state.exit159.i.if.then86.i_crit_edge: ; preds = %get_pendown_state.exit159.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then86.i

get_pendown_state.exit159.i.if.end_crit_edge:     ; preds = %get_pendown_state.exit159.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end84.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Rt.0.i)
  %tobool85.not.old.i = icmp eq i32 %Rt.0.i, 0
  br i1 %tobool85.not.old.i, label %if.end84.i.if.end_crit_edge, label %if.end84.i.if.then86.i_crit_edge

if.end84.i.if.then86.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then86.i

if.end84.i.if.end_crit_edge:                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then86.i:                                      ; preds = %if.end84.i.if.then86.i_crit_edge, %get_pendown_state.exit159.i.if.then86.i_crit_edge
  %98 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %handle, align 4
  %100 = ptrtoint ptr %pendown.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %pendown.i, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool88.not.i = icmp eq i8 %101, 0
  br i1 %tobool88.not.i, label %if.then89.i, label %if.then86.i.if.end91.i_crit_edge

if.then86.i.if.end91.i_crit_edge:                 ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.i

if.then89.i:                                      ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @input_event(ptr noundef %99, i32 noundef 1, i32 noundef 330, i32 noundef 1) #12
  %102 = ptrtoint ptr %pendown.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %pendown.i, align 4
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then89.i, %if.then86.i.if.end91.i_crit_edge
  %conv92.i = zext i16 %spec.store.select164.i to i32
  %conv93.i = zext i16 %68 to i32
  call void @touchscreen_report_pos(ptr noundef %99, ptr noundef %core_prop.i, i32 noundef %conv92.i, i32 noundef %conv93.i, i1 noundef zeroext false) #12
  %103 = ptrtoint ptr %pressure_max.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %pressure_max.i, align 4
  %conv95.i = zext i16 %104 to i32
  %sub96.i = sub nsw i32 %conv95.i, %Rt.0.i
  call void @input_event(ptr noundef %99, i32 noundef 3, i32 noundef 24, i32 noundef %sub96.i) #12
  call void @input_event(ptr noundef %99, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.end91.i, %if.end84.i.if.end_crit_edge, %get_pendown_state.exit159.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.end56.i.if.end_crit_edge, %ads7846_read_state.exit.if.end_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 938) #12
  %105 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %stopped, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool9.not = icmp eq i8 %106, 0
  br i1 %tobool9.not, label %if.then17, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then17:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %107 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %call2088 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %108 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %stopped, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool23.not89.not = icmp eq i8 %109, 0
  br i1 %tobool23.not89.not, label %if.then17.cleanup_crit_edge, label %if.then17.if.end43_crit_edge

if.then17.if.end43_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then17.cleanup_crit_edge
  %__ret18.191 = phi i32 [ %__ret18.1, %cleanup.cleanup_crit_edge ], [ 1, %if.then17.cleanup_crit_edge ]
  %call40 = call i32 @schedule_timeout(i32 noundef %__ret18.191) #12
  %call20 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  %110 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %stopped, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool23.not = icmp eq i8 %111, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool27.not = icmp eq i32 %call40, 0
  %spec.store.select52 = select i1 %tobool27.not, i32 1, i32 %call40
  %__ret18.1 = select i1 %tobool23.not, i32 %call40, i32 %spec.store.select52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret18.1)
  %tobool33.not = icmp eq i32 %__ret18.1, 0
  %not.tobool23.not = xor i1 %tobool23.not, true
  %112 = select i1 %not.tobool23.not, i1 true, i1 %tobool33.not
  br i1 %112, label %cleanup.if.end43_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.if.end43_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.end43:                                         ; preds = %cleanup.if.end43_crit_edge, %if.then17.if.end43_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  %113 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %113)
  %.pr = load i8, ptr %stopped, align 4
  %tobool.not = icmp eq i8 %.pr, 0
  br i1 %tobool.not, label %if.end43.land.rhs_crit_edge, label %if.end43.while.end_crit_edge

if.end43.while.end_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end43.land.rhs_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.end:                                        ; preds = %if.end43.while.end_crit_edge, %if.end.while.end_crit_edge, %get_pendown_state.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %pendown = getelementptr inbounds %struct.ads7846, ptr %handle, i32 0, i32 17
  %114 = ptrtoint ptr %pendown to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %pendown, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool45.not = icmp eq i8 %115, 0
  br i1 %tobool45.not, label %while.end.if.end50_crit_edge, label %land.lhs.true46

while.end.if.end50_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

land.lhs.true46:                                  ; preds = %while.end
  %116 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %stopped, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool48.not = icmp eq i8 %117, 0
  br i1 %tobool48.not, label %if.then49, label %land.lhs.true46.if.end50_crit_edge

land.lhs.true46.if.end50_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then49:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %handle, align 4
  call void @input_event(ptr noundef %119, i32 noundef 1, i32 noundef 330, i32 noundef 0) #12
  call void @input_event(ptr noundef %119, i32 noundef 3, i32 noundef 24, i32 noundef 0) #12
  call void @input_event(ptr noundef %119, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %120 = ptrtoint ptr %pendown to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %pendown, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %land.lhs.true46.if.end50_crit_edge, %while.end.if.end50_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ads784x_hwmon_register(ptr noundef %spi, ptr noundef %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.ads7846, ptr %ts, i32 0, i32 5
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %model, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 7846, label %sw.bb
    i16 7845, label %entry.sw.bb7_crit_edge
    i16 7843, label %entry.sw.bb7_crit_edge31
  ]

entry.sw.bb7_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %vref_mv = getelementptr inbounds %struct.ads7846, ptr %ts, i32 0, i32 6
  %3 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vref_mv, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %do.body, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body:                                          ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ads784x_hwmon_register.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ads784x_hwmon_register, %if.then4)) #12
          to label %do.end [label %if.then4], !srcloc !190

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ads784x_hwmon_register.__UNIQUE_ID_ddebug290, ptr noundef %spi, ptr noundef nonnull @.str.64) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %5 = ptrtoint ptr %vref_mv to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2500, ptr %vref_mv, align 2
  %use_internal = getelementptr inbounds %struct.ads7846, ptr %ts, i32 0, i32 11
  %6 = ptrtoint ptr %use_internal to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %use_internal, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge31
  %vref_mv8 = getelementptr inbounds %struct.ads7846, ptr %ts, i32 0, i32 6
  %7 = ptrtoint ptr %vref_mv8 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vref_mv8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool9.not = icmp eq i16 %8, 0
  br i1 %tobool9.not, label %do.end13, label %sw.bb7.sw.epilog_crit_edge

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end13:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  %conv16 = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.65, i32 noundef %conv16) #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb7.sw.epilog_crit_edge, %do.end, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %modalias = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 11
  %call19 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %spi, ptr noundef %modalias, ptr noundef %ts, ptr noundef nonnull @ads7846_attr_groups) #12
  %cmp.i.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call19 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %9, i32 0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end13
  %retval.0 = phi i32 [ %spec.select.i, %sw.epilog ], [ 0, %do.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ads7845_read12_ser(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 384) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg = getelementptr inbounds %struct.ads7845_ser_req, ptr %call7.i.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ads7845_ser_req, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ads7845_ser_req, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msg, ptr %prev.i.i.i, align 8
  %resources.i.i = getelementptr inbounds %struct.ads7845_ser_req, ptr %call7.i.i, i32 0, i32 1, i32 10
  %7 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.ads7845_ser_req, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -112, ptr %call7.i.i, align 128
  %xfer = getelementptr inbounds %struct.ads7845_ser_req, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %xfer, align 4
  %sample = getelementptr inbounds %struct.ads7845_ser_req, ptr %call7.i.i, i32 0, i32 4
  %rx_buf = getelementptr inbounds %struct.ads7845_ser_req, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sample, ptr %rx_buf, align 8
  %len = getelementptr inbounds %struct.ads7845_ser_req, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.ads7845_ser_req, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %msg, ptr noundef %msg) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 8
  %14 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg, ptr %transfer_list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.ads7845_ser_req, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %lock = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %disabled.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 28
  %17 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %disabled.i, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %spi_message_add_tail.exit.ads7846_stop.exit_crit_edge

spi_message_add_tail.exit.ads7846_stop.exit_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_stop.exit

land.lhs.true.i:                                  ; preds = %spi_message_add_tail.exit
  %suspended.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 29
  %19 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %suspended.i, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool1.not.i = icmp eq i8 %20, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.ads7846_stop.exit_crit_edge

land.lhs.true.i.ads7846_stop.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_stop.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %stopped.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 27
  %21 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %stopped.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  tail call void @arm_heavy_mb() #12
  %wait.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %spi.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi.i, align 4
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %25) #12
  br label %ads7846_stop.exit

ads7846_stop.exit:                                ; preds = %if.then.i, %land.lhs.true.i.ads7846_stop.exit_crit_edge, %spi_message_add_tail.exit.ads7846_stop.exit_crit_edge
  %call15 = tail call i32 @spi_sync(ptr noundef %dev, ptr noundef %msg) #12
  tail call fastcc void @ads7846_restart(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %ads7846_stop.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ads7846_read12_ser(ptr noundef %dev, i32 noundef %command) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 768) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4
  %3 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 1
  %4 = call ptr @memset(ptr %3, i32 0, i32 40)
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %msg, ptr %msg, align 8
  %prev.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 10
  %7 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 8
  %prev.i2.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 4, i32 10, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %use_internal = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %use_internal to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %use_internal, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end.if.end24_crit_edge, label %if.then4

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then4:                                         ; preds = %if.end
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -45, ptr %call7.i.i, align 128
  %xfer = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %xfer, align 64
  %len = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %len, align 8
  %transfer_list.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %msg, ptr noundef %msg) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then4.spi_message_add_tail.exit_crit_edge

if.then4.spi_message_add_tail.exit_crit_edge:     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg, ptr %prev3.i.i.i, align 8
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i, ptr %msg, align 8
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.then4.spi_message_add_tail.exit_crit_edge
  %scratch = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3
  %rx_buf = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %18 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %scratch, ptr %rx_buf, align 4
  %len15 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 2
  %19 = ptrtoint ptr %len15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %len15, align 8
  %vref_delay_usecs = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %vref_delay_usecs to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vref_delay_usecs, align 4
  %delay = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 9
  %22 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %delay, align 2
  %unit = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 9, i32 1
  %23 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %unit, align 8
  %transfer_list.i130 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 18
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i132 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i130, ptr noundef %25, ptr noundef %msg) #12
  br i1 %call.i.i.i132, label %if.end.i.i.i134, label %spi_message_add_tail.exit.spi_message_add_tail.exit135_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit135_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %spi_message_add_tail.exit135

if.end.i.i.i134:                                  ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i130, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i130 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg, ptr %transfer_list.i130, align 4
  %prev3.i.i.i133 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i133, align 8
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i130, ptr %25, align 4
  br label %spi_message_add_tail.exit135

spi_message_add_tail.exit135:                     ; preds = %if.end.i.i.i134, %spi_message_add_tail.exit.spi_message_add_tail.exit135_crit_edge
  %or = or i32 %command, 2
  br label %if.end24

if.end24:                                         ; preds = %spi_message_add_tail.exit135, %if.end.if.end24_crit_edge
  %command.addr.0 = phi i32 [ %or, %spi_message_add_tail.exit135 ], [ %command, %if.end.if.end24_crit_edge ]
  %30 = trunc i32 %command.addr.0 to i8
  %conv = or i8 %30, 1
  %command26 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %command26 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv, ptr %command26, align 1
  %arrayidx29 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 2
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %command26, ptr %arrayidx29, align 64
  %len33 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 2, i32 2
  %33 = ptrtoint ptr %len33 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %len33, align 8
  %transfer_list.i136 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 2, i32 18
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i138 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i136, ptr noundef %35, ptr noundef %msg) #12
  br i1 %call.i.i.i138, label %if.end.i.i.i140, label %if.end24.spi_message_add_tail.exit141_crit_edge

if.end24.spi_message_add_tail.exit141_crit_edge:  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %spi_message_add_tail.exit141

if.end.i.i.i140:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i136, ptr %prev.i.i.i, align 4
  %37 = ptrtoint ptr %transfer_list.i136 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg, ptr %transfer_list.i136, align 4
  %prev3.i.i.i139 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 2, i32 18, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i139, align 8
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i136, ptr %35, align 4
  br label %spi_message_add_tail.exit141

spi_message_add_tail.exit141:                     ; preds = %if.end.i.i.i140, %if.end24.spi_message_add_tail.exit141_crit_edge
  %sample = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 6
  %rx_buf39 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 3, i32 1
  %40 = ptrtoint ptr %rx_buf39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %sample, ptr %rx_buf39, align 4
  %len42 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 3, i32 2
  %41 = ptrtoint ptr %len42 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %len42, align 8
  %transfer_list.i142 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 3, i32 18
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i144 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i142, ptr noundef %43, ptr noundef %msg) #12
  br i1 %call.i.i.i144, label %if.end.i.i.i146, label %spi_message_add_tail.exit141.spi_message_add_tail.exit147_crit_edge

spi_message_add_tail.exit141.spi_message_add_tail.exit147_crit_edge: ; preds = %spi_message_add_tail.exit141
  call void @__sanitizer_cov_trace_pc() #14
  br label %spi_message_add_tail.exit147

if.end.i.i.i146:                                  ; preds = %spi_message_add_tail.exit141
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i142, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %transfer_list.i142 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg, ptr %transfer_list.i142, align 4
  %prev3.i.i.i145 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 3, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i145 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i145, align 8
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i142, ptr %43, align 4
  br label %spi_message_add_tail.exit147

spi_message_add_tail.exit147:                     ; preds = %if.end.i.i.i146, %spi_message_add_tail.exit141.spi_message_add_tail.exit147_crit_edge
  %ref_off = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %ref_off to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -112, ptr %ref_off, align 2
  %arrayidx48 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 4
  %49 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %ref_off, ptr %arrayidx48, align 64
  %len52 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 4, i32 2
  %50 = ptrtoint ptr %len52 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %len52, align 8
  %transfer_list.i148 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 4, i32 18
  %51 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i150 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i148, ptr noundef %52, ptr noundef %msg) #12
  br i1 %call.i.i.i150, label %if.end.i.i.i152, label %spi_message_add_tail.exit147.spi_message_add_tail.exit153_crit_edge

spi_message_add_tail.exit147.spi_message_add_tail.exit153_crit_edge: ; preds = %spi_message_add_tail.exit147
  call void @__sanitizer_cov_trace_pc() #14
  br label %spi_message_add_tail.exit153

if.end.i.i.i152:                                  ; preds = %spi_message_add_tail.exit147
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %transfer_list.i148, ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %transfer_list.i148 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg, ptr %transfer_list.i148, align 4
  %prev3.i.i.i151 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 4, i32 18, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i151 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i.i151, align 8
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %transfer_list.i148, ptr %52, align 4
  br label %spi_message_add_tail.exit153

spi_message_add_tail.exit153:                     ; preds = %if.end.i.i.i152, %spi_message_add_tail.exit147.spi_message_add_tail.exit153_crit_edge
  %scratch56 = getelementptr inbounds %struct.ser_req, ptr %call7.i.i, i32 0, i32 3
  %rx_buf59 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 1
  %57 = ptrtoint ptr %rx_buf59 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %scratch56, ptr %rx_buf59, align 4
  %len62 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 2
  %58 = ptrtoint ptr %len62 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %len62, align 8
  %cs_change = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 7
  %59 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load = load i8, ptr %cs_change, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %cs_change, align 4
  %transfer_list.i154 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 18
  %60 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i156 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i154, ptr noundef %61, ptr noundef %msg) #12
  br i1 %call.i.i.i156, label %if.end.i.i.i158, label %spi_message_add_tail.exit153.spi_message_add_tail.exit159_crit_edge

spi_message_add_tail.exit153.spi_message_add_tail.exit159_crit_edge: ; preds = %spi_message_add_tail.exit153
  call void @__sanitizer_cov_trace_pc() #14
  br label %spi_message_add_tail.exit159

if.end.i.i.i158:                                  ; preds = %spi_message_add_tail.exit153
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %transfer_list.i154, ptr %prev.i.i.i, align 4
  %63 = ptrtoint ptr %transfer_list.i154 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %msg, ptr %transfer_list.i154, align 4
  %prev3.i.i.i157 = getelementptr %struct.ser_req, ptr %call7.i.i, i32 0, i32 5, i32 5, i32 18, i32 1
  %64 = ptrtoint ptr %prev3.i.i.i157 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i.i157, align 8
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %transfer_list.i154, ptr %61, align 4
  br label %spi_message_add_tail.exit159

spi_message_add_tail.exit159:                     ; preds = %if.end.i.i.i158, %spi_message_add_tail.exit153.spi_message_add_tail.exit159_crit_edge
  %lock = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %disabled.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 28
  %66 = ptrtoint ptr %disabled.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %disabled.i, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %spi_message_add_tail.exit159.ads7846_stop.exit_crit_edge

spi_message_add_tail.exit159.ads7846_stop.exit_crit_edge: ; preds = %spi_message_add_tail.exit159
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_stop.exit

land.lhs.true.i:                                  ; preds = %spi_message_add_tail.exit159
  %suspended.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 29
  %68 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %suspended.i, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool1.not.i = icmp eq i8 %69, 0
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.ads7846_stop.exit_crit_edge

land.lhs.true.i.ads7846_stop.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ads7846_stop.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %stopped.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 27
  %70 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %stopped.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  tail call void @arm_heavy_mb() #12
  %wait.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %spi.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 3
  %71 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %spi.i, align 4
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %74) #12
  br label %ads7846_stop.exit

ads7846_stop.exit:                                ; preds = %if.then.i, %land.lhs.true.i.ads7846_stop.exit_crit_edge, %spi_message_add_tail.exit159.ads7846_stop.exit_crit_edge
  %call69 = tail call i32 @spi_sync(ptr noundef %dev, ptr noundef %msg) #12
  tail call fastcc void @ads7846_restart(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp = icmp eq i32 %call69, 0
  br i1 %cmp, label %if.then72, label %ads7846_stop.exit.if.end75_crit_edge

ads7846_stop.exit.if.end75_crit_edge:             ; preds = %ads7846_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then72:                                        ; preds = %ads7846_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %sample to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %sample, align 128
  %77 = lshr i16 %76, 3
  %78 = and i16 %77, 4095
  %and = zext i16 %78 to i32
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %ads7846_stop.exit.if.end75_crit_edge
  %status.0 = phi i32 [ %and, %if.then72 ], [ %call69, %ads7846_stop.exit.if.end75_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %if.end75 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_debounce(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ads7846_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %model = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %model to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7843, i16 %3)
  %cmp = icmp eq i16 %3, 7843
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %cmp3 = icmp slt i32 %index, 2
  %or.cond = and i1 %cmp3, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 7845, i16 %3)
  %cmp7 = icmp ne i16 %3, 7845
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %cmp10.not = icmp eq i32 %index, 2
  %or.cond17 = or i1 %cmp10.not, %cmp7
  br i1 %or.cond17, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %if.end13 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp0_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spi = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call2 = tail call fastcc i32 @ads7846_read12_ser(ptr noundef %3, i32 noundef 132)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.68, i32 noundef %call2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spi = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call2 = tail call fastcc i32 @ads7846_read12_ser(ptr noundef %3, i32 noundef 244)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.68, i32 noundef %call2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in0_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spi = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call2 = tail call fastcc i32 @ads7846_read12_ser(ptr noundef %3, i32 noundef 228)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vref_mv.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %vref_mv.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vref_mv.i, align 2
  %conv.i = zext i16 %5 to i32
  %mul.i = mul i32 %call2, %conv.i
  %shr.i = lshr i32 %mul.i, 12
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.68, i32 noundef %shr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in1_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spi = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call2 = tail call fastcc i32 @ads7846_read12_ser(ptr noundef %3, i32 noundef 164)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vref_mv.i.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %vref_mv.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vref_mv.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %mul.i.i = mul i32 %call2, %conv.i.i
  %shr.i.i = lshr i32 %mul.i.i, 12
  %model.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %model.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %model.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7846, i16 %7)
  %cmp.i = icmp eq i16 %7, 7846
  %mul.i = shl nuw nsw i32 %shr.i.i, 2
  %spec.select.i = select i1 %cmp.i, i32 %mul.i, i32 %shr.i.i
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.68, i32 noundef %spec.select.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ads7846_restart(ptr nocapture noundef %ts) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %disabled = getelementptr inbounds %struct.ads7846, ptr %ts, i32 0, i32 28
  %0 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disabled, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %suspended = getelementptr inbounds %struct.ads7846, ptr %ts, i32 0, i32 29
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %pendown = getelementptr inbounds %struct.ads7846, ptr %ts, i32 0, i32 17
  %4 = ptrtoint ptr %pendown to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pendown, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %land.lhs.true3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true3:                                   ; preds = %if.then
  %get_pendown_state.i = getelementptr inbounds %struct.ads7846, ptr %ts, i32 0, i32 32
  %6 = ptrtoint ptr %get_pendown_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_pendown_state.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 %7() #12
  br label %get_pendown_state.exit

if.end.i:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  %gpio_pendown.i = getelementptr inbounds %struct.ads7846, ptr %ts, i32 0, i32 33
  %8 = ptrtoint ptr %gpio_pendown.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_pendown.i, align 4
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %9) #12
  %call1.i.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool3.not.i = icmp eq i32 %call1.i.i, 0
  %lnot.ext.i = zext i1 %tobool3.not.i to i32
  br label %get_pendown_state.exit

get_pendown_state.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %lnot.ext.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool4.not, label %if.then5, label %get_pendown_state.exit.if.end_crit_edge

get_pendown_state.exit.if.end_crit_edge:          ; preds = %get_pendown_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then5:                                         ; preds = %get_pendown_state.exit
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ts, align 4
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 330, i32 noundef 0) #12
  tail call void @input_event(ptr noundef %11, i32 noundef 3, i32 noundef 24, i32 noundef 0) #12
  tail call void @input_event(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %12 = ptrtoint ptr %pendown to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %pendown, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %get_pendown_state.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %stopped = getelementptr inbounds %struct.ads7846, ptr %ts, i32 0, i32 27
  %13 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %stopped, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !195
  tail call void @arm_heavy_mb() #12
  %spi = getelementptr inbounds %struct.ads7846, ptr %ts, i32 0, i32 3
  %14 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %17) #12
  br label %if.end6

if.end6:                                          ; preds = %if.end, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads7846_pen_down_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pendown = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %pendown to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pendown, align 4, !range !192
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.68, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads7846_disable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %disabled = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 1, !range !192
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.68, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads7846_disable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %i, align 4, !annotation !191
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  %lock.i9 = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %lock.i9, i32 noundef 0) #12
  %disabled.i10 = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 28
  %5 = ptrtoint ptr %disabled.i10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %disabled.i10, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i11 = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  br i1 %tobool.not.i11, label %if.then.i, label %if.then3.cleanup.sink.split_crit_edge

if.then3.cleanup.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %if.then3
  %suspended.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %suspended.i, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not.i = icmp eq i8 %8, 0
  br i1 %tobool1.not.i, label %__ads7846_disable.exit.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

__ads7846_disable.exit.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %stopped.i.i.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %stopped.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %stopped.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  call void @arm_heavy_mb() #12
  %wait.i.i.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 16
  call void @__wake_up(ptr noundef %wait.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %spi.i.i.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %spi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi.i.i.i, align 4
  %irq.i.i.i = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i.i.i, align 4
  call void @disable_irq(i32 noundef %13) #12
  %reg.i.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i.i, align 4
  %call.i.i = call i32 @regulator_disable(ptr noundef %15) #12
  br label %if.end.i

if.end.i:                                         ; preds = %__ads7846_disable.exit.i, %if.then.i.if.end.i_crit_edge
  %16 = ptrtoint ptr %disabled.i10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %disabled.i10, align 1
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  br i1 %tobool.not.i11, label %if.else.cleanup.sink.split_crit_edge, label %if.then.i13

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then.i13:                                      ; preds = %if.else
  %17 = ptrtoint ptr %disabled.i10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %disabled.i10, align 1
  %suspended.i12 = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 29
  %18 = ptrtoint ptr %suspended.i12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %suspended.i12, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.i = icmp eq i8 %19, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.then.i13.cleanup.sink.split_crit_edge

if.then.i13.cleanup.sink.split_crit_edge:         ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then3.i:                                       ; preds = %if.then.i13
  %reg.i.i14 = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %reg.i.i14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg.i.i14, align 4
  %call.i.i15 = call i32 @regulator_enable(ptr noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %cmp.not.i.i = icmp eq i32 %call.i.i15, 0
  br i1 %cmp.not.i.i, label %if.then3.i.__ads7846_enable.exit.i_crit_edge, label %do.end.i.i

if.then3.i.__ads7846_enable.exit.i_crit_edge:     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ads7846_enable.exit.i

do.end.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %spi.i.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.74, i32 noundef %call.i.i15) #15
  br label %__ads7846_enable.exit.i

__ads7846_enable.exit.i:                          ; preds = %do.end.i.i, %if.then3.i.__ads7846_enable.exit.i_crit_edge
  call fastcc void @ads7846_restart(ptr noundef %1) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %__ads7846_enable.exit.i, %if.then.i13.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %if.end.i, %if.then3.cleanup.sink.split_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i9) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %count, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads7846_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %suspended = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  %disabled = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disabled, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %__ads7846_disable.exit, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

__ads7846_disable.exit:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %stopped.i.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %stopped.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %stopped.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !194
  tail call void @arm_heavy_mb() #12
  %wait.i.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %spi.i.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi.i.i, align 4
  %irq.i.i = getelementptr inbounds %struct.spi_device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i.i, align 4
  tail call void @disable_irq(i32 noundef %10) #12
  %reg.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %12) #12
  br label %if.end

if.end:                                           ; preds = %__ads7846_disable.exit, %if.then.if.end_crit_edge
  %spi = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.end8_crit_edge, label %device_may_wakeup.exit

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 6
  %16 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %17, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end8_crit_edge, label %if.then5

device_may_wakeup.exit.if.end8_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %irq = getelementptr inbounds %struct.spi_device, ptr %14, i32 0, i32 8
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call.i19 = tail call i32 @irq_set_irq_wake(i32 noundef %19, i32 noundef 1) #12
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %device_may_wakeup.exit.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %20 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %suspended, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %entry.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads7846_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %suspended = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %suspended, align 2
  %spi = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %device_may_wakeup.exit

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

device_may_wakeup.exit:                           ; preds = %if.then
  %wakeup.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 12, i32 6
  %8 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %9, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then4

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %irq = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 8
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef 0) #12
  br label %if.end

if.end:                                           ; preds = %if.then4, %device_may_wakeup.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %disabled = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 28
  %12 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %disabled, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.end
  %reg.i = getelementptr inbounds %struct.ads7846, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i, align 4
  %call.i19 = tail call i32 @regulator_enable(ptr noundef %15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp.not.i = icmp eq i32 %call.i19, 0
  br i1 %cmp.not.i, label %if.then8.__ads7846_enable.exit_crit_edge, label %do.end.i

if.then8.__ads7846_enable.exit_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ads7846_enable.exit

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.74, i32 noundef %call.i19) #15
  br label %__ads7846_enable.exit

__ads7846_enable.exit:                            ; preds = %do.end.i, %if.then8.__ads7846_enable.exit_crit_edge
  tail call fastcc void @ads7846_restart(ptr noundef %1) #12
  br label %if.end10

if.end10:                                         ; preds = %__ads7846_enable.exit, %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !127, !129, !130, !131, !132, !134, !136, !137, !138, !140, !141, !142, !143, !145, !147, !149, !151, !152, !153, !155, !156, !158, !159, !161, !162, !164, !166, !168, !169, !171, !172, !174, !175, !176, !177, !179}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @__initcall__kmod_ads7846__293_1433_ads7846_driver_init6, !1, !"__initcall__kmod_ads7846__293_1433_ads7846_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1433, i32 1}
!2 = !{ptr @__exitcall_ads7846_driver_exit, !1, !"__exitcall_ads7846_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1435, i32 1}
!5 = !{ptr @__UNIQUE_ID_file295, !6, !"__UNIQUE_ID_file295", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1436, i32 1}
!7 = !{ptr @__UNIQUE_ID_license296, !6, !"__UNIQUE_ID_license296", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias297, !9, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1437, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1425, i32 11}
!12 = !{ptr @ads7846_driver, !13, !"ads7846_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1423, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1223, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ads7846_probe.__UNIQUE_ID_ddebug291, !15, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1229, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ads7846_probe._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @ads7846_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @ads7846_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1264, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ads7846_probe.__key.8, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1265, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1301, i32 39}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1302, i32 39}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1341, i32 36}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1344, i32 3}
!39 = !{ptr @ads7846_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ads7846_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1350, i32 3}
!43 = !{ptr @ads7846_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ads7846_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1365, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ads7846_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ads7846_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1375, i32 3}
!52 = !{ptr @ads7846_probe.__UNIQUE_ID_ddebug292, !51, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1383, i32 2}
!55 = !{ptr @ads7846_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ads7846_probe._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1138, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ads7846_probe_dt._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ads7846_probe_dt._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1144, i32 3}
!64 = !{ptr @ads7846_probe_dt._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ads7846_probe_dt._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1154, i32 29}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1156, i32 29}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1157, i32 52}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1159, i32 47}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1161, i32 29}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1163, i32 29}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1166, i32 29}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1167, i32 29}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1169, i32 29}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1170, i32 29}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1171, i32 29}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1172, i32 29}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1178, i32 29}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1179, i32 34}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1181, i32 29}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1183, i32 29}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1184, i32 34}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1186, i32 29}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1187, i32 29}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1189, i32 29}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1192, i32 46}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1193, i32 32}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1195, i32 56}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1010, i32 20}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1012, i32 4}
!116 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ads7846_setup_pendown._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @ads7846_setup_pendown._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1024, i32 3}
!121 = !{ptr @ads7846_setup_pendown._entry.58, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @ads7846_setup_pendown._entry_ptr.60, !120, !"_entry_ptr", i1 false, i1 false}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../drivers/input/touchscreen/ads7846.c", i32 759, i32 3}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../drivers/input/touchscreen/ads7846.c", i32 742, i32 3}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/input/touchscreen/ads7846.c", i32 813, i32 4}
!129 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ads7846_read_state._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @ads7846_read_state._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = distinct !{null, !133, !"__already_done", i1 false, i1 false}
!133 = !{!"../drivers/input/touchscreen/ads7846.c", i32 722, i32 3}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/input/touchscreen/ads7846.c", i32 559, i32 4}
!136 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @ads784x_hwmon_register.__UNIQUE_ID_ddebug290, !135, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/touchscreen/ads7846.c", i32 567, i32 4}
!140 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ads784x_hwmon_register._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @ads784x_hwmon_register._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @ads7846_attr_groups, !144, !"ads7846_attr_groups", i1 false, i1 false}
!144 = !{!"../drivers/input/touchscreen/ads7846.c", i32 549, i32 1}
!145 = !{ptr @ads7846_attr_group, !146, !"ads7846_attr_group", i1 false, i1 false}
!146 = !{!"../drivers/input/touchscreen/ads7846.c", i32 545, i32 37}
!147 = !{ptr @ads7846_attributes, !148, !"ads7846_attributes", i1 false, i1 false}
!148 = !{!"../drivers/input/touchscreen/ads7846.c", i32 537, i32 26}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/input/touchscreen/ads7846.c", i32 490, i32 1}
!151 = !{ptr @dev_attr_temp0, !150, !"dev_attr_temp0", i1 false, i1 false}
!152 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/input/touchscreen/ads7846.c", i32 491, i32 1}
!155 = !{ptr @dev_attr_temp1, !154, !"dev_attr_temp1", i1 false, i1 false}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/input/touchscreen/ads7846.c", i32 520, i32 1}
!158 = !{ptr @dev_attr_in0_input, !157, !"dev_attr_in0_input", i1 false, i1 false}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/input/touchscreen/ads7846.c", i32 521, i32 1}
!161 = !{ptr @dev_attr_in1_input, !160, !"dev_attr_in1_input", i1 false, i1 false}
!162 = !{ptr @ads784x_attr_group, !163, !"ads784x_attr_group", i1 false, i1 false}
!163 = !{!"../drivers/input/touchscreen/ads7846.c", i32 636, i32 37}
!164 = !{ptr @ads784x_attributes, !165, !"ads784x_attributes", i1 false, i1 false}
!165 = !{!"../drivers/input/touchscreen/ads7846.c", i32 630, i32 26}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/input/touchscreen/ads7846.c", i32 598, i32 8}
!168 = !{ptr @dev_attr_pen_down, !167, !"dev_attr_pen_down", i1 false, i1 false}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/input/touchscreen/ads7846.c", i32 628, i32 8}
!171 = !{ptr @dev_attr_disable, !170, !"dev_attr_disable", i1 false, i1 false}
!172 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/input/touchscreen/ads7846.c", i32 286, i32 3}
!174 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @__ads7846_enable._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @__ads7846_enable._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @ads7846_dt_ids, !178, !"ads7846_dt_ids", i1 false, i1 false}
!178 = !{!"../drivers/input/touchscreen/ads7846.c", i32 1120, i32 34}
!179 = !{ptr @ads7846_pm, !180, !"ads7846_pm", i1 false, i1 false}
!180 = !{!"../drivers/input/touchscreen/ads7846.c", i32 991, i32 8}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{i64 2148786975, i64 2148786980, i64 2148786993, i64 2148787037, i64 2148787071, i64 2148787092}
!191 = !{!"auto-init"}
!192 = !{i8 0, i8 2}
!193 = !{!"branch_weights", i32 2000, i32 1}
!194 = !{i64 2155369797}
!195 = !{i64 2155370055}
