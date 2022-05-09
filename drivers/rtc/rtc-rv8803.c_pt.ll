; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-rv8803.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rv8803.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rv8803_data = type { ptr, ptr, %struct.mutex, i8, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_rv8803__288_641_rv8803_driver_init6 = internal global ptr @rv8803_driver_init, section ".initcall6.init", align 4
@rv8803_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rv8803_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rv8803_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rv8803_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rv8803_driver_exit = internal global ptr @rv8803_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [68 x i8] c"rtc_rv8803.author=Alexandre Belloni <alexandre.belloni@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [55 x i8] c"rtc_rv8803.description=Micro Crystal RV8803 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"rtc_rv8803.file=drivers/rtc/rtc-rv8803\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [26 x i8] c"rtc_rv8803.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-rv8803\00", [21 x i8] zeroinitializer }, align 32
@rv8803_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microcrystal,rv8803\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epson,rx8803\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epson,rx8804\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epson,rx8900\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@rv8803_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rv8803\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"rv8804\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"rx8803\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"rx8900\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rv8803_nvram\00", [19 x i8] zeroinitializer }, align 32
@rv8803_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 531, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"doesn't support I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_I2C_BLOCK\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rv8803_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-rv8803.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rv8803_probe._entry_ptr = internal global ptr @rv8803_probe._entry, section ".printk_index", align 4
@rv8803_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&rv8803->flags_lock\00", [44 x i8] zeroinitializer }, align 32
@rv8803_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 554, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Voltage low, temperature compensation stopped.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rv8803_probe._entry_ptr.11 = internal global ptr @rv8803_probe._entry.8, section ".printk_index", align 4
@rv8803_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 557, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Voltage low, data loss detected.\0A\00", [62 x i8] zeroinitializer }, align 32
@rv8803_probe._entry_ptr.14 = internal global ptr @rv8803_probe._entry.12, section ".printk_index", align 4
@rv8803_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 560, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"An alarm maybe have been missed.\0A\00", [62 x i8] zeroinitializer }, align 32
@rv8803_probe._entry_ptr.17 = internal global ptr @rv8803_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rv8803\00", [25 x i8] zeroinitializer }, align 32
@rv8803_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 572, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to request IRQ, alarms disabled\0A\00", [56 x i8] zeroinitializer }, align 32
@rv8803_probe._entry_ptr.21 = internal global ptr @rv8803_probe._entry.19, section ".printk_index", align 4
@rv8803_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 585, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to init charger\0A\00", [40 x i8] zeroinitializer }, align 32
@rv8803_probe._entry_ptr.24 = internal global ptr @rv8803_probe._entry.22, section ".printk_index", align 4
@rv8803_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr @rv8803_ioctl, ptr @rv8803_get_time, ptr @rv8803_set_time, ptr @rv8803_get_alarm, ptr @rv8803_set_alarm, ptr null, ptr @rv8803_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rv8803_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 83, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to read register 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rv8803_read_reg\00", [16 x i8] zeroinitializer }, align 32
@rv8803_read_reg._entry_ptr = internal global ptr @rv8803_read_reg._entry, section ".printk_index", align 4
@rv8803_handle_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.27, ptr @.str.4, i32 155, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rv8803_handle_irq\00", [46 x i8] zeroinitializer }, align 32
@rv8803_handle_irq._entry_ptr = internal global ptr @rv8803_handle_irq._entry, section ".printk_index", align 4
@rv8803_handle_irq._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.27, ptr @.str.4, i32 158, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rv8803_handle_irq._entry_ptr.29 = internal global ptr @rv8803_handle_irq._entry.28, section ".printk_index", align 4
@rv8803_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 116, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to write register 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rv8803_write_reg\00", [47 x i8] zeroinitializer }, align 32
@rv8803_write_reg._entry_ptr = internal global ptr @rv8803_write_reg._entry, section ".printk_index", align 4
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"epson,vdet-disable\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trickle-diode-disable\00", [42 x i8] zeroinitializer }, align 32
@rv8803_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.34, ptr @.str.4, i32 425, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rv8803_ioctl\00", [19 x i8] zeroinitializer }, align 32
@rv8803_ioctl._entry_ptr = internal global ptr @rv8803_ioctl._entry, section ".printk_index", align 4
@rv8803_get_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 202, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Voltage low, data is invalid.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rv8803_get_time\00", [16 x i8] zeroinitializer }, align 32
@rv8803_get_time._entry_ptr = internal global ptr @rv8803_get_time._entry, section ".printk_index", align 4
@rv8803_read_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 100, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to read registers 0x%02x..0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rv8803_read_regs\00", [47 x i8] zeroinitializer }, align 32
@rv8803_read_regs._entry_ptr = internal global ptr @rv8803_read_regs._entry, section ".printk_index", align 4
@rv8803_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 134, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to write registers 0x%02x..0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rv8803_write_regs\00", [46 x i8] zeroinitializer }, align 32
@rv8803_write_regs._entry_ptr = internal global ptr @rv8803_write_regs._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967290, i64 4294967291]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967290, i64 4294967291]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967290, i64 4294967291]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 28692, i64 2147774483]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967290, i64 4294967291]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967290, i64 4294967291]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967290, i64 4294967291]
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"rv8803_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 633, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 635, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"rv8803_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 612, i32 49 }
@___asan_gen_.56 = private unnamed_addr constant [10 x i8] c"rv8803_id\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 603, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 520, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 531, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 540, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 554, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 557, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 560, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 570, i32 7 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 572, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 585, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"rv8803_rtc_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 475, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 83, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 155, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 158, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 116, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 503, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 506, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 425, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 202, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 98, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [28 x i8] c"../drivers/rtc/rtc-rv8803.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 132, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_rv8803_driver_exit, ptr @__initcall__kmod_rtc_rv8803__288_641_rv8803_driver_init6, ptr @rv8803_driver_exit, ptr @rv8803_get_time._entry, ptr @rv8803_get_time._entry_ptr, ptr @rv8803_handle_irq._entry, ptr @rv8803_handle_irq._entry.28, ptr @rv8803_handle_irq._entry_ptr, ptr @rv8803_handle_irq._entry_ptr.29, ptr @rv8803_ioctl._entry, ptr @rv8803_ioctl._entry_ptr, ptr @rv8803_probe._entry, ptr @rv8803_probe._entry.12, ptr @rv8803_probe._entry.15, ptr @rv8803_probe._entry.19, ptr @rv8803_probe._entry.22, ptr @rv8803_probe._entry.8, ptr @rv8803_probe._entry_ptr, ptr @rv8803_probe._entry_ptr.11, ptr @rv8803_probe._entry_ptr.14, ptr @rv8803_probe._entry_ptr.17, ptr @rv8803_probe._entry_ptr.21, ptr @rv8803_probe._entry_ptr.24, ptr @rv8803_read_reg._entry, ptr @rv8803_read_reg._entry_ptr, ptr @rv8803_read_regs._entry, ptr @rv8803_read_regs._entry_ptr, ptr @rv8803_write_reg._entry, ptr @rv8803_write_reg._entry_ptr, ptr @rv8803_write_regs._entry, ptr @rv8803_write_regs._entry_ptr, ptr @rv8803_driver, ptr @.str, ptr @rv8803_of_match, ptr @rv8803_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rv8803_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @rv8803_rtc_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_handle_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_handle_irq._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_get_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_read_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv8803_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rv8803_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rv8803_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rv8803_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @rv8803_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv8803_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %nvmem_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_cfg) #8
  %2 = getelementptr inbounds i8, ptr %nvmem_cfg, i32 40
  %3 = call ptr @memset(ptr %2, i32 255, i32 44)
  %4 = ptrtoint ptr %nvmem_cfg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %nvmem_cfg, align 4
  %name = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.1, ptr %name, align 4
  %id2 = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 2
  %of_node = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 13
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %of_node, align 4
  %no_of_node = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 14
  %7 = ptrtoint ptr %no_of_node to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %no_of_node, align 4
  %reg_read = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 15
  %8 = call ptr @memset(ptr %id2, i32 0, i32 35)
  %9 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rv8803_nvram_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 16
  %10 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @rv8803_nvram_write, ptr %reg_write, align 4
  %cell_post_process = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 17
  %11 = ptrtoint ptr %cell_post_process to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %cell_post_process, align 4
  %size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 18
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %size, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 19
  %13 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %word_size, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 20
  %14 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %stride, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 21
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %client, ptr %priv, align 4
  %compat = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 22
  %16 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %compat, align 4
  %base_dev = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 23
  %17 = ptrtoint ptr %base_dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %base_dev, align 4
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %21(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 202899456
  call void @__sanitizer_cov_trace_const_cmp4(i32 202899456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 202899456
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev4, i32 noundef 108, i32 noundef 3520) #8
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.body9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body9:                                         ; preds = %if.end
  %flags_lock = getelementptr inbounds %struct.rv8803_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %flags_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @rv8803_probe.__key) #8
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %client, ptr %call.i, align 4
  %of_node14 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %23 = ptrtoint ptr %of_node14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node14, align 8
  %tobool15.not = icmp eq ptr %24, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call ptr @of_device_get_match_data(ptr noundef %dev4) #8
  %25 = ptrtoint ptr %call18 to i32
  br label %if.end21

if.else:                                          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %26 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %driver_data, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then16
  %.sink = phi i32 [ %27, %if.else ], [ %25, %if.then16 ]
  %28 = getelementptr inbounds %struct.rv8803_data, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %28, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i150 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 14) #8
  %31 = and i32 %call.i150, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %31)
  %switch.i.not = icmp eq i32 %31, -6
  br i1 %switch.i.not, label %do.body.i.1, label %if.end21.do.end.i_crit_edge

if.end21.do.end.i_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.1:                                      ; preds = %if.end21
  %call.i150.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 14) #8
  %32 = and i32 %call.i150.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %32)
  %switch.i.1.not = icmp eq i32 %32, -6
  br i1 %switch.i.1.not, label %do.body.i.2, label %do.body.i.1.do.end.i_crit_edge

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  %call.i150.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 14) #8
  %33 = and i32 %call.i150.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %33)
  %switch.i.2.not = icmp eq i32 %33, -6
  br i1 %switch.i.2.not, label %do.body.i.3, label %do.body.i.2.do.end.i_crit_edge

do.body.i.2.do.end.i_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i150.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 14) #8
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.3, %do.body.i.2.do.end.i_crit_edge, %do.body.i.1.do.end.i_crit_edge, %if.end21.do.end.i_crit_edge
  %call.i150.lcssa = phi i32 [ %call.i150, %if.end21.do.end.i_crit_edge ], [ %call.i150.1, %do.body.i.1.do.end.i_crit_edge ], [ %call.i150.2, %do.body.i.2.do.end.i_crit_edge ], [ %call.i150.3, %do.body.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150.lcssa)
  %cmp2.i = icmp slt i32 %call.i150.lcssa, 0
  br i1 %cmp2.i, label %rv8803_read_reg.exit.thread, label %if.end24

rv8803_read_reg.exit.thread:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.25, i32 noundef 14) #11
  br label %cleanup

if.end24:                                         ; preds = %do.end.i
  %and = and i32 %call.i150.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end24.if.end31_crit_edge, label %do.end29

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.9) #11
  br label %if.end31

if.end31:                                         ; preds = %do.end29, %if.end24.if.end31_crit_edge
  %and32 = and i32 %call.i150.lcssa, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end39_crit_edge, label %do.end37

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.13) #11
  br label %if.end39

if.end39:                                         ; preds = %do.end37, %if.end31.if.end39_crit_edge
  %and40 = and i32 %call.i150.lcssa, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end47_crit_edge, label %do.end45

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.16) #11
  br label %if.end47

if.end47:                                         ; preds = %do.end45, %if.end39.if.end47_crit_edge
  %call49 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev4) #8
  %rtc = getelementptr inbounds %struct.rv8803_data, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call49, ptr %rtc, align 4
  %cmp.i151 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %call49 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.end47
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp56 = icmp sgt i32 %37, 0
  br i1 %cmp56, label %if.then57, label %if.end55.if.end69_crit_edge

if.end55.if.end69_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then57:                                        ; preds = %if.end55
  %call60 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev4, i32 noundef %37, ptr noundef null, ptr noundef nonnull @rv8803_handle_irq, i32 noundef 8200, ptr noundef nonnull @.str.18, ptr noundef %client) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end69thread-pre-split, label %if.end69.thread

if.end69.thread:                                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.20) #11
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %irq, align 4
  br label %if.then72

if.end69thread-pre-split:                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load i32, ptr %irq, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.end69thread-pre-split, %if.end55.if.end69_crit_edge
  %40 = phi i32 [ %.pr, %if.end69thread-pre-split ], [ %37, %if.end55.if.end69_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool71.not = icmp eq i32 %40, 0
  br i1 %tobool71.not, label %if.end69.if.then72_crit_edge, label %if.end69.if.end74_crit_edge

if.end69.if.end74_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.end69.if.then72_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72

if.then72:                                        ; preds = %if.end69.if.then72_crit_edge, %if.end69.thread
  %41 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rtc, align 4
  %features = getelementptr inbounds %struct.rtc_device, ptr %42, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %features) #8
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end69.if.end74_crit_edge
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %call76 = tail call fastcc i32 @rv8803_write_reg(ptr noundef %44, i8 noundef zeroext 13, i8 noundef zeroext 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end79:                                         ; preds = %if.end74
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4, i32 27
  %47 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i152 = icmp eq ptr %48, null
  br i1 %tobool.not.i152, label %if.end79.if.end87_crit_edge, label %if.end.i

if.end79.if.end87_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.end.i:                                         ; preds = %if.end79
  %49 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.not.i = icmp eq i32 %50, 2
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i.if.end87_crit_edge

if.end.i.if.end87_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.end3.i:                                        ; preds = %if.end.i
  %call.i153 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %46, i8 noundef zeroext 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %cmp5.i = icmp slt i32 %call.i153, 0
  br i1 %cmp5.i, label %if.end3.i.do.end85_crit_edge, label %rx8900_trickle_charger_init.exit

if.end3.i.do.end85_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

rx8900_trickle_charger_init.exit:                 ; preds = %if.end3.i
  %51 = trunc i32 %call.i153 to i8
  %conv9.i = and i8 %51, -13
  %call.i.i154 = tail call ptr @of_find_property(ptr noundef nonnull %48, ptr noundef nonnull @.str.32, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i.i154, null
  %52 = or i8 %conv9.i, 8
  %spec.select.i = select i1 %tobool.i.not.i, i8 %conv9.i, i8 %52
  %call.i35.i = tail call ptr @of_find_property(ptr noundef nonnull %48, ptr noundef nonnull @.str.33, ptr noundef null) #8
  %tobool.i36.not.i = icmp eq ptr %call.i35.i, null
  %53 = or i8 %spec.select.i, 4
  %flags.1.i = select i1 %tobool.i36.not.i, i8 %spec.select.i, i8 %53
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  %call22.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %55, i8 noundef zeroext 24, i8 noundef zeroext %flags.1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool81.not = icmp eq i32 %call22.i, 0
  br i1 %tobool81.not, label %rx8900_trickle_charger_init.exit.if.end87_crit_edge, label %rx8900_trickle_charger_init.exit.do.end85_crit_edge

rx8900_trickle_charger_init.exit.do.end85_crit_edge: ; preds = %rx8900_trickle_charger_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end85

rx8900_trickle_charger_init.exit.if.end87_crit_edge: ; preds = %rx8900_trickle_charger_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

do.end85:                                         ; preds = %rx8900_trickle_charger_init.exit.do.end85_crit_edge, %if.end3.i.do.end85_crit_edge
  %retval.0.i161 = phi i32 [ %call22.i, %rx8900_trickle_charger_init.exit.do.end85_crit_edge ], [ %call.i153, %if.end3.i.do.end85_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.23) #11
  br label %cleanup

if.end87:                                         ; preds = %rx8900_trickle_charger_init.exit.if.end87_crit_edge, %if.end.i.if.end87_crit_edge, %if.end79.if.end87_crit_edge
  %56 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rtc, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @rv8803_rtc_ops, ptr %ops, align 8
  %59 = load ptr, ptr %rtc, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %59, i32 0, i32 22
  %60 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 946684800, ptr %range_min, align 8
  %61 = load ptr, ptr %rtc, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %61, i32 0, i32 23
  %62 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 4102444799, ptr %range_max, align 8
  %63 = load ptr, ptr %rtc, align 4
  %call92 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end95:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rtc, align 4
  %call97 = call i32 @devm_rtc_nvmem_register(ptr noundef %65, ptr noundef nonnull %nvmem_cfg) #8
  %66 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rtc, align 4
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %67, i32 0, i32 12
  %68 = ptrtoint ptr %max_user_freq to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %max_user_freq, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %if.end87.cleanup_crit_edge, %do.end85, %if.end74.cleanup_crit_edge, %if.then52, %rv8803_read_reg.exit.thread, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %35, %if.then52 ], [ %retval.0.i161, %do.end85 ], [ 0, %if.end95 ], [ -5, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call76, %if.end74.cleanup_crit_edge ], [ %call92, %if.end87.cleanup_crit_edge ], [ %call.i150.lcssa, %rv8803_read_reg.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv8803_nvram_read(ptr noundef %priv, i32 noundef %offset, ptr nocapture noundef writeonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %priv, i8 noundef zeroext 7) #8
  %0 = and i32 %call.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %0)
  %switch.i.not = icmp eq i32 %0, -6
  br i1 %switch.i.not, label %do.body.i.1, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.1:                                      ; preds = %entry
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %priv, i8 noundef zeroext 7) #8
  %1 = and i32 %call.i.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %1)
  %switch.i.1.not = icmp eq i32 %1, -6
  br i1 %switch.i.1.not, label %do.body.i.2, label %do.body.i.1.do.end.i_crit_edge

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  %call.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %priv, i8 noundef zeroext 7) #8
  %2 = and i32 %call.i.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %2)
  %switch.i.2.not = icmp eq i32 %2, -6
  br i1 %switch.i.2.not, label %do.body.i.3, label %do.body.i.2.do.end.i_crit_edge

do.body.i.2.do.end.i_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %priv, i8 noundef zeroext 7) #8
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.3, %do.body.i.2.do.end.i_crit_edge, %do.body.i.1.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.do.end.i_crit_edge ], [ %call.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %call.i.2, %do.body.i.2.do.end.i_crit_edge ], [ %call.i.3, %do.body.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa)
  %cmp2.i = icmp slt i32 %call.i.lcssa, 0
  br i1 %cmp2.i, label %rv8803_read_reg.exit.thread, label %if.end

rv8803_read_reg.exit.thread:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %priv, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef 7) #11
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %call.i.lcssa to i8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rv8803_read_reg.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i.lcssa, %rv8803_read_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv8803_nvram_write(ptr noundef %priv, i32 noundef %offset, ptr nocapture noundef readonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %val, align 1
  %call = tail call fastcc i32 @rv8803_write_reg(ptr noundef %priv, i8 noundef zeroext 7, i8 noundef zeroext %1)
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv8803_handle_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %dev_id, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags_lock = getelementptr inbounds %struct.rv8803_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %flags_lock, i32 noundef 0) #8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %dev_id, i8 noundef zeroext 14) #8
  %2 = and i32 %call.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %2)
  %switch.i.not = icmp eq i32 %2, -6
  br i1 %switch.i.not, label %do.body.i.1, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.1:                                      ; preds = %entry
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %dev_id, i8 noundef zeroext 14) #8
  %3 = and i32 %call.i.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %3)
  %switch.i.1.not = icmp eq i32 %3, -6
  br i1 %switch.i.1.not, label %do.body.i.2, label %do.body.i.1.do.end.i_crit_edge

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  %call.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %dev_id, i8 noundef zeroext 14) #8
  %4 = and i32 %call.i.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %4)
  %switch.i.2.not = icmp eq i32 %4, -6
  br i1 %switch.i.2.not, label %do.body.i.3, label %do.body.i.2.do.end.i_crit_edge

do.body.i.2.do.end.i_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %dev_id, i8 noundef zeroext 14) #8
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.3, %do.body.i.2.do.end.i_crit_edge, %do.body.i.1.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.do.end.i_crit_edge ], [ %call.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %call.i.2, %do.body.i.2.do.end.i_crit_edge ], [ %call.i.3, %do.body.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa)
  %cmp2.i = icmp slt i32 %call.i.lcssa, 0
  br i1 %cmp2.i, label %rv8803_read_reg.exit.thread, label %rv8803_read_reg.exit

rv8803_read_reg.exit.thread:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %dev_id, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef 14) #11
  br label %cleanup

rv8803_read_reg.exit:                             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa)
  %cmp = icmp eq i32 %call.i.lcssa, 0
  br i1 %cmp, label %rv8803_read_reg.exit.cleanup_crit_edge, label %if.end

rv8803_read_reg.exit.cleanup_crit_edge:           ; preds = %rv8803_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %rv8803_read_reg.exit
  %and = and i32 %call.i.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %dev_id, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %and5 = and i32 %call.i.lcssa, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end12_crit_edge, label %do.end10

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %dev_id, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11, ptr noundef nonnull @.str.13) #11
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end4.if.end12_crit_edge
  %and13 = and i32 %call.i.lcssa, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end19_crit_edge, label %if.then15

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %and16 = and i32 %call.i.lcssa, -17
  %ctrl = getelementptr inbounds %struct.rv8803_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctrl, align 4
  %7 = and i8 %6, -17
  store i8 %7, ptr %ctrl, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end12.if.end19_crit_edge
  %events.0 = phi i32 [ 64, %if.then15 ], [ 0, %if.end12.if.end19_crit_edge ]
  %flags.0 = phi i32 [ %and16, %if.then15 ], [ %call.i.lcssa, %if.end12.if.end19_crit_edge ]
  %and20 = and i32 %flags.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end29_crit_edge, label %if.then22

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %and23 = and i32 %flags.0, -9
  %ctrl24 = getelementptr inbounds %struct.rv8803_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %ctrl24 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl24, align 4
  %10 = and i8 %9, -9
  store i8 %10, ptr %ctrl24, align 4
  %or28 = or i32 %events.0, 32
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.end19.if.end29_crit_edge
  %events.1 = phi i32 [ %or28, %if.then22 ], [ %events.0, %if.end19.if.end29_crit_edge ]
  %flags.1 = phi i32 [ %and23, %if.then22 ], [ %flags.0, %if.end19.if.end29_crit_edge ]
  %and30 = and i32 %flags.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end39, label %if.end39.thread

if.end39.thread:                                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %and33 = and i32 %flags.1, -33
  %ctrl34 = getelementptr inbounds %struct.rv8803_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %ctrl34 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctrl34, align 4
  %13 = and i8 %12, -33
  store i8 %13, ptr %ctrl34, align 4
  %or38 = or i32 %events.1, 16
  br label %if.then41

if.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %events.1)
  %tobool40.not = icmp eq i32 %events.1, 0
  br i1 %tobool40.not, label %if.end39.cleanup_crit_edge, label %if.end39.if.then41_crit_edge

if.end39.if.then41_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41:                                        ; preds = %if.end39.if.then41_crit_edge, %if.end39.thread
  %flags.282 = phi i32 [ %and33, %if.end39.thread ], [ %flags.1, %if.end39.if.then41_crit_edge ]
  %events.281 = phi i32 [ %or38, %if.end39.thread ], [ %events.1, %if.end39.if.then41_crit_edge ]
  %rtc = getelementptr inbounds %struct.rv8803_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtc, align 4
  tail call void @rtc_update_irq(ptr noundef %15, i32 noundef 1, i32 noundef %events.281) #8
  %conv42 = trunc i32 %flags.282 to i8
  %call43 = tail call fastcc i32 @rv8803_write_reg(ptr noundef %dev_id, i8 noundef zeroext 14, i8 noundef zeroext %conv42)
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %ctrl45 = getelementptr inbounds %struct.rv8803_data, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %ctrl45 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ctrl45, align 4
  %call46 = tail call fastcc i32 @rv8803_write_reg(ptr noundef %17, i8 noundef zeroext 15, i8 noundef zeroext %19)
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end39.cleanup_crit_edge, %rv8803_read_reg.exit.cleanup_crit_edge, %rv8803_read_reg.exit.thread
  %retval.0 = phi i32 [ 0, %rv8803_read_reg.exit.thread ], [ 0, %rv8803_read_reg.exit.cleanup_crit_edge ], [ 1, %if.then41 ], [ 1, %if.end39.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %flags_lock) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rv8803_write_reg(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %value) #8
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.do.end5_crit_edge [
    i32 -6, label %entry.land.rhs_crit_edge
    i32 -5, label %entry.land.rhs_crit_edge15
    i32 0, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.land.rhs_crit_edge15:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

land.rhs:                                         ; preds = %entry.land.rhs_crit_edge, %entry.land.rhs_crit_edge15
  %call.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %value) #8
  %1 = zext i32 %call.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call.1, label %land.rhs.do.end5_crit_edge [
    i32 -6, label %land.rhs.land.rhs.1_crit_edge
    i32 -5, label %land.rhs.land.rhs.1_crit_edge16
    i32 0, label %land.rhs.if.end_crit_edge
  ]

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs.land.rhs.1_crit_edge16:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.1

land.rhs.land.rhs.1_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.1

land.rhs.do.end5_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

land.rhs.1:                                       ; preds = %land.rhs.land.rhs.1_crit_edge, %land.rhs.land.rhs.1_crit_edge16
  %call.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %value) #8
  %2 = zext i32 %call.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call.2, label %land.rhs.1.do.end5_crit_edge [
    i32 -6, label %land.rhs.1.land.rhs.2_crit_edge
    i32 -5, label %land.rhs.1.land.rhs.2_crit_edge17
    i32 0, label %land.rhs.1.if.end_crit_edge
  ]

land.rhs.1.if.end_crit_edge:                      ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs.1.land.rhs.2_crit_edge17:                ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.2

land.rhs.1.land.rhs.2_crit_edge:                  ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.2

land.rhs.1.do.end5_crit_edge:                     ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

land.rhs.2:                                       ; preds = %land.rhs.1.land.rhs.2_crit_edge, %land.rhs.1.land.rhs.2_crit_edge17
  %call.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cond = icmp eq i32 %call.3, 0
  br i1 %cond, label %land.rhs.2.if.end_crit_edge, label %land.rhs.2.do.end5_crit_edge

land.rhs.2.do.end5_crit_edge:                     ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

land.rhs.2.if.end_crit_edge:                      ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end5:                                          ; preds = %land.rhs.2.do.end5_crit_edge, %land.rhs.1.do.end5_crit_edge, %land.rhs.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end5_crit_edge ], [ %call.1, %land.rhs.do.end5_crit_edge ], [ %call.2, %land.rhs.1.do.end5_crit_edge ], [ %call.3, %land.rhs.2.do.end5_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv = zext i8 %reg to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %conv) #11
  br label %if.end

if.end:                                           ; preds = %do.end5, %land.rhs.2.if.end_crit_edge, %land.rhs.1.if.end_crit_edge, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call14 = phi i32 [ %call.lcssa, %do.end5 ], [ 0, %land.rhs.2.if.end_crit_edge ], [ %call.2, %land.rhs.1.if.end_crit_edge ], [ %call.1, %land.rhs.if.end_crit_edge ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %call14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv8803_ioctl(ptr noundef %dev, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2147192813, label %do.body.i
    i32 28692, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 14) #8
  %1 = and i32 %call.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %1)
  %switch.i.not = icmp eq i32 %1, -6
  br i1 %switch.i.not, label %do.body.i.1, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.1:                                      ; preds = %do.body.i
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 14) #8
  %2 = and i32 %call.i.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %2)
  %switch.i.1.not = icmp eq i32 %2, -6
  br i1 %switch.i.1.not, label %do.body.i.2, label %do.body.i.1.do.end.i_crit_edge

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  %call.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 14) #8
  %3 = and i32 %call.i.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %3)
  %switch.i.2.not = icmp eq i32 %3, -6
  br i1 %switch.i.2.not, label %do.body.i.3, label %do.body.i.2.do.end.i_crit_edge

do.body.i.2.do.end.i_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 14) #8
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.3, %do.body.i.2.do.end.i_crit_edge, %do.body.i.1.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %do.body.i.do.end.i_crit_edge ], [ %call.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %call.i.2, %do.body.i.2.do.end.i_crit_edge ], [ %call.i.3, %do.body.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa)
  %cmp2.i = icmp slt i32 %call.i.lcssa, 0
  br i1 %cmp2.i, label %rv8803_read_reg.exit.thread, label %if.end

rv8803_read_reg.exit.thread:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef 14) #11
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  %and = and i32 %call.i.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  %vl.0 = phi i32 [ 8, %do.end ], [ 0, %if.end.if.end4_crit_edge ]
  %and5 = lshr i32 %call.i.lcssa, 1
  %4 = and i32 %and5, 1
  %5 = or i32 %vl.0, %4
  %6 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 432) #8
  %7 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !106
  %and.i = and i32 %9, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %10 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %6, i32 %5, i32 -1226833921) #8, !srcloc !109
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i, align 4
  %flags_lock = getelementptr inbounds %struct.rv8803_data, ptr %12, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %flags_lock, i32 noundef 0) #8
  %call.i47 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 14) #8
  %13 = and i32 %call.i47, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %13)
  %switch.i48.not = icmp eq i32 %13, -6
  br i1 %switch.i48.not, label %do.body.i52.1, label %sw.bb15.do.end.i54_crit_edge

sw.bb15.do.end.i54_crit_edge:                     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i54

do.body.i52.1:                                    ; preds = %sw.bb15
  %call.i47.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 14) #8
  %14 = and i32 %call.i47.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %14)
  %switch.i48.1.not = icmp eq i32 %14, -6
  br i1 %switch.i48.1.not, label %do.body.i52.2, label %do.body.i52.1.do.end.i54_crit_edge

do.body.i52.1.do.end.i54_crit_edge:               ; preds = %do.body.i52.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i54

do.body.i52.2:                                    ; preds = %do.body.i52.1
  %call.i47.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 14) #8
  %15 = and i32 %call.i47.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %15)
  %switch.i48.2.not = icmp eq i32 %15, -6
  br i1 %switch.i48.2.not, label %do.body.i52.3, label %do.body.i52.2.do.end.i54_crit_edge

do.body.i52.2.do.end.i54_crit_edge:               ; preds = %do.body.i52.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i54

do.body.i52.3:                                    ; preds = %do.body.i52.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i47.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 14) #8
  br label %do.end.i54

do.end.i54:                                       ; preds = %do.body.i52.3, %do.body.i52.2.do.end.i54_crit_edge, %do.body.i52.1.do.end.i54_crit_edge, %sw.bb15.do.end.i54_crit_edge
  %call.i47.lcssa = phi i32 [ %call.i47, %sw.bb15.do.end.i54_crit_edge ], [ %call.i47.1, %do.body.i52.1.do.end.i54_crit_edge ], [ %call.i47.2, %do.body.i52.2.do.end.i54_crit_edge ], [ %call.i47.3, %do.body.i52.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.lcssa)
  %cmp2.i53 = icmp slt i32 %call.i47.lcssa, 0
  br i1 %cmp2.i53, label %if.then18, label %if.end20

if.then18:                                        ; preds = %do.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef 14) #11
  tail call void @mutex_unlock(ptr noundef %flags_lock) #8
  br label %cleanup

if.end20:                                         ; preds = %do.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  %16 = trunc i32 %call.i47.lcssa to i8
  %conv = and i8 %16, -2
  %call22 = tail call fastcc i32 @rv8803_write_reg(ptr noundef %add.ptr, i8 noundef zeroext 14, i8 noundef zeroext %conv)
  tail call void @mutex_unlock(ptr noundef %flags_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then18, %if.end4, %rv8803_read_reg.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i47.lcssa, %if.then18 ], [ %10, %if.end4 ], [ %call22, %if.end20 ], [ -515, %entry.cleanup_crit_edge ], [ %call.i.lcssa, %rv8803_read_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv8803_get_time(ptr noundef %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %date1 = alloca [7 x i8], align 1
  %date2 = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %date1) #8
  %2 = call ptr @memset(ptr %date1, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %date2) #8
  %3 = call ptr @memset(ptr %date2, i32 255, i32 7)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 14) #8
  %6 = and i32 %call.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %6)
  %switch.i.not = icmp eq i32 %6, -6
  br i1 %switch.i.not, label %do.body.i.1, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.1:                                      ; preds = %entry
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 14) #8
  %7 = and i32 %call.i.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %7)
  %switch.i.1.not = icmp eq i32 %7, -6
  br i1 %switch.i.1.not, label %do.body.i.2, label %do.body.i.1.do.end.i_crit_edge

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  %call.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 14) #8
  %8 = and i32 %call.i.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %8)
  %switch.i.2.not = icmp eq i32 %8, -6
  br i1 %switch.i.2.not, label %do.body.i.3, label %do.body.i.2.do.end.i_crit_edge

do.body.i.2.do.end.i_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 14) #8
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.3, %do.body.i.2.do.end.i_crit_edge, %do.body.i.1.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.do.end.i_crit_edge ], [ %call.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %call.i.2, %do.body.i.2.do.end.i_crit_edge ], [ %call.i.3, %do.body.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa)
  %cmp2.i = icmp slt i32 %call.i.lcssa, 0
  br i1 %cmp2.i, label %rv8803_read_reg.exit.thread, label %if.end

rv8803_read_reg.exit.thread:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef 14) #11
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  %and = and i32 %call.i.lcssa, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i225 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %10, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %date1) #8
  %11 = and i32 %call.i225, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %11)
  %switch.i226.not = icmp eq i32 %11, -6
  br i1 %switch.i226.not, label %do.body.i230.1, label %if.end3.do.end.i231_crit_edge

if.end3.do.end.i231_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i231

do.body.i230.1:                                   ; preds = %if.end3
  %call.i225.1 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %10, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %date1) #8
  %12 = and i32 %call.i225.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %12)
  %switch.i226.1.not = icmp eq i32 %12, -6
  br i1 %switch.i226.1.not, label %do.body.i230.2, label %do.body.i230.1.do.end.i231_crit_edge

do.body.i230.1.do.end.i231_crit_edge:             ; preds = %do.body.i230.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i231

do.body.i230.2:                                   ; preds = %do.body.i230.1
  %call.i225.2 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %10, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %date1) #8
  %13 = and i32 %call.i225.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %13)
  %switch.i226.2.not = icmp eq i32 %13, -6
  br i1 %switch.i226.2.not, label %do.body.i230.3, label %do.body.i230.2.do.end.i231_crit_edge

do.body.i230.2.do.end.i231_crit_edge:             ; preds = %do.body.i230.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i231

do.body.i230.3:                                   ; preds = %do.body.i230.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i225.3 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %10, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %date1) #8
  br label %do.end.i231

do.end.i231:                                      ; preds = %do.body.i230.3, %do.body.i230.2.do.end.i231_crit_edge, %do.body.i230.1.do.end.i231_crit_edge, %if.end3.do.end.i231_crit_edge
  %call.i225.lcssa = phi i32 [ %call.i225, %if.end3.do.end.i231_crit_edge ], [ %call.i225.1, %do.body.i230.1.do.end.i231_crit_edge ], [ %call.i225.2, %do.body.i230.2.do.end.i231_crit_edge ], [ %call.i225.3, %do.body.i230.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i225.lcssa)
  %cmp2.not.i = icmp eq i32 %call.i225.lcssa, 7
  br i1 %cmp2.not.i, label %if.end8, label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i231
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i232 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i232, ptr noundef nonnull @.str.37, i32 noundef 0, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225.lcssa)
  %cmp10.i = icmp slt i32 %call.i225.lcssa, 0
  %spec.select253 = select i1 %cmp10.i, i32 %call.i225.lcssa, i32 -5
  br label %cleanup

if.end8:                                          ; preds = %do.end.i231
  %14 = ptrtoint ptr %date1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %date1, align 1
  %16 = and i8 %15, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 89, i8 %16)
  %cmp10 = icmp eq i8 %16, 89
  br i1 %cmp10, label %if.then12, label %if.end8.cond.end_crit_edge

if.end8.cond.end_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.then12:                                        ; preds = %if.end8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i234 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %18, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %date2) #8
  %19 = and i32 %call.i234, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %19)
  %switch.i235.not = icmp eq i32 %19, -6
  br i1 %switch.i235.not, label %do.body.i239.1, label %if.then12.do.end.i241_crit_edge

if.then12.do.end.i241_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i241

do.body.i239.1:                                   ; preds = %if.then12
  %call.i234.1 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %18, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %date2) #8
  %20 = and i32 %call.i234.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %20)
  %switch.i235.1.not = icmp eq i32 %20, -6
  br i1 %switch.i235.1.not, label %do.body.i239.2, label %do.body.i239.1.do.end.i241_crit_edge

do.body.i239.1.do.end.i241_crit_edge:             ; preds = %do.body.i239.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i241

do.body.i239.2:                                   ; preds = %do.body.i239.1
  %call.i234.2 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %18, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %date2) #8
  %21 = and i32 %call.i234.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %21)
  %switch.i235.2.not = icmp eq i32 %21, -6
  br i1 %switch.i235.2.not, label %do.body.i239.3, label %do.body.i239.2.do.end.i241_crit_edge

do.body.i239.2.do.end.i241_crit_edge:             ; preds = %do.body.i239.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i241

do.body.i239.3:                                   ; preds = %do.body.i239.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i234.3 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %18, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %date2) #8
  br label %do.end.i241

do.end.i241:                                      ; preds = %do.body.i239.3, %do.body.i239.2.do.end.i241_crit_edge, %do.body.i239.1.do.end.i241_crit_edge, %if.then12.do.end.i241_crit_edge
  %call.i234.lcssa = phi i32 [ %call.i234, %if.then12.do.end.i241_crit_edge ], [ %call.i234.1, %do.body.i239.1.do.end.i241_crit_edge ], [ %call.i234.2, %do.body.i239.2.do.end.i241_crit_edge ], [ %call.i234.3, %do.body.i239.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i234.lcssa)
  %cmp2.not.i240 = icmp eq i32 %call.i234.lcssa, 7
  br i1 %cmp2.not.i240, label %if.end18, label %do.end6.i245

do.end6.i245:                                     ; preds = %do.end.i241
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i242 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i242, ptr noundef nonnull @.str.37, i32 noundef 0, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234.lcssa)
  %cmp10.i243 = icmp slt i32 %call.i234.lcssa, 0
  %spec.select254 = select i1 %cmp10.i243, i32 %call.i234.lcssa, i32 -5
  br label %cleanup

if.end18:                                         ; preds = %do.end.i241
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %date2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %date2, align 1
  %24 = and i8 %23, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 89, i8 %24)
  %cmp22.not = icmp eq i8 %24, 89
  %spec.select = select i1 %cmp22.not, ptr %date1, ptr %date2
  br label %cond.end

cond.end:                                         ; preds = %if.end18, %if.end8.cond.end_crit_edge
  %date.0 = phi ptr [ %date1, %if.end8.cond.end_crit_edge ], [ %spec.select, %if.end18 ]
  %25 = ptrtoint ptr %date.0 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %date.0, align 1
  %27 = and i8 %26, 127
  %call43 = call i32 @_bcd2bin(i8 noundef zeroext %27) #12
  %28 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call43, ptr %tm, align 4
  %arrayidx44 = getelementptr i8, ptr %date.0, i32 1
  %29 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx44, align 1
  %31 = and i8 %30, 127
  %call64 = call i32 @_bcd2bin(i8 noundef zeroext %31) #12
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %32 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call64, ptr %tm_min, align 4
  %arrayidx67 = getelementptr i8, ptr %date.0, i32 2
  %33 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx67, align 1
  %35 = and i8 %34, 63
  %call87 = call i32 @_bcd2bin(i8 noundef zeroext %35) #12
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %36 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call87, ptr %tm_hour, align 4
  %arrayidx90 = getelementptr i8, ptr %date.0, i32 3
  %37 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx90, align 1
  %39 = and i8 %38, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i = icmp eq i8 %39, 0
  %and92 = zext i8 %39 to i32
  %40 = call i32 @llvm.ctlz.i32(i32 %and92, i1 true) #8, !range !110
  %sub.i.op.i = xor i32 %40, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %41 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub.i, ptr %tm_wday, align 4
  %arrayidx114 = getelementptr i8, ptr %date.0, i32 4
  %42 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx114, align 1
  %44 = and i8 %43, 63
  %call134 = call i32 @_bcd2bin(i8 noundef zeroext %44) #12
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %45 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call134, ptr %tm_mday, align 4
  %arrayidx137 = getelementptr i8, ptr %date.0, i32 5
  %46 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx137, align 1
  %48 = and i8 %47, 31
  %call157 = call i32 @_bcd2bin(i8 noundef zeroext %48) #12
  %sub160 = add i32 %call157, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %49 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub160, ptr %tm_mon, align 4
  %arrayidx161 = getelementptr i8, ptr %date.0, i32 6
  %50 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx161, align 1
  %call173 = call i32 @_bcd2bin(i8 noundef zeroext %51) #12
  %add176 = add i32 %call173, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %52 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add176, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end6.i245, %do.end6.i, %do.end, %rv8803_read_reg.exit.thread
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %cond.end ], [ %call.i.lcssa, %rv8803_read_reg.exit.thread ], [ %spec.select253, %do.end6.i ], [ %spec.select254, %do.end6.i245 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %date2) #8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %date1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv8803_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %date = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %date) #8
  %2 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %date, i32 0, i32 6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 15) #8
  %10 = and i32 %call.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %10)
  %switch.i.not = icmp eq i32 %10, -6
  br i1 %switch.i.not, label %do.body.i.1, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.1:                                      ; preds = %entry
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 15) #8
  %11 = and i32 %call.i.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %11)
  %switch.i.1.not = icmp eq i32 %11, -6
  br i1 %switch.i.1.not, label %do.body.i.2, label %do.body.i.1.do.end.i_crit_edge

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  %call.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 15) #8
  %12 = and i32 %call.i.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %12)
  %switch.i.2.not = icmp eq i32 %12, -6
  br i1 %switch.i.2.not, label %do.body.i.3, label %do.body.i.2.do.end.i_crit_edge

do.body.i.2.do.end.i_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 15) #8
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.3, %do.body.i.2.do.end.i_crit_edge, %do.body.i.1.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.do.end.i_crit_edge ], [ %call.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %call.i.2, %do.body.i.2.do.end.i_crit_edge ], [ %call.i.3, %do.body.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa)
  %cmp2.i = icmp slt i32 %call.i.lcssa, 0
  br i1 %cmp2.i, label %rv8803_read_reg.exit.thread, label %if.end

rv8803_read_reg.exit.thread:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef 15) #11
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = trunc i32 %call.i.lcssa to i8
  %conv = or i8 %15, 1
  %call3 = tail call fastcc i32 @rv8803_write_reg(ptr noundef %14, i8 noundef zeroext 15, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cond.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end:                                         ; preds = %if.end
  %16 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm, align 4
  %call10 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #12
  %18 = ptrtoint ptr %date to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call10, ptr %date, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %19 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_min, align 4
  %call23 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #12
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call23, ptr %2, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %22 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_hour, align 4
  %call39 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #12
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call39, ptr %3, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %25 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_wday, align 4
  %shl45 = shl nuw i32 1, %26
  %conv46 = trunc i32 %shl45 to i8
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv46, ptr %4, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %28 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_mday, align 4
  %call58 = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #12
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call58, ptr %5, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %31 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_mon, align 4
  %add64 = add i32 %32, 1
  %call78 = tail call zeroext i8 @_bin2bcd(i32 noundef %add64) #12
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call78, ptr %6, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %34 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_year, align 4
  %sub = add i32 %35, -100
  %call97 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #12
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call97, ptr %7, align 1
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call104 = call fastcc i32 @rv8803_write_regs(ptr noundef %38, i8 noundef zeroext 0, i8 noundef zeroext 7, ptr noundef nonnull %date)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end107:                                        ; preds = %cond.end
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %conv109 = and i8 %15, -2
  %call110 = call fastcc i32 @rv8803_write_reg(ptr noundef %40, i8 noundef zeroext 15, i8 noundef zeroext %conv109)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end107.cleanup_crit_edge

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end113:                                        ; preds = %if.end107
  %flags_lock = getelementptr inbounds %struct.rv8803_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %flags_lock, i32 noundef 0) #8
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i174 = call i32 @i2c_smbus_read_byte_data(ptr noundef %42, i8 noundef zeroext 14) #8
  %43 = and i32 %call.i174, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %43)
  %switch.i175.not = icmp eq i32 %43, -6
  br i1 %switch.i175.not, label %do.body.i179.1, label %if.end113.do.end.i181_crit_edge

if.end113.do.end.i181_crit_edge:                  ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i181

do.body.i179.1:                                   ; preds = %if.end113
  %call.i174.1 = call i32 @i2c_smbus_read_byte_data(ptr noundef %42, i8 noundef zeroext 14) #8
  %44 = and i32 %call.i174.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %44)
  %switch.i175.1.not = icmp eq i32 %44, -6
  br i1 %switch.i175.1.not, label %do.body.i179.2, label %do.body.i179.1.do.end.i181_crit_edge

do.body.i179.1.do.end.i181_crit_edge:             ; preds = %do.body.i179.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i181

do.body.i179.2:                                   ; preds = %do.body.i179.1
  %call.i174.2 = call i32 @i2c_smbus_read_byte_data(ptr noundef %42, i8 noundef zeroext 14) #8
  %45 = and i32 %call.i174.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %45)
  %switch.i175.2.not = icmp eq i32 %45, -6
  br i1 %switch.i175.2.not, label %do.body.i179.3, label %do.body.i179.2.do.end.i181_crit_edge

do.body.i179.2.do.end.i181_crit_edge:             ; preds = %do.body.i179.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i181

do.body.i179.3:                                   ; preds = %do.body.i179.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i174.3 = call i32 @i2c_smbus_read_byte_data(ptr noundef %42, i8 noundef zeroext 14) #8
  br label %do.end.i181

do.end.i181:                                      ; preds = %do.body.i179.3, %do.body.i179.2.do.end.i181_crit_edge, %do.body.i179.1.do.end.i181_crit_edge, %if.end113.do.end.i181_crit_edge
  %call.i174.lcssa = phi i32 [ %call.i174, %if.end113.do.end.i181_crit_edge ], [ %call.i174.1, %do.body.i179.1.do.end.i181_crit_edge ], [ %call.i174.2, %do.body.i179.2.do.end.i181_crit_edge ], [ %call.i174.3, %do.body.i179.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174.lcssa)
  %cmp2.i180 = icmp slt i32 %call.i174.lcssa, 0
  br i1 %cmp2.i180, label %if.then118, label %if.end120

if.then118:                                       ; preds = %do.end.i181
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i182 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i182, ptr noundef nonnull @.str.25, i32 noundef 14) #11
  call void @mutex_unlock(ptr noundef %flags_lock) #8
  br label %cleanup

if.end120:                                        ; preds = %do.end.i181
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %48 = trunc i32 %call.i174.lcssa to i8
  %conv123 = and i8 %48, -4
  %call124 = call fastcc i32 @rv8803_write_reg(ptr noundef %47, i8 noundef zeroext 14, i8 noundef zeroext %conv123)
  call void @mutex_unlock(ptr noundef %flags_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %if.then118, %if.end107.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %rv8803_read_reg.exit.thread
  %retval.0 = phi i32 [ %call.i174.lcssa, %if.then118 ], [ %call124, %if.end120 ], [ %call3, %if.end.cleanup_crit_edge ], [ %call104, %cond.end.cleanup_crit_edge ], [ %call110, %if.end107.cleanup_crit_edge ], [ %call.i.lcssa, %rv8803_read_reg.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %date) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv8803_get_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alrm) #2 align 64 {
entry:
  %alarmvals = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %alarmvals) #8
  %4 = ptrtoint ptr %alarmvals to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %alarmvals, align 1, !annotation !111
  %5 = getelementptr inbounds [3 x i8], ptr %alarmvals, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !111
  %7 = getelementptr inbounds [3 x i8], ptr %alarmvals, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !111
  %call.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %3, i8 noundef zeroext 8, i8 noundef zeroext 3, ptr noundef nonnull %alarmvals) #8
  %9 = and i32 %call.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %9)
  %switch.i.not = icmp eq i32 %9, -6
  br i1 %switch.i.not, label %do.body.i.1, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.1:                                      ; preds = %entry
  %call.i.1 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %3, i8 noundef zeroext 8, i8 noundef zeroext 3, ptr noundef nonnull %alarmvals) #8
  %10 = and i32 %call.i.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %10)
  %switch.i.1.not = icmp eq i32 %10, -6
  br i1 %switch.i.1.not, label %do.body.i.2, label %do.body.i.1.do.end.i_crit_edge

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  %call.i.2 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %3, i8 noundef zeroext 8, i8 noundef zeroext 3, ptr noundef nonnull %alarmvals) #8
  %11 = and i32 %call.i.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %11)
  %switch.i.2.not = icmp eq i32 %11, -6
  br i1 %switch.i.2.not, label %do.body.i.3, label %do.body.i.2.do.end.i_crit_edge

do.body.i.2.do.end.i_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.3 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %3, i8 noundef zeroext 8, i8 noundef zeroext 3, ptr noundef nonnull %alarmvals) #8
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.3, %do.body.i.2.do.end.i_crit_edge, %do.body.i.1.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.do.end.i_crit_edge ], [ %call.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %call.i.2, %do.body.i.2.do.end.i_crit_edge ], [ %call.i.3, %do.body.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.lcssa)
  %cmp2.not.i = icmp eq i32 %call.i.lcssa, 3
  br i1 %cmp2.not.i, label %do.body.i100, label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, i32 noundef 8, i32 noundef 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa)
  %cmp10.i = icmp slt i32 %call.i.lcssa, 0
  %spec.select105 = select i1 %cmp10.i, i32 %call.i.lcssa, i32 -5
  br label %cleanup

do.body.i100:                                     ; preds = %do.end.i
  %call.i95 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 14) #8
  %12 = and i32 %call.i95, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %12)
  %switch.i96.not = icmp eq i32 %12, -6
  br i1 %switch.i96.not, label %do.body.i100.1, label %do.body.i100.do.end.i101_crit_edge

do.body.i100.do.end.i101_crit_edge:               ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i101

do.body.i100.1:                                   ; preds = %do.body.i100
  %call.i95.1 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 14) #8
  %13 = and i32 %call.i95.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %13)
  %switch.i96.1.not = icmp eq i32 %13, -6
  br i1 %switch.i96.1.not, label %do.body.i100.2, label %do.body.i100.1.do.end.i101_crit_edge

do.body.i100.1.do.end.i101_crit_edge:             ; preds = %do.body.i100.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i101

do.body.i100.2:                                   ; preds = %do.body.i100.1
  %call.i95.2 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 14) #8
  %14 = and i32 %call.i95.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %14)
  %switch.i96.2.not = icmp eq i32 %14, -6
  br i1 %switch.i96.2.not, label %do.body.i100.3, label %do.body.i100.2.do.end.i101_crit_edge

do.body.i100.2.do.end.i101_crit_edge:             ; preds = %do.body.i100.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i101

do.body.i100.3:                                   ; preds = %do.body.i100.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i95.3 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 14) #8
  br label %do.end.i101

do.end.i101:                                      ; preds = %do.body.i100.3, %do.body.i100.2.do.end.i101_crit_edge, %do.body.i100.1.do.end.i101_crit_edge, %do.body.i100.do.end.i101_crit_edge
  %call.i95.lcssa = phi i32 [ %call.i95, %do.body.i100.do.end.i101_crit_edge ], [ %call.i95.1, %do.body.i100.1.do.end.i101_crit_edge ], [ %call.i95.2, %do.body.i100.2.do.end.i101_crit_edge ], [ %call.i95.3, %do.body.i100.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.lcssa)
  %cmp2.i = icmp slt i32 %call.i95.lcssa, 0
  br i1 %cmp2.i, label %rv8803_read_reg.exit.thread, label %if.end5

rv8803_read_reg.exit.thread:                      ; preds = %do.end.i101
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i102 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i102, ptr noundef nonnull @.str.25, i32 noundef 14) #11
  br label %cleanup

if.end5:                                          ; preds = %do.end.i101
  call void @__sanitizer_cov_trace_pc() #10
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %15 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %time, align 4
  %16 = ptrtoint ptr %alarmvals to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %alarmvals, align 1
  %18 = and i8 %17, 127
  %call18 = call i32 @_bcd2bin(i8 noundef zeroext %18) #12
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call18, ptr %tm_min, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %5, align 1
  %22 = and i8 %21, 63
  %call40 = call i32 @_bcd2bin(i8 noundef zeroext %22) #12
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call40, ptr %tm_hour, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %7, align 1
  %26 = and i8 %25, 63
  %call64 = call i32 @_bcd2bin(i8 noundef zeroext %26) #12
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %27 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call64, ptr %tm_mday, align 4
  %ctrl = getelementptr inbounds %struct.rv8803_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ctrl, align 4
  %30 = lshr i8 %29, 3
  %.lobit = and i8 %30, 1
  %31 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.lobit, ptr %alrm, align 4
  %and73 = and i32 %call.i95.lcssa, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp ne i32 %and73, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lobit)
  %tobool77 = icmp ne i8 %.lobit, 0
  %spec.select = select i1 %tobool74.not, i1 %tobool77, i1 false
  %conv78 = zext i1 %spec.select to i8
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %32 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv78, ptr %pending, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %rv8803_read_reg.exit.thread, %do.end6.i
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call.i95.lcssa, %rv8803_read_reg.exit.thread ], [ %spec.select105, %do.end6.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %alarmvals) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv8803_set_alarm(ptr noundef %dev, ptr noundef %alrm) #2 align 64 {
entry:
  %alarmvals = alloca [3 x i8], align 1
  %ctrl = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %alarmvals) #8
  %2 = getelementptr inbounds [3 x i8], ptr %alarmvals, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %alarmvals, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctrl) #8
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ctrl, align 1, !annotation !111
  %5 = getelementptr inbounds [2 x i8], ptr %ctrl, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !111
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %7 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #8
  %9 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %time, align 4
  %sub = sub i32 60, %10
  %conv = sext i32 %sub to i64
  %add = add i64 %call2, %conv
  tail call void @rtc_time64_to_tm(i64 noundef %add, ptr noundef %time) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags_lock = getelementptr inbounds %struct.rv8803_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %flags_lock, i32 noundef 0) #8
  %call.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 14, i8 noundef zeroext 2, ptr noundef nonnull %ctrl) #8
  %11 = and i32 %call.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %11)
  %switch.i.not = icmp eq i32 %11, -6
  br i1 %switch.i.not, label %do.body.i.1, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.1:                                      ; preds = %if.end
  %call.i.1 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 14, i8 noundef zeroext 2, ptr noundef nonnull %ctrl) #8
  %12 = and i32 %call.i.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %12)
  %switch.i.1.not = icmp eq i32 %12, -6
  br i1 %switch.i.1.not, label %do.body.i.2, label %do.body.i.1.do.end.i_crit_edge

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  %call.i.2 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 14, i8 noundef zeroext 2, ptr noundef nonnull %ctrl) #8
  %13 = and i32 %call.i.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %13)
  %switch.i.2.not = icmp eq i32 %13, -6
  br i1 %switch.i.2.not, label %do.body.i.3, label %do.body.i.2.do.end.i_crit_edge

do.body.i.2.do.end.i_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.3 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext 14, i8 noundef zeroext 2, ptr noundef nonnull %ctrl) #8
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.3, %do.body.i.2.do.end.i_crit_edge, %do.body.i.1.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %if.end.do.end.i_crit_edge ], [ %call.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %call.i.2, %do.body.i.2.do.end.i_crit_edge ], [ %call.i.3, %do.body.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.lcssa)
  %cmp2.not.i = icmp eq i32 %call.i.lcssa, 2
  br i1 %cmp2.not.i, label %cond.end, label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef 14, i32 noundef 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa)
  %cmp10.i = icmp slt i32 %call.i.lcssa, 0
  %spec.select = select i1 %cmp10.i, i32 %call.i.lcssa, i32 -5
  call void @mutex_unlock(ptr noundef %flags_lock) #8
  br label %cleanup

cond.end:                                         ; preds = %do.end.i
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_min, align 4
  %call20 = call zeroext i8 @_bin2bcd(i32 noundef %15) #12
  %16 = ptrtoint ptr %alarmvals to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call20, ptr %alarmvals, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_hour, align 4
  %call37 = call zeroext i8 @_bin2bcd(i32 noundef %18) #12
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call37, ptr %2, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mday, align 4
  %call57 = call zeroext i8 @_bin2bcd(i32 noundef %21) #12
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call57, ptr %3, align 1
  %ctrl63 = getelementptr inbounds %struct.rv8803_data, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %ctrl63 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ctrl63, align 4
  %25 = and i8 %24, 40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool65.not = icmp eq i8 %25, 0
  br i1 %tobool65.not, label %cond.end.if.end78_crit_edge, label %if.then66

cond.end.if.end78_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then66:                                        ; preds = %cond.end
  %and69 = and i8 %24, -41
  %26 = ptrtoint ptr %ctrl63 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %and69, ptr %ctrl63, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call73 = call fastcc i32 @rv8803_write_reg(ptr noundef %28, i8 noundef zeroext 15, i8 noundef zeroext %and69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then66.if.end78_crit_edge, label %if.then75

if.then66.if.end78_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then75:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %flags_lock) #8
  br label %cleanup

if.end78:                                         ; preds = %if.then66.if.end78_crit_edge, %cond.end.if.end78_crit_edge
  %29 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ctrl, align 1
  %31 = and i8 %30, -9
  store i8 %31, ptr %ctrl, align 1
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call85 = call fastcc i32 @rv8803_write_reg(ptr noundef %33, i8 noundef zeroext 14, i8 noundef zeroext %31)
  call void @mutex_unlock(ptr noundef %flags_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool87.not = icmp eq i32 %call85, 0
  br i1 %tobool87.not, label %if.end89, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end89:                                         ; preds = %if.end78
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call92 = call fastcc i32 @rv8803_write_regs(ptr noundef %35, i8 noundef zeroext 8, i8 noundef zeroext 3, ptr noundef nonnull %alarmvals)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end95:                                         ; preds = %if.end89
  %36 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool96.not = icmp eq i8 %37, 0
  br i1 %tobool96.not, label %if.end95.if.end120_crit_edge, label %if.then97

if.end95.if.end120_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then97:                                        ; preds = %if.end95
  %rtc = getelementptr inbounds %struct.rv8803_data, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rtc, align 4
  %enabled98 = getelementptr inbounds %struct.rtc_device, ptr %39, i32 0, i32 15, i32 4
  %40 = ptrtoint ptr %enabled98 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %enabled98, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool99.not = icmp eq i32 %41, 0
  br i1 %tobool99.not, label %if.then97.if.end104_crit_edge, label %if.then100

if.then97.if.end104_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then100:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %ctrl63 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ctrl63, align 4
  %44 = or i8 %43, 32
  store i8 %44, ptr %ctrl63, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %if.then97.if.end104_crit_edge
  %45 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rtc, align 4
  %enabled106 = getelementptr inbounds %struct.rtc_device, ptr %46, i32 0, i32 14, i32 4
  %47 = ptrtoint ptr %enabled106 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %enabled106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool107.not = icmp eq i32 %48, 0
  br i1 %tobool107.not, label %if.end104.if.end113_crit_edge, label %if.then108

if.end104.if.end113_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %ctrl63 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ctrl63, align 4
  %51 = or i8 %50, 8
  store i8 %51, ptr %ctrl63, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then108, %if.end104.if.end113_crit_edge
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %54 = ptrtoint ptr %ctrl63 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ctrl63, align 4
  %call116 = call fastcc i32 @rv8803_write_reg(ptr noundef %53, i8 noundef zeroext 15, i8 noundef zeroext %55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end113.if.end120_crit_edge, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end113.if.end120_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.end120:                                        ; preds = %if.end113.if.end120_crit_edge, %if.end95.if.end120_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %if.end113.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.then75, %do.end6.i
  %retval.0 = phi i32 [ %spec.select, %do.end6.i ], [ %call73, %if.then75 ], [ 0, %if.end120 ], [ %call85, %if.end78.cleanup_crit_edge ], [ %call92, %if.end89.cleanup_crit_edge ], [ %call116, %if.end113.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctrl) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %alarmvals) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv8803_alarm_irq_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ctrl1 = getelementptr inbounds %struct.rv8803_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrl1, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %rtc11 = getelementptr inbounds %struct.rv8803_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %rtc11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc11, align 4
  %enabled13 = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 15, i32 4
  %6 = ptrtoint ptr %enabled13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enabled13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool14.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %conv, 32
  %spec.select = select i1 %tobool14.not, i32 %conv, i32 %or
  %enabled6 = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 14, i32 4
  %8 = ptrtoint ptr %enabled6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enabled6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  %or9 = or i32 %spec.select, 8
  %spec.select79 = select i1 %tobool7.not, i32 %spec.select, i32 %or9
  br label %if.end24

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %conv, 223
  %spec.select78 = select i1 %tobool14.not, i32 %and, i32 %conv
  %enabled19 = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 14, i32 4
  %10 = ptrtoint ptr %enabled19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enabled19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp eq i32 %11, 0
  %and22 = and i32 %spec.select78, 247
  %spec.select80 = select i1 %tobool20.not, i32 %and22, i32 %spec.select78
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then
  %ctrl.2 = phi i32 [ %spec.select79, %if.then ], [ %spec.select80, %if.else ]
  %flags_lock = getelementptr inbounds %struct.rv8803_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %flags_lock, i32 noundef 0) #8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 14) #8
  %12 = and i32 %call.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %12)
  %switch.i.not = icmp eq i32 %12, -6
  br i1 %switch.i.not, label %do.body.i.1, label %if.end24.do.end.i_crit_edge

if.end24.do.end.i_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.1:                                      ; preds = %if.end24
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 14) #8
  %13 = and i32 %call.i.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %13)
  %switch.i.1.not = icmp eq i32 %13, -6
  br i1 %switch.i.1.not, label %do.body.i.2, label %do.body.i.1.do.end.i_crit_edge

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.2:                                      ; preds = %do.body.i.1
  %call.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 14) #8
  %14 = and i32 %call.i.2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %14)
  %switch.i.2.not = icmp eq i32 %14, -6
  br i1 %switch.i.2.not, label %do.body.i.3, label %do.body.i.2.do.end.i_crit_edge

do.body.i.2.do.end.i_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.body.i.3:                                      ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 14) #8
  br label %do.end.i

do.end.i:                                         ; preds = %do.body.i.3, %do.body.i.2.do.end.i_crit_edge, %do.body.i.1.do.end.i_crit_edge, %if.end24.do.end.i_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %if.end24.do.end.i_crit_edge ], [ %call.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %call.i.2, %do.body.i.2.do.end.i_crit_edge ], [ %call.i.3, %do.body.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.lcssa)
  %cmp2.i = icmp slt i32 %call.i.lcssa, 0
  br i1 %cmp2.i, label %if.then27, label %if.end29

if.then27:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef 14) #11
  tail call void @mutex_unlock(ptr noundef %flags_lock) #8
  br label %cleanup

if.end29:                                         ; preds = %do.end.i
  %15 = trunc i32 %call.i.lcssa to i8
  %conv31 = and i8 %15, -41
  %call32 = tail call fastcc i32 @rv8803_write_reg(ptr noundef %add.ptr, i8 noundef zeroext 14, i8 noundef zeroext %conv31)
  tail call void @mutex_unlock(ptr noundef %flags_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool34.not = icmp eq i32 %call32, 0
  br i1 %tobool34.not, label %if.end36, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %16 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrl1, align 4
  %conv38 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %ctrl.2, i32 %conv38)
  %cmp39.not = icmp eq i32 %ctrl.2, %conv38
  br i1 %cmp39.not, label %if.end36.if.end49_crit_edge, label %if.then41

if.end36.if.end49_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then41:                                        ; preds = %if.end36
  %conv42 = trunc i32 %ctrl.2 to i8
  %18 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv42, ptr %ctrl1, align 4
  %call45 = tail call fastcc i32 @rv8803_write_reg(ptr noundef %add.ptr, i8 noundef zeroext 15, i8 noundef zeroext %conv42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then41.if.end49_crit_edge, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41.if.end49_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.end49:                                         ; preds = %if.then41.if.end49_crit_edge, %if.end36.if.end49_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.then41.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then27
  %retval.0 = phi i32 [ %call.i.lcssa, %if.then27 ], [ 0, %if.end49 ], [ %call32, %if.end29.cleanup_crit_edge ], [ %call45, %if.then41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rv8803_write_regs(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %count, ptr noundef %values) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %count, ptr noundef %values) #8
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call, label %entry.do.end5_crit_edge [
    i32 -6, label %entry.land.rhs_crit_edge
    i32 -5, label %entry.land.rhs_crit_edge19
    i32 0, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.land.rhs_crit_edge19:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

land.rhs:                                         ; preds = %entry.land.rhs_crit_edge, %entry.land.rhs_crit_edge19
  %call.1 = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %count, ptr noundef %values) #8
  %1 = zext i32 %call.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call.1, label %land.rhs.do.end5_crit_edge [
    i32 -6, label %land.rhs.land.rhs.1_crit_edge
    i32 -5, label %land.rhs.land.rhs.1_crit_edge20
    i32 0, label %land.rhs.if.end_crit_edge
  ]

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs.land.rhs.1_crit_edge20:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.1

land.rhs.land.rhs.1_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.1

land.rhs.do.end5_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

land.rhs.1:                                       ; preds = %land.rhs.land.rhs.1_crit_edge, %land.rhs.land.rhs.1_crit_edge20
  %call.2 = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %count, ptr noundef %values) #8
  %2 = zext i32 %call.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call.2, label %land.rhs.1.do.end5_crit_edge [
    i32 -6, label %land.rhs.1.land.rhs.2_crit_edge
    i32 -5, label %land.rhs.1.land.rhs.2_crit_edge21
    i32 0, label %land.rhs.1.if.end_crit_edge
  ]

land.rhs.1.if.end_crit_edge:                      ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs.1.land.rhs.2_crit_edge21:                ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.2

land.rhs.1.land.rhs.2_crit_edge:                  ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.2

land.rhs.1.do.end5_crit_edge:                     ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

land.rhs.2:                                       ; preds = %land.rhs.1.land.rhs.2_crit_edge, %land.rhs.1.land.rhs.2_crit_edge21
  %call.3 = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %count, ptr noundef %values) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cond = icmp eq i32 %call.3, 0
  br i1 %cond, label %land.rhs.2.if.end_crit_edge, label %land.rhs.2.do.end5_crit_edge

land.rhs.2.do.end5_crit_edge:                     ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

land.rhs.2.if.end_crit_edge:                      ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end5:                                          ; preds = %land.rhs.2.do.end5_crit_edge, %land.rhs.1.do.end5_crit_edge, %land.rhs.do.end5_crit_edge, %entry.do.end5_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.do.end5_crit_edge ], [ %call.1, %land.rhs.do.end5_crit_edge ], [ %call.2, %land.rhs.1.do.end5_crit_edge ], [ %call.3, %land.rhs.2.do.end5_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv = zext i8 %reg to i32
  %conv7 = zext i8 %count to i32
  %add = add nsw i32 %conv, -1
  %sub = add nsw i32 %add, %conv7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %conv, i32 noundef %sub) #11
  br label %if.end

if.end:                                           ; preds = %do.end5, %land.rhs.2.if.end_crit_edge, %land.rhs.1.if.end_crit_edge, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call18 = phi i32 [ %call.lcssa, %do.end5 ], [ 0, %land.rhs.2.if.end_crit_edge ], [ %call.2, %land.rhs.1.if.end_crit_edge ], [ %call.1, %land.rhs.if.end_crit_edge ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %call18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !67, !69, !71, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94}
!llvm.named.register.sp = !{!96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_rtc_rv8803__288_641_rv8803_driver_init6, !1, !"__initcall__kmod_rtc_rv8803__288_641_rv8803_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-rv8803.c", i32 641, i32 1}
!2 = !{ptr @__exitcall_rv8803_driver_exit, !1, !"__exitcall_rv8803_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-rv8803.c", i32 643, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-rv8803.c", i32 644, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-rv8803.c", i32 645, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-rv8803.c", i32 635, i32 11}
!12 = !{ptr @rv8803_driver, !13, !"rv8803_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-rv8803.c", i32 633, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-rv8803.c", i32 520, i32 11}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-rv8803.c", i32 531, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rv8803_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rv8803_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @rv8803_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-rv8803.c", i32 540, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-rv8803.c", i32 554, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rv8803_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @rv8803_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-rv8803.c", i32 557, i32 3}
!34 = !{ptr @rv8803_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rv8803_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-rv8803.c", i32 560, i32 3}
!38 = !{ptr @rv8803_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rv8803_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-rv8803.c", i32 570, i32 7}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-rv8803.c", i32 572, i32 4}
!44 = !{ptr @rv8803_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rv8803_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-rv8803.c", i32 585, i32 3}
!48 = !{ptr @rv8803_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rv8803_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-rv8803.c", i32 83, i32 3}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rv8803_read_reg._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @rv8803_read_reg._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-rv8803.c", i32 155, i32 3}
!57 = !{ptr @rv8803_handle_irq._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rv8803_handle_irq._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @rv8803_handle_irq._entry.28, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-rv8803.c", i32 158, i32 3}
!61 = !{ptr @rv8803_handle_irq._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-rv8803.c", i32 116, i32 3}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rv8803_write_reg._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @rv8803_write_reg._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/rtc/rtc-rv8803.c", i32 503, i32 34}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-rv8803.c", i32 506, i32 34}
!71 = !{ptr @rv8803_rtc_ops, !72, !"rv8803_rtc_ops", i1 false, i1 false}
!72 = !{!"../drivers/rtc/rtc-rv8803.c", i32 475, i32 35}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-rv8803.c", i32 425, i32 4}
!75 = !{ptr @rv8803_ioctl._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rv8803_ioctl._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/rtc/rtc-rv8803.c", i32 202, i32 3}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @rv8803_get_time._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @rv8803_get_time._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-rv8803.c", i32 98, i32 3}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @rv8803_read_regs._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @rv8803_read_regs._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/rtc/rtc-rv8803.c", i32 132, i32 3}
!89 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @rv8803_write_regs._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @rv8803_write_regs._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @rv8803_of_match, !93, !"rv8803_of_match", i1 false, i1 false}
!93 = !{!"../drivers/rtc/rtc-rv8803.c", i32 612, i32 49}
!94 = !{ptr @rv8803_id, !95, !"rv8803_id", i1 false, i1 false}
!95 = !{!"../drivers/rtc/rtc-rv8803.c", i32 603, i32 35}
!96 = !{!"sp"}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 6354375}
!107 = !{i64 6354572}
!108 = !{i64 2153839805}
!109 = !{i64 2155673653, i64 2155673933, i64 2155674267, i64 2155674601}
!110 = !{i32 0, i32 33}
!111 = !{!"auto-init"}
