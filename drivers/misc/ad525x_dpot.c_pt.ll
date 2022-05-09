; ModuleID = '/llk/IR_all_yes/drivers/misc/ad525x_dpot.c_pt.bc'
source_filename = "../drivers/misc/ad525x_dpot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ad_dpot_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_ad_dpot_probe\09\09\09\09"
module asm "\09.long\09__crc_ad_dpot_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad_dpot_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22ad_dpot_probe\22\09\09\09\09\09"
module asm "__kstrtabns_ad_dpot_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ad_dpot_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_ad_dpot_remove\09\09\09\09"
module asm "\09.long\09__crc_ad_dpot_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad_dpot_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22ad_dpot_remove\22\09\09\09\09\09"
module asm "__kstrtabns_ad_dpot_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.dpot_data = type { %struct.ad_dpot_bus_data, %struct.mutex, i32, i32, i32, i32, i32, i32, [6 x i16], [1 x i32] }
%struct.ad_dpot_bus_data = type { ptr, ptr }
%struct.ad_dpot_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@ad_dpot_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@ad525x_group_commands = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad525x_attributes_commands, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad_dpot_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 722, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register sysfs hooks\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ad_dpot_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/misc/ad525x_dpot.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad_dpot_probe._entry_ptr = internal global ptr @ad_dpot_probe._entry, section ".printk_index", align 4
@ad_dpot_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 727, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s %d-Position Digital Potentiometer registered\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ad_dpot_probe._entry_ptr.9 = internal global ptr @ad_dpot_probe._entry.6, section ".printk_index", align 4
@ad_dpot_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 741, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to create client for %s ID 0x%lX\0A\00", [55 x i8] zeroinitializer }, align 32
@ad_dpot_probe._entry_ptr.12 = internal global ptr @ad_dpot_probe._entry.10, section ".printk_index", align 4
@__kstrtab_ad_dpot_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad_dpot_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_ad_dpot_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad_dpot_probe to i32), ptr @__kstrtab_ad_dpot_probe, ptr @__kstrtabns_ad_dpot_probe }, section "___ksymtab+ad_dpot_probe", align 4
@__kstrtab_ad_dpot_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad_dpot_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_ad_dpot_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad_dpot_remove to i32), ptr @__kstrtab_ad_dpot_remove, ptr @__kstrtabns_ad_dpot_remove }, section "___ksymtab+ad_dpot_remove", align 4
@__UNIQUE_ID_author183 = internal constant [110 x i8] c"ad525x_dpot.author=Chris Verges <chrisv@cyberswitching.com>, Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description184 = internal constant [53 x i8] c"ad525x_dpot.description=Digital potentiometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [42 x i8] c"ad525x_dpot.file=drivers/misc/ad525x_dpot\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [24 x i8] c"ad525x_dpot.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dpot_attrib_wipers = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_rdac0, ptr @dev_attr_rdac1, ptr @dev_attr_rdac2, ptr @dev_attr_rdac3, ptr @dev_attr_rdac4, ptr @dev_attr_rdac5, ptr null], [36 x i8] zeroinitializer }, align 32
@dpot_attrib_eeprom = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_eeprom0, ptr @dev_attr_eeprom1, ptr @dev_attr_eeprom2, ptr @dev_attr_eeprom3, ptr @dev_attr_eeprom4, ptr @dev_attr_eeprom5, ptr null], [36 x i8] zeroinitializer }, align 32
@dpot_attrib_tolerance = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_tolerance0, ptr @dev_attr_tolerance1, ptr @dev_attr_tolerance2, ptr @dev_attr_tolerance3, ptr @dev_attr_tolerance4, ptr @dev_attr_tolerance5, ptr null], [36 x i8] zeroinitializer }, align 32
@dpot_attrib_otp_en = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_otp0en, ptr @dev_attr_otp1en, ptr @dev_attr_otp2en, ptr @dev_attr_otp3en, ptr @dev_attr_otp4en, ptr @dev_attr_otp5en, ptr null], [36 x i8] zeroinitializer }, align 32
@dpot_attrib_otp = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @dev_attr_otp0, ptr @dev_attr_otp1, ptr @dev_attr_otp2, ptr @dev_attr_otp3, ptr @dev_attr_otp4, ptr @dev_attr_otp5, ptr null], [36 x i8] zeroinitializer }, align 32
@ad_dpot_add_files._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 658, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to register sysfs hooks for RDAC%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ad_dpot_add_files\00", [46 x i8] zeroinitializer }, align 32
@ad_dpot_add_files._entry_ptr = internal global ptr @ad_dpot_add_files._entry, section ".printk_index", align 4
@dev_attr_rdac0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_rdac0, ptr @set_rdac0 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rdac1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_rdac1, ptr @set_rdac1 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rdac2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_rdac2, ptr @set_rdac2 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rdac3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_rdac3, ptr @set_rdac3 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rdac4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_rdac4, ptr @set_rdac4 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rdac5 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_rdac5, ptr @set_rdac5 }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rdac0\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rdac1\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rdac2\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rdac3\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rdac4\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rdac5\00", [26 x i8] zeroinitializer }, align 32
@dev_attr_eeprom0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_eeprom0, ptr @set_eeprom0 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_eeprom1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_eeprom1, ptr @set_eeprom1 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_eeprom2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_eeprom2, ptr @set_eeprom2 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_eeprom3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_eeprom3, ptr @set_eeprom3 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_eeprom4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_eeprom4, ptr @set_eeprom4 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_eeprom5 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_eeprom5, ptr @set_eeprom5 }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eeprom0\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eeprom1\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eeprom2\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eeprom3\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eeprom4\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eeprom5\00", [24 x i8] zeroinitializer }, align 32
@dev_attr_tolerance0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance0, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tolerance1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance1, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tolerance2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance2, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tolerance3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance3, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tolerance4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance4, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tolerance5 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance5, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance0\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance1\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance2\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance3\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance4\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance5\00", [21 x i8] zeroinitializer }, align 32
@dev_attr_otp0en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_otp0en, ptr @set_otp0en }, [36 x i8] zeroinitializer }, align 32
@dev_attr_otp1en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_otp1en, ptr @set_otp1en }, [36 x i8] zeroinitializer }, align 32
@dev_attr_otp2en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_otp2en, ptr @set_otp2en }, [36 x i8] zeroinitializer }, align 32
@dev_attr_otp3en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_otp3en, ptr @set_otp3en }, [36 x i8] zeroinitializer }, align 32
@dev_attr_otp4en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_otp4en, ptr @set_otp4en }, [36 x i8] zeroinitializer }, align 32
@dev_attr_otp5en = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_otp5en, ptr @set_otp5en }, [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"otp0en\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"otp1en\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"otp2en\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"otp3en\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"otp4en\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"otp5en\00", [25 x i8] zeroinitializer }, align 32
@dev_attr_otp0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_otp0, ptr @set_otp0 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_otp1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_otp1, ptr @set_otp1 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_otp2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_otp2, ptr @set_otp2 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_otp3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_otp3, ptr @set_otp3 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_otp4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_otp4, ptr @set_otp4 }, [36 x i8] zeroinitializer }, align 32
@dev_attr_otp5 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_otp5, ptr @set_otp5 }, [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"otp0\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"otp1\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"otp2\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"otp3\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"otp4\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"otp5\00", [27 x i8] zeroinitializer }, align 32
@ad525x_attributes_commands = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_inc_all, ptr @dev_attr_dec_all, ptr @dev_attr_inc_all_6db, ptr @dev_attr_dec_all_6db, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_inc_all = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @set_inc_all }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dec_all = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @set_dec_all }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inc_all_6db = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @set_inc_all_6db }, [36 x i8] zeroinitializer }, align 32
@dev_attr_dec_all_6db = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @set_dec_all_6db }, [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inc_all\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dec_all\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inc_all_6db\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dec_all_6db\00", [20 x i8] zeroinitializer }, align 32
@switch.table.dpot_write = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 80, i32 0, i32 112, i32 0, i32 0, i32 208, i32 0, i32 240], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 25, i64 26, i64 27, i64 48, i64 49]
@__sancov_gen_cov_switch_values.54 = internal global [18 x i64] [i64 16, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 43, i64 44, i64 45, i64 46, i64 47, i64 50, i64 51]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 32, i64 25, i64 26, i64 27, i64 48, i64 49]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 25, i64 26, i64 48, i64 49]
@__sancov_gen_cov_switch_values.57 = internal global [18 x i64] [i64 16, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 43, i64 44, i64 45, i64 46, i64 47, i64 50, i64 51]
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 697, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"ad525x_group_commands\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 634, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 722, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 726, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 740, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"dpot_attrib_wipers\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 560, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"dpot_attrib_eeprom\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 570, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant [22 x i8] c"dpot_attrib_tolerance\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 600, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"dpot_attrib_otp_en\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 590, i32 32 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"dpot_attrib_otp\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 580, i32 32 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 657, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [15 x i8] c"dev_attr_rdac0\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"dev_attr_rdac1\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"dev_attr_rdac2\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"dev_attr_rdac3\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [15 x i8] c"dev_attr_rdac4\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [15 x i8] c"dev_attr_rdac5\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 524, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 421, i32 23 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 423, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 423, i32 16 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 441, i32 23 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 443, i32 23 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 530, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 536, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 542, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 548, i32 1 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 554, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"dev_attr_eeprom0\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"dev_attr_eeprom1\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"dev_attr_eeprom2\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"dev_attr_eeprom3\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"dev_attr_eeprom4\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"dev_attr_eeprom5\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 525, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 531, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 537, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 543, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 549, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 555, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c"dev_attr_tolerance0\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c"dev_attr_tolerance1\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [20 x i8] c"dev_attr_tolerance2\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [20 x i8] c"dev_attr_tolerance3\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c"dev_attr_tolerance4\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [20 x i8] c"dev_attr_tolerance5\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 526, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 532, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 538, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 544, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 550, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 556, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant [16 x i8] c"dev_attr_otp0en\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [16 x i8] c"dev_attr_otp1en\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [16 x i8] c"dev_attr_otp2en\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [16 x i8] c"dev_attr_otp3en\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"dev_attr_otp4en\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [16 x i8] c"dev_attr_otp5en\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 528, i32 1 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 534, i32 1 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 540, i32 1 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 546, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 552, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 558, i32 1 }
@___asan_gen_.283 = private unnamed_addr constant [14 x i8] c"dev_attr_otp0\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [14 x i8] c"dev_attr_otp1\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [14 x i8] c"dev_attr_otp2\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [14 x i8] c"dev_attr_otp3\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [14 x i8] c"dev_attr_otp4\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [14 x i8] c"dev_attr_otp5\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 527, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 533, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 539, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 545, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 551, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 557, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant [27 x i8] c"ad525x_attributes_commands\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 626, i32 26 }
@___asan_gen_.322 = private unnamed_addr constant [17 x i8] c"dev_attr_inc_all\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [17 x i8] c"dev_attr_dec_all\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [21 x i8] c"dev_attr_inc_all_6db\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [21 x i8] c"dev_attr_dec_all_6db\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 621, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 622, i32 1 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 623, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private constant [30 x i8] c"../drivers/misc/ad525x_dpot.c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 624, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant [24 x i8] c"switch.table.dpot_write\00", align 1
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_author183, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__ksymtab_ad_dpot_probe, ptr @__ksymtab_ad_dpot_remove, ptr @ad_dpot_add_files._entry, ptr @ad_dpot_add_files._entry_ptr, ptr @ad_dpot_probe._entry, ptr @ad_dpot_probe._entry.10, ptr @ad_dpot_probe._entry.6, ptr @ad_dpot_probe._entry_ptr, ptr @ad_dpot_probe._entry_ptr.12, ptr @ad_dpot_probe._entry_ptr.9, ptr @ad_dpot_probe.__key, ptr @.str, ptr @ad525x_group_commands, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @dpot_attrib_wipers, ptr @dpot_attrib_eeprom, ptr @dpot_attrib_tolerance, ptr @dpot_attrib_otp_en, ptr @dpot_attrib_otp, ptr @.str.13, ptr @.str.14, ptr @dev_attr_rdac0, ptr @dev_attr_rdac1, ptr @dev_attr_rdac2, ptr @dev_attr_rdac3, ptr @dev_attr_rdac4, ptr @dev_attr_rdac5, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @dev_attr_eeprom0, ptr @dev_attr_eeprom1, ptr @dev_attr_eeprom2, ptr @dev_attr_eeprom3, ptr @dev_attr_eeprom4, ptr @dev_attr_eeprom5, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @dev_attr_tolerance0, ptr @dev_attr_tolerance1, ptr @dev_attr_tolerance2, ptr @dev_attr_tolerance3, ptr @dev_attr_tolerance4, ptr @dev_attr_tolerance5, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @dev_attr_otp0en, ptr @dev_attr_otp1en, ptr @dev_attr_otp2en, ptr @dev_attr_otp3en, ptr @dev_attr_otp4en, ptr @dev_attr_otp5en, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @dev_attr_otp0, ptr @dev_attr_otp1, ptr @dev_attr_otp2, ptr @dev_attr_otp3, ptr @dev_attr_otp4, ptr @dev_attr_otp5, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @ad525x_attributes_commands, ptr @dev_attr_inc_all, ptr @dev_attr_dec_all, ptr @dev_attr_inc_all_6db, ptr @dev_attr_dec_all_6db, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @switch.table.dpot_write], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad_dpot_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad525x_group_commands to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad_dpot_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad_dpot_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad_dpot_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpot_attrib_wipers to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpot_attrib_eeprom to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpot_attrib_tolerance to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpot_attrib_otp_en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpot_attrib_otp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad_dpot_add_files._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rdac0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rdac1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rdac2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rdac3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rdac4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rdac5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eeprom0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eeprom1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eeprom2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eeprom3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eeprom4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eeprom5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tolerance0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tolerance1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tolerance2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tolerance3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tolerance4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tolerance5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otp0en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otp1en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otp2en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otp3en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otp4en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otp5en to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otp0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otp1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otp2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otp3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otp4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otp5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad525x_attributes_commands to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inc_all to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dec_all to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inc_all_6db to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dec_all_6db to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dpot_write to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ad_dpot_probe(ptr noundef %dev, ptr nocapture noundef readonly %bdata, i32 noundef %devid, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 140) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.end57_crit_edge, label %if.end

entry.do.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.dpot_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str, ptr noundef nonnull @ad_dpot_probe.__key) #8
  %2 = ptrtoint ptr %bdata to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %bdata, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %call7.i.i, align 8
  %devid2 = getelementptr inbounds %struct.dpot_data, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %devid2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %devid, ptr %devid2, align 4
  %shr = lshr i32 %devid, 6
  %and = and i32 %shr, 15
  %shl = shl nuw nsw i32 1, %and
  %max_pos = getelementptr inbounds %struct.dpot_data, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %max_pos to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl, ptr %max_pos, align 8
  %sub = add nsw i32 %shl, -1
  %rdac_mask = getelementptr inbounds %struct.dpot_data, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %rdac_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %rdac_mask, align 4
  %shr4 = lshr i32 %devid, 18
  %feat = getelementptr inbounds %struct.dpot_data, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %feat to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr4, ptr %feat, align 4
  %and5 = and i32 %devid, 63
  %uid = getelementptr inbounds %struct.dpot_data, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and5, ptr %uid, align 8
  %shr6 = lshr i32 %devid, 10
  %and7 = and i32 %shr6, 255
  %wipers = getelementptr inbounds %struct.dpot_data, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %wipers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and7, ptr %wipers, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0114 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %wipers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wipers, align 8
  %shl9 = shl nuw nsw i32 1, %i.0114
  %and10 = and i32 %12, %shl9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then12:                                        ; preds = %for.body
  %13 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %feat, align 4
  %arrayidx.i = getelementptr [7 x ptr], ptr @dpot_attrib_wipers, i32 0, i32 %i.0114
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @sysfs_create_file_ns(ptr noundef %dev, ptr noundef %16, ptr noundef null) #8
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then12.if.end.i_crit_edge, label %if.then.i

if.then12.if.end.i_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.i = getelementptr [7 x ptr], ptr @dpot_attrib_eeprom, i32 0, i32 %i.0114
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx2.i, align 4
  %call.i44.i = tail call i32 @sysfs_create_file_ns(ptr noundef %dev, ptr noundef %18, ptr noundef null) #8
  %or.i = or i32 %call.i44.i, %call.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then12.if.end.i_crit_edge
  %err.0.i = phi i32 [ %or.i, %if.then.i ], [ %call.i.i, %if.then12.if.end.i_crit_edge ]
  %and4.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then6.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.i = getelementptr [7 x ptr], ptr @dpot_attrib_tolerance, i32 0, i32 %i.0114
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx8.i, align 4
  %call.i45.i = tail call i32 @sysfs_create_file_ns(ptr noundef %dev, ptr noundef %20, ptr noundef null) #8
  %or10.i = or i32 %call.i45.i, %err.0.i
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.end.i.if.end11.i_crit_edge
  %err.1.i = phi i32 [ %or10.i, %if.then6.i ], [ %err.0.i, %if.end.i.if.end11.i_crit_edge ]
  %and12.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end23.i_crit_edge, label %if.then14.i

if.end11.i.if.end23.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16.i = getelementptr [7 x ptr], ptr @dpot_attrib_otp_en, i32 0, i32 %i.0114
  %21 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx16.i, align 4
  %call.i46.i = tail call i32 @sysfs_create_file_ns(ptr noundef %dev, ptr noundef %22, ptr noundef null) #8
  %or18.i = or i32 %call.i46.i, %err.1.i
  %arrayidx20.i = getelementptr [7 x ptr], ptr @dpot_attrib_otp, i32 0, i32 %i.0114
  %23 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx20.i, align 4
  %call.i47.i = tail call i32 @sysfs_create_file_ns(ptr noundef %dev, ptr noundef %24, ptr noundef null) #8
  %or22.i = or i32 %or18.i, %call.i47.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end23.i_crit_edge
  %err.2.i = phi i32 [ %or22.i, %if.then14.i ], [ %err.1.i, %if.end11.i.if.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %tobool24.not.i = icmp eq i32 %err.2.i, 0
  br i1 %tobool24.not.i, label %if.end17, label %ad_dpot_add_files.exit

ad_dpot_add_files.exit:                           ; preds = %if.end23.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %i.0114) #12
  br label %for.body44

if.end17:                                         ; preds = %if.end23.i
  %25 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %feat, align 4
  %and19 = and i32 %26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end17.for.inc_crit_edge, label %if.then21

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %max_pos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_pos, align 8
  %div103 = lshr i32 %28, 1
  %conv = trunc i32 %div103 to i16
  %arrayidx = getelementptr %struct.dpot_data, ptr %call7.i.i, i32 0, i32 8, i32 %i.0114
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv, ptr %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %if.end17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %30 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %feat, align 4
  %and26 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %for.end.do.end39_crit_edge, label %if.end30

for.end.do.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

if.end30:                                         ; preds = %for.end
  %call29 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @ad525x_group_commands) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool31.not = icmp eq i32 %call29, 0
  br i1 %tobool31.not, label %if.end30.do.end39_crit_edge, label %do.end35

if.end30.do.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

do.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %exit_free

do.end39:                                         ; preds = %if.end30.do.end39_crit_edge, %for.end.do.end39_crit_edge
  %32 = ptrtoint ptr %max_pos to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_pos, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %33) #12
  br label %cleanup

for.body44:                                       ; preds = %for.inc52.for.body44_crit_edge, %ad_dpot_add_files.exit
  %i.1116 = phi i32 [ 0, %ad_dpot_add_files.exit ], [ %inc53, %for.inc52.for.body44_crit_edge ]
  %34 = ptrtoint ptr %wipers to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wipers, align 8
  %shl46 = shl nuw nsw i32 1, %i.1116
  %and47 = and i32 %35, %shl46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %for.body44.for.inc52_crit_edge, label %if.then49

for.body44.for.inc52_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc52

if.then49:                                        ; preds = %for.body44
  %36 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %feat, align 4
  %arrayidx.i104 = getelementptr [7 x ptr], ptr @dpot_attrib_wipers, i32 0, i32 %i.1116
  %38 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i104, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef %39, ptr noundef null) #8
  %and.i105 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %tobool.not.i106 = icmp eq i32 %and.i105, 0
  br i1 %tobool.not.i106, label %if.then49.if.end.i109_crit_edge, label %if.then.i108

if.then49.if.end.i109_crit_edge:                  ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i109

if.then.i108:                                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.i107 = getelementptr [7 x ptr], ptr @dpot_attrib_eeprom, i32 0, i32 %i.1116
  %40 = ptrtoint ptr %arrayidx2.i107 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx2.i107, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef %41, ptr noundef null) #8
  br label %if.end.i109

if.end.i109:                                      ; preds = %if.then.i108, %if.then49.if.end.i109_crit_edge
  %and3.i = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i109.if.end8.i_crit_edge, label %if.then5.i

if.end.i109.if.end8.i_crit_edge:                  ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7.i = getelementptr [7 x ptr], ptr @dpot_attrib_tolerance, i32 0, i32 %i.1116
  %42 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx7.i, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef %43, ptr noundef null) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i109.if.end8.i_crit_edge
  %and9.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.for.inc52_crit_edge, label %if.then11.i

if.end8.i.for.inc52_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc52

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx13.i = getelementptr [7 x ptr], ptr @dpot_attrib_otp_en, i32 0, i32 %i.1116
  %44 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx13.i, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef %45, ptr noundef null) #8
  %arrayidx15.i = getelementptr [7 x ptr], ptr @dpot_attrib_otp, i32 0, i32 %i.1116
  %46 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx15.i, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef %47, ptr noundef null) #8
  br label %for.inc52

for.inc52:                                        ; preds = %if.then11.i, %if.end8.i.for.inc52_crit_edge, %for.body44.for.inc52_crit_edge
  %inc53 = add nuw nsw i32 %i.1116, 1
  %exitcond119.not = icmp eq i32 %inc53, 6
  br i1 %exitcond119.not, label %for.inc52.exit_free_crit_edge, label %for.inc52.for.body44_crit_edge

for.inc52.for.body44_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body44

for.inc52.exit_free_crit_edge:                    ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_free

exit_free:                                        ; preds = %for.inc52.exit_free_crit_edge, %do.end35
  %err.3 = phi i32 [ %call29, %do.end35 ], [ %err.2.i, %for.inc52.exit_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %48 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %driver_data.i, align 4
  br label %do.end57

do.end57:                                         ; preds = %exit_free, %entry.do.end57_crit_edge
  %err.4 = phi i32 [ %err.3, %exit_free ], [ -12, %entry.do.end57_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %name, i32 noundef %devid) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %do.end39
  %retval.0 = phi i32 [ %err.4, %do.end57 ], [ 0, %do.end39 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ad_dpot_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wipers = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 7
  %feat = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %wipers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wipers, align 4
  %shl = shl nuw nsw i32 1, %i.07
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %4 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %feat, align 4
  %arrayidx.i = getelementptr [7 x ptr], ptr @dpot_attrib_wipers, i32 0, i32 %i.07
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef %7, ptr noundef null) #8
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.i = getelementptr [7 x ptr], ptr @dpot_attrib_eeprom, i32 0, i32 %i.07
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef %9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %and3.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7.i = getelementptr [7 x ptr], ptr @dpot_attrib_tolerance, i32 0, i32 %i.07
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7.i, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef %11, ptr noundef null) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %and9.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.for.inc_crit_edge, label %if.then11.i

if.end8.i.for.inc_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx13.i = getelementptr [7 x ptr], ptr @dpot_attrib_otp_en, i32 0, i32 %i.07
  %12 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx13.i, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef %13, ptr noundef null) #8
  %arrayidx15.i = getelementptr [7 x ptr], ptr @dpot_attrib_otp, i32 0, i32 %i.07
  %14 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx15.i, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %dev, ptr noundef %15, ptr noundef null) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then11.i, %if.end8.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_rdac0(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_rdac0(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !171
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %entry.sysfs_set_reg.exit_crit_edge

entry.sysfs_set_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sysfs_set_reg.exit

if.end20.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %rdac_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rdac_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rdac_mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp ugt i32 %4, %6
  br i1 %cmp.i, label %if.then21.i, label %if.end20.i.if.end23.i_crit_edge

if.end20.i.if.end23.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end20.i.if.end23.i_crit_edge
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %conv24.i = trunc i32 %9 to i16
  call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext 0, i16 noundef zeroext %conv24.i) #8
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.end23.i, %entry.sysfs_set_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end23.i ], [ %call.i.i, %entry.sysfs_set_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysfs_show_reg(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %buf, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %and = and i32 %reg, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and1 = and i32 %reg, 31
  %otp_en_mask = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %otp_en_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %otp_en_mask, align 4
  %4 = shl nuw i32 1, %and1
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool3.not, ptr @.str.18, ptr @.str.17
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond)
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %conv = trunc i32 %reg to i8
  %feat.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %feat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %feat.i, align 4
  %and.i = and i32 %7, 896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %and.i.i = and i32 %reg, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else46.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %and1.i.i = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i.i = and i32 %reg, 31
  %arrayidx.i.i = getelementptr %struct.dpot_data, ptr %1, i32 0, i32 8, i32 %and5.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i.i, align 2
  %conv6.i.i = zext i16 %9 to i32
  br label %dpot_read.exit.thread4

if.end.i.i:                                       ; preds = %if.then.i.i
  %uid.i.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uid.i.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.end.i.i.if.end52.i.i_crit_edge [
    i32 25, label %if.end.i.i.if.then15.i.i_crit_edge
    i32 26, label %if.end.i.i.if.then15.i.i_crit_edge8
    i32 27, label %if.end.i.i.if.then15.i.i_crit_edge9
    i32 48, label %if.end.i.i.if.then32.i.i_crit_edge
    i32 49, label %if.end.i.i.if.then32.i.i_crit_edge10
  ]

if.end.i.i.if.then32.i.i_crit_edge10:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i.i

if.end.i.i.if.then32.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i.i

if.end.i.i.if.then15.i.i_crit_edge9:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i.i

if.end.i.i.if.then15.i.i_crit_edge8:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i.i

if.end.i.i.if.then15.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i.i

if.end.i.i.if.end52.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i.i

if.then15.i.i:                                    ; preds = %if.end.i.i.if.then15.i.i_crit_edge, %if.end.i.i.if.then15.i.i_crit_edge8, %if.end.i.i.if.then15.i.i_crit_edge9
  %bops.i.i.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %bops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bops.i.i.i, align 4
  %read_r8d8.i.i.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %read_r8d8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_r8d8.i.i.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i.i.i = tail call i32 %16(ptr noundef %18, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp16.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp16.i.i, label %if.then15.i.i.dpot_read.exit.thread_crit_edge, label %if.end19.i.i

if.then15.i.i.dpot_read.exit.thread_crit_edge:    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dpot_read.exit.thread

if.end19.i.i:                                     ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %uid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %20)
  %cmp21.i.i = icmp eq i32 %20, 25
  %shr103.i.i = lshr i32 %call.i.i.i, 2
  %spec.select.i.i = select i1 %cmp21.i.i, i32 %shr103.i.i, i32 %call.i.i.i
  br label %dpot_read.exit.thread4

if.then32.i.i:                                    ; preds = %if.end.i.i.if.then32.i.i_crit_edge, %if.end.i.i.if.then32.i.i_crit_edge10
  %bops.i95.i.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %bops.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bops.i95.i.i, align 4
  %read_r8d8.i96.i.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %read_r8d8.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_r8d8.i96.i.i, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call.i97.i.i = tail call i32 %24(ptr noundef %26, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i.i)
  %cmp34.i.i = icmp slt i32 %call.i97.i.i, 0
  br i1 %cmp34.i.i, label %if.then32.i.i.dpot_read.exit.thread_crit_edge, label %if.end37.i.i

if.then32.i.i.dpot_read.exit.thread_crit_edge:    ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dpot_read.exit.thread

if.end37.i.i:                                     ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %uid.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %uid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %28)
  %cmp39.i.i = icmp eq i32 %28, 49
  %shr42104.i.i = lshr i32 %call.i97.i.i, 2
  %spec.select93.i.i = select i1 %cmp39.i.i, i32 %shr42104.i.i, i32 %call.i97.i.i
  br label %dpot_read.exit.thread4

if.else46.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %and48.i.i = and i32 %reg, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i)
  %tobool49.not.i.i = icmp eq i32 %and48.i.i, 0
  %spec.select94.i.i = select i1 %tobool49.not.i.i, i8 0, i8 -112
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.else46.i.i, %if.end.i.i.if.end52.i.i_crit_edge
  %ctrl.0.i.i = phi i8 [ -96, %if.end.i.i.if.end52.i.i_crit_edge ], [ %spec.select94.i.i, %if.else46.i.i ]
  %and54.i.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i)
  %tobool55.not.i.i = icmp eq i32 %and54.i.i, 0
  br i1 %tobool55.not.i.i, label %if.else59.i.i, label %if.then56.i.i

if.then56.i.i:                                    ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bops.i98.i.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %bops.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bops.i98.i.i, align 4
  %read_r8d8.i99.i.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %read_r8d8.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_r8d8.i99.i.i, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i100.i.i = tail call i32 %32(ptr noundef %34, i8 noundef zeroext %ctrl.0.i.i) #8
  br label %dpot_read.exit

if.else59.i.i:                                    ; preds = %if.end52.i.i
  %and61.i.i = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i)
  %tobool62.not.i.i = icmp eq i32 %and61.i.i, 0
  br i1 %tobool62.not.i.i, label %if.else59.i.i.dpot_read.exit.thread_crit_edge, label %if.then63.i.i

if.else59.i.i.dpot_read.exit.thread_crit_edge:    ; preds = %if.else59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dpot_read.exit.thread

if.then63.i.i:                                    ; preds = %if.else59.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bops.i101.i.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %bops.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bops.i101.i.i, align 4
  %read_r8d16.i.i.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %read_r8d16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read_r8d16.i.i.i, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call.i102.i.i = tail call i32 %38(ptr noundef %40, i8 noundef zeroext %ctrl.0.i.i) #8
  br label %dpot_read.exit

if.else.i:                                        ; preds = %if.end
  %uid.i5.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 5
  %41 = ptrtoint ptr %uid.i5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %uid.i5.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %42, label %sw.default.i.i [
    i32 37, label %if.else.i.sw.bb.i.i_crit_edge
    i32 38, label %if.else.i.sw.bb.i.i_crit_edge11
    i32 36, label %if.else.i.sw.bb1.i.i_crit_edge
    i32 33, label %if.else.i.sw.bb1.i.i_crit_edge12
    i32 34, label %if.else.i.sw.bb1.i.i_crit_edge13
    i32 35, label %if.else.i.sw.bb1.i.i_crit_edge14
    i32 39, label %if.else.i.sw.bb1.i.i_crit_edge15
    i32 40, label %if.else.i.sw.bb1.i.i_crit_edge16
    i32 41, label %if.else.i.sw.bb1.i.i_crit_edge17
    i32 45, label %if.else.i.sw.bb5.i.i_crit_edge
    i32 44, label %if.else.i.sw.bb5.i.i_crit_edge18
    i32 43, label %if.else.i.sw.bb5.i.i_crit_edge19
    i32 46, label %if.else.i.sw.bb7.i.i_crit_edge
    i32 47, label %if.else.i.sw.bb7.i.i_crit_edge20
    i32 50, label %if.else.i.sw.bb15.i.i_crit_edge
    i32 51, label %if.else.i.sw.bb15.i.i_crit_edge21
  ]

if.else.i.sw.bb15.i.i_crit_edge21:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i.i

if.else.i.sw.bb15.i.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i.i

if.else.i.sw.bb7.i.i_crit_edge20:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i.i

if.else.i.sw.bb7.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i.i

if.else.i.sw.bb5.i.i_crit_edge19:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i.i

if.else.i.sw.bb5.i.i_crit_edge18:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i.i

if.else.i.sw.bb5.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i.i

if.else.i.sw.bb1.i.i_crit_edge17:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

if.else.i.sw.bb1.i.i_crit_edge16:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

if.else.i.sw.bb1.i.i_crit_edge15:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

if.else.i.sw.bb1.i.i_crit_edge14:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

if.else.i.sw.bb1.i.i_crit_edge13:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

if.else.i.sw.bb1.i.i_crit_edge12:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

if.else.i.sw.bb1.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i

if.else.i.sw.bb.i.i_crit_edge11:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

if.else.i.sw.bb.i.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.else.i.sw.bb.i.i_crit_edge, %if.else.i.sw.bb.i.i_crit_edge11
  %bops.i.i6.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %bops.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bops.i.i6.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i.i7.i = tail call i32 %47(ptr noundef %49) #8
  br label %dpot_read.exit

sw.bb1.i.i:                                       ; preds = %if.else.i.sw.bb1.i.i_crit_edge, %if.else.i.sw.bb1.i.i_crit_edge12, %if.else.i.sw.bb1.i.i_crit_edge13, %if.else.i.sw.bb1.i.i_crit_edge14, %if.else.i.sw.bb1.i.i_crit_edge15, %if.else.i.sw.bb1.i.i_crit_edge16, %if.else.i.sw.bb1.i.i_crit_edge17
  %50 = and i8 %conv, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp.i.i = icmp eq i8 %50, 0
  %conv3.i.i = select i1 %cmp.i.i, i8 0, i8 -128
  %bops.i60.i.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %bops.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bops.i60.i.i, align 4
  %read_r8d8.i.i8.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %read_r8d8.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_r8d8.i.i8.i, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %call.i61.i.i = tail call i32 %54(ptr noundef %56, i8 noundef zeroext %conv3.i.i) #8
  br label %dpot_read.exit

sw.bb5.i.i:                                       ; preds = %if.else.i.sw.bb5.i.i_crit_edge, %if.else.i.sw.bb5.i.i_crit_edge18, %if.else.i.sw.bb5.i.i_crit_edge19
  %bops.i62.i.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %bops.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bops.i62.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %call.i63.i.i = tail call i32 %60(ptr noundef %62) #8
  br label %dpot_read.exit

sw.bb7.i.i:                                       ; preds = %if.else.i.sw.bb7.i.i_crit_edge, %if.else.i.sw.bb7.i.i_crit_edge20
  %63 = and i8 %conv, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp10.i.i = icmp eq i8 %63, 0
  %conv13.i.i = select i1 %cmp10.i.i, i8 0, i8 8
  %bops.i64.i.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %bops.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bops.i64.i.i, align 4
  %read_r8d8.i65.i.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %read_r8d8.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read_r8d8.i65.i.i, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %call.i66.i.i = tail call i32 %67(ptr noundef %69, i8 noundef zeroext %conv13.i.i) #8
  br label %dpot_read.exit

sw.bb15.i.i:                                      ; preds = %if.else.i.sw.bb15.i.i_crit_edge, %if.else.i.sw.bb15.i.i_crit_edge21
  %bops.i67.i.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %bops.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bops.i67.i.i, align 4
  %write_r8d8.i.i.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %write_r8d8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write_r8d8.i.i.i, align 4
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %call.i68.i.i = tail call i32 %73(ptr noundef %75, i8 noundef zeroext 8, i8 noundef zeroext 0) #8
  %76 = ptrtoint ptr %bops.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bops.i67.i.i, align 4
  %read_r8d16.i.i9.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %read_r8d16.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read_r8d16.i.i9.i, align 4
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %call.i70.i.i = tail call i32 %79(ptr noundef %81, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70.i.i)
  %cmp18.i.i = icmp slt i32 %call.i70.i.i, 0
  br i1 %cmp18.i.i, label %sw.bb15.i.i.dpot_read.exit.thread_crit_edge, label %if.end.i11.i

sw.bb15.i.i.dpot_read.exit.thread_crit_edge:      ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dpot_read.exit.thread

if.end.i11.i:                                     ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv20.i.i = trunc i32 %call.i70.i.i to i16
  %82 = tail call i16 @llvm.bswap.i16(i16 %conv20.i.i) #8
  %conv21.i.i = zext i16 %82 to i32
  %83 = ptrtoint ptr %uid.i5.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %uid.i5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %84)
  %cmp23.i.i = icmp eq i32 %84, 51
  %85 = lshr i32 %conv21.i.i, 2
  %spec.select.i10.i = select i1 %cmp23.i.i, i32 %85, i32 %conv21.i.i
  br label %dpot_read.exit.thread4

sw.default.i.i:                                   ; preds = %if.else.i
  %86 = and i8 %conv, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i12.i = icmp eq i8 %86, 0
  br i1 %tobool.not.i12.i, label %lor.lhs.false.i.i, label %sw.default.i.i.if.then31.i.i_crit_edge

sw.default.i.i.if.then31.i.i_crit_edge:           ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i.i

lor.lhs.false.i.i:                                ; preds = %sw.default.i.i
  %max_pos.i.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 3
  %87 = ptrtoint ptr %max_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_pos.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %88)
  %cmp29.i.i = icmp ugt i32 %88, 256
  br i1 %cmp29.i.i, label %lor.lhs.false.i.i.if.then31.i.i_crit_edge, label %if.else.i.i

lor.lhs.false.i.i.if.then31.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31.i.i

if.then31.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then31.i.i_crit_edge, %sw.default.i.i.if.then31.i.i_crit_edge
  %and33.i.i = and i8 %conv, -8
  %and35.i.i = shl i8 %conv, 1
  %shl.i.i = and i8 %and35.i.i, 14
  %or.i.i = or i8 %shl.i.i, %and33.i.i
  %bops.i71.i.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %1, i32 0, i32 1
  %89 = ptrtoint ptr %bops.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bops.i71.i.i, align 4
  %read_r8d16.i72.i.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %read_r8d16.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read_r8d16.i72.i.i, align 4
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %call.i73.i.i = tail call i32 %92(ptr noundef %94, i8 noundef zeroext %or.i.i) #8
  br label %dpot_read.exit

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %bops.i74.i.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %1, i32 0, i32 1
  %95 = ptrtoint ptr %bops.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bops.i74.i.i, align 4
  %read_r8d8.i75.i.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %read_r8d8.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read_r8d8.i75.i.i, align 4
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %call.i76.i.i = tail call i32 %98(ptr noundef %100, i8 noundef zeroext %conv) #8
  br label %dpot_read.exit

dpot_read.exit.thread:                            ; preds = %sw.bb15.i.i.dpot_read.exit.thread_crit_edge, %if.else59.i.i.dpot_read.exit.thread_crit_edge, %if.then32.i.i.dpot_read.exit.thread_crit_edge, %if.then15.i.i.dpot_read.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

dpot_read.exit.thread4:                           ; preds = %if.end.i11.i, %if.end37.i.i, %if.end19.i.i, %if.then3.i.i
  %retval.0.i.ph = phi i32 [ %spec.select.i10.i, %if.end.i11.i ], [ %spec.select93.i.i, %if.end37.i.i ], [ %spec.select.i.i, %if.end19.i.i ], [ %conv6.i.i, %if.then3.i.i ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %if.end9

dpot_read.exit:                                   ; preds = %if.else.i.i, %if.then31.i.i, %sw.bb7.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.then63.i.i, %if.then56.i.i
  %retval.0.i = phi i32 [ %call.i100.i.i, %if.then56.i.i ], [ %call.i102.i.i, %if.then63.i.i ], [ %call.i73.i.i, %if.then31.i.i ], [ %call.i76.i.i, %if.else.i.i ], [ %call.i66.i.i, %sw.bb7.i.i ], [ %call.i63.i.i, %sw.bb5.i.i ], [ %call.i61.i.i, %sw.bb1.i.i ], [ %call.i.i7.i, %sw.bb.i.i ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %dpot_read.exit.cleanup_crit_edge, label %dpot_read.exit.if.end9_crit_edge

dpot_read.exit.if.end9_crit_edge:                 ; preds = %dpot_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

dpot_read.exit.cleanup_crit_edge:                 ; preds = %dpot_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %dpot_read.exit.if.end9_crit_edge, %dpot_read.exit.thread4
  %retval.0.i7 = phi i32 [ %retval.0.i.ph, %dpot_read.exit.thread4 ], [ %retval.0.i, %dpot_read.exit.if.end9_crit_edge ]
  %and10 = and i32 %reg, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %and13 = and i32 %retval.0.i7, 65535
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %and13)
  br label %cleanup

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %rdac_mask = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 2
  %101 = ptrtoint ptr %rdac_mask to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rdac_mask, align 4
  %and15 = and i32 %102, %retval.0.i7
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, i32 noundef %and15)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then12, %dpot_read.exit.cleanup_crit_edge, %dpot_read.exit.thread, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call14, %if.then12 ], [ %call16, %if.else ], [ -22, %dpot_read.exit.cleanup_crit_edge ], [ -22, %dpot_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysfs_set_reg(ptr nocapture noundef readonly %dev, ptr noundef %buf, i32 noundef %count, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !171
  %and = and i32 %reg, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.17) #8
  %and3 = and i32 %reg, 31
  %otp_en_mask = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef %and3, ptr noundef %otp_en_mask) #8
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef %and3, ptr noundef %otp_en_mask) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %and8 = and i32 %reg, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end16_crit_edge, label %land.lhs.true

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end7
  %and10 = and i32 %reg, 31
  %otp_en_mask11 = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %otp_en_mask11 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %otp_en_mask11, align 4
  %5 = shl nuw i32 1, %and10
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool14.not = icmp eq i32 %6, 0
  br i1 %tobool14.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %rdac_mask = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %rdac_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rdac_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp = icmp ugt i32 %8, %10
  br i1 %cmp, label %if.then21, label %if.end20.if.end23_crit_edge

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %value, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end20.if.end23_crit_edge
  %update_lock = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %conv = trunc i32 %reg to i8
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 4
  %conv24 = trunc i32 %13 to i16
  call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext %conv, i16 noundef zeroext %conv24)
  %and26 = and i32 %reg, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp ne i32 %and26, 0
  %tobool9.not.not = xor i1 %tobool9.not, true
  %brmerge = or i1 %tobool27.not, %tobool9.not.not
  br i1 %brmerge, label %if.end34.sink.split, label %if.end23.if.end34_crit_edge

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end34.sink.split:                              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %.mux = select i1 %tobool27.not, i32 26, i32 400
  call void @msleep(i32 noundef %.mux) #8
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.end23.if.end34_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end16.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else, %if.then2
  %retval.0 = phi i32 [ %count, %if.end34 ], [ %count, %if.else ], [ %count, %if.then2 ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call.i, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dpot_write(ptr noundef %dpot, i8 noundef zeroext %reg, i16 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %feat = getelementptr inbounds %struct.dpot_data, ptr %dpot, i32 0, i32 6
  %0 = ptrtoint ptr %feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %feat, align 4
  %and = and i32 %1, 896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv.i = zext i8 %reg to i32
  %and.i = and i32 %conv.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else101.i

if.then.i:                                        ; preds = %if.then
  %and1.i = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %and5.i = and i32 %conv.i, 31
  %arrayidx.i = getelementptr %struct.dpot_data, ptr %dpot, i32 0, i32 8, i32 %and5.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %value, ptr %arrayidx.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %and7.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else42.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end.i
  %and11.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %and15.i = and i32 %conv.i, 31
  %devid.i = getelementptr inbounds %struct.dpot_data, ptr %dpot, i32 0, i32 4
  %3 = ptrtoint ptr %devid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devid.i, align 4
  %shr.i = lshr i32 %4, 6
  %and16.i = and i32 %shr.i, 15
  %shl.i = shl nuw nsw i32 %and15.i, %and16.i
  %conv17.i = zext i16 %value to i32
  %or.i = or i32 %shl.i, %conv17.i
  %conv18.i = trunc i32 %or.i to i8
  %bops.i.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %5 = ptrtoint ptr %bops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bops.i.i, align 4
  %write_d8.i.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %write_d8.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_d8.i.i, align 4
  %9 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dpot, align 4
  %call.i.i = tail call i32 %8(ptr noundef %10, i8 noundef zeroext %conv18.i) #8
  br label %return

if.else.i:                                        ; preds = %if.then9.i
  %and20.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %do.body.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %and24.i = and i32 %conv.i, 31
  %devid25.i = getelementptr inbounds %struct.dpot_data, ptr %dpot, i32 0, i32 4
  %11 = ptrtoint ptr %devid25.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devid25.i, align 4
  %shr26.i = lshr i32 %12, 6
  %and27.i = and i32 %shr26.i, 15
  %shl28.i = shl nuw nsw i32 %and24.i, %and27.i
  %conv29.i = zext i16 %value to i32
  %or30.i = or i32 %shl28.i, %conv29.i
  %shr31.i = lshr i32 %or30.i, 8
  %conv32.i = trunc i32 %shr31.i to i8
  %13 = trunc i32 %or30.i to i8
  %bops.i224.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %14 = ptrtoint ptr %bops.i224.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bops.i224.i, align 4
  %write_r8d8.i.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %write_r8d8.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_r8d8.i.i, align 4
  %18 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dpot, align 4
  %call.i225.i = tail call i32 %17(ptr noundef %19, i8 noundef zeroext %conv32.i, i8 noundef zeroext %13) #8
  br label %return

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/ad525x_dpot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !172
  unreachable

if.else42.i:                                      ; preds = %if.end.i
  %uid.i = getelementptr inbounds %struct.dpot_data, ptr %dpot, i32 0, i32 5
  %20 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uid.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %21, label %if.end96.i [
    i32 25, label %if.else42.i.if.then51.i_crit_edge
    i32 26, label %if.else42.i.if.then51.i_crit_edge18
    i32 27, label %if.else42.i.if.then51.i_crit_edge19
    i32 48, label %if.else42.i.if.then77.i_crit_edge
    i32 49, label %if.else42.i.if.then77.i_crit_edge20
  ]

if.else42.i.if.then77.i_crit_edge20:              ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77.i

if.else42.i.if.then77.i_crit_edge:                ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then77.i

if.else42.i.if.then51.i_crit_edge19:              ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51.i

if.else42.i.if.then51.i_crit_edge18:              ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51.i

if.else42.i.if.then51.i_crit_edge:                ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then51.i

if.then51.i:                                      ; preds = %if.else42.i.if.then51.i_crit_edge, %if.else42.i.if.then51.i_crit_edge18, %if.else42.i.if.then51.i_crit_edge19
  %bops.i226.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %23 = ptrtoint ptr %bops.i226.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bops.i226.i, align 4
  %write_r8d8.i227.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %write_r8d8.i227.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_r8d8.i227.i, align 4
  %27 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dpot, align 4
  %call.i228.i = tail call i32 %26(ptr noundef %28, i8 noundef zeroext 24, i8 noundef zeroext 3) #8
  %29 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %uid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %30)
  %cmp54.i = icmp eq i32 %30, 25
  %shl58.i = shl i16 %value, 2
  %spec.select.i = select i1 %cmp54.i, i16 %shl58.i, i16 %value
  %31 = lshr i16 %spec.select.i, 8
  %32 = trunc i16 %31 to i8
  %conv64.i = or i8 %32, 4
  %33 = ptrtoint ptr %bops.i226.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bops.i226.i, align 4
  %write_r8d8.i230.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %write_r8d8.i230.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write_r8d8.i230.i, align 4
  %37 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dpot, align 4
  %conv.i231.i = trunc i16 %spec.select.i to i8
  %call.i232.i = tail call i32 %36(ptr noundef %38, i8 noundef zeroext %conv64.i, i8 noundef zeroext %conv.i231.i) #8
  br label %return

if.then77.i:                                      ; preds = %if.else42.i.if.then77.i_crit_edge, %if.else42.i.if.then77.i_crit_edge20
  %bops.i233.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %39 = ptrtoint ptr %bops.i233.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bops.i233.i, align 4
  %write_r8d8.i234.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %write_r8d8.i234.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_r8d8.i234.i, align 4
  %43 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dpot, align 4
  %call.i235.i = tail call i32 %42(ptr noundef %44, i8 noundef zeroext 28, i8 noundef zeroext 3) #8
  %45 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %uid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %46)
  %cmp80.i = icmp eq i32 %46, 49
  %shl84.i = shl i16 %value, 2
  %spec.select223.i = select i1 %cmp80.i, i16 %shl84.i, i16 %value
  %47 = lshr i16 %spec.select223.i, 8
  %48 = trunc i16 %47 to i8
  %conv90.i = or i8 %48, 4
  %49 = ptrtoint ptr %bops.i233.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bops.i233.i, align 4
  %write_r8d8.i237.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %write_r8d8.i237.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_r8d8.i237.i, align 4
  %53 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dpot, align 4
  %conv.i238.i = trunc i16 %spec.select223.i to i8
  %call.i239.i = tail call i32 %52(ptr noundef %54, i8 noundef zeroext %conv90.i, i8 noundef zeroext %conv.i238.i) #8
  br label %return

if.end96.i:                                       ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #10
  %and98.i = and i32 %conv.i, 15
  %or99.i = or i32 %and98.i, 176
  br label %if.end154.i

if.else101.i:                                     ; preds = %if.then
  %and103.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %if.else109.i, label %if.then105.i

if.then105.i:                                     ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #10
  %and107.i = and i32 %conv.i, 15
  %or108.i = or i32 %and107.i, 48
  br label %if.end154.i

if.else109.i:                                     ; preds = %if.else101.i
  %and111.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %tobool112.not.i = icmp eq i32 %and111.i, 0
  br i1 %tobool112.not.i, label %if.else118.i, label %if.then113.i

if.then113.i:                                     ; preds = %if.else109.i
  %55 = add nsw i32 %conv.i, -160
  %56 = tail call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %56)
  %57 = icmp ult i32 %56, 8
  br i1 %57, label %switch.lookup, label %if.then113.i.if.end154.i_crit_edge

if.then113.i.if.end154.i_crit_edge:               ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154.i

if.else118.i:                                     ; preds = %if.else109.i
  %and120.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %do.body145.i, label %if.then122.i

if.then122.i:                                     ; preds = %if.else118.i
  %uid123.i = getelementptr inbounds %struct.dpot_data, ptr %dpot, i32 0, i32 5
  %58 = ptrtoint ptr %uid123.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %uid123.i, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %59, label %if.then122.i.if.end154.i_crit_edge [
    i32 25, label %if.then122.i.if.then130.i_crit_edge
    i32 26, label %if.then122.i.if.then130.i_crit_edge21
    i32 48, label %if.then122.i.if.then140.i_crit_edge
    i32 49, label %if.then122.i.if.then140.i_crit_edge22
  ]

if.then122.i.if.then140.i_crit_edge22:            ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then140.i

if.then122.i.if.then140.i_crit_edge:              ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then140.i

if.then122.i.if.then130.i_crit_edge21:            ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then130.i

if.then122.i.if.then130.i_crit_edge:              ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then130.i

if.then122.i.if.end154.i_crit_edge:               ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154.i

if.then130.i:                                     ; preds = %if.then122.i.if.then130.i_crit_edge, %if.then122.i.if.then130.i_crit_edge21
  %bops.i240.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %61 = ptrtoint ptr %bops.i240.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bops.i240.i, align 4
  %write_r8d8.i241.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %write_r8d8.i241.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_r8d8.i241.i, align 4
  %65 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dpot, align 4
  %call.i242.i = tail call i32 %64(ptr noundef %66, i8 noundef zeroext 12, i8 noundef zeroext 0) #8
  br label %return

if.then140.i:                                     ; preds = %if.then122.i.if.then140.i_crit_edge, %if.then122.i.if.then140.i_crit_edge22
  %bops.i243.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %67 = ptrtoint ptr %bops.i243.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bops.i243.i, align 4
  %write_r8d8.i244.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %write_r8d8.i244.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_r8d8.i244.i, align 4
  %71 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dpot, align 4
  %call.i245.i = tail call i32 %70(ptr noundef %72, i8 noundef zeroext 12, i8 noundef zeroext 0) #8
  br label %return

do.body145.i:                                     ; preds = %if.else118.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/ad525x_dpot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 318, 0\0A.popsection", ""() #8, !srcloc !173
  unreachable

switch.lookup:                                    ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.dpot_write, i32 0, i32 %56
  %73 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %73)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end154.i

if.end154.i:                                      ; preds = %switch.lookup, %if.then122.i.if.end154.i_crit_edge, %if.then113.i.if.end154.i_crit_edge, %if.then105.i, %if.end96.i
  %val.0.i = phi i32 [ %or108.i, %if.then105.i ], [ 0, %if.then113.i.if.end154.i_crit_edge ], [ %or99.i, %if.end96.i ], [ 0, %if.then122.i.if.end154.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %and156.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156.i)
  %tobool157.not.i = icmp eq i32 %and156.i, 0
  br i1 %tobool157.not.i, label %if.else161.i, label %if.then158.i

if.then158.i:                                     ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv159.i = trunc i32 %val.0.i to i8
  %bops.i246.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %74 = ptrtoint ptr %bops.i246.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bops.i246.i, align 4
  %write_r8d8.i247.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %write_r8d8.i247.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write_r8d8.i247.i, align 4
  %78 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dpot, align 4
  %conv.i248.i = trunc i16 %value to i8
  %call.i249.i = tail call i32 %77(ptr noundef %79, i8 noundef zeroext %conv159.i, i8 noundef zeroext %conv.i248.i) #8
  br label %return

if.else161.i:                                     ; preds = %if.end154.i
  %and163.i = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163.i)
  %tobool164.not.i = icmp eq i32 %and163.i, 0
  br i1 %tobool164.not.i, label %if.else161.i.return_crit_edge, label %if.then165.i

if.else161.i.return_crit_edge:                    ; preds = %if.else161.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then165.i:                                     ; preds = %if.else161.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv166.i = trunc i32 %val.0.i to i8
  %bops.i250.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %80 = ptrtoint ptr %bops.i250.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bops.i250.i, align 4
  %write_r8d16.i.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %write_r8d16.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write_r8d16.i.i, align 4
  %84 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dpot, align 4
  %call.i251.i = tail call i32 %83(ptr noundef %85, i8 noundef zeroext %conv166.i, i16 noundef zeroext %value) #8
  br label %return

if.else:                                          ; preds = %entry
  %uid.i1 = getelementptr inbounds %struct.dpot_data, ptr %dpot, i32 0, i32 5
  %86 = ptrtoint ptr %uid.i1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %uid.i1, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %87, label %sw.default.i [
    i32 37, label %if.else.sw.bb.i6_crit_edge
    i32 38, label %if.else.sw.bb.i6_crit_edge23
    i32 36, label %if.else.sw.bb1.i_crit_edge
    i32 33, label %if.else.sw.bb1.i_crit_edge24
    i32 34, label %if.else.sw.bb1.i_crit_edge25
    i32 35, label %if.else.sw.bb1.i_crit_edge26
    i32 39, label %if.else.sw.bb1.i_crit_edge27
    i32 40, label %if.else.sw.bb1.i_crit_edge28
    i32 41, label %if.else.sw.bb1.i_crit_edge29
    i32 44, label %if.else.sw.bb6.i_crit_edge
    i32 43, label %if.else.sw.bb6.i_crit_edge30
    i32 46, label %if.else.sw.bb15.i_crit_edge
    i32 47, label %if.else.sw.bb15.i_crit_edge31
    i32 45, label %sw.bb34.i
    i32 50, label %if.else.sw.bb48.i_crit_edge
    i32 51, label %if.else.sw.bb48.i_crit_edge32
  ]

if.else.sw.bb48.i_crit_edge32:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48.i

if.else.sw.bb48.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48.i

if.else.sw.bb15.i_crit_edge31:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

if.else.sw.bb15.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15.i

if.else.sw.bb6.i_crit_edge30:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i

if.else.sw.bb6.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i

if.else.sw.bb1.i_crit_edge29:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.else.sw.bb1.i_crit_edge28:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.else.sw.bb1.i_crit_edge27:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.else.sw.bb1.i_crit_edge26:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.else.sw.bb1.i_crit_edge25:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.else.sw.bb1.i_crit_edge24:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.else.sw.bb1.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.else.sw.bb.i6_crit_edge23:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i6

if.else.sw.bb.i6_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i6

sw.bb.i6:                                         ; preds = %if.else.sw.bb.i6_crit_edge, %if.else.sw.bb.i6_crit_edge23
  %conv.i2 = trunc i16 %value to i8
  %bops.i.i3 = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %89 = ptrtoint ptr %bops.i.i3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bops.i.i3, align 4
  %write_d8.i.i4 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %write_d8.i.i4 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write_d8.i.i4, align 4
  %93 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dpot, align 4
  %call.i.i5 = tail call i32 %92(ptr noundef %94, i8 noundef zeroext %conv.i2) #8
  br label %return

sw.bb1.i:                                         ; preds = %if.else.sw.bb1.i_crit_edge, %if.else.sw.bb1.i_crit_edge24, %if.else.sw.bb1.i_crit_edge25, %if.else.sw.bb1.i_crit_edge26, %if.else.sw.bb1.i_crit_edge27, %if.else.sw.bb1.i_crit_edge28, %if.else.sw.bb1.i_crit_edge29
  %95 = and i8 %reg, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp.i = icmp eq i8 %95, 0
  %conv4.i = select i1 %cmp.i, i8 0, i8 -128
  %bops.i133.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %96 = ptrtoint ptr %bops.i133.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bops.i133.i, align 4
  %write_r8d8.i.i7 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %write_r8d8.i.i7 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write_r8d8.i.i7, align 4
  %100 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dpot, align 4
  %conv.i.i = trunc i16 %value to i8
  %call.i134.i = tail call i32 %99(ptr noundef %101, i8 noundef zeroext %conv4.i, i8 noundef zeroext %conv.i.i) #8
  br label %return

sw.bb6.i:                                         ; preds = %if.else.sw.bb6.i_crit_edge, %if.else.sw.bb6.i_crit_edge30
  %102 = and i8 %reg, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i8 = icmp eq i8 %102, 0
  br i1 %tobool.not.i8, label %sw.bb6.i.if.end12.i_crit_edge, label %if.then.i9

sw.bb6.i.if.end12.i_crit_edge:                    ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then.i9:                                       ; preds = %sw.bb6.i
  %bops.i135.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %103 = ptrtoint ptr %bops.i135.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bops.i135.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %107 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dpot, align 4
  %call.i136.i = tail call i32 %106(ptr noundef %108) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i136.i)
  %tobool10.not.i = icmp ult i32 %call.i136.i, 64
  br i1 %tobool10.not.i, label %if.then.i9.if.end12.i_crit_edge, label %if.then.i9.return_crit_edge

if.then.i9.return_crit_edge:                      ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.i9.if.end12.i_crit_edge:                  ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then.i9.if.end12.i_crit_edge, %sw.bb6.i.if.end12.i_crit_edge
  %ctrl.0.i = phi i8 [ 0, %sw.bb6.i.if.end12.i_crit_edge ], [ -128, %if.then.i9.if.end12.i_crit_edge ]
  %bops.i137.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %109 = ptrtoint ptr %bops.i137.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %bops.i137.i, align 4
  %write_r8d8.i138.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %write_r8d8.i138.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write_r8d8.i138.i, align 4
  %113 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dpot, align 4
  %conv.i139.i = trunc i16 %value to i8
  %call.i140.i = tail call i32 %112(ptr noundef %114, i8 noundef zeroext %ctrl.0.i, i8 noundef zeroext %conv.i139.i) #8
  br label %return

sw.bb15.i:                                        ; preds = %if.else.sw.bb15.i_crit_edge, %if.else.sw.bb15.i_crit_edge31
  %conv16.i = zext i8 %reg to i32
  %and17.i = and i32 %conv16.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %cmp18.i = icmp eq i32 %and17.i, 0
  %cond20.i = select i1 %cmp18.i, i32 0, i32 8
  %and22.i = and i32 %conv16.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %sw.bb15.i.if.end31.i_crit_edge, label %if.then24.i

sw.bb15.i.if.end31.i_crit_edge:                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then24.i:                                      ; preds = %sw.bb15.i
  %conv25.i = trunc i32 %cond20.i to i8
  %bops.i141.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %115 = ptrtoint ptr %bops.i141.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bops.i141.i, align 4
  %read_r8d16.i.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %read_r8d16.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read_r8d16.i.i, align 4
  %119 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dpot, align 4
  %call.i142.i = tail call i32 %118(ptr noundef %120, i8 noundef zeroext %conv25.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %call.i142.i)
  %tobool28.not.i = icmp ult i32 %call.i142.i, 16384
  br i1 %tobool28.not.i, label %if.end30.i, label %if.then24.i.return_crit_edge

if.then24.i.return_crit_edge:                     ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end30.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i10 = or i32 %cond20.i, 32
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end30.i, %sw.bb15.i.if.end31.i_crit_edge
  %ctrl.1.i = phi i32 [ %or.i10, %if.end30.i ], [ %cond20.i, %sw.bb15.i.if.end31.i_crit_edge ]
  %conv32.i11 = trunc i32 %ctrl.1.i to i8
  %bops.i143.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %121 = ptrtoint ptr %bops.i143.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bops.i143.i, align 4
  %write_r8d8.i144.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %write_r8d8.i144.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write_r8d8.i144.i, align 4
  %125 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dpot, align 4
  %conv.i145.i = trunc i16 %value to i8
  %call.i146.i = tail call i32 %124(ptr noundef %126, i8 noundef zeroext %conv32.i11, i8 noundef zeroext %conv.i145.i) #8
  br label %return

sw.bb34.i:                                        ; preds = %if.else
  %127 = and i8 %reg, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool37.not.i = icmp eq i8 %127, 0
  br i1 %tobool37.not.i, label %sw.bb34.i.if.end45.i_crit_edge, label %if.then38.i

sw.bb34.i.if.end45.i_crit_edge:                   ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then38.i:                                      ; preds = %sw.bb34.i
  %bops.i147.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %128 = ptrtoint ptr %bops.i147.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bops.i147.i, align 4
  %read_r8d16.i148.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %read_r8d16.i148.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read_r8d16.i148.i, align 4
  %132 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dpot, align 4
  %call.i149.i = tail call i32 %131(ptr noundef %133, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %call.i149.i)
  %tobool42.not.i = icmp ult i32 %call.i149.i, 16384
  br i1 %tobool42.not.i, label %if.then38.i.if.end45.i_crit_edge, label %if.then38.i.return_crit_edge

if.then38.i.return_crit_edge:                     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then38.i.if.end45.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then38.i.if.end45.i_crit_edge, %sw.bb34.i.if.end45.i_crit_edge
  %ctrl.2.i = phi i8 [ 0, %sw.bb34.i.if.end45.i_crit_edge ], [ 32, %if.then38.i.if.end45.i_crit_edge ]
  %bops.i150.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %134 = ptrtoint ptr %bops.i150.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %bops.i150.i, align 4
  %write_r8d8.i151.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %write_r8d8.i151.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write_r8d8.i151.i, align 4
  %138 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dpot, align 4
  %conv.i152.i = trunc i16 %value to i8
  %call.i153.i = tail call i32 %137(ptr noundef %139, i8 noundef zeroext %ctrl.2.i, i8 noundef zeroext %conv.i152.i) #8
  br label %return

sw.bb48.i:                                        ; preds = %if.else.sw.bb48.i_crit_edge, %if.else.sw.bb48.i_crit_edge32
  %bops.i154.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %140 = ptrtoint ptr %bops.i154.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %bops.i154.i, align 4
  %write_r8d8.i155.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %write_r8d8.i155.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write_r8d8.i155.i, align 4
  %144 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dpot, align 4
  %call.i156.i = tail call i32 %143(ptr noundef %145, i8 noundef zeroext 28, i8 noundef zeroext 3) #8
  %146 = and i8 %reg, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool52.not.i = icmp eq i8 %146, 0
  br i1 %tobool52.not.i, label %if.end55.i, label %if.then53.i

if.then53.i:                                      ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %bops.i154.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bops.i154.i, align 4
  %write_r8d8.i158.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %148, i32 0, i32 4
  %149 = ptrtoint ptr %write_r8d8.i158.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %write_r8d8.i158.i, align 4
  %151 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dpot, align 4
  %call.i159.i = tail call i32 %150(ptr noundef %152, i8 noundef zeroext 12, i8 noundef zeroext 0) #8
  br label %return

if.end55.i:                                       ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %uid.i1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %uid.i1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %154)
  %cmp57.i = icmp eq i32 %154, 51
  %shl.i12 = shl i16 %value, 2
  %spec.select.i13 = select i1 %cmp57.i, i16 %shl.i12, i16 %value
  %155 = lshr i16 %spec.select.i13, 8
  %156 = trunc i16 %155 to i8
  %conv66.i = or i8 %156, 4
  %157 = ptrtoint ptr %bops.i154.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %bops.i154.i, align 4
  %write_r8d8.i161.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %write_r8d8.i161.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write_r8d8.i161.i, align 4
  %161 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dpot, align 4
  %conv.i162.i = trunc i16 %spec.select.i13 to i8
  %call.i163.i = tail call i32 %160(ptr noundef %162, i8 noundef zeroext %conv66.i, i8 noundef zeroext %conv.i162.i) #8
  br label %return

sw.default.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %reg)
  %tobool73.not.i = icmp sgt i8 %reg, -1
  br i1 %tobool73.not.i, label %if.end76.i, label %if.then74.i

if.then74.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %bops.i164.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %163 = ptrtoint ptr %bops.i164.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bops.i164.i, align 4
  %write_d8.i165.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %write_d8.i165.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write_d8.i165.i, align 4
  %167 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dpot, align 4
  %call.i166.i = tail call i32 %166(ptr noundef %168, i8 noundef zeroext %reg) #8
  br label %return

if.end76.i:                                       ; preds = %sw.default.i
  %max_pos.i = getelementptr inbounds %struct.dpot_data, ptr %dpot, i32 0, i32 3
  %169 = ptrtoint ptr %max_pos.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %max_pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %170)
  %cmp77.i = icmp ugt i32 %170, 256
  br i1 %cmp77.i, label %if.then79.i, label %if.else.i16

if.then79.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %and81.i = and i8 %reg, -8
  %and83.i = shl nuw i8 %reg, 1
  %shl84.i14 = and i8 %and83.i, 14
  %or85.i = or i8 %shl84.i14, %and81.i
  %bops.i167.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %171 = ptrtoint ptr %bops.i167.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %bops.i167.i, align 4
  %write_r8d16.i.i15 = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %172, i32 0, i32 5
  %173 = ptrtoint ptr %write_r8d16.i.i15 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %write_r8d16.i.i15, align 4
  %175 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dpot, align 4
  %call.i168.i = tail call i32 %174(ptr noundef %176, i8 noundef zeroext %or85.i, i16 noundef zeroext %value) #8
  br label %return

if.else.i16:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %bops.i169.i = getelementptr inbounds %struct.ad_dpot_bus_data, ptr %dpot, i32 0, i32 1
  %177 = ptrtoint ptr %bops.i169.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %bops.i169.i, align 4
  %write_r8d8.i170.i = getelementptr inbounds %struct.ad_dpot_bus_ops, ptr %178, i32 0, i32 4
  %179 = ptrtoint ptr %write_r8d8.i170.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %write_r8d8.i170.i, align 4
  %181 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dpot, align 4
  %conv.i171.i = trunc i16 %value to i8
  %call.i172.i = tail call i32 %180(ptr noundef %182, i8 noundef zeroext %reg, i8 noundef zeroext %conv.i171.i) #8
  br label %return

return:                                           ; preds = %if.else.i16, %if.then79.i, %if.then74.i, %if.end55.i, %if.then53.i, %if.end45.i, %if.then38.i.return_crit_edge, %if.end31.i, %if.then24.i.return_crit_edge, %if.end12.i, %if.then.i9.return_crit_edge, %sw.bb1.i, %sw.bb.i6, %if.then165.i, %if.else161.i.return_crit_edge, %if.then158.i, %if.then140.i, %if.then130.i, %if.then77.i, %if.then51.i, %if.then22.i, %if.then13.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_rdac1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_rdac1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !171
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %entry.sysfs_set_reg.exit_crit_edge

entry.sysfs_set_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sysfs_set_reg.exit

if.end20.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %rdac_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rdac_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rdac_mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp ugt i32 %4, %6
  br i1 %cmp.i, label %if.then21.i, label %if.end20.i.if.end23.i_crit_edge

if.end20.i.if.end23.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end20.i.if.end23.i_crit_edge
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %conv24.i = trunc i32 %9 to i16
  call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext %conv24.i) #8
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.end23.i, %entry.sysfs_set_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end23.i ], [ %call.i.i, %entry.sysfs_set_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_rdac2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_rdac2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !171
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %entry.sysfs_set_reg.exit_crit_edge

entry.sysfs_set_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sysfs_set_reg.exit

if.end20.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %rdac_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rdac_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rdac_mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp ugt i32 %4, %6
  br i1 %cmp.i, label %if.then21.i, label %if.end20.i.if.end23.i_crit_edge

if.end20.i.if.end23.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end20.i.if.end23.i_crit_edge
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %conv24.i = trunc i32 %9 to i16
  call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext 2, i16 noundef zeroext %conv24.i) #8
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.end23.i, %entry.sysfs_set_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end23.i ], [ %call.i.i, %entry.sysfs_set_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_rdac3(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_rdac3(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !171
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %entry.sysfs_set_reg.exit_crit_edge

entry.sysfs_set_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sysfs_set_reg.exit

if.end20.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %rdac_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rdac_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rdac_mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp ugt i32 %4, %6
  br i1 %cmp.i, label %if.then21.i, label %if.end20.i.if.end23.i_crit_edge

if.end20.i.if.end23.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end20.i.if.end23.i_crit_edge
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %conv24.i = trunc i32 %9 to i16
  call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext 3, i16 noundef zeroext %conv24.i) #8
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.end23.i, %entry.sysfs_set_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end23.i ], [ %call.i.i, %entry.sysfs_set_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_rdac4(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_rdac4(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !171
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %entry.sysfs_set_reg.exit_crit_edge

entry.sysfs_set_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sysfs_set_reg.exit

if.end20.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %rdac_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rdac_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rdac_mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp ugt i32 %4, %6
  br i1 %cmp.i, label %if.then21.i, label %if.end20.i.if.end23.i_crit_edge

if.end20.i.if.end23.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end20.i.if.end23.i_crit_edge
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %conv24.i = trunc i32 %9 to i16
  call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext 4, i16 noundef zeroext %conv24.i) #8
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.end23.i, %entry.sysfs_set_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end23.i ], [ %call.i.i, %entry.sysfs_set_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_rdac5(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 5)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_rdac5(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !171
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %entry.sysfs_set_reg.exit_crit_edge

entry.sysfs_set_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sysfs_set_reg.exit

if.end20.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %rdac_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rdac_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rdac_mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp ugt i32 %4, %6
  br i1 %cmp.i, label %if.then21.i, label %if.end20.i.if.end23.i_crit_edge

if.end20.i.if.end23.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end20.i.if.end23.i_crit_edge
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %conv24.i = trunc i32 %9 to i16
  call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext 5, i16 noundef zeroext %conv24.i) #8
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.end23.i, %entry.sysfs_set_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end23.i ], [ %call.i.i, %entry.sysfs_set_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_eeprom0(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 32)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_eeprom0(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !171
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %entry.sysfs_set_reg.exit_crit_edge

entry.sysfs_set_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sysfs_set_reg.exit

if.end20.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %rdac_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rdac_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rdac_mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp ugt i32 %4, %6
  br i1 %cmp.i, label %if.then21.i, label %if.end20.i.if.end23.i_crit_edge

if.end20.i.if.end23.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end20.i.if.end23.i_crit_edge
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %conv24.i = trunc i32 %9 to i16
  call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext 32, i16 noundef zeroext %conv24.i) #8
  call void @msleep(i32 noundef 26) #8
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.end23.i, %entry.sysfs_set_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end23.i ], [ %call.i.i, %entry.sysfs_set_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_eeprom1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 33)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_eeprom1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !171
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %entry.sysfs_set_reg.exit_crit_edge

entry.sysfs_set_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sysfs_set_reg.exit

if.end20.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %rdac_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rdac_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rdac_mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp ugt i32 %4, %6
  br i1 %cmp.i, label %if.then21.i, label %if.end20.i.if.end23.i_crit_edge

if.end20.i.if.end23.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end20.i.if.end23.i_crit_edge
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %conv24.i = trunc i32 %9 to i16
  call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext 33, i16 noundef zeroext %conv24.i) #8
  call void @msleep(i32 noundef 26) #8
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.end23.i, %entry.sysfs_set_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end23.i ], [ %call.i.i, %entry.sysfs_set_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_eeprom2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 34)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_eeprom2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !171
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %entry.sysfs_set_reg.exit_crit_edge

entry.sysfs_set_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sysfs_set_reg.exit

if.end20.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %rdac_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rdac_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rdac_mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp ugt i32 %4, %6
  br i1 %cmp.i, label %if.then21.i, label %if.end20.i.if.end23.i_crit_edge

if.end20.i.if.end23.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end20.i.if.end23.i_crit_edge
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %conv24.i = trunc i32 %9 to i16
  call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext 34, i16 noundef zeroext %conv24.i) #8
  call void @msleep(i32 noundef 26) #8
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.end23.i, %entry.sysfs_set_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end23.i ], [ %call.i.i, %entry.sysfs_set_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_eeprom3(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 35)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_eeprom3(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !171
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %entry.sysfs_set_reg.exit_crit_edge

entry.sysfs_set_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sysfs_set_reg.exit

if.end20.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %rdac_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rdac_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rdac_mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp ugt i32 %4, %6
  br i1 %cmp.i, label %if.then21.i, label %if.end20.i.if.end23.i_crit_edge

if.end20.i.if.end23.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end20.i.if.end23.i_crit_edge
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %conv24.i = trunc i32 %9 to i16
  call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext 35, i16 noundef zeroext %conv24.i) #8
  call void @msleep(i32 noundef 26) #8
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.end23.i, %entry.sysfs_set_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end23.i ], [ %call.i.i, %entry.sysfs_set_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_eeprom4(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 36)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_eeprom4(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !171
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %entry.sysfs_set_reg.exit_crit_edge

entry.sysfs_set_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sysfs_set_reg.exit

if.end20.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %rdac_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rdac_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rdac_mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp ugt i32 %4, %6
  br i1 %cmp.i, label %if.then21.i, label %if.end20.i.if.end23.i_crit_edge

if.end20.i.if.end23.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end20.i.if.end23.i_crit_edge
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %conv24.i = trunc i32 %9 to i16
  call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext 36, i16 noundef zeroext %conv24.i) #8
  call void @msleep(i32 noundef 26) #8
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.end23.i, %entry.sysfs_set_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end23.i ], [ %call.i.i, %entry.sysfs_set_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_eeprom5(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 37)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_eeprom5(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #8
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value.i, align 4, !annotation !171
  %call.i.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %entry.sysfs_set_reg.exit_crit_edge

entry.sysfs_set_reg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sysfs_set_reg.exit

if.end20.i:                                       ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value.i, align 4
  %rdac_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rdac_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rdac_mask.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.i = icmp ugt i32 %4, %6
  br i1 %cmp.i, label %if.then21.i, label %if.end20.i.if.end23.i_crit_edge

if.end20.i.if.end23.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %value.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end20.i.if.end23.i_crit_edge
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value.i, align 4
  %conv24.i = trunc i32 %9 to i16
  call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext 37, i16 noundef zeroext %conv24.i) #8
  call void @msleep(i32 noundef 26) #8
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.end23.i, %entry.sysfs_set_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %count, %if.end23.i ], [ %call.i.i, %entry.sysfs_set_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tolerance0(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 56)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tolerance1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 57)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tolerance2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 58)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tolerance3(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 59)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tolerance4(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 60)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tolerance5(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 61)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_otp0en(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %otp_en_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %otp_en_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %otp_en_mask.i, align 4
  %4 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not.i = icmp eq i32 %4, 0
  %cond.i = select i1 %tobool3.not.i, ptr @.str.18, ptr @.str.17
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond.i) #8
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_otp0en(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.17) #8
  %otp_en_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  br i1 %call1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %otp_en_mask.i) #8
  br label %sysfs_set_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %otp_en_mask.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.else.i, %if.then2.i
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_otp1en(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %otp_en_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %otp_en_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %otp_en_mask.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not.i = icmp eq i32 %4, 0
  %cond.i = select i1 %tobool3.not.i, ptr @.str.18, ptr @.str.17
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond.i) #8
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_otp1en(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.17) #8
  %otp_en_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  br i1 %call1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %otp_en_mask.i) #8
  br label %sysfs_set_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %otp_en_mask.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.else.i, %if.then2.i
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_otp2en(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %otp_en_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %otp_en_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %otp_en_mask.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not.i = icmp eq i32 %4, 0
  %cond.i = select i1 %tobool3.not.i, ptr @.str.18, ptr @.str.17
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond.i) #8
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_otp2en(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.17) #8
  %otp_en_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  br i1 %call1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %otp_en_mask.i) #8
  br label %sysfs_set_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %otp_en_mask.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.else.i, %if.then2.i
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_otp3en(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %otp_en_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %otp_en_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %otp_en_mask.i, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not.i = icmp eq i32 %4, 0
  %cond.i = select i1 %tobool3.not.i, ptr @.str.18, ptr @.str.17
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond.i) #8
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_otp3en(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.17) #8
  %otp_en_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  br i1 %call1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %otp_en_mask.i) #8
  br label %sysfs_set_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %otp_en_mask.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.else.i, %if.then2.i
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_otp4en(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %otp_en_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %otp_en_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %otp_en_mask.i, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not.i = icmp eq i32 %4, 0
  %cond.i = select i1 %tobool3.not.i, ptr @.str.18, ptr @.str.17
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond.i) #8
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_otp4en(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.17) #8
  %otp_en_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  br i1 %call1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %otp_en_mask.i) #8
  br label %sysfs_set_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %otp_en_mask.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.else.i, %if.then2.i
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_otp5en(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %otp_en_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %otp_en_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %otp_en_mask.i, align 4
  %4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not.i = icmp eq i32 %4, 0
  %cond.i = select i1 %tobool3.not.i, ptr @.str.18, ptr @.str.17
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond.i) #8
  ret i32 %call4.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_otp5en(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.17) #8
  %otp_en_mask.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 9
  br i1 %call1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 5, ptr noundef %otp_en_mask.i) #8
  br label %sysfs_set_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %otp_en_mask.i) #8
  br label %sysfs_set_reg.exit

sysfs_set_reg.exit:                               ; preds = %if.else.i, %if.then2.i
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_otp0(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 64)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_otp0(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_set_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef %count, i32 noundef 64)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_otp1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 65)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_otp1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_set_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef %count, i32 noundef 65)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_otp2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 66)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_otp2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_set_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef %count, i32 noundef 66)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_otp3(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 67)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_otp3(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_set_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef %count, i32 noundef 67)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_otp4(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 68)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_otp4(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_set_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef %count, i32 noundef 68)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_otp5(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_show_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef 69)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_otp5(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_set_reg(ptr noundef %dev, ptr noundef %buf, i32 noundef %count, i32 noundef 69)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_inc_all(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  tail call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext -40, i16 noundef zeroext 0) #8
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #8
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_dec_all(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  tail call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext -80, i16 noundef zeroext 0) #8
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #8
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_inc_all_6db(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  tail call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext -56, i16 noundef zeroext 0) #8
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #8
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_dec_all_6db(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock.i = getelementptr inbounds %struct.dpot_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  tail call fastcc void @dpot_write(ptr noundef %1, i8 noundef zeroext -96, i16 noundef zeroext 0) #8
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #8
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !30, !31, !33, !34, !35, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !150, !152, !153, !155, !156, !158, !159, !161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @ad_dpot_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/misc/ad525x_dpot.c", i32 697, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/misc/ad525x_dpot.c", i32 722, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ad_dpot_probe._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @ad_dpot_probe._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/misc/ad525x_dpot.c", i32 726, i32 2}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ad_dpot_probe._entry.6, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @ad_dpot_probe._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/ad525x_dpot.c", i32 740, i32 2}
!18 = !{ptr @ad_dpot_probe._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ad_dpot_probe._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_ad_dpot_probe, !21, !"__ksymtab_ad_dpot_probe", i1 false, i1 false}
!21 = !{!"../drivers/misc/ad525x_dpot.c", i32 744, i32 1}
!22 = !{ptr @__ksymtab_ad_dpot_remove, !23, !"__ksymtab_ad_dpot_remove", i1 false, i1 false}
!23 = !{!"../drivers/misc/ad525x_dpot.c", i32 757, i32 1}
!24 = !{ptr @__UNIQUE_ID_author183, !25, !"__UNIQUE_ID_author183", i1 false, i1 false}
!25 = !{!"../drivers/misc/ad525x_dpot.c", i32 760, i32 1}
!26 = !{ptr @__UNIQUE_ID_description184, !27, !"__UNIQUE_ID_description184", i1 false, i1 false}
!27 = !{!"../drivers/misc/ad525x_dpot.c", i32 762, i32 1}
!28 = !{ptr @__UNIQUE_ID_file185, !29, !"__UNIQUE_ID_file185", i1 false, i1 false}
!29 = !{!"../drivers/misc/ad525x_dpot.c", i32 763, i32 1}
!30 = !{ptr @__UNIQUE_ID_license186, !29, !"__UNIQUE_ID_license186", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/misc/ad525x_dpot.c", i32 657, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ad_dpot_add_files._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ad_dpot_add_files._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @dpot_attrib_wipers, !37, !"dpot_attrib_wipers", i1 false, i1 false}
!37 = !{!"../drivers/misc/ad525x_dpot.c", i32 560, i32 32}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/misc/ad525x_dpot.c", i32 524, i32 1}
!40 = !{ptr @dev_attr_rdac0, !39, !"dev_attr_rdac0", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/ad525x_dpot.c", i32 421, i32 23}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/misc/ad525x_dpot.c", i32 423, i32 4}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/ad525x_dpot.c", i32 423, i32 16}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/misc/ad525x_dpot.c", i32 441, i32 23}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/ad525x_dpot.c", i32 443, i32 23}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/misc/ad525x_dpot.c", i32 530, i32 1}
!53 = !{ptr @dev_attr_rdac1, !52, !"dev_attr_rdac1", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/ad525x_dpot.c", i32 536, i32 1}
!56 = !{ptr @dev_attr_rdac2, !55, !"dev_attr_rdac2", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/ad525x_dpot.c", i32 542, i32 1}
!59 = !{ptr @dev_attr_rdac3, !58, !"dev_attr_rdac3", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/misc/ad525x_dpot.c", i32 548, i32 1}
!62 = !{ptr @dev_attr_rdac4, !61, !"dev_attr_rdac4", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/ad525x_dpot.c", i32 554, i32 1}
!65 = !{ptr @dev_attr_rdac5, !64, !"dev_attr_rdac5", i1 false, i1 false}
!66 = !{ptr @dpot_attrib_eeprom, !67, !"dpot_attrib_eeprom", i1 false, i1 false}
!67 = !{!"../drivers/misc/ad525x_dpot.c", i32 570, i32 32}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/misc/ad525x_dpot.c", i32 525, i32 1}
!70 = !{ptr @dev_attr_eeprom0, !69, !"dev_attr_eeprom0", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/misc/ad525x_dpot.c", i32 531, i32 1}
!73 = !{ptr @dev_attr_eeprom1, !72, !"dev_attr_eeprom1", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/misc/ad525x_dpot.c", i32 537, i32 1}
!76 = !{ptr @dev_attr_eeprom2, !75, !"dev_attr_eeprom2", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/misc/ad525x_dpot.c", i32 543, i32 1}
!79 = !{ptr @dev_attr_eeprom3, !78, !"dev_attr_eeprom3", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/misc/ad525x_dpot.c", i32 549, i32 1}
!82 = !{ptr @dev_attr_eeprom4, !81, !"dev_attr_eeprom4", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/misc/ad525x_dpot.c", i32 555, i32 1}
!85 = !{ptr @dev_attr_eeprom5, !84, !"dev_attr_eeprom5", i1 false, i1 false}
!86 = !{ptr @dpot_attrib_tolerance, !87, !"dpot_attrib_tolerance", i1 false, i1 false}
!87 = !{!"../drivers/misc/ad525x_dpot.c", i32 600, i32 32}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/misc/ad525x_dpot.c", i32 526, i32 1}
!90 = !{ptr @dev_attr_tolerance0, !89, !"dev_attr_tolerance0", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/misc/ad525x_dpot.c", i32 532, i32 1}
!93 = !{ptr @dev_attr_tolerance1, !92, !"dev_attr_tolerance1", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/misc/ad525x_dpot.c", i32 538, i32 1}
!96 = !{ptr @dev_attr_tolerance2, !95, !"dev_attr_tolerance2", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/misc/ad525x_dpot.c", i32 544, i32 1}
!99 = !{ptr @dev_attr_tolerance3, !98, !"dev_attr_tolerance3", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/misc/ad525x_dpot.c", i32 550, i32 1}
!102 = !{ptr @dev_attr_tolerance4, !101, !"dev_attr_tolerance4", i1 false, i1 false}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/misc/ad525x_dpot.c", i32 556, i32 1}
!105 = !{ptr @dev_attr_tolerance5, !104, !"dev_attr_tolerance5", i1 false, i1 false}
!106 = !{ptr @dpot_attrib_otp_en, !107, !"dpot_attrib_otp_en", i1 false, i1 false}
!107 = !{!"../drivers/misc/ad525x_dpot.c", i32 590, i32 32}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/misc/ad525x_dpot.c", i32 528, i32 1}
!110 = !{ptr @dev_attr_otp0en, !109, !"dev_attr_otp0en", i1 false, i1 false}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/misc/ad525x_dpot.c", i32 534, i32 1}
!113 = !{ptr @dev_attr_otp1en, !112, !"dev_attr_otp1en", i1 false, i1 false}
!114 = !{ptr @.str.40, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/misc/ad525x_dpot.c", i32 540, i32 1}
!116 = !{ptr @dev_attr_otp2en, !115, !"dev_attr_otp2en", i1 false, i1 false}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/misc/ad525x_dpot.c", i32 546, i32 1}
!119 = !{ptr @dev_attr_otp3en, !118, !"dev_attr_otp3en", i1 false, i1 false}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/misc/ad525x_dpot.c", i32 552, i32 1}
!122 = !{ptr @dev_attr_otp4en, !121, !"dev_attr_otp4en", i1 false, i1 false}
!123 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/misc/ad525x_dpot.c", i32 558, i32 1}
!125 = !{ptr @dev_attr_otp5en, !124, !"dev_attr_otp5en", i1 false, i1 false}
!126 = !{ptr @dpot_attrib_otp, !127, !"dpot_attrib_otp", i1 false, i1 false}
!127 = !{!"../drivers/misc/ad525x_dpot.c", i32 580, i32 32}
!128 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/misc/ad525x_dpot.c", i32 527, i32 1}
!130 = !{ptr @dev_attr_otp0, !129, !"dev_attr_otp0", i1 false, i1 false}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/misc/ad525x_dpot.c", i32 533, i32 1}
!133 = !{ptr @dev_attr_otp1, !132, !"dev_attr_otp1", i1 false, i1 false}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/misc/ad525x_dpot.c", i32 539, i32 1}
!136 = !{ptr @dev_attr_otp2, !135, !"dev_attr_otp2", i1 false, i1 false}
!137 = !{ptr @.str.47, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/misc/ad525x_dpot.c", i32 545, i32 1}
!139 = !{ptr @dev_attr_otp3, !138, !"dev_attr_otp3", i1 false, i1 false}
!140 = !{ptr @.str.48, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/misc/ad525x_dpot.c", i32 551, i32 1}
!142 = !{ptr @dev_attr_otp4, !141, !"dev_attr_otp4", i1 false, i1 false}
!143 = !{ptr @.str.49, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/misc/ad525x_dpot.c", i32 557, i32 1}
!145 = !{ptr @dev_attr_otp5, !144, !"dev_attr_otp5", i1 false, i1 false}
!146 = !{ptr @ad525x_group_commands, !147, !"ad525x_group_commands", i1 false, i1 false}
!147 = !{!"../drivers/misc/ad525x_dpot.c", i32 634, i32 37}
!148 = !{ptr @ad525x_attributes_commands, !149, !"ad525x_attributes_commands", i1 false, i1 false}
!149 = !{!"../drivers/misc/ad525x_dpot.c", i32 626, i32 26}
!150 = !{ptr @.str.50, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/misc/ad525x_dpot.c", i32 621, i32 1}
!152 = !{ptr @dev_attr_inc_all, !151, !"dev_attr_inc_all", i1 false, i1 false}
!153 = !{ptr @.str.51, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/misc/ad525x_dpot.c", i32 622, i32 1}
!155 = !{ptr @dev_attr_dec_all, !154, !"dev_attr_dec_all", i1 false, i1 false}
!156 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/misc/ad525x_dpot.c", i32 623, i32 1}
!158 = !{ptr @dev_attr_inc_all_6db, !157, !"dev_attr_inc_all_6db", i1 false, i1 false}
!159 = !{ptr @.str.53, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/misc/ad525x_dpot.c", i32 624, i32 1}
!161 = !{ptr @dev_attr_dec_all_6db, !160, !"dev_attr_dec_all_6db", i1 false, i1 false}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{!"auto-init"}
!172 = !{i64 2152685054, i64 2152685545, i64 2152685091, i64 2152685147, i64 2152685181, i64 2152685205, i64 2152685246, i64 2152685267, i64 2152685295, i64 2152685329}
!173 = !{i64 2152687090, i64 2152687581, i64 2152687127, i64 2152687183, i64 2152687217, i64 2152687241, i64 2152687282, i64 2152687303, i64 2152687331, i64 2152687365}
