; ModuleID = '/llk/IR_all_yes/drivers/power/supply/pcf50633-charger.c_pt.bc'
source_filename = "../drivers/power/supply/pcf50633-charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pcf50633_mbc_usb_curlim_set\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_mbc_usb_curlim_set\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_mbc_usb_curlim_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_mbc_usb_curlim_set:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_mbc_usb_curlim_set\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_mbc_usb_curlim_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_mbc_get_status\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_mbc_get_status\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_mbc_get_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_mbc_get_status:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_mbc_get_status\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_mbc_get_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_mbc_get_usb_online_status\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_mbc_get_usb_online_status\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_mbc_get_usb_online_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_mbc_get_usb_online_status:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_mbc_get_usb_online_status\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_mbc_get_usb_online_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pcf50633 = type { ptr, ptr, ptr, i32, [40 x %struct.pcf50633_irq], %struct.work_struct, ptr, %struct.mutex, [5 x i8], [5 x i8], [5 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }
%struct.pcf50633_irq = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pcf50633_platform_data = type { [11 x %struct.regulator_init_data], ptr, i32, i32, ptr, ptr, ptr, ptr, [5 x i8], ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.pcf50633_mbc = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }

@pcf50633_mbc_usb_curlim_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error setting usb curlim to %d mA\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pcf50633_mbc_usb_curlim_set\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/power/supply/pcf50633-charger.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcf50633_mbc_usb_curlim_set._entry_ptr = internal global ptr @pcf50633_mbc_usb_curlim_set._entry, section ".printk_index", align 4
@pcf50633_mbc_usb_curlim_set._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 63, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usb curlim to %d mA\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pcf50633_mbc_usb_curlim_set._entry_ptr.8 = internal global ptr @pcf50633_mbc_usb_curlim_set._entry.5, section ".printk_index", align 4
@__kstrtab_pcf50633_mbc_usb_curlim_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_mbc_usb_curlim_set = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_mbc_usb_curlim_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_mbc_usb_curlim_set to i32), ptr @__kstrtab_pcf50633_mbc_usb_curlim_set, ptr @__kstrtabns_pcf50633_mbc_usb_curlim_set }, section "___ksymtab_gpl+pcf50633_mbc_usb_curlim_set", align 4
@__kstrtab_pcf50633_mbc_get_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_mbc_get_status = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_mbc_get_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_mbc_get_status to i32), ptr @__kstrtab_pcf50633_mbc_get_status, ptr @__kstrtabns_pcf50633_mbc_get_status }, section "___ksymtab_gpl+pcf50633_mbc_get_status", align 4
@__kstrtab_pcf50633_mbc_get_usb_online_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_mbc_get_usb_online_status = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_mbc_get_usb_online_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_mbc_get_usb_online_status to i32), ptr @__kstrtab_pcf50633_mbc_get_usb_online_status, ptr @__kstrtabns_pcf50633_mbc_get_usb_online_status }, section "___ksymtab_gpl+pcf50633_mbc_get_usb_online_status", align 4
@__initcall__kmod_pcf50633_charger__288_468_pcf50633_mbc_driver_init6 = internal global ptr @pcf50633_mbc_driver_init, section ".initcall6.init", align 4
@pcf50633_mbc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pcf50633_mbc_probe, ptr @pcf50633_mbc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pcf50633_mbc_driver_exit = internal global ptr @pcf50633_mbc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [61 x i8] c"pcf50633_charger.author=Balaji Rao <balajirrao@openmoko.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [49 x i8] c"pcf50633_charger.description=PCF50633 mbc driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [60 x i8] c"pcf50633_charger.file=drivers/power/supply/pcf50633-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"pcf50633_charger.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [45 x i8] c"pcf50633_charger.alias=platform:pcf50633-mbc\00", section ".modinfo", align 1
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcf50633-mbc\00", [19 x i8] zeroinitializer }, align 32
@pcf50633_mbc_adapter_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.18, i32 3, ptr null, i32 0, ptr @power_props, i32 1, ptr @adapter_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@pcf50633_mbc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 411, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register adapter\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcf50633_mbc_probe\00", [45 x i8] zeroinitializer }, align 32
@pcf50633_mbc_probe._entry_ptr = internal global ptr @pcf50633_mbc_probe._entry, section ".printk_index", align 4
@pcf50633_mbc_sysfs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pcf50633_mbc_sysfs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@pcf50633_mbc_usb_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.24, i32 4, ptr null, i32 0, ptr @power_props, i32 1, ptr @usb_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@pcf50633_mbc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 421, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to register usb\0A\00", [40 x i8] zeroinitializer }, align 32
@pcf50633_mbc_probe._entry_ptr.14 = internal global ptr @pcf50633_mbc_probe._entry.12, section ".printk_index", align 4
@pcf50633_mbc_ac_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.25, i32 3, ptr null, i32 0, ptr @power_props, i32 1, ptr @ac_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@pcf50633_mbc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 429, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to register ac\0A\00", [41 x i8] zeroinitializer }, align 32
@pcf50633_mbc_probe._entry_ptr.17 = internal global ptr @pcf50633_mbc_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adapter\00", [24 x i8] zeroinitializer }, align 32
@power_props = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@pcf50633_mbc_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pcf50633_mbc_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pcf50633_mbc_sysfs_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_chgmode, ptr @dev_attr_usb_curlim, ptr @dev_attr_chg_curlim, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_chgmode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_chgmode, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_usb_curlim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_usblim, ptr @set_usblim }, [36 x i8] zeroinitializer }, align 32
@dev_attr_chg_curlim = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_chglim, ptr @set_chglim }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chgmode\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb_curlim\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chg_curlim\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ac\00", [29 x i8] zeroinitializer }, align 32
@switch.table.show_usblim = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1000, i32 0, i32 100, i32 500], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 61, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 63, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"pcf50633_mbc_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 460, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 462, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [26 x i8] c"pcf50633_mbc_adapter_desc\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 358, i32 39 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 411, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [26 x i8] c"pcf50633_mbc_sysfs_groups\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"pcf50633_mbc_usb_desc\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 366, i32 39 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 421, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"pcf50633_mbc_ac_desc\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 374, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 429, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 359, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"power_props\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 339, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant [25 x i8] c"pcf50633_mbc_sysfs_group\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 250, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [25 x i8] c"pcf50633_mbc_sysfs_attrs\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 243, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"dev_attr_chgmode\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c"dev_attr_usb_curlim\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"dev_attr_chg_curlim\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 158, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 156, i32 22 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 196, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 177, i32 22 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 241, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 367, i32 11 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [43 x i8] c"../drivers/power/supply/pcf50633-charger.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 375, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant [25 x i8] c"switch.table.show_usblim\00", align 1
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pcf50633_mbc_driver_exit, ptr @__initcall__kmod_pcf50633_charger__288_468_pcf50633_mbc_driver_init6, ptr @__ksymtab_pcf50633_mbc_get_status, ptr @__ksymtab_pcf50633_mbc_get_usb_online_status, ptr @__ksymtab_pcf50633_mbc_usb_curlim_set, ptr @pcf50633_mbc_driver_exit, ptr @pcf50633_mbc_probe._entry, ptr @pcf50633_mbc_probe._entry.12, ptr @pcf50633_mbc_probe._entry.15, ptr @pcf50633_mbc_probe._entry_ptr, ptr @pcf50633_mbc_probe._entry_ptr.14, ptr @pcf50633_mbc_probe._entry_ptr.17, ptr @pcf50633_mbc_usb_curlim_set._entry, ptr @pcf50633_mbc_usb_curlim_set._entry.5, ptr @pcf50633_mbc_usb_curlim_set._entry_ptr, ptr @pcf50633_mbc_usb_curlim_set._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @pcf50633_mbc_driver, ptr @.str.9, ptr @pcf50633_mbc_adapter_desc, ptr @.str.10, ptr @.str.11, ptr @pcf50633_mbc_sysfs_groups, ptr @pcf50633_mbc_usb_desc, ptr @.str.13, ptr @pcf50633_mbc_ac_desc, ptr @.str.16, ptr @.str.18, ptr @power_props, ptr @pcf50633_mbc_sysfs_group, ptr @pcf50633_mbc_sysfs_attrs, ptr @dev_attr_chgmode, ptr @dev_attr_usb_curlim, ptr @dev_attr_chg_curlim, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @switch.table.show_usblim], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_mbc_usb_curlim_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_mbc_usb_curlim_set._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_mbc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_mbc_adapter_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_mbc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_mbc_sysfs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_mbc_usb_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_mbc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_mbc_ac_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_mbc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_props to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_mbc_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_mbc_sysfs_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chgmode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usb_curlim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_chg_curlim to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.show_usblim to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_mbc_usb_curlim_set(ptr noundef %pcf, i32 noundef %ma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mbc_pdev = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 14
  %0 = ptrtoint ptr %mbc_pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbc_pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %ma)
  %cmp = icmp sgt i32 %ma, 999
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %ma)
  %cmp1 = icmp sgt i32 %ma, 499
  br i1 %cmp1, label %if.else.if.end8_crit_edge, label %if.else3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %ma)
  %cmp4 = icmp sgt i32 %ma, 99
  %. = select i1 %cmp4, i32 100, i32 0
  %.59 = select i1 %cmp4, i8 0, i8 3
  br label %if.end8

if.end8:                                          ; preds = %if.else3, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %ma.addr.0 = phi i32 [ 1000, %entry.if.end8_crit_edge ], [ 500, %if.else.if.end8_crit_edge ], [ %., %if.else3 ]
  %bits.0 = phi i8 [ 2, %entry.if.end8_crit_edge ], [ 1, %if.else.if.end8_crit_edge ], [ %.59, %if.else3 ]
  %call9 = tail call i32 @pcf50633_reg_set_bit_mask(ptr noundef %pcf, i8 noundef zeroext 73, i8 noundef zeroext 3, i8 noundef zeroext %bits.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  %4 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcf, align 4
  br i1 %tobool.not, label %do.end14, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %ma.addr.0) #11
  br label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %ma.addr.0) #11
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %do.end
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %pdata = getelementptr inbounds %struct.pcf50633, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 4
  %charger_reference_current_ma = getelementptr inbounds %struct.pcf50633_platform_data, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %charger_reference_current_ma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %charger_reference_current_ma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool18.not = icmp eq i32 %11, 0
  br i1 %tobool18.not, label %if.end16.if.end28_crit_edge, label %if.then19

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw nsw i32 %ma.addr.0, 8
  %div = sdiv i32 %shl, %11
  %12 = tail call i32 @llvm.umin.i32(i32 %div, i32 255)
  %conv = trunc i32 %12 to i8
  %call27 = tail call i32 @pcf50633_reg_write(ptr noundef %7, i8 noundef zeroext 71, i8 noundef zeroext %conv) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then19, %if.end16.if.end28_crit_edge
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %call30 = tail call zeroext i8 @pcf50633_reg_read(ptr noundef %14, i8 noundef zeroext 76) #8
  %15 = and i8 %call30, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %15)
  %cmp34.not = icmp eq i8 %15, 10
  br i1 %cmp34.not, label %if.else38, label %if.end28.if.end41_crit_edge

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.else38:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call i32 @pcf50633_reg_clear_bits(ptr noundef %pcf, i8 noundef zeroext 67, i8 noundef zeroext 1) #8
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.end28.if.end41_crit_edge
  %call40 = tail call i32 @pcf50633_reg_set_bit_mask(ptr noundef %pcf, i8 noundef zeroext 67, i8 noundef zeroext 1, i8 noundef zeroext 1) #8
  %usb = getelementptr inbounds %struct.pcf50633_mbc, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb, align 4
  tail call void @power_supply_changed(ptr noundef %17) #8
  ret i32 %call9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_reg_set_bit_mask(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pcf50633_reg_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_reg_clear_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_mbc_get_status(ptr nocapture noundef readonly %pcf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mbc_pdev = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 14
  %0 = ptrtoint ptr %mbc_pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbc_pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call zeroext i8 @pcf50633_reg_read(ptr noundef %5, i8 noundef zeroext 76) #8
  %6 = and i8 %call2, 15
  %usb_online = getelementptr inbounds %struct.pcf50633_mbc, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %usb_online to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usb_online, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp ne i32 %8, 0
  %spec.select = zext i1 %tobool4.not to i32
  %.off = add nsw i8 %6, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off)
  %switch = icmp ult i8 %.off, 4
  %or21 = or i32 %spec.select, 2
  %spec.select62 = select i1 %switch, i32 %or21, i32 %spec.select
  %adapter_online = getelementptr inbounds %struct.pcf50633_mbc, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %adapter_online to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %adapter_online, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool23.not = icmp eq i32 %10, 0
  %or25 = or i32 %spec.select62, 4
  %spec.select61 = select i1 %tobool23.not, i32 %spec.select62, i32 %or25
  %.off63 = add nsw i8 %6, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off63)
  %switch64 = icmp ult i8 %.off63, 4
  %or43 = or i32 %spec.select61, 8
  %spec.select65 = select i1 %switch64, i32 %or43, i32 %spec.select61
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select65, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pcf50633_mbc_get_usb_online_status(ptr nocapture noundef readonly %pcf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mbc_pdev = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 14
  %0 = ptrtoint ptr %mbc_pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbc_pdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %usb_online = getelementptr inbounds %struct.pcf50633_mbc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %usb_online to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_online, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_mbc_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pcf50633_mbc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcf50633_mbc_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @pcf50633_mbc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_mbc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  %usb_psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #8
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %usb_psy_cfg) #8
  %1 = getelementptr inbounds %struct.power_supply_config, ptr %usb_psy_cfg, i32 0, i32 3
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %driver_data.i.i95 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i95 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i95, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call.i, align 4
  %call4 = tail call i32 @pcf50633_register_irq(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @pcf50633_mbc_irq_handler, ptr noundef nonnull %call.i) #8
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %call4.1 = tail call i32 @pcf50633_register_irq(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @pcf50633_mbc_irq_handler, ptr noundef nonnull %call.i) #8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %call4.2 = tail call i32 @pcf50633_register_irq(ptr noundef %11, i32 noundef 2, ptr noundef nonnull @pcf50633_mbc_irq_handler, ptr noundef nonnull %call.i) #8
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %call4.3 = tail call i32 @pcf50633_register_irq(ptr noundef %13, i32 noundef 3, ptr noundef nonnull @pcf50633_mbc_irq_handler, ptr noundef nonnull %call.i) #8
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %call4.4 = tail call i32 @pcf50633_register_irq(ptr noundef %15, i32 noundef 16, ptr noundef nonnull @pcf50633_mbc_irq_handler, ptr noundef nonnull %call.i) #8
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %call4.5 = tail call i32 @pcf50633_register_irq(ptr noundef %17, i32 noundef 17, ptr noundef nonnull @pcf50633_mbc_irq_handler, ptr noundef nonnull %call.i) #8
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call4.6 = tail call i32 @pcf50633_register_irq(ptr noundef %19, i32 noundef 18, ptr noundef nonnull @pcf50633_mbc_irq_handler, ptr noundef nonnull %call.i) #8
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %call4.7 = tail call i32 @pcf50633_register_irq(ptr noundef %21, i32 noundef 19, ptr noundef nonnull @pcf50633_mbc_irq_handler, ptr noundef nonnull %call.i) #8
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %call4.8 = tail call i32 @pcf50633_register_irq(ptr noundef %23, i32 noundef 20, ptr noundef nonnull @pcf50633_mbc_irq_handler, ptr noundef nonnull %call.i) #8
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %call4.9 = tail call i32 @pcf50633_register_irq(ptr noundef %25, i32 noundef 21, ptr noundef nonnull @pcf50633_mbc_irq_handler, ptr noundef nonnull %call.i) #8
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %call4.10 = tail call i32 @pcf50633_register_irq(ptr noundef %27, i32 noundef 24, ptr noundef nonnull @pcf50633_mbc_irq_handler, ptr noundef nonnull %call.i) #8
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %call4.11 = tail call i32 @pcf50633_register_irq(ptr noundef %29, i32 noundef 25, ptr noundef nonnull @pcf50633_mbc_irq_handler, ptr noundef nonnull %call.i) #8
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %pdata = getelementptr inbounds %struct.pcf50633, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata, align 4
  %batteries = getelementptr inbounds %struct.pcf50633_platform_data, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %batteries to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %batteries, align 4
  %supplied_to = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 4
  %36 = ptrtoint ptr %supplied_to to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %supplied_to, align 4
  %37 = load ptr, ptr %pdata, align 4
  %num_batteries = getelementptr inbounds %struct.pcf50633_platform_data, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %num_batteries to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_batteries, align 4
  %num_supplicants = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 5
  %40 = ptrtoint ptr %num_supplicants to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %num_supplicants, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %41 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %drv_data, align 4
  %call9 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @pcf50633_mbc_adapter_desc, ptr noundef nonnull %psy_cfg) #8
  %adapter = getelementptr inbounds %struct.pcf50633_mbc, ptr %call.i, i32 0, i32 4
  %42 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call9, ptr %adapter, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.10) #11
  %47 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %50 = call ptr @memcpy(ptr %usb_psy_cfg, ptr %psy_cfg, i32 24)
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @pcf50633_mbc_sysfs_groups, ptr %1, align 4
  %call19 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @pcf50633_mbc_usb_desc, ptr noundef nonnull %usb_psy_cfg) #8
  %usb = getelementptr inbounds %struct.pcf50633_mbc, ptr %call.i, i32 0, i32 3
  %52 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call19, ptr %usb, align 4
  %cmp.i96 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96, label %do.end25, label %if.end31

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.13) #11
  %57 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter, align 4
  call void @power_supply_unregister(ptr noundef %58) #8
  %59 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %usb, align 4
  %61 = ptrtoint ptr %60 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end17
  %call33 = call ptr @power_supply_register(ptr noundef %dev, ptr noundef nonnull @pcf50633_mbc_ac_desc, ptr noundef nonnull %psy_cfg) #8
  %ac = getelementptr inbounds %struct.pcf50633_mbc, ptr %call.i, i32 0, i32 5
  %62 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call33, ptr %ac, align 4
  %cmp.i97 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i97, label %do.end39, label %if.end46

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.16) #11
  %67 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %adapter, align 4
  call void @power_supply_unregister(ptr noundef %68) #8
  %69 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %usb, align 4
  call void @power_supply_unregister(ptr noundef %70) #8
  %71 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ac, align 4
  %73 = ptrtoint ptr %72 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end31
  %call48 = call zeroext i8 @pcf50633_reg_read(ptr noundef %64, i8 noundef zeroext 75) #8
  %conv49 = zext i8 %call48 to i32
  %and = and i32 %conv49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %if.end46.if.end52_crit_edge, label %if.then51

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then51:                                        ; preds = %if.end46
  %usb_online.i = getelementptr inbounds %struct.pcf50633_mbc, ptr %call.i, i32 0, i32 2
  %74 = ptrtoint ptr %usb_online.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %usb_online.i, align 4
  %75 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ac, align 4
  call void @power_supply_changed(ptr noundef %76) #8
  %77 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %usb, align 4
  call void @power_supply_changed(ptr noundef %78) #8
  %79 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %adapter, align 4
  call void @power_supply_changed(ptr noundef %80) #8
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i, align 4
  %pdata.i = getelementptr inbounds %struct.pcf50633, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdata.i, align 4
  %mbc_event_callback.i = getelementptr inbounds %struct.pcf50633_platform_data, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %mbc_event_callback.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mbc_event_callback.i, align 4
  %tobool.not.i = icmp eq ptr %86, null
  br i1 %tobool.not.i, label %if.then51.if.end52_crit_edge, label %if.then14.i

if.then51.if.end52_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then14.i:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  call void %86(ptr noundef %82, i32 noundef 2) #8
  br label %if.end52

if.end52:                                         ; preds = %if.then14.i, %if.then51.if.end52_crit_edge, %if.end46.if.end52_crit_edge
  %and54 = and i32 %conv49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.cleanup_crit_edge, label %if.then56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then56:                                        ; preds = %if.end52
  %adapter_online.i = getelementptr inbounds %struct.pcf50633_mbc, ptr %call.i, i32 0, i32 1
  %87 = ptrtoint ptr %adapter_online.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %adapter_online.i, align 4
  %88 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ac, align 4
  call void @power_supply_changed(ptr noundef %89) #8
  %90 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %usb, align 4
  call void @power_supply_changed(ptr noundef %91) #8
  %92 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adapter, align 4
  call void @power_supply_changed(ptr noundef %93) #8
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call.i, align 4
  %pdata.i101 = getelementptr inbounds %struct.pcf50633, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %pdata.i101 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdata.i101, align 4
  %mbc_event_callback.i102 = getelementptr inbounds %struct.pcf50633_platform_data, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %mbc_event_callback.i102 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mbc_event_callback.i102, align 4
  %tobool.not.i103 = icmp eq ptr %99, null
  br i1 %tobool.not.i103, label %if.then56.cleanup_crit_edge, label %if.then14.i104

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14.i104:                                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  call void %99(ptr noundef %95, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then14.i104, %if.then56.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %do.end39, %do.end25, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %49, %do.end ], [ %61, %do.end25 ], [ %73, %do.end39 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ], [ 0, %if.then56.cleanup_crit_edge ], [ 0, %if.then14.i104 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %usb_psy_cfg) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_mbc_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @pcf50633_free_irq(ptr noundef %3, i32 noundef 0) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call1.1 = tail call i32 @pcf50633_free_irq(ptr noundef %5, i32 noundef 1) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call1.2 = tail call i32 @pcf50633_free_irq(ptr noundef %7, i32 noundef 2) #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call1.3 = tail call i32 @pcf50633_free_irq(ptr noundef %9, i32 noundef 3) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call1.4 = tail call i32 @pcf50633_free_irq(ptr noundef %11, i32 noundef 16) #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call1.5 = tail call i32 @pcf50633_free_irq(ptr noundef %13, i32 noundef 17) #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call1.6 = tail call i32 @pcf50633_free_irq(ptr noundef %15, i32 noundef 18) #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call1.7 = tail call i32 @pcf50633_free_irq(ptr noundef %17, i32 noundef 19) #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call1.8 = tail call i32 @pcf50633_free_irq(ptr noundef %19, i32 noundef 20) #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call1.9 = tail call i32 @pcf50633_free_irq(ptr noundef %21, i32 noundef 21) #8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call1.10 = tail call i32 @pcf50633_free_irq(ptr noundef %23, i32 noundef 24) #8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call1.11 = tail call i32 @pcf50633_free_irq(ptr noundef %25, i32 noundef 25) #8
  %usb = getelementptr inbounds %struct.pcf50633_mbc, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb, align 4
  tail call void @power_supply_unregister(ptr noundef %27) #8
  %adapter = getelementptr inbounds %struct.pcf50633_mbc, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 4
  tail call void @power_supply_unregister(ptr noundef %29) #8
  %ac = getelementptr inbounds %struct.pcf50633_mbc, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ac, align 4
  tail call void @power_supply_unregister(ptr noundef %31) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_register_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcf50633_mbc_irq_handler(i32 noundef %irq, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %irq to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %irq, label %entry.if.end12_crit_edge [
    i32 2, label %if.then
    i32 3, label %if.then2
    i32 0, label %if.then6
    i32 1, label %if.then9
  ]

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %usb_online = getelementptr inbounds %struct.pcf50633_mbc, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %usb_online to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %usb_online, align 4
  br label %if.end12

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %usb_online3 = getelementptr inbounds %struct.pcf50633_mbc, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %usb_online3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_online3, align 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %call = tail call i32 @pcf50633_mbc_usb_curlim_set(ptr noundef %4, i32 noundef 0)
  br label %if.end12

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %adapter_online = getelementptr inbounds %struct.pcf50633_mbc, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %adapter_online to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %adapter_online, align 4
  br label %if.end12

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %adapter_online10 = getelementptr inbounds %struct.pcf50633_mbc, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %adapter_online10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %adapter_online10, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then6, %if.then2, %if.then, %entry.if.end12_crit_edge
  %ac = getelementptr inbounds %struct.pcf50633_mbc, ptr %data, i32 0, i32 5
  %7 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ac, align 4
  tail call void @power_supply_changed(ptr noundef %8) #8
  %usb = getelementptr inbounds %struct.pcf50633_mbc, ptr %data, i32 0, i32 3
  %9 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb, align 4
  tail call void @power_supply_changed(ptr noundef %10) #8
  %adapter = getelementptr inbounds %struct.pcf50633_mbc, ptr %data, i32 0, i32 4
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 4
  tail call void @power_supply_changed(ptr noundef %12) #8
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %pdata = getelementptr inbounds %struct.pcf50633, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdata, align 4
  %mbc_event_callback = getelementptr inbounds %struct.pcf50633_platform_data, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %mbc_event_callback to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mbc_event_callback, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end12.if.end19_crit_edge, label %if.then14

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %18(ptr noundef %14, i32 noundef %irq) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end12.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adapter_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %psp)
  %cond = icmp eq i32 %psp, 4
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %adapter_online = getelementptr inbounds %struct.pcf50633_mbc, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %adapter_online to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adapter_online, align 4
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_chgmode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call zeroext i8 @pcf50633_reg_read(ptr noundef %3, i8 noundef zeroext 76) #8
  %4 = and i8 %call1, 15
  %conv3 = zext i8 %4 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %conv3)
  ret i32 %call4
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_usblim(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call zeroext i8 @pcf50633_reg_read(ptr noundef %3, i8 noundef zeroext 73) #8
  %4 = and i8 %call1, 3
  %5 = xor i8 %4, 2
  %6 = zext i8 %5 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.show_usblim, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %switch.load)
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_usblim(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %ma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ma) #8
  %2 = ptrtoint ptr %ma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ma, align 4, !annotation !91
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %ma) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %ma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ma, align 4
  %call2 = call i32 @pcf50633_mbc_usb_curlim_set(ptr noundef %4, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ma) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_chglim(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call zeroext i8 @pcf50633_reg_read(ptr noundef %3, i8 noundef zeroext 71) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %pdata = getelementptr inbounds %struct.pcf50633, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %charger_reference_current_ma = getelementptr inbounds %struct.pcf50633_platform_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %charger_reference_current_ma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %charger_reference_current_ma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %call1 to i32
  %mul = mul i32 %9, %conv
  %shr = ashr i32 %mul, 8
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %shr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_chglim(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %ma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ma) #8
  %2 = ptrtoint ptr %ma to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ma, align 4, !annotation !91
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %pdata = getelementptr inbounds %struct.pcf50633, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata, align 4
  %charger_reference_current_ma = getelementptr inbounds %struct.pcf50633_platform_data, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %charger_reference_current_ma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %charger_reference_current_ma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %ma) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %ma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ma, align 4
  %shl = shl i32 %10, 8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %pdata6 = getelementptr inbounds %struct.pcf50633, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %pdata6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata6, align 4
  %charger_reference_current_ma7 = getelementptr inbounds %struct.pcf50633_platform_data, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %charger_reference_current_ma7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %charger_reference_current_ma7, align 4
  %div = udiv i32 %shl, %16
  %17 = call i32 @llvm.umin.i32(i32 %div, i32 255)
  %conv = trunc i32 %17 to i8
  %call11 = call i32 @pcf50633_reg_write(ptr noundef %12, i8 noundef zeroext 71, i8 noundef zeroext %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -19, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ma) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %call1 = tail call zeroext i8 @pcf50633_reg_read(ptr noundef %1, i8 noundef zeroext 73) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %psp)
  %cond = icmp eq i32 %psp, 4
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %usb_online = getelementptr inbounds %struct.pcf50633_mbc, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %usb_online to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usb_online, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = lshr i8 %call1, 1
  %.lobit = and i8 %4, 1
  %5 = xor i8 %.lobit, 1
  %6 = zext i8 %5 to i32
  %7 = select i1 %tobool.not, i32 0, i32 %6
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ac_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %call1 = tail call zeroext i8 @pcf50633_reg_read(ptr noundef %1, i8 noundef zeroext 73) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %psp)
  %cond = icmp eq i32 %psp, 4
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = and i8 %call1, 3
  %usb_online = getelementptr inbounds %struct.pcf50633_mbc, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %usb_online to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usb_online, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp eq i8 %2, 2
  %narrow = select i1 %tobool.not, i1 %cmp, i1 false
  %5 = zext i1 %narrow to i32
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_free_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !59, !61, !63, !64, !66, !68, !69, !71, !73, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 61, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pcf50633_mbc_usb_curlim_set._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pcf50633_mbc_usb_curlim_set._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 63, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @pcf50633_mbc_usb_curlim_set._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @pcf50633_mbc_usb_curlim_set._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_pcf50633_mbc_usb_curlim_set, !14, !"__ksymtab_pcf50633_mbc_usb_curlim_set", i1 false, i1 false}
!14 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 104, i32 1}
!15 = !{ptr @__ksymtab_pcf50633_mbc_get_status, !16, !"__ksymtab_pcf50633_mbc_get_status", i1 false, i1 false}
!16 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 135, i32 1}
!17 = !{ptr @__ksymtab_pcf50633_mbc_get_usb_online_status, !18, !"__ksymtab_pcf50633_mbc_get_usb_online_status", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 146, i32 1}
!19 = !{ptr @__initcall__kmod_pcf50633_charger__288_468_pcf50633_mbc_driver_init6, !20, !"__initcall__kmod_pcf50633_charger__288_468_pcf50633_mbc_driver_init6", i1 false, i1 false}
!20 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 468, i32 1}
!21 = !{ptr @__exitcall_pcf50633_mbc_driver_exit, !20, !"__exitcall_pcf50633_mbc_driver_exit", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_author289, !23, !"__UNIQUE_ID_author289", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 470, i32 1}
!24 = !{ptr @__UNIQUE_ID_description290, !25, !"__UNIQUE_ID_description290", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 471, i32 1}
!26 = !{ptr @__UNIQUE_ID_file291, !27, !"__UNIQUE_ID_file291", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 472, i32 1}
!28 = !{ptr @__UNIQUE_ID_license292, !27, !"__UNIQUE_ID_license292", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_alias293, !30, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 473, i32 1}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 462, i32 11}
!33 = !{ptr @pcf50633_mbc_driver, !34, !"pcf50633_mbc_driver", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 460, i32 31}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 411, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pcf50633_mbc_probe._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @pcf50633_mbc_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 421, i32 3}
!42 = !{ptr @pcf50633_mbc_probe._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pcf50633_mbc_probe._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 429, i32 3}
!46 = !{ptr @pcf50633_mbc_probe._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pcf50633_mbc_probe._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"mbc_irq_handlers", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 343, i32 17}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 359, i32 11}
!52 = !{ptr @pcf50633_mbc_adapter_desc, !53, !"pcf50633_mbc_adapter_desc", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 358, i32 39}
!54 = !{ptr @power_props, !55, !"power_props", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 339, i32 35}
!56 = !{ptr @pcf50633_mbc_sysfs_groups, !57, !"pcf50633_mbc_sysfs_groups", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 250, i32 1}
!58 = !{ptr @pcf50633_mbc_sysfs_group, !57, !"pcf50633_mbc_sysfs_group", i1 false, i1 false}
!59 = !{ptr @pcf50633_mbc_sysfs_attrs, !60, !"pcf50633_mbc_sysfs_attrs", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 243, i32 26}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 158, i32 8}
!63 = !{ptr @dev_attr_chgmode, !62, !"dev_attr_chgmode", i1 false, i1 false}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 156, i32 22}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 196, i32 8}
!68 = !{ptr @dev_attr_usb_curlim, !67, !"dev_attr_usb_curlim", i1 false, i1 false}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 177, i32 22}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 241, i32 8}
!73 = !{ptr @dev_attr_chg_curlim, !72, !"dev_attr_chg_curlim", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 367, i32 11}
!76 = !{ptr @pcf50633_mbc_usb_desc, !77, !"pcf50633_mbc_usb_desc", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 366, i32 39}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 375, i32 11}
!80 = !{ptr @pcf50633_mbc_ac_desc, !81, !"pcf50633_mbc_ac_desc", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/pcf50633-charger.c", i32 374, i32 39}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
