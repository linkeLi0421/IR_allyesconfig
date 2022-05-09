; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-pcf85063.c_pt.bc'
source_filename = "../drivers/rtc/rtc-pcf85063.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.pcf85063_config = type { %struct.regmap_config, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.pcf85063 = type { ptr, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_pcf85063__289_680_pcf85063_driver_init6 = internal global ptr @pcf85063_driver_init, section ".initcall6.init", align 4
@pcf85063_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @pcf85063_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pcf85063_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pcf85063_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pcf85063_driver_exit = internal global ptr @pcf85063_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [60 x i8] c"rtc_pcf85063.author=S\C3\B8ren Andersen <san@rosetechnology.dk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [45 x i8] c"rtc_pcf85063.description=PCF85063 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [43 x i8] c"rtc_pcf85063.file=drivers/rtc/rtc-pcf85063\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [25 x i8] c"rtc_pcf85063.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc-pcf85063\00", [19 x i8] zeroinitializer }, align 32
@pcf85063_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcf85063\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pcf85063_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcf85063tp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pcf85063_cfg, i64 176) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pcf85063a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pcf85063_cfg, i64 352) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microcrystal,rv8263\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @pcf85063_cfg, i64 528) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@pcf85063_ids = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pcf85063\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"pcf85063tp\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"pcf85063a\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"rv8263\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcf85063_nvram\00", [17 x i8] zeroinitializer }, align 32
@__const.pcf85063_probe.nvmem_cfg = private unnamed_addr constant { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, [1 x i8], ptr, i8, [3 x i8], ptr, ptr, ptr, i32, i32, i32, ptr, i8, [3 x i8], ptr } { ptr null, ptr @.str.1, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 3, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, ptr null, i8 0, [3 x i8] zeroinitializer, ptr @pcf85063_nvmem_read, ptr @pcf85063_nvmem_write, ptr null, i32 1, i32 0, i32 0, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null }, align 4
@pcf85063_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -113, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc_pcf85063\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcf85063_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/rtc/rtc-pcf85063.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@pcf85063_cfg = internal global { [4 x %struct.pcf85063_config], [160 x i8] } { [4 x %struct.pcf85063_config] [%struct.pcf85063_config { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, i8 0 }, %struct.pcf85063_config { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 10, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, i8 0 }, %struct.pcf85063_config { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 17, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, i8 -128 }, %struct.pcf85063_config { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 17, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, i8 -64 }], [160 x i8] zeroinitializer }, align 32
@pcf85063_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtc_pcf85063:594:(&config->regmap)->lock\00", [55 x i8] zeroinitializer }, align 32
@pcf85063_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 602, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RTC chip is not present\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcf85063_probe._entry_ptr = internal global ptr @pcf85063_probe._entry, section ".printk_index", align 4
@pcf85063_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 614, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to set xtal load capacitance: %d\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pcf85063_probe._entry_ptr.13 = internal global ptr @pcf85063_probe._entry.10, section ".printk_index", align 4
@pcf85063_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr @pcf85063_ioctl, ptr @pcf85063_rtc_read_time, ptr @pcf85063_rtc_set_time, ptr @pcf85063_rtc_read_alarm, ptr @pcf85063_rtc_set_alarm, ptr null, ptr @pcf85063_rtc_alarm_irq_enable, ptr @pcf85063_read_offset, ptr @pcf85063_set_offset, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcf85063\00", [23 x i8] zeroinitializer }, align 32
@pcf85063_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 629, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to request IRQ, alarms disabled\0A\00", [56 x i8] zeroinitializer }, align 32
@pcf85063_probe._entry_ptr.17 = internal global ptr @pcf85063_probe._entry.15, section ".printk_index", align 4
@pcf85063_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 636, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable irq wake\0A\00", [37 x i8] zeroinitializer }, align 32
@pcf85063_probe._entry_ptr.20 = internal global ptr @pcf85063_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"quartz-load-femtofarads\00", [40 x i8] zeroinitializer }, align 32
@pcf85063_load_capacitance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 349, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Unknown quartz-load-femtofarads value: %d. Assuming 7000\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pcf85063_load_capacitance\00", [38 x i8] zeroinitializer }, align 32
@pcf85063_load_capacitance._entry_ptr = internal global ptr @pcf85063_load_capacitance._entry, section ".printk_index", align 4
@pcf85063_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 94, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Power loss detected, invalid time\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcf85063_rtc_read_time\00", [41 x i8] zeroinitializer }, align 32
@pcf85063_rtc_read_time._entry_ptr = internal global ptr @pcf85063_rtc_read_time._entry, section ".printk_index", align 4
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clock\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcf85063-clkout\00", [16 x i8] zeroinitializer }, align 32
@pcf85063_clkout_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @pcf85063_clkout_prepare, ptr @pcf85063_clkout_unprepare, ptr @pcf85063_clkout_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcf85063_clkout_recalc_rate, ptr @pcf85063_clkout_round_rate, ptr null, ptr null, ptr null, ptr @pcf85063_clkout_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@clkout_rates = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 1, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7000, i64 12500]
@__sancov_gen_cov_switch_values.29 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768]
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"pcf85063_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 671, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 673, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"pcf85063_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 661, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"pcf85063_ids\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 651, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 568, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 575, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"pcf85063_cfg\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 525, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 594, i32 21 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 602, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 613, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"pcf85063_rtc_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 311, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 626, i32 7 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 628, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 635, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 344, i32 28 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 348, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 94, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 486, i32 43 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 497, i32 14 }
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c"pcf85063_clkout_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 470, i32 29 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 505, i32 32 }
@___asan_gen_.138 = private unnamed_addr constant [13 x i8] c"clkout_rates\00", align 1
@___asan_gen_.139 = private constant [30 x i8] c"../drivers/rtc/rtc-pcf85063.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 369, i32 12 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_pcf85063_driver_exit, ptr @__initcall__kmod_rtc_pcf85063__289_680_pcf85063_driver_init6, ptr @pcf85063_driver_exit, ptr @pcf85063_load_capacitance._entry, ptr @pcf85063_load_capacitance._entry_ptr, ptr @pcf85063_probe._entry, ptr @pcf85063_probe._entry.10, ptr @pcf85063_probe._entry.15, ptr @pcf85063_probe._entry.18, ptr @pcf85063_probe._entry_ptr, ptr @pcf85063_probe._entry_ptr.13, ptr @pcf85063_probe._entry_ptr.17, ptr @pcf85063_probe._entry_ptr.20, ptr @pcf85063_rtc_read_time._entry, ptr @pcf85063_rtc_read_time._entry_ptr, ptr @pcf85063_driver, ptr @.str, ptr @pcf85063_of_match, ptr @pcf85063_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pcf85063_cfg, ptr @pcf85063_probe._key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @pcf85063_rtc_ops, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @pcf85063_clkout_ops, ptr @.str.28, ptr @clkout_rates], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf85063_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf85063_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf85063_ids to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf85063_cfg to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf85063_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf85063_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf85063_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf85063_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf85063_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf85063_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf85063_load_capacitance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf85063_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf85063_clkout_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkout_rates to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pcf85063_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcf85063_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @pcf85063_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_probe(ptr noundef %client) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %load.i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %nvmem_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_cfg) #9
  %1 = call ptr @memcpy(ptr %nvmem_cfg, ptr @__const.pcf85063_probe.nvmem_cfg, i32 88)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcf85063_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcf85063_probe, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcf85063_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev5, i32 noundef 20, i32 noundef 3520) #9
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %do.end.cleanup105_crit_edge, label %if.end9

do.end.cleanup105_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup105

if.end9:                                          ; preds = %do.end
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  %call14 = tail call ptr @of_device_get_match_data(ptr noundef %dev5) #9
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then12.cleanup105_crit_edge, label %if.then12.if.end21_crit_edge

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then12.cleanup105_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup105

if.else:                                          ; preds = %if.end9
  %call18 = tail call ptr @i2c_match_id(ptr noundef nonnull @pcf85063_ids, ptr noundef %client) #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call18, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  %arrayidx = getelementptr [4 x %struct.pcf85063_config], ptr @pcf85063_cfg, i32 0, i32 %5
  br i1 %cmp, label %if.else.cleanup105_crit_edge, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.else.cleanup105_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup105

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.then12.if.end21_crit_edge
  %config.1 = phi ptr [ %call14, %if.then12.if.end21_crit_edge ], [ %arrayidx, %if.else.if.end21_crit_edge ]
  %call23 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef %config.1, ptr noundef nonnull @pcf85063_probe._key, ptr noundef nonnull @.str.6) #9
  %regmap24 = getelementptr inbounds %struct.pcf85063, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap24 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call23, ptr %regmap24, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call23 to i32
  br label %cleanup105

if.end30:                                         ; preds = %if.end21
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call32 = call i32 @regmap_read(ptr noundef %call23, i32 noundef 0, ptr noundef nonnull %tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end39, label %do.end37

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.7) #12
  br label %cleanup105

if.end39:                                         ; preds = %if.end30
  %call41 = call ptr @devm_rtc_allocate_device(ptr noundef %dev5) #9
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call41, ptr %call.i, align 4
  %cmp.i159 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call41 to i32
  br label %cleanup105

if.end47:                                         ; preds = %if.end39
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %force_cap_7000 = getelementptr inbounds %struct.pcf85063_config, ptr %config.1, i32 0, i32 1
  %13 = ptrtoint ptr %force_cap_7000 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %force_cap_7000, align 4
  %14 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool50.not = icmp eq i8 %14, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %load.i) #9
  %15 = ptrtoint ptr %load.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 7000, ptr %load.i, align 4
  br i1 %tobool50.not, label %if.end.i, label %if.end47.pcf85063_load_capacitance.exit_crit_edge

if.end47.pcf85063_load_capacitance.exit_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcf85063_load_capacitance.exit

if.end.i:                                         ; preds = %if.end47
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.21, ptr noundef nonnull %load.i, i32 noundef 1, i32 noundef 0) #9
  %16 = ptrtoint ptr %load.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr.i = load i32, ptr %load.i, align 4
  %17 = zext i32 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr.i, label %do.end.i [
    i32 7000, label %if.end.i.pcf85063_load_capacitance.exit_crit_edge
    i32 12500, label %sw.bb.i
  ]

if.end.i.pcf85063_load_capacitance.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcf85063_load_capacitance.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef %.pr.i) #12
  br label %pcf85063_load_capacitance.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcf85063_load_capacitance.exit

pcf85063_load_capacitance.exit:                   ; preds = %sw.bb.i, %do.end.i, %if.end.i.pcf85063_load_capacitance.exit_crit_edge, %if.end47.pcf85063_load_capacitance.exit_crit_edge
  %reg.0.i = phi i32 [ 0, %do.end.i ], [ 1, %sw.bb.i ], [ 0, %if.end.i.pcf85063_load_capacitance.exit_crit_edge ], [ 0, %if.end47.pcf85063_load_capacitance.exit_crit_edge ]
  %20 = ptrtoint ptr %regmap24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap24, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 0, i32 noundef 1, i32 noundef %reg.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %load.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp52 = icmp slt i32 %call.i.i, 0
  br i1 %cmp52, label %do.end56, label %pcf85063_load_capacitance.exit.if.end58_crit_edge

pcf85063_load_capacitance.exit.if.end58_crit_edge: ; preds = %pcf85063_load_capacitance.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

do.end56:                                         ; preds = %pcf85063_load_capacitance.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5, ptr noundef nonnull @.str.11, i32 noundef %call.i.i) #12
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %pcf85063_load_capacitance.exit.if.end58_crit_edge
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pcf85063_rtc_ops, ptr %ops, align 8
  %25 = load ptr, ptr %call.i, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %25, i32 0, i32 22
  %26 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 946684800, ptr %range_min, align 8
  %27 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %27, i32 0, i32 23
  %28 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 4102444799, ptr %range_max, align 8
  %29 = load ptr, ptr %call.i, align 4
  %uie_unsupported = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %uie_unsupported to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %uie_unsupported, align 8
  %31 = load ptr, ptr %call.i, align 4
  %features = getelementptr inbounds %struct.rtc_device, ptr %31, i32 0, i32 21
  call void @_clear_bit(i32 noundef 0, ptr noundef %features) #9
  %32 = ptrtoint ptr %force_cap_7000 to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load64 = load i8, ptr %force_cap_7000, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load64)
  %tobool67.not = icmp sgt i8 %bf.load64, -1
  br i1 %tobool67.not, label %if.end58.if.end98_crit_edge, label %land.lhs.true

if.end58.if.end98_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

land.lhs.true:                                    ; preds = %if.end58
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp68 = icmp sgt i32 %34, 0
  br i1 %cmp68, label %if.then69, label %land.lhs.true.if.end98_crit_edge

land.lhs.true.if.end98_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then69:                                        ; preds = %land.lhs.true
  %call72 = call i32 @devm_request_threaded_irq(ptr noundef %dev5, i32 noundef %34, ptr noundef null, ptr noundef nonnull @pcf85063_rtc_handle_irq, i32 noundef 8200, ptr noundef nonnull @.str.14, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  br i1 %tobool73.not, label %if.else80, label %do.end77

do.end77:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.16) #12
  br label %if.end98

if.else80:                                        ; preds = %if.then69
  %features82 = getelementptr inbounds %struct.rtc_device, ptr %36, i32 0, i32 21
  call void @_set_bit(i32 noundef 0, ptr noundef %features82) #9
  %call85 = call i32 @device_init_wakeup(ptr noundef %dev5, i1 noundef zeroext true) #9
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 4
  %call88 = call i32 @dev_pm_set_wake_irq(ptr noundef %dev5, i32 noundef %38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.else80.if.end98_crit_edge, label %do.end93

if.else80.if.end98_crit_edge:                     ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

do.end93:                                         ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.19) #12
  br label %if.end98

if.end98:                                         ; preds = %do.end93, %if.else80.if.end98_crit_edge, %do.end77, %land.lhs.true.if.end98_crit_edge, %if.end58.if.end98_crit_edge
  %41 = ptrtoint ptr %regmap24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap24, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 21
  %43 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %priv, align 4
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %call101 = call i32 @devm_rtc_nvmem_register(ptr noundef %45, ptr noundef nonnull %nvmem_cfg) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #9
  %46 = getelementptr inbounds i8, ptr %init.i, i32 12
  %47 = call ptr @memset(ptr %46, i32 255, i32 12)
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %parent.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 27
  %52 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %of_node.i, align 8
  %call.i160 = call ptr @of_get_child_by_name(ptr noundef %53, ptr noundef nonnull @.str.26) #9
  %tobool.not.i = icmp eq ptr %call.i160, null
  br i1 %tobool.not.i, label %if.end.i162, label %if.then.i161

if.then.i161:                                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  call void @of_node_put(ptr noundef nonnull %call.i160) #9
  br label %pcf85063_clkout_register_clk.exit

if.end.i162:                                      ; preds = %if.end98
  %54 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.27, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %55 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @pcf85063_clkout_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %flags.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %57 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %58 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %num_parents.i, align 4
  %clkout_hw.i = getelementptr inbounds %struct.pcf85063, ptr %call.i, i32 0, i32 2
  %init1.i = getelementptr inbounds %struct.pcf85063, ptr %call.i, i32 0, i32 2, i32 2
  %59 = ptrtoint ptr %init1.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %init.i, ptr %init1.i, align 4
  %call3.i = call i32 @of_property_read_string(ptr noundef %53, ptr noundef nonnull @.str.28, ptr noundef nonnull %init.i) #9
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  %call7.i = call ptr @devm_clk_register(ptr noundef %61, ptr noundef %clkout_hw.i) #9
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i162.pcf85063_clkout_register_clk.exit_crit_edge, label %if.then9.i

if.end.i162.pcf85063_clkout_register_clk.exit_crit_edge: ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcf85063_clkout_register_clk.exit

if.then9.i:                                       ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i = call i32 @of_clk_add_provider(ptr noundef %53, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call7.i) #9
  br label %pcf85063_clkout_register_clk.exit

pcf85063_clkout_register_clk.exit:                ; preds = %if.then9.i, %if.end.i162.pcf85063_clkout_register_clk.exit_crit_edge, %if.then.i161
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  %call104 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %63) #9
  br label %cleanup105

cleanup105:                                       ; preds = %pcf85063_clkout_register_clk.exit, %if.then44, %do.end37, %if.then27, %if.else.cleanup105_crit_edge, %if.then12.cleanup105_crit_edge, %do.end.cleanup105_crit_edge
  %retval.1 = phi i32 [ %7, %if.then27 ], [ %call32, %do.end37 ], [ %10, %if.then44 ], [ %call104, %pcf85063_clkout_register_clk.exit ], [ -19, %if.else.cleanup105_crit_edge ], [ -12, %do.end.cleanup105_crit_edge ], [ -19, %if.then12.cleanup105_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_cfg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_nvmem_read(ptr noundef %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regmap_read(ptr noundef %priv, i32 noundef 3, ptr noundef %val) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_nvmem_write(ptr noundef %priv, i32 noundef %offset, ptr nocapture noundef readonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %val, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 @regmap_write(ptr noundef %priv, i32 noundef 3, i32 noundef %conv) #9
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_rtc_handle_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !86
  %regmap = getelementptr inbounds %struct.pcf85063, ptr %dev_id, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 1, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 4
  call void @rtc_update_irq(ptr noundef %6, i32 noundef 1, i32 noundef 160) #9
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 1, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_set_wake_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_ioctl(ptr nocapture noundef readonly %dev, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147192813, i32 %cmd)
  %cond6 = icmp eq i32 %cmd, -2147192813
  br i1 %cond6, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %regmap = getelementptr inbounds %struct.pcf85063, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = lshr i32 %6, 7
  %and.lobit = and i32 %and, 1
  store i32 %and.lobit, ptr %status, align 4
  %7 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 304) #9
  %8 = call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !88
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !89
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  %11 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %7, i32 %and.lobit, i32 -1226833921) #9, !srcloc !91
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !89
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %regs = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %regs) #9
  %2 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 1
  %3 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 2
  %4 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 3
  %5 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 4
  %6 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 5
  %7 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 6
  %regmap = getelementptr inbounds %struct.pcf85063, ptr %1, i32 0, i32 1
  %8 = call ptr @memset(ptr %regs, i32 255, i32 7)
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 4, ptr noundef nonnull %regs, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %regs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool2.not = icmp sgt i8 %12, -1
  br i1 %tobool2.not, label %cond.end, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.24) #12
  br label %cleanup

cond.end:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and8 = and i8 %12, 127
  %call21 = call i32 @_bcd2bin(i8 noundef zeroext %and8) #13
  %15 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call21, ptr %tm, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %2, align 1
  %18 = and i8 %17, 127
  %call42 = call i32 @_bcd2bin(i8 noundef zeroext %18) #13
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %19 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call42, ptr %tm_min, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 1
  %22 = and i8 %21, 63
  %call65 = call i32 @_bcd2bin(i8 noundef zeroext %22) #13
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %23 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call65, ptr %tm_hour, align 4
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %4, align 1
  %26 = and i8 %25, 63
  %call88 = call i32 @_bcd2bin(i8 noundef zeroext %26) #13
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %27 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call88, ptr %tm_mday, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %5, align 1
  %30 = and i8 %29, 7
  %and93 = zext i8 %30 to i32
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %31 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and93, ptr %tm_wday, align 4
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %6, align 1
  %34 = and i8 %33, 31
  %call114 = call i32 @_bcd2bin(i8 noundef zeroext %34) #13
  %sub = add i32 %call114, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %35 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %tm_mon, align 4
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %7, align 1
  %call129 = call i32 @_bcd2bin(i8 noundef zeroext %37) #13
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %add133 = add i32 %call129, 100
  %38 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add133, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %cond.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %regs = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %regs) #9
  %regmap = getelementptr inbounds %struct.pcf85063, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 160, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cond.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end:                                         ; preds = %entry
  %4 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 6
  %5 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 5
  %6 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 4
  %7 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 3
  %8 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 2
  %9 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 1
  %10 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm, align 4
  %call5 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #13
  %conv7 = and i8 %call5, 127
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv7, ptr %regs, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %call18 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #13
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call18, ptr %9, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %16 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_hour, align 4
  %call34 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #13
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call34, ptr %8, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %19 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mday, align 4
  %call50 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #13
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call50, ptr %7, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %22 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_wday, align 4
  %24 = trunc i32 %23 to i8
  %conv57 = and i8 %24, 7
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv57, ptr %6, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %26 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm_mon, align 4
  %add59 = add i32 %27, 1
  %call73 = tail call zeroext i8 @_bin2bcd(i32 noundef %add59) #13
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call73, ptr %5, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %29 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_year, align 4
  %sub = add i32 %30, -100
  %call92 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #13
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call92, ptr %4, align 1
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call99 = call i32 @regmap_bulk_write(ptr noundef %33, i32 noundef 4, ptr noundef nonnull %regs, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end102:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i136 = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 0, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i136, %if.end102 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call99, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alrm) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !86
  %regmap = getelementptr inbounds %struct.pcf85063, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef 11, ptr noundef nonnull %buf, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end:                                         ; preds = %entry
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 4
  %call6 = call i32 @_bcd2bin(i8 noundef zeroext %10) #13
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %11 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call6, ptr %time, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %8, align 1
  %call19 = call i32 @_bcd2bin(i8 noundef zeroext %13) #13
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call19, ptr %tm_min, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %7, align 2
  %call35 = call i32 @_bcd2bin(i8 noundef zeroext %16) #13
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call35, ptr %tm_hour, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %6, align 1
  %call51 = call i32 @_bcd2bin(i8 noundef zeroext %19) #13
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call51, ptr %tm_mday, align 4
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call56 = call i32 @regmap_read(ptr noundef %22, i32 noundef 1, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %25 = trunc i32 %24 to i8
  %26 = lshr i8 %25, 7
  %27 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %alrm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ %call1, %entry.cleanup_crit_edge ], [ %call56, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alrm) #2 align 64 {
entry:
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #9
  %2 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %6 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %time, align 4
  %call7 = tail call zeroext i8 @_bin2bcd(i32 noundef %7) #13
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %call7, ptr %buf, align 1
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tm_min, align 4
  %call24 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #13
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call24, ptr %2, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_hour, align 4
  %call44 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #13
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call44, ptr %3, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_mday, align 4
  %call64 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #13
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call64, ptr %4, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -128, ptr %5, align 1
  %regmap = getelementptr inbounds %struct.pcf85063, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 1, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call73 = call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef 11, ptr noundef nonnull %buf, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end76:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %25 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool79.not = icmp eq i8 %26, 0
  %cond80 = select i1 %tobool79.not, i32 64, i32 192
  %call.i105 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 1, i32 noundef 192, i32 noundef %cond80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i105, %if.end76 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call73, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.pcf85063, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %cond = select i1 %tobool.not, i32 0, i32 128
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1, i32 noundef 128, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_read_offset(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %offset) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !86
  %regmap = getelementptr inbounds %struct.pcf85063, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 2, ptr noundef nonnull %reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %shl.i = shl i32 %6, 25
  %shr.i = ashr exact i32 %shl.i, 25
  %and3 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %storemerge.v = select i1 %tobool.not, i32 4340, i32 4069
  %storemerge = mul nsw i32 %storemerge.v, %shr.i
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_set_offset(ptr nocapture noundef readonly %dev, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %offset, -273421
  call void @__sanitizer_cov_trace_const_cmp4(i32 -551181, i32 %0)
  %1 = icmp ult i32 %0, -551181
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %cmp4 = icmp sgt i32 %offset, 0
  %cond.in.v = select i1 %cmp4, i32 2170, i32 -2170
  %cond.in = add nsw i32 %cond.in.v, %offset
  %cond = sdiv i32 %cond.in, 4340
  %cond31.in.v = select i1 %cmp4, i32 2034, i32 -2034
  %cond31.in = add nsw i32 %cond31.in.v, %offset
  %cond31 = sdiv i32 %cond31.in, 4069
  %mul.neg = mul nsw i32 %cond, -4340
  %sub35 = add nsw i32 %mul.neg, %offset
  %4 = tail call i32 @llvm.abs.i32(i32 %sub35, i1 true)
  %mul46.neg = mul nsw i32 %cond31, -4069
  %sub47 = add nsw i32 %mul46.neg, %offset
  %5 = tail call i32 @llvm.abs.i32(i32 %sub47, i1 true)
  %6 = add nsw i32 %cond31.in, -260416
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524900, i32 %6)
  %7 = icmp ult i32 %6, -524900
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp63 = icmp ult i32 %4, %5
  %or.cond105 = select i1 %7, i1 true, i1 %cmp63
  %and = and i32 %cond, 127
  %conv69 = or i32 %cond31, 128
  %reg.0 = select i1 %or.cond105, i32 %and, i32 %conv69
  %regmap = getelementptr inbounds %struct.pcf85063, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %sext104 = shl i32 %reg.0, 24
  %conv71 = ashr exact i32 %sext104, 24
  %call72 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 2, i32 noundef %conv71) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call72, %if.end3 ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_clkout_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #9
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i, align 4, !annotation !86
  %regmap.i = getelementptr i8, ptr %hw, i32 -4
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %buf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.pcf85063_clkout_control.exit_crit_edge, label %if.end.i

entry.pcf85063_clkout_control.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcf85063_clkout_control.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf.i, align 4
  %and.i = and i32 %4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 7
  br i1 %cmp2.i, label %if.end10.i, label %if.end.i.pcf85063_clkout_control.exit_crit_edge

if.end.i.pcf85063_clkout_control.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcf85063_clkout_control.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %buf.i, align 4
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 1, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %pcf85063_clkout_control.exit

pcf85063_clkout_control.exit:                     ; preds = %if.end10.i, %if.end.i.pcf85063_clkout_control.exit_crit_edge, %entry.pcf85063_clkout_control.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end10.i ], [ %call.i, %entry.pcf85063_clkout_control.exit_crit_edge ], [ 0, %if.end.i.pcf85063_clkout_control.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcf85063_clkout_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %buf.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #9
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.i, align 4, !annotation !86
  %regmap.i = getelementptr i8, ptr %hw, i32 -4
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %buf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.pcf85063_clkout_control.exit_crit_edge, label %if.end.i

entry.pcf85063_clkout_control.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcf85063_clkout_control.exit

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf.i, align 4
  %and.i = and i32 %4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 7
  br i1 %cmp2.i, label %if.end.i.pcf85063_clkout_control.exit_crit_edge, label %if.end10.i

if.end.i.pcf85063_clkout_control.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pcf85063_clkout_control.exit

if.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %buf.i, align 4
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 1, i32 noundef 7, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %pcf85063_clkout_control.exit

pcf85063_clkout_control.exit:                     ; preds = %if.end10.i, %if.end.i.pcf85063_clkout_control.exit_crit_edge, %entry.pcf85063_clkout_control.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_clkout_is_prepared(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %buf = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf, align 4, !annotation !86
  %regmap = getelementptr i8, ptr %hw, i32 -4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 1, ptr noundef nonnull %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf, align 4
  %and = and i32 %4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp1 = icmp ne i32 %and, 7
  %conv = zext i1 %cmp1 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_clkout_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %buf = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf, align 4, !annotation !86
  %regmap = getelementptr i8, ptr %hw, i32 -4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 1, ptr noundef nonnull %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf, align 4
  %and = and i32 %4, 7
  %arrayidx = getelementptr [8 x i32], ptr @clkout_rates, i32 0, i32 %and
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_clkout_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %prate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %rate)
  %cmp1.not = icmp ult i32 %rate, 32768
  br i1 %cmp1.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %rate)
  %cmp1.not.1 = icmp ult i32 %rate, 16384
  br i1 %cmp1.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %rate)
  %cmp1.not.2 = icmp ult i32 %rate, 8192
  br i1 %cmp1.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %rate)
  %cmp1.not.3 = icmp ult i32 %rate, 4096
  br i1 %cmp1.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %rate)
  %cmp1.not.4 = icmp ult i32 %rate, 2048
  br i1 %cmp1.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %rate)
  %cmp1.not.5 = icmp ult i32 %rate, 1024
  br i1 %cmp1.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp1.not.6 = icmp ne i32 %rate, 0
  %spec.select = zext i1 %cmp1.not.6 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond.5, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 32768, %entry.cleanup_crit_edge ], [ 16384, %for.cond.cleanup_crit_edge ], [ 8192, %for.cond.1.cleanup_crit_edge ], [ 4096, %for.cond.2.cleanup_crit_edge ], [ 2048, %for.cond.3.cleanup_crit_edge ], [ 1024, %for.cond.4.cleanup_crit_edge ], [ %spec.select, %for.cond.5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf85063_clkout_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %rate, label %entry.cleanup_crit_edge [
    i32 32768, label %entry.if.then_crit_edge
    i32 16384, label %if.then.fold.split
    i32 8192, label %if.then.fold.split9
    i32 4096, label %if.then.fold.split10
    i32 2048, label %if.then.fold.split11
    i32 1024, label %if.then.fold.split12
    i32 1, label %if.then.fold.split13
    i32 0, label %if.then.fold.split14
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split10, %if.then.fold.split9, %if.then.fold.split, %entry.if.then_crit_edge
  %i.07.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split9 ], [ 3, %if.then.fold.split10 ], [ 4, %if.then.fold.split11 ], [ 5, %if.then.fold.split12 ], [ 6, %if.then.fold.split13 ], [ 7, %if.then.fold.split14 ]
  %regmap = getelementptr i8, ptr %hw, i32 -4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 1, i32 noundef 7, i32 noundef %i.07.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
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
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !59, !60, !61, !62, !64, !66, !68, !70, !72, !74}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_rtc_pcf85063__289_680_pcf85063_driver_init6, !1, !"__initcall__kmod_rtc_pcf85063__289_680_pcf85063_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 680, i32 1}
!2 = !{ptr @__exitcall_pcf85063_driver_exit, !1, !"__exitcall_pcf85063_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 682, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 683, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 684, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 673, i32 11}
!12 = !{ptr @pcf85063_driver, !13, !"pcf85063_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 671, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 568, i32 11}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 575, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @pcf85063_probe.__UNIQUE_ID_ddebug288, !17, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!22 = !{ptr @pcf85063_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 594, i32 21}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 602, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pcf85063_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @pcf85063_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 613, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @pcf85063_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @pcf85063_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 626, i32 7}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 628, i32 4}
!40 = !{ptr @pcf85063_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pcf85063_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 635, i32 5}
!44 = !{ptr @pcf85063_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pcf85063_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @pcf85063_cfg, !47, !"pcf85063_cfg", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 525, i32 31}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 344, i32 28}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 348, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @pcf85063_load_capacitance._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @pcf85063_load_capacitance._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @pcf85063_rtc_ops, !56, !"pcf85063_rtc_ops", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 311, i32 35}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 94, i32 3}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pcf85063_rtc_read_time._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @pcf85063_rtc_read_time._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 486, i32 43}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 497, i32 14}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 505, i32 32}
!68 = !{ptr @pcf85063_clkout_ops, !69, !"pcf85063_clkout_ops", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 470, i32 29}
!70 = !{ptr @clkout_rates, !71, !"clkout_rates", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 369, i32 12}
!72 = !{ptr @pcf85063_of_match, !73, !"pcf85063_of_match", i1 false, i1 false}
!73 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 661, i32 34}
!74 = !{ptr @pcf85063_ids, !75, !"pcf85063_ids", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-pcf85063.c", i32 651, i32 35}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{i64 2148932070, i64 2148932075, i64 2148932088, i64 2148932132, i64 2148932166, i64 2148932187}
!88 = !{i64 6415788}
!89 = !{i64 6415985}
!90 = !{i64 2153901218}
!91 = !{i64 2155815152, i64 2155815432, i64 2155815766, i64 2155816100}
