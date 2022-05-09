; ModuleID = '/llk/IR_all_yes/drivers/staging/fieldbus/dev_core.c_pt.bc'
source_filename = "../drivers/staging/fieldbus/dev_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fieldbus_dev_area_updated\22, \22a\22\09"
module asm "\09.weak\09__crc_fieldbus_dev_area_updated\09\09\09\09"
module asm "\09.long\09__crc_fieldbus_dev_area_updated\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fieldbus_dev_area_updated:\09\09\09\09\09"
module asm "\09.asciz \09\22fieldbus_dev_area_updated\22\09\09\09\09\09"
module asm "__kstrtabns_fieldbus_dev_area_updated:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fieldbus_dev_online_changed\22, \22a\22\09"
module asm "\09.weak\09__crc_fieldbus_dev_online_changed\09\09\09\09"
module asm "\09.long\09__crc_fieldbus_dev_online_changed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fieldbus_dev_online_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22fieldbus_dev_online_changed\22\09\09\09\09\09"
module asm "__kstrtabns_fieldbus_dev_online_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fieldbus_dev_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_fieldbus_dev_unregister\09\09\09\09"
module asm "\09.long\09__crc_fieldbus_dev_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fieldbus_dev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22fieldbus_dev_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_fieldbus_dev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fieldbus_dev_register\22, \22a\22\09"
module asm "\09.weak\09__crc_fieldbus_dev_register\09\09\09\09"
module asm "\09.long\09__crc_fieldbus_dev_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fieldbus_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22fieldbus_dev_register\22\09\09\09\09\09"
module asm "__kstrtabns_fieldbus_dev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.fieldbus_dev = type { ptr, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.cdev, ptr, i32, %struct.wait_queue_head, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fb_open_file = type { ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__kstrtab_fieldbus_dev_area_updated = external dso_local constant [0 x i8], align 1
@__kstrtabns_fieldbus_dev_area_updated = external dso_local constant [0 x i8], align 1
@__ksymtab_fieldbus_dev_area_updated = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fieldbus_dev_area_updated to i32), ptr @__kstrtab_fieldbus_dev_area_updated, ptr @__kstrtabns_fieldbus_dev_area_updated }, section "___ksymtab_gpl+fieldbus_dev_area_updated", align 4
@__kstrtab_fieldbus_dev_online_changed = external dso_local constant [0 x i8], align 1
@__kstrtabns_fieldbus_dev_online_changed = external dso_local constant [0 x i8], align 1
@__ksymtab_fieldbus_dev_online_changed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fieldbus_dev_online_changed to i32), ptr @__kstrtab_fieldbus_dev_online_changed, ptr @__kstrtabns_fieldbus_dev_online_changed }, section "___ksymtab_gpl+fieldbus_dev_online_changed", align 4
@fieldbus_mtx = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fieldbus_mtx, i64 52), ptr getelementptr (i8, ptr @fieldbus_mtx, i64 52) }, ptr @fieldbus_mtx, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_fieldbus_dev_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_fieldbus_dev_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_fieldbus_dev_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fieldbus_dev_unregister to i32), ptr @__kstrtab_fieldbus_dev_unregister, ptr @__kstrtabns_fieldbus_dev_unregister }, section "___ksymtab_gpl+fieldbus_dev_unregister", align 4
@__kstrtab_fieldbus_dev_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_fieldbus_dev_register = external dso_local constant [0 x i8], align 1
@__ksymtab_fieldbus_dev_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fieldbus_dev_register to i32), ptr @__kstrtab_fieldbus_dev_register, ptr @__kstrtabns_fieldbus_dev_register }, section "___ksymtab_gpl+fieldbus_dev_register", align 4
@fieldbus_devt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fieldbus_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.7, ptr null, ptr null, ptr @fieldbus_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fieldbus_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_fieldbus_dev__223_342_fieldbus_init4 = internal global ptr @fieldbus_init, section ".initcall4.init", align 4
@__exitcall_fieldbus_exit = internal global ptr @fieldbus_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [60 x i8] c"fieldbus_dev.author=Sven Van Asbroeck <TheSven73@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [57 x i8] c"fieldbus_dev.author=Jonathan Stiles <jonathans@arcx.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [53 x i8] c"fieldbus_dev.description=Fieldbus Device Driver Core\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [56 x i8] c"fieldbus_dev.file=drivers/staging/fieldbus/fieldbus_dev\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [28 x i8] c"fieldbus_dev.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fieldbus_mtx.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fieldbus_mtx\00", [19 x i8] zeroinitializer }, align 32
@__fieldbus_dev_register.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&fb->dc_wq\00", [21 x i8] zeroinitializer }, align 32
@fieldbus_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @fieldbus_read, ptr @fieldbus_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fieldbus_poll, ptr null, ptr null, ptr null, i32 0, ptr @fieldbus_open, ptr null, ptr @fieldbus_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__fieldbus_dev_register._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 283, ptr null, ptr null }, align 1
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013fieldbus_dev%d unable to add device %d:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__fieldbus_dev_register\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/staging/fieldbus/dev_core.c\00", [60 x i8] zeroinitializer }, align 32
@__fieldbus_dev_register._entry_ptr = internal global ptr @__fieldbus_dev_register._entry, section ".printk_index", align 4
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fieldbus_dev%d\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fieldbus_dev\00", [19 x i8] zeroinitializer }, align 32
@fieldbus_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @fieldbus_group, ptr null], [24 x i8] zeroinitializer }, align 32
@fieldbus_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @fieldbus_is_visible, ptr null, ptr @fieldbus_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fieldbus_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @dev_attr_enabled, ptr @dev_attr_card_name, ptr @dev_attr_fieldbus_id, ptr @dev_attr_read_area_size, ptr @dev_attr_write_area_size, ptr @dev_attr_online, ptr @dev_attr_fieldbus_type, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_enabled = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @enabled_show, ptr @enabled_store }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@dev_attr_card_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @card_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fieldbus_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fieldbus_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_read_area_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @read_area_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_write_area_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @write_area_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_online = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @online_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fieldbus_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fieldbus_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"card_name\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fieldbus_id\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read_area_size\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%zu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"write_area_size\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"online\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fieldbus_type\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"profinet\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fieldbus_ida.xa_lock\00", [43 x i8] zeroinitializer }, align 32
@fieldbus_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fieldbus_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013fieldbus_dev: could not register class\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fieldbus_init\00", [18 x i8] zeroinitializer }, align 32
@fieldbus_init._entry_ptr = internal global ptr @fieldbus_init._entry, section ".printk_index", align 4
@fieldbus_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.5, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013fieldbus_dev: unable to allocate char dev region\0A\00", [44 x i8] zeroinitializer }, align 32
@fieldbus_init._entry_ptr.25 = internal global ptr @fieldbus_init._entry.23, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"fieldbus_mtx\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"fieldbus_devt\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 22, i32 14 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"fieldbus_class\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 158, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"fieldbus_ida\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 24, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 278, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"fieldbus_fops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 224, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 282, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 287, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 159, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"fieldbus_groups\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 156, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"fieldbus_group\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 152, i32 37 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"fieldbus_attrs\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 123, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"dev_attr_enabled\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 62, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 42, i32 22 }
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"dev_attr_card_name\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"dev_attr_fieldbus_id\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"dev_attr_read_area_size\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [25 x i8] c"dev_attr_write_area_size\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"dev_attr_online\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"dev_attr_fieldbus_type\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 75, i32 8 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 73, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 102, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 84, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 82, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 93, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 33, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 121, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 112, i32 7 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 115, i32 7 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 23, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 317, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 319, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [39 x i8] c"../drivers/staging/fieldbus/dev_core.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 325, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_fieldbus_exit, ptr @__fieldbus_dev_register._entry, ptr @__fieldbus_dev_register._entry_ptr, ptr @__initcall__kmod_fieldbus_dev__223_342_fieldbus_init4, ptr @__ksymtab_fieldbus_dev_area_updated, ptr @__ksymtab_fieldbus_dev_online_changed, ptr @__ksymtab_fieldbus_dev_register, ptr @__ksymtab_fieldbus_dev_unregister, ptr @fieldbus_exit, ptr @fieldbus_init._entry, ptr @fieldbus_init._entry.23, ptr @fieldbus_init._entry_ptr, ptr @fieldbus_init._entry_ptr.25, ptr @fieldbus_mtx, ptr @fieldbus_devt, ptr @fieldbus_class, ptr @fieldbus_ida, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @fieldbus_fops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @fieldbus_groups, ptr @fieldbus_group, ptr @fieldbus_attrs, ptr @dev_attr_enabled, ptr @.str.8, ptr @.str.9, ptr @dev_attr_card_name, ptr @dev_attr_fieldbus_id, ptr @dev_attr_read_area_size, ptr @dev_attr_write_area_size, ptr @dev_attr_online, ptr @dev_attr_fieldbus_type, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @fieldbus_init.__key, ptr @.str.21, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fieldbus_mtx to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fieldbus_devt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fieldbus_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fieldbus_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fieldbus_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fieldbus_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fieldbus_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fieldbus_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_enabled to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_card_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fieldbus_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_read_area_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_write_area_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_online to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fieldbus_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fieldbus_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fieldbus_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fieldbus_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fieldbus_dev_area_updated(ptr noundef %fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dc_event = getelementptr inbounds %struct.fieldbus_dev, ptr %fb, i32 0, i32 13
  %0 = ptrtoint ptr %dc_event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dc_event, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %dc_event, align 4
  %dc_wq = getelementptr inbounds %struct.fieldbus_dev, ptr %fb, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %dc_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fieldbus_dev_online_changed(ptr nocapture noundef %fb, i1 noundef zeroext %online) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %online to i8
  %online1 = getelementptr inbounds %struct.fieldbus_dev, ptr %fb, i32 0, i32 15
  %0 = ptrtoint ptr %online1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %online1, align 4
  %dev = getelementptr inbounds %struct.fieldbus_dev, ptr %fb, i32 0, i32 12
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call = tail call i32 @kobject_uevent(ptr noundef %2, i32 noundef 2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fieldbus_dev_unregister(ptr noundef %fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fieldbus_mtx, i32 noundef 0) #9
  %tobool.not.i = icmp eq ptr %fb, null
  br i1 %tobool.not.i, label %entry.__fieldbus_dev_unregister.exit_crit_edge, label %if.end.i

entry.__fieldbus_dev_unregister.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__fieldbus_dev_unregister.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cdev.i = getelementptr inbounds %struct.fieldbus_dev, ptr %fb, i32 0, i32 11
  %dev.i = getelementptr inbounds %struct.fieldbus_dev, ptr %fb, i32 0, i32 11, i32 4
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev.i, align 4
  tail call void @device_destroy(ptr noundef nonnull @fieldbus_class, i32 noundef %1) #9
  tail call void @cdev_del(ptr noundef %cdev.i) #9
  %id.i = getelementptr inbounds %struct.fieldbus_dev, ptr %fb, i32 0, i32 10
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  tail call void @ida_free(ptr noundef nonnull @fieldbus_ida, i32 noundef %3) #9
  br label %__fieldbus_dev_unregister.exit

__fieldbus_dev_unregister.exit:                   ; preds = %if.end.i, %entry.__fieldbus_dev_unregister.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fieldbus_mtx) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fieldbus_dev_register(ptr noundef %fb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fieldbus_mtx, i32 noundef 0) #9
  %tobool.not.i = icmp eq ptr %fb, null
  br i1 %tobool.not.i, label %entry.__fieldbus_dev_register.exit_crit_edge, label %if.end.i

entry.__fieldbus_dev_register.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__fieldbus_dev_register.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.__fieldbus_dev_register.exit_crit_edge, label %lor.lhs.false.i

if.end.i.__fieldbus_dev_register.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__fieldbus_dev_register.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %write_area.i = getelementptr inbounds %struct.fieldbus_dev, ptr %fb, i32 0, i32 1
  %2 = ptrtoint ptr %write_area.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_area.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.__fieldbus_dev_register.exit_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.__fieldbus_dev_register.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__fieldbus_dev_register.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %fieldbus_id_get.i = getelementptr inbounds %struct.fieldbus_dev, ptr %fb, i32 0, i32 7
  %4 = ptrtoint ptr %fieldbus_id_get.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fieldbus_id_get.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %lor.lhs.false3.i.__fieldbus_dev_register.exit_crit_edge, label %if.end6.i

lor.lhs.false3.i.__fieldbus_dev_register.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__fieldbus_dev_register.exit

if.end6.i:                                        ; preds = %lor.lhs.false3.i
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @fieldbus_ida, i32 noundef 0, i32 noundef 31, i32 noundef 3264) #9
  %id.i = getelementptr inbounds %struct.fieldbus_dev, ptr %fb, i32 0, i32 10
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end6.i.__fieldbus_dev_register.exit_crit_edge, label %if.end10.i

if.end6.i.__fieldbus_dev_register.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__fieldbus_dev_register.exit

if.end10.i:                                       ; preds = %if.end6.i
  %7 = load i32, ptr @fieldbus_devt, align 4
  %shr.i = and i32 %7, -1048576
  %or.i = or i32 %shr.i, %call.i
  %dc_wq.i = getelementptr inbounds %struct.fieldbus_dev, ptr %fb, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %dc_wq.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @__fieldbus_dev_register.__key) #9
  %cdev.i = getelementptr inbounds %struct.fieldbus_dev, ptr %fb, i32 0, i32 11
  tail call void @cdev_init(ptr noundef %cdev.i, ptr noundef nonnull @fieldbus_fops) #9
  %call13.i = tail call i32 @cdev_add(ptr noundef %cdev.i, i32 noundef %or.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end23.i, label %do.end18.i

do.end18.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.i, align 4
  %10 = load i32, ptr @fieldbus_devt, align 4
  %shr20.i = lshr i32 %10, 20
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %9, i32 noundef %shr20.i, i32 noundef %9) #12
  br label %err_cdev.i

if.end23.i:                                       ; preds = %if.end10.i
  %parent.i = getelementptr inbounds %struct.fieldbus_dev, ptr %fb, i32 0, i32 9
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 4
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 4
  %call25.i = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef nonnull @fieldbus_class, ptr noundef %12, i32 noundef %or.i, ptr noundef nonnull %fb, ptr noundef nonnull @.str.6, i32 noundef %14) #9
  %dev.i = getelementptr inbounds %struct.fieldbus_dev, ptr %fb, i32 0, i32 12
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25.i, ptr %dev.i, align 4
  %cmp.i.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then28.i, label %if.end23.i.__fieldbus_dev_register.exit_crit_edge

if.end23.i.__fieldbus_dev_register.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__fieldbus_dev_register.exit

if.then28.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call25.i to i32
  tail call void @cdev_del(ptr noundef %cdev.i) #9
  br label %err_cdev.i

err_cdev.i:                                       ; preds = %if.then28.i, %do.end18.i
  %err.0.i = phi i32 [ %call13.i, %do.end18.i ], [ %16, %if.then28.i ]
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i, align 4
  tail call void @ida_free(ptr noundef nonnull @fieldbus_ida, i32 noundef %18) #9
  br label %__fieldbus_dev_register.exit

__fieldbus_dev_register.exit:                     ; preds = %err_cdev.i, %if.end23.i.__fieldbus_dev_register.exit_crit_edge, %if.end6.i.__fieldbus_dev_register.exit_crit_edge, %lor.lhs.false3.i.__fieldbus_dev_register.exit_crit_edge, %lor.lhs.false.i.__fieldbus_dev_register.exit_crit_edge, %if.end.i.__fieldbus_dev_register.exit_crit_edge, %entry.__fieldbus_dev_register.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %err_cdev.i ], [ -22, %entry.__fieldbus_dev_register.exit_crit_edge ], [ -22, %lor.lhs.false3.i.__fieldbus_dev_register.exit_crit_edge ], [ -22, %lor.lhs.false.i.__fieldbus_dev_register.exit_crit_edge ], [ -22, %if.end.i.__fieldbus_dev_register.exit_crit_edge ], [ %call.i, %if.end6.i.__fieldbus_dev_register.exit_crit_edge ], [ 0, %if.end23.i.__fieldbus_dev_register.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @fieldbus_mtx) #9
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fieldbus_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load i32, ptr @fieldbus_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 32) #9
  tail call void @class_unregister(ptr noundef nonnull @fieldbus_class) #9
  tail call void @ida_destroy(ptr noundef nonnull @fieldbus_ida) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fieldbus_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__class_register(ptr noundef nonnull @fieldbus_class, ptr noundef nonnull @fieldbus_init.__key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @fieldbus_devt, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @.str.7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  tail call void @class_unregister(ptr noundef nonnull @fieldbus_class) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call3, %do.end8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fieldbus_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %size, ptr noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dc_event = getelementptr inbounds %struct.fieldbus_dev, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %dc_event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dc_event, align 4
  %dc_event2 = getelementptr inbounds %struct.fb_open_file, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dc_event2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dc_event2, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call = tail call i32 %8(ptr noundef %3, ptr noundef %buf, i32 noundef %size, ptr noundef %offset) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fieldbus_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %size, ptr noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %write_area = getelementptr inbounds %struct.fieldbus_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write_area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_area, align 4
  %call = tail call i32 %5(ptr noundef %3, ptr noundef %buf, i32 noundef %size, ptr noundef %offset) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fieldbus_poll(ptr noundef %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dc_wq = getelementptr inbounds %struct.fieldbus_dev, ptr %3, i32 0, i32 14
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %dc_wq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %filp, ptr noundef nonnull %dc_wq, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %dc_event = getelementptr inbounds %struct.fieldbus_dev, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %dc_event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dc_event, align 4
  %dc_event2 = getelementptr inbounds %struct.fb_open_file, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dc_event2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dc_event2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  %spec.select = select i1 %cmp.not, i32 325, i32 335
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fieldbus_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 8) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %2, i32 -44
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %call7.i.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fieldbus_release(ptr nocapture noundef readnone %node, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @fieldbus_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode2 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %mode2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mode2, align 4
  %cmp = icmp eq ptr %attr, @dev_attr_enabled
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %enable_get = getelementptr inbounds %struct.fieldbus_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %enable_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_get, align 4
  %tobool.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool.not, i16 0, i16 292
  %simple_enable_set = getelementptr inbounds %struct.fieldbus_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %simple_enable_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %simple_enable_set, align 4
  %tobool5.not = icmp eq ptr %7, null
  %8 = or i16 %spec.select, 128
  %spec.select16 = select i1 %tobool5.not, i16 %spec.select, i16 %8
  br label %if.end11

if.end11:                                         ; preds = %if.then, %entry.if.end11_crit_edge
  %mode.1 = phi i16 [ %1, %entry.if.end11_crit_edge ], [ %spec.select16, %if.then ]
  ret i16 %mode.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enabled_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enable_get = getelementptr inbounds %struct.fieldbus_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %enable_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_get, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call zeroext i1 %3(ptr noundef %1) #9
  %lnot.ext = zext i1 %call2 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %lnot.ext)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enabled_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #0 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %value, align 1, !annotation !104
  %simple_enable_set = getelementptr inbounds %struct.fieldbus_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %simple_enable_set to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %simple_enable_set, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %simple_enable_set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %simple_enable_set, align 4
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %value, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6 = icmp ne i8 %8, 0
  %call7 = call i32 %6(ptr noundef %1, i1 noundef zeroext %tobool6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  %call7.n = select i1 %cmp, i32 %call7, i32 %n
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call7.n, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @card_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %card_name = getelementptr inbounds %struct.fieldbus_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card_name, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fieldbus_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fieldbus_id_get = getelementptr inbounds %struct.fieldbus_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %fieldbus_id_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fieldbus_id_get, align 4
  %call1 = tail call i32 %3(ptr noundef %1, ptr noundef %buf, i32 noundef 4096) #9
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_area_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %read_area_sz = getelementptr inbounds %struct.fieldbus_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %read_area_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read_area_sz, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_area_size_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %write_area_sz = getelementptr inbounds %struct.fieldbus_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %write_area_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %write_area_sz, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @online_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %online = getelementptr inbounds %struct.fieldbus_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %online, align 4, !range !105
  %4 = zext i8 %3 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %4)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fieldbus_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fieldbus_type = getelementptr inbounds %struct.fieldbus_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %fieldbus_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fieldbus_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cond = icmp eq i32 %3, 1
  %.str.18..str.19 = select i1 %cond, ptr @.str.18, ptr @.str.19
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, ptr noundef nonnull %.str.18..str.19)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !27, !29, !30, !32, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !55, !57, !58, !60, !62, !63, !65, !66, !68, !70, !71, !73, !74, !76, !77, !79, !81, !83, !84, !86, !88, !89, !90, !91, !93, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__ksymtab_fieldbus_dev_area_updated, !1, !"__ksymtab_fieldbus_dev_area_updated", i1 false, i1 false}
!1 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 239, i32 1}
!2 = !{ptr @__ksymtab_fieldbus_dev_online_changed, !3, !"__ksymtab_fieldbus_dev_online_changed", i1 false, i1 false}
!3 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 246, i32 1}
!4 = !{ptr @__ksymtab_fieldbus_dev_unregister, !5, !"__ksymtab_fieldbus_dev_unregister", i1 false, i1 false}
!5 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 263, i32 1}
!6 = !{ptr @__ksymtab_fieldbus_dev_register, !7, !"__ksymtab_fieldbus_dev_register", i1 false, i1 false}
!7 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 311, i32 1}
!8 = !{ptr @__initcall__kmod_fieldbus_dev__223_342_fieldbus_init4, !9, !"__initcall__kmod_fieldbus_dev__223_342_fieldbus_init4", i1 false, i1 false}
!9 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 342, i32 1}
!10 = !{ptr @__exitcall_fieldbus_exit, !11, !"__exitcall_fieldbus_exit", i1 false, i1 false}
!11 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 343, i32 1}
!12 = !{ptr @__UNIQUE_ID_author224, !13, !"__UNIQUE_ID_author224", i1 false, i1 false}
!13 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 345, i32 1}
!14 = !{ptr @__UNIQUE_ID_author225, !15, !"__UNIQUE_ID_author225", i1 false, i1 false}
!15 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 346, i32 1}
!16 = !{ptr @__UNIQUE_ID_description226, !17, !"__UNIQUE_ID_description226", i1 false, i1 false}
!17 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 347, i32 1}
!18 = !{ptr @__UNIQUE_ID_file227, !19, !"__UNIQUE_ID_file227", i1 false, i1 false}
!19 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 348, i32 1}
!20 = !{ptr @__UNIQUE_ID_license228, !19, !"__UNIQUE_ID_license228", i1 false, i1 false}
!21 = !{ptr @fieldbus_devt, !22, !"fieldbus_devt", i1 false, i1 false}
!22 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 22, i32 14}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 24, i32 8}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @fieldbus_mtx, !24, !"fieldbus_mtx", i1 false, i1 false}
!27 = !{ptr @__fieldbus_dev_register.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 278, i32 2}
!29 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 282, i32 3}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__fieldbus_dev_register._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @__fieldbus_dev_register._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 287, i32 5}
!38 = !{ptr @fieldbus_fops, !39, !"fieldbus_fops", i1 false, i1 false}
!39 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 224, i32 37}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 159, i32 11}
!42 = !{ptr @fieldbus_class, !43, !"fieldbus_class", i1 false, i1 false}
!43 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 158, i32 21}
!44 = !{ptr @fieldbus_groups, !45, !"fieldbus_groups", i1 false, i1 false}
!45 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 156, i32 1}
!46 = !{ptr @fieldbus_group, !47, !"fieldbus_group", i1 false, i1 false}
!47 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 152, i32 37}
!48 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 62, i32 8}
!50 = !{ptr @dev_attr_enabled, !49, !"dev_attr_enabled", i1 false, i1 false}
!51 = !{ptr @.str.9, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 42, i32 22}
!53 = !{ptr @fieldbus_attrs, !54, !"fieldbus_attrs", i1 false, i1 false}
!54 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 123, i32 26}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 75, i32 8}
!57 = !{ptr @dev_attr_card_name, !56, !"dev_attr_card_name", i1 false, i1 false}
!58 = !{ptr @.str.11, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 73, i32 34}
!60 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 102, i32 8}
!62 = !{ptr @dev_attr_fieldbus_id, !61, !"dev_attr_fieldbus_id", i1 false, i1 false}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 84, i32 8}
!65 = !{ptr @dev_attr_read_area_size, !64, !"dev_attr_read_area_size", i1 false, i1 false}
!66 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 82, i32 22}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 93, i32 8}
!70 = !{ptr @dev_attr_write_area_size, !69, !"dev_attr_write_area_size", i1 false, i1 false}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 33, i32 8}
!73 = !{ptr @dev_attr_online, !72, !"dev_attr_online", i1 false, i1 false}
!74 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 121, i32 8}
!76 = !{ptr @dev_attr_fieldbus_type, !75, !"dev_attr_fieldbus_type", i1 false, i1 false}
!77 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 112, i32 7}
!79 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 115, i32 7}
!81 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 23, i32 8}
!83 = !{ptr @fieldbus_ida, !82, !"fieldbus_ida", i1 false, i1 false}
!84 = !{ptr @fieldbus_init.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 317, i32 8}
!86 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 319, i32 3}
!88 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @fieldbus_init._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @fieldbus_init._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/staging/fieldbus/dev_core.c", i32 325, i32 3}
!93 = !{ptr @fieldbus_init._entry.23, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @fieldbus_init._entry_ptr.25, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"auto-init"}
!105 = !{i8 0, i8 2}
