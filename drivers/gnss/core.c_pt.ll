; ModuleID = '/llk/IR_all_yes/drivers/gnss/core.c_pt.bc'
source_filename = "../drivers/gnss/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gnss_allocate_device\22, \22a\22\09"
module asm "\09.weak\09__crc_gnss_allocate_device\09\09\09\09"
module asm "\09.long\09__crc_gnss_allocate_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gnss_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22gnss_allocate_device\22\09\09\09\09\09"
module asm "__kstrtabns_gnss_allocate_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gnss_put_device\22, \22a\22\09"
module asm "\09.weak\09__crc_gnss_put_device\09\09\09\09"
module asm "\09.long\09__crc_gnss_put_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gnss_put_device:\09\09\09\09\09"
module asm "\09.asciz \09\22gnss_put_device\22\09\09\09\09\09"
module asm "__kstrtabns_gnss_put_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gnss_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_gnss_register_device\09\09\09\09"
module asm "\09.long\09__crc_gnss_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gnss_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22gnss_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_gnss_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gnss_deregister_device\22, \22a\22\09"
module asm "\09.weak\09__crc_gnss_deregister_device\09\09\09\09"
module asm "\09.long\09__crc_gnss_deregister_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gnss_deregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22gnss_deregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_gnss_deregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gnss_insert_raw\22, \22a\22\09"
module asm "\09.weak\09__crc_gnss_insert_raw\09\09\09\09"
module asm "\09.long\09__crc_gnss_insert_raw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gnss_insert_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22gnss_insert_raw\22\09\09\09\09\09"
module asm "__kstrtabns_gnss_insert_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.gnss_device = type { %struct.device, %struct.cdev, i32, i32, i32, %struct.rw_semaphore, ptr, i32, i8, %struct.mutex, %struct.kfifo, %struct.wait_queue_head, %struct.mutex, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kfifo = type { %union.anon.67, [0 x i8] }
%union.anon.67 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gnss_operations = type { ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }

@gnss_minors = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@gnss_first = internal global { i32, [28 x i8] } zeroinitializer, align 32
@gnss_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gnss%d\00", [25 x i8] zeroinitializer }, align 32
@gnss_allocate_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&gdev->rwsem\00", [19 x i8] zeroinitializer }, align 32
@gnss_allocate_device.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&gdev->read_mutex\00", [46 x i8] zeroinitializer }, align 32
@gnss_allocate_device.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&gdev->write_mutex\00", [45 x i8] zeroinitializer }, align 32
@gnss_allocate_device.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&gdev->read_queue\00", [46 x i8] zeroinitializer }, align 32
@gnss_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @gnss_read, ptr @gnss_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gnss_poll, ptr null, ptr null, ptr null, i32 0, ptr @gnss_open, ptr null, ptr @gnss_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_gnss_allocate_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_gnss_allocate_device = external dso_local constant [0 x i8], align 1
@__ksymtab_gnss_allocate_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gnss_allocate_device to i32), ptr @__kstrtab_gnss_allocate_device, ptr @__kstrtabns_gnss_allocate_device }, section "___ksymtab_gpl+gnss_allocate_device", align 4
@__kstrtab_gnss_put_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_gnss_put_device = external dso_local constant [0 x i8], align 1
@__ksymtab_gnss_put_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gnss_put_device to i32), ptr @__kstrtab_gnss_put_device, ptr @__kstrtabns_gnss_put_device }, section "___ksymtab_gpl+gnss_put_device", align 4
@gnss_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 293, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add device: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gnss_register_device\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/gnss/core.c\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gnss_register_device._entry_ptr = internal global ptr @gnss_register_device._entry, section ".printk_index", align 4
@__kstrtab_gnss_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_gnss_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_gnss_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gnss_register_device to i32), ptr @__kstrtab_gnss_register_device, ptr @__kstrtabns_gnss_register_device }, section "___ksymtab_gpl+gnss_register_device", align 4
@__kstrtab_gnss_deregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_gnss_deregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_gnss_deregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gnss_deregister_device to i32), ptr @__kstrtab_gnss_deregister_device, ptr @__kstrtabns_gnss_deregister_device }, section "___ksymtab_gpl+gnss_deregister_device", align 4
@__kstrtab_gnss_insert_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_gnss_insert_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_gnss_insert_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gnss_insert_raw to i32), ptr @__kstrtab_gnss_insert_raw, ptr @__kstrtabns_gnss_insert_raw }, section "___ksymtab_gpl+gnss_insert_raw", align 4
@__initcall__kmod_gnss__228_409_gnss_module_init6 = internal global ptr @gnss_module_init, section ".initcall6.init", align 4
@__exitcall_gnss_module_exit = internal global ptr @gnss_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [44 x i8] c"gnss.author=Johan Hovold <johan@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [36 x i8] c"gnss.description=GNSS receiver core\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [28 x i8] c"gnss.file=drivers/gnss/gnss\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [20 x i8] c"gnss.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gnss_minors.xa_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gnss\00", [27 x i8] zeroinitializer }, align 32
@gnss_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.10, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gnss: failed to allocate device numbers: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gnss_module_init\00", [47 x i8] zeroinitializer }, align 32
@gnss_module_init._entry_ptr = internal global ptr @gnss_module_init._entry, section ".printk_index", align 4
@gnss_module_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gnss_module_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.10, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013gnss: failed to create class: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@gnss_module_init._entry_ptr.22 = internal global ptr @gnss_module_init._entry.20, section ".printk_index", align 4
@gnss_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gnss_group, ptr null], [24 x i8] zeroinitializer }, align 32
@gnss_module_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.10, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016gnss: GNSS driver registered with major %d\0A\00", [50 x i8] zeroinitializer }, align 32
@gnss_module_init._entry_ptr.25 = internal global ptr @gnss_module_init._entry.23, section ".printk_index", align 4
@gnss_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gnss_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gnss_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_type, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@gnss_type_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s %s: type name not defined\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NMEA\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SiRF\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UBX\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MTK\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GNSS_TYPE=%s\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"gnss_minors\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"gnss_first\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 28, i32 14 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"gnss_class\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 212, i32 22 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 250, i32 20 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 252, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 253, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 254, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 255, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [10 x i8] c"gnss_fops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 202, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 293, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 27, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 230, i32 6 }
@___asan_gen_.98 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 214, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 156, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 384, i32 57 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 386, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 390, i32 15 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 393, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [12 x i8] c"gnss_groups\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 400, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [11 x i8] c"gnss_group\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 366, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant [11 x i8] c"gnss_attrs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 362, i32 26 }
@___asan_gen_.139 = private unnamed_addr constant [14 x i8] c"dev_attr_type\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 360, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 358, i32 22 }
@___asan_gen_.148 = private unnamed_addr constant [16 x i8] c"gnss_type_names\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 333, i32 27 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 348, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 334, i32 21 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 335, i32 21 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 336, i32 21 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 337, i32 21 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [23 x i8] c"../drivers/gnss/core.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 373, i32 28 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_gnss_module_exit, ptr @__initcall__kmod_gnss__228_409_gnss_module_init6, ptr @__ksymtab_gnss_allocate_device, ptr @__ksymtab_gnss_deregister_device, ptr @__ksymtab_gnss_insert_raw, ptr @__ksymtab_gnss_put_device, ptr @__ksymtab_gnss_register_device, ptr @gnss_module_exit, ptr @gnss_module_init._entry, ptr @gnss_module_init._entry.20, ptr @gnss_module_init._entry.23, ptr @gnss_module_init._entry_ptr, ptr @gnss_module_init._entry_ptr.22, ptr @gnss_module_init._entry_ptr.25, ptr @gnss_register_device._entry, ptr @gnss_register_device._entry_ptr, ptr @gnss_minors, ptr @gnss_first, ptr @gnss_class, ptr @.str, ptr @gnss_allocate_device.__key, ptr @.str.1, ptr @gnss_allocate_device.__key.2, ptr @.str.3, ptr @gnss_allocate_device.__key.4, ptr @.str.5, ptr @gnss_allocate_device.__key.6, ptr @.str.7, ptr @gnss_fops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @gnss_module_init.__key, ptr @.str.21, ptr @gnss_groups, ptr @.str.24, ptr @gnss_group, ptr @gnss_attrs, ptr @dev_attr_type, ptr @.str.26, ptr @.str.27, ptr @gnss_type_names, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_minors to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_first to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_allocate_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_allocate_device.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_allocate_device.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_allocate_device.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_module_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_module_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_module_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gnss_type_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gnss_allocate_device(ptr noundef %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1472) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ida_alloc_range(ptr noundef nonnull @gnss_minors, i32 noundef 0, i32 noundef 15, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %id4 = getelementptr inbounds %struct.gnss_device, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %id4, align 8
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #9
  %2 = load i32, ptr @gnss_first, align 4
  %add = add i32 %2, %call1
  %devt = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 29
  %3 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %devt, align 8
  %4 = load ptr, ptr @gnss_class, align 4
  %class = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 33
  %5 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %class, align 4
  %parent6 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %parent6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent, ptr %parent6, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %7 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @gnss_device_release, ptr %release, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %call7 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, i32 noundef %call1) #9
  %rwsem = getelementptr inbounds %struct.gnss_device, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_rwsem(ptr noundef %rwsem, ptr noundef nonnull @.str.1, ptr noundef nonnull @gnss_allocate_device.__key) #9
  %read_mutex = getelementptr inbounds %struct.gnss_device, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %read_mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @gnss_allocate_device.__key.2) #9
  %write_mutex = getelementptr inbounds %struct.gnss_device, ptr %call7.i.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %write_mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @gnss_allocate_device.__key.4) #9
  %read_queue = getelementptr inbounds %struct.gnss_device, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %read_queue, ptr noundef nonnull @.str.7, ptr noundef nonnull @gnss_allocate_device.__key.6) #9
  %read_fifo = getelementptr inbounds %struct.gnss_device, ptr %call7.i.i, i32 0, i32 10
  %call17 = tail call i32 @__kfifo_alloc(ptr noundef %read_fifo, i32 noundef 4096, i32 noundef 1, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool19.not = icmp eq i32 %call17, 0
  br i1 %tobool19.not, label %if.end21, label %if.end3.err_put_device_crit_edge

if.end3.err_put_device_crit_edge:                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_device

if.end21:                                         ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1024) #12
  %write_buf = getelementptr inbounds %struct.gnss_device, ptr %call7.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i55, ptr %write_buf, align 8
  %tobool24.not = icmp eq ptr %call7.i.i55, null
  br i1 %tobool24.not, label %if.end21.err_put_device_crit_edge, label %if.end26

if.end21.err_put_device_crit_edge:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_put_device

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %cdev = getelementptr inbounds %struct.gnss_device, ptr %call7.i.i, i32 0, i32 1
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @gnss_fops) #9
  %owner = getelementptr inbounds %struct.gnss_device, ptr %call7.i.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %owner, align 8
  br label %cleanup

err_put_device:                                   ; preds = %if.end21.err_put_device_crit_edge, %if.end3.err_put_device_crit_edge
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_put_device, %if.end26, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then2 ], [ null, %err_put_device ], [ %call7.i.i, %if.end26 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gnss_device_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %write_buf = getelementptr inbounds %struct.gnss_device, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_buf, align 8
  tail call void @kfree(ptr noundef %1) #9
  %read_fifo = getelementptr inbounds %struct.gnss_device, ptr %dev, i32 0, i32 10
  tail call void @__kfifo_free(ptr noundef %read_fifo) #9
  %id = getelementptr inbounds %struct.gnss_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  tail call void @ida_free(ptr noundef nonnull @gnss_minors, i32 noundef %3) #9
  tail call void @kfree(ptr noundef %dev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gnss_put_device(ptr noundef %gdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @put_device(ptr noundef %gdev) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gnss_register_device(ptr noundef %gdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.gnss_device, ptr %gdev, i32 0, i32 6
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %write_raw = getelementptr inbounds %struct.gnss_operations, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %write_raw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_raw, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.gnss_device, ptr %gdev, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %or = or i32 %5, 1
  store i32 %or, ptr %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cdev = getelementptr inbounds %struct.gnss_device, ptr %gdev, i32 0, i32 1
  %call = tail call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %gdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %gdev, ptr noundef nonnull @.str.8, i32 noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gnss_deregister_device(ptr noundef %gdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rwsem = getelementptr inbounds %struct.gnss_device, ptr %gdev, i32 0, i32 5
  tail call void @down_write(ptr noundef %rwsem) #9
  %disconnected = getelementptr inbounds %struct.gnss_device, ptr %gdev, i32 0, i32 8
  %0 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %disconnected, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %disconnected, align 4
  %count = getelementptr inbounds %struct.gnss_device, ptr %gdev, i32 0, i32 7
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %read_queue = getelementptr inbounds %struct.gnss_device, ptr %gdev, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %read_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %ops = getelementptr inbounds %struct.gnss_device, ptr %gdev, i32 0, i32 6
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %close = getelementptr inbounds %struct.gnss_operations, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %close, align 4
  tail call void %6(ptr noundef %gdev) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef %rwsem) #9
  %cdev = getelementptr inbounds %struct.gnss_device, ptr %gdev, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %gdev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gnss_insert_raw(ptr noundef %gdev, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %read_fifo = getelementptr inbounds %struct.gnss_device, ptr %gdev, i32 0, i32 10
  %call = tail call i32 @__kfifo_in(ptr noundef %read_fifo, ptr noundef %buf, i32 noundef %count) #9
  %read_queue = getelementptr inbounds %struct.gnss_device, ptr %gdev, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %read_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_module_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @gnss_first, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @gnss_module_init.__key) #9
  store ptr %call3, ptr @gnss_class, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call3 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %0) #13
  %1 = load i32, ptr @gnss_first, align 4
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 16) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev_groups = getelementptr inbounds %struct.class, ptr %call3, i32 0, i32 3
  %2 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @gnss_groups, ptr %dev_groups, align 4
  %dev_uevent = getelementptr inbounds %struct.class, ptr %call3, i32 0, i32 5
  %3 = ptrtoint ptr %dev_uevent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @gnss_uevent, ptr %dev_uevent, align 4
  %4 = load i32, ptr @gnss_first, align 4
  %shr = lshr i32 %4, 20
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %shr) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then5, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %0, %if.then5 ], [ 0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gnss_module_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @gnss_class, align 4
  tail call void @class_destroy(ptr noundef %0) #9
  %1 = load i32, ptr @gnss_first, align 4
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 16) #9
  tail call void @ida_destroy(ptr noundef nonnull @gnss_minors) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %copied = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #9
  %2 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %copied, align 4, !annotation !110
  %read_mutex = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %read_mutex, i32 noundef 0) #9
  %read_fifo = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 10
  %out = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %read_fifo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read_fifo, align 4
  %5 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp102 = icmp eq i32 %4, %6
  br i1 %cmp102, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %disconnected = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 8
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %read_queue = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %while.body.lr.ph
  call void @mutex_unlock(ptr noundef %read_mutex) #9
  %7 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %if.end, label %while.body.cleanup60_crit_edge

while.body.cleanup60_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup60

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup60_crit_edge

if.end.cleanup60_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup60

if.end5:                                          ; preds = %if.end
  call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 107) #9
  %10 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load10 = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load10)
  %tobool13.not = icmp sgt i8 %bf.load10, -1
  br i1 %tobool13.not, label %lor.lhs.false, label %if.end5.if.end49_crit_edge

if.end5.if.end49_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

lor.lhs.false:                                    ; preds = %if.end5
  %11 = ptrtoint ptr %read_fifo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %read_fifo, align 4
  %13 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp19 = icmp eq i32 %12, %14
  br i1 %cmp19, label %if.then22, label %lor.lhs.false.if.end49_crit_edge

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then22:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call97 = call i32 @prepare_to_wait_event(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %16 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load2598 = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load2598)
  %tobool28.not99 = icmp sgt i8 %bf.load2598, -1
  br i1 %tobool28.not99, label %if.then22.lor.lhs.false29_crit_edge, label %if.then22.if.end45.thread91_crit_edge

if.then22.if.end45.thread91_crit_edge:            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.thread91

if.then22.lor.lhs.false29_crit_edge:              ; preds = %if.then22
  br label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %cleanup.lor.lhs.false29_crit_edge, %if.then22.lor.lhs.false29_crit_edge
  %call100 = phi i32 [ %call, %cleanup.lor.lhs.false29_crit_edge ], [ %call97, %if.then22.lor.lhs.false29_crit_edge ]
  %17 = ptrtoint ptr %read_fifo to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %read_fifo, align 4
  %19 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp35 = icmp eq i32 %18, %20
  br i1 %cmp35, label %if.end39, label %lor.lhs.false29.if.end45.thread91_crit_edge

lor.lhs.false29.if.end45.thread91_crit_edge:      ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.thread91

if.end39:                                         ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool40.not = icmp eq i32 %call100, 0
  br i1 %tobool40.not, label %cleanup, label %if.end45

cleanup:                                          ; preds = %if.end39
  call void @schedule() #9
  %call = call i32 @prepare_to_wait_event(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %21 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load25 = load i8, ptr %disconnected, align 4
  %tobool28.not = icmp sgt i8 %bf.load25, -1
  br i1 %tobool28.not, label %cleanup.lor.lhs.false29_crit_edge, label %cleanup.if.end45.thread91_crit_edge

cleanup.if.end45.thread91_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.thread91

cleanup.lor.lhs.false29_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false29

if.end45.thread91:                                ; preds = %cleanup.if.end45.thread91_crit_edge, %lor.lhs.false29.if.end45.thread91_crit_edge, %if.then22.if.end45.thread91_crit_edge
  call void @finish_wait(ptr noundef %read_queue, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end49

if.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %cleanup60

if.end49:                                         ; preds = %if.end45.thread91, %lor.lhs.false.if.end49_crit_edge, %if.end5.if.end49_crit_edge
  call void @mutex_lock_nested(ptr noundef %read_mutex, i32 noundef 0) #9
  %22 = ptrtoint ptr %read_fifo to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %read_fifo, align 4
  %24 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %out, align 4
  %cmp = icmp eq i32 %23, %25
  br i1 %cmp, label %if.end49.while.body_crit_edge, label %if.end49.while.end_crit_edge

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end49.while.end_crit_edge, %entry.while.end_crit_edge
  %call53 = call i32 @__kfifo_to_user(ptr noundef %read_fifo, ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %copied) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp55 = icmp eq i32 %call53, 0
  br i1 %cmp55, label %if.then57, label %while.end.if.end58_crit_edge

while.end.if.end58_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then57:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %copied, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %while.end.if.end58_crit_edge
  %ret.0 = phi i32 [ %27, %if.then57 ], [ %call53, %while.end.if.end58_crit_edge ]
  call void @mutex_unlock(ptr noundef %read_mutex) #9
  br label %cleanup60

cleanup60:                                        ; preds = %if.end58, %if.end45, %if.end.cleanup60_crit_edge, %while.body.cleanup60_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end58 ], [ -512, %if.end45 ], [ -11, %if.end.cleanup60_crit_edge ], [ 0, %while.body.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %disconnected = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup36_crit_edge

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool1.not = icmp eq i32 %count, 0
  br i1 %tobool1.not, label %if.end.cleanup36_crit_edge, label %if.end3

if.end.cleanup36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

if.end3:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.cleanup36_crit_edge, label %if.end6

if.end3.cleanup36_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

if.end6:                                          ; preds = %if.end3
  %write_mutex = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 12
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %write_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %for.cond.preheader, label %if.end6.cleanup36_crit_edge

if.end6.cleanup36_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

for.cond.preheader:                               ; preds = %if.end6
  %write_buf = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 13
  %rwsem = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 5
  %ops = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %if.end28.for.cond_crit_edge, %for.cond.preheader
  %buf.addr.0 = phi ptr [ %add.ptr, %if.end28.for.cond_crit_edge ], [ %buf, %for.cond.preheader ]
  %written.0 = phi i32 [ %add, %if.end28.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  %sub = sub i32 %count, %written.0
  %5 = tail call i32 @llvm.umin.i32(i32 %sub, i32 1024)
  %6 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_buf, align 8
  tail call void @__check_object_size(ptr noundef %7, i32 noundef %5, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %for.cond.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.cond.if.end.i.i_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.cond
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 %5, i32 -1226833920) #14, !srcloc !111
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !112

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef %5) #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !100) #9
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !113
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %7, ptr noundef %buf.addr.0, i32 noundef %5) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.cond.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %for.cond.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end15, label %if.then11.i.i, !prof !112

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out_unlock

if.end15:                                         ; preds = %if.end.i.i
  tail call void @down_read(ptr noundef %rwsem) #9
  %13 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load17 = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load17)
  %tobool20.not = icmp sgt i8 %bf.load17, -1
  br i1 %tobool20.not, label %if.end24, label %if.end24.thread

if.end24.thread:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @up_read(ptr noundef %rwsem) #9
  br label %for.end

if.end24:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %write_raw = getelementptr inbounds %struct.gnss_operations, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %write_raw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_raw, align 4
  %18 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_buf, align 8
  %call23 = tail call i32 %17(ptr noundef %1, ptr noundef %19, i32 noundef %5) #9
  tail call void @up_read(ptr noundef %rwsem) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp26 = icmp slt i32 %call23, 0
  br i1 %cmp26, label %if.end24.for.end_crit_edge, label %if.end28

if.end24.for.end_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end28:                                         ; preds = %if.end24
  %add = add i32 %call23, %written.0
  %add.ptr = getelementptr i8, ptr %buf.addr.0, i32 %call23
  %cmp29 = icmp eq i32 %add, %count
  br i1 %cmp29, label %if.end28.for.end_crit_edge, label %if.end28.for.cond_crit_edge

if.end28.for.cond_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end28.for.end_crit_edge, %if.end24.for.end_crit_edge, %if.end24.thread
  %written.1.ph = phi i32 [ %written.0, %if.end24.thread ], [ %count, %if.end28.for.end_crit_edge ], [ %written.0, %if.end24.for.end_crit_edge ]
  %ret.1.ph = phi i32 [ -5, %if.end24.thread ], [ %call23, %if.end24.for.end_crit_edge ], [ %call23, %if.end28.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.1.ph)
  %tobool32.not = icmp eq i32 %written.1.ph, 0
  %spec.select = select i1 %tobool32.not, i32 %ret.1.ph, i32 %written.1.ph
  br label %out_unlock

out_unlock:                                       ; preds = %for.end, %if.then11.i.i
  %ret.2 = phi i32 [ %spec.select, %for.end ], [ -14, %if.then11.i.i ]
  tail call void @mutex_unlock(ptr noundef %write_mutex) #9
  br label %cleanup36

cleanup36:                                        ; preds = %out_unlock, %if.end6.cleanup36_crit_edge, %if.end3.cleanup36_crit_edge, %if.end.cleanup36_crit_edge, %entry.cleanup36_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_unlock ], [ -5, %entry.cleanup36_crit_edge ], [ 0, %if.end.cleanup36_crit_edge ], [ -5, %if.end3.cleanup36_crit_edge ], [ -512, %if.end6.cleanup36_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %read_queue = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 11
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %read_queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %file, ptr noundef nonnull %read_queue, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %read_fifo = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %read_fifo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_fifo, align 4
  %out = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  %spec.select = select i1 %cmp, i32 0, i32 65
  %disconnected = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %disconnected, align 4
  %or3 = or i32 %spec.select, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool1.not11 = icmp slt i8 %bf.load, 0
  %mask.1 = select i1 %tobool1.not11, i32 %or3, i32 %spec.select
  ret i32 %mask.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -928
  %call = tail call ptr @get_device(ptr noundef %add.ptr) #9
  %call1 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #9
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %private_data, align 4
  %rwsem = getelementptr i8, ptr %2, i32 172
  tail call void @down_write(ptr noundef %rwsem) #9
  %disconnected = getelementptr i8, ptr %2, i32 276
  %4 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.if.then11_crit_edge

entry.if.then11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.end:                                           ; preds = %entry
  %count = getelementptr i8, ptr %2, i32 272
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then2, label %if.end.unlock.thread_crit_edge

if.end.unlock.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.then2:                                         ; preds = %if.end
  %ops = getelementptr i8, ptr %2, i32 268
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call3 = tail call i32 %10(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.unlock.thread_crit_edge, label %if.then5

if.then2.unlock.thread_crit_edge:                 ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 8
  %dec = add i32 %12, -1
  store i32 %dec, ptr %count, align 8
  br label %if.then11

unlock.thread:                                    ; preds = %if.then2.unlock.thread_crit_edge, %if.end.unlock.thread_crit_edge
  tail call void @up_write(ptr noundef %rwsem) #9
  br label %if.end13

if.then11:                                        ; preds = %if.then5, %entry.if.then11_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then5 ], [ -19, %entry.if.then11_crit_edge ]
  tail call void @up_write(ptr noundef %rwsem) #9
  tail call void @put_device(ptr noundef %add.ptr) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %unlock.thread
  %ret.029 = phi i32 [ 0, %unlock.thread ], [ %ret.0, %if.then11 ]
  ret i32 %ret.029
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %rwsem = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 5
  tail call void @down_write(ptr noundef %rwsem) #9
  %disconnected = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 8
  %dec = add i32 %4, -1
  store i32 %dec, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then1, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ops = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %close = getelementptr inbounds %struct.gnss_operations, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %close, align 4
  tail call void %8(ptr noundef %1) #9
  %read_fifo = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 10
  %out = getelementptr inbounds %struct.gnss_device, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %out, align 4
  %10 = ptrtoint ptr %read_fifo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %read_fifo, align 4
  br label %unlock

unlock:                                           ; preds = %if.then1, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  tail call void @up_write(ptr noundef %rwsem) #9
  tail call void @put_device(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gnss_uevent(ptr noundef %dev, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.gnss_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp ult i32 %1, 4
  br i1 %cmp.i, label %if.end.i, label %do.end.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [4 x ptr], ptr @gnss_type_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  br label %gnss_type_name.exit

do.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %do.end.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 348, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call.i, ptr noundef %retval.0.i.i) #9
  br label %gnss_type_name.exit

gnss_type_name.exit:                              ; preds = %dev_name.exit.i, %if.end.i
  %name.030.i = phi ptr [ null, %dev_name.exit.i ], [ %3, %if.end.i ]
  %call1 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.33, ptr noundef %name.030.i) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.gnss_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp ult i32 %1, 4
  br i1 %cmp.i, label %if.end.i, label %do.end.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [4 x ptr], ptr @gnss_type_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  br label %gnss_type_name.exit

do.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %do.end.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 348, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call.i, ptr noundef %retval.0.i.i) #9
  br label %gnss_type_name.exit

gnss_type_name.exit:                              ; preds = %dev_name.exit.i, %if.end.i
  %name.030.i = phi ptr [ null, %dev_name.exit.i ], [ %3, %if.end.i ]
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, ptr noundef %name.030.i)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !50, !52, !54, !55, !57, !59, !61, !63, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !83, !84, !86, !88, !90, !92, !94, !96, !98}
!llvm.named.register.sp = !{!100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gnss/core.c", i32 250, i32 20}
!2 = !{ptr @gnss_allocate_device.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gnss/core.c", i32 252, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @gnss_allocate_device.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/gnss/core.c", i32 253, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @gnss_allocate_device.__key.4, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gnss/core.c", i32 254, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @gnss_allocate_device.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/gnss/core.c", i32 255, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__ksymtab_gnss_allocate_device, !15, !"__ksymtab_gnss_allocate_device", i1 false, i1 false}
!15 = !{!"../drivers/gnss/core.c", i32 275, i32 1}
!16 = !{ptr @__ksymtab_gnss_put_device, !17, !"__ksymtab_gnss_put_device", i1 false, i1 false}
!17 = !{!"../drivers/gnss/core.c", i32 281, i32 1}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gnss/core.c", i32 293, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @gnss_register_device._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @gnss_register_device._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_gnss_register_device, !27, !"__ksymtab_gnss_register_device", i1 false, i1 false}
!27 = !{!"../drivers/gnss/core.c", i32 299, i32 1}
!28 = !{ptr @__ksymtab_gnss_deregister_device, !29, !"__ksymtab_gnss_deregister_device", i1 false, i1 false}
!29 = !{!"../drivers/gnss/core.c", i32 313, i32 1}
!30 = !{ptr @__ksymtab_gnss_insert_raw, !31, !"__ksymtab_gnss_insert_raw", i1 false, i1 false}
!31 = !{!"../drivers/gnss/core.c", i32 331, i32 1}
!32 = !{ptr @__initcall__kmod_gnss__228_409_gnss_module_init6, !33, !"__initcall__kmod_gnss__228_409_gnss_module_init6", i1 false, i1 false}
!33 = !{!"../drivers/gnss/core.c", i32 409, i32 1}
!34 = !{ptr @__exitcall_gnss_module_exit, !35, !"__exitcall_gnss_module_exit", i1 false, i1 false}
!35 = !{!"../drivers/gnss/core.c", i32 417, i32 1}
!36 = !{ptr @__UNIQUE_ID_author229, !37, !"__UNIQUE_ID_author229", i1 false, i1 false}
!37 = !{!"../drivers/gnss/core.c", i32 419, i32 1}
!38 = !{ptr @__UNIQUE_ID_description230, !39, !"__UNIQUE_ID_description230", i1 false, i1 false}
!39 = !{!"../drivers/gnss/core.c", i32 420, i32 1}
!40 = !{ptr @__UNIQUE_ID_file231, !41, !"__UNIQUE_ID_file231", i1 false, i1 false}
!41 = !{!"../drivers/gnss/core.c", i32 421, i32 1}
!42 = !{ptr @__UNIQUE_ID_license232, !41, !"__UNIQUE_ID_license232", i1 false, i1 false}
!43 = !{ptr @gnss_first, !44, !"gnss_first", i1 false, i1 false}
!44 = !{!"../drivers/gnss/core.c", i32 28, i32 14}
!45 = !{ptr @gnss_class, !46, !"gnss_class", i1 false, i1 false}
!46 = !{!"../drivers/gnss/core.c", i32 212, i32 22}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gnss/core.c", i32 27, i32 8}
!49 = !{ptr @gnss_minors, !48, !"gnss_minors", i1 false, i1 false}
!50 = !{ptr @gnss_fops, !51, !"gnss_fops", i1 false, i1 false}
!51 = !{!"../drivers/gnss/core.c", i32 202, i32 37}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!54 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gnss/core.c", i32 384, i32 57}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gnss/core.c", i32 386, i32 3}
!63 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @gnss_module_init._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @gnss_module_init._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @gnss_module_init.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/gnss/core.c", i32 390, i32 15}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gnss/core.c", i32 393, i32 3}
!70 = !{ptr @gnss_module_init._entry.20, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @gnss_module_init._entry_ptr.22, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gnss/core.c", i32 400, i32 2}
!74 = !{ptr @gnss_module_init._entry.23, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @gnss_module_init._entry_ptr.25, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @gnss_groups, !77, !"gnss_groups", i1 false, i1 false}
!77 = !{!"../drivers/gnss/core.c", i32 366, i32 1}
!78 = !{ptr @gnss_group, !77, !"gnss_group", i1 false, i1 false}
!79 = !{ptr @gnss_attrs, !80, !"gnss_attrs", i1 false, i1 false}
!80 = !{!"../drivers/gnss/core.c", i32 362, i32 26}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gnss/core.c", i32 360, i32 8}
!83 = !{ptr @dev_attr_type, !82, !"dev_attr_type", i1 false, i1 false}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gnss/core.c", i32 358, i32 22}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gnss/core.c", i32 348, i32 3}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gnss/core.c", i32 334, i32 21}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gnss/core.c", i32 335, i32 21}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gnss/core.c", i32 336, i32 21}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gnss/core.c", i32 337, i32 21}
!96 = !{ptr @gnss_type_names, !97, !"gnss_type_names", i1 false, i1 false}
!97 = !{!"../drivers/gnss/core.c", i32 333, i32 27}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gnss/core.c", i32 373, i32 28}
!100 = !{!"sp"}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"auto-init"}
!111 = !{i64 2152650784, i64 2152650809}
!112 = !{!"branch_weights", i32 2000, i32 1}
!113 = !{i64 5146339}
!114 = !{i64 5146536}
!115 = !{i64 2152631769}
