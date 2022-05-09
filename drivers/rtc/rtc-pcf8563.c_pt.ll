; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-pcf8563.c_pt.bc'
source_filename = "../drivers/rtc/rtc-pcf8563.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcf8563 = type { ptr, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_pcf8563__296_625_pcf8563_driver_init6 = internal global ptr @pcf8563_driver_init, section ".initcall6.init", align 4
@pcf8563_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pcf8563_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pcf8563_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pcf8563_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pcf8563_driver_exit = internal global ptr @pcf8563_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [59 x i8] c"rtc_pcf8563.author=Alessandro Zummo <a.zummo@towertech.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [65 x i8] c"rtc_pcf8563.description=Philips PCF8563/Epson RTC8564 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [41 x i8] c"rtc_pcf8563.file=drivers/rtc/rtc-pcf8563\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [24 x i8] c"rtc_pcf8563.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc-pcf8563\00", [20 x i8] zeroinitializer }, align 32
@pcf8563_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcf8563\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epson,rtc8564\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microcrystal,rv8564\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pca8565\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@pcf8563_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pcf8563\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"rtc8564\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pca8565\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pcf8563_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -123, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc_pcf8563\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcf8563_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-pcf8563.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@pcf8563_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 550, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: write error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcf8563_probe._entry_ptr = internal global ptr @pcf8563_probe._entry, section ".printk_index", align 4
@pcf8563_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 558, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@pcf8563_probe._entry_ptr.9 = internal global ptr @pcf8563_probe._entry.8, section ".printk_index", align 4
@pcf8563_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr @pcf8563_rtc_ioctl, ptr @pcf8563_rtc_read_time, ptr @pcf8563_rtc_set_time, ptr @pcf8563_rtc_read_alarm, ptr @pcf8563_rtc_set_alarm, ptr null, ptr @pcf8563_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@pcf8563_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 580, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pcf8563_probe._entry_ptr.12 = internal global ptr @pcf8563_probe._entry.10, section ".printk_index", align 4
@pcf8563_write_block_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 124, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: err=%d addr=%02x, data=%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pcf8563_write_block_data\00", [39 x i8] zeroinitializer }, align 32
@pcf8563_write_block_data._entry_ptr = internal global ptr @pcf8563_write_block_data._entry, section ".printk_index", align 4
@pcf8563_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 211, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"low voltage detected, date/time is not reliable.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcf8563_rtc_read_time\00", [42 x i8] zeroinitializer }, align 32
@pcf8563_rtc_read_time._entry_ptr = internal global ptr @pcf8563_rtc_read_time._entry, section ".printk_index", align 4
@pcf8563_rtc_read_time.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 55, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"%s: raw data is st1=%02x, st2=%02x, sec=%02x, min=%02x, hr=%02x, mday=%02x, wday=%02x, mon=%02x, year=%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@pcf8563_rtc_read_time.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 0, i8 59, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s: tm is secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@pcf8563_read_block_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 104, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: read error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcf8563_read_block_data\00", [40 x i8] zeroinitializer }, align 32
@pcf8563_read_block_data._entry_ptr = internal global ptr @pcf8563_read_block_data._entry, section ".printk_index", align 4
@pcf8563_rtc_set_time.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 63, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcf8563_rtc_set_time\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@pcf8563_rtc_read_alarm.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 76, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcf8563_rtc_read_alarm\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: raw data is min=%02x, hr=%02x, mday=%02x, wday=%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@pcf8563_rtc_read_alarm.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.25, i8 0, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: tm is mins=%d, hours=%d, mday=%d, wday=%d, enabled=%d, pending=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@pcf8563_rtc_set_alarm.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 86, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcf8563_rtc_set_alarm\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s, min=%d hour=%d wday=%d mday=%d enabled=%d pending=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@pcf8563_set_alarm_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.28, ptr @.str.3, i32 150, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcf8563_set_alarm_mode\00", [41 x i8] zeroinitializer }, align 32
@pcf8563_set_alarm_mode._entry_ptr = internal global ptr @pcf8563_set_alarm_mode._entry, section ".printk_index", align 4
@pcf8563_irq_enable.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 90, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcf8563_irq_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: en=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcf8563-clkout\00", [17 x i8] zeroinitializer }, align 32
@pcf8563_clkout_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @pcf8563_clkout_prepare, ptr @pcf8563_clkout_unprepare, ptr @pcf8563_clkout_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcf8563_clkout_recalc_rate, ptr @pcf8563_clkout_round_rate, ptr null, ptr null, ptr null, ptr @pcf8563_clkout_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@clkout_rates = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32768, i32 1024, i32 32, i32 1], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 32, i64 1024, i64 32768]
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"pcf8563_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 616, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 618, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"pcf8563_of_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 606, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"pcf8563_id\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 597, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 532, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 550, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 558, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"pcf8563_rtc_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 516, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 579, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 122, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 210, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 215, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 235, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 104, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 250, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 305, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 319, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 341, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 150, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 360, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 496, i32 14 }
@___asan_gen_.150 = private unnamed_addr constant [19 x i8] c"pcf8563_clkout_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 472, i32 29 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 504, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant [13 x i8] c"clkout_rates\00", align 1
@___asan_gen_.157 = private constant [29 x i8] c"../drivers/rtc/rtc-pcf8563.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 371, i32 18 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_pcf8563_driver_exit, ptr @__initcall__kmod_rtc_pcf8563__296_625_pcf8563_driver_init6, ptr @pcf8563_driver_exit, ptr @pcf8563_probe._entry, ptr @pcf8563_probe._entry.10, ptr @pcf8563_probe._entry.8, ptr @pcf8563_probe._entry_ptr, ptr @pcf8563_probe._entry_ptr.12, ptr @pcf8563_probe._entry_ptr.9, ptr @pcf8563_read_block_data._entry, ptr @pcf8563_read_block_data._entry_ptr, ptr @pcf8563_rtc_read_time._entry, ptr @pcf8563_rtc_read_time._entry_ptr, ptr @pcf8563_set_alarm_mode._entry, ptr @pcf8563_set_alarm_mode._entry_ptr, ptr @pcf8563_write_block_data._entry, ptr @pcf8563_write_block_data._entry_ptr, ptr @pcf8563_driver, ptr @.str, ptr @pcf8563_of_match, ptr @pcf8563_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pcf8563_rtc_ops, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @pcf8563_clkout_ops, ptr @.str.32, ptr @clkout_rates], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8563_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8563_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8563_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8563_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8563_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8563_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8563_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8563_write_block_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8563_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8563_read_block_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8563_set_alarm_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf8563_clkout_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkout_rates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8563_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pcf8563_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcf8563_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @pcf8563_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8563_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %data.i.i = alloca [2 x i8], align 1
  %init.i = alloca %struct.clk_init_data, align 4
  %data.i101 = alloca [2 x i8], align 1
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf8563_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf8563_probe, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !101

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf8563_probe.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not = icmp eq i32 %and.i, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev8, i32 noundef 24, i32 noundef 3520) #8
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %client13 = getelementptr inbounds %struct.pcf8563, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %client13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %client13, align 4
  tail call void @device_set_wakeup_capable(ptr noundef %dev8, i1 noundef zeroext true) #8
  %8 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 14, ptr %data.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %8, align 1
  %call.i.i100 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i100)
  %cmp4.not.i = icmp eq i32 %call.i.i100, 2
  br i1 %cmp4.not.i, label %for.inc.critedge.i, label %do.end19

for.inc.critedge.i:                               ; preds = %if.end12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  %11 = getelementptr inbounds [2 x i8], ptr %data.i101, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i101) #8
  %12 = ptrtoint ptr %data.i101 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %data.i101, align 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %11, align 1
  %call.i.i105 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %data.i101, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i105)
  %cmp4.not.i106 = icmp eq i32 %call.i.i105, 2
  br i1 %cmp4.not.i106, label %for.inc.critedge.i114, label %do.end27

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %data.i, align 1
  %conv7.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %8, align 1
  %conv9.i = zext i8 %17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %call.i.i100, i32 noundef %conv7.i, i32 noundef %conv9.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #11
  br label %cleanup

for.inc.critedge.i114:                            ; preds = %for.inc.critedge.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i101) #8
  %call31 = call ptr @devm_rtc_allocate_device(ptr noundef %dev8) #8
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call31, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end37

do.end27:                                         ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %data.i101 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data.i101, align 1
  %conv7.i109 = zext i8 %20 to i32
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %11, align 1
  %conv9.i110 = zext i8 %22 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %call.i.i105, i32 noundef %conv7.i109, i32 noundef %conv9.i110) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i101) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.then34:                                        ; preds = %for.inc.critedge.i114
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %for.inc.critedge.i114
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call31, i32 0, i32 3
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pcf8563_rtc_ops, ptr %ops, align 8
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %uie_unsupported = getelementptr inbounds %struct.rtc_device, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %uie_unsupported to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %uie_unsupported, align 8
  %28 = load ptr, ptr %call.i, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 946684800, ptr %range_min, align 8
  %30 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %30, i32 0, i32 23
  %31 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 4102444799, ptr %range_max, align 8
  %32 = load ptr, ptr %call.i, align 4
  %set_start_time = getelementptr inbounds %struct.rtc_device, ptr %32, i32 0, i32 26
  %33 = ptrtoint ptr %set_start_time to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %set_start_time, align 8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp43 = icmp sgt i32 %35, 0
  br i1 %cmp43, label %if.then44, label %if.end37.if.end56_crit_edge

if.end37.if.end56_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then44:                                        ; preds = %if.end37
  %36 = load ptr, ptr getelementptr inbounds (%struct.i2c_driver, ptr @pcf8563_driver, i32 0, i32 7), align 4
  %call47 = call i32 @devm_request_threaded_irq(ptr noundef %dev8, i32 noundef %35, ptr noundef null, ptr noundef nonnull @pcf8563_irq, i32 noundef 8328, ptr noundef %36, ptr noundef %client) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then44.if.end56_crit_edge, label %do.end52

if.then44.if.end56_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.end52:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.11, i32 noundef %38) #11
  br label %cleanup

if.end56:                                         ; preds = %if.then44.if.end56_crit_edge, %if.end37.if.end56_crit_edge
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %call58 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %41 = ptrtoint ptr %client13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client13, align 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4, i32 27
  %43 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #8
  %45 = getelementptr inbounds i8, ptr %init.i, i32 12
  %46 = call ptr @memset(ptr %45, i32 255, i32 12)
  %47 = getelementptr inbounds [2 x i8], ptr %data.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #8
  %48 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 13, ptr %data.i.i, align 1
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %47, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %42, ptr noundef nonnull %data.i.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp4.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp4.not.i.i, label %for.inc.critedge.i.i, label %if.then.i

for.inc.critedge.i.i:                             ; preds = %if.end61
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #8
  %dev.i117 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  %50 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.31, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %51 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @pcf8563_clkout_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %flags.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %53 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %54 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %num_parents.i, align 4
  %clkout_hw.i = getelementptr inbounds %struct.pcf8563, ptr %call.i, i32 0, i32 3
  %init3.i = getelementptr inbounds %struct.pcf8563, ptr %call.i, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %init3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %init.i, ptr %init3.i, align 4
  %call5.i = call i32 @of_property_read_string(ptr noundef %44, ptr noundef nonnull @.str.32, ptr noundef nonnull %init.i) #8
  %call8.i = call ptr @devm_clk_register(ptr noundef %dev.i117, ptr noundef %clkout_hw.i) #8
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.inc.critedge.i.i.pcf8563_clkout_register_clk.exit_crit_edge, label %if.then10.i

for.inc.critedge.i.i.pcf8563_clkout_register_clk.exit_crit_edge: ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcf8563_clkout_register_clk.exit

if.then.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  %56 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %data.i.i, align 1
  %conv7.i.i = zext i8 %57 to i32
  %58 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %47, align 1
  %conv9.i.i = zext i8 %59 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %call.i.i.i, i32 noundef %conv7.i.i, i32 noundef %conv9.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #8
  br label %pcf8563_clkout_register_clk.exit

if.then10.i:                                      ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 @of_clk_add_provider(ptr noundef %44, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call8.i) #8
  br label %pcf8563_clkout_register_clk.exit

pcf8563_clkout_register_clk.exit:                 ; preds = %if.then10.i, %if.then.i, %for.inc.critedge.i.i.pcf8563_clkout_register_clk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  br label %cleanup

cleanup:                                          ; preds = %pcf8563_clkout_register_clk.exit, %if.end56.cleanup_crit_edge, %do.end52, %if.then34, %do.end27, %do.end19, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end19 ], [ -5, %do.end27 ], [ %23, %if.then34 ], [ %call47, %do.end52 ], [ 0, %pcf8563_clkout_register_clk.exit ], [ -19, %do.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %call58, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8563_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %reg.addr.i.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %dev_id, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %client = getelementptr inbounds %struct.pcf8563, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #8
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf.i, align 1, !annotation !102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %5 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %6 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr1.i.i, align 2
  %10 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %6, align 4
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i.i, ptr %buf2.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %9, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %16 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len6.i.i, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i, ptr %buf7.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end, label %pcf8563_get_alarm_mode.exit

pcf8563_get_alarm_mode.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #8
  %22 = and i8 %21, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool2.not = icmp eq i8 %22, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  call void @rtc_update_irq(ptr noundef %24, i32 noundef 1, i32 noundef 160) #8
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %call5 = call fastcc i32 @pcf8563_set_alarm_mode(ptr noundef %26, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %pcf8563_get_alarm_mode.exit
  %retval.0 = phi i32 [ 1, %if.then3 ], [ 0, %pcf8563_get_alarm_mode.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8563_rtc_ioctl(ptr noundef %dev, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147192813, i32 %cmd)
  %cond5 = icmp eq i32 %cmd, -2147192813
  br i1 %cond5, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %0 = inttoptr i32 %arg to ptr
  %and = lshr i32 %call, 7
  %and.lobit = and i32 %and, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 289) #8
  %1 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !103
  %and.i = and i32 %3, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  %4 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %and.lobit, i32 -1226833921) #8, !srcloc !106
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.end ], [ %call, %sw.bb.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8563_rtc_read_time(ptr noundef %dev, ptr nocapture noundef %tm) #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 7
  %9 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 8
  %10 = call ptr @memset(ptr %buf, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %11 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %12 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 16)
  %addr1.i = getelementptr i8, ptr %dev, i32 -30
  %14 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr1.i, align 2
  %16 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %12, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %reg.addr.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %20 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %15, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %21 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %22 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 9, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %23 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf, ptr %buf7.i, align 4
  %adapter.i = getelementptr i8, ptr %dev, i32 -8
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end, label %pcf8563_read_block_data.exit

pcf8563_read_block_data.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %tobool2.not = icmp sgt i8 %27, -1
  br i1 %tobool2.not, label %do.body6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #11
  br label %cleanup

do.body6:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf8563_rtc_read_time.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf8563_rtc_read_time, %cond.end)) #8
          to label %if.then13 [label %cond.end], !srcloc !101

if.then13:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf, align 1
  %conv16 = zext i8 %29 to i32
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %2, align 1
  %conv18 = zext i8 %31 to i32
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %3, align 1
  %conv20 = zext i8 %33 to i32
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %4, align 1
  %conv22 = zext i8 %35 to i32
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %5, align 1
  %conv24 = zext i8 %37 to i32
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %6, align 1
  %conv26 = zext i8 %39 to i32
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %7, align 1
  %conv28 = zext i8 %41 to i32
  %42 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %8, align 1
  %conv30 = zext i8 %43 to i32
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %9, align 1
  %conv32 = zext i8 %45 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf8563_rtc_read_time.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20, i32 noundef %conv22, i32 noundef %conv24, i32 noundef %conv26, i32 noundef %conv28, i32 noundef %conv30, i32 noundef %conv32) #8
  br label %cond.end

cond.end:                                         ; preds = %if.then13, %do.body6
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %3, align 1
  %48 = and i8 %47, 127
  %call51 = call i32 @_bcd2bin(i8 noundef zeroext %48) #12
  %49 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call51, ptr %tm, align 4
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %4, align 1
  %52 = and i8 %51, 127
  %call72 = call i32 @_bcd2bin(i8 noundef zeroext %52) #12
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %53 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call72, ptr %tm_min, align 4
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %5, align 1
  %56 = and i8 %55, 63
  %call95 = call i32 @_bcd2bin(i8 noundef zeroext %56) #12
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %57 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call95, ptr %tm_hour, align 4
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %6, align 1
  %60 = and i8 %59, 63
  %call118 = call i32 @_bcd2bin(i8 noundef zeroext %60) #12
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %61 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call118, ptr %tm_mday, align 4
  %62 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %7, align 1
  %64 = and i8 %63, 7
  %and123 = zext i8 %64 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %65 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and123, ptr %tm_wday, align 4
  %66 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %8, align 1
  %68 = and i8 %67, 31
  %call144 = call i32 @_bcd2bin(i8 noundef zeroext %68) #12
  %sub = add i32 %call144, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %69 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub, ptr %tm_mon, align 4
  %70 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %9, align 1
  %call159 = call i32 @_bcd2bin(i8 noundef zeroext %71) #12
  %add162 = add i32 %call159, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %72 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add162, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483548, i32 %call159)
  %cmp = icmp ult i32 %call159, 2147483548
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483547, i32 %call159)
  %cmp172 = icmp ugt i32 %call159, 2147483547
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool166.not233 = icmp slt i8 %67, 0
  %cond175.in = select i1 %tobool166.not233, i1 %cmp, i1 %cmp172
  %cond175 = zext i1 %cond175.in to i32
  %c_polarity = getelementptr inbounds %struct.pcf8563, ptr %1, i32 0, i32 1
  %73 = ptrtoint ptr %c_polarity to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %cond175, ptr %c_polarity, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf8563_rtc_read_time.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf8563_rtc_read_time, %cleanup)) #8
          to label %if.then190 [label %cleanup], !srcloc !101

if.then190:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tm, align 4
  %76 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tm_min, align 4
  %78 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tm_hour, align 4
  %80 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tm_mday, align 4
  %82 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tm_mon, align 4
  %84 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tm_year, align 4
  %86 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tm_wday, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf8563_rtc_read_time.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then190, %cond.end, %do.end, %pcf8563_read_block_data.exit
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %pcf8563_read_block_data.exit ], [ 0, %if.then190 ], [ 0, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8563_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf8563_rtc_set_time.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf8563_rtc_set_time, %cond.end)) #8
          to label %if.then [label %cond.end], !srcloc !101

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %4 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %6 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %8 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %10 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %12 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_year, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %14 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf8563_rtc_set_time.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #8
  br label %cond.end

cond.end:                                         ; preds = %if.then, %entry
  %16 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm, align 4
  %call11 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #12
  %tm_min14 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %18 = ptrtoint ptr %tm_min14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_min14, align 4
  %call25 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #12
  %tm_hour31 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %20 = ptrtoint ptr %tm_hour31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_hour31, align 4
  %call42 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #12
  %tm_mday48 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %22 = ptrtoint ptr %tm_mday48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_mday48, align 4
  %call59 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #12
  %tm_mon65 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %24 = ptrtoint ptr %tm_mon65 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_mon65, align 4
  %add66 = add i32 %25, 1
  %call80 = tail call zeroext i8 @_bin2bcd(i32 noundef %add66) #12
  %tm_year86 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %26 = ptrtoint ptr %tm_year86 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_year86, align 4
  %sub = add i32 %27, -100
  %call100 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #12
  %c_polarity = getelementptr inbounds %struct.pcf8563, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %c_polarity to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %c_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool106.not = icmp eq i32 %29, 0
  br i1 %tobool106.not, label %cond.false110, label %cond.true107

cond.true107:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %27)
  %cmp = icmp sgt i32 %27, 99
  br i1 %cmp, label %cond.true107.if.then114_crit_edge, label %cond.true107.if.end118_crit_edge

cond.true107.if.end118_crit_edge:                 ; preds = %cond.true107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

cond.true107.if.then114_crit_edge:                ; preds = %cond.true107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then114

cond.false110:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %27)
  %cmp112 = icmp slt i32 %27, 100
  br i1 %cmp112, label %cond.false110.if.then114_crit_edge, label %cond.false110.if.end118_crit_edge

cond.false110.if.end118_crit_edge:                ; preds = %cond.false110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

cond.false110.if.then114_crit_edge:               ; preds = %cond.false110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then114

if.then114:                                       ; preds = %cond.false110.if.then114_crit_edge, %cond.true107.if.then114_crit_edge
  %30 = or i8 %call80, -128
  br label %if.end118

if.end118:                                        ; preds = %if.then114, %cond.false110.if.end118_crit_edge, %cond.true107.if.end118_crit_edge
  %buf.sroa.19.0 = phi i8 [ %30, %if.then114 ], [ %call80, %cond.false110.if.end118_crit_edge ], [ %call80, %cond.true107.if.end118_crit_edge ]
  %tm_wday119 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %31 = ptrtoint ptr %tm_wday119 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_wday119, align 4
  %33 = trunc i32 %32 to i8
  %conv120 = and i8 %33, 7
  %34 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %data.i, align 1
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call11, ptr %34, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp4.not.i, label %for.inc.critedge.i, label %if.end118.do.end.i_crit_edge

if.end118.do.end.i_crit_edge:                     ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.critedge.i.5.do.end.i_crit_edge, %for.inc.critedge.i.4.do.end.i_crit_edge, %for.inc.critedge.i.3.do.end.i_crit_edge, %for.inc.critedge.i.2.do.end.i_crit_edge, %for.inc.critedge.i.1.do.end.i_crit_edge, %for.inc.critedge.i.do.end.i_crit_edge, %if.end118.do.end.i_crit_edge
  %call.i.i.lcssa = phi i32 [ %call.i.i, %if.end118.do.end.i_crit_edge ], [ %call.i.i.1, %for.inc.critedge.i.do.end.i_crit_edge ], [ %call.i.i.2, %for.inc.critedge.i.1.do.end.i_crit_edge ], [ %call.i.i.3, %for.inc.critedge.i.2.do.end.i_crit_edge ], [ %call.i.i.4, %for.inc.critedge.i.3.do.end.i_crit_edge ], [ %call.i.i.5, %for.inc.critedge.i.4.do.end.i_crit_edge ], [ %call.i.i.6, %for.inc.critedge.i.5.do.end.i_crit_edge ]
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %data.i, align 1
  %conv7.i = zext i8 %38 to i32
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %34, align 1
  %conv9.i = zext i8 %40 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %call.i.i.lcssa, i32 noundef %conv7.i, i32 noundef %conv9.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  br label %pcf8563_write_block_data.exit

for.inc.critedge.i:                               ; preds = %if.end118
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %data.i, align 1
  %42 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %call25, ptr %34, align 1
  %call.i.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.1)
  %cmp4.not.i.1 = icmp eq i32 %call.i.i.1, 2
  br i1 %cmp4.not.i.1, label %for.inc.critedge.i.1, label %for.inc.critedge.i.do.end.i_crit_edge

for.inc.critedge.i.do.end.i_crit_edge:            ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.inc.critedge.i.1:                             ; preds = %for.inc.critedge.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 4, ptr %data.i, align 1
  %44 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %call42, ptr %34, align 1
  %call.i.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.2)
  %cmp4.not.i.2 = icmp eq i32 %call.i.i.2, 2
  br i1 %cmp4.not.i.2, label %for.inc.critedge.i.2, label %for.inc.critedge.i.1.do.end.i_crit_edge

for.inc.critedge.i.1.do.end.i_crit_edge:          ; preds = %for.inc.critedge.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.inc.critedge.i.2:                             ; preds = %for.inc.critedge.i.1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 5, ptr %data.i, align 1
  %46 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %call59, ptr %34, align 1
  %call.i.i.3 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.3)
  %cmp4.not.i.3 = icmp eq i32 %call.i.i.3, 2
  br i1 %cmp4.not.i.3, label %for.inc.critedge.i.3, label %for.inc.critedge.i.2.do.end.i_crit_edge

for.inc.critedge.i.2.do.end.i_crit_edge:          ; preds = %for.inc.critedge.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.inc.critedge.i.3:                             ; preds = %for.inc.critedge.i.2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 6, ptr %data.i, align 1
  %48 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv120, ptr %34, align 1
  %call.i.i.4 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.4)
  %cmp4.not.i.4 = icmp eq i32 %call.i.i.4, 2
  br i1 %cmp4.not.i.4, label %for.inc.critedge.i.4, label %for.inc.critedge.i.3.do.end.i_crit_edge

for.inc.critedge.i.3.do.end.i_crit_edge:          ; preds = %for.inc.critedge.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.inc.critedge.i.4:                             ; preds = %for.inc.critedge.i.3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 7, ptr %data.i, align 1
  %50 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %buf.sroa.19.0, ptr %34, align 1
  %call.i.i.5 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.5)
  %cmp4.not.i.5 = icmp eq i32 %call.i.i.5, 2
  br i1 %cmp4.not.i.5, label %for.inc.critedge.i.5, label %for.inc.critedge.i.4.do.end.i_crit_edge

for.inc.critedge.i.4.do.end.i_crit_edge:          ; preds = %for.inc.critedge.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.inc.critedge.i.5:                             ; preds = %for.inc.critedge.i.4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 8, ptr %data.i, align 1
  %52 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %call100, ptr %34, align 1
  %call.i.i.6 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.6)
  %cmp4.not.i.6 = icmp eq i32 %call.i.i.6, 2
  br i1 %cmp4.not.i.6, label %for.inc.critedge.i.6, label %for.inc.critedge.i.5.do.end.i_crit_edge

for.inc.critedge.i.5.do.end.i_crit_edge:          ; preds = %for.inc.critedge.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.inc.critedge.i.6:                             ; preds = %for.inc.critedge.i.5
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  br label %pcf8563_write_block_data.exit

pcf8563_write_block_data.exit:                    ; preds = %for.inc.critedge.i.6, %do.end.i
  %retval.2.i = phi i32 [ -5, %do.end.i ], [ 0, %for.inc.critedge.i.6 ]
  ret i32 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8563_rtc_read_alarm(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %reg.addr.i.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca i8, align 1
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %4 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr1.i = getelementptr i8, ptr %dev, i32 -30
  %7 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr1.i, align 2
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reg.addr.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %15 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 4, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf, ptr %buf7.i, align 4
  %adapter.i = getelementptr i8, ptr %dev, i32 -8
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %do.body, label %pcf8563_read_block_data.exit

pcf8563_read_block_data.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf8563_rtc_read_alarm.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf8563_rtc_read_alarm, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !101

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buf, align 4
  %conv = zext i8 %20 to i32
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %0, align 1
  %conv10 = zext i8 %22 to i32
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 2
  %conv12 = zext i8 %24 to i32
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %2, align 1
  %conv14 = zext i8 %26 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf8563_rtc_read_alarm.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 2
  %27 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %time, align 4
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf, align 4
  %30 = and i8 %29, 127
  %call30 = call i32 @_bcd2bin(i8 noundef zeroext %30) #12
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call30, ptr %tm_min, align 4
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %0, align 1
  %34 = and i8 %33, 63
  %call52 = call i32 @_bcd2bin(i8 noundef zeroext %34) #12
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call52, ptr %tm_hour, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %1, align 2
  %38 = and i8 %37, 63
  %call76 = call i32 @_bcd2bin(i8 noundef zeroext %38) #12
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call76, ptr %tm_mday, align 4
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %2, align 1
  %42 = and i8 %41, 7
  %call100 = call i32 @_bcd2bin(i8 noundef zeroext %42) #12
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 2, i32 6
  %43 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call100, ptr %tm_wday, align 4
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #8
  %44 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %buf.i, align 1, !annotation !102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %45 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #8
  %46 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 16)
  %48 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %addr1.i, align 2
  %50 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i.i, align 2
  %52 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %46, align 4
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %reg.addr.i.i, ptr %buf2.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %54 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %49, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %55 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %56 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %len6.i.i, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %57 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %buf.i, ptr %buf7.i.i, align 4
  %58 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i, label %pcf8563_get_alarm_mode.exit

if.end.i:                                         ; preds = %do.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %tobool1.not.i = icmp eq ptr %tm, null
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %buf.i, align 1
  %62 = lshr i8 %61, 1
  %.lobit22.i = and i8 %62, 1
  %63 = ptrtoint ptr %tm to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %.lobit22.i, ptr %tm, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i.if.end6.i_crit_edge
  %tobool7.not.i = icmp eq ptr %pending, null
  br i1 %tobool7.not.i, label %if.end6.i.do.body108_crit_edge, label %if.then8.i

if.end6.i.do.body108_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body108

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %buf.i, align 1
  %66 = lshr i8 %65, 3
  %.lobit.i = and i8 %66, 1
  %67 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %.lobit.i, ptr %pending, align 1
  br label %do.body108

pcf8563_get_alarm_mode.exit:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #8
  br label %cleanup

do.body108:                                       ; preds = %if.then8.i, %if.end6.i.do.body108_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf8563_rtc_read_alarm.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf8563_rtc_read_alarm, %cleanup)) #8
          to label %if.then122 [label %cleanup], !srcloc !101

if.then122:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tm_min, align 4
  %70 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tm_hour, align 4
  %72 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tm_mday, align 4
  %74 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tm_wday, align 4
  %76 = ptrtoint ptr %tm to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tm, align 4
  %conv133 = zext i8 %77 to i32
  %78 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %pending, align 1
  %conv135 = zext i8 %79 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf8563_rtc_read_alarm.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %69, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %conv133, i32 noundef %conv135) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then122, %do.body108, %pcf8563_get_alarm_mode.exit, %pcf8563_read_block_data.exit
  %retval.0 = phi i32 [ -5, %pcf8563_read_block_data.exit ], [ -5, %pcf8563_get_alarm_mode.exit ], [ 0, %if.then122 ], [ 0, %do.body108 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8563_rtc_set_alarm(ptr noundef %dev, ptr noundef %tm) #2 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 2
  %0 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i64 @rtc_tm_to_time64(ptr noundef %time) #8
  %2 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %time, align 4
  %sub = sub i32 60, %3
  %conv = sext i32 %sub to i64
  %add = add i64 %call, %conv
  tail call void @rtc_time64_to_tm(i64 noundef %add, ptr noundef %time) #8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf8563_rtc_set_alarm.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf8563_rtc_set_alarm, %cond.end)) #8
          to label %if.then11 [label %cond.end], !srcloc !101

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_hour, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_wday, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_mday, align 4
  %12 = ptrtoint ptr %tm to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tm, align 4
  %conv16 = zext i8 %13 to i32
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 1
  %14 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pending, align 1
  %conv17 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf8563_rtc_set_alarm.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %conv16, i32 noundef %conv17) #8
  br label %cond.end

cond.end:                                         ; preds = %if.then11, %do.body
  %tm_min20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %tm_min20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_min20, align 4
  %call29 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #12
  %tm_hour33 = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %tm_hour33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_hour33, align 4
  %tm_mday54 = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %tm_mday54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mday54, align 4
  %call68 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #12
  %tm_wday75 = getelementptr inbounds %struct.rtc_wkalrm, ptr %tm, i32 0, i32 2, i32 6
  %22 = ptrtoint ptr %tm_wday75 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_wday75, align 4
  %24 = trunc i32 %23 to i8
  %conv76 = and i8 %24, 7
  %25 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 9, ptr %data.i, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call29, ptr %25, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp4.not.i, label %for.inc.critedge.i, label %cond.end.pcf8563_write_block_data.exit_crit_edge

cond.end.pcf8563_write_block_data.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcf8563_write_block_data.exit

for.inc.critedge.i:                               ; preds = %cond.end
  %call47 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 10, ptr %data.i, align 1
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call47, ptr %25, align 1
  %call.i.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.1)
  %cmp4.not.i.1 = icmp eq i32 %call.i.i.1, 2
  br i1 %cmp4.not.i.1, label %for.inc.critedge.i.1, label %for.inc.critedge.i.pcf8563_write_block_data.exit_crit_edge

for.inc.critedge.i.pcf8563_write_block_data.exit_crit_edge: ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcf8563_write_block_data.exit

for.inc.critedge.i.1:                             ; preds = %for.inc.critedge.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 11, ptr %data.i, align 1
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call68, ptr %25, align 1
  %call.i.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.2)
  %cmp4.not.i.2 = icmp eq i32 %call.i.i.2, 2
  br i1 %cmp4.not.i.2, label %for.inc.critedge.i.2, label %for.inc.critedge.i.1.pcf8563_write_block_data.exit_crit_edge

for.inc.critedge.i.1.pcf8563_write_block_data.exit_crit_edge: ; preds = %for.inc.critedge.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcf8563_write_block_data.exit

for.inc.critedge.i.2:                             ; preds = %for.inc.critedge.i.1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 12, ptr %data.i, align 1
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv76, ptr %25, align 1
  %call.i.i.3 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.3)
  %cmp4.not.i.3 = icmp eq i32 %call.i.i.3, 2
  br i1 %cmp4.not.i.3, label %for.inc.critedge.i.3, label %for.inc.critedge.i.2.pcf8563_write_block_data.exit_crit_edge

for.inc.critedge.i.2.pcf8563_write_block_data.exit_crit_edge: ; preds = %for.inc.critedge.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcf8563_write_block_data.exit

for.inc.critedge.i.3:                             ; preds = %for.inc.critedge.i.2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  %34 = ptrtoint ptr %tm to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool83 = icmp ne i8 %35, 0
  %call88 = call fastcc i32 @pcf8563_set_alarm_mode(ptr noundef %add.ptr, i1 noundef zeroext %tobool83)
  br label %cleanup

pcf8563_write_block_data.exit:                    ; preds = %for.inc.critedge.i.2.pcf8563_write_block_data.exit_crit_edge, %for.inc.critedge.i.1.pcf8563_write_block_data.exit_crit_edge, %for.inc.critedge.i.pcf8563_write_block_data.exit_crit_edge, %cond.end.pcf8563_write_block_data.exit_crit_edge
  %call.i.i.lcssa = phi i32 [ %call.i.i, %cond.end.pcf8563_write_block_data.exit_crit_edge ], [ %call.i.i.1, %for.inc.critedge.i.pcf8563_write_block_data.exit_crit_edge ], [ %call.i.i.2, %for.inc.critedge.i.1.pcf8563_write_block_data.exit_crit_edge ], [ %call.i.i.3, %for.inc.critedge.i.2.pcf8563_write_block_data.exit_crit_edge ]
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data.i, align 1
  %conv7.i = zext i8 %37 to i32
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %25, align 1
  %conv9.i = zext i8 %39 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %call.i.i.lcssa, i32 noundef %conv7.i, i32 noundef %conv9.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  br label %cleanup

cleanup:                                          ; preds = %pcf8563_write_block_data.exit, %for.inc.critedge.i.3
  %retval.0 = phi i32 [ %call88, %for.inc.critedge.i.3 ], [ -5, %pcf8563_write_block_data.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8563_irq_enable(ptr noundef %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf8563_irq_enable.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf8563_irq_enable, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !101

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf8563_irq_enable.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %enabled) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool5 = icmp ne i32 %enabled, 0
  %call10 = tail call fastcc i32 @pcf8563_set_alarm_mode(ptr noundef %add.ptr, i1 noundef zeroext %tobool5)
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcf8563_set_alarm_mode(ptr noundef %client, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #8
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %1 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %2 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr1.i, align 2
  %6 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %2, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %reg.addr.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %10 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %5, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %11 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %12 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %13 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %buf7.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end, label %pcf8563_read_block_data.exit.thread

pcf8563_read_block_data.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf, align 1
  %18 = and i8 %17, 21
  %masksel = select i1 %on, i8 2, i8 0
  %storemerge = or i8 %18, %masksel
  store i8 %storemerge, ptr %buf, align 1
  %19 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %data.i, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %storemerge, ptr %19, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp4.not.i, label %for.inc.critedge.i, label %do.end

for.inc.critedge.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i19 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data.i, align 1
  %conv7.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %19, align 1
  %conv9.i = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i19, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %call.i.i, i32 noundef %conv7.i, i32 noundef %conv9.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i19, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.28) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.inc.critedge.i, %pcf8563_read_block_data.exit.thread
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %pcf8563_read_block_data.exit.thread ], [ 0, %for.inc.critedge.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8563_clkout_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pcf8563_clkout_control(ptr noundef %hw, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcf8563_clkout_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pcf8563_clkout_control(ptr noundef %hw, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8563_clkout_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 13, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr1.i, align 2
  %8 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg.addr.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %7, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %14 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %buf7.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end, label %pcf8563_read_block_data.exit.thread

pcf8563_read_block_data.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf, align 1
  %.lobit = lshr i8 %19, 7
  %20 = zext i8 %.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pcf8563_read_block_data.exit.thread
  %retval.0 = phi i32 [ %20, %if.end ], [ -5, %pcf8563_read_block_data.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8563_clkout_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 13, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr1.i, align 2
  %8 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg.addr.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %7, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %14 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %buf7.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end, label %pcf8563_read_block_data.exit.thread

pcf8563_read_block_data.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf, align 1
  %20 = and i8 %19, 3
  %idxprom = zext i8 %20 to i32
  %arrayidx = getelementptr [4 x i32], ptr @clkout_rates, i32 0, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pcf8563_read_block_data.exit.thread
  %retval.0 = phi i32 [ %22, %if.end ], [ 0, %pcf8563_read_block_data.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8563_clkout_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %prate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %rate)
  %cmp1.not = icmp ult i32 %rate, 32768
  br i1 %cmp1.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %rate)
  %cmp1.not.1 = icmp ult i32 %rate, 1024
  br i1 %cmp1.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %rate)
  %cmp1.not.2 = icmp ult i32 %rate, 32
  br i1 %cmp1.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp1.not.3 = icmp ne i32 %rate, 0
  %spec.select = zext i1 %cmp1.not.3 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 32768, %entry.cleanup_crit_edge ], [ 1024, %for.cond.cleanup_crit_edge ], [ 32, %for.cond.1.cleanup_crit_edge ], [ %spec.select, %for.cond.2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf8563_clkout_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 13, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr1.i, align 2
  %8 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg.addr.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %7, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %14 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %buf7.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %pcf8563_read_block_data.exit, label %pcf8563_read_block_data.exit.thread

pcf8563_read_block_data.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

pcf8563_read_block_data.exit:                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %18 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %pcf8563_read_block_data.exit.cleanup_crit_edge [
    i32 32768, label %pcf8563_read_block_data.exit.if.then4_crit_edge
    i32 1024, label %if.then4.fold.split
    i32 32, label %if.then4.fold.split31
    i32 1, label %if.then4.fold.split32
  ]

pcf8563_read_block_data.exit.if.then4_crit_edge:  ; preds = %pcf8563_read_block_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

pcf8563_read_block_data.exit.cleanup_crit_edge:   ; preds = %pcf8563_read_block_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4.fold.split:                              ; preds = %pcf8563_read_block_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4.fold.split31:                            ; preds = %pcf8563_read_block_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4.fold.split32:                            ; preds = %pcf8563_read_block_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %if.then4.fold.split32, %if.then4.fold.split31, %if.then4.fold.split, %pcf8563_read_block_data.exit.if.then4_crit_edge
  %i.027.lcssa = phi i8 [ 0, %pcf8563_read_block_data.exit.if.then4_crit_edge ], [ 1, %if.then4.fold.split ], [ 2, %if.then4.fold.split31 ], [ 3, %if.then4.fold.split32 ]
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buf, align 1
  %21 = and i8 %20, -4
  %conv7 = or i8 %21, %i.027.lcssa
  store i8 %conv7, ptr %buf, align 1
  %22 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 13, ptr %data.i, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv7, ptr %22, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp4.not.i, label %for.inc.critedge.i, label %do.end.i21

do.end.i21:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i20 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data.i, align 1
  %conv7.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %22, align 1
  %conv9.i = zext i8 %28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i20, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %call.i.i, i32 noundef %conv7.i, i32 noundef %conv9.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  br label %cleanup

for.inc.critedge.i:                               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.critedge.i, %do.end.i21, %pcf8563_read_block_data.exit.cleanup_crit_edge, %pcf8563_read_block_data.exit.thread
  %retval.0 = phi i32 [ -5, %pcf8563_read_block_data.exit.thread ], [ -5, %do.end.i21 ], [ 0, %for.inc.critedge.i ], [ -22, %pcf8563_read_block_data.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcf8563_clkout_control(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  %reg.addr.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 13, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #8
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr1.i, align 2
  %8 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg.addr.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %7, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %14 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %buf7.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msgs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end, label %pcf8563_read_block_data.exit.thread

pcf8563_read_block_data.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf, align 1
  %20 = and i8 %19, 127
  %masksel = select i1 %enable, i8 -128, i8 0
  %storemerge = or i8 %20, %masksel
  store i8 %storemerge, ptr %buf, align 1
  %21 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 13, ptr %data.i, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %storemerge, ptr %21, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp4.not.i, label %for.inc.critedge.i, label %do.end.i15

do.end.i15:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i14 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data.i, align 1
  %conv7.i = zext i8 %25 to i32
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %21, align 1
  %conv9.i = zext i8 %27 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i14, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %call.i.i, i32 noundef %conv7.i, i32 noundef %conv9.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  br label %cleanup

for.inc.critedge.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.critedge.i, %do.end.i15, %pcf8563_read_block_data.exit.thread
  %retval.0 = phi i32 [ -5, %pcf8563_read_block_data.exit.thread ], [ -5, %do.end.i15 ], [ 0, %for.inc.critedge.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89}
!llvm.named.register.sp = !{!91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_rtc_pcf8563__296_625_pcf8563_driver_init6, !1, !"__initcall__kmod_rtc_pcf8563__296_625_pcf8563_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 625, i32 1}
!2 = !{ptr @__exitcall_pcf8563_driver_exit, !1, !"__exitcall_pcf8563_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 627, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 628, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 629, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 618, i32 11}
!12 = !{ptr @pcf8563_driver, !13, !"pcf8563_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 616, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 532, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pcf8563_probe.__UNIQUE_ID_ddebug295, !15, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 550, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pcf8563_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @pcf8563_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @pcf8563_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 558, i32 3}
!28 = !{ptr @pcf8563_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 579, i32 4}
!31 = !{ptr @pcf8563_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @pcf8563_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 122, i32 4}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pcf8563_write_block_data._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @pcf8563_write_block_data._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @pcf8563_rtc_ops, !39, !"pcf8563_rtc_ops", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 516, i32 35}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 210, i32 3}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @pcf8563_rtc_read_time._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @pcf8563_rtc_read_time._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 215, i32 2}
!47 = !{ptr @pcf8563_rtc_read_time.__UNIQUE_ID_ddebug288, !46, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 235, i32 2}
!50 = !{ptr @pcf8563_rtc_read_time.__UNIQUE_ID_ddebug289, !49, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 104, i32 3}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @pcf8563_read_block_data._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @pcf8563_read_block_data._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 250, i32 2}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pcf8563_rtc_set_time.__UNIQUE_ID_ddebug290, !57, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 305, i32 2}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pcf8563_rtc_read_alarm.__UNIQUE_ID_ddebug291, !61, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 319, i32 2}
!66 = !{ptr @pcf8563_rtc_read_alarm.__UNIQUE_ID_ddebug292, !65, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 341, i32 2}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @pcf8563_rtc_set_alarm.__UNIQUE_ID_ddebug293, !68, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 150, i32 3}
!73 = !{ptr @pcf8563_set_alarm_mode._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @pcf8563_set_alarm_mode._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 360, i32 2}
!77 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @pcf8563_irq_enable.__UNIQUE_ID_ddebug294, !76, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 496, i32 14}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 504, i32 32}
!83 = !{ptr @pcf8563_clkout_ops, !84, !"pcf8563_clkout_ops", i1 false, i1 false}
!84 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 472, i32 29}
!85 = !{ptr @clkout_rates, !86, !"clkout_rates", i1 false, i1 false}
!86 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 371, i32 18}
!87 = !{ptr @pcf8563_of_match, !88, !"pcf8563_of_match", i1 false, i1 false}
!88 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 606, i32 34}
!89 = !{ptr @pcf8563_id, !90, !"pcf8563_id", i1 false, i1 false}
!90 = !{!"../drivers/rtc/rtc-pcf8563.c", i32 597, i32 35}
!91 = !{!"sp"}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2148931061, i64 2148931066, i64 2148931079, i64 2148931123, i64 2148931157, i64 2148931178}
!102 = !{!"auto-init"}
!103 = !{i64 6414779}
!104 = !{i64 6414976}
!105 = !{i64 2153900209}
!106 = !{i64 2155679593, i64 2155679873, i64 2155680207, i64 2155680541}
