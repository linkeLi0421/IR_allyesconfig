; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/usb251xb.c_pt.bc'
source_filename = "../drivers/usb/misc/usb251xb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb251xb_data = type { i16, i8, i8, i8, [31 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb251xb = type { ptr, ptr, ptr, i8, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, [62 x i8], [62 x i8], [62 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_usb251xb__305_769_usb251xb_i2c_driver_init6 = internal global ptr @usb251xb_i2c_driver_init, section ".initcall6.init", align 4
@usb251xb_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @usb251xb_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usb251xb_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb251xb_pm_ops, ptr null, ptr null }, ptr @usb251xb_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_usb251xb_i2c_driver_exit = internal global ptr @usb251xb_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [62 x i8] c"usb251xb.author=Richard Leitner <richard.leitner@skidata.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [63 x i8] c"usb251xb.description=USB251x/xBi USB 2.0 Hub Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [40 x i8] c"usb251xb.file=drivers/usb/misc/usb251xb\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [21 x i8] c"usb251xb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb251xb\00", [23 x i8] zeroinitializer }, align 32
@usb251xb_of_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,usb2422\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usb2422_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,usb2512b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usb2512b_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,usb2512bi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usb2512bi_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,usb2513b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usb2513b_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,usb2513bi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usb2513bi_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,usb2514b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usb2514b_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,usb2514bi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usb2514bi_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,usb2517\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usb2517_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,usb2517i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usb2517i_data }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@usb251xb_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @usb251xb_suspend, ptr @usb251xb_resume, ptr @usb251xb_suspend, ptr @usb251xb_resume, ptr @usb251xb_suspend, ptr @usb251xb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@usb251xb_id = internal constant { [10 x %struct.i2c_device_id], [48 x i8] } { [10 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"usb2422\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"usb2512b\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"usb2512bi\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"usb2513b\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"usb2513bi\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"usb2514b\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"usb2514bi\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"usb2517\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"usb2517i\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@usb251xb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 658, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get ofdata: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb251xb_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/misc/usb251xb.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb251xb_probe._entry_ptr = internal global ptr @usb251xb_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@usb251xb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 697, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to connect hub (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@usb251xb_probe._entry_ptr.9 = internal global ptr @usb251xb_probe._entry.7, section ".printk_index", align 4
@usb251xb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 701, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hub probed successfully\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@usb251xb_probe._entry_ptr.13 = internal global ptr @usb251xb_probe._entry.10, section ".printk_index", align 4
@usb251xb_get_ofdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get ofdata\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb251xb_get_ofdata\00", [44 x i8] zeroinitializer }, align 32
@usb251xb_get_ofdata._entry_ptr = internal global ptr @usb251xb_get_ofdata._entry, section ".printk_index", align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"skip-config\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@usb251xb_get_ofdata._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.3, i32 423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to request GPIO reset pin (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@usb251xb_get_ofdata._entry_ptr.20 = internal global ptr @usb251xb_get_ofdata._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vendor-id\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"product-id\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"device-id\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"self-powered\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ganged-sensing\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"individual-sensing\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bus-powered\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"disable-hi-speed\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"multi-tt\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"single-tt\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"disable-eop\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"individual-port-switching\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ganged-port-switching\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dynamic-power-switching\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"oc-delay-us\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"compound-device\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port-mapping-mode\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"led-usb-mode\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"string-support\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"non-removable-ports\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sp-disabled-ports\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bp-disabled-ports\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sp-max-total-current-microamp\00", [34 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bp-max-total-current-microamp\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sp-max-removable-current-microamp\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bp-max-removable-current-microamp\00", [62 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"power-on-time-ms\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"language-id\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"boost-up\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"manufacturer\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Microchip\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"product\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"swap-dx-lanes\00", [18 x i8] zeroinitializer }, align 32
@usb251xb_get_ports_field._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 394, ptr @.str.58, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"port %u doesn't exist\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb251xb_get_ports_field\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usb251xb_get_ports_field._entry_ptr = internal global ptr @usb251xb_get_ports_field._entry, section ".printk_index", align 4
@usb251x_check_gpio_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Reset GPIO chip is at the same i2c-bus\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb251x_check_gpio_chip\00", [40 x i8] zeroinitializer }, align 32
@usb251x_check_gpio_chip._entry_ptr = internal global ptr @usb251x_check_gpio_chip._entry, section ".printk_index", align 4
@i2c_adapter_type = external dso_local global %struct.device_type, align 4
@usb251xb_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 295, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Skip hub configuration, only attach.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb251xb_connect\00", [47 x i8] zeroinitializer }, align 32
@usb251xb_connect._entry_ptr = internal global ptr @usb251xb_connect._entry, section ".printk_index", align 4
@usb251xb_connect._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"attaching hub failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@usb251xb_connect._entry_ptr.65 = internal global ptr @usb251xb_connect._entry.63, section ".printk_index", align 4
@usb251xb_connect.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.3, ptr @.str.66, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"writing %d byte block %d to 0x%02X\0A\00", [60 x i8] zeroinitializer }, align 32
@usb251xb_connect._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.62, ptr @.str.3, i32 372, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Hub configuration was successful.\0A\00", [61 x i8] zeroinitializer }, align 32
@usb251xb_connect._entry_ptr.69 = internal global ptr @usb251xb_connect._entry.67, section ".printk_index", align 4
@usb251xb_connect._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.62, ptr @.str.3, i32 376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"configuring block %d failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@usb251xb_connect._entry_ptr.72 = internal global ptr @usb251xb_connect._entry.70, section ".printk_index", align 4
@usb2422_data = internal constant { %struct.usb251xb_data, [60 x i8] } { %struct.usb251xb_data { i16 9250, i8 2, i8 0, i8 1, [31 x i8] c"USB2422\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [60 x i8] zeroinitializer }, align 32
@usb2512b_data = internal constant { %struct.usb251xb_data, [60 x i8] } { %struct.usb251xb_data { i16 9490, i8 2, i8 0, i8 1, [31 x i8] c"USB2512B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [60 x i8] zeroinitializer }, align 32
@usb2512bi_data = internal constant { %struct.usb251xb_data, [60 x i8] } { %struct.usb251xb_data { i16 9490, i8 2, i8 0, i8 1, [31 x i8] c"USB2512Bi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [60 x i8] zeroinitializer }, align 32
@usb2513b_data = internal constant { %struct.usb251xb_data, [60 x i8] } { %struct.usb251xb_data { i16 9491, i8 3, i8 0, i8 1, [31 x i8] c"USB2513B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [60 x i8] zeroinitializer }, align 32
@usb2513bi_data = internal constant { %struct.usb251xb_data, [60 x i8] } { %struct.usb251xb_data { i16 9491, i8 3, i8 0, i8 1, [31 x i8] c"USB2513Bi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [60 x i8] zeroinitializer }, align 32
@usb2514b_data = internal constant { %struct.usb251xb_data, [60 x i8] } { %struct.usb251xb_data { i16 9492, i8 4, i8 0, i8 1, [31 x i8] c"USB2514B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [60 x i8] zeroinitializer }, align 32
@usb2514bi_data = internal constant { %struct.usb251xb_data, [60 x i8] } { %struct.usb251xb_data { i16 9492, i8 4, i8 0, i8 1, [31 x i8] c"USB2514Bi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [60 x i8] zeroinitializer }, align 32
@usb2517_data = internal constant { %struct.usb251xb_data, [60 x i8] } { %struct.usb251xb_data { i16 9495, i8 7, i8 1, i8 0, [31 x i8] c"USB2517\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [60 x i8] zeroinitializer }, align 32
@usb2517i_data = internal constant { %struct.usb251xb_data, [60 x i8] } { %struct.usb251xb_data { i16 9495, i8 7, i8 1, i8 0, [31 x i8] c"USB2517i\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 100, i64 4000, i64 16000]
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"usb251xb_i2c_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 759, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 761, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"usb251xb_of_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 600, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"usb251xb_pm_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 743, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"usb251xb_id\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 745, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 658, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 682, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 697, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 701, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 409, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 413, i32 26 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 418, i32 49 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 423, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 427, i32 37 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 430, i32 37 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 434, i32 37 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 438, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 443, i32 27 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 445, i32 32 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 447, i32 33 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 454, i32 26 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 457, i32 26 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 459, i32 31 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 462, i32 26 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 465, i32 26 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 467, i32 31 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 471, i32 26 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 474, i32 32 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 494, i32 26 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 498, i32 26 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 501, i32 47 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 504, i32 26 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 508, i32 32 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 512, i32 32 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 516, i32 32 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 520, i32 32 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 525, i32 32 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 530, i32 32 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 535, i32 32 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 540, i32 32 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 543, i32 37 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 546, i32 30 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 549, i32 39 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 550, i32 34 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 559, i32 39 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 568, i32 39 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 569, i32 34 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 583, i32 32 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 394, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 256, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 295, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 304, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 362, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 372, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 376, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [13 x i8] c"usb2422_data\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 159, i32 35 }
@___asan_gen_.304 = private unnamed_addr constant [14 x i8] c"usb2512b_data\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 167, i32 35 }
@___asan_gen_.307 = private unnamed_addr constant [15 x i8] c"usb2512bi_data\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 175, i32 35 }
@___asan_gen_.310 = private unnamed_addr constant [14 x i8] c"usb2513b_data\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 183, i32 35 }
@___asan_gen_.313 = private unnamed_addr constant [15 x i8] c"usb2513bi_data\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 191, i32 35 }
@___asan_gen_.316 = private unnamed_addr constant [14 x i8] c"usb2514b_data\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 199, i32 35 }
@___asan_gen_.319 = private unnamed_addr constant [15 x i8] c"usb2514bi_data\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 207, i32 35 }
@___asan_gen_.322 = private unnamed_addr constant [13 x i8] c"usb2517_data\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 215, i32 35 }
@___asan_gen_.325 = private unnamed_addr constant [14 x i8] c"usb2517i_data\00", align 1
@___asan_gen_.326 = private constant [31 x i8] c"../drivers/usb/misc/usb251xb.c\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 223, i32 35 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_usb251xb_i2c_driver_exit, ptr @__initcall__kmod_usb251xb__305_769_usb251xb_i2c_driver_init6, ptr @usb251x_check_gpio_chip._entry, ptr @usb251x_check_gpio_chip._entry_ptr, ptr @usb251xb_connect._entry, ptr @usb251xb_connect._entry.63, ptr @usb251xb_connect._entry.67, ptr @usb251xb_connect._entry.70, ptr @usb251xb_connect._entry_ptr, ptr @usb251xb_connect._entry_ptr.65, ptr @usb251xb_connect._entry_ptr.69, ptr @usb251xb_connect._entry_ptr.72, ptr @usb251xb_get_ofdata._entry, ptr @usb251xb_get_ofdata._entry.18, ptr @usb251xb_get_ofdata._entry_ptr, ptr @usb251xb_get_ofdata._entry_ptr.20, ptr @usb251xb_get_ports_field._entry, ptr @usb251xb_get_ports_field._entry_ptr, ptr @usb251xb_i2c_driver_exit, ptr @usb251xb_probe._entry, ptr @usb251xb_probe._entry.10, ptr @usb251xb_probe._entry.7, ptr @usb251xb_probe._entry_ptr, ptr @usb251xb_probe._entry_ptr.13, ptr @usb251xb_probe._entry_ptr.9, ptr @usb251xb_i2c_driver, ptr @.str, ptr @usb251xb_of_match, ptr @usb251xb_pm_ops, ptr @usb251xb_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @usb2422_data, ptr @usb2512b_data, ptr @usb2512bi_data, ptr @usb2513b_data, ptr @usb2513bi_data, ptr @usb2514b_data, ptr @usb2514bi_data, ptr @usb2517_data, ptr @usb2517i_data], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251xb_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251xb_of_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251xb_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251xb_id to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251xb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251xb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251xb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251xb_get_ofdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251xb_get_ofdata._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251xb_get_ports_field._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251x_check_gpio_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251xb_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251xb_connect._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251xb_connect._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb251xb_connect._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2422_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2512b_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2512bi_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2513b_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2513bi_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2514b_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2514bi_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2517_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2517i_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb251xb_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @usb251xb_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb251xb_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @usb251xb_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb251xb_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %port.i605.i.i = alloca i32, align 4
  %port.i578.i.i = alloca i32, align 4
  %port.i558.i.i = alloca i32, align 4
  %port.i.i.i = alloca i32, align 4
  %property_u32.i.i = alloca i32, align 4
  %str.i.i = alloca [31 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 240, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %i2c3 = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %i2c3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %i2c3, align 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %call.i12 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %tobool.not.i = icmp eq ptr %4, null
  %tobool2.not.i = icmp eq ptr %call.i12, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %if.end.if.end6.i_crit_edge, label %if.then.i

if.end.if.end6.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i:                                        ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property_u32.i.i) #8
  %9 = ptrtoint ptr %property_u32.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %property_u32.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %str.i.i) #8
  %tobool.not.i.i = icmp eq ptr %8, null
  %10 = call ptr @memset(ptr %str.i.i, i32 255, i32 31)
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.14) #11
  br label %usb251xb_get_ofdata.exit.thread.i

if.end.i.i:                                       ; preds = %if.then.i
  %call.i.i = tail call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.16, ptr noundef null) #8
  %tobool2.not.i.i = icmp ne ptr %call.i.i, null
  %spec.select.i.i = zext i1 %tobool2.not.i.i to i8
  %11 = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.select.i.i, ptr %11, align 4
  %call6.i.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.17, i32 noundef 7) #8
  %gpio_reset.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %gpio_reset.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call6.i.i, ptr %gpio_reset.i.i, align 4
  %14 = ptrtoint ptr %call6.i.i to i32
  %cmp.i.i = icmp eq ptr %call6.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i.i, label %if.end.i.i.usb251xb_get_ofdata.exit.thread.i_crit_edge, label %if.else10.i.i

if.end.i.i.usb251xb_get_ofdata.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb251xb_get_ofdata.exit.thread.i

if.else10.i.i:                                    ; preds = %if.end.i.i
  %cmp.i.i.i = icmp ugt ptr %call6.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %usb251xb_get_ofdata.exit.i, label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else10.i.i
  %vendor_id.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 5
  %call.i.i.i = tail call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.21, ptr noundef %vendor_id.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool22.not.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool22.not.i.i, label %if.end20.i.i.if.end25.i.i_crit_edge, label %if.then23.i.i

if.end20.i.i.if.end25.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i

if.then23.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %vendor_id.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1060, ptr %vendor_id.i.i, align 4
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then23.i.i, %if.end20.i.i.if.end25.i.i_crit_edge
  %product_id.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 6
  %call.i555.i.i = tail call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.22, ptr noundef %product_id.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i555.i.i)
  %tobool27.not.i.i = icmp sgt i32 %call.i555.i.i, -1
  br i1 %tobool27.not.i.i, label %if.end25.i.i.if.end31.i.i_crit_edge, label %if.then28.i.i

if.end25.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i.i

if.then28.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call.i12 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %call.i12, align 2
  %18 = ptrtoint ptr %product_id.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %product_id.i.i, align 2
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then28.i.i, %if.end25.i.i.if.end31.i.i_crit_edge
  %device_id.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 7
  %call.i556.i.i = tail call i32 @of_property_read_variable_u16_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.23, ptr noundef %device_id.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i556.i.i)
  %tobool33.not.i.i = icmp sgt i32 %call.i556.i.i, -1
  br i1 %tobool33.not.i.i, label %if.end31.i.i.if.end36.i.i_crit_edge, label %if.then34.i.i

if.end31.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i.i

if.then34.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2995, ptr %device_id.i.i, align 4
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then34.i.i, %if.end31.i.i.if.end36.i.i_crit_edge
  %conf_data1.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %conf_data1.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -101, ptr %conf_data1.i.i, align 2
  %call37.i.i = tail call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.24, ptr noundef null) #8
  %tobool38.not.i.i = icmp eq ptr %call37.i.i, null
  br i1 %tobool38.not.i.i, label %if.else62.i.i, label %if.then39.i.i

if.then39.i.i:                                    ; preds = %if.end36.i.i
  %21 = ptrtoint ptr %conf_data1.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %conf_data1.i.i, align 2
  %23 = and i8 %22, 123
  %24 = or i8 %23, -128
  store i8 %24, ptr %conf_data1.i.i, align 2
  %call45.i.i = tail call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.25, ptr noundef null) #8
  %tobool46.not.i.i = icmp eq ptr %call45.i.i, null
  br i1 %tobool46.not.i.i, label %if.else52.i.i, label %if.then47.i.i

if.then47.i.i:                                    ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %conf_data1.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %conf_data1.i.i, align 2
  %27 = and i8 %26, -3
  br label %if.end75.sink.split.i.i

if.else52.i.i:                                    ; preds = %if.then39.i.i
  %call53.i.i = tail call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.26, ptr noundef null) #8
  %tobool54.not.i.i = icmp eq ptr %call53.i.i, null
  br i1 %tobool54.not.i.i, label %if.else52.i.i.if.end75.i.i_crit_edge, label %if.then55.i.i

if.else52.i.i.if.end75.i.i_crit_edge:             ; preds = %if.else52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i.i

if.then55.i.i:                                    ; preds = %if.else52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %conf_data1.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %conf_data1.i.i, align 2
  %30 = or i8 %29, 2
  br label %if.end75.sink.split.i.i

if.else62.i.i:                                    ; preds = %if.end36.i.i
  %call63.i.i = tail call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.27, ptr noundef null) #8
  %tobool64.not.i.i = icmp eq ptr %call63.i.i, null
  br i1 %tobool64.not.i.i, label %if.else62.i.i.if.end75.i.i_crit_edge, label %if.then65.i.i

if.else62.i.i.if.end75.i.i_crit_edge:             ; preds = %if.else62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i.i

if.then65.i.i:                                    ; preds = %if.else62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %conf_data1.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %conf_data1.i.i, align 2
  %33 = and i8 %32, 123
  %34 = or i8 %33, 4
  br label %if.end75.sink.split.i.i

if.end75.sink.split.i.i:                          ; preds = %if.then65.i.i, %if.then55.i.i, %if.then47.i.i
  %.sink.i.i = phi i8 [ %34, %if.then65.i.i ], [ %27, %if.then47.i.i ], [ %30, %if.then55.i.i ]
  %35 = ptrtoint ptr %conf_data1.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink.i.i, ptr %conf_data1.i.i, align 2
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %if.end75.sink.split.i.i, %if.else62.i.i.if.end75.i.i_crit_edge, %if.else52.i.i.if.end75.i.i_crit_edge
  %call76.i.i = tail call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.28, ptr noundef null) #8
  %tobool77.not.i.i = icmp eq ptr %call76.i.i, null
  br i1 %tobool77.not.i.i, label %if.end75.i.i.if.end83.i.i_crit_edge, label %if.then78.i.i

if.end75.i.i.if.end83.i.i_crit_edge:              ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83.i.i

if.then78.i.i:                                    ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %conf_data1.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %conf_data1.i.i, align 2
  %38 = or i8 %37, 32
  store i8 %38, ptr %conf_data1.i.i, align 2
  br label %if.end83.i.i

if.end83.i.i:                                     ; preds = %if.then78.i.i, %if.end75.i.i.if.end83.i.i_crit_edge
  %call84.i.i = tail call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.29, ptr noundef null) #8
  %tobool85.not.i.i = icmp eq ptr %call84.i.i, null
  br i1 %tobool85.not.i.i, label %if.else91.i.i, label %if.then86.i.i

if.then86.i.i:                                    ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %conf_data1.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %conf_data1.i.i, align 2
  %41 = or i8 %40, 16
  br label %if.end100.sink.split.i.i

if.else91.i.i:                                    ; preds = %if.end83.i.i
  %call92.i.i = tail call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.30, ptr noundef null) #8
  %tobool93.not.i.i = icmp eq ptr %call92.i.i, null
  br i1 %tobool93.not.i.i, label %if.else91.i.i.if.end100.i.i_crit_edge, label %if.then94.i.i

if.else91.i.i.if.end100.i.i_crit_edge:            ; preds = %if.else91.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100.i.i

if.then94.i.i:                                    ; preds = %if.else91.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %conf_data1.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %conf_data1.i.i, align 2
  %44 = and i8 %43, -17
  br label %if.end100.sink.split.i.i

if.end100.sink.split.i.i:                         ; preds = %if.then94.i.i, %if.then86.i.i
  %.sink625.i.i = phi i8 [ %44, %if.then94.i.i ], [ %41, %if.then86.i.i ]
  %45 = ptrtoint ptr %conf_data1.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink625.i.i, ptr %conf_data1.i.i, align 2
  br label %if.end100.i.i

if.end100.i.i:                                    ; preds = %if.end100.sink.split.i.i, %if.else91.i.i.if.end100.i.i_crit_edge
  %call101.i.i = tail call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.31, ptr noundef null) #8
  %tobool102.not.i.i = icmp eq ptr %call101.i.i, null
  br i1 %tobool102.not.i.i, label %if.end100.i.i.if.end108.i.i_crit_edge, label %if.then103.i.i

if.end100.i.i.if.end108.i.i_crit_edge:            ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108.i.i

if.then103.i.i:                                   ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %conf_data1.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %conf_data1.i.i, align 2
  %48 = or i8 %47, 8
  store i8 %48, ptr %conf_data1.i.i, align 2
  br label %if.end108.i.i

if.end108.i.i:                                    ; preds = %if.then103.i.i, %if.end100.i.i.if.end108.i.i_crit_edge
  %call109.i.i = tail call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.32, ptr noundef null) #8
  %tobool110.not.i.i = icmp eq ptr %call109.i.i, null
  br i1 %tobool110.not.i.i, label %if.else116.i.i, label %if.then111.i.i

if.then111.i.i:                                   ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %conf_data1.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %conf_data1.i.i, align 2
  %51 = or i8 %50, 1
  br label %if.end125.sink.split.i.i

if.else116.i.i:                                   ; preds = %if.end108.i.i
  %call117.i.i = tail call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.33, ptr noundef null) #8
  %tobool118.not.i.i = icmp eq ptr %call117.i.i, null
  br i1 %tobool118.not.i.i, label %if.else116.i.i.if.end125.i.i_crit_edge, label %if.then119.i.i

if.else116.i.i.if.end125.i.i_crit_edge:           ; preds = %if.else116.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125.i.i

if.then119.i.i:                                   ; preds = %if.else116.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %conf_data1.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %conf_data1.i.i, align 2
  %54 = and i8 %53, -2
  br label %if.end125.sink.split.i.i

if.end125.sink.split.i.i:                         ; preds = %if.then119.i.i, %if.then111.i.i
  %.sink626.i.i = phi i8 [ %54, %if.then119.i.i ], [ %51, %if.then111.i.i ]
  %55 = ptrtoint ptr %conf_data1.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %.sink626.i.i, ptr %conf_data1.i.i, align 2
  br label %if.end125.i.i

if.end125.i.i:                                    ; preds = %if.end125.sink.split.i.i, %if.else116.i.i.if.end125.i.i_crit_edge
  %conf_data2.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 9
  %56 = ptrtoint ptr %conf_data2.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 32, ptr %conf_data2.i.i, align 1
  %call126.i.i = tail call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.34, ptr noundef null) #8
  %tobool127.not.i.i = icmp eq ptr %call126.i.i, null
  br i1 %tobool127.not.i.i, label %if.end125.i.i.if.end133.i.i_crit_edge, label %if.then128.i.i

if.end125.i.i.if.end133.i.i_crit_edge:            ; preds = %if.end125.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133.i.i

if.then128.i.i:                                   ; preds = %if.end125.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %conf_data2.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %conf_data2.i.i, align 1
  %59 = or i8 %58, -128
  store i8 %59, ptr %conf_data2.i.i, align 1
  br label %if.end133.i.i

if.end133.i.i:                                    ; preds = %if.then128.i.i, %if.end125.i.i.if.end133.i.i_crit_edge
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.35, ptr noundef nonnull %property_u32.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool135.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool135.not.i.i, label %if.then136.i.i, label %if.end133.i.i.if.end184.i.i_crit_edge

if.end133.i.i.if.end184.i.i_crit_edge:            ; preds = %if.end133.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end184.i.i

if.then136.i.i:                                   ; preds = %if.end133.i.i
  %60 = ptrtoint ptr %property_u32.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %property_u32.i.i, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i32 %61, label %if.else172.i.i [
    i32 100, label %if.then139.i.i
    i32 4000, label %if.then151.i.i
    i32 16000, label %if.then163.i.i
  ]

if.then139.i.i:                                   ; preds = %if.then136.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %conf_data2.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %conf_data2.i.i, align 1
  %65 = and i8 %64, -49
  br label %if.end184.sink.split.i.i

if.then151.i.i:                                   ; preds = %if.then136.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %conf_data2.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %conf_data2.i.i, align 1
  %68 = and i8 %67, -49
  %69 = or i8 %68, 16
  br label %if.end184.sink.split.i.i

if.then163.i.i:                                   ; preds = %if.then136.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %conf_data2.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %conf_data2.i.i, align 1
  %72 = or i8 %71, 48
  br label %if.end184.sink.split.i.i

if.else172.i.i:                                   ; preds = %if.then136.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %conf_data2.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %conf_data2.i.i, align 1
  %75 = and i8 %74, -49
  %76 = or i8 %75, 32
  br label %if.end184.sink.split.i.i

if.end184.sink.split.i.i:                         ; preds = %if.else172.i.i, %if.then163.i.i, %if.then151.i.i, %if.then139.i.i
  %.sink627.i.i = phi i8 [ %65, %if.then139.i.i ], [ %72, %if.then163.i.i ], [ %76, %if.else172.i.i ], [ %69, %if.then151.i.i ]
  %77 = ptrtoint ptr %conf_data2.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %.sink627.i.i, ptr %conf_data2.i.i, align 1
  br label %if.end184.i.i

if.end184.i.i:                                    ; preds = %if.end184.sink.split.i.i, %if.end133.i.i.if.end184.i.i_crit_edge
  %call185.i.i = call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.36, ptr noundef null) #8
  %tobool186.not.i.i = icmp eq ptr %call185.i.i, null
  br i1 %tobool186.not.i.i, label %if.end184.i.i.if.end192.i.i_crit_edge, label %if.then187.i.i

if.end184.i.i.if.end192.i.i_crit_edge:            ; preds = %if.end184.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end192.i.i

if.then187.i.i:                                   ; preds = %if.end184.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %conf_data2.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %conf_data2.i.i, align 1
  %80 = or i8 %79, 8
  store i8 %80, ptr %conf_data2.i.i, align 1
  br label %if.end192.i.i

if.end192.i.i:                                    ; preds = %if.then187.i.i, %if.end184.i.i.if.end192.i.i_crit_edge
  %conf_data3.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 10
  %81 = ptrtoint ptr %conf_data3.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 2, ptr %conf_data3.i.i, align 4
  %call193.i.i = call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.37, ptr noundef null) #8
  %tobool194.not.i.i = icmp eq ptr %call193.i.i, null
  br i1 %tobool194.not.i.i, label %if.end192.i.i.if.end200.i.i_crit_edge, label %if.then195.i.i

if.end192.i.i.if.end200.i.i_crit_edge:            ; preds = %if.end192.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200.i.i

if.then195.i.i:                                   ; preds = %if.end192.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %conf_data3.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %conf_data3.i.i, align 4
  %84 = or i8 %83, 8
  store i8 %84, ptr %conf_data3.i.i, align 4
  br label %if.end200.i.i

if.end200.i.i:                                    ; preds = %if.then195.i.i, %if.end192.i.i.if.end200.i.i_crit_edge
  %led_support.i.i = getelementptr inbounds %struct.usb251xb_data, ptr %call.i12, i32 0, i32 2
  %85 = ptrtoint ptr %led_support.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %led_support.i.i, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool201.not.i.i = icmp eq i8 %86, 0
  br i1 %tobool201.not.i.i, label %if.end200.i.i.if.end210.i.i_crit_edge, label %land.lhs.true.i.i

if.end200.i.i.if.end210.i.i_crit_edge:            ; preds = %if.end200.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210.i.i

land.lhs.true.i.i:                                ; preds = %if.end200.i.i
  %call203.i.i = call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.38, ptr noundef null) #8
  %tobool204.not.i.i = icmp eq ptr %call203.i.i, null
  br i1 %tobool204.not.i.i, label %land.lhs.true.i.i.if.end210.i.i_crit_edge, label %if.then205.i.i

land.lhs.true.i.i.if.end210.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210.i.i

if.then205.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %conf_data3.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %conf_data3.i.i, align 4
  %89 = and i8 %88, -3
  store i8 %89, ptr %conf_data3.i.i, align 4
  br label %if.end210.i.i

if.end210.i.i:                                    ; preds = %if.then205.i.i, %land.lhs.true.i.i.if.end210.i.i_crit_edge, %if.end200.i.i.if.end210.i.i_crit_edge
  %call211.i.i = call ptr @of_get_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.39, ptr noundef null) #8
  %tobool212.not.i.i = icmp eq ptr %call211.i.i, null
  br i1 %tobool212.not.i.i, label %if.end210.i.i.if.end218.i.i_crit_edge, label %if.then213.i.i

if.end210.i.i.if.end218.i.i_crit_edge:            ; preds = %if.end210.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end218.i.i

if.then213.i.i:                                   ; preds = %if.end210.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %conf_data3.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %conf_data3.i.i, align 4
  %92 = or i8 %91, 1
  store i8 %92, ptr %conf_data3.i.i, align 4
  br label %if.end218.i.i

if.end218.i.i:                                    ; preds = %if.then213.i.i, %if.end210.i.i.if.end218.i.i_crit_edge
  %non_rem_dev.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 11
  %93 = ptrtoint ptr %non_rem_dev.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %non_rem_dev.i.i, align 1
  %port_cnt.i.i = getelementptr inbounds %struct.usb251xb_data, ptr %call.i12, i32 0, i32 1
  %94 = ptrtoint ptr %port_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %port_cnt.i.i, align 2
  %96 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port.i.i.i) #8
  %98 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %port.i.i.i, align 4, !annotation !181
  %of_node.i.i.i = getelementptr inbounds %struct.device, ptr %97, i32 0, i32 27
  %99 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %of_node.i.i.i, align 8
  %call.i557.i.i = call ptr @of_find_property(ptr noundef %100, ptr noundef nonnull @.str.40, ptr noundef null) #8
  %call2.i.i.i = call ptr @of_prop_next_u32(ptr noundef %call.i557.i.i, ptr noundef null, ptr noundef nonnull %port.i.i.i) #8
  %tobool.not14.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not14.i.i.i, label %if.end218.i.i.usb251xb_get_ports_field.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end218.i.i.usb251xb_get_ports_field.exit.i.i_crit_edge: ; preds = %if.end218.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb251xb_get_ports_field.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end218.i.i
  %conv5.i.i.i = zext i8 %95 to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %p.015.i.i.i = phi ptr [ %call2.i.i.i, %for.body.lr.ph.i.i.i ], [ %call10.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %101 = ptrtoint ptr %port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %port.i.i.i, align 4
  %103 = add i32 %102, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %conv5.i.i.i)
  %.not.i.i = icmp ult i32 %103, %conv5.i.i.i
  br i1 %.not.i.i, label %if.then.i.i.i, label %do.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i.i.i = shl nuw i32 1, %102
  %104 = ptrtoint ptr %non_rem_dev.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %non_rem_dev.i.i, align 1
  %106 = trunc i32 %shl.i.i.i to i8
  %conv9.i.i.i = or i8 %105, %106
  store i8 %conv9.i.i.i, ptr %non_rem_dev.i.i, align 1
  br label %for.inc.i.i.i

do.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %97, ptr noundef nonnull @.str.56, i32 noundef %102) #11
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %do.end.i.i.i, %if.then.i.i.i
  %call10.i.i.i = call ptr @of_prop_next_u32(ptr noundef %call.i557.i.i, ptr noundef nonnull %p.015.i.i.i, ptr noundef nonnull %port.i.i.i) #8
  %tobool.not.i.i.i = icmp eq ptr %call10.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i.usb251xb_get_ports_field.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.usb251xb_get_ports_field.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb251xb_get_ports_field.exit.i.i

usb251xb_get_ports_field.exit.i.i:                ; preds = %for.inc.i.i.i.usb251xb_get_ports_field.exit.i.i_crit_edge, %if.end218.i.i.usb251xb_get_ports_field.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port.i.i.i) #8
  %port_disable_sp.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 12
  %107 = ptrtoint ptr %port_disable_sp.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %port_disable_sp.i.i, align 2
  %108 = ptrtoint ptr %port_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %port_cnt.i.i, align 2
  %110 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port.i558.i.i) #8
  %112 = ptrtoint ptr %port.i558.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %port.i558.i.i, align 4, !annotation !181
  %of_node.i559.i.i = getelementptr inbounds %struct.device, ptr %111, i32 0, i32 27
  %113 = ptrtoint ptr %of_node.i559.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %of_node.i559.i.i, align 8
  %call.i560.i.i = call ptr @of_find_property(ptr noundef %114, ptr noundef nonnull @.str.41, ptr noundef null) #8
  %call2.i561.i.i = call ptr @of_prop_next_u32(ptr noundef %call.i560.i.i, ptr noundef null, ptr noundef nonnull %port.i558.i.i) #8
  %tobool.not14.i562.i.i = icmp eq ptr %call2.i561.i.i, null
  br i1 %tobool.not14.i562.i.i, label %usb251xb_get_ports_field.exit.i.i.usb251xb_get_ports_field.exit577.i.i_crit_edge, label %for.body.lr.ph.i564.i.i

usb251xb_get_ports_field.exit.i.i.usb251xb_get_ports_field.exit577.i.i_crit_edge: ; preds = %usb251xb_get_ports_field.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb251xb_get_ports_field.exit577.i.i

for.body.lr.ph.i564.i.i:                          ; preds = %usb251xb_get_ports_field.exit.i.i
  %conv5.i563.i.i = zext i8 %109 to i32
  br label %for.body.i569.i.i

for.body.i569.i.i:                                ; preds = %for.inc.i576.i.i.for.body.i569.i.i_crit_edge, %for.body.lr.ph.i564.i.i
  %p.015.i565.i.i = phi ptr [ %call2.i561.i.i, %for.body.lr.ph.i564.i.i ], [ %call10.i574.i.i, %for.inc.i576.i.i.for.body.i569.i.i_crit_edge ]
  %115 = ptrtoint ptr %port.i558.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %port.i558.i.i, align 4
  %117 = add i32 %116, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %conv5.i563.i.i)
  %.not623.i.i = icmp ult i32 %117, %conv5.i563.i.i
  br i1 %.not623.i.i, label %if.then.i572.i.i, label %do.end.i573.i.i

if.then.i572.i.i:                                 ; preds = %for.body.i569.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i570.i.i = shl nuw i32 1, %116
  %118 = ptrtoint ptr %port_disable_sp.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %port_disable_sp.i.i, align 1
  %120 = trunc i32 %shl.i570.i.i to i8
  %conv9.i571.i.i = or i8 %119, %120
  store i8 %conv9.i571.i.i, ptr %port_disable_sp.i.i, align 1
  br label %for.inc.i576.i.i

do.end.i573.i.i:                                  ; preds = %for.body.i569.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.56, i32 noundef %116) #11
  br label %for.inc.i576.i.i

for.inc.i576.i.i:                                 ; preds = %do.end.i573.i.i, %if.then.i572.i.i
  %call10.i574.i.i = call ptr @of_prop_next_u32(ptr noundef %call.i560.i.i, ptr noundef nonnull %p.015.i565.i.i, ptr noundef nonnull %port.i558.i.i) #8
  %tobool.not.i575.i.i = icmp eq ptr %call10.i574.i.i, null
  br i1 %tobool.not.i575.i.i, label %for.inc.i576.i.i.usb251xb_get_ports_field.exit577.i.i_crit_edge, label %for.inc.i576.i.i.for.body.i569.i.i_crit_edge

for.inc.i576.i.i.for.body.i569.i.i_crit_edge:     ; preds = %for.inc.i576.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i569.i.i

for.inc.i576.i.i.usb251xb_get_ports_field.exit577.i.i_crit_edge: ; preds = %for.inc.i576.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb251xb_get_ports_field.exit577.i.i

usb251xb_get_ports_field.exit577.i.i:             ; preds = %for.inc.i576.i.i.usb251xb_get_ports_field.exit577.i.i_crit_edge, %usb251xb_get_ports_field.exit.i.i.usb251xb_get_ports_field.exit577.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port.i558.i.i) #8
  %port_disable_bp.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 13
  %121 = ptrtoint ptr %port_disable_bp.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %port_disable_bp.i.i, align 1
  %122 = ptrtoint ptr %port_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %port_cnt.i.i, align 2
  %124 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port.i578.i.i) #8
  %126 = ptrtoint ptr %port.i578.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 -1, ptr %port.i578.i.i, align 4, !annotation !181
  %of_node.i579.i.i = getelementptr inbounds %struct.device, ptr %125, i32 0, i32 27
  %127 = ptrtoint ptr %of_node.i579.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %of_node.i579.i.i, align 8
  %call.i580.i.i = call ptr @of_find_property(ptr noundef %128, ptr noundef nonnull @.str.42, ptr noundef null) #8
  %call2.i581.i.i = call ptr @of_prop_next_u32(ptr noundef %call.i580.i.i, ptr noundef null, ptr noundef nonnull %port.i578.i.i) #8
  %tobool.not14.i582.i.i = icmp eq ptr %call2.i581.i.i, null
  br i1 %tobool.not14.i582.i.i, label %usb251xb_get_ports_field.exit577.i.i.usb251xb_get_ports_field.exit597.i.i_crit_edge, label %for.body.lr.ph.i584.i.i

usb251xb_get_ports_field.exit577.i.i.usb251xb_get_ports_field.exit597.i.i_crit_edge: ; preds = %usb251xb_get_ports_field.exit577.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb251xb_get_ports_field.exit597.i.i

for.body.lr.ph.i584.i.i:                          ; preds = %usb251xb_get_ports_field.exit577.i.i
  %conv5.i583.i.i = zext i8 %123 to i32
  br label %for.body.i589.i.i

for.body.i589.i.i:                                ; preds = %for.inc.i596.i.i.for.body.i589.i.i_crit_edge, %for.body.lr.ph.i584.i.i
  %p.015.i585.i.i = phi ptr [ %call2.i581.i.i, %for.body.lr.ph.i584.i.i ], [ %call10.i594.i.i, %for.inc.i596.i.i.for.body.i589.i.i_crit_edge ]
  %129 = ptrtoint ptr %port.i578.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %port.i578.i.i, align 4
  %131 = add i32 %130, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %conv5.i583.i.i)
  %.not624.i.i = icmp ult i32 %131, %conv5.i583.i.i
  br i1 %.not624.i.i, label %if.then.i592.i.i, label %do.end.i593.i.i

if.then.i592.i.i:                                 ; preds = %for.body.i589.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i590.i.i = shl nuw i32 1, %130
  %132 = ptrtoint ptr %port_disable_bp.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %port_disable_bp.i.i, align 1
  %134 = trunc i32 %shl.i590.i.i to i8
  %conv9.i591.i.i = or i8 %133, %134
  store i8 %conv9.i591.i.i, ptr %port_disable_bp.i.i, align 1
  br label %for.inc.i596.i.i

do.end.i593.i.i:                                  ; preds = %for.body.i589.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %125, ptr noundef nonnull @.str.56, i32 noundef %130) #11
  br label %for.inc.i596.i.i

for.inc.i596.i.i:                                 ; preds = %do.end.i593.i.i, %if.then.i592.i.i
  %call10.i594.i.i = call ptr @of_prop_next_u32(ptr noundef %call.i580.i.i, ptr noundef nonnull %p.015.i585.i.i, ptr noundef nonnull %port.i578.i.i) #8
  %tobool.not.i595.i.i = icmp eq ptr %call10.i594.i.i, null
  br i1 %tobool.not.i595.i.i, label %for.inc.i596.i.i.usb251xb_get_ports_field.exit597.i.i_crit_edge, label %for.inc.i596.i.i.for.body.i589.i.i_crit_edge

for.inc.i596.i.i.for.body.i589.i.i_crit_edge:     ; preds = %for.inc.i596.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i589.i.i

for.inc.i596.i.i.usb251xb_get_ports_field.exit597.i.i_crit_edge: ; preds = %for.inc.i596.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb251xb_get_ports_field.exit597.i.i

usb251xb_get_ports_field.exit597.i.i:             ; preds = %for.inc.i596.i.i.usb251xb_get_ports_field.exit597.i.i_crit_edge, %usb251xb_get_ports_field.exit577.i.i.usb251xb_get_ports_field.exit597.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port.i578.i.i) #8
  %max_power_sp.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 14
  %135 = ptrtoint ptr %max_power_sp.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %max_power_sp.i.i, align 4
  %call.i.i598.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.43, ptr noundef nonnull %property_u32.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i598.i.i)
  %tobool225.not.i.i = icmp sgt i32 %call.i.i598.i.i, -1
  br i1 %tobool225.not.i.i, label %if.then226.i.i, label %usb251xb_get_ports_field.exit597.i.i.if.end236.i.i_crit_edge

usb251xb_get_ports_field.exit597.i.i.if.end236.i.i_crit_edge: ; preds = %usb251xb_get_ports_field.exit597.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end236.i.i

if.then226.i.i:                                   ; preds = %usb251xb_get_ports_field.exit597.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %property_u32.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %property_u32.i.i, align 4
  %div.i.i = udiv i32 %137, 2000
  %conv228.i.i = and i32 %div.i.i, 255
  %138 = call i32 @llvm.umin.i32(i32 %conv228.i.i, i32 50) #8
  %conv234.i.i = trunc i32 %138 to i8
  %139 = ptrtoint ptr %max_power_sp.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv234.i.i, ptr %max_power_sp.i.i, align 4
  br label %if.end236.i.i

if.end236.i.i:                                    ; preds = %if.then226.i.i, %usb251xb_get_ports_field.exit597.i.i.if.end236.i.i_crit_edge
  %max_power_bp.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 15
  %140 = ptrtoint ptr %max_power_bp.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 50, ptr %max_power_bp.i.i, align 1
  %call.i.i599.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.44, ptr noundef nonnull %property_u32.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i599.i.i)
  %tobool238.not.i.i = icmp sgt i32 %call.i.i599.i.i, -1
  br i1 %tobool238.not.i.i, label %if.then239.i.i, label %if.end236.i.i.if.end255.i.i_crit_edge

if.end236.i.i.if.end255.i.i_crit_edge:            ; preds = %if.end236.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end255.i.i

if.then239.i.i:                                   ; preds = %if.end236.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %property_u32.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %property_u32.i.i, align 4
  %div240.i.i = udiv i32 %142, 2000
  %conv253.i.i = trunc i32 %div240.i.i to i8
  %143 = ptrtoint ptr %max_power_bp.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv253.i.i, ptr %max_power_bp.i.i, align 1
  br label %if.end255.i.i

if.end255.i.i:                                    ; preds = %if.then239.i.i, %if.end236.i.i.if.end255.i.i_crit_edge
  %max_current_sp.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 16
  %144 = ptrtoint ptr %max_current_sp.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %max_current_sp.i.i, align 2
  %call.i.i600.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.45, ptr noundef nonnull %property_u32.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i600.i.i)
  %tobool257.not.i.i = icmp sgt i32 %call.i.i600.i.i, -1
  br i1 %tobool257.not.i.i, label %if.then258.i.i, label %if.end255.i.i.if.end274.i.i_crit_edge

if.end255.i.i.if.end274.i.i_crit_edge:            ; preds = %if.end255.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end274.i.i

if.then258.i.i:                                   ; preds = %if.end255.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %property_u32.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %property_u32.i.i, align 4
  %div259.i.i = udiv i32 %146, 2000
  %conv262.i.i = and i32 %div259.i.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %conv262.i.i)
  %cmp264.i.i = icmp ult i32 %conv262.i.i, 50
  %phi.cast.i.i = trunc i32 %div259.i.i to i8
  %cond271.i.i = select i1 %cmp264.i.i, i8 %phi.cast.i.i, i8 50
  %147 = ptrtoint ptr %max_current_sp.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %cond271.i.i, ptr %max_current_sp.i.i, align 2
  br label %if.end274.i.i

if.end274.i.i:                                    ; preds = %if.then258.i.i, %if.end255.i.i.if.end274.i.i_crit_edge
  %max_current_bp.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 17
  %148 = ptrtoint ptr %max_current_bp.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 50, ptr %max_current_bp.i.i, align 1
  %call.i.i601.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.46, ptr noundef nonnull %property_u32.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i601.i.i)
  %tobool276.not.i.i = icmp sgt i32 %call.i.i601.i.i, -1
  br i1 %tobool276.not.i.i, label %if.then277.i.i, label %if.end274.i.i.if.end293.i.i_crit_edge

if.end274.i.i.if.end293.i.i_crit_edge:            ; preds = %if.end274.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end293.i.i

if.then277.i.i:                                   ; preds = %if.end274.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %property_u32.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %property_u32.i.i, align 4
  %div278.i.i = udiv i32 %150, 2000
  %conv281.i.i = and i32 %div278.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv281.i.i)
  %cmp283.not.i.i = icmp eq i32 %conv281.i.i, 255
  %phi.cast552.i.i = trunc i32 %div278.i.i to i8
  %cond290.i.i = select i1 %cmp283.not.i.i, i8 -1, i8 %phi.cast552.i.i
  %151 = ptrtoint ptr %max_current_bp.i.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %cond290.i.i, ptr %max_current_bp.i.i, align 1
  br label %if.end293.i.i

if.end293.i.i:                                    ; preds = %if.then277.i.i, %if.end274.i.i.if.end293.i.i_crit_edge
  %power_on_time.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 18
  %152 = ptrtoint ptr %power_on_time.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 50, ptr %power_on_time.i.i, align 4
  %call.i.i602.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.47, ptr noundef nonnull %property_u32.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i602.i.i)
  %tobool295.not.i.i = icmp sgt i32 %call.i.i602.i.i, -1
  br i1 %tobool295.not.i.i, label %if.then296.i.i, label %if.end293.i.i.if.end312.i.i_crit_edge

if.end293.i.i.if.end312.i.i_crit_edge:            ; preds = %if.end293.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end312.i.i

if.then296.i.i:                                   ; preds = %if.end293.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %property_u32.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %property_u32.i.i, align 4
  %155 = and i32 %154, 510
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %155)
  %cmp302.not.i.i = icmp eq i32 %155, 510
  %div297553.i.i = lshr i32 %154, 1
  %phi.cast554.i.i = trunc i32 %div297553.i.i to i8
  %cond309.i.i = select i1 %cmp302.not.i.i, i8 -1, i8 %phi.cast554.i.i
  %156 = ptrtoint ptr %power_on_time.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %cond309.i.i, ptr %power_on_time.i.i, align 4
  br label %if.end312.i.i

if.end312.i.i:                                    ; preds = %if.then296.i.i, %if.end293.i.i.if.end312.i.i_crit_edge
  %lang_id.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 19
  %call.i603.i.i = call i32 @of_property_read_variable_u16_array(ptr noundef %8, ptr noundef nonnull @.str.48, ptr noundef %lang_id.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i603.i.i)
  %tobool314.not.i.i = icmp sgt i32 %call.i603.i.i, -1
  br i1 %tobool314.not.i.i, label %if.end312.i.i.if.end317.i.i_crit_edge, label %if.then315.i.i

if.end312.i.i.if.end317.i.i_crit_edge:            ; preds = %if.end312.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end317.i.i

if.then315.i.i:                                   ; preds = %if.end312.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %lang_id.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 0, ptr %lang_id.i.i, align 2
  br label %if.end317.i.i

if.end317.i.i:                                    ; preds = %if.then315.i.i, %if.end312.i.i.if.end317.i.i_crit_edge
  %boost_up.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 27
  %call.i.i604.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef %8, ptr noundef nonnull @.str.49, ptr noundef %boost_up.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i604.i.i)
  %tobool319.not.i.i = icmp sgt i32 %call.i.i604.i.i, -1
  br i1 %tobool319.not.i.i, label %if.end317.i.i.if.end322.i.i_crit_edge, label %if.then320.i.i

if.end317.i.i.if.end322.i.i_crit_edge:            ; preds = %if.end317.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end322.i.i

if.then320.i.i:                                   ; preds = %if.end317.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %158 = ptrtoint ptr %boost_up.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %boost_up.i.i, align 2
  br label %if.end322.i.i

if.end322.i.i:                                    ; preds = %if.then320.i.i, %if.end317.i.i.if.end322.i.i_crit_edge
  %call323.i.i = call ptr @of_get_property(ptr noundef %8, ptr noundef nonnull @.str.50, ptr noundef null) #8
  %tobool324.not.i.i = icmp eq ptr %call323.i.i, null
  %..str.51.i.i = select i1 %tobool324.not.i.i, ptr @.str.51, ptr %call323.i.i
  %call329.i.i = call i32 @strlcpy(ptr noundef nonnull %str.i.i, ptr noundef %..str.51.i.i, i32 noundef 31) #8
  %call331.i.i = call i32 @strlen(ptr noundef nonnull %str.i.i) #12
  %conv333.i.i = trunc i32 %call331.i.i to i8
  %manufacturer_len.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 20
  %159 = ptrtoint ptr %manufacturer_len.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv333.i.i, ptr %manufacturer_len.i.i, align 4
  %manufacturer.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 23
  %160 = call ptr @memset(ptr %manufacturer.i.i, i32 0, i32 62)
  %161 = call i32 @llvm.umin.i32(i32 %call331.i.i, i32 31) #8
  %call347.i.i = call i32 @utf8s_to_utf16s(ptr noundef nonnull %str.i.i, i32 noundef %161, i32 noundef 1, ptr noundef %manufacturer.i.i, i32 noundef 62) #8
  %call348.i.i = call ptr @of_get_property(ptr noundef %8, ptr noundef nonnull @.str.52, ptr noundef null) #8
  %tobool350.not.i.i = icmp eq ptr %call348.i.i, null
  %product_str.i.i = getelementptr inbounds %struct.usb251xb_data, ptr %call.i12, i32 0, i32 4
  %cond355.i.i = select i1 %tobool350.not.i.i, ptr %product_str.i.i, ptr %call348.i.i
  %call356.i.i = call i32 @strlcpy(ptr noundef nonnull %str.i.i, ptr noundef %cond355.i.i, i32 noundef 31) #8
  %call358.i.i = call i32 @strlen(ptr noundef nonnull %str.i.i) #12
  %conv360.i.i = trunc i32 %call358.i.i to i8
  %product_len.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 21
  %162 = ptrtoint ptr %product_len.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv360.i.i, ptr %product_len.i.i, align 1
  %product.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 24
  %163 = call ptr @memset(ptr %product.i.i, i32 0, i32 62)
  %164 = call i32 @llvm.umin.i32(i32 %call358.i.i, i32 31) #8
  %call374.i.i = call i32 @utf8s_to_utf16s(ptr noundef nonnull %str.i.i, i32 noundef %164, i32 noundef 1, ptr noundef %product.i.i, i32 noundef 62) #8
  %call375.i.i = call ptr @of_get_property(ptr noundef %8, ptr noundef nonnull @.str.53, ptr noundef null) #8
  %tobool377.not.i.i = icmp eq ptr %call375.i.i, null
  %..str.54.i.i = select i1 %tobool377.not.i.i, ptr @.str.54, ptr %call375.i.i
  %call382.i.i = call i32 @strlcpy(ptr noundef nonnull %str.i.i, ptr noundef %..str.54.i.i, i32 noundef 31) #8
  %call384.i.i = call i32 @strlen(ptr noundef nonnull %str.i.i) #12
  %conv386.i.i = trunc i32 %call384.i.i to i8
  %serial_len.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 22
  %165 = ptrtoint ptr %serial_len.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv386.i.i, ptr %serial_len.i.i, align 2
  %serial.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 25
  %166 = call ptr @memset(ptr %serial.i.i, i32 0, i32 62)
  %167 = call i32 @llvm.umin.i32(i32 %call384.i.i, i32 31) #8
  %call400.i.i = call i32 @utf8s_to_utf16s(ptr noundef nonnull %str.i.i, i32 noundef %167, i32 noundef 1, ptr noundef %serial.i.i, i32 noundef 62) #8
  %port_swap.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 30
  %168 = ptrtoint ptr %port_swap.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %port_swap.i.i, align 1
  %169 = ptrtoint ptr %port_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %port_cnt.i.i, align 2
  %171 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port.i605.i.i) #8
  %173 = ptrtoint ptr %port.i605.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 -1, ptr %port.i605.i.i, align 4, !annotation !181
  %of_node.i606.i.i = getelementptr inbounds %struct.device, ptr %172, i32 0, i32 27
  %174 = ptrtoint ptr %of_node.i606.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %of_node.i606.i.i, align 8
  %call.i607.i.i = call ptr @of_find_property(ptr noundef %175, ptr noundef nonnull @.str.55, ptr noundef null) #8
  %call2.i608.i.i = call ptr @of_prop_next_u32(ptr noundef %call.i607.i.i, ptr noundef null, ptr noundef nonnull %port.i605.i.i) #8
  %tobool.not14.i609.i.i = icmp eq ptr %call2.i608.i.i, null
  br i1 %tobool.not14.i609.i.i, label %if.end322.i.i.usb251xb_get_ofdata.exit.thread84.i_crit_edge, label %for.body.lr.ph.i611.i.i

if.end322.i.i.usb251xb_get_ofdata.exit.thread84.i_crit_edge: ; preds = %if.end322.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb251xb_get_ofdata.exit.thread84.i

for.body.lr.ph.i611.i.i:                          ; preds = %if.end322.i.i
  %conv5.i610.i.i = zext i8 %170 to i32
  br label %for.body.i614.i.i

for.body.i614.i.i:                                ; preds = %for.inc.i621.i.i.for.body.i614.i.i_crit_edge, %for.body.lr.ph.i611.i.i
  %p.015.i612.i.i = phi ptr [ %call2.i608.i.i, %for.body.lr.ph.i611.i.i ], [ %call10.i619.i.i, %for.inc.i621.i.i.for.body.i614.i.i_crit_edge ]
  %176 = ptrtoint ptr %port.i605.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %port.i605.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %conv5.i610.i.i)
  %cmp6.not.i613.i.i = icmp ugt i32 %177, %conv5.i610.i.i
  br i1 %cmp6.not.i613.i.i, label %do.end.i618.i.i, label %if.then.i617.i.i

if.then.i617.i.i:                                 ; preds = %for.body.i614.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i615.i.i = shl nuw i32 1, %177
  %178 = ptrtoint ptr %port_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %port_swap.i.i, align 1
  %180 = trunc i32 %shl.i615.i.i to i8
  %conv9.i616.i.i = or i8 %179, %180
  store i8 %conv9.i616.i.i, ptr %port_swap.i.i, align 1
  br label %for.inc.i621.i.i

do.end.i618.i.i:                                  ; preds = %for.body.i614.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %172, ptr noundef nonnull @.str.56, i32 noundef %177) #11
  br label %for.inc.i621.i.i

for.inc.i621.i.i:                                 ; preds = %do.end.i618.i.i, %if.then.i617.i.i
  %call10.i619.i.i = call ptr @of_prop_next_u32(ptr noundef %call.i607.i.i, ptr noundef nonnull %p.015.i612.i.i, ptr noundef nonnull %port.i605.i.i) #8
  %tobool.not.i620.i.i = icmp eq ptr %call10.i619.i.i, null
  br i1 %tobool.not.i620.i.i, label %for.inc.i621.i.i.usb251xb_get_ofdata.exit.thread84.i_crit_edge, label %for.inc.i621.i.i.for.body.i614.i.i_crit_edge

for.inc.i621.i.i.for.body.i614.i.i_crit_edge:     ; preds = %for.inc.i621.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i614.i.i

for.inc.i621.i.i.usb251xb_get_ofdata.exit.thread84.i_crit_edge: ; preds = %for.inc.i621.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %usb251xb_get_ofdata.exit.thread84.i

usb251xb_get_ofdata.exit.thread84.i:              ; preds = %for.inc.i621.i.i.usb251xb_get_ofdata.exit.thread84.i_crit_edge, %if.end322.i.i.usb251xb_get_ofdata.exit.thread84.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port.i605.i.i) #8
  %bat_charge_en.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 26
  %181 = ptrtoint ptr %bat_charge_en.i.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %bat_charge_en.i.i, align 1
  %boost_57.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 28
  %182 = ptrtoint ptr %boost_57.i.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %boost_57.i.i, align 1
  %boost_14.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 29
  %183 = ptrtoint ptr %boost_14.i.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %boost_14.i.i, align 4
  %port_map12.i.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 31
  %184 = ptrtoint ptr %port_map12.i.i to i32
  call void @__asan_storeN_noabort(i32 %184, i32 4)
  store i32 0, ptr %port_map12.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %str.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property_u32.i.i) #8
  br label %if.end6.i

usb251xb_get_ofdata.exit.thread.i:                ; preds = %if.end.i.i.usb251xb_get_ofdata.exit.thread.i_crit_edge, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -517, %if.end.i.i.usb251xb_get_ofdata.exit.thread.i_crit_edge ], [ -19, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %str.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property_u32.i.i) #8
  br label %do.end.i

usb251xb_get_ofdata.exit.i:                       ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef %14) #11
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %str.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property_u32.i.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %usb251xb_get_ofdata.exit.i, %usb251xb_get_ofdata.exit.thread.i
  %retval.0.i83.i = phi i32 [ %retval.0.i.ph.i, %usb251xb_get_ofdata.exit.thread.i ], [ %14, %usb251xb_get_ofdata.exit.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i83.i) #11
  br label %cleanup

if.end6.i:                                        ; preds = %usb251xb_get_ofdata.exit.thread84.i, %if.end.if.end6.i_crit_edge
  %gpio_reset.i66.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 4
  %185 = ptrtoint ptr %gpio_reset.i66.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %gpio_reset.i66.i, align 4
  %call.i67.i = call ptr @gpiod_to_chip(ptr noundef %186) #8
  %187 = ptrtoint ptr %i2c3 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %i2c3, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %adapter.i.i, align 8
  %191 = ptrtoint ptr %gpio_reset.i66.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %gpio_reset.i66.i, align 4
  %tobool.not.i68.i = icmp eq ptr %192, null
  br i1 %tobool.not.i68.i, label %if.end6.i.if.end10.i_crit_edge, label %if.end.i70.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end.i70.i:                                     ; preds = %if.end6.i
  %tobool2.not.i69.i = icmp eq ptr %call.i67.i, null
  br i1 %tobool2.not.i69.i, label %if.end.i70.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i70.i.cleanup_crit_edge:                   ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i70.i
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %190, i32 0, i32 9
  %parent.i.i = getelementptr inbounds %struct.gpio_chip, ptr %call.i67.i, i32 0, i32 2
  %193 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %parent.i.i, align 4
  %type.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %190, i32 0, i32 9, i32 4
  %195 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i71.i = icmp eq ptr %196, @i2c_adapter_type
  br i1 %cmp.i.i71.i, label %if.then.i.i73.i, label %if.end.i.i.i

if.then.i.i73.i:                                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i72.i = call i32 @device_for_each_child(ptr noundef %dev.i.i, ptr noundef %194, ptr noundef nonnull @usb251xb_check_dev_children) #8
  br label %usb251xb_check_dev_children.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %cmp1.i.i.i = icmp eq ptr %dev.i.i, %194
  %conv.i.i.i = zext i1 %cmp1.i.i.i to i32
  br label %usb251xb_check_dev_children.exit.i.i

usb251xb_check_dev_children.exit.i.i:             ; preds = %if.end.i.i.i, %if.then.i.i73.i
  %retval.0.i.i.i = phi i32 [ %call.i.i72.i, %if.then.i.i73.i ], [ %conv.i.i.i, %if.end.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool6.not.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool6.not.i.i, label %usb251xb_check_dev_children.exit.i.i.if.end10.i_crit_edge, label %do.end.i74.i

usb251xb_check_dev_children.exit.i.i.if.end10.i_crit_edge: ; preds = %usb251xb_check_dev_children.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

do.end.i74.i:                                     ; preds = %usb251xb_check_dev_children.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %197 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.59) #11
  br label %cleanup

if.end10.i:                                       ; preds = %usb251xb_check_dev_children.exit.i.i.if.end10.i_crit_edge, %if.end6.i.if.end10.i_crit_edge
  %call11.i = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  %vdd.i = getelementptr inbounds %struct.usb251xb, ptr %call.i, i32 0, i32 2
  %199 = ptrtoint ptr %vdd.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call11.i, ptr %vdd.i, align 4
  %cmp.i76.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76.i, label %if.then14.i, label %if.end17.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %200 = ptrtoint ptr %call11.i to i32
  br label %cleanup

if.end17.i:                                       ; preds = %if.end10.i
  %call19.i = call i32 @regulator_enable(ptr noundef %call11.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end17.i.cleanup_crit_edge

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22.i:                                       ; preds = %if.end17.i
  %call.i77.i = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @usb251xb_regulator_disable_action, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool.not.i78.i = icmp eq i32 %call.i77.i, 0
  br i1 %tobool.not.i78.i, label %if.end26.i, label %devm_add_action_or_reset.exit.i

devm_add_action_or_reset.exit.i:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %201 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %vdd.i, align 4
  %call.i.i79.i = call i32 @regulator_disable(ptr noundef %202) #8
  br label %cleanup

if.end26.i:                                       ; preds = %if.end22.i
  %call27.i = call fastcc i32 @usb251xb_connect(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %do.end36.i, label %do.end32.i

do.end32.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call27.i) #11
  br label %cleanup

do.end36.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end36.i, %do.end32.i, %devm_add_action_or_reset.exit.i, %if.end17.i.cleanup_crit_edge, %if.then14.i, %do.end.i74.i, %if.end.i70.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i83.i, %do.end.i ], [ %200, %if.then14.i ], [ %call27.i, %do.end32.i ], [ 0, %do.end36.i ], [ %call19.i, %if.end17.i.cleanup_crit_edge ], [ %call.i77.i, %devm_add_action_or_reset.exit.i ], [ -22, %do.end.i74.i ], [ -22, %if.end.i70.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb251xb_regulator_disable_action(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.usb251xb, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb251xb_connect(ptr noundef readonly %hub) unnamed_addr #2 align 64 {
entry:
  %i2c_wb = alloca [256 x i8], align 1
  %wbuf = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hub, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %i2c_wb) #8
  %2 = call ptr @memset(ptr %i2c_wb, i32 0, i32 256)
  %skip_config = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 3
  %3 = ptrtoint ptr %skip_config to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %skip_config, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end9, label %do.end

do.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.61) #11
  %5 = ptrtoint ptr %i2c_wb to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %i2c_wb, align 1
  %arrayidx2 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx2, align 1
  tail call fastcc void @usb251xb_reset(ptr noundef %hub)
  %i2c = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 1
  %7 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %8, i8 noundef zeroext -1, i8 noundef zeroext 2, ptr noundef nonnull %i2c_wb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end.cleanup104_crit_edge, label %do.end8

do.end.cleanup104_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef %call) #11
  br label %cleanup104

if.end9:                                          ; preds = %entry
  %vendor_id = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 5
  %9 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vendor_id, align 4
  %11 = lshr i16 %10, 8
  %conv10 = trunc i16 %11 to i8
  %arrayidx11 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv10, ptr %arrayidx11, align 1
  %conv15 = trunc i16 %10 to i8
  %13 = ptrtoint ptr %i2c_wb to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv15, ptr %i2c_wb, align 1
  %product_id = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 6
  %14 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %product_id, align 2
  %16 = lshr i16 %15, 8
  %conv20 = trunc i16 %16 to i8
  %arrayidx21 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv20, ptr %arrayidx21, align 1
  %conv25 = trunc i16 %15 to i8
  %arrayidx26 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv25, ptr %arrayidx26, align 1
  %device_id = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 7
  %19 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device_id, align 4
  %21 = lshr i16 %20, 8
  %conv30 = trunc i16 %21 to i8
  %arrayidx31 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 5
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv30, ptr %arrayidx31, align 1
  %conv35 = trunc i16 %20 to i8
  %arrayidx36 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 4
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv35, ptr %arrayidx36, align 1
  %conf_data1 = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 8
  %24 = ptrtoint ptr %conf_data1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %conf_data1, align 2
  %arrayidx37 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 6
  %26 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx37, align 1
  %conf_data2 = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 9
  %27 = ptrtoint ptr %conf_data2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %conf_data2, align 1
  %arrayidx38 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 7
  %29 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %arrayidx38, align 1
  %conf_data3 = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 10
  %30 = ptrtoint ptr %conf_data3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %conf_data3, align 4
  %arrayidx39 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 8
  %32 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx39, align 1
  %non_rem_dev = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 11
  %33 = ptrtoint ptr %non_rem_dev to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %non_rem_dev, align 1
  %arrayidx40 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 9
  %35 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx40, align 1
  %port_disable_sp = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 12
  %36 = ptrtoint ptr %port_disable_sp to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %port_disable_sp, align 2
  %arrayidx41 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 10
  %38 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx41, align 1
  %port_disable_bp = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 13
  %39 = ptrtoint ptr %port_disable_bp to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %port_disable_bp, align 1
  %arrayidx42 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 11
  %41 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx42, align 1
  %max_power_sp = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 14
  %42 = ptrtoint ptr %max_power_sp to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %max_power_sp, align 4
  %arrayidx43 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 12
  %44 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx43, align 1
  %max_power_bp = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 15
  %45 = ptrtoint ptr %max_power_bp to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %max_power_bp, align 1
  %arrayidx44 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 13
  %47 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx44, align 1
  %max_current_sp = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 16
  %48 = ptrtoint ptr %max_current_sp to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %max_current_sp, align 2
  %arrayidx45 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 14
  %50 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx45, align 1
  %max_current_bp = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 17
  %51 = ptrtoint ptr %max_current_bp to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %max_current_bp, align 1
  %arrayidx46 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 15
  %53 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx46, align 1
  %power_on_time = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 18
  %54 = ptrtoint ptr %power_on_time to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %power_on_time, align 4
  %arrayidx47 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 16
  %56 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx47, align 1
  %lang_id = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 19
  %57 = ptrtoint ptr %lang_id to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %lang_id, align 2
  %59 = lshr i16 %58, 8
  %conv51 = trunc i16 %59 to i8
  %arrayidx52 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 17
  %60 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv51, ptr %arrayidx52, align 1
  %conv56 = trunc i16 %58 to i8
  %arrayidx57 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 18
  %61 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv56, ptr %arrayidx57, align 1
  %manufacturer_len = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 20
  %62 = ptrtoint ptr %manufacturer_len to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %manufacturer_len, align 4
  %arrayidx58 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 19
  %64 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx58, align 1
  %product_len = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 21
  %65 = ptrtoint ptr %product_len to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %product_len, align 1
  %arrayidx59 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 20
  %67 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx59, align 1
  %serial_len = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 22
  %68 = ptrtoint ptr %serial_len to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %serial_len, align 2
  %arrayidx60 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 21
  %70 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx60, align 1
  %arrayidx61 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 22
  %manufacturer = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 23
  %71 = call ptr @memcpy(ptr %arrayidx61, ptr %manufacturer, i32 62)
  %arrayidx63 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 146
  %serial = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 25
  %72 = call ptr @memcpy(ptr %arrayidx63, ptr %serial, i32 62)
  %arrayidx65 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 84
  %product = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 24
  %73 = call ptr @memcpy(ptr %arrayidx65, ptr %product, i32 62)
  %bat_charge_en = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 26
  %74 = ptrtoint ptr %bat_charge_en to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bat_charge_en, align 1
  %arrayidx67 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 208
  %76 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx67, align 1
  %boost_up = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 27
  %77 = ptrtoint ptr %boost_up to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %boost_up, align 2
  %arrayidx68 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 246
  %79 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %arrayidx68, align 1
  %boost_57 = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 28
  %80 = ptrtoint ptr %boost_57 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %boost_57, align 1
  %arrayidx69 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 247
  %82 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx69, align 1
  %boost_14 = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 29
  %83 = ptrtoint ptr %boost_14 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %boost_14, align 4
  %arrayidx70 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 248
  %85 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %arrayidx70, align 1
  %port_swap = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 30
  %86 = ptrtoint ptr %port_swap to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %port_swap, align 1
  %arrayidx71 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 250
  %88 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %arrayidx71, align 1
  %port_map12 = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 31
  %89 = ptrtoint ptr %port_map12 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %port_map12, align 2
  %arrayidx72 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 251
  %91 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx72, align 1
  %port_map34 = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 32
  %92 = ptrtoint ptr %port_map34 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %port_map34, align 1
  %arrayidx73 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 252
  %94 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx73, align 1
  %port_map56 = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 33
  %95 = ptrtoint ptr %port_map56 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %port_map56, align 4
  %arrayidx74 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 253
  %97 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %arrayidx74, align 1
  %port_map7 = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 34
  %98 = ptrtoint ptr %port_map7 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %port_map7, align 1
  %arrayidx75 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 254
  %100 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx75, align 1
  %arrayidx76 = getelementptr inbounds [256 x i8], ptr %i2c_wb, i32 0, i32 255
  %101 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %arrayidx76, align 1
  tail call fastcc void @usb251xb_reset(ptr noundef %hub)
  %102 = getelementptr inbounds [17 x i8], ptr %wbuf, i32 0, i32 1
  %i2c90 = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9
  %i.0164 = phi i32 [ 0, %if.end9 ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl i32 %i.0164, 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %wbuf) #8
  %103 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 16, ptr %wbuf, align 1
  %arrayidx80 = getelementptr [256 x i8], ptr %i2c_wb, i32 0, i32 %mul
  %104 = call ptr @memcpy(ptr %102, ptr %arrayidx80, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb251xb_connect.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb251xb_connect, %if.then86)) #8
          to label %do.end89 [label %if.then86], !srcloc !182

if.then86:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb251xb_connect.__UNIQUE_ID_ddebug288, ptr noundef %1, ptr noundef nonnull @.str.66, i32 noundef 16, i32 noundef %i.0164, i32 noundef %mul) #8
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %for.body
  %105 = ptrtoint ptr %i2c90 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i2c90, align 4
  %conv91 = trunc i32 %mul to i8
  %call93 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %106, i8 noundef zeroext %conv91, i8 noundef zeroext 17, ptr noundef nonnull %wbuf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %wbuf) #8
  br i1 %tobool94.not, label %for.inc, label %do.end103

for.inc:                                          ; preds = %do.end89
  %inc = add nuw nsw i32 %i.0164, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.end100, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end100:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.68) #11
  br label %cleanup104

do.end103:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.71, i32 noundef %i.0164, i32 noundef %call93) #11
  br label %cleanup104

cleanup104:                                       ; preds = %do.end103, %do.end100, %do.end8, %do.end.cleanup104_crit_edge
  %retval.0 = phi i32 [ %call, %do.end8 ], [ %call93, %do.end103 ], [ 0, %do.end100 ], [ 0, %do.end.cleanup104_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %i2c_wb) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8s_to_utf16s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_to_chip(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb251xb_check_dev_children(ptr noundef %dev, ptr noundef %child) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %cmp = icmp eq ptr %1, @i2c_adapter_type
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef %child, ptr noundef nonnull @usb251xb_check_dev_children) #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cmp1 = icmp eq ptr %dev, %child
  %conv = zext i1 %cmp1 to i32
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %conv, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb251xb_reset(ptr nocapture noundef readonly %hub) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_reset = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 4
  %0 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_reset, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr inbounds %struct.usb251xb, ptr %hub, i32 0, i32 1
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %5, i32 noundef 2) #8
  %10 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpio_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 10, i32 noundef 2) #8
  %12 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpio_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 750, i32 noundef 2) #8
  %14 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c, align 4
  %adapter4 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %adapter4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter4, align 8
  %lock_ops.i9 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %lock_ops.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock_ops.i9, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %21(ptr noundef %17, i32 noundef 2) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb251xb_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vdd = getelementptr inbounds %struct.usb251xb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb251xb_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vdd = getelementptr inbounds %struct.usb251xb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @usb251xb_connect(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !143, !145, !146, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__initcall__kmod_usb251xb__305_769_usb251xb_i2c_driver_init6, !1, !"__initcall__kmod_usb251xb__305_769_usb251xb_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/usb251xb.c", i32 769, i32 1}
!2 = !{ptr @__exitcall_usb251xb_i2c_driver_exit, !1, !"__exitcall_usb251xb_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author306, !4, !"__UNIQUE_ID_author306", i1 false, i1 false}
!4 = !{!"../drivers/usb/misc/usb251xb.c", i32 771, i32 1}
!5 = !{ptr @__UNIQUE_ID_description307, !6, !"__UNIQUE_ID_description307", i1 false, i1 false}
!6 = !{!"../drivers/usb/misc/usb251xb.c", i32 772, i32 1}
!7 = !{ptr @__UNIQUE_ID_file308, !8, !"__UNIQUE_ID_file308", i1 false, i1 false}
!8 = !{!"../drivers/usb/misc/usb251xb.c", i32 773, i32 1}
!9 = !{ptr @__UNIQUE_ID_license309, !8, !"__UNIQUE_ID_license309", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/misc/usb251xb.c", i32 761, i32 11}
!12 = !{ptr @usb251xb_i2c_driver, !13, !"usb251xb_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/misc/usb251xb.c", i32 759, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/misc/usb251xb.c", i32 658, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @usb251xb_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @usb251xb_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/misc/usb251xb.c", i32 682, i32 37}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/misc/usb251xb.c", i32 697, i32 3}
!26 = !{ptr @usb251xb_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @usb251xb_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/misc/usb251xb.c", i32 701, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @usb251xb_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @usb251xb_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/misc/usb251xb.c", i32 409, i32 3}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @usb251xb_get_ofdata._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @usb251xb_get_ofdata._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/misc/usb251xb.c", i32 413, i32 26}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/misc/usb251xb.c", i32 418, i32 49}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/misc/usb251xb.c", i32 423, i32 3}
!44 = !{ptr @usb251xb_get_ofdata._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @usb251xb_get_ofdata._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/misc/usb251xb.c", i32 427, i32 37}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/misc/usb251xb.c", i32 430, i32 37}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/misc/usb251xb.c", i32 434, i32 37}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/misc/usb251xb.c", i32 438, i32 26}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/misc/usb251xb.c", i32 443, i32 27}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/misc/usb251xb.c", i32 445, i32 32}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/misc/usb251xb.c", i32 447, i32 33}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/misc/usb251xb.c", i32 454, i32 26}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/misc/usb251xb.c", i32 457, i32 26}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/misc/usb251xb.c", i32 459, i32 31}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/misc/usb251xb.c", i32 462, i32 26}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/misc/usb251xb.c", i32 465, i32 26}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/misc/usb251xb.c", i32 467, i32 31}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/misc/usb251xb.c", i32 471, i32 26}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/misc/usb251xb.c", i32 474, i32 32}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/misc/usb251xb.c", i32 494, i32 26}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/misc/usb251xb.c", i32 498, i32 26}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/misc/usb251xb.c", i32 501, i32 47}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/misc/usb251xb.c", i32 504, i32 26}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/misc/usb251xb.c", i32 508, i32 32}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/misc/usb251xb.c", i32 512, i32 32}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/misc/usb251xb.c", i32 516, i32 32}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/misc/usb251xb.c", i32 520, i32 32}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/misc/usb251xb.c", i32 525, i32 32}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/misc/usb251xb.c", i32 530, i32 32}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/misc/usb251xb.c", i32 535, i32 32}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/misc/usb251xb.c", i32 540, i32 32}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/misc/usb251xb.c", i32 543, i32 37}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/misc/usb251xb.c", i32 546, i32 30}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/misc/usb251xb.c", i32 549, i32 39}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/misc/usb251xb.c", i32 550, i32 34}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/misc/usb251xb.c", i32 559, i32 39}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/misc/usb251xb.c", i32 568, i32 39}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/misc/usb251xb.c", i32 569, i32 34}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/misc/usb251xb.c", i32 583, i32 32}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/misc/usb251xb.c", i32 394, i32 4}
!118 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @usb251xb_get_ports_field._entry, !117, !"_entry", i1 false, i1 false}
!121 = !{ptr @usb251xb_get_ports_field._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/misc/usb251xb.c", i32 256, i32 3}
!124 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @usb251x_check_gpio_chip._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @usb251x_check_gpio_chip._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/misc/usb251xb.c", i32 295, i32 3}
!129 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @usb251xb_connect._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @usb251xb_connect._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/misc/usb251xb.c", i32 304, i32 4}
!134 = !{ptr @usb251xb_connect._entry.63, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @usb251xb_connect._entry_ptr.65, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/misc/usb251xb.c", i32 362, i32 3}
!138 = !{ptr @usb251xb_connect.__UNIQUE_ID_ddebug288, !137, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/misc/usb251xb.c", i32 372, i32 2}
!141 = !{ptr @usb251xb_connect._entry.67, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @usb251xb_connect._entry_ptr.69, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/misc/usb251xb.c", i32 376, i32 2}
!145 = !{ptr @usb251xb_connect._entry.70, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @usb251xb_connect._entry_ptr.72, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @usb251xb_of_match, !148, !"usb251xb_of_match", i1 false, i1 false}
!148 = !{!"../drivers/usb/misc/usb251xb.c", i32 600, i32 34}
!149 = !{ptr @usb2422_data, !150, !"usb2422_data", i1 false, i1 false}
!150 = !{!"../drivers/usb/misc/usb251xb.c", i32 159, i32 35}
!151 = !{ptr @usb2512b_data, !152, !"usb2512b_data", i1 false, i1 false}
!152 = !{!"../drivers/usb/misc/usb251xb.c", i32 167, i32 35}
!153 = !{ptr @usb2512bi_data, !154, !"usb2512bi_data", i1 false, i1 false}
!154 = !{!"../drivers/usb/misc/usb251xb.c", i32 175, i32 35}
!155 = !{ptr @usb2513b_data, !156, !"usb2513b_data", i1 false, i1 false}
!156 = !{!"../drivers/usb/misc/usb251xb.c", i32 183, i32 35}
!157 = !{ptr @usb2513bi_data, !158, !"usb2513bi_data", i1 false, i1 false}
!158 = !{!"../drivers/usb/misc/usb251xb.c", i32 191, i32 35}
!159 = !{ptr @usb2514b_data, !160, !"usb2514b_data", i1 false, i1 false}
!160 = !{!"../drivers/usb/misc/usb251xb.c", i32 199, i32 35}
!161 = !{ptr @usb2514bi_data, !162, !"usb2514bi_data", i1 false, i1 false}
!162 = !{!"../drivers/usb/misc/usb251xb.c", i32 207, i32 35}
!163 = !{ptr @usb2517_data, !164, !"usb2517_data", i1 false, i1 false}
!164 = !{!"../drivers/usb/misc/usb251xb.c", i32 215, i32 35}
!165 = !{ptr @usb2517i_data, !166, !"usb2517i_data", i1 false, i1 false}
!166 = !{!"../drivers/usb/misc/usb251xb.c", i32 223, i32 35}
!167 = !{ptr @usb251xb_pm_ops, !168, !"usb251xb_pm_ops", i1 false, i1 false}
!168 = !{!"../drivers/usb/misc/usb251xb.c", i32 743, i32 8}
!169 = !{ptr @usb251xb_id, !170, !"usb251xb_id", i1 false, i1 false}
!170 = !{!"../drivers/usb/misc/usb251xb.c", i32 745, i32 35}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i8 0, i8 2}
!181 = !{!"auto-init"}
!182 = !{i64 2148777329, i64 2148777334, i64 2148777347, i64 2148777391, i64 2148777425, i64 2148777446}
