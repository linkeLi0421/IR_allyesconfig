; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-rv3029c2.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rv3029c2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rv3029_trickle_tab_elem = type { i32, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.rv3029_data = type { ptr, ptr, ptr, i32 }
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rv3049_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @rv3049_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_rtc_rv3029c2__290_906_rv30x9_init6 = internal global ptr @rv30x9_init, section ".initcall6.init", align 4
@__exitcall_rv30x9_exit = internal global ptr @rv30x9_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [72 x i8] c"rtc_rv3029c2.author=Gregory Hermant <gregory.hermant@calao-systems.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [47 x i8] c"rtc_rv3029c2.author=Michael Buesch <m@bues.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [64 x i8] c"rtc_rv3029c2.description=Micro Crystal RV3029/RV3049 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [43 x i8] c"rtc_rv3029c2.file=drivers/rtc/rtc-rv3029c2\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [25 x i8] c"rtc_rv3029c2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias296 = internal constant [30 x i8] c"rtc_rv3029c2.alias=spi:rv3049\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rv3049\00", [25 x i8] zeroinitializer }, align 32
@rv3049_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 63, ptr @rv3029_regs, ptr @rv3029_regs, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtc_rv3029c2:855:(&config)->lock\00", [63 x i8] zeroinitializer }, align 32
@rv3029_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr null, i32 0, ptr @rv3029_holes_range, i32 6 }, [16 x i8] zeroinitializer }, align 32
@rv3029_holes_range = internal constant { [6 x %struct.regmap_range], [48 x i8] } { [6 x %struct.regmap_range] [%struct.regmap_range { i32 5, i32 7 }, %struct.regmap_range { i32 15, i32 15 }, %struct.regmap_range { i32 23, i32 23 }, %struct.regmap_range { i32 26, i32 31 }, %struct.regmap_range { i32 33, i32 39 }, %struct.regmap_range { i32 52, i32 55 }], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rv3029_nvram\00", [19 x i8] zeroinitializer }, align 32
@__const.rv3029_probe.nvmem_cfg = private unnamed_addr constant { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, [1 x i8], ptr, i8, [3 x i8], ptr, ptr, ptr, i32, i32, i32, ptr, i8, [3 x i8], ptr } { ptr null, ptr @.str.2, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 3, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, ptr null, i8 0, [3 x i8] zeroinitializer, ptr @rv3029_nvram_read, ptr @rv3029_nvram_write, ptr null, i32 8, i32 1, i32 1, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null }, align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rv3029\00", [25 x i8] zeroinitializer }, align 32
@rv3029_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 742, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to request IRQ, alarms disabled\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rv3029_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/rtc/rtc-rv3029c2.c\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rv3029_probe._entry_ptr = internal global ptr @rv3029_probe._entry, section ".printk_index", align 4
@rv3029_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr @rv3029_ioctl, ptr @rv3029_read_time, ptr @rv3029_set_time, ptr @rv3029_read_alarm, ptr @rv3029_set_alarm, ptr null, ptr @rv3029_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trickle-resistor-ohms\00", [42 x i8] zeroinitializer }, align 32
@rv3029_trickle_tab = internal constant { [15 x %struct.rv3029_trickle_tab_elem], [40 x i8] } { [15 x %struct.rv3029_trickle_tab_elem] [%struct.rv3029_trickle_tab_elem { i32 1076, i8 -16 }, %struct.rv3029_trickle_tab_elem { i32 1091, i8 112 }, %struct.rv3029_trickle_tab_elem { i32 1137, i8 -80 }, %struct.rv3029_trickle_tab_elem { i32 1154, i8 48 }, %struct.rv3029_trickle_tab_elem { i32 1371, i8 -48 }, %struct.rv3029_trickle_tab_elem { i32 1395, i8 80 }, %struct.rv3029_trickle_tab_elem { i32 1472, i8 -112 }, %struct.rv3029_trickle_tab_elem { i32 1500, i8 16 }, %struct.rv3029_trickle_tab_elem { i32 3810, i8 -32 }, %struct.rv3029_trickle_tab_elem { i32 4000, i8 96 }, %struct.rv3029_trickle_tab_elem { i32 4706, i8 -96 }, %struct.rv3029_trickle_tab_elem { i32 5000, i8 32 }, %struct.rv3029_trickle_tab_elem { i32 16000, i8 -64 }, %struct.rv3029_trickle_tab_elem { i32 20000, i8 64 }, %struct.rv3029_trickle_tab_elem { i32 80000, i8 -128 }], [40 x i8] zeroinitializer }, align 32
@rv3029_trickle_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.6, i32 570, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Trickle charger enabled at %d ohms resistance.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rv3029_trickle_config\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rv3029_trickle_config._entry_ptr = internal global ptr @rv3029_trickle_config._entry, section ".printk_index", align 4
@rv3029_trickle_config._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.6, i32 576, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to update trickle charger config\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rv3029_trickle_config._entry_ptr.16 = internal global ptr @rv3029_trickle_config._entry.13, section ".printk_index", align 4
@rv3029_eeprom_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.6, i32 176, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Supply voltage is too low to safely access the EEPROM.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rv3029_eeprom_enter\00", [44 x i8] zeroinitializer }, align 32
@rv3029_eeprom_enter._entry_ptr = internal global ptr @rv3029_eeprom_enter._entry, section ".printk_index", align 4
@rv3029_eeprom_busywait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 136, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EEPROM busy wait timeout.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rv3029_eeprom_busywait\00", [41 x i8] zeroinitializer }, align 32
@rv3029_eeprom_busywait._entry_ptr = internal global ptr @rv3029_eeprom_busywait._entry, section ".printk_index", align 4
@rv3029_hwmon_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rv3029_hwmon_group, ptr null], [24 x i8] zeroinitializer }, align 32
@rv3029_hwmon_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.6, i32 684, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to register hwmon device %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rv3029_hwmon_register\00", [42 x i8] zeroinitializer }, align 32
@rv3029_hwmon_register._entry_ptr = internal global ptr @rv3029_hwmon_register._entry, section ".printk_index", align 4
@rv3029_hwmon_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rv3029_hwmon_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rv3029_hwmon_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_update_interval, ptr null], [20 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rv3029_hwmon_show_temp, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_update_interval = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rv3029_hwmon_show_update_interval, ptr @rv3029_hwmon_set_update_interval }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"update_interval\00", [16 x i8] zeroinitializer }, align 32
@rv3029_handle_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 276, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Read IRQ Control Register error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rv3029_handle_irq\00", [46 x i8] zeroinitializer }, align 32
@rv3029_handle_irq._entry_ptr = internal global ptr @rv3029_handle_irq._entry, section ".printk_index", align 4
@rv3029_handle_irq._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.6, i32 283, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Read IRQ Flags Register error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rv3029_handle_irq._entry_ptr.30 = internal global ptr @rv3029_handle_irq._entry.28, section ".printk_index", align 4
@rv3029_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rv3029_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rv3029_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rv3029_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@rv3029_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microcrystal,rv3029\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rv3029_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rv3029\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"rv3029c2\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@rv3029_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 793, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Adapter does not support SMBUS_I2C_BLOCK or SMBUS_I2C_BYTE\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rv3029_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@rv3029_i2c_probe._entry_ptr = internal global ptr @rv3029_i2c_probe._entry, section ".printk_index", align 4
@rv3029_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtc_rv3029c2:797:(&config)->lock\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 28692, i64 2147774483]
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"rv3049_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 862, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 864, i32 14 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 777, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 855, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"rv3029_regs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 772, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"rv3029_holes_range\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 763, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 710, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 740, i32 13 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 742, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"rv3029_rtc_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 696, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 556, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"rv3029_trickle_tab\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 489, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 568, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 576, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 175, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 136, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"rv3029_hwmon_groups\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 683, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [19 x i8] c"rv3029_hwmon_group\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 673, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"rv3029_hwmon_attrs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 668, i32 26 }
@___asan_gen_.145 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_update_interval\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 662, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 606, i32 22 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 664, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 276, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 283, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [14 x i8] c"rv3029_driver\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 817, i32 26 }
@___asan_gen_.178 = private unnamed_addr constant [16 x i8] c"rv3029_of_match\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 811, i32 49 }
@___asan_gen_.181 = private unnamed_addr constant [10 x i8] c"rv3029_id\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 804, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 793, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [30 x i8] c"../drivers/rtc/rtc-rv3029c2.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 797, i32 11 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_rv30x9_exit, ptr @__initcall__kmod_rtc_rv3029c2__290_906_rv30x9_init6, ptr @rv3029_eeprom_busywait._entry, ptr @rv3029_eeprom_busywait._entry_ptr, ptr @rv3029_eeprom_enter._entry, ptr @rv3029_eeprom_enter._entry_ptr, ptr @rv3029_handle_irq._entry, ptr @rv3029_handle_irq._entry.28, ptr @rv3029_handle_irq._entry_ptr, ptr @rv3029_handle_irq._entry_ptr.30, ptr @rv3029_hwmon_register._entry, ptr @rv3029_hwmon_register._entry_ptr, ptr @rv3029_i2c_probe._entry, ptr @rv3029_i2c_probe._entry_ptr, ptr @rv3029_probe._entry, ptr @rv3029_probe._entry_ptr, ptr @rv3029_trickle_config._entry, ptr @rv3029_trickle_config._entry.13, ptr @rv3029_trickle_config._entry_ptr, ptr @rv3029_trickle_config._entry_ptr.16, ptr @rv3049_unregister_driver, ptr @rv30x9_exit, ptr @rv3049_driver, ptr @.str, ptr @rv3049_probe._key, ptr @config, ptr @.str.1, ptr @rv3029_regs, ptr @rv3029_holes_range, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @rv3029_rtc_ops, ptr @.str.9, ptr @rv3029_trickle_tab, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @rv3029_hwmon_groups, ptr @.str.21, ptr @.str.22, ptr @rv3029_hwmon_group, ptr @rv3029_hwmon_attrs, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_update_interval, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @rv3029_driver, ptr @rv3029_of_match, ptr @rv3029_id, ptr @.str.31, ptr @.str.32, ptr @rv3029_i2c_probe._key, ptr @.str.33], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3049_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3049_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_holes_range to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_trickle_tab to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_trickle_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_trickle_config._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_eeprom_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_eeprom_busywait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_hwmon_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_hwmon_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_hwmon_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_hwmon_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_update_interval to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_handle_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_handle_irq._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv3029_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rv3049_unregister_driver() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @rv3049_driver, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rv30x9_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rv3029_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i8 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @rv3049_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool2.not = icmp eq i32 %call.i8, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @rv3029_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i8, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rv30x9_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @rv3049_driver, i32 0, i32 4)) #9
  tail call void @i2c_del_driver(ptr noundef nonnull @rv3029_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3049_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @config, ptr noundef nonnull @rv3049_probe._key, ptr noundef nonnull @.str.1) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  %call3 = tail call fastcc i32 @rv3029_probe(ptr noundef %spi, ptr noundef %call, i32 noundef %2, ptr noundef nonnull @.str)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rv3029_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %irq, ptr noundef %name) unnamed_addr #2 align 64 {
entry:
  %ohms.i = alloca i32, align 4
  %nvmem_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_cfg) #9
  %0 = call ptr @memcpy(ptr %nvmem_cfg, ptr @__const.rv3029_probe.nvmem_cfg, i32 88)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap1 = getelementptr inbounds %struct.rv3029_data, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %regmap1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %regmap, ptr %regmap1, align 4
  %irq2 = getelementptr inbounds %struct.rv3029_data, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %irq, ptr %irq2, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i, align 4
  %of_node1.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %5 = ptrtoint ptr %of_node1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ohms.i) #9
  %7 = ptrtoint ptr %ohms.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %ohms.i, align 4, !annotation !118
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.rv3029_trickle_config.exit_crit_edge, label %if.end.i

if.end.rv3029_trickle_config.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv3029_trickle_config.exit

if.end.i:                                         ; preds = %if.end
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.9, ptr noundef nonnull %ohms.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %for.cond.preheader.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %8 = ptrtoint ptr %ohms.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ohms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1076, i32 %9)
  %cmp5.not.i = icmp ugt i32 %9, 1076
  br i1 %cmp5.not.i, label %for.cond.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1091, i32 %9)
  %cmp5.not.1.i = icmp ugt i32 %9, 1091
  br i1 %cmp5.not.1.i, label %for.cond.1.i, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1137, i32 %9)
  %cmp5.not.2.i = icmp ugt i32 %9, 1137
  br i1 %cmp5.not.2.i, label %for.cond.2.i, label %for.cond.1.i.for.end.i_crit_edge

for.cond.1.i.for.end.i_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1154, i32 %9)
  %cmp5.not.3.i = icmp ugt i32 %9, 1154
  br i1 %cmp5.not.3.i, label %for.cond.3.i, label %for.cond.2.i.for.end.i_crit_edge

for.cond.2.i.for.end.i_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1371, i32 %9)
  %cmp5.not.4.i = icmp ugt i32 %9, 1371
  br i1 %cmp5.not.4.i, label %for.cond.4.i, label %for.cond.3.i.for.end.i_crit_edge

for.cond.3.i.for.end.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1395, i32 %9)
  %cmp5.not.5.i = icmp ugt i32 %9, 1395
  br i1 %cmp5.not.5.i, label %for.cond.5.i, label %for.cond.4.i.for.end.i_crit_edge

for.cond.4.i.for.end.i_crit_edge:                 ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1472, i32 %9)
  %cmp5.not.6.i = icmp ugt i32 %9, 1472
  br i1 %cmp5.not.6.i, label %for.cond.6.i, label %for.cond.5.i.for.end.i_crit_edge

for.cond.5.i.for.end.i_crit_edge:                 ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %9)
  %cmp5.not.7.i = icmp ugt i32 %9, 1500
  br i1 %cmp5.not.7.i, label %for.cond.7.i, label %for.cond.6.i.for.end.i_crit_edge

for.cond.6.i.for.end.i_crit_edge:                 ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3810, i32 %9)
  %cmp5.not.8.i = icmp ugt i32 %9, 3810
  br i1 %cmp5.not.8.i, label %for.cond.8.i, label %for.cond.7.i.for.end.i_crit_edge

for.cond.7.i.for.end.i_crit_edge:                 ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.8.i:                                     ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %9)
  %cmp5.not.9.i = icmp ugt i32 %9, 4000
  br i1 %cmp5.not.9.i, label %for.cond.9.i, label %for.cond.8.i.for.end.i_crit_edge

for.cond.8.i.for.end.i_crit_edge:                 ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.9.i:                                     ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4706, i32 %9)
  %cmp5.not.10.i = icmp ugt i32 %9, 4706
  br i1 %cmp5.not.10.i, label %for.cond.10.i, label %for.cond.9.i.for.end.i_crit_edge

for.cond.9.i.for.end.i_crit_edge:                 ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.10.i:                                    ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %9)
  %cmp5.not.11.i = icmp ugt i32 %9, 5000
  br i1 %cmp5.not.11.i, label %for.cond.11.i, label %for.cond.10.i.for.end.i_crit_edge

for.cond.10.i.for.end.i_crit_edge:                ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.11.i:                                    ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %9)
  %cmp5.not.12.i = icmp ugt i32 %9, 16000
  br i1 %cmp5.not.12.i, label %for.cond.12.i, label %for.cond.11.i.for.end.i_crit_edge

for.cond.11.i.for.end.i_crit_edge:                ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.12.i:                                    ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %9)
  %cmp5.not.13.i = icmp ugt i32 %9, 20000
  br i1 %cmp5.not.13.i, label %for.cond.13.i, label %for.cond.12.i.for.end.i_crit_edge

for.cond.12.i.for.end.i_crit_edge:                ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.cond.13.i:                                    ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000, i32 %9)
  %cmp5.not.14.i = icmp ugt i32 %9, 80000
  %spec.select.i = select i1 %cmp5.not.14.i, ptr getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 14, i32 0), ptr getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 14)
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.13.i, %for.cond.12.i.for.end.i_crit_edge, %for.cond.11.i.for.end.i_crit_edge, %for.cond.10.i.for.end.i_crit_edge, %for.cond.9.i.for.end.i_crit_edge, %for.cond.8.i.for.end.i_crit_edge, %for.cond.7.i.for.end.i_crit_edge, %for.cond.6.i.for.end.i_crit_edge, %for.cond.5.i.for.end.i_crit_edge, %for.cond.4.i.for.end.i_crit_edge, %for.cond.3.i.for.end.i_crit_edge, %for.cond.2.i.for.end.i_crit_edge, %for.cond.1.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.032.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ 1, %for.cond.i.for.end.i_crit_edge ], [ 2, %for.cond.1.i.for.end.i_crit_edge ], [ 3, %for.cond.2.i.for.end.i_crit_edge ], [ 4, %for.cond.3.i.for.end.i_crit_edge ], [ 5, %for.cond.4.i.for.end.i_crit_edge ], [ 6, %for.cond.5.i.for.end.i_crit_edge ], [ 7, %for.cond.6.i.for.end.i_crit_edge ], [ 8, %for.cond.7.i.for.end.i_crit_edge ], [ 9, %for.cond.8.i.for.end.i_crit_edge ], [ 10, %for.cond.9.i.for.end.i_crit_edge ], [ 11, %for.cond.10.i.for.end.i_crit_edge ], [ 12, %for.cond.11.i.for.end.i_crit_edge ], [ 13, %for.cond.12.i.for.end.i_crit_edge ], [ 14, %for.cond.13.i ]
  %arrayidx.lcssa.i = phi ptr [ @rv3029_trickle_tab, %for.cond.preheader.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 1), %for.cond.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 2), %for.cond.1.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 3), %for.cond.2.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 4), %for.cond.3.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 5), %for.cond.4.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 6), %for.cond.5.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 7), %for.cond.6.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 8), %for.cond.7.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 9), %for.cond.8.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 10), %for.cond.9.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 11), %for.cond.10.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 12), %for.cond.11.i.for.end.i_crit_edge ], [ getelementptr inbounds ([15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 13), %for.cond.12.i.for.end.i_crit_edge ], [ %spec.select.i, %for.cond.13.i ]
  %conf.i = getelementptr [15 x %struct.rv3029_trickle_tab_elem], ptr @rv3029_trickle_tab, i32 0, i32 %i.032.lcssa.i, i32 1
  %10 = ptrtoint ptr %conf.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %conf.i, align 4
  %12 = ptrtoint ptr %arrayidx.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.lcssa.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %13) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %for.end.i, %if.end.i.if.end9.i_crit_edge
  %trickle_set_bits.0.i = phi i8 [ %11, %for.end.i ], [ 0, %if.end.i.if.end9.i_crit_edge ]
  %call10.i = call fastcc i32 @rv3029_eeprom_update_bits(ptr noundef nonnull %call.i, i8 noundef zeroext -16, i8 noundef zeroext %trickle_set_bits.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end15.i, label %if.end9.i.rv3029_trickle_config.exit_crit_edge

if.end9.i.rv3029_trickle_config.exit_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv3029_trickle_config.exit

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #12
  br label %rv3029_trickle_config.exit

rv3029_trickle_config.exit:                       ; preds = %do.end15.i, %if.end9.i.rv3029_trickle_config.exit_crit_edge, %if.end.rv3029_trickle_config.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ohms.i) #9
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i, align 4
  %call1.i = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef %name, ptr noundef %15, ptr noundef nonnull @rv3029_hwmon_groups) #9
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %rv3029_trickle_config.exit.rv3029_hwmon_register.exit_crit_edge

rv3029_trickle_config.exit.rv3029_hwmon_register.exit_crit_edge: ; preds = %rv3029_trickle_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv3029_hwmon_register.exit

do.end.i:                                         ; preds = %rv3029_trickle_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call1.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %16) #12
  br label %rv3029_hwmon_register.exit

rv3029_hwmon_register.exit:                       ; preds = %do.end.i, %rv3029_trickle_config.exit.rv3029_hwmon_register.exit_crit_edge
  %call4 = call ptr @devm_rtc_allocate_device(ptr noundef %dev) #9
  %rtc = getelementptr inbounds %struct.rv3029_data, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %rtc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call4, ptr %rtc, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %rv3029_hwmon_register.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %rv3029_hwmon_register.exit
  %19 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp sgt i32 %20, 0
  br i1 %cmp, label %if.then12, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then12:                                        ; preds = %if.end10
  %call14 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %20, ptr noundef null, ptr noundef nonnull @rv3029_handle_irq, i32 noundef 8200, ptr noundef nonnull @.str.3, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end19thread-pre-split, label %if.end19.thread

if.end19.thread:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4) #12
  %21 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %irq2, align 4
  br label %if.then22

if.end19thread-pre-split:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %irq2, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19thread-pre-split, %if.end10.if.end19_crit_edge
  %23 = phi i32 [ %.pr, %if.end19thread-pre-split ], [ %20, %if.end10.if.end19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool21.not = icmp eq i32 %23, 0
  br i1 %tobool21.not, label %if.end19.if.then22_crit_edge, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then22:                                        ; preds = %if.end19.if.then22_crit_edge, %if.end19.thread
  %24 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rtc, align 4
  %features = getelementptr inbounds %struct.rtc_device, ptr %25, i32 0, i32 21
  call void @_clear_bit(i32 noundef 0, ptr noundef %features) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19.if.end24_crit_edge
  %26 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtc, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @rv3029_rtc_ops, ptr %ops, align 8
  %29 = load ptr, ptr %rtc, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 946684800, ptr %range_min, align 8
  %31 = load ptr, ptr %rtc, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %31, i32 0, i32 23
  %32 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 3471292799, ptr %range_max, align 8
  %33 = load ptr, ptr %rtc, align 4
  %call29 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap1, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 21
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %priv, align 4
  %37 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rtc, align 4
  %call35 = call i32 @devm_rtc_nvmem_register(ptr noundef %38, ptr noundef nonnull %nvmem_cfg) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end24.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then7 ], [ 0, %if.end32 ], [ -12, %entry.cleanup_crit_edge ], [ %call29, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_cfg) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3029_nvram_read(ptr noundef %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 56
  %call = tail call i32 @regmap_bulk_read(ptr noundef %priv, i32 noundef %add, ptr noundef %val, i32 noundef %bytes) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3029_nvram_write(ptr noundef %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 56
  %call = tail call i32 @regmap_bulk_write(ptr noundef %priv, i32 noundef %add, ptr noundef %val, i32 noundef %bytes) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3029_handle_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %flags = alloca i32, align 4
  %controls = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %controls) #9
  %3 = ptrtoint ptr %controls to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %controls, align 4, !annotation !118
  %rtc = getelementptr inbounds %struct.rv3029_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rtc, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #9
  %regmap = getelementptr inbounds %struct.rv3029_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %controls) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str.26, i32 noundef %call1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_read(ptr noundef %9, i32 noundef 2, ptr noundef nonnull %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str.29, i32 noundef %call5) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %and16 = and i32 %11, -2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and16, ptr %flags, align 4
  %13 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %controls, align 4
  %and17 = and i32 %14, -2
  store i32 %and17, ptr %controls, align 4
  %15 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtc, align 4
  call void @rtc_update_irq(ptr noundef %16, i32 noundef 1, i32 noundef 32) #9
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %call23 = call i32 @regmap_write(ptr noundef %18, i32 noundef 2, i32 noundef %20) #9
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %23 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %controls, align 4
  %call25 = call i32 @regmap_write(ptr noundef %22, i32 noundef 1, i32 noundef %24) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end13.cleanup_crit_edge, %do.end10, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end10 ], [ 1, %if.end13.cleanup_crit_edge ], [ 1, %if.then20 ]
  %25 = ptrtoint ptr %rtc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rtc, align 4
  %ops_lock28 = getelementptr inbounds %struct.rtc_device, ptr %26, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %ops_lock28) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %controls) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rv3029_eeprom_update_bits(ptr nocapture noundef readonly %rv3029, i8 noundef zeroext %mask, i8 noundef zeroext %set) unnamed_addr #2 align 64 {
entry:
  %sr.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !118
  %call.i = tail call fastcc i32 @rv3029_eeprom_enter(ptr noundef %rv3029) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %rv3029_eeprom_read.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rv3029_eeprom_read.exit:                          ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.rv3029_data, ptr %rv3029, i32 0, i32 2
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 48, ptr noundef nonnull %buf, i32 noundef 1) #9
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i = icmp slt i32 %call.i.i.i, 0
  %call2.call1.i = select i1 %cmp3.i, i32 %call.i.i.i, i32 %call1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.call1.i)
  %cmp = icmp slt i32 %call2.call1.i, 0
  br i1 %cmp, label %rv3029_eeprom_read.exit.cleanup_crit_edge, label %if.end

rv3029_eeprom_read.exit.cleanup_crit_edge:        ; preds = %rv3029_eeprom_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %rv3029_eeprom_read.exit
  %neg = xor i8 %mask, -1
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  %and = and i8 %6, %neg
  %and51 = and i8 %set, %mask
  %or2 = or i8 %and, %and51
  store i8 %or2, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %tmp.i, align 4, !annotation !118
  %call.i3 = call fastcc i32 @rv3029_eeprom_enter(ptr noundef %rv3029) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %cmp.i4 = icmp slt i32 %call.i3, 0
  br i1 %cmp.i4, label %if.end.rv3029_eeprom_write.exit_crit_edge, label %for.cond.preheader.i

if.end.rv3029_eeprom_write.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv3029_eeprom_write.exit

for.cond.preheader.i:                             ; preds = %if.end
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 48, ptr noundef nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i6 = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i6, label %for.cond.preheader.i.for.end.i_crit_edge, label %if.end6.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end6.i:                                        ; preds = %for.cond.preheader.i
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp.i, align 4
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buf, align 1
  %conv7.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv7.i)
  %cmp8.not.i = icmp eq i32 %11, %conv7.i
  br i1 %cmp8.not.i, label %if.end6.i.if.end20.i_crit_edge, label %if.then10.i

if.end6.i.if.end20.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then10.i:                                      ; preds = %if.end6.i
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv7.i, ptr %tmp.i, align 4
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call15.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 48, i32 noundef %conv7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then10.i.for.end.i_crit_edge, label %if.then10.i.if.end20.i_crit_edge

if.then10.i.if.end20.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then10.i.for.end.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end20.i:                                       ; preds = %if.then10.i.if.end20.i_crit_edge, %if.end6.i.if.end20.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr.i.i) #9
  %17 = ptrtoint ptr %sr.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %sr.i.i, align 4, !annotation !118
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end3.i.i.for.body.i.i_crit_edge, %if.end20.i
  %i.015.i.i = phi i32 [ 100, %if.end20.i ], [ %dec.i.i, %if.end3.i.i.for.body.i.i_crit_edge ]
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %19, i32 noundef 3, ptr noundef nonnull %sr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %for.body.i.i.rv3029_eeprom_busywait.exit.thread.i_crit_edge, label %if.end.i.i

for.body.i.i.rv3029_eeprom_busywait.exit.thread.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rv3029_eeprom_busywait.exit.thread.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %20 = ptrtoint ptr %sr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sr.i.i, align 4
  %and.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i, label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #9
  %dec.i.i = add nsw i32 %i.015.i.i, -1
  %cmp.i.i = icmp ugt i32 %i.015.i.i, 1
  br i1 %cmp.i.i, label %if.end3.i.i.for.body.i.i_crit_edge, label %do.end.i.i

if.end3.i.i.for.body.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %rv3029 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rv3029, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.19) #12
  br label %rv3029_eeprom_busywait.exit.thread.i

rv3029_eeprom_busywait.exit.thread.i:             ; preds = %do.end.i.i, %for.body.i.i.rv3029_eeprom_busywait.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -110, %do.end.i.i ], [ %call.i.i, %for.body.i.i.rv3029_eeprom_busywait.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr.i.i) #9
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr.i.i) #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i, %rv3029_eeprom_busywait.exit.thread.i, %if.then10.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %ret.1.i = phi i32 [ %retval.0.i.ph.i, %rv3029_eeprom_busywait.exit.thread.i ], [ %call.i.i, %for.inc.i ], [ %call15.i, %if.then10.i.for.end.i_crit_edge ], [ %call2.i, %for.cond.preheader.i.for.end.i_crit_edge ]
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i7 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i7)
  %cmp28.i = icmp slt i32 %call.i.i.i7, 0
  %call27.ret.1.i = select i1 %cmp28.i, i32 %call.i.i.i7, i32 %ret.1.i
  br label %rv3029_eeprom_write.exit

rv3029_eeprom_write.exit:                         ; preds = %for.end.i, %if.end.rv3029_eeprom_write.exit_crit_edge
  %retval.0.i8 = phi i32 [ %call.i3, %if.end.rv3029_eeprom_write.exit_crit_edge ], [ %call27.ret.1.i, %for.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  %26 = call i32 @llvm.smin.i32(i32 %retval.0.i8, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %rv3029_eeprom_write.exit, %rv3029_eeprom_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2.call1.i, %rv3029_eeprom_read.exit.cleanup_crit_edge ], [ %26, %rv3029_eeprom_write.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rv3029_eeprom_enter(ptr nocapture noundef readonly %rv3029) unnamed_addr #2 align 64 {
entry:
  %sr.i = alloca i32, align 4
  %sr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #9
  %0 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sr, align 4, !annotation !118
  %regmap = getelementptr inbounds %struct.rv3029_data, ptr %rv3029, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 3, ptr noundef nonnull %sr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sr, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %and3 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end2.if.end20_crit_edge, label %if.then5

if.end2.if.end20_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then5:                                         ; preds = %if.end2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 3, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %if.then5.cleanup_crit_edge, label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #9
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call12 = call i32 @regmap_read(ptr noundef %8, i32 noundef 3, ptr noundef nonnull %sr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sr, align 4
  %and16 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %do.end

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %rv3029 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rv3029, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end15.if.end20_crit_edge, %if.end2.if.end20_crit_edge
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i47 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 0, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp23 = icmp slt i32 %call.i47, 0
  br i1 %cmp23, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr.i) #9
  %15 = ptrtoint ptr %sr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %sr.i, align 4, !annotation !118
  br label %for.body.i

for.body.i:                                       ; preds = %if.end3.i.for.body.i_crit_edge, %if.end25
  %i.015.i = phi i32 [ 100, %if.end25 ], [ %dec.i, %if.end3.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i48 = call i32 @regmap_read(ptr noundef %17, i32 noundef 3, ptr noundef nonnull %sr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp1.i = icmp slt i32 %call.i48, 0
  br i1 %cmp1.i, label %for.body.i.if.then28_crit_edge, label %if.end.i

for.body.i.if.then28_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.end.i:                                         ; preds = %for.body.i
  %18 = ptrtoint ptr %sr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sr.i, align 4
  %and.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %rv3029_eeprom_busywait.exit, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #9
  %dec.i = add nsw i32 %i.015.i, -1
  %cmp.i = icmp ugt i32 %i.015.i, 1
  br i1 %cmp.i, label %if.end3.i.for.body.i_crit_edge, label %do.end.i

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %rv3029 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rv3029, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.19) #12
  br label %if.then28

rv3029_eeprom_busywait.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr.i) #9
  br label %cleanup

if.then28:                                        ; preds = %do.end.i, %for.body.i.if.then28_crit_edge
  %retval.0.i.ph = phi i32 [ -110, %do.end.i ], [ %call.i48, %for.body.i.if.then28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr.i) #9
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %rv3029_eeprom_busywait.exit, %if.end20.cleanup_crit_edge, %do.end, %if.end10.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call.i, %if.then5.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ %call.i47, %if.end20.cleanup_crit_edge ], [ %retval.0.i.ph, %if.then28 ], [ %call.i48, %rv3029_eeprom_busywait.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3029_hwmon_show_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #9
  %2 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp.i, align 4, !annotation !118
  %regmap.i = getelementptr inbounds %struct.rv3029_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 32, ptr noundef nonnull %temp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %rv3029_read_temp.exit.thread, label %if.end

rv3029_read_temp.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp.i, align 4
  %7 = mul i32 %6, 1000
  %mul.i = add i32 %7, -60000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #9
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %mul.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rv3029_read_temp.exit.thread
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call.i, %rv3029_read_temp.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3029_hwmon_show_update_interval(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %eectrl = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %eectrl) #9
  %2 = ptrtoint ptr %eectrl to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %eectrl, align 1, !annotation !118
  %call.i = tail call fastcc i32 @rv3029_eeprom_enter(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %rv3029_eeprom_read.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rv3029_eeprom_read.exit:                          ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.rv3029_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef 48, ptr noundef nonnull %eectrl, i32 noundef 1) #9
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i = icmp slt i32 %call.i.i.i, 0
  %call2.call1.i = select i1 %cmp3.i, i32 %call.i.i.i, i32 %call1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.call1.i)
  %cmp = icmp slt i32 %call2.call1.i, 0
  br i1 %cmp, label %rv3029_eeprom_read.exit.cleanup_crit_edge, label %if.end

rv3029_eeprom_read.exit.cleanup_crit_edge:        ; preds = %rv3029_eeprom_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %rv3029_eeprom_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %eectrl to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %eectrl, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and4 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %. = select i1 %tobool5.not, i32 1000, i32 16000
  %interval_ms.0 = select i1 %tobool.not, i32 0, i32 %.
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, i32 noundef %interval_ms.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rv3029_eeprom_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ %call2.call1.i, %rv3029_eeprom_read.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %eectrl) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3029_hwmon_set_update_interval(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %interval_ms = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interval_ms) #9
  %2 = ptrtoint ptr %interval_ms to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %interval_ms, align 4, !annotation !118
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %interval_ms) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %interval_ms to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interval_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2.not = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15999, i32 %4)
  %cmp4 = icmp ugt i32 %4, 15999
  %spec.select = select i1 %cmp4, i8 3, i8 2
  %th_set_bits.0 = select i1 %cmp2.not, i8 0, i8 %spec.select
  %call9 = call fastcc i32 @rv3029_eeprom_update_bits(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %th_set_bits.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  %call9.count = select i1 %cmp10, i32 %call9, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call9.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interval_ms) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3029_ioctl(ptr nocapture noundef readonly %dev, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %sr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #9
  %2 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sr, align 4, !annotation !118
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -2147192813, label %sw.bb
    i32 28692, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %regmap = getelementptr inbounds %struct.rv3029_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %5, i32 noundef 3, ptr noundef nonnull %sr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sr, align 4
  %and = shl i32 %7, 1
  %8 = and i32 %and, 8
  %and4 = and i32 %7, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp ne i32 %and4, 0
  %or = zext i1 %tobool5.not to i32
  %vl.1 = or i32 %8, %or
  %9 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.6, i32 noundef 463) #9
  %10 = call i32 @llvm.read_register.i32(metadata !108) #9
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !119
  %and.i = and i32 %12, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !120
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %13 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i32 %vl.1, i32 -1226833921) #9, !srcloc !122
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !120
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap11 = getelementptr inbounds %struct.rv3029_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap11, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 3, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.bb10 ], [ %13, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3029_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %sr = alloca i32, align 4
  %regs = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sr) #9
  %2 = ptrtoint ptr %sr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sr, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %regs) #9
  %3 = call ptr @memset(ptr %regs, i32 0, i32 7)
  %regmap = getelementptr inbounds %struct.rv3029_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %5, i32 noundef 3, ptr noundef nonnull %sr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %sr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sr, align 4
  %and = and i32 %7, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 8, ptr noundef nonnull %regs, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %cond.end

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end:                                         ; preds = %if.end3
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %regs, align 1
  %call14 = call i32 @_bcd2bin(i8 noundef zeroext %11) #13
  %12 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call14, ptr %tm, align 4
  %arrayidx15 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 1
  %call27 = call i32 @_bcd2bin(i8 noundef zeroext %14) #13
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %15 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call27, ptr %tm_min, align 4
  %arrayidx30 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %17 to i32
  %and32 = and i32 %conv31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %cond.end78, label %cond.false47

cond.false47:                                     ; preds = %cond.end
  %and36 = and i8 %17, 31
  %call51 = call i32 @_bcd2bin(i8 noundef zeroext %and36) #13
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %18 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call51, ptr %tm_hour, align 4
  %and55 = and i32 %conv31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %cond.false47.cond.end95_crit_edge, label %if.then57

cond.false47.cond.end95_crit_edge:                ; preds = %cond.false47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end95

if.then57:                                        ; preds = %cond.false47
  call void @__sanitizer_cov_trace_pc() #11
  %add59 = add i32 %call51, 12
  %19 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add59, ptr %tm_hour, align 4
  br label %cond.end95

cond.end78:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %and62 = and i8 %17, 63
  %call77 = call i32 @_bcd2bin(i8 noundef zeroext %and62) #13
  %tm_hour80 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %20 = ptrtoint ptr %tm_hour80 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call77, ptr %tm_hour80, align 4
  br label %cond.end95

cond.end95:                                       ; preds = %cond.end78, %if.then57, %cond.false47.cond.end95_crit_edge
  %arrayidx82 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx82, align 1
  %call94 = call i32 @_bcd2bin(i8 noundef zeroext %22) #13
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %23 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call94, ptr %tm_mday, align 4
  %arrayidx97 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 5
  %24 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx97, align 1
  %call109 = call i32 @_bcd2bin(i8 noundef zeroext %25) #13
  %sub = add i32 %call109, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %26 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %tm_mon, align 4
  %arrayidx112 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 6
  %27 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx112, align 1
  %call124 = call i32 @_bcd2bin(i8 noundef zeroext %28) #13
  %add127 = add i32 %call124, 100
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %29 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add127, ptr %tm_year, align 4
  %arrayidx128 = getelementptr inbounds [7 x i8], ptr %regs, i32 0, i32 4
  %30 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx128, align 1
  %call140 = call i32 @_bcd2bin(i8 noundef zeroext %31) #13
  %sub143 = add i32 %call140, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %32 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub143, ptr %tm_wday, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end95, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end95 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %regs) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3029_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %regs = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %regs) #9
  %2 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 6
  %8 = getelementptr inbounds i8, ptr %regs, i32 7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1
  %10 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm, align 4
  %call4 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #13
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call4, ptr %regs, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %call17 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #13
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call17, ptr %2, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %16 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_hour, align 4
  %call33 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #13
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call33, ptr %3, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %19 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mday, align 4
  %call49 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #13
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call49, ptr %4, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %22 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_mon, align 4
  %add55 = add i32 %23, 1
  %call69 = tail call zeroext i8 @_bin2bcd(i32 noundef %add55) #13
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call69, ptr %6, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %25 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_wday, align 4
  %add75 = add i32 %26, 1
  %call89 = tail call zeroext i8 @_bin2bcd(i32 noundef %add75) #13
  %conv93 = and i8 %call89, 7
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv93, ptr %5, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %28 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_year, align 4
  %sub = add i32 %29, -100
  %call108 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #13
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call108, ptr %7, align 1
  %regmap = getelementptr inbounds %struct.rv3029_data, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call114 = call i32 @regmap_bulk_write(ptr noundef %32, i32 noundef 8, ptr noundef nonnull %regs, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp = icmp slt i32 %call114, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 3, i32 noundef 40, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call114, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %regs) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3029_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alarm) #2 align 64 {
entry:
  %controls = alloca i32, align 4
  %flags = alloca i32, align 4
  %regs = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %controls) #9
  %2 = ptrtoint ptr %controls to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %controls, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #9
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %flags, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %regs) #9
  %4 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 1
  %5 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 2
  %6 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 4
  %8 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 5
  %9 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 6
  %regmap = getelementptr inbounds %struct.rv3029_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %regs, align 8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 16, ptr noundef nonnull %regs, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %14, i32 noundef 1, ptr noundef nonnull %controls) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_read(ptr noundef %16, i32 noundef 2, ptr noundef nonnull %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %cond.end

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %regs, align 8
  %19 = and i8 %18, 127
  %call23 = call i32 @_bcd2bin(i8 noundef zeroext %19) #13
  %20 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call23, ptr %time, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %4, align 1
  %23 = and i8 %22, 127
  %call44 = call i32 @_bcd2bin(i8 noundef zeroext %23) #13
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call44, ptr %tm_min, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %5, align 2
  %27 = and i8 %26, 63
  %call67 = call i32 @_bcd2bin(i8 noundef zeroext %27) #13
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call67, ptr %tm_hour, align 4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %6, align 1
  %31 = and i8 %30, 63
  %call90 = call i32 @_bcd2bin(i8 noundef zeroext %31) #13
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call90, ptr %tm_mday, align 4
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %8, align 1
  %35 = and i8 %34, 31
  %call113 = call i32 @_bcd2bin(i8 noundef zeroext %35) #13
  %sub = add i32 %call113, -1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub, ptr %tm_mon, align 4
  %37 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %9, align 2
  %39 = and i8 %38, 127
  %call136 = call i32 @_bcd2bin(i8 noundef zeroext %39) #13
  %add139 = add i32 %call136, 100
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 5
  %40 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add139, ptr %tm_year, align 4
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %7, align 4
  %43 = and i8 %42, 7
  %call160 = call i32 @_bcd2bin(i8 noundef zeroext %43) #13
  %sub163 = add i32 %call160, -1
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 6
  %44 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub163, ptr %tm_wday, align 4
  %45 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %controls, align 4
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = ptrtoint ptr %alarm to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %alarm, align 4
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %and168 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp ne i32 %and168, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool172 = icmp ne i8 %48, 0
  %spec.select = select i1 %tobool169.not, i1 %tobool172, i1 false
  %conv173 = zext i1 %spec.select to i8
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 1
  %52 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv173, ptr %pending, align 1
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %regs) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %controls) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3029_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %alarm) #2 align 64 {
entry:
  %regs = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %regs) #9
  %2 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %regs, i32 0, i32 6
  %8 = getelementptr inbounds i8, ptr %regs, i32 7
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2
  %10 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %time, align 4
  %call4 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #13
  %conv6 = or i8 %call4, -128
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6, ptr %regs, align 1
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  %call17 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #13
  %conv22 = or i8 %call17, -128
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv22, ptr %2, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_hour, align 4
  %call34 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #13
  %18 = and i8 %call34, 63
  %conv39 = or i8 %18, -128
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv39, ptr %3, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_mday, align 4
  %call51 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #13
  %22 = and i8 %call51, 63
  %conv57 = or i8 %22, -128
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv57, ptr %4, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_mon, align 4
  %add59 = add i32 %25, 1
  %call73 = tail call zeroext i8 @_bin2bcd(i32 noundef %add59) #13
  %26 = and i8 %call73, 31
  %conv79 = or i8 %26, -128
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv79, ptr %6, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 6
  %28 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tm_wday, align 4
  %add81 = add i32 %29, 1
  %call95 = tail call zeroext i8 @_bin2bcd(i32 noundef %add81) #13
  %30 = and i8 %call95, 7
  %conv101 = or i8 %30, -128
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv101, ptr %5, align 1
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alarm, i32 0, i32 2, i32 5
  %32 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm_year, align 4
  %sub = add i32 %33, -100
  %call116 = tail call zeroext i8 @_bin2bcd(i32 noundef %sub) #13
  %conv121 = or i8 %call116, -128
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv121, ptr %7, align 1
  %regmap = getelementptr inbounds %struct.rv3029_data, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call123 = call i32 @regmap_bulk_write(ptr noundef %36, i32 noundef 16, ptr noundef nonnull %regs, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp = icmp slt i32 %call123, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %alarm to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %alarm, align 4
  %39 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i, align 4
  %regmap.i = getelementptr inbounds %struct.rv3029_data, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp ne i8 %38, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 1, i32 noundef 1, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end ], [ %call123, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %regs) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3029_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.rv3029_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp ne i32 %enable, 0
  %cond = zext i1 %tobool.not to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1, i32 noundef 1, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rv3029_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 201719808
  call void @__sanitizer_cov_trace_const_cmp4(i32 201719808, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 201719808
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @config, ptr noundef nonnull @rv3029_i2c_probe._key, ptr noundef nonnull @.str.33) #9
  %cmp.i15 = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call7 = tail call fastcc i32 @rv3029_probe(ptr noundef %dev6, ptr noundef %call1, i32 noundef %8, ptr noundef %name)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %do.end
  %retval.0 = phi i32 [ %6, %if.then3 ], [ %call7, %if.end5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !75, !77, !78, !80, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !96, !98, !99, !100, !101, !103, !104, !106}
!llvm.named.register.sp = !{!108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__initcall__kmod_rtc_rv3029c2__290_906_rv30x9_init6, !1, !"__initcall__kmod_rtc_rv3029c2__290_906_rv30x9_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 906, i32 1}
!2 = !{ptr @__exitcall_rv30x9_exit, !3, !"__exitcall_rv30x9_exit", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 913, i32 1}
!4 = !{ptr @__UNIQUE_ID_author291, !5, !"__UNIQUE_ID_author291", i1 false, i1 false}
!5 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 915, i32 1}
!6 = !{ptr @__UNIQUE_ID_author292, !7, !"__UNIQUE_ID_author292", i1 false, i1 false}
!7 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 916, i32 1}
!8 = !{ptr @__UNIQUE_ID_description293, !9, !"__UNIQUE_ID_description293", i1 false, i1 false}
!9 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 917, i32 1}
!10 = !{ptr @__UNIQUE_ID_file294, !11, !"__UNIQUE_ID_file294", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 918, i32 1}
!12 = !{ptr @__UNIQUE_ID_license295, !11, !"__UNIQUE_ID_license295", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias296, !14, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!14 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 919, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 864, i32 14}
!17 = !{ptr @rv3049_driver, !18, !"rv3049_driver", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 862, i32 26}
!19 = !{ptr @rv3049_probe._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 855, i32 11}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @config, !23, !"config", i1 false, i1 false}
!23 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 777, i32 35}
!24 = !{ptr @rv3029_regs, !25, !"rv3029_regs", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 772, i32 41}
!26 = !{ptr @rv3029_holes_range, !27, !"rv3029_holes_range", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 763, i32 34}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 710, i32 11}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 740, i32 13}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 742, i32 4}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rv3029_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @rv3029_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 556, i32 38}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 568, i32 3}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rv3029_trickle_config._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @rv3029_trickle_config._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 576, i32 3}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @rv3029_trickle_config._entry.13, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @rv3029_trickle_config._entry_ptr.16, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @rv3029_trickle_tab, !54, !"rv3029_trickle_tab", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 489, i32 3}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 175, i32 4}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rv3029_eeprom_enter._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @rv3029_eeprom_enter._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 136, i32 3}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rv3029_eeprom_busywait._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @rv3029_eeprom_busywait._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 683, i32 3}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rv3029_hwmon_register._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @rv3029_hwmon_register._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @rv3029_hwmon_groups, !71, !"rv3029_hwmon_groups", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 673, i32 1}
!72 = !{ptr @rv3029_hwmon_group, !71, !"rv3029_hwmon_group", i1 false, i1 false}
!73 = !{ptr @rv3029_hwmon_attrs, !74, !"rv3029_hwmon_attrs", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 668, i32 26}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 662, i32 8}
!77 = !{ptr @sensor_dev_attr_temp1_input, !76, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 606, i32 22}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 664, i32 8}
!82 = !{ptr @sensor_dev_attr_update_interval, !81, !"sensor_dev_attr_update_interval", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 276, i32 3}
!85 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rv3029_handle_irq._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @rv3029_handle_irq._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 283, i32 3}
!90 = !{ptr @rv3029_handle_irq._entry.28, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @rv3029_handle_irq._entry_ptr.30, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @rv3029_rtc_ops, !93, !"rv3029_rtc_ops", i1 false, i1 false}
!93 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 696, i32 35}
!94 = !{ptr @rv3029_driver, !95, !"rv3029_driver", i1 false, i1 false}
!95 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 817, i32 26}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 793, i32 3}
!98 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @rv3029_i2c_probe._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @rv3029_i2c_probe._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @rv3029_i2c_probe._key, !102, !"_key", i1 false, i1 false}
!102 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 797, i32 11}
!103 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rv3029_of_match, !105, !"rv3029_of_match", i1 false, i1 false}
!105 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 811, i32 49}
!106 = !{ptr @rv3029_id, !107, !"rv3029_id", i1 false, i1 false}
!107 = !{!"../drivers/rtc/rtc-rv3029c2.c", i32 804, i32 35}
!108 = !{!"sp"}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"auto-init"}
!119 = !{i64 6361219}
!120 = !{i64 6361416}
!121 = !{i64 2153846649}
!122 = !{i64 2155824421, i64 2155824701, i64 2155825035, i64 2155825369}
