; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-meson.c_pt.bc'
source_filename = "../drivers/rtc/rtc-meson.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.meson_rtc = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }

@__initcall__kmod_rtc_meson__298_399_meson_rtc_driver_init6 = internal global ptr @meson_rtc_driver_init, section ".initcall6.init", align 4
@meson_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_rtc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_rtc_driver_exit = internal global ptr @meson_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description299 = internal constant [47 x i8] c"rtc_meson.description=Amlogic Meson RTC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [55 x i8] c"rtc_meson.author=Ben Dooks <ben.doosk@codethink.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [74 x i8] c"rtc_meson.author=Martin Blumenstingl <martin.blumenstingl@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [37 x i8] c"rtc_meson.file=drivers/rtc/rtc-meson\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [25 x i8] c"rtc_meson.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias304 = internal constant [35 x i8] c"rtc_meson.alias=platform:meson-rtc\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"meson-rtc\00", [22 x i8] zeroinitializer }, align 32
@meson_rtc_dt_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson6-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8m2-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"meson-rtc-regmem\00", [47 x i8] zeroinitializer }, align 32
@__const.meson_rtc_probe.meson_rtc_nvmem_config = private unnamed_addr constant { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, [1 x i8], ptr, i8, [3 x i8], ptr, ptr, ptr, i32, i32, i32, ptr, i8, [3 x i8], ptr } { ptr null, ptr @.str.1, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 3, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, ptr null, i8 0, [3 x i8] zeroinitializer, ptr @meson_rtc_regmem_read, ptr @meson_rtc_regmem_write, ptr null, i32 16, i32 4, i32 4, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null }, align 4
@meson_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @meson_rtc_gettime, ptr @meson_rtc_settime, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@meson_rtc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@meson_rtc_peripheral_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.29, i32 8, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"rtc_meson:319:(&meson_rtc_peripheral_regmap_config)->lock\00", [38 x i8] zeroinitializer }, align 32
@meson_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 321, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to create peripheral regmap\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"meson_rtc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/rtc/rtc-meson.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_rtc_probe._entry_ptr = internal global ptr @meson_rtc_probe._entry, section ".printk_index", align 4
@meson_rtc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 327, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"missing reset line\0A\00", [44 x i8] zeroinitializer }, align 32
@meson_rtc_probe._entry_ptr.10 = internal global ptr @meson_rtc_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@meson_rtc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 333, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get the vdd-supply\0A\00", [34 x i8] zeroinitializer }, align 32
@meson_rtc_probe._entry_ptr.14 = internal global ptr @meson_rtc_probe._entry.12, section ".printk_index", align 4
@meson_rtc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 339, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable vdd-supply\0A\00", [35 x i8] zeroinitializer }, align 32
@meson_rtc_probe._entry_ptr.17 = internal global ptr @meson_rtc_probe._entry.15, section ".printk_index", align 4
@meson_rtc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 345, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set static values\0A\00", [35 x i8] zeroinitializer }, align 32
@meson_rtc_probe._entry_ptr.20 = internal global ptr @meson_rtc_probe._entry.18, section ".printk_index", align 4
@meson_rtc_probe._key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@meson_rtc_serial_bus = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @meson_rtc_serial_bus_reg_write, ptr null, ptr null, ptr @meson_rtc_serial_bus_reg_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@meson_rtc_serial_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.36, i32 4, i32 1, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"rtc_meson:350:(&meson_rtc_serial_regmap_config)->lock\00", [42 x i8] zeroinitializer }, align 32
@meson_rtc_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 352, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to create serial regmap\0A\00", [32 x i8] zeroinitializer }, align 32
@meson_rtc_probe._entry_ptr.25 = internal global ptr @meson_rtc_probe._entry.23, section ".printk_index", align 4
@meson_rtc_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 363, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cannot read RTC counter, RTC not functional\0A\00", [51 x i8] zeroinitializer }, align 32
@meson_rtc_probe._entry_ptr.28 = internal global ptr @meson_rtc_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"peripheral-registers\00", [43 x i8] zeroinitializer }, align 32
@meson_rtc_get_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 148, ptr @.str.32, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get bus, resetting RTC\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_rtc_get_bus\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@meson_rtc_get_bus._entry_ptr = internal global ptr @meson_rtc_get_bus._entry, section ".printk_index", align 4
@meson_rtc_get_bus._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.5, i32 155, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bus is not ready\0A\00", [46 x i8] zeroinitializer }, align 32
@meson_rtc_get_bus._entry_ptr.35 = internal global ptr @meson_rtc_get_bus._entry.33, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"serial-registers\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"meson_rtc_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 392, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 395, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"meson_rtc_dt_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 383, i32 49 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 285, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"meson_rtc_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 251, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [35 x i8] c"meson_rtc_peripheral_regmap_config\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 70, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 318, i32 20 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 321, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 327, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 331, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 333, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 339, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 345, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"meson_rtc_serial_bus\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 197, i32 32 }
@___asan_gen_.112 = private unnamed_addr constant [31 x i8] c"meson_rtc_serial_regmap_config\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 202, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 349, i32 16 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 352, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 363, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 71, i32 11 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 148, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 155, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [27 x i8] c"../drivers/rtc/rtc-meson.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 203, i32 11 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_meson_rtc_driver_exit, ptr @__initcall__kmod_rtc_meson__298_399_meson_rtc_driver_init6, ptr @meson_rtc_driver_exit, ptr @meson_rtc_get_bus._entry, ptr @meson_rtc_get_bus._entry.33, ptr @meson_rtc_get_bus._entry_ptr, ptr @meson_rtc_get_bus._entry_ptr.35, ptr @meson_rtc_probe._entry, ptr @meson_rtc_probe._entry.12, ptr @meson_rtc_probe._entry.15, ptr @meson_rtc_probe._entry.18, ptr @meson_rtc_probe._entry.23, ptr @meson_rtc_probe._entry.26, ptr @meson_rtc_probe._entry.8, ptr @meson_rtc_probe._entry_ptr, ptr @meson_rtc_probe._entry_ptr.10, ptr @meson_rtc_probe._entry_ptr.14, ptr @meson_rtc_probe._entry_ptr.17, ptr @meson_rtc_probe._entry_ptr.20, ptr @meson_rtc_probe._entry_ptr.25, ptr @meson_rtc_probe._entry_ptr.28, ptr @meson_rtc_driver, ptr @.str, ptr @meson_rtc_dt_match, ptr @.str.1, ptr @meson_rtc_ops, ptr @meson_rtc_probe._key, ptr @meson_rtc_peripheral_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @meson_rtc_probe._key.21, ptr @meson_rtc_serial_bus, ptr @meson_rtc_serial_regmap_config, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_dt_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_peripheral_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_probe._key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_serial_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_serial_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_get_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_rtc_get_bus._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_rtc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %meson_rtc_nvmem_config = alloca %struct.nvmem_config, align 4
  %tm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %meson_rtc_nvmem_config) #5
  %0 = call ptr @memcpy(ptr %meson_rtc_nvmem_config, ptr @__const.meson_rtc_probe.meson_rtc_nvmem_config, i32 88)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tm) #5
  %1 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tm, align 4, !annotation !93
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev10 = getelementptr inbounds %struct.meson_rtc, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %dev10, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @meson_rtc_ops, ptr %ops, align 8
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 4294967295, ptr %range_max, align 8
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i146 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call18 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call13, ptr noundef nonnull @meson_rtc_peripheral_regmap_config, ptr noundef nonnull @meson_rtc_probe._key, ptr noundef nonnull @.str.2) #5
  %peripheral = getelementptr inbounds %struct.meson_rtc, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %peripheral to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call18, ptr %peripheral, align 4
  %cmp.i147 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  %12 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %peripheral, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %reset = getelementptr inbounds %struct.meson_rtc, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %reset, align 4
  %cmp.i148 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  %16 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %call35 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #5
  %vdd = getelementptr inbounds %struct.meson_rtc, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call35, ptr %vdd, align 4
  %cmp.i149 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %do.end41, label %if.end44

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  %20 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vdd, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %call46 = tail call i32 @regulator_enable(ptr noundef %call35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end52, label %do.end51

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end52:                                         ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %23 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %peripheral, align 4
  %call.i150 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 16, i32 noundef 24) #5
  %25 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 167903232, ptr %tmp.i, align 4
  %26 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %peripheral, align 4
  %call.i.i151 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 0, i32 noundef -16646144, i32 noundef 167903232, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call46.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call46.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 226) #5
  %28 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %peripheral, align 4
  %call6012.i = call i32 @regmap_read(ptr noundef %29, i32 noundef 16, ptr noundef nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6012.i)
  %tobool61.not13.i = icmp eq i32 %call6012.i, 0
  br i1 %tobool61.not13.i, label %if.end52.lor.lhs.false.i_crit_edge, label %if.end52.do.end58_crit_edge

if.end52.do.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end58

if.end52.lor.lhs.false.i_crit_edge:               ; preds = %if.end52
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then75.i.lor.lhs.false.i_crit_edge, %if.end52.lor.lhs.false.i_crit_edge
  %30 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tmp.i, align 4
  %and62.i = and i32 %31, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call67.i = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call67.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call67.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then75.i

if.then75.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %32 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %peripheral, align 4
  %call60.i = call i32 @regmap_read(ptr noundef %33, i32 noundef 16, ptr noundef nonnull %tmp.i) #5
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.then75.i.lor.lhs.false.i_crit_edge, label %if.then75.i.do.end58_crit_edge

if.then75.i.do.end58_crit_edge:                   ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end58

if.then75.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %34 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %peripheral, align 4
  %call72.i = call i32 @regmap_read(ptr noundef %35, i32 noundef 16, ptr noundef nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool79.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool79.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.do.end58_crit_edge

for.end.i.do.end58_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end58

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %36 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tmp.i, align 4
  %and80.i = and i32 %37, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  br i1 %tobool81.not.i, label %if.end59, label %lor.rhs.i.do.end58_crit_edge

lor.rhs.i.do.end58_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end58

do.end58:                                         ; preds = %lor.rhs.i.do.end58_crit_edge, %for.end.i.do.end58_crit_edge, %if.then75.i.do.end58_crit_edge, %if.end52.do.end58_crit_edge
  %tobool79.not5.i.ph = phi i32 [ %call6012.i, %if.end52.do.end58_crit_edge ], [ -110, %lor.rhs.i.do.end58_crit_edge ], [ %call72.i, %for.end.i.do.end58_crit_edge ], [ %call60.i, %if.then75.i.do.end58_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #8
  br label %out_disable_vdd

if.end59:                                         ; preds = %lor.rhs.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  %call61 = call ptr @__devm_regmap_init(ptr noundef %dev1, ptr noundef nonnull @meson_rtc_serial_bus, ptr noundef nonnull %call.i, ptr noundef nonnull @meson_rtc_serial_regmap_config, ptr noundef nonnull @meson_rtc_probe._key.21, ptr noundef nonnull @.str.22) #5
  %serial = getelementptr inbounds %struct.meson_rtc, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call61, ptr %serial, align 4
  %cmp.i152 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %do.end67, label %if.end70

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #8
  %39 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %serial, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %out_disable_vdd

if.end70:                                         ; preds = %if.end59
  %call72 = call i32 @regmap_read(ptr noundef %call61, i32 noundef 0, ptr noundef nonnull %tm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end78, label %do.end77

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #8
  br label %out_disable_vdd

if.end78:                                         ; preds = %if.end70
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %meson_rtc_nvmem_config, i32 0, i32 21
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %priv, align 4
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %call80 = call i32 @devm_rtc_nvmem_register(ptr noundef %44, ptr noundef nonnull %meson_rtc_nvmem_config) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end78.out_disable_vdd_crit_edge

if.end78.out_disable_vdd_crit_edge:               ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_disable_vdd

if.end83:                                         ; preds = %if.end78
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %call85 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end83.cleanup_crit_edge, label %if.end83.out_disable_vdd_crit_edge

if.end83.out_disable_vdd_crit_edge:               ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_disable_vdd

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

out_disable_vdd:                                  ; preds = %if.end83.out_disable_vdd_crit_edge, %if.end78.out_disable_vdd_crit_edge, %do.end77, %do.end67, %do.end58
  %ret.0 = phi i32 [ %tobool79.not5.i.ph, %do.end58 ], [ %41, %do.end67 ], [ %call72, %do.end77 ], [ %call80, %if.end78.out_disable_vdd_crit_edge ], [ %call85, %if.end83.out_disable_vdd_crit_edge ]
  %47 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vdd, align 4
  %call90 = call i32 @regulator_disable(ptr noundef %48) #5
  br label %cleanup

cleanup:                                          ; preds = %out_disable_vdd, %if.end83.cleanup_crit_edge, %do.end51, %do.end41, %do.end31, %do.end, %if.then15, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %10, %if.then15 ], [ %14, %do.end ], [ %18, %do.end31 ], [ %22, %do.end41 ], [ %call46, %do.end51 ], [ %ret.0, %out_disable_vdd ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tm) #5
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %meson_rtc_nvmem_config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_rtc_regmem_read(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr noundef %buf, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div2 = lshr i32 %offset, 2
  %add = add nuw nsw i32 %div2, 4
  %div13 = lshr i32 %bytes, 2
  %serial = getelementptr inbounds %struct.meson_rtc, ptr %context, i32 0, i32 5
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %call = tail call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef %add, ptr noundef %buf, i32 noundef %div13) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_rtc_regmem_write(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr noundef %buf, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div2 = lshr i32 %offset, 2
  %add = add nuw nsw i32 %div2, 4
  %div13 = lshr i32 %bytes, 2
  %serial = getelementptr inbounds %struct.meson_rtc, ptr %context, i32 0, i32 5
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 4
  %call = tail call i32 @regmap_bulk_write(ptr noundef %1, i32 noundef %add, ptr noundef %buf, i32 noundef %div13) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_rtc_gettime(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  %time = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time) #5
  %2 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %time, align 4, !annotation !93
  %serial = getelementptr inbounds %struct.meson_rtc, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %serial, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %time) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %time, align 4
  %conv = zext i32 %6 to i64
  call void @rtc_time64_to_tm(i64 noundef %conv, ptr noundef %tm) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_rtc_settime(ptr nocapture noundef readonly %dev, ptr noundef %tm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %serial = getelementptr inbounds %struct.meson_rtc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serial, align 4
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %tm) #5
  %conv = trunc i64 %call1 to i32
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef %conv) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_rtc_serial_bus_reg_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @meson_rtc_get_bus(ptr noundef %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %peripheral = getelementptr inbounds %struct.meson_rtc, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peripheral, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call fastcc void @meson_rtc_send_bits(ptr noundef %context, i32 noundef %data, i32 noundef 32)
  tail call fastcc void @meson_rtc_send_bits(ptr noundef %context, i32 noundef %reg, i32 noundef 3)
  tail call fastcc void @meson_rtc_set_dir(ptr noundef %context, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_rtc_serial_bus_reg_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @meson_rtc_get_bus(ptr noundef %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %peripheral = getelementptr inbounds %struct.meson_rtc, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peripheral, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call fastcc void @meson_rtc_send_bits(ptr noundef %context, i32 noundef %reg, i32 noundef 3)
  tail call fastcc void @meson_rtc_set_dir(ptr noundef %context, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !93
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %bit.06.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %val.05.i = phi i32 [ 0, %if.end ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %3(i32 noundef 1073740) #5
  %4 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peripheral, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %6(i32 noundef 1073740) #5
  %7 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %peripheral, align 4
  %call.i4.i.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %shl.i = shl i32 %val.05.i, 1
  %9 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peripheral, align 4
  %call.i9 = call i32 @regmap_read(ptr noundef %10, i32 noundef 4, ptr noundef nonnull %tmp.i) #5
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp.i, align 4
  %and.i = and i32 %12, 1
  %or.i = or i32 %and.i, %shl.i
  %inc.i = add nuw nsw i32 %bit.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %meson_rtc_get_data.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

meson_rtc_get_data.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %meson_rtc_get_data.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %meson_rtc_get_data.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_rtc_get_bus(ptr nocapture noundef readonly %rtc) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 7, ptr %val, align 4
  %peripheral = getelementptr inbounds %struct.meson_rtc, ptr %rtc, i32 0, i32 4
  %1 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %peripheral, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 0, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %dev = getelementptr inbounds %struct.meson_rtc, ptr %rtc, i32 0, i32 1
  %reset = getelementptr inbounds %struct.meson_rtc, ptr %rtc, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %do.end38
  %inc = add nuw nsw i32 %retries.082, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.end46, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %retries.082 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %call1 = call i64 @ktime_get() #5
  %add.i = add i64 %call1, 10000000
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 145) #5
  %3 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %peripheral, align 4
  %call1280 = call i32 @regmap_read(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1280)
  %tobool.not81 = icmp eq i32 %call1280, 0
  br i1 %tobool.not81, label %for.body.lor.lhs.false_crit_edge, label %for.body.do.end38_crit_edge

for.body.do.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then25.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %land.lhs.true, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call17 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %7 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %peripheral, align 4
  %call12 = call i32 @regmap_read(ptr noundef %8, i32 noundef 4, ptr noundef nonnull %val) #5
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then25.lor.lhs.false_crit_edge, label %if.then25.do.end38_crit_edge

if.then25.do.end38_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

if.then25.lor.lhs.false_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %9 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %peripheral, align 4
  %call22 = call i32 @regmap_read(ptr noundef %10, i32 noundef 4, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool27.not = icmp eq i32 %call22, 0
  br i1 %tobool27.not, label %for.end.lor.end_crit_edge, label %for.end.do.end38_crit_edge

for.end.do.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and28 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %lor.end.do.end38_crit_edge, label %lor.end.cleanup_crit_edge

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.end.do.end38_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

do.end38:                                         ; preds = %lor.end.do.end38_crit_edge, %for.end.do.end38_crit_edge, %if.then25.do.end38_crit_edge, %for.body.do.end38_crit_edge
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.30) #8
  %15 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reset, align 4
  %call39 = call i32 @reset_control_reset(ptr noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.cond, label %do.end38.cleanup_crit_edge

do.end38.cleanup_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end46:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.34) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %do.end38.cleanup_crit_edge, %lor.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end46 ], [ 0, %lor.end.cleanup_crit_edge ], [ %call39, %do.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_rtc_send_bits(ptr nocapture noundef readonly %rtc, i32 noundef %data, i32 noundef %nr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %nr, -1
  %shl = shl nuw i32 1, %sub
  %peripheral.i = getelementptr inbounds %struct.meson_rtc, ptr %rtc, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %bit.03 = phi i32 [ %shl, %entry ], [ %shr, %while.body.while.body_crit_edge ]
  %and = and i32 %bit.03, %data
  %0 = ptrtoint ptr %peripheral.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peripheral.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 4, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 1073740) #5
  %3 = ptrtoint ptr %peripheral.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %peripheral.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #5
  %6 = ptrtoint ptr %peripheral.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peripheral.i, align 4
  %call.i4.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %shr = lshr i32 %bit.03, 1
  %tobool.not = icmp ult i32 %bit.03, 2
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_rtc_set_dir(ptr nocapture noundef readonly %rtc, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %peripheral = getelementptr inbounds %struct.meson_rtc, ptr %rtc, i32 0, i32 4
  %0 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peripheral, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %2 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peripheral, align 4
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %4 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peripheral, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %tobool.not.i = icmp eq i32 %mode, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 4, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 1073740) #5
  %7 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %peripheral, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 1073740) #5
  %10 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %peripheral, align 4
  %call.i4.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %12 = ptrtoint ptr %peripheral to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %peripheral, align 4
  %call.i9 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !71, !72, !73, !74, !76, !77, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_rtc_meson__298_399_meson_rtc_driver_init6, !1, !"__initcall__kmod_rtc_meson__298_399_meson_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-meson.c", i32 399, i32 1}
!2 = !{ptr @__exitcall_meson_rtc_driver_exit, !1, !"__exitcall_meson_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description299, !4, !"__UNIQUE_ID_description299", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-meson.c", i32 401, i32 1}
!5 = !{ptr @__UNIQUE_ID_author300, !6, !"__UNIQUE_ID_author300", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-meson.c", i32 402, i32 1}
!7 = !{ptr @__UNIQUE_ID_author301, !8, !"__UNIQUE_ID_author301", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-meson.c", i32 403, i32 1}
!9 = !{ptr @__UNIQUE_ID_file302, !10, !"__UNIQUE_ID_file302", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-meson.c", i32 404, i32 1}
!11 = !{ptr @__UNIQUE_ID_license303, !10, !"__UNIQUE_ID_license303", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias304, !13, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-meson.c", i32 405, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-meson.c", i32 395, i32 12}
!16 = !{ptr @meson_rtc_driver, !17, !"meson_rtc_driver", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-meson.c", i32 392, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-meson.c", i32 285, i32 11}
!20 = !{ptr @meson_rtc_probe._key, !21, !"_key", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-meson.c", i32 318, i32 20}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/rtc/rtc-meson.c", i32 321, i32 3}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @meson_rtc_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @meson_rtc_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-meson.c", i32 327, i32 3}
!33 = !{ptr @meson_rtc_probe._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @meson_rtc_probe._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-meson.c", i32 331, i32 37}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-meson.c", i32 333, i32 3}
!39 = !{ptr @meson_rtc_probe._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @meson_rtc_probe._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-meson.c", i32 339, i32 3}
!43 = !{ptr @meson_rtc_probe._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @meson_rtc_probe._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-meson.c", i32 345, i32 3}
!47 = !{ptr @meson_rtc_probe._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @meson_rtc_probe._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @meson_rtc_probe._key.21, !50, !"_key", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-meson.c", i32 349, i32 16}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rtc/rtc-meson.c", i32 352, i32 3}
!54 = !{ptr @meson_rtc_probe._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @meson_rtc_probe._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-meson.c", i32 363, i32 3}
!58 = !{ptr @meson_rtc_probe._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @meson_rtc_probe._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @meson_rtc_ops, !61, !"meson_rtc_ops", i1 false, i1 false}
!61 = !{!"../drivers/rtc/rtc-meson.c", i32 251, i32 35}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/rtc/rtc-meson.c", i32 71, i32 11}
!64 = !{ptr @meson_rtc_peripheral_regmap_config, !65, !"meson_rtc_peripheral_regmap_config", i1 false, i1 false}
!65 = !{!"../drivers/rtc/rtc-meson.c", i32 70, i32 35}
!66 = !{ptr @meson_rtc_serial_bus, !67, !"meson_rtc_serial_bus", i1 false, i1 false}
!67 = !{!"../drivers/rtc/rtc-meson.c", i32 197, i32 32}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/rtc/rtc-meson.c", i32 148, i32 3}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @meson_rtc_get_bus._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @meson_rtc_get_bus._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-meson.c", i32 155, i32 2}
!76 = !{ptr @meson_rtc_get_bus._entry.33, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @meson_rtc_get_bus._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/rtc/rtc-meson.c", i32 203, i32 11}
!80 = !{ptr @meson_rtc_serial_regmap_config, !81, !"meson_rtc_serial_regmap_config", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-meson.c", i32 202, i32 35}
!82 = !{ptr @meson_rtc_dt_match, !83, !"meson_rtc_dt_match", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-meson.c", i32 383, i32 49}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
