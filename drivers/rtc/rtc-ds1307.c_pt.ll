; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ds1307.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ds1307.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.chip_desc = type { i8, i16, i16, i8, i8, i8, i8, i8, ptr, ptr, i16, ptr, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
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
%struct.ds1307 = type { i32, ptr, ptr, ptr, ptr, [2 x %struct.clk_hw] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_ds1307__308_2018_ds1307_driver_init6 = internal global ptr @ds1307_driver_init, section ".initcall6.init", align 4
@ds1307_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ds1307_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ds1307_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ds1307_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ds1307_driver_exit = internal global ptr @ds1307_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description309 = internal constant [63 x i8] c"rtc_ds1307.description=RTC driver for DS1307 and similar chips\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [39 x i8] c"rtc_ds1307.file=drivers/rtc/rtc-ds1307\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [23 x i8] c"rtc_ds1307.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-ds1307\00", [21 x i8] zeroinitializer }, align 32
@ds1307_of_match = internal constant { [19 x %struct.of_device_id], [948 x i8] } { [19 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1307\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1308\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1337\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1338\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1339\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1388\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1340\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dallas,ds1341\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,ds3231\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 11 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,m41t11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp7940x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 13 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp7941x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 13 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pericom,pt7c4338\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epson,rx8025\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 14 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isil,isl12057\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"epson,rx8130\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 15 to ptr) }, %struct.of_device_id zeroinitializer], [948 x i8] zeroinitializer }, align 32
@ds1307_id = internal constant { [19 x %struct.i2c_device_id], [120 x i8] } { [19 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ds1307\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ds1308\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ds1337\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"ds1338\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"ds1339\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"ds1388\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"ds1340\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"ds1341\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"ds3231\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id { [20 x i8] c"m41t0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id { [20 x i8] c"m41t00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 11 }, %struct.i2c_device_id { [20 x i8] c"m41t11\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12 }, %struct.i2c_device_id { [20 x i8] c"mcp7940x\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.i2c_device_id { [20 x i8] c"mcp7941x\00\00\00\00\00\00\00\00\00\00\00\00", i32 13 }, %struct.i2c_device_id { [20 x i8] c"pt7c4338\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"rx8025\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 14 }, %struct.i2c_device_id { [20 x i8] c"isl12057\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"rx8130\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 15 }, %struct.i2c_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ds1307_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rtc_ds1307:1737:(&regmap_config)->lock\00", [57 x i8] zeroinitializer }, align 32
@ds1307_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1739, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds1307_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-ds1307.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ds1307_probe._entry_ptr = internal global ptr @ds1307_probe._entry, section ".printk_index", align 4
@chips = internal constant { [16 x %struct.chip_desc], [128 x i8] } { [16 x %struct.chip_desc] [%struct.chip_desc zeroinitializer, %struct.chip_desc { i8 0, i16 8, i16 56, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 0, i16 8, i16 56, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 -128, i16 0, i16 0, i8 0, i8 5, i8 0, i8 -128, i8 0, ptr null, ptr null, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 0, i16 8, i16 56, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 -128, i16 0, i16 0, i8 0, i8 5, i8 0, i8 -128, i8 32, ptr null, ptr null, i16 16, ptr @do_trickle_setup_ds1339, i8 1, i8 1 }, %struct.chip_desc { i8 0, i16 0, i16 0, i8 0, i8 2, i8 -128, i8 64, i8 0, ptr null, ptr null, i16 8, ptr @do_trickle_setup_ds1339, i8 1, i8 1 }, %struct.chip_desc { i8 0, i16 0, i16 0, i8 0, i8 5, i8 0, i8 -128, i8 0, ptr null, ptr null, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 0, i16 0, i16 0, i8 1, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null, i16 10, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 -128, i16 0, i16 0, i8 0, i8 5, i8 0, i8 -128, i8 64, ptr null, ptr null, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr @m41txx_rtc_ops, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr @m41txx_rtc_ops, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 0, i16 8, i16 56, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr @m41txx_rtc_ops, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc { i8 -128, i16 32, i16 64, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @mcp794xx_irq, ptr @mcp794xx_rtc_ops, i16 0, ptr null, i8 0, i8 0 }, %struct.chip_desc zeroinitializer, %struct.chip_desc { i8 -128, i16 32, i16 4, i8 16, i8 0, i8 0, i8 0, i8 0, ptr @rx8130_irq, ptr @rx8130_rtc_ops, i16 31, ptr @do_trickle_setup_rx8130, i8 0, i8 0 }], [128 x i8] zeroinitializer }, align 32
@ds1307_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 1, i8 -71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc_ds1307\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"writing trickle charger info 0x%x to 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@ds1307_probe.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 1, i8 -65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read error %d\0A\00", [17 x i8] zeroinitializer }, align 32
@ds1307_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1817, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SET TIME!\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ds1307_probe._entry_ptr.14 = internal global ptr @ds1307_probe._entry.11, section ".printk_index", align 4
@ds1307_probe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 1, i8 -56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ds1307_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1836, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"oscillator stop detected - SET TIME!\0A\00", [58 x i8] zeroinitializer }, align 32
@ds1307_probe._entry_ptr.17 = internal global ptr @ds1307_probe._entry.15, section ".printk_index", align 4
@ds1307_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1844, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"power-on detected\0A\00", [45 x i8] zeroinitializer }, align 32
@ds1307_probe._entry_ptr.20 = internal global ptr @ds1307_probe._entry.18, section ".printk_index", align 4
@ds1307_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1852, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"voltage drop detected\0A\00", [41 x i8] zeroinitializer }, align 32
@ds1307_probe._entry_ptr.23 = internal global ptr @ds1307_probe._entry.21, section ".printk_index", align 4
@ds1307_probe.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 1, i8 -45, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ds1307_probe.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 1, i8 -41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ds1307_probe.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 1, i8 -36, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ds1307_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 1956, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"'wakeup-source' is set, request for an IRQ is disabled!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ds1307_probe._entry_ptr.27 = internal global ptr @ds1307_probe._entry.24, section ".printk_index", align 4
@ds1307_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 1970, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to request IRQ!\0A\00", [40 x i8] zeroinitializer }, align 32
@ds1307_probe._entry_ptr.30 = internal global ptr @ds1307_probe._entry.28, section ".printk_index", align 4
@ds1307_probe.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.31, i8 1, i8 -19, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"got IRQ %d\0A\00", [20 x i8] zeroinitializer }, align 32
@ds13xx_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ds1307_get_time, ptr @ds1307_set_time, ptr @ds1337_read_alarm, ptr @ds1337_set_alarm, ptr null, ptr @ds1307_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds1307_nvram\00", [19 x i8] zeroinitializer }, align 32
@m41txx_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ds1307_get_time, ptr @ds1307_set_time, ptr @ds1337_read_alarm, ptr @ds1337_set_alarm, ptr null, ptr @ds1307_alarm_irq_enable, ptr @m41txx_rtc_read_offset, ptr @m41txx_rtc_set_offset, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mcp794xx_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ds1307_get_time, ptr @ds1307_set_time, ptr @mcp794xx_read_alarm, ptr @mcp794xx_set_alarm, ptr null, ptr @mcp794xx_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rx8130_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ds1307_get_time, ptr @ds1307_set_time, ptr @rx8130_read_alarm, ptr @rx8130_set_alarm, ptr null, ptr @rx8130_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@do_trickle_setup_ds1339._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 538, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unsupported ohm value %u in dt\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"do_trickle_setup_ds1339\00", [40 x i8] zeroinitializer }, align 32
@do_trickle_setup_ds1339._entry_ptr = internal global ptr @do_trickle_setup_ds1339._entry, section ".printk_index", align 4
@ds1307_get_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s error %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ds1307_get_time\00", [16 x i8] zeroinitializer }, align 32
@ds1307_get_time._entry_ptr = internal global ptr @ds1307_get_time._entry, section ".printk_index", align 4
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@ds1307_get_time.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@ds1307_get_time._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.4, i32 224, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"oscillator failed, set time!\0A\00", [34 x i8] zeroinitializer }, align 32
@ds1307_get_time._entry_ptr.40 = internal global ptr @ds1307_get_time._entry.38, section ".printk_index", align 4
@ds1307_get_time._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ds1307_get_time._entry_ptr.42 = internal global ptr @ds1307_get_time._entry.41, section ".printk_index", align 4
@ds1307_get_time.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.36, ptr @.str.4, ptr @.str.43, i8 0, i8 59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: %7ph\0A\00", [22 x i8] zeroinitializer }, align 32
@ds1307_get_time.__print_once.44 = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@ds1307_get_time._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.4, i32 242, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ds1307_get_time._entry_ptr.46 = internal global ptr @ds1307_get_time._entry.45, section ".printk_index", align 4
@ds1307_get_time.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.36, ptr @.str.4, ptr @.str.47, i8 0, i8 78, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, mon=%d, year=%d, wday=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@ds1307_set_time.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.48, ptr @.str.4, ptr @.str.47, i8 0, i8 82, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ds1307_set_time\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@ds1307_set_time.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.48, ptr @.str.4, ptr @.str.43, i8 0, i8 97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@ds1307_set_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.48, ptr @.str.4, i32 396, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ds1307_set_time._entry_ptr = internal global ptr @ds1307_set_time._entry, section ".printk_index", align 4
@ds1307_set_time._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.48, ptr @.str.4, i32 405, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ds1307_set_time._entry_ptr.51 = internal global ptr @ds1307_set_time._entry.50, section ".printk_index", align 4
@ds1337_read_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.52, ptr @.str.4, i32 423, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ds1337_read_alarm\00", [46 x i8] zeroinitializer }, align 32
@ds1337_read_alarm._entry_ptr = internal global ptr @ds1337_read_alarm._entry, section ".printk_index", align 4
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"alarm read\00", [21 x i8] zeroinitializer }, align 32
@ds1337_read_alarm.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.52, ptr @.str.4, ptr @.str.54, i8 0, i8 107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %4ph, %3ph, %2ph\0A\00", [42 x i8] zeroinitializer }, align 32
@ds1337_read_alarm.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.52, ptr @.str.4, ptr @.str.55, i8 0, i8 111, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s secs=%d, mins=%d, hours=%d, mday=%d, enabled=%d, pending=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@ds1337_set_alarm.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.56, ptr @.str.4, ptr @.str.55, i8 0, i8 115, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ds1337_set_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alarm set\00", [22 x i8] zeroinitializer }, align 32
@ds1337_set_alarm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.56, ptr @.str.4, i32 469, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ds1337_set_alarm._entry_ptr = internal global ptr @ds1337_set_alarm._entry, section ".printk_index", align 4
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"alarm write\00", [20 x i8] zeroinitializer }, align 32
@ds1337_set_alarm.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.56, ptr @.str.4, ptr @.str.59, i8 0, i8 119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: %4ph, %3ph, %02x %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"alarm set (old status)\00", [41 x i8] zeroinitializer }, align 32
@ds1337_set_alarm._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.56, ptr @.str.4, i32 496, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't set alarm time\0A\00", [42 x i8] zeroinitializer }, align 32
@ds1337_set_alarm._entry_ptr.63 = internal global ptr @ds1337_set_alarm._entry.61, section ".printk_index", align 4
@ds1337_set_alarm.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.56, ptr @.str.4, ptr @.str.64, i8 0, i8 125, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alarm IRQ armed\0A\00", [47 x i8] zeroinitializer }, align 32
@mcp794xx_read_alarm.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.65, ptr @.str.4, ptr @.str.66, i8 0, i8 -69, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mcp794xx_read_alarm\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"%s, sec=%d min=%d hour=%d wday=%d mday=%d mon=%d enabled=%d polarity=%d irq=%d match=%lu\0A\00", [38 x i8] zeroinitializer }, align 32
@mcp794xx_set_alarm.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.67, ptr @.str.4, ptr @.str.68, i8 0, i8 -59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mcp794xx_set_alarm\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s, sec=%d min=%d hour=%d wday=%d mday=%d mon=%d enabled=%d pending=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@rx8130_read_alarm.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.69, ptr @.str.4, ptr @.str.70, i8 0, i8 -102, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx8130_read_alarm\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s, sec=%d min=%d hour=%d wday=%d mday=%d mon=%d enabled=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@rx8130_set_alarm.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.71, ptr @.str.4, ptr @.str.68, i8 0, i8 -98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx8130_set_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trickle-resistor-ohms\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aux-voltage-chargeable\00", [41 x i8] zeroinitializer }, align 32
@ds1307_trickle_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.4, i32 1306, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unsupported aux-voltage-chargeable value\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ds1307_trickle_init\00", [44 x i8] zeroinitializer }, align 32
@ds1307_trickle_init._entry_ptr = internal global ptr @ds1307_trickle_init._entry, section ".printk_index", align 4
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trickle-diode-disable\00", [42 x i8] zeroinitializer }, align 32
@rtc_freq_test_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rtc_freq_test_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rtc_freq_test_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_frequency_test, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_frequency_test = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @frequency_test_show, ptr @frequency_test_store }, [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"frequency_test\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"on\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"off\0A\00", [27 x i8] zeroinitializer }, align 32
@frequency_test_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 1202, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to store RTC Frequency Test attribute\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"frequency_test_store\00", [43 x i8] zeroinitializer }, align 32
@frequency_test_store._entry_ptr = internal global ptr @frequency_test_store._entry, section ".printk_index", align 4
@ds3231_hwmon_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ds3231_hwmon_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ds1307_hwmon_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.4, i32 1386, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to register hwmon device %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ds1307_hwmon_register\00", [42 x i8] zeroinitializer }, align 32
@ds1307_hwmon_register._entry_ptr = internal global ptr @ds1307_hwmon_register._entry, section ".printk_index", align 4
@ds3231_hwmon_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ds3231_hwmon_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ds3231_hwmon_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr null], [24 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ds3231_hwmon_show_temp, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ds1307_clks_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.4, i32 1650, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to register clock device %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ds1307_clks_register\00", [43 x i8] zeroinitializer }, align 32
@ds1307_clks_register._entry_ptr = internal global ptr @ds1307_clks_register._entry, section ".printk_index", align 4
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@ds3231_clks_names = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.89, ptr @.str.90], [24 x i8] zeroinitializer }, align 32
@ds3231_clks_init = internal constant { [2 x %struct.clk_init_data], [40 x i8] } { [2 x %struct.clk_init_data] [%struct.clk_init_data { ptr null, ptr @ds3231_clk_sqw_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, %struct.clk_init_data { ptr null, ptr @ds3231_clk_32khz_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ds3231_clk_sqw\00", [17 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ds3231_clk_32khz\00", [47 x i8] zeroinitializer }, align 32
@ds3231_clk_sqw_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @ds3231_clk_sqw_prepare, ptr @ds3231_clk_sqw_unprepare, ptr @ds3231_clk_sqw_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ds3231_clk_sqw_recalc_rate, ptr @ds3231_clk_sqw_round_rate, ptr null, ptr null, ptr null, ptr @ds3231_clk_sqw_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ds3231_clk_32khz_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @ds3231_clk_32khz_prepare, ptr @ds3231_clk_32khz_unprepare, ptr @ds3231_clk_32khz_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ds3231_clk_32khz_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ds3231_clk_sqw_rates = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 1024, i32 4096, i32 8192], [16 x i8] zeroinitializer }, align 32
@ds1388_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"DS1388 watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@ds1388_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @ds1388_wdt_start, ptr @ds1388_wdt_stop, ptr @ds1388_wdt_ping, ptr null, ptr @ds1388_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 5, i64 7, i64 8, i64 9, i64 14]
@__sancov_gen_cov_switch_values.92 = internal global [7 x i64] [i64 5, i64 32, i64 6, i64 10, i64 11, i64 12, i64 14]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 32, i64 250, i64 2000, i64 4000]
@__sancov_gen_cov_switch_values.94 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 6, i64 8, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.95 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 4, i64 6, i64 8, i64 13]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 1024, i64 4096, i64 8192]
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"ds1307_driver\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 2009, i32 26 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 2011, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"ds1307_of_match\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1071, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant [10 x i8] c"ds1307_id\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1048, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1710, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1737, i32 19 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1739, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"chips\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 964, i32 31 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1764, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1779, i32 61 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1791, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1817, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1835, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1844, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1852, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1955, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1970, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1972, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"ds13xx_rtc_ops\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1184, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1987, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant [15 x i8] c"m41txx_rtc_ops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 954, i32 35 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"mcp794xx_rtc_ops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 946, i32 35 }
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"rx8130_rtc_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 938, i32 35 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 537, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 219, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 224, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 233, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 237, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 242, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 310, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 327, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 396, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 405, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 423, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 427, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 443, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 459, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 469, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 475, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 496, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 502, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 744, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 784, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 617, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 630, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1288, i32 44 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1295, i32 45 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1305, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1310, i32 11 }
@___asan_gen_.343 = private unnamed_addr constant [25 x i8] c"rtc_freq_test_attr_group\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1232, i32 37 }
@___asan_gen_.346 = private unnamed_addr constant [20 x i8] c"rtc_freq_test_attrs\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1227, i32 26 }
@___asan_gen_.349 = private unnamed_addr constant [24 x i8] c"dev_attr_frequency_test\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1225, i32 8 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1221, i32 64 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1222, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1202, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant [20 x i8] c"ds3231_hwmon_groups\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1385, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant [19 x i8] c"ds3231_hwmon_group\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1372, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant [19 x i8] c"ds3231_hwmon_attrs\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1368, i32 26 }
@___asan_gen_.388 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1365, i32 8 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1363, i32 22 }
@___asan_gen_.397 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1649, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1611, i32 49 }
@___asan_gen_.409 = private unnamed_addr constant [18 x i8] c"ds3231_clks_names\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1580, i32 20 }
@___asan_gen_.412 = private unnamed_addr constant [17 x i8] c"ds3231_clks_init\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1585, i32 29 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1581, i32 21 }
@___asan_gen_.418 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1582, i32 23 }
@___asan_gen_.421 = private unnamed_addr constant [19 x i8] c"ds3231_clk_sqw_ops\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1518, i32 29 }
@___asan_gen_.424 = private unnamed_addr constant [21 x i8] c"ds3231_clk_32khz_ops\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1573, i32 29 }
@___asan_gen_.427 = private unnamed_addr constant [21 x i8] c"ds3231_clk_sqw_rates\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1416, i32 12 }
@___asan_gen_.430 = private unnamed_addr constant [16 x i8] c"ds1388_wdt_info\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1663, i32 35 }
@___asan_gen_.433 = private unnamed_addr constant [15 x i8] c"ds1388_wdt_ops\00", align 1
@___asan_gen_.434 = private constant [28 x i8] c"../drivers/rtc/rtc-ds1307.c\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 1668, i32 34 }
@llvm.compiler.used = appending global [140 x ptr] [ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_ds1307_driver_exit, ptr @__initcall__kmod_rtc_ds1307__308_2018_ds1307_driver_init6, ptr @do_trickle_setup_ds1339._entry, ptr @do_trickle_setup_ds1339._entry_ptr, ptr @ds1307_clks_register._entry, ptr @ds1307_clks_register._entry_ptr, ptr @ds1307_driver_exit, ptr @ds1307_get_time._entry, ptr @ds1307_get_time._entry.38, ptr @ds1307_get_time._entry.41, ptr @ds1307_get_time._entry.45, ptr @ds1307_get_time._entry_ptr, ptr @ds1307_get_time._entry_ptr.40, ptr @ds1307_get_time._entry_ptr.42, ptr @ds1307_get_time._entry_ptr.46, ptr @ds1307_hwmon_register._entry, ptr @ds1307_hwmon_register._entry_ptr, ptr @ds1307_probe._entry, ptr @ds1307_probe._entry.11, ptr @ds1307_probe._entry.15, ptr @ds1307_probe._entry.18, ptr @ds1307_probe._entry.21, ptr @ds1307_probe._entry.24, ptr @ds1307_probe._entry.28, ptr @ds1307_probe._entry_ptr, ptr @ds1307_probe._entry_ptr.14, ptr @ds1307_probe._entry_ptr.17, ptr @ds1307_probe._entry_ptr.20, ptr @ds1307_probe._entry_ptr.23, ptr @ds1307_probe._entry_ptr.27, ptr @ds1307_probe._entry_ptr.30, ptr @ds1307_set_time._entry, ptr @ds1307_set_time._entry.50, ptr @ds1307_set_time._entry_ptr, ptr @ds1307_set_time._entry_ptr.51, ptr @ds1307_trickle_init._entry, ptr @ds1307_trickle_init._entry_ptr, ptr @ds1337_read_alarm._entry, ptr @ds1337_read_alarm._entry_ptr, ptr @ds1337_set_alarm._entry, ptr @ds1337_set_alarm._entry.61, ptr @ds1337_set_alarm._entry_ptr, ptr @ds1337_set_alarm._entry_ptr.63, ptr @frequency_test_store._entry, ptr @frequency_test_store._entry_ptr, ptr @ds1307_driver, ptr @.str, ptr @ds1307_of_match, ptr @ds1307_id, ptr @ds1307_probe._key, ptr @regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @chips, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @ds13xx_rtc_ops, ptr @.str.32, ptr @m41txx_rtc_ops, ptr @mcp794xx_rtc_ops, ptr @rx8130_rtc_ops, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.43, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @rtc_freq_test_attr_group, ptr @rtc_freq_test_attrs, ptr @dev_attr_frequency_test, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @ds3231_hwmon_groups, ptr @.str.82, ptr @.str.83, ptr @ds3231_hwmon_group, ptr @ds3231_hwmon_attrs, ptr @sensor_dev_attr_temp1_input, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @ds3231_clks_names, ptr @ds3231_clks_init, ptr @.str.89, ptr @.str.90, ptr @ds3231_clk_sqw_ops, ptr @ds3231_clk_32khz_ops, ptr @ds3231_clk_sqw_rates, ptr @ds1388_wdt_info, ptr @ds1388_wdt_ops], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_of_match to i32), i32 3724, i32 4672, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_id to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chips to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds13xx_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m41txx_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp794xx_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx8130_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_trickle_setup_ds1339._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_get_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_get_time._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_get_time._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_get_time._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_set_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_set_time._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1337_read_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1337_set_alarm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1337_set_alarm._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_trickle_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_freq_test_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_freq_test_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_frequency_test to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frequency_test_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3231_hwmon_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_hwmon_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3231_hwmon_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3231_hwmon_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1307_clks_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3231_clks_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3231_clks_init to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3231_clk_sqw_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3231_clk_32khz_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds3231_clk_sqw_rates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1388_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1388_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1307_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ds1307_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds1307_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @ds1307_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1307_probe(ptr noundef %client, ptr noundef readonly %id) #2 align 64 {
entry:
  %ohms.i = alloca i32, align 4
  %chargeable.i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %regs = alloca [8 x i8], align 8
  %nvmem_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #10
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %regs) #10
  %1 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 1
  %2 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 2
  %3 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 3
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %regs, align 8
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup510_crit_edge, label %if.end

entry.cleanup510_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup510

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  %dev5 = getelementptr inbounds %struct.ds1307, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev5, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %name6 = getelementptr inbounds %struct.ds1307, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %name, ptr %name6, align 4
  %call8 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @regmap_config, ptr noundef nonnull @ds1307_probe._key, ptr noundef nonnull @.str.1) #10
  %regmap = getelementptr inbounds %struct.ds1307, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.2) #13
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup510

if.end15:                                         ; preds = %if.end
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call17 = tail call ptr @device_get_match_data(ptr noundef %dev) #10
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %call17 to i32
  br label %if.end28

if.else:                                          ; preds = %if.end15
  %tobool21.not = icmp eq ptr %id, null
  br i1 %tobool21.not, label %if.else.cleanup510_crit_edge, label %if.then22

if.else.cleanup510_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup510

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %18 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %driver_data, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.then19
  %.pn = phi i32 [ %17, %if.then19 ], [ %19, %if.then22 ]
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.pn, ptr %call.i, align 4
  %chip.0 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %.pn
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp sgt i32 %22, 0
  br i1 %cmp, label %land.rhs, label %if.end28.land.end_crit_edge

if.end28.land.end_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %chip.0 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %chip.0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool29 = icmp slt i8 %bf.load, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end28.land.end_crit_edge
  %24 = phi i1 [ false, %if.end28.land.end_crit_edge ], [ %tobool29, %land.rhs ]
  %tobool30.not = icmp eq ptr %6, null
  br i1 %tobool30.not, label %if.then31, label %if.else33

if.then31:                                        ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ohms.i) #10
  %25 = ptrtoint ptr %ohms.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %ohms.i, align 4, !annotation !249
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chargeable.i) #10
  %26 = ptrtoint ptr %chargeable.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %chargeable.i, align 4, !annotation !249
  %do_trickle_setup.i = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %.pn, i32 11
  %27 = ptrtoint ptr %do_trickle_setup.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %do_trickle_setup.i, align 4
  %29 = and i32 %.pn, 134217727
  %30 = lshr i32 32671, %29
  %31 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool1.not.i.not = icmp eq i32 %31, 0
  br i1 %tobool1.not.i.not, label %if.end.i, label %if.then31.ds1307_trickle_init.exit_crit_edge

if.then31.ds1307_trickle_init.exit_crit_edge:     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %ds1307_trickle_init.exit

if.end.i:                                         ; preds = %if.then31
  %32 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev5, align 4
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %33, ptr noundef nonnull @.str.72, ptr noundef nonnull %ohms.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  %34 = add nsw i32 %29, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %34)
  %35 = icmp ult i32 %34, -2
  %or.cond = select i1 %tobool2.not.i, i1 true, i1 %35
  br i1 %or.cond, label %if.end5.i, label %if.end.i.ds1307_trickle_init.exit_crit_edge

if.end.i.ds1307_trickle_init.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ds1307_trickle_init.exit

if.end5.i:                                        ; preds = %if.end.i
  %36 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev5, align 4
  %call.i30.i = call i32 @device_property_read_u32_array(ptr noundef %37, ptr noundef nonnull @.str.73, ptr noundef nonnull %chargeable.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool8.not.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end5.i
  %38 = ptrtoint ptr %chargeable.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chargeable.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %do.end.i [
    i32 0, label %if.then9.i.if.end16.i_crit_edge
    i32 1, label %sw.bb10.i
  ]

if.then9.i.if.end16.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

sw.bb10.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

do.end.i:                                         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.74) #13
  %43 = add nsw i32 %29, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %44 = icmp ult i32 %43, 2
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev5, align 4
  %call.i31.i = call zeroext i1 @device_property_present(ptr noundef %46, ptr noundef nonnull @.str.76) #10
  %47 = add nsw i32 %29, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %48 = icmp ult i32 %47, 2
  %not.call.i31.i = xor i1 %call.i31.i, true
  %spec.select.i = select i1 %not.call.i31.i, i1 %48, i1 false
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else.i, %do.end.i, %sw.bb10.i, %if.then9.i.if.end16.i_crit_edge
  %diode.0.off0.i = phi i1 [ %44, %do.end.i ], [ true, %sw.bb10.i ], [ false, %if.then9.i.if.end16.i_crit_edge ], [ %spec.select.i, %if.else.i ]
  %49 = ptrtoint ptr %ohms.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ohms.i, align 4
  %call19.i = call zeroext i8 %28(ptr noundef nonnull %call.i, i32 noundef %50, i1 noundef zeroext %diode.0.off0.i) #10
  br label %ds1307_trickle_init.exit

ds1307_trickle_init.exit:                         ; preds = %if.end16.i, %if.end.i.ds1307_trickle_init.exit_crit_edge, %if.then31.ds1307_trickle_init.exit_crit_edge
  %retval.0.i662 = phi i8 [ %call19.i, %if.end16.i ], [ 0, %if.then31.ds1307_trickle_init.exit_crit_edge ], [ 0, %if.end.i.ds1307_trickle_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chargeable.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ohms.i) #10
  br label %if.end39

if.else33:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %6, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.else33, %ds1307_trickle_init.exit
  %trickle_charger_setup.0 = phi i8 [ %retval.0.i662, %ds1307_trickle_init.exit ], [ %52, %if.else33 ]
  %conv = zext i8 %trickle_charger_setup.0 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %trickle_charger_setup.0)
  %tobool40.not = icmp eq i8 %trickle_charger_setup.0, 0
  br i1 %tobool40.not, label %if.end39.if.end65_crit_edge, label %land.lhs.true

if.end39.if.end65_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end39
  %trickle_charger_reg = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %.pn, i32 10
  %53 = and i32 %.pn, 134217727
  %54 = lshr i32 32415, %53
  %55 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool42.not.not = icmp eq i32 %55, 0
  br i1 %tobool42.not.not, label %do.body44, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

do.body44:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1307_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1307_probe, %do.end59)) #10
          to label %if.then52 [label %do.end59], !srcloc !250

if.then52:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev5, align 4
  %58 = ptrtoint ptr %trickle_charger_reg to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %trickle_charger_reg, align 4
  %conv56 = zext i16 %59 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1307_probe.__UNIQUE_ID_ddebug301, ptr noundef %57, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv56) #10
  br label %do.end59

do.end59:                                         ; preds = %if.then52, %do.body44
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %62 = ptrtoint ptr %trickle_charger_reg to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %trickle_charger_reg, align 4
  %conv62 = zext i16 %63 to i32
  %call64 = call i32 @regmap_write(ptr noundef %61, i32 noundef %conv62, i32 noundef %conv) #10
  br label %if.end65

if.end65:                                         ; preds = %do.end59, %land.lhs.true.if.end65_crit_edge, %if.end39.if.end65_crit_edge
  %64 = ptrtoint ptr %chip.0 to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load66 = load i8, ptr %chip.0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load66)
  %tobool69.not = icmp sgt i8 %bf.load66, -1
  br i1 %tobool69.not, label %if.end65.if.end75_crit_edge, label %land.lhs.true70

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

land.lhs.true70:                                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %call.i663 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %if.end75

if.end75:                                         ; preds = %land.lhs.true70, %if.end65.if.end75_crit_edge
  %ds1307_can_wakeup_device.0.off0 = phi i1 [ false, %if.end65.if.end75_crit_edge ], [ %call.i663, %land.lhs.true70 ]
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call.i, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %66, label %if.end75.sw.epilog_crit_edge [
    i32 3, label %if.end75.sw.bb_crit_edge
    i32 5, label %if.end75.sw.bb_crit_edge679
    i32 7, label %if.end75.sw.bb_crit_edge680
    i32 9, label %if.end75.sw.bb_crit_edge681
    i32 14, label %sw.bb145
    i32 8, label %sw.bb287
  ]

if.end75.sw.bb_crit_edge681:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end75.sw.bb_crit_edge680:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end75.sw.bb_crit_edge679:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end75.sw.bb_crit_edge:                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end75.sw.epilog_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end75.sw.bb_crit_edge, %if.end75.sw.bb_crit_edge679, %if.end75.sw.bb_crit_edge680, %if.end75.sw.bb_crit_edge681
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  %call79 = call i32 @regmap_bulk_read(ptr noundef %69, i32 noundef 14, ptr noundef nonnull %regs, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end101, label %do.body82

do.body82:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1307_probe.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1307_probe, %cleanup510)) #10
          to label %if.then96 [label %cleanup510], !srcloc !250

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1307_probe.__UNIQUE_ID_ddebug302, ptr noundef %71, ptr noundef nonnull @.str.10, i32 noundef %call79) #10
  br label %cleanup510

if.end101:                                        ; preds = %sw.bb
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %regs, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %73)
  %tobool104.not = icmp sgt i8 %73, -1
  br i1 %tobool104.not, label %if.end101.if.end110_crit_edge, label %if.then105

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then105:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %and108 = and i8 %73, 127
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %and108, ptr %regs, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then105, %if.end101.if.end110_crit_edge
  %brmerge = select i1 %24, i1 true, i1 %ds1307_can_wakeup_device.0.off0
  br i1 %brmerge, label %if.then115, label %if.end110.if.end125_crit_edge

if.end110.if.end125_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

if.then115:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  %bbsqi_bit = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %.pn, i32 7
  %75 = ptrtoint ptr %bbsqi_bit to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %bbsqi_bit, align 2
  %77 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %regs, align 8
  %79 = or i8 %76, %78
  %or119638 = and i8 %79, -8
  %80 = or i8 %or119638, 4
  store i8 %80, ptr %regs, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then115, %if.end110.if.end125_crit_edge
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 4
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %regs, align 8
  %conv128 = zext i8 %84 to i32
  %call129 = call i32 @regmap_write(ptr noundef %82, i32 noundef 14, i32 noundef %conv128) #10
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %1, align 1
  %conv131 = zext i8 %86 to i32
  %and132 = and i32 %conv131, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end125.sw.epilog_crit_edge, label %if.then134

if.end125.sw.epilog_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then134:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 4
  %and138 = and i32 %conv131, 127
  %call139 = call i32 @regmap_write(ptr noundef %88, i32 noundef 15, i32 noundef %and138) #10
  %89 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.12) #13
  br label %sw.epilog

sw.bb145:                                         ; preds = %if.end75
  %91 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap, align 4
  %call148 = call i32 @regmap_bulk_read(ptr noundef %92, i32 noundef 232, ptr noundef nonnull %regs, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end170, label %do.body151

do.body151:                                       ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1307_probe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1307_probe, %cleanup510)) #10
          to label %if.then165 [label %cleanup510], !srcloc !250

if.then165:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1307_probe.__UNIQUE_ID_ddebug303, ptr noundef %94, ptr noundef nonnull @.str.10, i32 noundef %call148) #10
  br label %cleanup510

if.end170:                                        ; preds = %sw.bb145
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %1, align 1
  %97 = and i8 %96, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool174.not = icmp eq i8 %97, 0
  br i1 %tobool174.not, label %if.then175, label %if.end170.if.end188_crit_edge

if.end170.if.end188_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end188

if.then175:                                       ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #12
  %or178 = or i8 %96, 32
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %or178, ptr %1, align 1
  %99 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap, align 4
  %conv182 = zext i8 %or178 to i32
  %call183 = call i32 @regmap_write(ptr noundef %100, i32 noundef 248, i32 noundef %conv182) #10
  %101 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %102, ptr noundef nonnull @.str.16) #13
  br label %if.end188

if.end188:                                        ; preds = %if.then175, %if.end170.if.end188_crit_edge
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %1, align 1
  %105 = and i8 %104, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool192.not = icmp eq i8 %105, 0
  br i1 %tobool192.not, label %if.end188.if.end206_crit_edge, label %if.then193

if.end188.if.end206_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end206

if.then193:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #12
  %and196 = and i8 %104, -17
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %and196, ptr %1, align 1
  %107 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap, align 4
  %conv200 = zext i8 %and196 to i32
  %call201 = call i32 @regmap_write(ptr noundef %108, i32 noundef 248, i32 noundef %conv200) #10
  %109 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %110, ptr noundef nonnull @.str.19) #13
  br label %if.end206

if.end206:                                        ; preds = %if.then193, %if.end188.if.end206_crit_edge
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %1, align 1
  %113 = and i8 %112, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool210.not = icmp eq i8 %113, 0
  br i1 %tobool210.not, label %if.end206.if.end224_crit_edge, label %if.then211

if.end206.if.end224_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end224

if.then211:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #12
  %and214 = and i8 %112, -65
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %and214, ptr %1, align 1
  %115 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap, align 4
  %conv218 = zext i8 %and214 to i32
  %call219 = call i32 @regmap_write(ptr noundef %116, i32 noundef 248, i32 noundef %conv218) #10
  %117 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %118, ptr noundef nonnull @.str.22) #13
  br label %if.end224

if.end224:                                        ; preds = %if.then211, %if.end206.if.end224_crit_edge
  %119 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %regs, align 8
  %conv226 = zext i8 %120 to i32
  %and227 = and i32 %conv226, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and227)
  %tobool228.not = icmp eq i32 %and227, 0
  br i1 %tobool228.not, label %if.then229, label %if.end224.sw.epilog_crit_edge

if.end224.sw.epilog_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then229:                                       ; preds = %if.end224
  %121 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap, align 4
  %or233 = or i32 %conv226, 32
  %call234 = call i32 @regmap_write(ptr noundef %122, i32 noundef 232, i32 noundef %or233) #10
  %123 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap, align 4
  %call237 = call i32 @regmap_bulk_read(ptr noundef %124, i32 noundef 232, ptr noundef nonnull %regs, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.end259, label %do.body240

do.body240:                                       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1307_probe.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1307_probe, %cleanup510)) #10
          to label %if.then254 [label %cleanup510], !srcloc !250

if.then254:                                       ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1307_probe.__UNIQUE_ID_ddebug304, ptr noundef %126, ptr noundef nonnull @.str.10, i32 noundef %call237) #10
  br label %cleanup510

if.end259:                                        ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %2, align 2
  %call267 = call i32 @_bcd2bin(i8 noundef zeroext %128) #14
  %conv268 = trunc i32 %call267 to i8
  %conv269 = and i32 %call267, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv269)
  %cmp270 = icmp eq i32 %conv269, 12
  %spec.store.select = select i1 %cmp270, i8 0, i8 %conv268
  %129 = and i8 %128, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool277.not = icmp eq i8 %129, 0
  %add280 = add i8 %spec.store.select, 12
  %spec.select640 = select i1 %tobool277.not, i8 %spec.store.select, i8 %add280
  %130 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regmap, align 4
  %conv284 = zext i8 %spec.select640 to i32
  %call285 = call i32 @regmap_write(ptr noundef %131, i32 noundef 40, i32 noundef %conv284) #10
  br label %sw.epilog

sw.bb287:                                         ; preds = %if.end75
  %132 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regmap, align 4
  %call289 = call i32 @regmap_read(ptr noundef %133, i32 noundef 12, ptr noundef nonnull %tmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289)
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %if.end311, label %do.body292

do.body292:                                       ; preds = %sw.bb287
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1307_probe.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1307_probe, %cleanup510)) #10
          to label %if.then306 [label %cleanup510], !srcloc !250

if.then306:                                       ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #12
  %134 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1307_probe.__UNIQUE_ID_ddebug305, ptr noundef %135, ptr noundef nonnull @.str.10, i32 noundef %call289) #10
  br label %cleanup510

if.end311:                                        ; preds = %sw.bb287
  %136 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %tmp, align 4
  %and312 = and i32 %137, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and312)
  %tobool313.not = icmp eq i32 %and312, 0
  br i1 %tobool313.not, label %if.end311.sw.epilog_crit_edge, label %if.then314

if.end311.sw.epilog_crit_edge:                    ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then314:                                       ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #12
  %and315 = and i32 %137, -129
  %138 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %and315, ptr %tmp, align 4
  %139 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regmap, align 4
  %call317 = call i32 @regmap_write(ptr noundef %140, i32 noundef 12, i32 noundef %and315) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then314, %if.end311.sw.epilog_crit_edge, %if.end259, %if.end224.sw.epilog_crit_edge, %if.then134, %if.end125.sw.epilog_crit_edge, %if.end75.sw.epilog_crit_edge
  %141 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regmap, align 4
  %offset = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %.pn, i32 3
  %143 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %offset, align 2
  %conv320 = zext i8 %144 to i32
  %call322 = call i32 @regmap_bulk_read(ptr noundef %142, i32 noundef %conv320, ptr noundef nonnull %regs, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call322)
  %tobool323.not = icmp eq i32 %call322, 0
  br i1 %tobool323.not, label %if.end344, label %do.body325

do.body325:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1307_probe.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1307_probe, %cleanup510)) #10
          to label %if.then339 [label %cleanup510], !srcloc !250

if.then339:                                       ; preds = %do.body325
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1307_probe.__UNIQUE_ID_ddebug306, ptr noundef %146, ptr noundef nonnull @.str.10, i32 noundef %call322) #10
  br label %cleanup510

if.end344:                                        ; preds = %sw.epilog
  %147 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %148)
  %cmp346 = icmp eq i32 %148, 13
  br i1 %cmp346, label %land.lhs.true348, label %if.end344.if.end359_crit_edge

if.end344.if.end359_crit_edge:                    ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end359

land.lhs.true348:                                 ; preds = %if.end344
  %149 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %3, align 1
  %conv350 = zext i8 %150 to i32
  %and351 = and i32 %conv350, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and351)
  %tobool352.not = icmp eq i32 %and351, 0
  br i1 %tobool352.not, label %if.then353, label %land.lhs.true348.if.end359thread-pre-split_crit_edge

land.lhs.true348.if.end359thread-pre-split_crit_edge: ; preds = %land.lhs.true348
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end359thread-pre-split

if.then353:                                       ; preds = %land.lhs.true348
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regmap, align 4
  %or357 = or i32 %conv350, 8
  %call358 = call i32 @regmap_write(ptr noundef %152, i32 noundef 3, i32 noundef %or357) #10
  br label %if.end359thread-pre-split

if.end359thread-pre-split:                        ; preds = %if.then353, %land.lhs.true348.if.end359thread-pre-split_crit_edge
  %153 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %.pr = load i32, ptr %call.i, align 4
  br label %if.end359

if.end359:                                        ; preds = %if.end359thread-pre-split, %if.end344.if.end359_crit_edge
  %154 = phi i32 [ %.pr, %if.end359thread-pre-split ], [ %148, %if.end344.if.end359_crit_edge ]
  %155 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %2, align 2
  %conv361 = zext i8 %156 to i32
  %157 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %conv361, ptr %tmp, align 4
  %158 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %154, label %sw.default364 [
    i32 6, label %if.end359.sw.epilog408_crit_edge
    i32 10, label %if.end359.sw.epilog408_crit_edge682
    i32 11, label %if.end359.sw.epilog408_crit_edge683
    i32 12, label %if.end359.sw.epilog408_crit_edge684
    i32 14, label %if.end359.sw.epilog408_crit_edge685
  ]

if.end359.sw.epilog408_crit_edge685:              ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog408

if.end359.sw.epilog408_crit_edge684:              ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog408

if.end359.sw.epilog408_crit_edge683:              ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog408

if.end359.sw.epilog408_crit_edge682:              ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog408

if.end359.sw.epilog408_crit_edge:                 ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog408

sw.default364:                                    ; preds = %if.end359
  %and365 = and i32 %conv361, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and365)
  %tobool366.not = icmp eq i32 %and365, 0
  br i1 %tobool366.not, label %sw.default364.sw.epilog408_crit_edge, label %cond.end382

sw.default364.sw.epilog408_crit_edge:             ; preds = %sw.default364
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog408

cond.end382:                                      ; preds = %sw.default364
  call void @__sanitizer_cov_trace_pc() #12
  %and369 = and i8 %156, 31
  %call381 = call i32 @_bcd2bin(i8 noundef zeroext %and369) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call381)
  %cmp384 = icmp eq i32 %call381, 12
  %spec.store.select520 = select i1 %cmp384, i32 0, i32 %call381
  %159 = and i8 %156, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool391.not = icmp eq i8 %159, 0
  %add393 = add i32 %spec.store.select520, 12
  %spec.select = select i1 %tobool391.not, i32 %spec.store.select520, i32 %add393
  %160 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %spec.select, ptr %tmp, align 4
  %161 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regmap, align 4
  %add398 = add nuw nsw i32 %conv320, 2
  %call403 = call zeroext i8 @_bin2bcd(i32 noundef %spec.select) #14
  %conv404 = zext i8 %call403 to i32
  %call407 = call i32 @regmap_write(ptr noundef %162, i32 noundef %add398, i32 noundef %conv404) #10
  br label %sw.epilog408

sw.epilog408:                                     ; preds = %cond.end382, %sw.default364.sw.epilog408_crit_edge, %if.end359.sw.epilog408_crit_edge, %if.end359.sw.epilog408_crit_edge682, %if.end359.sw.epilog408_crit_edge683, %if.end359.sw.epilog408_crit_edge684, %if.end359.sw.epilog408_crit_edge685
  %163 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev5, align 4
  %call410 = call ptr @devm_rtc_allocate_device(ptr noundef %164) #10
  %rtc = getelementptr inbounds %struct.ds1307, ptr %call.i, i32 0, i32 4
  %165 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call410, ptr %rtc, align 4
  %cmp.i664 = icmp ugt ptr %call410, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i664, label %if.then413, label %if.end416

if.then413:                                       ; preds = %sw.epilog408
  call void @__sanitizer_cov_trace_pc() #12
  %166 = ptrtoint ptr %call410 to i32
  br label %cleanup510

if.end416:                                        ; preds = %sw.epilog408
  %brmerge641 = select i1 %24, i1 true, i1 %ds1307_can_wakeup_device.0.off0
  br i1 %brmerge641, label %if.then422, label %if.else424

if.then422:                                       ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #12
  %167 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev5, align 4
  call void @device_set_wakeup_capable(ptr noundef %168, i1 noundef zeroext true) #10
  br label %if.end427

if.else424:                                       ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #12
  %features = getelementptr inbounds %struct.rtc_device, ptr %call410, i32 0, i32 21
  call void @_clear_bit(i32 noundef 0, ptr noundef %features) #10
  br label %if.end427

if.end427:                                        ; preds = %if.else424, %if.then422
  %ds1307_can_wakeup_device.0.off0.not = xor i1 %ds1307_can_wakeup_device.0.off0, true
  %brmerge642 = select i1 %ds1307_can_wakeup_device.0.off0.not, i1 true, i1 %24
  br i1 %brmerge642, label %if.end427.if.end438_crit_edge, label %do.end435

if.end427.if.end438_crit_edge:                    ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end438

do.end435:                                        ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #12
  %169 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %170, ptr noundef nonnull @.str.25) #13
  %171 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rtc, align 4
  %uie_unsupported = getelementptr inbounds %struct.rtc_device, ptr %172, i32 0, i32 19
  %173 = ptrtoint ptr %uie_unsupported to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 1, ptr %uie_unsupported, align 8
  br label %if.end438

if.end438:                                        ; preds = %do.end435, %if.end427.if.end438_crit_edge
  br i1 %24, label %if.then440, label %if.end438.if.end483_crit_edge

if.end438.if.end483_crit_edge:                    ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end483

if.then440:                                       ; preds = %if.end438
  %174 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev5, align 4
  %176 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %irq, align 4
  %irq_handler = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %.pn, i32 8
  %178 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %irq_handler, align 4
  %180 = and i32 %.pn, 134217725
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %180)
  %.not = icmp eq i32 %180, 13
  %.ds1307_irq = select i1 %.not, ptr %179, ptr @ds1307_irq
  %181 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %name6, align 4
  %call449 = call i32 @devm_request_threaded_irq(ptr noundef %175, i32 noundef %177, ptr noundef null, ptr noundef %.ds1307_irq, i32 noundef 8320, ptr noundef %182, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call449)
  %tobool450.not = icmp eq i32 %call449, 0
  br i1 %tobool450.not, label %do.body462, label %if.then451

if.then451:                                       ; preds = %if.then440
  call void @__sanitizer_cov_trace_pc() #12
  %183 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %irq, align 4
  %184 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev5, align 4
  call void @device_set_wakeup_capable(ptr noundef %185, i1 noundef zeroext false) #10
  %186 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rtc, align 4
  %features455 = getelementptr inbounds %struct.rtc_device, ptr %187, i32 0, i32 21
  call void @_clear_bit(i32 noundef 0, ptr noundef %features455) #10
  %188 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.29) #13
  br label %if.end483

do.body462:                                       ; preds = %if.then440
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1307_probe.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1307_probe, %if.end483)) #10
          to label %if.then476 [label %if.end483], !srcloc !250

if.then476:                                       ; preds = %do.body462
  call void @__sanitizer_cov_trace_pc() #12
  %190 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev5, align 4
  %192 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1307_probe.__UNIQUE_ID_ddebug307, ptr noundef %191, ptr noundef nonnull @.str.31, i32 noundef %193) #10
  br label %if.end483

if.end483:                                        ; preds = %if.then476, %do.body462, %if.then451, %if.end438.if.end483_crit_edge
  %rtc_ops = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %.pn, i32 9
  %194 = ptrtoint ptr %rtc_ops to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %rtc_ops, align 4
  %196 = and i32 %.pn, 134217727
  %197 = lshr i32 17407, %196
  %198 = and i32 %197, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool484.not.not = icmp eq i32 %198, 0
  %.ds13xx_rtc_ops = select i1 %tobool484.not.not, ptr %195, ptr @ds13xx_rtc_ops
  %199 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rtc, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %200, i32 0, i32 3
  %201 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %.ds13xx_rtc_ops, ptr %ops, align 8
  %202 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %call.i, align 4
  %.off.i = add i32 %203, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %sw.bb.i, label %if.end483.if.end493_crit_edge

if.end483.if.end493_crit_edge:                    ; preds = %if.end483
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end493

sw.bb.i:                                          ; preds = %if.end483
  %204 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rtc, align 4
  %call.i665 = call i32 @rtc_add_group(ptr noundef %205, ptr noundef nonnull @rtc_freq_test_attr_group) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i665)
  %tobool.not.i = icmp eq i32 %call.i665, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.end493_crit_edge, label %sw.bb.i.cleanup510_crit_edge

sw.bb.i.cleanup510_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup510

sw.bb.i.if.end493_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end493

if.end493:                                        ; preds = %sw.bb.i.if.end493_crit_edge, %if.end483.if.end493_crit_edge
  %206 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rtc, align 4
  %call495 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %207) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call495)
  %tobool496.not = icmp eq i32 %call495, 0
  br i1 %tobool496.not, label %if.end498, label %if.end493.cleanup510_crit_edge

if.end493.cleanup510_crit_edge:                   ; preds = %if.end493
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup510

if.end498:                                        ; preds = %if.end493
  %208 = lshr i32 20457, %196
  %209 = and i32 %208, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool499.not.not = icmp eq i32 %209, 0
  br i1 %tobool499.not.not, label %if.then500, label %if.end498.if.end509_crit_edge

if.end498.if.end509_crit_edge:                    ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end509

if.then500:                                       ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #12
  %nvram_size = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %.pn, i32 2
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_cfg) #10
  %210 = getelementptr inbounds i8, ptr %nvmem_cfg, i32 40
  %211 = call ptr @memset(ptr %210, i32 255, i32 44)
  %212 = ptrtoint ptr %nvmem_cfg to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr null, ptr %nvmem_cfg, align 4
  %name502 = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 1
  %213 = ptrtoint ptr %name502 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr @.str.32, ptr %name502, align 4
  %id503 = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 2
  %of_node = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 13
  %214 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr null, ptr %of_node, align 4
  %no_of_node = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 14
  %215 = ptrtoint ptr %no_of_node to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %no_of_node, align 4
  %reg_read = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 15
  %216 = call ptr @memset(ptr %id503, i32 0, i32 35)
  %217 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr @ds1307_nvram_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 16
  %218 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @ds1307_nvram_write, ptr %reg_write, align 4
  %cell_post_process = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 17
  %219 = ptrtoint ptr %cell_post_process to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr null, ptr %cell_post_process, align 4
  %size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 18
  %220 = ptrtoint ptr %nvram_size to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %nvram_size, align 4
  %conv506 = zext i16 %221 to i32
  %222 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %conv506, ptr %size, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 19
  %223 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 1, ptr %word_size, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 20
  %224 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 1, ptr %stride, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 21
  %225 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %call.i, ptr %priv, align 4
  %compat = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 22
  %226 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %compat, align 4
  %base_dev = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 23
  %227 = ptrtoint ptr %base_dev to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr null, ptr %base_dev, align 4
  %228 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %rtc, align 4
  %call508 = call i32 @devm_rtc_nvmem_register(ptr noundef %229, ptr noundef nonnull %nvmem_cfg) #10
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_cfg) #10
  br label %if.end509

if.end509:                                        ; preds = %if.then500, %if.end498.if.end509_crit_edge
  call fastcc void @ds1307_hwmon_register(ptr noundef nonnull %call.i)
  call fastcc void @ds1307_clks_register(ptr noundef nonnull %call.i)
  call fastcc void @ds1307_wdt_register(ptr noundef nonnull %call.i)
  br label %cleanup510

cleanup510:                                       ; preds = %if.end509, %if.end493.cleanup510_crit_edge, %sw.bb.i.cleanup510_crit_edge, %if.then413, %if.then339, %do.body325, %if.then306, %do.body292, %if.then254, %do.body240, %if.then165, %do.body151, %if.then96, %do.body82, %if.else.cleanup510_crit_edge, %do.end, %entry.cleanup510_crit_edge
  %retval.0 = phi i32 [ %15, %do.end ], [ %166, %if.then413 ], [ 0, %if.end509 ], [ -12, %entry.cleanup510_crit_edge ], [ -19, %if.else.cleanup510_crit_edge ], [ %call495, %if.end493.cleanup510_crit_edge ], [ %call322, %if.then339 ], [ %call289, %if.then306 ], [ %call148, %if.then165 ], [ %call79, %if.then96 ], [ %call.i665, %sw.bb.i.cleanup510_crit_edge ], [ %call79, %do.body82 ], [ %call148, %do.body151 ], [ %call237, %if.then254 ], [ %call237, %do.body240 ], [ %call289, %do.body292 ], [ %call322, %do.body325 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %regs) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1307_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc = getelementptr inbounds %struct.ds1307, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #10
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %stat, align 4, !annotation !249
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #10
  %regmap = getelementptr inbounds %struct.ds1307, ptr %dev_id, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 15, ptr noundef nonnull %stat) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stat, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %if.then2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then2:                                         ; preds = %if.end
  %and3 = and i32 %6, -2
  %7 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and3, ptr %stat, align 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_write(ptr noundef %9, i32 noundef 15, i32 noundef %and3) #10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 14, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.then2.out_crit_edge

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end10:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtc, align 4
  call void @rtc_update_irq(ptr noundef %13, i32 noundef 1, i32 noundef 160) #10
  br label %out

out:                                              ; preds = %if.end10, %if.then2.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %ops_lock) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1307_nvram_read(ptr nocapture noundef readonly %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %regmap = getelementptr inbounds %struct.ds1307, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %nvram_offset = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %1, i32 1
  %4 = ptrtoint ptr %nvram_offset to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nvram_offset, align 2
  %conv = zext i16 %5 to i32
  %add = add i32 %conv, %offset
  %call = tail call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef %add, ptr noundef %val, i32 noundef %bytes) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1307_nvram_write(ptr nocapture noundef readonly %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %regmap = getelementptr inbounds %struct.ds1307, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %nvram_offset = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %1, i32 1
  %4 = ptrtoint ptr %nvram_offset to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nvram_offset, align 2
  %conv = zext i16 %5 to i32
  %add = add i32 %conv, %offset
  %call = tail call i32 @regmap_bulk_write(ptr noundef %3, i32 noundef %add, ptr noundef %val, i32 noundef %bytes) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds1307_hwmon_register(ptr noundef %ds1307) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ds1307 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ds1307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp.not = icmp eq i32 %1, 9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.ds1307, ptr %ds1307, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %name = getelementptr inbounds %struct.ds1307, ptr %ds1307, i32 0, i32 3
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %3, ptr noundef %5, ptr noundef %ds1307, ptr noundef nonnull @ds3231_hwmon_groups) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %8 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.82, i32 noundef %8) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds1307_clks_register(ptr noundef %ds1307) unnamed_addr #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ds1307 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ds1307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp.not = icmp eq i32 %1, 9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev.i = getelementptr inbounds %struct.ds1307, ptr %ds1307, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %clk_num.i = getelementptr inbounds %struct.clk_onecell_data, ptr %call.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %clk_num.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %clk_num.i, align 4
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 8, i32 noundef 3520) #10
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i.i, ptr %call.i.i, align 4
  %tobool6.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool6.not.i, label %if.end.i.do.end_crit_edge, label %land.lhs.true.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %call10.i = tail call i32 @device_property_read_string_array(ptr noundef %11, ptr noundef nonnull @.str.88, ptr noundef nonnull @ds3231_clks_names, i32 noundef 2) #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %12 = call ptr @memcpy(ptr %init.i, ptr @ds3231_clks_init, i32 28)
  %rtc.i = getelementptr inbounds %struct.ds1307, ptr %ds1307, i32 0, i32 4
  %13 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtc.i, align 4
  %features.i = getelementptr inbounds %struct.rtc_device, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %features.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool13.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %land.lhs.true.i.if.end15.1.i_crit_edge

land.lhs.true.i.if.end15.1.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.1.i

if.end15.i:                                       ; preds = %land.lhs.true.i
  %17 = load ptr, ptr @ds3231_clks_names, align 4
  %18 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %init.i, align 4
  %arrayidx18.i = getelementptr %struct.ds1307, ptr %ds1307, i32 0, i32 5, i32 0
  %init19.i = getelementptr %struct.ds1307, ptr %ds1307, i32 0, i32 5, i32 0, i32 2
  %19 = ptrtoint ptr %init19.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %init.i, ptr %init19.i, align 4
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %call23.i = call ptr @devm_clk_register(ptr noundef %21, ptr noundef %arrayidx18.i) #10
  %22 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call23.i, ptr %23, align 4
  %25 = load ptr, ptr %call.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %cmp.i.i = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end15.i.ds3231_clks_register.exit_crit_edge, label %if.end15.i.if.end15.1.i_crit_edge

if.end15.i.if.end15.1.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.1.i

if.end15.i.ds3231_clks_register.exit_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ds3231_clks_register.exit

if.end15.1.i:                                     ; preds = %if.end15.i.if.end15.1.i_crit_edge, %land.lhs.true.i.if.end15.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #10
  %28 = call ptr @memcpy(ptr %init.i, ptr getelementptr inbounds ([2 x %struct.clk_init_data], ptr @ds3231_clks_init, i32 0, i32 1), i32 28)
  %29 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @ds3231_clks_names, i32 0, i32 1), align 4
  %30 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %init.i, align 4
  %arrayidx18.1.i = getelementptr %struct.ds1307, ptr %ds1307, i32 0, i32 5, i32 1
  %init19.1.i = getelementptr %struct.ds1307, ptr %ds1307, i32 0, i32 5, i32 1, i32 2
  %31 = ptrtoint ptr %init19.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %init.i, ptr %init19.1.i, align 4
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %call23.1.i = call ptr @devm_clk_register(ptr noundef %33, ptr noundef %arrayidx18.1.i) #10
  %34 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i.i, align 4
  %arrayidx25.1.i = getelementptr ptr, ptr %35, i32 1
  %36 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call23.1.i, ptr %arrayidx25.1.i, align 4
  %37 = load ptr, ptr %call.i.i, align 4
  %arrayidx27.1.i = getelementptr ptr, ptr %37, i32 1
  %38 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx27.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.end15.1.i.ds3231_clks_register.exit_crit_edge, label %for.inc.1.i

if.end15.1.i.ds3231_clks_register.exit_crit_edge: ; preds = %if.end15.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ds3231_clks_register.exit

for.inc.1.i:                                      ; preds = %if.end15.1.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  %tobool34.not.i = icmp eq ptr %5, null
  br i1 %tobool34.not.i, label %for.inc.1.i.cleanup_crit_edge, label %if.then35.i

for.inc.1.i.cleanup_crit_edge:                    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %call36.i = call i32 @of_clk_add_provider(ptr noundef nonnull %5, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call.i.i) #10
  br label %cleanup

ds3231_clks_register.exit:                        ; preds = %if.end15.1.i.ds3231_clks_register.exit_crit_edge, %if.end15.i.ds3231_clks_register.exit_crit_edge
  %.lcssa.i = phi ptr [ %27, %if.end15.i.ds3231_clks_register.exit_crit_edge ], [ %39, %if.end15.1.i.ds3231_clks_register.exit_crit_edge ]
  %40 = ptrtoint ptr %.lcssa.i to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #10
  %tobool.not = icmp eq ptr %.lcssa.i, null
  br i1 %tobool.not, label %ds3231_clks_register.exit.cleanup_crit_edge, label %ds3231_clks_register.exit.do.end_crit_edge

ds3231_clks_register.exit.do.end_crit_edge:       ; preds = %ds3231_clks_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

ds3231_clks_register.exit.cleanup_crit_edge:      ; preds = %ds3231_clks_register.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %ds3231_clks_register.exit.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.2.i12 = phi i32 [ %40, %ds3231_clks_register.exit.do.end_crit_edge ], [ -12, %if.end.do.end_crit_edge ], [ -12, %if.end.i.do.end_crit_edge ]
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.86, i32 noundef %retval.2.i12) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ds3231_clks_register.exit.cleanup_crit_edge, %if.then35.i, %for.inc.1.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds1307_wdt_register(ptr noundef %ds1307) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !249
  %1 = ptrtoint ptr %ds1307 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ds1307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp.not = icmp eq i32 %2, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.ds1307, ptr %ds1307, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 108, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %regmap = getelementptr inbounds %struct.ds1307, ptr %ds1307, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef 11, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.end2.if.end7_crit_edge

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end2
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %if.then6

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %bootstatus = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %bootstatus to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32, ptr %bootstatus, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true.if.end7_crit_edge, %if.end2.if.end7_crit_edge
  %info = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ds1388_wdt_info, ptr %info, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ds1388_wdt_ops, ptr %ops, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 99, ptr %timeout, align 4
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 99, ptr %max_timeout, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %min_timeout, align 4
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call9 = call i32 @watchdog_init_timeout(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef %16) #10
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %call.i, i32 0, i32 16
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ds1307, ptr %driver_data.i, align 4
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call11 = call i32 @devm_watchdog_register_device(ptr noundef %19, ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @do_trickle_setup_ds1339(ptr nocapture noundef readonly %ds1307, i32 noundef %ohms, i1 noundef zeroext %diode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv2 = select i1 %diode, i8 -88, i8 -92
  %0 = zext i32 %ohms to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %ohms, label %do.end [
    i32 250, label %sw.bb
    i32 2000, label %sw.bb6
    i32 4000, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = or i8 %conv2, 1
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = or i8 %conv2, 2
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = or i8 %conv2, 3
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ds1307, ptr %ds1307, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.33, i32 noundef %ohms) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb10, %sw.bb6, %sw.bb
  %retval.0 = phi i8 [ 0, %do.end ], [ %3, %sw.bb10 ], [ %2, %sw.bb6 ], [ %1, %sw.bb ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp794xx_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc = getelementptr inbounds %struct.ds1307, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !249
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #10
  %regmap = getelementptr inbounds %struct.ds1307, ptr %dev_id, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 13, ptr noundef nonnull %reg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3:                                          ; preds = %if.end
  %and4 = and i32 %6, -9
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and4, ptr %reg, align 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_write(ptr noundef %9, i32 noundef 13, i32 noundef %and4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9:                                          ; preds = %if.end3
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 7, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtc, align 4
  call void @rtc_update_irq(ptr noundef %13, i32 noundef 1, i32 noundef 160) #10
  br label %out

out:                                              ; preds = %if.end14, %if.end9.out_crit_edge, %if.end3.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %ops_lock) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8130_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %ctl = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ctl) #10
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ctl, align 1, !annotation !249
  %1 = getelementptr inbounds [3 x i8], ptr %ctl, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !249
  %3 = getelementptr inbounds [3 x i8], ptr %ctl, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !249
  %rtc = getelementptr inbounds %struct.ds1307, ptr %dev_id, i32 0, i32 4
  %5 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtc, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #10
  %regmap = getelementptr inbounds %struct.ds1307, ptr %dev_id, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 28, ptr noundef nonnull %ctl, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  %11 = and i8 %10, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end2:                                          ; preds = %if.end
  %and5 = and i8 %10, -9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %and5, ptr %1, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  %15 = and i8 %14, -9
  store i8 %15, ptr %3, align 1
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call13 = call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef 28, ptr noundef nonnull %ctl, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end2.out_crit_edge, label %if.end17

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end17:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rtc, align 4
  call void @rtc_update_irq(ptr noundef %19, i32 noundef 1, i32 noundef 160) #10
  br label %out

out:                                              ; preds = %if.end17, %if.end2.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %20 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtc, align 4
  %ops_lock20 = getelementptr inbounds %struct.rtc_device, ptr %21, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %ops_lock20) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ctl) #10
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @do_trickle_setup_rx8130(ptr nocapture noundef readnone %ds1307, i32 noundef %ohms, i1 noundef zeroext %diode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %spec.select = select i1 %diode, i8 48, i8 16
  ret i8 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1307_get_time(ptr noundef %dev, ptr nocapture noundef %t) #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  %regs = alloca [7 x i8], align 1
  %regflag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #10
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !249
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %regs) #10
  %5 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 1
  %6 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 2
  %7 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 3
  %8 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 4
  %9 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 5
  %10 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 6
  %11 = call ptr @memset(ptr %regs, i32 255, i32 7)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %13)
  %cmp = icmp eq i32 %13, 15
  br i1 %cmp, label %if.then, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regflag) #10
  %14 = ptrtoint ptr %regflag to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %regflag, align 4, !annotation !249
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %16, i32 noundef 29, ptr noundef nonnull %regflag) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.37, i32 noundef %call2) #13
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  %17 = ptrtoint ptr %regflag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regflag, align 4
  %and = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %cleanup, label %do.body6

do.body6:                                         ; preds = %if.end
  %.b331 = load i1, ptr @ds1307_get_time.__print_once, align 1
  br i1 %.b331, label %do.body6.cleanup.thread_crit_edge, label %if.then8

do.body6.cleanup.thread_crit_edge:                ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then8:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ds1307_get_time.__print_once, align 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.39) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then8, %do.body6.cleanup.thread_crit_edge, %do.end
  %retval.0.ph = phi i32 [ -22, %do.body6.cleanup.thread_crit_edge ], [ -22, %if.then8 ], [ %call2, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regflag) #10
  br label %cleanup279

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regflag) #10
  br label %if.end16

if.end16:                                         ; preds = %cleanup, %entry.if.end16_crit_edge
  %regmap17 = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap17, align 4
  %offset = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %4, i32 3
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %offset, align 2
  %conv = zext i8 %22 to i32
  %call18 = call i32 @regmap_bulk_read(ptr noundef %20, i32 noundef %conv, ptr noundef nonnull %regs, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body25, label %do.end23

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.37, i32 noundef %call18) #13
  br label %cleanup279

do.body25:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1307_get_time.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1307_get_time, %do.end36)) #10
          to label %if.then32 [label %do.end36], !srcloc !250

if.then32:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1307_get_time.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.37, ptr noundef nonnull %regs) #10
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body25
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %24)
  %cmp38 = icmp eq i32 %24, 10
  br i1 %cmp38, label %land.lhs.true, label %do.end36.if.end54_crit_edge

do.end36.if.end54_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true:                                    ; preds = %do.end36
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %tobool43.not = icmp sgt i8 %26, -1
  br i1 %tobool43.not, label %land.lhs.true.if.end54_crit_edge, label %do.body45

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.body45:                                        ; preds = %land.lhs.true
  %.b328330 = load i1, ptr @ds1307_get_time.__print_once.44, align 1
  br i1 %.b328330, label %do.body45.cleanup279_crit_edge, label %if.then47

do.body45.cleanup279_crit_edge:                   ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup279

if.then47:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ds1307_get_time.__print_once.44, align 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.39) #13
  br label %cleanup279

if.end54:                                         ; preds = %land.lhs.true.if.end54_crit_edge, %do.end36.if.end54_crit_edge
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %regs, align 1
  %conv56 = zext i8 %28 to i32
  %29 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv56, ptr %tmp, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %31, label %if.end54.cond.end_crit_edge [
    i32 1, label %if.end54.sw.bb_crit_edge
    i32 10, label %if.end54.sw.bb_crit_edge339
    i32 11, label %if.end54.sw.bb_crit_edge340
    i32 12, label %if.end54.sw.bb_crit_edge341
    i32 2, label %if.end54.sw.bb62_crit_edge
    i32 4, label %if.end54.sw.bb62_crit_edge342
    i32 6, label %sw.bb76
    i32 8, label %sw.bb90
    i32 13, label %sw.bb100
  ]

if.end54.sw.bb62_crit_edge342:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb62

if.end54.sw.bb62_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb62

if.end54.sw.bb_crit_edge341:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end54.sw.bb_crit_edge340:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end54.sw.bb_crit_edge339:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end54.sw.bb_crit_edge:                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end54.cond.end_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

sw.bb:                                            ; preds = %if.end54.sw.bb_crit_edge, %if.end54.sw.bb_crit_edge339, %if.end54.sw.bb_crit_edge340, %if.end54.sw.bb_crit_edge341
  %and58 = and i32 %conv56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %sw.bb.cond.end_crit_edge, label %sw.bb.cleanup279_crit_edge

sw.bb.cleanup279_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup279

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

sw.bb62:                                          ; preds = %if.end54.sw.bb62_crit_edge, %if.end54.sw.bb62_crit_edge342
  %and63 = and i32 %conv56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end66, label %sw.bb62.cleanup279_crit_edge

sw.bb62.cleanup279_crit_edge:                     ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup279

if.end66:                                         ; preds = %sw.bb62
  %33 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap17, align 4
  %call68 = call i32 @regmap_read(ptr noundef %34, i32 noundef 7, ptr noundef nonnull %tmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end66.cleanup279_crit_edge

if.end66.cleanup279_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup279

if.end71:                                         ; preds = %if.end66
  %35 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tmp, align 4
  %and72 = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end71.cond.end_crit_edge, label %if.end71.cleanup279_crit_edge

if.end71.cleanup279_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup279

if.end71.cond.end_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

sw.bb76:                                          ; preds = %if.end54
  %and77 = and i32 %conv56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end80, label %sw.bb76.cleanup279_crit_edge

sw.bb76.cleanup279_crit_edge:                     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup279

if.end80:                                         ; preds = %sw.bb76
  %37 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap17, align 4
  %call82 = call i32 @regmap_read(ptr noundef %38, i32 noundef 9, ptr noundef nonnull %tmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end80.cleanup279_crit_edge

if.end80.cleanup279_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup279

if.end85:                                         ; preds = %if.end80
  %39 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tmp, align 4
  %and86 = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.cond.end_crit_edge, label %if.end85.cleanup279_crit_edge

if.end85.cleanup279_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup279

if.end85.cond.end_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

sw.bb90:                                          ; preds = %if.end54
  %41 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap17, align 4
  %call92 = call i32 @regmap_read(ptr noundef %42, i32 noundef 11, ptr noundef nonnull %tmp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %sw.bb90.cleanup279_crit_edge

sw.bb90.cleanup279_crit_edge:                     ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup279

if.end95:                                         ; preds = %sw.bb90
  %43 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tmp, align 4
  %and96 = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end95.cond.end_crit_edge, label %if.end95.cleanup279_crit_edge

if.end95.cleanup279_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup279

if.end95.cond.end_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

sw.bb100:                                         ; preds = %if.end54
  %and101 = and i32 %conv56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %sw.bb100.cleanup279_crit_edge, label %sw.bb100.cond.end_crit_edge

sw.bb100.cond.end_crit_edge:                      ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

sw.bb100.cleanup279_crit_edge:                    ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup279

cond.end:                                         ; preds = %sw.bb100.cond.end_crit_edge, %if.end95.cond.end_crit_edge, %if.end85.cond.end_crit_edge, %if.end71.cond.end_crit_edge, %sw.bb.cond.end_crit_edge, %if.end54.cond.end_crit_edge
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %regs, align 1
  %47 = and i8 %46, 127
  %call120 = call i32 @_bcd2bin(i8 noundef zeroext %47) #14
  %48 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call120, ptr %t, align 4
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %5, align 1
  %51 = and i8 %50, 127
  %call141 = call i32 @_bcd2bin(i8 noundef zeroext %51) #14
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 1
  %52 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call141, ptr %tm_min, align 4
  %53 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %6, align 1
  %55 = and i8 %54, 63
  %call155 = call i32 @_bcd2bin(i8 noundef zeroext %55) #14
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 2
  %56 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call155, ptr %tm_hour, align 4
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %58)
  %cmp159 = icmp eq i32 %58, 15
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %7, align 1
  br i1 %cmp159, label %if.then161, label %cond.end187

if.then161:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %61 = and i8 %60, 127
  %and164 = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i = icmp eq i8 %61, 0
  %62 = call i32 @llvm.ctlz.i32(i32 %and164, i1 true) #10, !range !251
  %sub.i = sub nuw nsw i32 32, %62
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  br label %if.end190

cond.end187:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %63 = and i8 %60, 7
  %call186 = call i32 @_bcd2bin(i8 noundef zeroext %63) #14
  %sub = add i32 %call186, -1
  br label %if.end190

if.end190:                                        ; preds = %cond.end187, %if.then161
  %sub.sink = phi i32 [ %sub, %cond.end187 ], [ %cond.i, %if.then161 ]
  %tm_wday189 = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 6
  %64 = ptrtoint ptr %tm_wday189 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub.sink, ptr %tm_wday189, align 4
  %65 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %8, align 1
  %67 = and i8 %66, 63
  %call211 = call i32 @_bcd2bin(i8 noundef zeroext %67) #14
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 3
  %68 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call211, ptr %tm_mday, align 4
  %69 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %9, align 1
  %71 = and i8 %70, 31
  %and216 = zext i8 %71 to i32
  %72 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and216, ptr %tmp, align 4
  %call225 = call i32 @_bcd2bin(i8 noundef zeroext %71) #14
  %sub228 = add i32 %call225, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 4
  %73 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub228, ptr %tm_mon, align 4
  %74 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %10, align 1
  %call241 = call i32 @_bcd2bin(i8 noundef zeroext %75) #14
  %add244 = add i32 %call241, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 5
  %76 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add244, ptr %tm_year, align 4
  %century_reg = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %4, i32 4
  %77 = ptrtoint ptr %century_reg to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %century_reg, align 1
  %idxprom = zext i8 %78 to i32
  %arrayidx245 = getelementptr [7 x i8], ptr %regs, i32 0, i32 %idxprom
  %79 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx245, align 1
  %century_bit = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %4, i32 6
  %81 = ptrtoint ptr %century_bit to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %century_bit, align 1
  %and248329 = and i8 %82, %80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and248329)
  %tobool249.not = icmp eq i8 %and248329, 0
  br i1 %tobool249.not, label %if.end190.do.body254_crit_edge, label %if.then250

if.end190.do.body254_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body254

if.then250:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #12
  %add252 = add i32 %call241, 200
  %83 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add252, ptr %tm_year, align 4
  br label %do.body254

do.body254:                                       ; preds = %if.then250, %if.end190.do.body254_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1307_get_time.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1307_get_time, %cleanup279)) #10
          to label %if.then268 [label %cleanup279], !srcloc !250

if.then268:                                       ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %t, align 4
  %86 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tm_min, align 4
  %88 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tm_hour, align 4
  %90 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tm_mday, align 4
  %92 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tm_mon, align 4
  %94 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tm_year, align 4
  %tm_wday275 = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 6
  %96 = ptrtoint ptr %tm_wday275 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tm_wday275, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1307_get_time.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.37, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97) #10
  br label %cleanup279

cleanup279:                                       ; preds = %if.then268, %do.body254, %sw.bb100.cleanup279_crit_edge, %if.end95.cleanup279_crit_edge, %sw.bb90.cleanup279_crit_edge, %if.end85.cleanup279_crit_edge, %if.end80.cleanup279_crit_edge, %sw.bb76.cleanup279_crit_edge, %if.end71.cleanup279_crit_edge, %if.end66.cleanup279_crit_edge, %sw.bb62.cleanup279_crit_edge, %sw.bb.cleanup279_crit_edge, %if.then47, %do.body45.cleanup279_crit_edge, %do.end23, %cleanup.thread
  %retval.1 = phi i32 [ %call18, %do.end23 ], [ -22, %if.then47 ], [ -22, %do.body45.cleanup279_crit_edge ], [ -22, %sw.bb.cleanup279_crit_edge ], [ -22, %sw.bb62.cleanup279_crit_edge ], [ %call68, %if.end66.cleanup279_crit_edge ], [ -22, %if.end71.cleanup279_crit_edge ], [ -22, %sw.bb76.cleanup279_crit_edge ], [ %call82, %if.end80.cleanup279_crit_edge ], [ -22, %if.end85.cleanup279_crit_edge ], [ %call92, %sw.bb90.cleanup279_crit_edge ], [ -22, %if.end95.cleanup279_crit_edge ], [ -22, %sw.bb100.cleanup279_crit_edge ], [ 0, %if.then268 ], [ %retval.0.ph, %cleanup.thread ], [ 0, %do.body254 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1307_set_time(ptr noundef %dev, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  %regs = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %regs) #10
  %4 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 1
  %5 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 2
  %6 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 3
  %7 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 4
  %8 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 5
  %9 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1307_set_time.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1307_set_time, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 1
  %12 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 2
  %14 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 3
  %16 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 4
  %18 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 5
  %20 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_year, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 6
  %22 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_wday, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1307_set_time.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.49, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tm_year6 = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 5
  %24 = ptrtoint ptr %tm_year6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_year6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %25)
  %cmp = icmp slt i32 %25, 100
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %century_bit = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %3, i32 6
  %26 = and i32 %3, 134217727
  %27 = lshr i32 64791, %26
  %28 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool10.not.not = icmp eq i32 %28, 0
  %cond = select i1 %tobool10.not.not, i32 299, i32 199
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %cond)
  %cmp11 = icmp ugt i32 %25, %cond
  br i1 %cmp11, label %if.end8.cleanup_crit_edge, label %cond.end

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end:                                         ; preds = %if.end8
  %29 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %t, align 4
  %call20 = tail call zeroext i8 @_bin2bcd(i32 noundef %30) #14
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call20, ptr %regs, align 1
  %tm_min25 = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 1
  %32 = ptrtoint ptr %tm_min25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_min25, align 4
  %call36 = tail call zeroext i8 @_bin2bcd(i32 noundef %33) #14
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call36, ptr %4, align 1
  %tm_hour42 = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 2
  %35 = ptrtoint ptr %tm_hour42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_hour42, align 4
  %call53 = tail call zeroext i8 @_bin2bcd(i32 noundef %36) #14
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %call53, ptr %5, align 1
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %39)
  %cmp60 = icmp eq i32 %39, 15
  %tm_wday63 = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 6
  %40 = ptrtoint ptr %tm_wday63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_wday63, align 4
  br i1 %cmp60, label %if.then62, label %cond.false79

if.then62:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %shl64 = shl nuw i32 1, %41
  br label %if.end88

cond.false79:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %add68 = add i32 %41, 1
  %call82 = tail call zeroext i8 @_bin2bcd(i32 noundef %add68) #14
  %conv83 = zext i8 %call82 to i32
  br label %if.end88

if.end88:                                         ; preds = %cond.false79, %if.then62
  %storemerge.in = phi i32 [ %shl64, %if.then62 ], [ %conv83, %cond.false79 ]
  %storemerge = trunc i32 %storemerge.in to i8
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %storemerge, ptr %6, align 1
  %tm_mday89 = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 3
  %43 = ptrtoint ptr %tm_mday89 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tm_mday89, align 4
  %call100 = tail call zeroext i8 @_bin2bcd(i32 noundef %44) #14
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %call100, ptr %7, align 1
  %tm_mon106 = getelementptr inbounds %struct.rtc_time, ptr %t, i32 0, i32 4
  %46 = ptrtoint ptr %tm_mon106 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tm_mon106, align 4
  %add107 = add i32 %47, 1
  %call121 = tail call zeroext i8 @_bin2bcd(i32 noundef %add107) #14
  %48 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %call121, ptr %8, align 1
  %sub = add nsw i32 %25, -100
  %call135 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #14
  %49 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call135, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %tobool141.not.not = icmp eq i32 %26, 6
  br i1 %tobool141.not.not, label %if.then142, label %if.end88.if.end148_crit_edge

if.end88.if.end148_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.then142:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %century_enable_bit = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %3, i32 5
  %50 = ptrtoint ptr %century_enable_bit to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %century_enable_bit, align 4
  %century_reg = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %3, i32 4
  %52 = ptrtoint ptr %century_reg to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %century_reg, align 1
  %idxprom = zext i8 %53 to i32
  %arrayidx145 = getelementptr [7 x i8], ptr %regs, i32 0, i32 %idxprom
  %54 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx145, align 1
  %or291 = or i8 %55, %51
  store i8 %or291, ptr %arrayidx145, align 1
  br label %if.end148

if.end148:                                        ; preds = %if.then142, %if.end88.if.end148_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %25)
  %cmp150 = icmp ult i32 %25, 200
  %tobool10.not.not.not = xor i1 %tobool10.not.not, true
  %brmerge = select i1 %cmp150, i1 true, i1 %tobool10.not.not.not
  br i1 %brmerge, label %if.end148.if.end164_crit_edge, label %if.then155

if.end148.if.end164_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.then155:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %century_bit to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %century_bit, align 1
  %century_reg158 = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %3, i32 4
  %58 = ptrtoint ptr %century_reg158 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %century_reg158, align 1
  %idxprom159 = zext i8 %59 to i32
  %arrayidx160 = getelementptr [7 x i8], ptr %regs, i32 0, i32 %idxprom159
  %60 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx160, align 1
  %or162290 = or i8 %61, %57
  store i8 %or162290, ptr %arrayidx160, align 1
  br label %if.end164

if.end164:                                        ; preds = %if.then155, %if.end148.if.end164_crit_edge
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %1, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %63, label %if.end164.do.body182_crit_edge [
    i32 2, label %if.end164.sw.bb_crit_edge
    i32 4, label %if.end164.sw.bb_crit_edge301
    i32 6, label %sw.bb167
    i32 8, label %sw.bb170
    i32 13, label %sw.bb173
  ]

if.end164.sw.bb_crit_edge301:                     ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end164.sw.bb_crit_edge:                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end164.do.body182_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body182

sw.bb:                                            ; preds = %if.end164.sw.bb_crit_edge, %if.end164.sw.bb_crit_edge301
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 7, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %do.body182

sw.bb167:                                         ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  %regmap168 = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %regmap168 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap168, align 4
  %call.i295 = tail call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 9, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %do.body182

sw.bb170:                                         ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  %regmap171 = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %69 = ptrtoint ptr %regmap171 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap171, align 4
  %call.i296 = tail call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 11, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %do.body182

sw.bb173:                                         ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %regs, align 1
  %73 = or i8 %72, -128
  store i8 %73, ptr %regs, align 1
  %74 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %6, align 1
  %76 = or i8 %75, 8
  store i8 %76, ptr %6, align 1
  br label %do.body182

do.body182:                                       ; preds = %sw.bb173, %sw.bb170, %sw.bb167, %sw.bb, %if.end164.do.body182_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1307_set_time.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1307_set_time, %do.end199)) #10
          to label %if.then196 [label %do.end199], !srcloc !250

if.then196:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1307_set_time.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.49, ptr noundef nonnull %regs) #10
  br label %do.end199

do.end199:                                        ; preds = %if.then196, %do.body182
  %regmap200 = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %77 = ptrtoint ptr %regmap200 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap200, align 4
  %offset = getelementptr [16 x %struct.chip_desc], ptr @chips, i32 0, i32 %3, i32 3
  %79 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %offset, align 2
  %conv201 = zext i8 %80 to i32
  %call203 = call i32 @regmap_bulk_write(ptr noundef %78, i32 noundef %conv201, ptr noundef nonnull %regs, i32 noundef 7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.end209, label %do.end199.cleanup.sink.split_crit_edge

do.end199.cleanup.sink.split_crit_edge:           ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end209:                                        ; preds = %do.end199
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %82)
  %cmp211 = icmp eq i32 %82, 15
  br i1 %cmp211, label %if.then213, label %if.end209.cleanup_crit_edge

if.end209.cleanup_crit_edge:                      ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then213:                                       ; preds = %if.end209
  %83 = ptrtoint ptr %regmap200 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap200, align 4
  %call215 = call i32 @regmap_write(ptr noundef %84, i32 noundef 29, i32 noundef -3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.then213.cleanup_crit_edge, label %if.then213.cleanup.sink.split_crit_edge

if.then213.cleanup.sink.split_crit_edge:          ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then213.cleanup_crit_edge:                     ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then213.cleanup.sink.split_crit_edge, %do.end199.cleanup.sink.split_crit_edge
  %call215.sink = phi i32 [ %call203, %do.end199.cleanup.sink.split_crit_edge ], [ %call215, %if.then213.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.49, i32 noundef %call215.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then213.cleanup_crit_edge, %if.end209.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ 0, %if.then213.cleanup_crit_edge ], [ 0, %if.end209.cleanup_crit_edge ], [ %call215.sink, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1337_read_alarm(ptr noundef %dev, ptr nocapture noundef %t) #2 align 64 {
entry:
  %regs = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %regs) #10
  %2 = getelementptr inbounds [9 x i8], ptr %regs, i32 0, i32 1
  %3 = getelementptr inbounds [9 x i8], ptr %regs, i32 0, i32 2
  %4 = getelementptr inbounds [9 x i8], ptr %regs, i32 0, i32 3
  %5 = getelementptr inbounds [9 x i8], ptr %regs, i32 0, i32 4
  %6 = getelementptr inbounds [9 x i8], ptr %regs, i32 0, i32 7
  %7 = getelementptr inbounds [9 x i8], ptr %regs, i32 0, i32 8
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %8 = call ptr @memset(ptr %regs, i32 255, i32 9)
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 7, ptr noundef nonnull %regs, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.body2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.53, i32 noundef %call1) #13
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1337_read_alarm.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1337_read_alarm, %cond.end)) #10
          to label %if.then8 [label %cond.end], !srcloc !250

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1337_read_alarm.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, ptr noundef nonnull %regs, ptr noundef %5, ptr noundef %6) #10
  br label %cond.end

cond.end:                                         ; preds = %if.then8, %do.body2
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %regs, align 1
  %13 = and i8 %12, 127
  %call27 = call i32 @_bcd2bin(i8 noundef zeroext %13) #14
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %14 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call27, ptr %time, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %2, align 1
  %17 = and i8 %16, 127
  %call48 = call i32 @_bcd2bin(i8 noundef zeroext %17) #14
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call48, ptr %tm_min, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 1
  %21 = and i8 %20, 63
  %call72 = call i32 @_bcd2bin(i8 noundef zeroext %21) #14
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call72, ptr %tm_hour, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %4, align 1
  %25 = and i8 %24, 63
  %call96 = call i32 @_bcd2bin(i8 noundef zeroext %25) #14
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call96, ptr %tm_mday, align 4
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %6, align 1
  %29 = and i8 %28, 1
  %30 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %t, align 4
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %7, align 1
  %33 = and i8 %32, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 1
  %34 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %pending, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1337_read_alarm.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1337_read_alarm, %cleanup)) #10
          to label %if.then132 [label %cleanup], !srcloc !250

if.then132:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %time, align 4
  %37 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tm_min, align 4
  %39 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm_hour, align 4
  %41 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_mday, align 4
  %43 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %t, align 4
  %conv142 = zext i8 %44 to i32
  %45 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pending, align 1
  %conv144 = zext i8 %46 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1337_read_alarm.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %conv142, i32 noundef %conv144) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then132, %cond.end, %do.end
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %regs) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1337_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  %regs = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %regs) #10
  %2 = getelementptr inbounds [9 x i8], ptr %regs, i32 0, i32 1
  %3 = getelementptr inbounds [9 x i8], ptr %regs, i32 0, i32 2
  %4 = getelementptr inbounds [9 x i8], ptr %regs, i32 0, i32 3
  %5 = getelementptr inbounds [9 x i8], ptr %regs, i32 0, i32 4
  %6 = getelementptr inbounds [9 x i8], ptr %regs, i32 0, i32 5
  %7 = getelementptr inbounds [9 x i8], ptr %regs, i32 0, i32 6
  %8 = getelementptr inbounds [9 x i8], ptr %regs, i32 0, i32 7
  %9 = getelementptr inbounds [9 x i8], ptr %regs, i32 0, i32 8
  %10 = call ptr @memset(ptr %regs, i32 255, i32 9)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1337_set_alarm.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1337_set_alarm, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %11 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %time, align 4
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_mday, align 4
  %19 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %t, align 4
  %conv = zext i8 %20 to i32
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 1
  %21 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pending, align 1
  %conv8 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1337_set_alarm.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.57, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %conv, i32 noundef %conv8) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_bulk_read(ptr noundef %24, i32 noundef 7, ptr noundef nonnull %regs, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end15, label %do.end14

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.58, i32 noundef %call9) #13
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %8, align 1
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %9, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1337_set_alarm.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1337_set_alarm, %cond.end)) #10
          to label %if.then31 [label %cond.end], !srcloc !250

if.then31:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %conv34 = zext i8 %26 to i32
  %conv35 = zext i8 %28 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1337_set_alarm.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, ptr noundef nonnull %regs, ptr noundef %5, i32 noundef %conv34, i32 noundef %conv35) #10
  br label %cond.end

cond.end:                                         ; preds = %if.then31, %if.end15
  %time39 = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %29 = ptrtoint ptr %time39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %time39, align 4
  %call48 = call zeroext i8 @_bin2bcd(i32 noundef %30) #14
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call48, ptr %regs, align 1
  %tm_min53 = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %tm_min53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_min53, align 4
  %call67 = call zeroext i8 @_bin2bcd(i32 noundef %33) #14
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call67, ptr %2, align 1
  %tm_hour74 = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %tm_hour74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_hour74, align 4
  %call88 = call zeroext i8 @_bin2bcd(i32 noundef %36) #14
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %call88, ptr %3, align 1
  %tm_mday95 = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %tm_mday95 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_mday95, align 4
  %call109 = call zeroext i8 @_bin2bcd(i32 noundef %39) #14
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %call109, ptr %4, align 1
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %5, align 1
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %6, align 1
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %7, align 1
  %44 = and i8 %26, -4
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %8, align 1
  %46 = and i8 %28, -4
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %9, align 1
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call127 = call i32 @regmap_bulk_write(ptr noundef %49, i32 noundef 7, ptr noundef nonnull %regs, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end133, label %do.end132

do.end132:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62) #13
  br label %cleanup

if.end133:                                        ; preds = %cond.end
  %50 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool135.not = icmp eq i8 %51, 0
  br i1 %tobool135.not, label %if.end133.cleanup_crit_edge, label %do.body137

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body137:                                       ; preds = %if.end133
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1337_set_alarm.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1337_set_alarm, %do.end154)) #10
          to label %if.then151 [label %do.end154], !srcloc !250

if.then151:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1337_set_alarm.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.64) #10
  br label %do.end154

do.end154:                                        ; preds = %if.then151, %do.body137
  %52 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %8, align 1
  %54 = or i8 %53, 1
  store i8 %54, ptr %8, align 1
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %conv160 = zext i8 %54 to i32
  %call161 = call i32 @regmap_write(ptr noundef %56, i32 noundef 14, i32 noundef %conv160) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end154, %if.end133.cleanup_crit_edge, %do.end132, %do.end14
  %retval.0 = phi i32 [ %call9, %do.end14 ], [ %call127, %do.end132 ], [ 0, %do.end154 ], [ 0, %if.end133.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %regs) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1307_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp ne i32 %enabled, 0
  %cond = zext i1 %tobool.not to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 14, i32 noundef 1, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41txx_rtc_read_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %offset) #2 align 64 {
entry:
  %ctrl_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_reg) #10
  %2 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ctrl_reg, align 4, !annotation !249
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 7, ptr noundef nonnull %ctrl_reg) #10
  %5 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctrl_reg, align 4
  %conv = and i32 %6, 31
  %and2 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %storemerge.v = select i1 %tobool.not, i32 -2034, i32 4068
  %storemerge = mul nsw i32 %storemerge.v, %conv
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %offset, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_reg) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m41txx_rtc_set_offset(ptr nocapture noundef readonly %dev, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = add i32 %offset, -126109
  call void @__sanitizer_cov_trace_const_cmp4(i32 -189163, i32 %2)
  %3 = icmp ult i32 %2, -189163
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset)
  %cmp2 = icmp sgt i32 %offset, -1
  br i1 %cmp2, label %if.then3, label %cond.end38

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp4.not = icmp eq i32 %offset, 0
  %add = add nuw nsw i32 %offset, 2034
  %div962 = udiv i32 %add, 4068
  %phi.bo = or i32 %div962, 32
  %cond = select i1 %cmp4.not, i32 32, i32 %phi.bo
  br label %if.end40

cond.end38:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = trunc i32 %offset to i16
  %div3363.lhs.trunc = sub i16 1017, %4
  %div336364 = udiv i16 %div3363.lhs.trunc, 2034
  %div3363.zext = zext i16 %div336364 to i32
  br label %if.end40

if.end40:                                         ; preds = %cond.end38, %if.then3
  %ctrl_reg.0 = phi i32 [ %cond, %if.then3 ], [ %div3363.zext, %cond.end38 ]
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 7, i32 noundef 63, i32 noundef %ctrl_reg.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end40 ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp794xx_read_alarm(ptr noundef %dev, ptr nocapture noundef %t) #2 align 64 {
entry:
  %regs = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %regs) #10
  %2 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 6
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %3 = call ptr @memset(ptr %regs, i32 255, i32 10)
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef 7, ptr noundef nonnull %regs, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 8
  %7 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 7
  %8 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 5
  %9 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 4
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %regs, align 1
  %12 = lshr i8 %11, 4
  %.lobit = and i8 %12, 1
  %13 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.lobit, ptr %t, align 4
  %14 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %17 = and i8 %16, 127
  %call20 = call i32 @_bcd2bin(i8 noundef zeroext %17) #14
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %18 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call20, ptr %time, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %9, align 1
  %21 = and i8 %20, 127
  %call41 = call i32 @_bcd2bin(i8 noundef zeroext %21) #14
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call41, ptr %tm_min, align 4
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %8, align 1
  %25 = and i8 %24, 63
  %call65 = call i32 @_bcd2bin(i8 noundef zeroext %25) #14
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call65, ptr %tm_hour, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %2, align 1
  %29 = and i8 %28, 7
  %call89 = call i32 @_bcd2bin(i8 noundef zeroext %29) #14
  %sub = add i32 %call89, -1
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 6
  %30 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %tm_wday, align 4
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %7, align 1
  %33 = and i8 %32, 63
  %call113 = call i32 @_bcd2bin(i8 noundef zeroext %33) #14
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call113, ptr %tm_mday, align 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %6, align 1
  %37 = and i8 %36, 31
  %call137 = call i32 @_bcd2bin(i8 noundef zeroext %37) #14
  %sub140 = add i32 %call137, -1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub140, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 5
  %39 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %tm_year, align 4
  %tm_yday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 7
  %40 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %tm_yday, align 4
  %tm_isdst = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 8
  %41 = ptrtoint ptr %tm_isdst to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %tm_isdst, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp794xx_read_alarm.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp794xx_read_alarm, %cleanup)) #10
          to label %if.then154 [label %cleanup], !srcloc !250

if.then154:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %time, align 4
  %44 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tm_min, align 4
  %46 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tm_hour, align 4
  %48 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tm_wday, align 4
  %50 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tm_mday, align 4
  %52 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tm_mon, align 4
  %54 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %t, align 4
  %conv168 = zext i8 %55 to i32
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %2, align 1
  %conv170 = zext i8 %57 to i32
  %and171.lobit = lshr i32 %conv170, 7
  %and179 = lshr i32 %conv170, 3
  %and179.lobit = and i32 %and179, 1
  %and187 = lshr i32 %conv170, 4
  %shr188 = and i32 %and187, 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp794xx_read_alarm.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.65, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %conv168, i32 noundef %and171.lobit, i32 noundef %and179.lobit, i32 noundef %shr188) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then154, %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %regs) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp794xx_set_alarm(ptr noundef %dev, ptr noundef %t) #2 align 64 {
entry:
  %remainder.i11.i = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  %tm_now.i = alloca %struct.rtc_time, align 4
  %regs = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %regs) #10
  %2 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 3
  %3 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 4
  %4 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 5
  %5 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 6
  %6 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 7
  %7 = getelementptr inbounds [10 x i8], ptr %regs, i32 0, i32 8
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %8 = call ptr @memset(ptr %regs, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm_now.i) #10
  %9 = call ptr @memset(ptr %tm_now.i, i32 255, i32 36)
  %call.i = call i32 @ds1307_get_time(ptr noundef %dev, ptr noundef nonnull %tm_now.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mcp794xx_alm_weekday.exit_crit_edge

entry.mcp794xx_alm_weekday.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mcp794xx_alm_weekday.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call i64 @rtc_tm_to_time64(ptr noundef nonnull %tm_now.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #10
  %10 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !249
  %call.i.i = call i64 @div_s64_rem(i64 noundef %call1.i, i32 noundef 86400, ptr noundef nonnull %remainder.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #10
  %conv.i = trunc i64 %call.i.i to i32
  %call3.i = call i64 @rtc_tm_to_time64(ptr noundef %time) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i11.i) #10
  %11 = ptrtoint ptr %remainder.i11.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %remainder.i11.i, align 4, !annotation !249
  %call.i12.i = call i64 @div_s64_rem(i64 noundef %call3.i, i32 noundef 86400, ptr noundef nonnull %remainder.i11.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i11.i) #10
  %conv5.i = trunc i64 %call.i12.i to i32
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %tm_now.i, i32 0, i32 6
  %12 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_wday.i, align 4
  %add.i = sub i32 %conv5.i, %conv.i
  %sub.i = add i32 %add.i, %13
  %rem.i = srem i32 %sub.i, 7
  %add6.i = add nsw i32 %rem.i, 1
  br label %mcp794xx_alm_weekday.exit

mcp794xx_alm_weekday.exit:                        ; preds = %if.end.i, %entry.mcp794xx_alm_weekday.exit_crit_edge
  %retval.0.i190 = phi i32 [ %add6.i, %if.end.i ], [ %call.i, %entry.mcp794xx_alm_weekday.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm_now.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i190)
  %cmp = icmp slt i32 %retval.0.i190, 0
  br i1 %cmp, label %mcp794xx_alm_weekday.exit.cleanup_crit_edge, label %do.body

mcp794xx_alm_weekday.exit.cleanup_crit_edge:      ; preds = %mcp794xx_alm_weekday.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %mcp794xx_alm_weekday.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcp794xx_set_alarm.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcp794xx_set_alarm, %do.end)) #10
          to label %if.then6 [label %do.end], !srcloc !250

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %time, align 4
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_hour, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_wday, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_mon, align 4
  %26 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %t, align 4
  %conv = zext i8 %27 to i32
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 1
  %28 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pending, align 1
  %conv13 = zext i8 %29 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcp794xx_set_alarm.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %conv, i32 noundef %conv13) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_bulk_read(ptr noundef %31, i32 noundef 7, ptr noundef nonnull %regs, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cond.end, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end:                                         ; preds = %do.end
  %32 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %time, align 4
  %call28 = call zeroext i8 @_bin2bcd(i32 noundef %33) #14
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call28, ptr %2, align 1
  %tm_min32 = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %tm_min32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_min32, align 4
  %call46 = call zeroext i8 @_bin2bcd(i32 noundef %36) #14
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %call46, ptr %3, align 1
  %tm_hour53 = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %tm_hour53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_hour53, align 4
  %call67 = call zeroext i8 @_bin2bcd(i32 noundef %39) #14
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %call67, ptr %4, align 1
  %conv73 = trunc i32 %retval.0.i190 to i8
  %tm_mday76 = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %41 = ptrtoint ptr %tm_mday76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_mday76, align 4
  %call90 = call zeroext i8 @_bin2bcd(i32 noundef %42) #14
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %call90, ptr %6, align 1
  %tm_mon97 = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %tm_mon97 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tm_mon97, align 4
  %add98 = add i32 %45, 1
  %call115 = call zeroext i8 @_bin2bcd(i32 noundef %add98) #14
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %call115, ptr %7, align 1
  %47 = and i8 %conv73, -121
  %48 = or i8 %47, 112
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %5, align 1
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %regs, align 1
  %52 = and i8 %51, -17
  store i8 %52, ptr %regs, align 1
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call133 = call i32 @regmap_bulk_write(ptr noundef %54, i32 noundef 7, ptr noundef nonnull %regs, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end136:                                        ; preds = %cond.end
  %55 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool138.not = icmp eq i8 %56, 0
  br i1 %tobool138.not, label %if.end136.cleanup_crit_edge, label %if.end140

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end140:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %regs, align 1
  %59 = or i8 %58, 16
  store i8 %59, ptr %regs, align 1
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %conv147 = zext i8 %59 to i32
  %call148 = call i32 @regmap_write(ptr noundef %61, i32 noundef 7, i32 noundef %conv147) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end140, %if.end136.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %do.end.cleanup_crit_edge, %mcp794xx_alm_weekday.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call148, %if.end140 ], [ %retval.0.i190, %mcp794xx_alm_weekday.exit.cleanup_crit_edge ], [ %call15, %do.end.cleanup_crit_edge ], [ %call133, %cond.end.cleanup_crit_edge ], [ 0, %if.end136.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %regs) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp794xx_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %cond = select i1 %tobool.not, i32 0, i32 16
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 7, i32 noundef 16, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8130_read_alarm(ptr noundef %dev, ptr nocapture noundef %t) #2 align 64 {
entry:
  %ald = alloca [3 x i8], align 1
  %ctl = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ald) #10
  %2 = ptrtoint ptr %ald to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ald, align 1, !annotation !249
  %3 = getelementptr inbounds [3 x i8], ptr %ald, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !249
  %5 = getelementptr inbounds [3 x i8], ptr %ald, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !249
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ctl) #10
  %7 = ptrtoint ptr %ctl to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %ctl, align 1, !annotation !249
  %8 = getelementptr inbounds [3 x i8], ptr %ctl, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !249
  %10 = getelementptr inbounds [3 x i8], ptr %ctl, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !249
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef 23, ptr noundef nonnull %ald, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef 28, ptr noundef nonnull %ctl, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %10, align 1
  %18 = lshr i8 %17, 3
  %.lobit = and i8 %18, 1
  %19 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.lobit, ptr %t, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %8, align 1
  %22 = lshr i8 %21, 3
  %.lobit139 = and i8 %22, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 1
  %23 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.lobit139, ptr %pending, align 1
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %24 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %time, align 4
  %25 = ptrtoint ptr %ald to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ald, align 1
  %27 = and i8 %26, 127
  %call34 = call i32 @_bcd2bin(i8 noundef zeroext %27) #14
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call34, ptr %tm_min, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %3, align 1
  %31 = and i8 %30, 127
  %call56 = call i32 @_bcd2bin(i8 noundef zeroext %31) #14
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call56, ptr %tm_hour, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 6
  %33 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %tm_wday, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %5, align 1
  %36 = and i8 %35, 127
  %call81 = call i32 @_bcd2bin(i8 noundef zeroext %36) #14
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call81, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %tm_mon, align 4
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 5
  %39 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %tm_year, align 4
  %tm_yday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 7
  %40 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %tm_yday, align 4
  %tm_isdst = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 8
  %41 = ptrtoint ptr %tm_isdst to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %tm_isdst, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx8130_read_alarm.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx8130_read_alarm, %cleanup)) #10
          to label %if.then98 [label %cleanup], !srcloc !250

if.then98:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %time, align 4
  %44 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tm_min, align 4
  %46 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tm_hour, align 4
  %48 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tm_wday, align 4
  %50 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tm_mday, align 4
  %52 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tm_mon, align 4
  %54 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %t, align 4
  %conv112 = zext i8 %55 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx8130_read_alarm.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %conv112) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.then98 ], [ 0, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ctl) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ald) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8130_set_alarm(ptr noundef %dev, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  %ald = alloca [3 x i8], align 1
  %ctl = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ald) #10
  %2 = getelementptr inbounds [3 x i8], ptr %ald, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %ald, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %ctl) #10
  %4 = ptrtoint ptr %ctl to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ctl, align 1, !annotation !249
  %5 = getelementptr inbounds [3 x i8], ptr %ctl, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !249
  %7 = getelementptr inbounds [3 x i8], ptr %ctl, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !249
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx8130_set_alarm.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx8130_set_alarm, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !250

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2
  %9 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %time, align 4
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_hour, align 4
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 6
  %15 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_wday, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mon, align 4
  %21 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %t, align 4
  %conv = zext i8 %22 to i32
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 1
  %23 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pending, align 1
  %conv10 = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx8130_set_alarm.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.71, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %conv, i32 noundef %conv10) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call11 = call i32 @regmap_bulk_read(ptr noundef %26, i32 noundef 28, ptr noundef nonnull %ctl, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end14

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %27 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ctl, align 1
  %29 = and i8 %28, 8
  store i8 %29, ptr %ctl, align 1
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %5, align 1
  %32 = and i8 %31, -9
  store i8 %32, ptr %5, align 1
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %7, align 1
  %35 = and i8 %34, -9
  store i8 %35, ptr %7, align 1
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call27 = call i32 @regmap_bulk_write(ptr noundef %37, i32 noundef 28, ptr noundef nonnull %ctl, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end14.cleanup_crit_edge, label %cond.end

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end:                                         ; preds = %if.end14
  %tm_min33 = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %tm_min33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_min33, align 4
  %call41 = call zeroext i8 @_bin2bcd(i32 noundef %39) #14
  %40 = ptrtoint ptr %ald to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %call41, ptr %ald, align 1
  %tm_hour46 = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %tm_hour46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_hour46, align 4
  %call60 = call zeroext i8 @_bin2bcd(i32 noundef %42) #14
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %call60, ptr %2, align 1
  %tm_mday67 = getelementptr inbounds %struct.rtc_wkalrm, ptr %t, i32 0, i32 2, i32 3
  %44 = ptrtoint ptr %tm_mday67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tm_mday67, align 4
  %call81 = call zeroext i8 @_bin2bcd(i32 noundef %45) #14
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %call81, ptr %3, align 1
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call89 = call i32 @regmap_bulk_write(ptr noundef %48, i32 noundef 23, ptr noundef nonnull %ald, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %cond.end.cleanup_crit_edge, label %if.end93

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end93:                                         ; preds = %cond.end
  %49 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool95.not = icmp eq i8 %50, 0
  br i1 %tobool95.not, label %if.end93.cleanup_crit_edge, label %if.end97

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end97:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %7, align 1
  %53 = or i8 %52, 8
  store i8 %53, ptr %7, align 1
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %conv103 = zext i8 %53 to i32
  %call104 = call i32 @regmap_write(ptr noundef %55, i32 noundef 30, i32 noundef %conv103) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.end93.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call104, %if.end97 ], [ %call11, %do.end.cleanup_crit_edge ], [ %call27, %if.end14.cleanup_crit_edge ], [ %call89, %cond.end.cleanup_crit_edge ], [ 0, %if.end93.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ctl) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %ald) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx8130_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !249
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 30, ptr noundef nonnull %reg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and = and i32 %6, -9
  %masksel = select i1 %tobool.not, i32 0, i32 8
  %storemerge = or i32 %and, %masksel
  store i32 %storemerge, ptr %reg, align 4
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_write(ptr noundef %8, i32 noundef 30, i32 noundef %storemerge) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @frequency_test_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %ctrl_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_reg) #10
  %4 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ctrl_reg, align 4, !annotation !249
  %regmap = getelementptr inbounds %struct.ds1307, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 7, ptr noundef nonnull %ctrl_reg) #10
  %7 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctrl_reg, align 4
  %and = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.79, ptr @.str.78
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull %cond) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_reg) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @frequency_test_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %freq_test_en = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %freq_test_en) #10
  %4 = ptrtoint ptr %freq_test_en to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %freq_test_en, align 1, !annotation !249
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %freq_test_en) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap = getelementptr inbounds %struct.ds1307, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %7 = ptrtoint ptr %freq_test_en to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %freq_test_en, align 1, !range !252
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool2.not, i32 0, i32 64
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 7, i32 noundef 64, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %freq_test_en) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3231_hwmon_show_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %temp_buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp_buf.i) #10
  %2 = ptrtoint ptr %temp_buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %temp_buf.i, align 1, !annotation !249
  %3 = getelementptr inbounds [2 x i8], ptr %temp_buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !249
  %regmap.i = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef 17, ptr noundef nonnull %temp_buf.i, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end, label %ds3231_hwmon_read_temp.exit

ds3231_hwmon_read_temp.exit:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp_buf.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %temp_buf.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %temp_buf.i, align 1
  %conv.i = zext i8 %8 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 1
  %conv3.i = zext i8 %10 to i16
  %or.i = or i16 %shl.i, %conv3.i
  %11 = ashr i16 %or.i, 6
  %conv7.i = sext i16 %11 to i32
  %mul.i = mul nsw i32 %conv7.i, 250
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp_buf.i) #10
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.85, i32 noundef %mul.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ds3231_hwmon_read_temp.exit
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call1.i, %ds3231_hwmon_read_temp.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3231_clk_sqw_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc.i = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc.i, align 4
  %ops_lock.i = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock.i, i32 noundef 0) #10
  %regmap.i = getelementptr i8, ptr %hw, i32 -12
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 14, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call void @mutex_unlock(ptr noundef %ops_lock.i) #10
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds3231_clk_sqw_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc.i = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc.i, align 4
  %ops_lock.i = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock.i, i32 noundef 0) #10
  %regmap.i = getelementptr i8, ptr %hw, i32 -12
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 14, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call void @mutex_unlock(ptr noundef %ops_lock.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3231_clk_sqw_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %control = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control) #10
  %0 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %control, align 4, !annotation !249
  %regmap = getelementptr i8, ptr %hw, i32 -12
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 14, ptr noundef nonnull %control) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %control, align 4
  %and = lshr i32 %4, 2
  %and.lobit = and i32 %and, 1
  %5 = xor i32 %and.lobit, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3231_clk_sqw_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %control = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control) #10
  %0 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %control, align 4, !annotation !249
  %regmap = getelementptr i8, ptr %hw, i32 -12
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 14, ptr noundef nonnull %control) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %control, align 4
  %and = lshr i32 %4, 3
  %5 = and i32 %and, 3
  %arrayidx = getelementptr [4 x i32], ptr @ds3231_clk_sqw_rates, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control) #10
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3231_clk_sqw_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %prate) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %rate)
  %cmp1.not = icmp ult i32 %rate, 8192
  br i1 %cmp1.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %rate)
  %cmp1.not.1 = icmp ult i32 %rate, 4096
  br i1 %cmp1.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %rate)
  %cmp1.not.2 = icmp ult i32 %rate, 1024
  br i1 %cmp1.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp1.not.3 = icmp ne i32 %rate, 0
  %spec.select = zext i1 %cmp1.not.3 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond.2, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8192, %entry.cleanup_crit_edge ], [ 4096, %for.cond.cleanup_crit_edge ], [ 1024, %for.cond.1.cleanup_crit_edge ], [ %spec.select, %for.cond.2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3231_clk_sqw_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %rate, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end4_crit_edge
    i32 1024, label %if.end4.fold.split
    i32 4096, label %if.end4.fold.split26
    i32 8192, label %if.end4.fold.split27
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %if.end4.fold.split27, %if.end4.fold.split26, %if.end4.fold.split, %entry.if.end4_crit_edge
  %rate_sel.024.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 8, %if.end4.fold.split ], [ 16, %if.end4.fold.split26 ], [ 24, %if.end4.fold.split27 ]
  %rtc.i = getelementptr i8, ptr %hw, i32 -4
  %1 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rtc.i, align 4
  %ops_lock.i = getelementptr inbounds %struct.rtc_device, ptr %2, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock.i, i32 noundef 0) #10
  %regmap.i = getelementptr i8, ptr %hw, i32 -12
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 14, i32 noundef 24, i32 noundef %rate_sel.024.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call void @mutex_unlock(ptr noundef %ops_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3231_clk_32khz_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc.i = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc.i, align 4
  %ops_lock.i = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock.i, i32 noundef 0) #10
  %regmap.i = getelementptr i8, ptr %hw, i32 -24
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 15, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call void @mutex_unlock(ptr noundef %ops_lock.i) #10
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds3231_clk_32khz_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rtc.i = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %rtc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtc.i, align 4
  %ops_lock.i = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock.i, i32 noundef 0) #10
  %regmap.i = getelementptr i8, ptr %hw, i32 -24
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call void @mutex_unlock(ptr noundef %ops_lock.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds3231_clk_32khz_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !249
  %regmap = getelementptr i8, ptr %hw, i32 -24
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 15, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = lshr i32 %4, 3
  %and.lobit = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.lobit, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ds3231_clk_32khz_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 32768
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1388_wdt_start(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  %regs = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regs) #10
  %2 = getelementptr inbounds [2 x i8], ptr %regs, i32 0, i32 1
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 11, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 12, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool4.not = icmp eq i32 %call.i35, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %regs, align 1
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout, align 4
  %call10 = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #14
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call10, ptr %2, align 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_bulk_write(ptr noundef %12, i32 noundef 8, ptr noundef nonnull %regs, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i36 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 12, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i36, %if.end18 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i35, %if.end.cleanup_crit_edge ], [ %call15, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regs) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1388_wdt_stop(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1388_wdt_ping(ptr nocapture noundef readonly %wdt_dev) #2 align 64 {
entry:
  %regs = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regs) #10
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %regs, align 1, !annotation !249
  %3 = getelementptr inbounds [2 x i8], ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !249
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef 8, ptr noundef nonnull %regs, i32 noundef 2) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regs) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1388_wdt_set_timeout(ptr nocapture noundef %wdt_dev, i32 noundef %val) #2 align 64 {
entry:
  %regs = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regs) #10
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt_dev, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %val, ptr %timeout, align 4
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %regs, align 1
  %call5 = tail call zeroext i8 @_bin2bcd(i32 noundef %val) #14
  %4 = getelementptr inbounds [2 x i8], ptr %regs, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call5, ptr %4, align 1
  %regmap = getelementptr inbounds %struct.ds1307, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef 8, ptr noundef nonnull %regs, i32 noundef 2) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regs) #10
  ret i32 %call9
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !71, !73, !75, !77, !78, !79, !80, !82, !84, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !112, !114, !115, !117, !118, !120, !121, !122, !123, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !150, !152, !153, !154, !156, !157, !158, !160, !162, !163, !164, !166, !167, !169, !171, !173, !174, !175, !176, !178, !180, !182, !184, !186, !187, !189, !191, !193, !194, !195, !196, !198, !199, !200, !201, !203, !204, !206, !208, !209, !211, !213, !214, !215, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @__initcall__kmod_rtc_ds1307__308_2018_ds1307_driver_init6, !1, !"__initcall__kmod_rtc_ds1307__308_2018_ds1307_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ds1307.c", i32 2018, i32 1}
!2 = !{ptr @__exitcall_ds1307_driver_exit, !1, !"__exitcall_ds1307_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description309, !4, !"__UNIQUE_ID_description309", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-ds1307.c", i32 2020, i32 1}
!5 = !{ptr @__UNIQUE_ID_file310, !6, !"__UNIQUE_ID_file310", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-ds1307.c", i32 2021, i32 1}
!7 = !{ptr @__UNIQUE_ID_license311, !6, !"__UNIQUE_ID_license311", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-ds1307.c", i32 2011, i32 11}
!10 = !{ptr @ds1307_driver, !11, !"ds1307_driver", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-ds1307.c", i32 2009, i32 26}
!12 = !{ptr @ds1307_probe._key, !13, !"_key", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1737, i32 19}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1739, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ds1307_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ds1307_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1764, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ds1307_probe.__UNIQUE_ID_ddebug301, !24, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1779, i32 61}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1791, i32 4}
!31 = !{ptr @ds1307_probe.__UNIQUE_ID_ddebug302, !30, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1817, i32 4}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ds1307_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ds1307_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @ds1307_probe.__UNIQUE_ID_ddebug303, !38, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1825, i32 4}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1835, i32 4}
!41 = !{ptr @ds1307_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ds1307_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1844, i32 4}
!45 = !{ptr @ds1307_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ds1307_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1852, i32 4}
!49 = !{ptr @ds1307_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ds1307_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ds1307_probe.__UNIQUE_ID_ddebug304, !52, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1868, i32 5}
!53 = !{ptr @ds1307_probe.__UNIQUE_ID_ddebug305, !54, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1886, i32 4}
!55 = !{ptr @ds1307_probe.__UNIQUE_ID_ddebug306, !56, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1904, i32 3}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1955, i32 3}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ds1307_probe._entry.24, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ds1307_probe._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1970, i32 4}
!64 = !{ptr @ds1307_probe._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ds1307_probe._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1972, i32 4}
!68 = !{ptr @ds1307_probe.__UNIQUE_ID_ddebug307, !67, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1987, i32 12}
!71 = !{ptr @regmap_config, !72, !"regmap_config", i1 false, i1 false}
!72 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1710, i32 35}
!73 = !{ptr @chips, !74, !"chips", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-ds1307.c", i32 964, i32 31}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-ds1307.c", i32 537, i32 3}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @do_trickle_setup_ds1339._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @do_trickle_setup_ds1339._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @m41txx_rtc_ops, !81, !"m41txx_rtc_ops", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-ds1307.c", i32 954, i32 35}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-ds1307.c", i32 219, i32 4}
!84 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ds1307_get_time._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @ds1307_get_time._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__print_once", i1 false, i1 false}
!89 = !{!"../drivers/rtc/rtc-ds1307.c", i32 224, i32 4}
!90 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ds1307_get_time._entry.38, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ds1307_get_time._entry_ptr.40, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @ds1307_get_time._entry.41, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/rtc/rtc-ds1307.c", i32 233, i32 3}
!95 = !{ptr @ds1307_get_time._entry_ptr.42, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/rtc/rtc-ds1307.c", i32 237, i32 2}
!98 = !{ptr @ds1307_get_time.__UNIQUE_ID_ddebug288, !97, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!99 = distinct !{null, !100, !"__print_once", i1 false, i1 false}
!100 = !{!"../drivers/rtc/rtc-ds1307.c", i32 242, i32 3}
!101 = !{ptr @ds1307_get_time._entry.45, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ds1307_get_time._entry_ptr.46, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/rtc/rtc-ds1307.c", i32 310, i32 2}
!105 = !{ptr @ds1307_get_time.__UNIQUE_ID_ddebug289, !104, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/rtc/rtc-ds1307.c", i32 327, i32 2}
!108 = !{ptr @ds1307_set_time.__UNIQUE_ID_ddebug290, !107, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!109 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ds1307_set_time.__UNIQUE_ID_ddebug291, !111, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!111 = !{!"../drivers/rtc/rtc-ds1307.c", i32 391, i32 2}
!112 = !{ptr @ds1307_set_time._entry, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/rtc/rtc-ds1307.c", i32 396, i32 3}
!114 = !{ptr @ds1307_set_time._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @ds1307_set_time._entry.50, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/rtc/rtc-ds1307.c", i32 405, i32 4}
!117 = !{ptr @ds1307_set_time._entry_ptr.51, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/rtc/rtc-ds1307.c", i32 423, i32 3}
!120 = !{ptr @ds1337_read_alarm._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ds1337_read_alarm._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/rtc/rtc-ds1307.c", i32 427, i32 2}
!125 = !{ptr @ds1337_read_alarm.__UNIQUE_ID_ddebug292, !124, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/rtc/rtc-ds1307.c", i32 443, i32 2}
!128 = !{ptr @ds1337_read_alarm.__UNIQUE_ID_ddebug293, !127, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/rtc/rtc-ds1307.c", i32 459, i32 2}
!131 = !{ptr @ds1337_set_alarm.__UNIQUE_ID_ddebug294, !130, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!132 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ds1337_set_alarm._entry, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/rtc/rtc-ds1307.c", i32 469, i32 3}
!135 = !{ptr @ds1337_set_alarm._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/rtc/rtc-ds1307.c", i32 475, i32 2}
!139 = !{ptr @ds1337_set_alarm.__UNIQUE_ID_ddebug295, !138, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!140 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/rtc/rtc-ds1307.c", i32 496, i32 3}
!143 = !{ptr @ds1337_set_alarm._entry.61, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @ds1337_set_alarm._entry_ptr.63, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.64, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/rtc/rtc-ds1307.c", i32 502, i32 3}
!147 = !{ptr @ds1337_set_alarm.__UNIQUE_ID_ddebug296, !146, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!148 = !{ptr @mcp794xx_rtc_ops, !149, !"mcp794xx_rtc_ops", i1 false, i1 false}
!149 = !{!"../drivers/rtc/rtc-ds1307.c", i32 946, i32 35}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/rtc/rtc-ds1307.c", i32 744, i32 2}
!152 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @mcp794xx_read_alarm.__UNIQUE_ID_ddebug299, !151, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/rtc/rtc-ds1307.c", i32 784, i32 2}
!156 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @mcp794xx_set_alarm.__UNIQUE_ID_ddebug300, !155, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!158 = !{ptr @rx8130_rtc_ops, !159, !"rx8130_rtc_ops", i1 false, i1 false}
!159 = !{!"../drivers/rtc/rtc-ds1307.c", i32 938, i32 35}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/rtc/rtc-ds1307.c", i32 617, i32 2}
!162 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @rx8130_read_alarm.__UNIQUE_ID_ddebug297, !161, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/rtc/rtc-ds1307.c", i32 630, i32 2}
!166 = !{ptr @rx8130_set_alarm.__UNIQUE_ID_ddebug298, !165, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!167 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1288, i32 44}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1295, i32 45}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1305, i32 4}
!173 = !{ptr @.str.75, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @ds1307_trickle_init._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @ds1307_trickle_init._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1310, i32 11}
!178 = !{ptr @ds13xx_rtc_ops, !179, !"ds13xx_rtc_ops", i1 false, i1 false}
!179 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1184, i32 35}
!180 = !{ptr @rtc_freq_test_attr_group, !181, !"rtc_freq_test_attr_group", i1 false, i1 false}
!181 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1232, i32 37}
!182 = !{ptr @rtc_freq_test_attrs, !183, !"rtc_freq_test_attrs", i1 false, i1 false}
!183 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1227, i32 26}
!184 = !{ptr @.str.77, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1225, i32 8}
!186 = !{ptr @dev_attr_frequency_test, !185, !"dev_attr_frequency_test", i1 false, i1 false}
!187 = !{ptr @.str.78, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1221, i32 64}
!189 = !{ptr @.str.79, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1222, i32 4}
!191 = !{ptr @.str.80, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1202, i32 3}
!193 = !{ptr @.str.81, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @frequency_test_store._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @frequency_test_store._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.82, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1385, i32 3}
!198 = !{ptr @.str.83, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @ds1307_hwmon_register._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @ds1307_hwmon_register._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @ds3231_hwmon_groups, !202, !"ds3231_hwmon_groups", i1 false, i1 false}
!202 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1372, i32 1}
!203 = !{ptr @ds3231_hwmon_group, !202, !"ds3231_hwmon_group", i1 false, i1 false}
!204 = !{ptr @ds3231_hwmon_attrs, !205, !"ds3231_hwmon_attrs", i1 false, i1 false}
!205 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1368, i32 26}
!206 = !{ptr @.str.84, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1365, i32 8}
!208 = !{ptr @sensor_dev_attr_temp1_input, !207, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!209 = !{ptr @.str.85, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1363, i32 22}
!211 = !{ptr @.str.86, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1649, i32 3}
!213 = !{ptr @.str.87, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @ds1307_clks_register._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @ds1307_clks_register._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.88, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1611, i32 49}
!218 = !{ptr @.str.89, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1581, i32 21}
!220 = !{ptr @.str.90, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1582, i32 23}
!222 = !{ptr @ds3231_clks_names, !223, !"ds3231_clks_names", i1 false, i1 false}
!223 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1580, i32 20}
!224 = !{ptr @ds3231_clks_init, !225, !"ds3231_clks_init", i1 false, i1 false}
!225 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1585, i32 29}
!226 = !{ptr @ds3231_clk_sqw_ops, !227, !"ds3231_clk_sqw_ops", i1 false, i1 false}
!227 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1518, i32 29}
!228 = !{ptr @ds3231_clk_sqw_rates, !229, !"ds3231_clk_sqw_rates", i1 false, i1 false}
!229 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1416, i32 12}
!230 = !{ptr @ds3231_clk_32khz_ops, !231, !"ds3231_clk_32khz_ops", i1 false, i1 false}
!231 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1573, i32 29}
!232 = !{ptr @ds1388_wdt_info, !233, !"ds1388_wdt_info", i1 false, i1 false}
!233 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1663, i32 35}
!234 = !{ptr @ds1388_wdt_ops, !235, !"ds1388_wdt_ops", i1 false, i1 false}
!235 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1668, i32 34}
!236 = !{ptr @ds1307_of_match, !237, !"ds1307_of_match", i1 false, i1 false}
!237 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1071, i32 34}
!238 = !{ptr @ds1307_id, !239, !"ds1307_id", i1 false, i1 false}
!239 = !{!"../drivers/rtc/rtc-ds1307.c", i32 1048, i32 35}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{!"auto-init"}
!250 = !{i64 2149036654, i64 2149036659, i64 2149036672, i64 2149036716, i64 2149036750, i64 2149036771}
!251 = !{i32 0, i32 33}
!252 = !{i8 0, i8 2}
