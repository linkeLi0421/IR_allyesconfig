; ModuleID = '/llk/IR_all_yes/drivers/watchdog/watchdog_dev.c_pt.bc'
source_filename = "../drivers/watchdog/watchdog_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+watchdog_set_last_hw_keepalive\22, \22a\22\09"
module asm "\09.weak\09__crc_watchdog_set_last_hw_keepalive\09\09\09\09"
module asm "\09.long\09__crc_watchdog_set_last_hw_keepalive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_watchdog_set_last_hw_keepalive:\09\09\09\09\09"
module asm "\09.asciz \09\22watchdog_set_last_hw_keepalive\22\09\09\09\09\09"
module asm "__kstrtabns_watchdog_set_last_hw_keepalive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.watchdog_core_data = type { %struct.device, %struct.cdev, ptr, %struct.mutex, i64, i64, i64, %struct.hrtimer, %struct.kthread_work, %struct.hrtimer, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
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
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }

@handle_boot_enabled = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__kstrtab_watchdog_set_last_hw_keepalive = external dso_local constant [0 x i8], align 1
@__kstrtabns_watchdog_set_last_hw_keepalive = external dso_local constant [0 x i8], align 1
@__ksymtab_watchdog_set_last_hw_keepalive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @watchdog_set_last_hw_keepalive to i32), ptr @__kstrtab_watchdog_set_last_hw_keepalive, ptr @__kstrtabns_watchdog_set_last_hw_keepalive }, section "___ksymtab_gpl+watchdog_set_last_hw_keepalive", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"watchdogd\00", [22 x i8] zeroinitializer }, align 32
@watchdog_kworker = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@watchdog_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013watchdog: Failed to create watchdog kworker\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"watchdog_dev_init\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/watchdog/watchdog_dev.c\00", [32 x i8] zeroinitializer }, align 32
@watchdog_dev_init._entry_ptr = internal global ptr @watchdog_dev_init._entry, section ".printk_index", align 4
@watchdog_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@watchdog_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.7, ptr null, ptr null, ptr @wdt_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@watchdog_dev_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013watchdog: couldn't register class\0A\00", [59 x i8] zeroinitializer }, align 32
@watchdog_dev_init._entry_ptr.6 = internal global ptr @watchdog_dev_init._entry.4, section ".printk_index", align 4
@watchdog_devt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"watchdog\00", [23 x i8] zeroinitializer }, align 32
@watchdog_dev_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013watchdog: watchdog: unable to allocate char dev region\0A\00", [38 x i8] zeroinitializer }, align 32
@watchdog_dev_init._entry_ptr.10 = internal global ptr @watchdog_dev_init._entry.8, section ".printk_index", align 4
@__param_str_handle_boot_enabled = internal constant [29 x i8] c"watchdog.handle_boot_enabled\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_handle_boot_enabled = internal constant %struct.kernel_param { ptr @__param_str_handle_boot_enabled, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @handle_boot_enabled } }, section "__param", align 4
@__UNIQUE_ID_handle_boot_enabledtype225 = internal constant [43 x i8] c"watchdog.parmtype=handle_boot_enabled:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_handle_boot_enabled226 = internal constant [124 x i8] c"watchdog.parm=handle_boot_enabled:Watchdog core auto-updates boot enabled watchdogs before userspace takes over (default=1)\00", section ".modinfo", align 1
@__param_str_open_timeout = internal constant [22 x i8] c"watchdog.open_timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@open_timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_open_timeout = internal constant %struct.kernel_param { ptr @__param_str_open_timeout, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @open_timeout } }, section "__param", align 4
@__UNIQUE_ID_open_timeouttype227 = internal constant [36 x i8] c"watchdog.parmtype=open_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_open_timeout228 = internal constant [129 x i8] c"watchdog.parm=open_timeout:Maximum time (in seconds, 0 means infinity) for userspace to take over a running watchdog (default=0)\00", section ".modinfo", align 1
@watchdog_cdev_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&wd_data->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"watchdog%d\00", [21 x i8] zeroinitializer }, align 32
@old_wd_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@watchdog_miscdev = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 130, ptr @.str.7, ptr @watchdog_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@watchdog_cdev_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013watchdog: %s: cannot register miscdev on minor=%d (err=%d).\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"watchdog_cdev_register\00", [41 x i8] zeroinitializer }, align 32
@watchdog_cdev_register._entry_ptr = internal global ptr @watchdog_cdev_register._entry, section ".printk_index", align 4
@watchdog_cdev_register._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013watchdog: %s: a legacy watchdog module is probably present.\0A\00", [33 x i8] zeroinitializer }, align 32
@watchdog_cdev_register._entry_ptr.17 = internal global ptr @watchdog_cdev_register._entry.15, section ".printk_index", align 4
@watchdog_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @watchdog_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @watchdog_ioctl, ptr null, ptr null, i32 0, ptr @watchdog_open, ptr null, ptr @watchdog_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@watchdog_cdev_register._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013watchdog: watchdog%d unable to add device %d:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@watchdog_cdev_register._entry_ptr.20 = internal global ptr @watchdog_cdev_register._entry.18, section ".printk_index", align 4
@watchdog_cdev_register._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.3, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016watchdog: watchdog%d running and kernel based pre-userspace handler disabled\0A\00", [48 x i8] zeroinitializer }, align 32
@watchdog_cdev_register._entry_ptr.23 = internal global ptr @watchdog_cdev_register._entry.21, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@watchdog_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016watchdog: watchdog%d: nowayout prevents watchdog being stopped!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"watchdog_stop\00", [18 x i8] zeroinitializer }, align 32
@watchdog_stop._entry_ptr = internal global ptr @watchdog_stop._entry, section ".printk_index", align 4
@watchdog_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\012watchdog: watchdog%d: watchdog did not stop!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"watchdog_release\00", [47 x i8] zeroinitializer }, align 32
@watchdog_release._entry_ptr = internal global ptr @watchdog_release._entry, section ".printk_index", align 4
@wdt_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @wdt_group, ptr null], [24 x i8] zeroinitializer }, align 32
@wdt_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @wdt_is_visible, ptr null, ptr @wdt_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@wdt_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dev_attr_state, ptr @dev_attr_identity, ptr @dev_attr_timeout, ptr @dev_attr_min_timeout, ptr @dev_attr_max_timeout, ptr @dev_attr_pretimeout, ptr @dev_attr_timeleft, ptr @dev_attr_bootstatus, ptr @dev_attr_status, ptr @dev_attr_nowayout, ptr @dev_attr_pretimeout_governor, ptr @dev_attr_pretimeout_available_governors, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_timeleft = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timeleft_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pretimeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pretimeout_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pretimeout_governor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pretimeout_governor_show, ptr @pretimeout_governor_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pretimeout_available_governors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pretimeout_available_governors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timeleft\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pretimeout\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pretimeout_governor\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pretimeout_available_governors\00", [33 x i8] zeroinitializer }, align 32
@dev_attr_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_identity = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @identity_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timeout_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_min_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @min_timeout_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_max_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_timeout_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bootstatus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bootstatus_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_status = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @status_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nowayout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nowayout_show, ptr @nowayout_store }, [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"active\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"inactive\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"identity\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"min_timeout\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_timeout\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bootstatus\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nowayout\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 2147768065, i64 2147768066, i64 2147768068, i64 2147768069, i64 2147768071, i64 2147768073, i64 2147768074, i64 2150127360, i64 3221509894, i64 3221509896]
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"handle_boot_enabled\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 57, i32 13 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1193, i32 46 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"watchdog_kworker\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 55, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1195, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1200, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"watchdog_class\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 973, i32 21 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1202, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"watchdog_devt\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 51, i32 14 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1206, i32 57 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1208, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [13 x i8] c"open_timeout\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 60, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 996, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1013, i32 30 }
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"old_wd_data\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 53, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"watchdog_miscdev\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 967, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1025, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1028, i32 5 }
@___asan_gen_.127 = private unnamed_addr constant [14 x i8] c"watchdog_fops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 958, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1042, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1069, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 174, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 296, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 934, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [11 x i8] c"wdt_groups\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 632, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant [10 x i8] c"wdt_group\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 628, i32 37 }
@___asan_gen_.169 = private unnamed_addr constant [10 x i8] c"wdt_attrs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 612, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"dev_attr_timeleft\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [20 x i8] c"dev_attr_pretimeout\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [29 x i8] c"dev_attr_pretimeout_governor\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [40 x i8] c"dev_attr_pretimeout_available_governors\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 505, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 501, i32 28 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 541, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 592, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 569, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant [15 x i8] c"dev_attr_state\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [18 x i8] c"dev_attr_identity\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"dev_attr_timeout\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [21 x i8] c"dev_attr_min_timeout\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [21 x i8] c"dev_attr_max_timeout\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c"dev_attr_bootstatus\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [16 x i8] c"dev_attr_status\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [18 x i8] c"dev_attr_nowayout\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 562, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 558, i32 26 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 560, i32 25 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 550, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 548, i32 25 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 514, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 523, i32 8 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 532, i32 8 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 487, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 478, i32 8 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 476, i32 25 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 463, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private constant [35 x i8] c"../drivers/watchdog/watchdog_dev.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 441, i32 25 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_handle_boot_enabled226, ptr @__UNIQUE_ID_handle_boot_enabledtype225, ptr @__UNIQUE_ID_open_timeout228, ptr @__UNIQUE_ID_open_timeouttype227, ptr @__ksymtab_watchdog_set_last_hw_keepalive, ptr @__param_handle_boot_enabled, ptr @__param_open_timeout, ptr @watchdog_cdev_register._entry, ptr @watchdog_cdev_register._entry.15, ptr @watchdog_cdev_register._entry.18, ptr @watchdog_cdev_register._entry.21, ptr @watchdog_cdev_register._entry_ptr, ptr @watchdog_cdev_register._entry_ptr.17, ptr @watchdog_cdev_register._entry_ptr.20, ptr @watchdog_cdev_register._entry_ptr.23, ptr @watchdog_dev_exit, ptr @watchdog_dev_init._entry, ptr @watchdog_dev_init._entry.4, ptr @watchdog_dev_init._entry.8, ptr @watchdog_dev_init._entry_ptr, ptr @watchdog_dev_init._entry_ptr.10, ptr @watchdog_dev_init._entry_ptr.6, ptr @watchdog_release._entry, ptr @watchdog_release._entry_ptr, ptr @watchdog_stop._entry, ptr @watchdog_stop._entry_ptr, ptr @handle_boot_enabled, ptr @.str, ptr @watchdog_kworker, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @watchdog_dev_init.__key, ptr @watchdog_class, ptr @.str.5, ptr @watchdog_devt, ptr @.str.7, ptr @.str.9, ptr @open_timeout, ptr @watchdog_cdev_register.__key, ptr @.str.11, ptr @.str.12, ptr @old_wd_data, ptr @watchdog_miscdev, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @watchdog_fops, ptr @.str.19, ptr @.str.22, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @wdt_groups, ptr @wdt_group, ptr @wdt_attrs, ptr @dev_attr_timeleft, ptr @dev_attr_pretimeout, ptr @dev_attr_pretimeout_governor, ptr @dev_attr_pretimeout_available_governors, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @dev_attr_state, ptr @dev_attr_identity, ptr @dev_attr_timeout, ptr @dev_attr_min_timeout, ptr @dev_attr_max_timeout, ptr @dev_attr_bootstatus, ptr @dev_attr_status, ptr @dev_attr_nowayout, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_boot_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_kworker to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_dev_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_devt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_dev_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @open_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_cdev_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_wd_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_cdev_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_cdev_register._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_cdev_register._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_cdev_register._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timeleft to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pretimeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pretimeout_governor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pretimeout_available_governors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_identity to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_min_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bootstatus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nowayout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watchdog_dev_register(ptr noundef %wdd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1336) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %do.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %entry
  %lock.i = getelementptr inbounds %struct.watchdog_core_data, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @watchdog_cdev_register.__key) #9
  %wdd1.i = getelementptr inbounds %struct.watchdog_core_data, ptr %call7.i.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %wdd1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %wdd, ptr %wdd1.i, align 8
  %wd_data2.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 17
  %2 = ptrtoint ptr %wd_data2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %wd_data2.i, align 4
  %3 = load ptr, ptr @watchdog_kworker, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end5.i:                                        ; preds = %do.body.i
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i.i) #9
  %4 = load i32, ptr @watchdog_devt, align 4
  %shr.i = and i32 %4, -1048576
  %5 = ptrtoint ptr %wdd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wdd, align 4
  %or.i = or i32 %shr.i, %6
  %devt.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 29
  %7 = ptrtoint ptr %devt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i, ptr %devt.i, align 8
  %class.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 33
  %8 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @watchdog_class, ptr %class.i, align 4
  %parent.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 4
  %parent9.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %parent9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %parent9.i, align 8
  %groups.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 2
  %12 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %groups.i, align 4
  %groups11.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 34
  %14 = ptrtoint ptr %groups11.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %groups11.i, align 8
  %release.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 35
  %15 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @watchdog_core_data_release, ptr %release.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %wdd, ptr %driver_data.i.i, align 4
  %call16.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.12, i32 noundef %6) #9
  %work.i = getelementptr inbounds %struct.watchdog_core_data, ptr %call7.i.i.i, i32 0, i32 8
  %17 = getelementptr inbounds %struct.watchdog_core_data, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %18 = call ptr @memset(ptr %17, i32 0, i32 12)
  %19 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %work.i, ptr %work.i, align 8
  %prev.i.i = getelementptr inbounds %struct.watchdog_core_data, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %work.i, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @watchdog_ping_work, ptr %17, align 8
  %timer.i = getelementptr inbounds %struct.watchdog_core_data, ptr %call7.i.i.i, i32 0, i32 7
  tail call void @hrtimer_init(ptr noundef %timer.i, i32 noundef 1, i32 noundef 9) #9
  %function.i = getelementptr inbounds %struct.watchdog_core_data, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @watchdog_timer_expired, ptr %function.i, align 8
  tail call void @watchdog_hrtimer_pretimeout_init(ptr noundef %wdd) #9
  %23 = ptrtoint ptr %wdd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wdd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp eq i32 %24, 0
  br i1 %cmp.i, label %if.then24.i, label %if.end5.i.if.end46.i_crit_edge

if.end5.i.if.end46.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then24.i:                                      ; preds = %if.end5.i
  store ptr %call7.i.i.i, ptr @old_wd_data, align 4
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i, align 4
  store ptr %26, ptr getelementptr inbounds (%struct.miscdevice, ptr @watchdog_miscdev, i32 0, i32 4), align 4
  %call26.i = tail call i32 @misc_register(ptr noundef nonnull @watchdog_miscdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.not.i = icmp eq i32 %call26.i, 0
  br i1 %cmp27.not.i, label %if.then24.i.if.end46.i_crit_edge, label %do.end31.i

if.then24.i.if.end46.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

do.end31.i:                                       ; preds = %if.then24.i
  %info.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 3
  %27 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info.i, align 4
  %identity.i = getelementptr inbounds %struct.watchdog_info, ptr %28, i32 0, i32 2
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %identity.i, i32 noundef 130, i32 noundef %call26.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call26.i)
  %cmp33.i = icmp eq i32 %call26.i, -16
  br i1 %cmp33.i, label %do.end37.i, label %do.end31.i.if.end43.i_crit_edge

do.end31.i.if.end43.i_crit_edge:                  ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

do.end37.i:                                       ; preds = %do.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info.i, align 4
  %identity40.i = getelementptr inbounds %struct.watchdog_info, ptr %30, i32 0, i32 2
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %identity40.i) #13
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end37.i, %do.end31.i.if.end43.i_crit_edge
  store ptr null, ptr @old_wd_data, align 4
  tail call void @put_device(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end46.i:                                       ; preds = %if.then24.i.if.end46.i_crit_edge, %if.end5.i.if.end46.i_crit_edge
  %cdev.i = getelementptr inbounds %struct.watchdog_core_data, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @cdev_init(ptr noundef %cdev.i, ptr noundef nonnull @watchdog_fops) #9
  %call49.i = tail call i32 @cdev_device_add(ptr noundef %cdev.i, ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end65.i, label %do.end54.i

do.end54.i:                                       ; preds = %if.end46.i
  %31 = ptrtoint ptr %wdd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wdd, align 4
  %33 = load i32, ptr @watchdog_devt, align 4
  %shr57.i = lshr i32 %33, 20
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %32, i32 noundef %shr57.i, i32 noundef %32) #13
  %34 = ptrtoint ptr %wdd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wdd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp61.i = icmp eq i32 %35, 0
  br i1 %cmp61.i, label %if.then62.i, label %do.end54.i.cleanup_crit_edge

do.end54.i.cleanup_crit_edge:                     ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then62.i:                                      ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @misc_deregister(ptr noundef nonnull @watchdog_miscdev) #9
  store ptr null, ptr @old_wd_data, align 4
  tail call void @put_device(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end65.i:                                       ; preds = %if.end46.i
  %ops.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 4
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %owner67.i = getelementptr inbounds %struct.watchdog_core_data, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %owner67.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %owner67.i, align 8
  %call68.i = tail call i64 @ktime_get() #9
  %sub.i = add i64 %call68.i, -1
  %last_hw_keepalive.i = getelementptr inbounds %struct.watchdog_core_data, ptr %call7.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %last_hw_keepalive.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %sub.i, ptr %last_hw_keepalive.i, align 8
  %42 = load i32, ptr @open_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i138.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i138.i, label %if.end65.i.watchdog_set_open_deadline.exit.i_crit_edge, label %cond.true.i.i

if.end65.i.watchdog_set_open_deadline.exit.i_crit_edge: ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %watchdog_set_open_deadline.exit.i

cond.true.i.i:                                    ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i64 @ktime_get() #9
  %43 = load i32, ptr @open_timeout, align 4
  %conv.i.i = zext i32 %43 to i64
  %mul.i.i.i = mul nuw nsw i64 %conv.i.i, 1000000000
  %add.i.i = add i64 %mul.i.i.i, %call.i.i
  br label %watchdog_set_open_deadline.exit.i

watchdog_set_open_deadline.exit.i:                ; preds = %cond.true.i.i, %if.end65.i.watchdog_set_open_deadline.exit.i_crit_edge
  %cond.i.i = phi i64 [ %add.i.i, %cond.true.i.i ], [ 9223372036854775807, %if.end65.i.watchdog_set_open_deadline.exit.i_crit_edge ]
  %open_deadline.i.i = getelementptr inbounds %struct.watchdog_core_data, ptr %call7.i.i.i, i32 0, i32 6
  %44 = ptrtoint ptr %open_deadline.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %cond.i.i, ptr %open_deadline.i.i, align 8
  %status.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %45 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %status.i.i, align 4
  %47 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i = icmp eq i32 %47, 0
  br i1 %tobool.i.not.i, label %watchdog_set_open_deadline.exit.i.if.end_crit_edge, label %if.then70.i

watchdog_set_open_deadline.exit.i.if.end_crit_edge: ; preds = %watchdog_set_open_deadline.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then70.i:                                      ; preds = %watchdog_set_open_deadline.exit.i
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  tail call void @__module_get(ptr noundef %51) #9
  %call74.i = tail call ptr @get_device(ptr noundef nonnull %call7.i.i.i) #9
  %52 = load i8, ptr @handle_boot_enabled, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool75.not.i = icmp eq i8 %52, 0
  br i1 %tobool75.not.i, label %do.end80.i, label %if.then76.i

if.then76.i:                                      ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hrtimer_start_range_ns(ptr noundef %timer.i, i64 noundef 0, i64 noundef 0, i32 noundef 9) #9
  br label %if.end

do.end80.i:                                       ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %wdd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wdd, align 4
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %54) #13
  br label %if.end

if.end:                                           ; preds = %do.end80.i, %if.then76.i, %watchdog_set_open_deadline.exit.i.if.end_crit_edge
  %call1 = tail call i32 @watchdog_register_pretimeout(ptr noundef %wdd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @watchdog_cdev_unregister(ptr noundef %wdd)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %if.then62.i, %do.end54.i.cleanup_crit_edge, %if.end43.i, %if.then4.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ], [ %call49.i, %do.end54.i.cleanup_crit_edge ], [ %call49.i, %if.then62.i ], [ -12, %entry.cleanup_crit_edge ], [ %call26.i, %if.end43.i ], [ -19, %if.then4.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_pretimeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @watchdog_cdev_unregister(ptr noundef %wdd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 17
  %0 = ptrtoint ptr %wd_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wd_data1, align 4
  %cdev = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 1
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %1) #9
  %2 = ptrtoint ptr %wdd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wdd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @misc_deregister(ptr noundef nonnull @watchdog_miscdev) #9
  store ptr null, ptr @old_wd_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status.i, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.end5_crit_edge, label %if.then3

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call fastcc i32 @watchdog_stop(ptr noundef %wdd)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  tail call void @watchdog_hrtimer_pretimeout_stop(ptr noundef %wdd) #9
  %lock = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %wdd6 = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %wdd6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %wdd6, align 8
  %10 = ptrtoint ptr %wd_data1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %wd_data1, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %timer = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 7
  %call9 = tail call i32 @hrtimer_cancel(ptr noundef %timer) #9
  %work = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 8
  %call10 = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %work) #9
  tail call void @put_device(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @watchdog_dev_unregister(ptr noundef %wdd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @watchdog_unregister_pretimeout(ptr noundef %wdd) #9
  tail call fastcc void @watchdog_cdev_unregister(ptr noundef %wdd)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_pretimeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watchdog_set_last_hw_keepalive(ptr noundef %wdd, i32 noundef %last_ping_ms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wdd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 17
  %0 = ptrtoint ptr %wd_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wd_data1, align 4
  %call = tail call i64 @ktime_get() #9
  %conv = zext i32 %last_ping_ms to i64
  %mul.i.neg = mul nsw i64 %conv, -1000000
  %sub = add i64 %call, %mul.i.neg
  %last_hw_keepalive = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %last_hw_keepalive to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %sub, ptr %last_hw_keepalive, align 8
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %6 = load i8, ptr @handle_boot_enabled, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call fastcc i32 @__watchdog_ping(ptr noundef nonnull %wdd)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__watchdog_ping(ptr noundef %wdd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 17
  %0 = ptrtoint ptr %wd_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wd_data1, align 4
  %last_hw_keepalive = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %last_hw_keepalive to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last_hw_keepalive, align 8
  %min_hw_heartbeat_ms = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 11
  %4 = ptrtoint ptr %min_hw_heartbeat_ms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_hw_heartbeat_ms, align 4
  %conv = zext i32 %5 to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000
  %add = add i64 %mul.i, %3
  %call2 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call2)
  %cmp3.i.i = icmp sgt i64 %add, %call2
  br i1 %cmp3.i.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %timer = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 7
  %sub = sub i64 %add, %call2
  tail call void @hrtimer_start_range_ns(ptr noundef %timer, i64 noundef %sub, i64 noundef 0, i32 noundef 9) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %last_hw_keepalive to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call2, ptr %last_hw_keepalive, align 8
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %ping = getelementptr inbounds %struct.watchdog_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ping to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ping, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.else, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %start = getelementptr inbounds %struct.watchdog_ops, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %start, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end.if.end11_crit_edge
  %.sink = phi ptr [ %12, %if.else ], [ %10, %if.end.if.end11_crit_edge ]
  %call10 = tail call i32 %.sink(ptr noundef %wdd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %if.then13, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @watchdog_hrtimer_pretimeout_start(ptr noundef %wdd) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %13 = ptrtoint ptr %wd_data1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wd_data1, align 4
  %max_hw_heartbeat_ms.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 12
  %15 = ptrtoint ptr %max_hw_heartbeat_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_hw_heartbeat_ms.i.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %17 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timeout.i.i, align 4
  %mul.i.i = mul i32 %18, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.end14.lor.rhs.i.i_crit_edge, label %land.lhs.true.i.i

if.end14.lor.rhs.i.i_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i

land.lhs.true.i.i:                                ; preds = %if.end14
  %status.i.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %19 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %status.i.i.i, align 4
  %and1.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and1.i.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %16)
  %cmp.i.i = icmp ugt i32 %mul.i.i, %16
  %or.cond.i.i = select i1 %tobool.i.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.if.then.i_crit_edge, label %land.lhs.true.i.i.lor.rhs.i.i_crit_edge

land.lhs.true.i.i.lor.rhs.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.rhs.i.i:                                      ; preds = %land.lhs.true.i.i.lor.rhs.i.i_crit_edge, %if.end14.lor.rhs.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool2.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.rhs.i.i.if.else.i_crit_edge, label %land.lhs.true3.i.i

lor.rhs.i.i.if.else.i_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true3.i.i:                               ; preds = %lor.rhs.i.i
  %status.i12.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %21 = ptrtoint ptr %status.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %status.i12.i.i, align 4
  %and1.i.i13.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i13.i.i)
  %tobool.i14.not.i.i = icmp eq i32 %and1.i.i13.i.i, 0
  br i1 %tobool.i14.not.i.i, label %watchdog_need_worker.exit.i, label %land.lhs.true3.i.i.if.else.i_crit_edge

land.lhs.true3.i.i.if.else.i_crit_edge:           ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

watchdog_need_worker.exit.i:                      ; preds = %land.lhs.true3.i.i
  %23 = ptrtoint ptr %status.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %status.i12.i.i, align 4
  %25 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i16.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool.i16.i.not.i, label %watchdog_need_worker.exit.i.if.else.i_crit_edge, label %watchdog_need_worker.exit.i.if.then.i_crit_edge

watchdog_need_worker.exit.i.if.then.i_crit_edge:  ; preds = %watchdog_need_worker.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

watchdog_need_worker.exit.i.if.else.i_crit_edge:  ; preds = %watchdog_need_worker.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %watchdog_need_worker.exit.i.if.then.i_crit_edge, %land.lhs.true.i.i.if.then.i_crit_edge
  %status.i.i13.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %26 = ptrtoint ptr %status.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %status.i.i13.i, align 4
  %and1.i.i.i14.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i14.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i14.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %last_keepalive.i.i = getelementptr inbounds %struct.watchdog_core_data, ptr %14, i32 0, i32 4
  %28 = ptrtoint ptr %last_keepalive.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %last_keepalive.i.i, align 8
  %conv.i.i = zext i32 %mul.i.i to i64
  %mul.i.i.i = mul nuw nsw i64 %conv.i.i, 1000000
  %add.i.i = add i64 %29, %mul.i.i.i
  br label %watchdog_next_keepalive.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %open_deadline.i.i = getelementptr inbounds %struct.watchdog_core_data, ptr %14, i32 0, i32 6
  %30 = ptrtoint ptr %open_deadline.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %open_deadline.i.i, align 8
  br label %watchdog_next_keepalive.exit.i

watchdog_next_keepalive.exit.i:                   ; preds = %if.else.i.i, %if.then.i.i
  %virt_timeout.0.i.i = phi i64 [ %add.i.i, %if.then.i.i ], [ %31, %if.else.i.i ]
  %32 = tail call i32 @llvm.umin.i32(i32 %mul.i.i, i32 %16) #9
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %mul.i.i, i32 %32
  %div46.i.i = lshr i32 %spec.select.i.i, 1
  %conv17.i.i = zext i32 %div46.i.i to i64
  %mul.i47.i.i = mul nuw nsw i64 %conv17.i.i, 1000000
  %conv19.i.i = zext i32 %spec.select.i.i to i64
  %call21.i.i = tail call i64 @ktime_get() #9
  %mul.i48.neg.i.i = mul nsw i64 %conv19.i.i, -1000000
  %.neg.i.i = add i64 %virt_timeout.0.i.i, %mul.i48.neg.i.i
  %sub22.i.i = sub i64 %.neg.i.i, %call21.i.i
  %33 = tail call i64 @llvm.smin.i64(i64 %sub22.i.i, i64 %mul.i47.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %cmp.i = icmp sgt i64 %33, 0
  br i1 %cmp.i, label %if.then3.i, label %watchdog_next_keepalive.exit.i.cleanup_crit_edge

watchdog_next_keepalive.exit.i.cleanup_crit_edge: ; preds = %watchdog_next_keepalive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %watchdog_next_keepalive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %timer.i = getelementptr inbounds %struct.watchdog_core_data, ptr %14, i32 0, i32 7
  tail call void @hrtimer_start_range_ns(ptr noundef %timer.i, i64 noundef %33, i64 noundef 0, i32 noundef 9) #9
  br label %cleanup

if.else.i:                                        ; preds = %watchdog_need_worker.exit.i.if.else.i_crit_edge, %land.lhs.true3.i.i.if.else.i_crit_edge, %lor.rhs.i.i.if.else.i_crit_edge
  %timer4.i = getelementptr inbounds %struct.watchdog_core_data, ptr %14, i32 0, i32 7
  %call5.i = tail call i32 @hrtimer_cancel(ptr noundef %timer4.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then3.i, %watchdog_next_keepalive.exit.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call10, %watchdog_next_keepalive.exit.i.cleanup_crit_edge ], [ %call10, %if.then3.i ], [ %call10, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watchdog_dev_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str) #9
  store ptr %call, ptr @watchdog_kworker, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  %0 = load ptr, ptr @watchdog_kworker, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %task = getelementptr inbounds %struct.kthread_worker, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 4
  tail call void @sched_set_fifo(ptr noundef %3) #9
  %call5 = tail call i32 @__class_register(ptr noundef nonnull @watchdog_class, ptr noundef nonnull @watchdog_dev_init.__key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %err_register

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @watchdog_devt, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @.str.7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  tail call void @class_unregister(ptr noundef nonnull @watchdog_class) #9
  br label %err_register

err_register:                                     ; preds = %do.end18, %do.end9
  %err.0 = phi i32 [ %call5, %do.end9 ], [ %call13, %do.end18 ]
  %4 = load ptr, ptr @watchdog_kworker, align 4
  tail call void @kthread_destroy_worker(ptr noundef %4) #9
  br label %cleanup

cleanup:                                          ; preds = %err_register, %if.end12.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ %err.0, %err_register ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @watchdog_dev_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load i32, ptr @watchdog_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 32) #9
  tail call void @class_unregister(ptr noundef nonnull @watchdog_class) #9
  %1 = load ptr, ptr @watchdog_kworker, align 4
  tail call void @kthread_destroy_worker(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watchdog_dev_suspend(ptr nocapture noundef readonly %wdd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 17
  %0 = ptrtoint ptr %wd_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wd_data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %wdd1.i = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wdd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdd1.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.if.end6.thread_crit_edge, label %if.end.i

if.end.if.end6.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.thread

if.end.i:                                         ; preds = %if.end
  %status.i.i = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end3.i, label %if.end.i.if.end6_crit_edge

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end3.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status.i.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i10.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i10.not.i, label %if.end3.i.if.end6.thread_crit_edge, label %watchdog_worker_should_ping.exit

if.end3.i.if.end6.thread_crit_edge:               ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.thread

watchdog_worker_should_ping.exit:                 ; preds = %if.end3.i
  %call.i.i = tail call i64 @ktime_get() #9
  %open_deadline.i.i = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %open_deadline.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %open_deadline.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %10)
  %cmp3.i.i.i.i.not = icmp sgt i64 %call.i.i, %10
  br i1 %cmp3.i.i.i.i.not, label %watchdog_worker_should_ping.exit.if.end6.thread_crit_edge, label %watchdog_worker_should_ping.exit.if.end6_crit_edge

watchdog_worker_should_ping.exit.if.end6_crit_edge: ; preds = %watchdog_worker_should_ping.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

watchdog_worker_should_ping.exit.if.end6.thread_crit_edge: ; preds = %watchdog_worker_should_ping.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.thread

if.end6.thread:                                   ; preds = %watchdog_worker_should_ping.exit.if.end6.thread_crit_edge, %if.end3.i.if.end6.thread_crit_edge, %if.end.if.end6.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %if.end10

if.end6:                                          ; preds = %watchdog_worker_should_ping.exit.if.end6_crit_edge, %if.end.i.if.end6_crit_edge
  %11 = ptrtoint ptr %wdd1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wdd1.i, align 8
  %call5 = tail call fastcc i32 @__watchdog_ping(ptr noundef %12)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool8.not = icmp eq i32 %call5, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %if.end6.if.end10_crit_edge, %if.end6.thread
  %timer = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 7
  %call11 = tail call i32 @hrtimer_cancel(ptr noundef %timer) #9
  %work = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 8
  %call12 = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -19, %entry.cleanup_crit_edge ], [ %call5, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watchdog_dev_resume(ptr nocapture noundef readonly %wdd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 17
  %0 = ptrtoint ptr %wd_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wd_data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %wdd1.i = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wdd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdd1.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %if.end.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end.i:                                         ; preds = %if.end
  %status.i.i = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end3.i, label %if.end.i.if.then3_crit_edge

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end3.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %status.i.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i10.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i10.not.i, label %if.end3.i.if.end6_crit_edge, label %watchdog_worker_should_ping.exit

if.end3.i.if.end6_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

watchdog_worker_should_ping.exit:                 ; preds = %if.end3.i
  %call.i.i = tail call i64 @ktime_get() #9
  %open_deadline.i.i = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %open_deadline.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %open_deadline.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %10)
  %cmp3.i.i.i.i.not = icmp sgt i64 %call.i.i, %10
  br i1 %cmp3.i.i.i.i.not, label %watchdog_worker_should_ping.exit.if.end6_crit_edge, label %watchdog_worker_should_ping.exit.if.then3_crit_edge

watchdog_worker_should_ping.exit.if.then3_crit_edge: ; preds = %watchdog_worker_should_ping.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

watchdog_worker_should_ping.exit.if.end6_crit_edge: ; preds = %watchdog_worker_should_ping.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then3:                                         ; preds = %watchdog_worker_should_ping.exit.if.then3_crit_edge, %if.end.i.if.then3_crit_edge
  %11 = ptrtoint ptr %wdd1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wdd1.i, align 8
  %call5 = tail call fastcc i32 @__watchdog_ping(ptr noundef %12)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %watchdog_worker_should_ping.exit.if.end6_crit_edge, %if.end3.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then3 ], [ 0, %watchdog_worker_should_ping.exit.if.end6_crit_edge ], [ 0, %if.end.if.end6_crit_edge ], [ 0, %if.end3.i.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @watchdog_core_data_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @watchdog_ping_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -164
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %wdd1.i = getelementptr i8, ptr %work, i32 -168
  %0 = ptrtoint ptr %wdd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdd1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %status.i.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end3.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end3.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i10.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i10.not.i, label %if.end3.i.if.end_crit_edge, label %watchdog_worker_should_ping.exit

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

watchdog_worker_should_ping.exit:                 ; preds = %if.end3.i
  %call.i.i = tail call i64 @ktime_get() #9
  %open_deadline.i.i = getelementptr i8, ptr %work, i32 -56
  %7 = ptrtoint ptr %open_deadline.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %open_deadline.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %8)
  %cmp3.i.i.i.i.not = icmp sgt i64 %call.i.i, %8
  br i1 %cmp3.i.i.i.i.not, label %watchdog_worker_should_ping.exit.if.end_crit_edge, label %watchdog_worker_should_ping.exit.if.then_crit_edge

watchdog_worker_should_ping.exit.if.then_crit_edge: ; preds = %watchdog_worker_should_ping.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

watchdog_worker_should_ping.exit.if.end_crit_edge: ; preds = %watchdog_worker_should_ping.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %watchdog_worker_should_ping.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %9 = ptrtoint ptr %wdd1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wdd1.i, align 8
  %call1 = tail call fastcc i32 @__watchdog_ping(ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %watchdog_worker_should_ping.exit.if.end_crit_edge, %if.end3.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_timer_expired(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @watchdog_kworker, align 4
  %work = getelementptr i8, ptr %timer, i32 48
  %call = tail call zeroext i1 @kthread_queue_work(ptr noundef %0, ptr noundef %work) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_hrtimer_pretimeout_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_write(ptr nocapture noundef readonly %file, ptr noundef %data, i32 noundef %len, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %status) #9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.043 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 687) #9
  %add.ptr = getelementptr i8, ptr %data, i32 %i.043
  %2 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !154
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #9, !srcloc !157
  %asmresult = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end5, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %asmresult2 = extractvalue { i32, i32 } %5, 1
  %conv6 = and i32 %asmresult2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 86, i32 %conv6)
  %cmp7 = icmp eq i32 %conv6, 86
  br i1 %cmp7, label %if.then9, label %if.end5.for.inc_crit_edge

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.end5.for.inc_crit_edge
  %inc = add nuw i32 %i.043, 1
  %cmp1.not = icmp eq i32 %inc, %len
  br i1 %cmp1.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %lock = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %wdd12 = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %wdd12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wdd12, align 8
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.end16.thread, label %if.then14

if.end16.thread:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %16

if.then14:                                        ; preds = %for.end
  %wd_data1.i = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %wd_data1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wd_data1.i, align 4
  %status.i.i = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 18
  %10 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i.i, align 4
  %and1.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i, label %if.then14.if.end16_crit_edge

if.then14.if.end16_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true.i:                                  ; preds = %if.then14
  %12 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status.i.i, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i10.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i10.not.i, label %if.end16.thread39, label %land.lhs.true.i.if.end16_crit_edge

land.lhs.true.i.if.end16_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end16.thread39:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.i.if.end16_crit_edge, %if.then14.if.end16_crit_edge
  %status.i = getelementptr inbounds %struct.watchdog_core_data, ptr %9, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status.i) #9
  %call3.i = tail call i64 @ktime_get() #9
  %last_keepalive.i = getelementptr inbounds %struct.watchdog_core_data, ptr %9, i32 0, i32 4
  %15 = ptrtoint ptr %last_keepalive.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call3.i, ptr %last_keepalive.i, align 8
  %call4.i = tail call fastcc i32 @__watchdog_ping(ptr noundef nonnull %7) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp18 = icmp slt i32 %call4.i, 0
  br i1 %cmp18, label %if.end16._crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16._crit_edge:                              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %16

16:                                               ; preds = %if.end16._crit_edge, %if.end16.thread
  %err.038 = phi i32 [ -19, %if.end16.thread ], [ %call4.i, %if.end16._crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %16, %if.end16.cleanup_crit_edge, %if.end16.thread39, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %err.038, %16 ], [ %len, %if.end16.cleanup_crit_edge ], [ %len, %if.end16.thread39 ], [ -14, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  %lock = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %wdd1 = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %wdd1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wdd1, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.out_ioctl_crit_edge, label %if.end

entry.out_ioctl_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

if.end:                                           ; preds = %entry
  %ops.i = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %ioctl.i = getelementptr inbounds %struct.watchdog_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %ioctl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioctl.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.if.end3_crit_edge, label %watchdog_ioctl_op.exit

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

watchdog_ioctl_op.exit:                           ; preds = %if.end
  %call.i = tail call i32 %8(ptr noundef nonnull %4, i32 noundef %cmd, i32 noundef %arg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, -515
  br i1 %cmp.not, label %watchdog_ioctl_op.exit.if.end3_crit_edge, label %watchdog_ioctl_op.exit.out_ioctl_crit_edge

watchdog_ioctl_op.exit.out_ioctl_crit_edge:       ; preds = %watchdog_ioctl_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

watchdog_ioctl_op.exit.if.end3_crit_edge:         ; preds = %watchdog_ioctl_op.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.end3:                                          ; preds = %watchdog_ioctl_op.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %9 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end3.out_ioctl_crit_edge [
    i32 -2144839936, label %sw.bb
    i32 -2147199231, label %sw.bb6
    i32 -2147199230, label %sw.bb10
    i32 -2147199228, label %sw.bb26
    i32 -2147199227, label %sw.bb52
    i32 -1073457402, label %sw.bb59
    i32 -2147199225, label %if.end3.sw.bb83_crit_edge
    i32 -2147199222, label %sw.bb103
    i32 -1073457400, label %sw.bb123
    i32 -2147199223, label %sw.bb140
  ]

if.end3.sw.bb83_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb83

if.end3.out_ioctl_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

sw.bb:                                            ; preds = %if.end3
  %info = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 3
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %sw.bb.out_ioctl_crit_edge, label %if.end.i.i

sw.bb.out_ioctl_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

if.end.i.i:                                       ; preds = %sw.bb
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 40, i32 -1226833920) #14, !srcloc !158
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.out_ioctl_crit_edge

if.end.i.i.out_ioctl_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %11, i32 noundef 40) #9
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef %11, i32 noundef 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool5.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool5.not, i32 0, i32 -14
  br label %out_ioctl

sw.bb6:                                           ; preds = %if.end3
  %wd_data1.i = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 17
  %13 = ptrtoint ptr %wd_data1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wd_data1.i, align 4
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %status2.i = getelementptr inbounds %struct.watchdog_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %status2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %status2.i, align 4
  %tobool.not.i219 = icmp eq ptr %18, null
  br i1 %tobool.not.i219, label %if.else.i, label %if.then.i221

if.then.i221:                                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %call.i220 = tail call i32 %18(ptr noundef nonnull %4) #9
  br label %watchdog_get_status.exit

if.else.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  %bootstatus.i = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 6
  %19 = ptrtoint ptr %bootstatus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bootstatus.i, align 4
  %and.i222 = and i32 %20, 127
  br label %watchdog_get_status.exit

watchdog_get_status.exit:                         ; preds = %if.else.i, %if.then.i221
  %status.0.i = phi i32 [ %call.i220, %if.then.i221 ], [ %and.i222, %if.else.i ]
  %status5.i = getelementptr inbounds %struct.watchdog_core_data, ptr %14, i32 0, i32 10
  %21 = ptrtoint ptr %status5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %status5.i, align 4
  %23 = shl i32 %22, 7
  %24 = and i32 %23, 256
  %25 = or i32 %24, %status.0.i
  %call11.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %status5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  %or14.i = or i32 %25, 32768
  %status.2.i = select i1 %tobool12.not.i, i32 %25, i32 %or14.i
  %or16.i = or i32 %status.2.i, 512
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 747) #9
  %26 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !154
  %and.i = and i32 %28, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  %29 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %or16.i, i32 -1226833921) #9, !srcloc !159
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  br label %out_ioctl

sw.bb10:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %bootstatus = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 6
  %30 = ptrtoint ptr %bootstatus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bootstatus, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 750) #9
  %32 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i190 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i190 to ptr
  %cpu_domain.i.i191 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i191) #6, !srcloc !154
  %and.i192 = and i32 %34, -13
  %or.i193 = or i32 %and.i192, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i193) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  %35 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %31, i32 -1226833921) #9, !srcloc !160
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  br label %out_ioctl

sw.bb26:                                          ; preds = %if.end3
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 753) #9
  %36 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i194 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i194 to ptr
  %cpu_domain.i.i195 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i195) #6, !srcloc !154
  %and.i196 = and i32 %38, -13
  %or.i197 = or i32 %and.i196, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i197) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  %39 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #9, !srcloc !161
  %asmresult = extractvalue { i32, i32 } %39, 0
  %asmresult35 = extractvalue { i32, i32 } %39, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool37.not = icmp eq i32 %asmresult, 0
  br i1 %tobool37.not, label %if.end39, label %sw.bb26.out_ioctl_crit_edge

sw.bb26.out_ioctl_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

if.end39:                                         ; preds = %sw.bb26
  %and = and i32 %asmresult35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end39.if.end46_crit_edge, label %if.then41

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then41:                                        ; preds = %if.end39
  %call42 = tail call fastcc i32 @watchdog_stop(ptr noundef nonnull %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then41.out_ioctl_crit_edge, label %if.then41.if.end46_crit_edge

if.then41.if.end46_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then41.out_ioctl_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

if.end46:                                         ; preds = %if.then41.if.end46_crit_edge, %if.end39.if.end46_crit_edge
  %err.0 = phi i32 [ %call42, %if.then41.if.end46_crit_edge ], [ -515, %if.end39.if.end46_crit_edge ]
  %and47 = and i32 %asmresult35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.out_ioctl_crit_edge, label %if.then49

if.end46.out_ioctl_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = tail call fastcc i32 @watchdog_start(ptr noundef nonnull %4)
  br label %out_ioctl

sw.bb52:                                          ; preds = %if.end3
  %info53 = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 3
  %40 = ptrtoint ptr %info53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info53, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %and54 = and i32 %43, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %sw.bb52.out_ioctl_crit_edge, label %if.end57

sw.bb52.out_ioctl_crit_edge:                      ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

if.end57:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = tail call fastcc i32 @watchdog_ping(ptr noundef nonnull %4)
  br label %out_ioctl

sw.bb59:                                          ; preds = %if.end3
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 773) #9
  %44 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i198 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i198 to ptr
  %cpu_domain.i.i199 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 4
  %46 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i199) #6, !srcloc !154
  %and.i200 = and i32 %46, -13
  %or.i201 = or i32 %and.i200, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i201) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  %47 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #9, !srcloc !162
  %asmresult69 = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult69)
  %tobool72.not = icmp eq i32 %asmresult69, 0
  br i1 %tobool72.not, label %if.end74, label %sw.bb59.out_ioctl_crit_edge

sw.bb59.out_ioctl_crit_edge:                      ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

if.end74:                                         ; preds = %sw.bb59
  %asmresult70 = extractvalue { i32, i32 } %47, 1
  %call75 = tail call fastcc i32 @watchdog_set_timeout(ptr noundef nonnull %4, i32 noundef %asmresult70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.end74.out_ioctl_crit_edge, label %if.end78

if.end74.out_ioctl_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

if.end78:                                         ; preds = %if.end74
  %call79 = tail call fastcc i32 @watchdog_ping(ptr noundef nonnull %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end78.out_ioctl_crit_edge, label %if.end78.sw.bb83_crit_edge

if.end78.sw.bb83_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb83

if.end78.out_ioctl_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

sw.bb83:                                          ; preds = %if.end78.sw.bb83_crit_edge, %if.end3.sw.bb83_crit_edge
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 7
  %48 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp84 = icmp eq i32 %49, 0
  br i1 %cmp84, label %sw.bb83.out_ioctl_crit_edge, label %if.end86

sw.bb83.out_ioctl_crit_edge:                      ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

if.end86:                                         ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 793) #9
  %50 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i202 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i202 to ptr
  %cpu_domain.i.i203 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i203) #6, !srcloc !154
  %and.i204 = and i32 %52, -13
  %or.i205 = or i32 %and.i204, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i205) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  %53 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %49, i32 -1226833921) #9, !srcloc !163
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  br label %out_ioctl

sw.bb103:                                         ; preds = %if.end3
  %54 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i, align 4
  %get_timeleft.i = getelementptr inbounds %struct.watchdog_ops, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %get_timeleft.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get_timeleft.i, align 4
  %tobool.not.i225 = icmp eq ptr %57, null
  br i1 %tobool.not.i225, label %sw.bb103.out_ioctl_crit_edge, label %if.end107

sw.bb103.out_ioctl_crit_edge:                     ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

if.end107:                                        ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #11
  %call.i226 = tail call i32 %57(ptr noundef nonnull %4) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 799) #9
  %58 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i206 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i206 to ptr
  %cpu_domain.i.i207 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 4
  %60 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i207) #6, !srcloc !154
  %and.i208 = and i32 %60, -13
  %or.i209 = or i32 %and.i208, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i209) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  %61 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %call.i226, i32 -1226833921) #9, !srcloc !164
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  br label %out_ioctl

sw.bb123:                                         ; preds = %if.end3
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 802) #9
  %62 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i210 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i210 to ptr
  %cpu_domain.i.i211 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 4
  %64 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i211) #6, !srcloc !154
  %and.i212 = and i32 %64, -13
  %or.i213 = or i32 %and.i212, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i213) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  %65 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #9, !srcloc !165
  %asmresult133 = extractvalue { i32, i32 } %65, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult133)
  %tobool136.not = icmp eq i32 %asmresult133, 0
  br i1 %tobool136.not, label %if.end138, label %sw.bb123.out_ioctl_crit_edge

sw.bb123.out_ioctl_crit_edge:                     ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ioctl

if.end138:                                        ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #11
  %asmresult134 = extractvalue { i32, i32 } %65, 1
  %call139 = tail call fastcc i32 @watchdog_set_pretimeout(ptr noundef nonnull %4, i32 noundef %asmresult134)
  br label %out_ioctl

sw.bb140:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %4, i32 0, i32 8
  %66 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pretimeout, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 809) #9
  %68 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i214 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i214 to ptr
  %cpu_domain.i.i215 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 4
  %70 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i215) #6, !srcloc !154
  %and.i216 = and i32 %70, -13
  %or.i217 = or i32 %and.i216, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i217) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  %71 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %67, i32 -1226833921) #9, !srcloc !166
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #9, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  br label %out_ioctl

out_ioctl:                                        ; preds = %sw.bb140, %if.end138, %sw.bb123.out_ioctl_crit_edge, %if.end107, %sw.bb103.out_ioctl_crit_edge, %if.end86, %sw.bb83.out_ioctl_crit_edge, %if.end78.out_ioctl_crit_edge, %if.end74.out_ioctl_crit_edge, %sw.bb59.out_ioctl_crit_edge, %if.end57, %sw.bb52.out_ioctl_crit_edge, %if.then49, %if.end46.out_ioctl_crit_edge, %if.then41.out_ioctl_crit_edge, %sw.bb26.out_ioctl_crit_edge, %sw.bb10, %watchdog_get_status.exit, %copy_to_user.exit, %if.end.i.i.out_ioctl_crit_edge, %sw.bb.out_ioctl_crit_edge, %if.end3.out_ioctl_crit_edge, %watchdog_ioctl_op.exit.out_ioctl_crit_edge, %entry.out_ioctl_crit_edge
  %err.1 = phi i32 [ %call.i, %watchdog_ioctl_op.exit.out_ioctl_crit_edge ], [ %71, %sw.bb140 ], [ %call139, %if.end138 ], [ %61, %if.end107 ], [ %53, %if.end86 ], [ %call75, %if.end74.out_ioctl_crit_edge ], [ %call79, %if.end78.out_ioctl_crit_edge ], [ %call58, %if.end57 ], [ %call42, %if.then41.out_ioctl_crit_edge ], [ %call50, %if.then49 ], [ %err.0, %if.end46.out_ioctl_crit_edge ], [ %35, %sw.bb10 ], [ %29, %watchdog_get_status.exit ], [ -19, %entry.out_ioctl_crit_edge ], [ -14, %sw.bb26.out_ioctl_crit_edge ], [ -95, %sw.bb52.out_ioctl_crit_edge ], [ -14, %sw.bb59.out_ioctl_crit_edge ], [ -95, %sw.bb83.out_ioctl_crit_edge ], [ -14, %sw.bb123.out_ioctl_crit_edge ], [ -25, %if.end3.out_ioctl_crit_edge ], [ -14, %sw.bb.out_ioctl_crit_edge ], [ -14, %if.end.i.i.out_ioctl_crit_edge ], [ -95, %sw.bb103.out_ioctl_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %shr.i.mask = and i32 %1, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 10485760, i32 %shr.i.mask)
  %cmp = icmp eq i32 %shr.i.mask, 10485760
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load ptr, ptr @old_wd_data, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -928
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %wd_data.0 = phi ptr [ %2, %if.then ], [ %add.ptr, %if.else ]
  %status = getelementptr inbounds %struct.watchdog_core_data, ptr %wd_data.0, i32 0, i32 10
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %wdd4 = getelementptr inbounds %struct.watchdog_core_data, ptr %wd_data.0, i32 0, i32 2
  %6 = ptrtoint ptr %wdd4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wdd4, align 8
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status.i, align 4
  %10 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end3
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 4
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call7 = tail call zeroext i1 @try_module_get(ptr noundef %14) #9
  br i1 %call7, label %if.end9.thread, label %land.lhs.true.out_clear_crit_edge

land.lhs.true.out_clear_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clear

if.end9:                                          ; preds = %if.end3
  %call10 = tail call fastcc i32 @watchdog_start(ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.out_mod_crit_edge, label %if.end13

if.end9.out_mod_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mod

if.end9.thread:                                   ; preds = %land.lhs.true
  %call1039 = tail call fastcc i32 @watchdog_start(ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1039)
  %cmp1140 = icmp slt i32 %call1039, 0
  br i1 %cmp1140, label %if.end9.thread.out_mod_crit_edge, label %if.then15

if.end9.thread.out_mod_crit_edge:                 ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mod

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %wd_data.0, ptr %private_data, align 4
  br label %if.end17

if.then15:                                        ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #11
  %private_data42 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %16 = ptrtoint ptr %private_data42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %wd_data.0, ptr %private_data42, align 4
  %call16 = tail call ptr @get_device(ptr noundef %wd_data.0) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13
  %open_deadline = getelementptr inbounds %struct.watchdog_core_data, ptr %wd_data.0, i32 0, i32 6
  %17 = ptrtoint ptr %open_deadline to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 9223372036854775807, ptr %open_deadline, align 8
  %call18 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #9
  br label %cleanup

out_mod:                                          ; preds = %if.end9.thread.out_mod_crit_edge, %if.end9.out_mod_crit_edge
  %call1041 = phi i32 [ %call1039, %if.end9.thread.out_mod_crit_edge ], [ %call10, %if.end9.out_mod_crit_edge ]
  %18 = ptrtoint ptr %wdd4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wdd4, align 8
  %ops20 = getelementptr inbounds %struct.watchdog_device, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %ops20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops20, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void @module_put(ptr noundef %23) #9
  br label %out_clear

out_clear:                                        ; preds = %out_mod, %land.lhs.true.out_clear_crit_edge
  %err.0 = phi i32 [ %call1041, %out_mod ], [ -16, %land.lhs.true.out_clear_crit_edge ]
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status) #9
  br label %cleanup

cleanup:                                          ; preds = %out_clear, %if.end17, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_clear ], [ %call18, %if.end17 ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %wdd1 = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wdd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdd1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then19.critedge35, label %if.end

if.end:                                           ; preds = %entry
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.rhs.critedge, label %if.else

if.else:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 10
  %call3 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.else.if.then6_crit_edge

if.else.if.then6_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.else
  %info = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.else.if.then6_crit_edge
  %call7 = tail call fastcc i32 @watchdog_stop(ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %phi.cmp = icmp slt i32 %call7, 0
  br i1 %phi.cmp, label %if.then6.do.end_crit_edge, label %land.rhs.critedge38

if.then6.do.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.then6.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %11) #13
  %wd_data1.i = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 17
  %12 = ptrtoint ptr %wd_data1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wd_data1.i, align 4
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %status.i, align 4
  %and1.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i, label %do.end.if.end.i_crit_edge

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.end
  %16 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %status.i, align 4
  %18 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i10.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i10.not.i, label %land.lhs.true.i.watchdog_ping.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.watchdog_ping.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %watchdog_ping.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %do.end.if.end.i_crit_edge
  %status.i40 = getelementptr inbounds %struct.watchdog_core_data, ptr %13, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status.i40) #9
  %call3.i = tail call i64 @ktime_get() #9
  %last_keepalive.i = getelementptr inbounds %struct.watchdog_core_data, ptr %13, i32 0, i32 4
  %19 = ptrtoint ptr %last_keepalive.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call3.i, ptr %last_keepalive.i, align 8
  %call4.i = tail call fastcc i32 @__watchdog_ping(ptr noundef nonnull %3) #9
  br label %watchdog_ping.exit

watchdog_ping.exit:                               ; preds = %if.end.i, %land.lhs.true.i.watchdog_ping.exit_crit_edge
  %20 = ptrtoint ptr %wd_data1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wd_data1.i, align 4
  %max_hw_heartbeat_ms.i.i = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 12
  %22 = ptrtoint ptr %max_hw_heartbeat_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_hw_heartbeat_ms.i.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timeout.i.i, align 4
  %mul.i.i = mul i32 %25, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %watchdog_ping.exit.lor.rhs.i.i_crit_edge, label %land.lhs.true.i.i

watchdog_ping.exit.lor.rhs.i.i_crit_edge:         ; preds = %watchdog_ping.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i

land.lhs.true.i.i:                                ; preds = %watchdog_ping.exit
  %26 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %status.i, align 4
  %and1.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and1.i.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %23)
  %cmp.i.i = icmp ugt i32 %mul.i.i, %23
  %or.cond.i.i = select i1 %tobool.i.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.if.then.i_crit_edge, label %land.lhs.true.i.i.lor.rhs.i.i_crit_edge

land.lhs.true.i.i.lor.rhs.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.rhs.i.i:                                      ; preds = %land.lhs.true.i.i.lor.rhs.i.i_crit_edge, %watchdog_ping.exit.lor.rhs.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool2.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.rhs.i.i.if.else.i_crit_edge, label %land.lhs.true3.i.i

lor.rhs.i.i.if.else.i_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true3.i.i:                               ; preds = %lor.rhs.i.i
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %status.i, align 4
  %and1.i.i13.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i13.i.i)
  %tobool.i14.not.i.i = icmp eq i32 %and1.i.i13.i.i, 0
  br i1 %tobool.i14.not.i.i, label %watchdog_need_worker.exit.i, label %land.lhs.true3.i.i.if.else.i_crit_edge

land.lhs.true3.i.i.if.else.i_crit_edge:           ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

watchdog_need_worker.exit.i:                      ; preds = %land.lhs.true3.i.i
  %30 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %status.i, align 4
  %32 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i16.i.not.i = icmp eq i32 %32, 0
  br i1 %tobool.i16.i.not.i, label %watchdog_need_worker.exit.i.if.else.i_crit_edge, label %watchdog_need_worker.exit.i.if.then.i_crit_edge

watchdog_need_worker.exit.i.if.then.i_crit_edge:  ; preds = %watchdog_need_worker.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

watchdog_need_worker.exit.i.if.else.i_crit_edge:  ; preds = %watchdog_need_worker.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %watchdog_need_worker.exit.i.if.then.i_crit_edge, %land.lhs.true.i.i.if.then.i_crit_edge
  %33 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %status.i, align 4
  %and1.i.i.i14.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i14.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i14.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %last_keepalive.i.i = getelementptr inbounds %struct.watchdog_core_data, ptr %21, i32 0, i32 4
  %35 = ptrtoint ptr %last_keepalive.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %last_keepalive.i.i, align 8
  %conv.i.i = zext i32 %mul.i.i to i64
  %mul.i.i.i = mul nuw nsw i64 %conv.i.i, 1000000
  %add.i.i = add i64 %36, %mul.i.i.i
  br label %watchdog_next_keepalive.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %open_deadline.i.i = getelementptr inbounds %struct.watchdog_core_data, ptr %21, i32 0, i32 6
  %37 = ptrtoint ptr %open_deadline.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %open_deadline.i.i, align 8
  br label %watchdog_next_keepalive.exit.i

watchdog_next_keepalive.exit.i:                   ; preds = %if.else.i.i, %if.then.i.i
  %virt_timeout.0.i.i = phi i64 [ %add.i.i, %if.then.i.i ], [ %38, %if.else.i.i ]
  %39 = tail call i32 @llvm.umin.i32(i32 %mul.i.i, i32 %23) #9
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %mul.i.i, i32 %39
  %div46.i.i = lshr i32 %spec.select.i.i, 1
  %conv17.i.i = zext i32 %div46.i.i to i64
  %mul.i47.i.i = mul nuw nsw i64 %conv17.i.i, 1000000
  %conv19.i.i = zext i32 %spec.select.i.i to i64
  %call21.i.i = tail call i64 @ktime_get() #9
  %mul.i48.neg.i.i = mul nsw i64 %conv19.i.i, -1000000
  %.neg.i.i = add i64 %virt_timeout.0.i.i, %mul.i48.neg.i.i
  %sub22.i.i = sub i64 %.neg.i.i, %call21.i.i
  %40 = tail call i64 @llvm.smin.i64(i64 %sub22.i.i, i64 %mul.i47.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp.i = icmp sgt i64 %40, 0
  br i1 %cmp.i, label %if.then3.i, label %watchdog_next_keepalive.exit.i.land.rhs_crit_edge

watchdog_next_keepalive.exit.i.land.rhs_crit_edge: ; preds = %watchdog_next_keepalive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.then3.i:                                       ; preds = %watchdog_next_keepalive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %timer.i = getelementptr inbounds %struct.watchdog_core_data, ptr %21, i32 0, i32 7
  tail call void @hrtimer_start_range_ns(ptr noundef %timer.i, i64 noundef %40, i64 noundef 0, i32 noundef 9) #9
  br label %land.rhs

if.else.i:                                        ; preds = %watchdog_need_worker.exit.i.if.else.i_crit_edge, %land.lhs.true3.i.i.if.else.i_crit_edge, %lor.rhs.i.i.if.else.i_crit_edge
  %timer4.i = getelementptr inbounds %struct.watchdog_core_data, ptr %21, i32 0, i32 7
  %call5.i = tail call i32 @hrtimer_cancel(ptr noundef %timer4.i) #9
  br label %land.rhs

land.rhs.critedge:                                ; preds = %if.end
  %wd_data1.i42 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 17
  %41 = ptrtoint ptr %wd_data1.i42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wd_data1.i42, align 4
  %max_hw_heartbeat_ms.i.i43 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 12
  %43 = ptrtoint ptr %max_hw_heartbeat_ms.i.i43 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_hw_heartbeat_ms.i.i43, align 4
  %timeout.i.i44 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 7
  %45 = ptrtoint ptr %timeout.i.i44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %timeout.i.i44, align 4
  %mul.i.i45 = mul i32 %46, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i46 = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i46, label %land.rhs.critedge.lor.rhs.i.i54_crit_edge, label %land.lhs.true.i.i52

land.rhs.critedge.lor.rhs.i.i54_crit_edge:        ; preds = %land.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i54

land.lhs.true.i.i52:                              ; preds = %land.rhs.critedge
  %47 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %status.i, align 4
  %and1.i.i.i.i48 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i48)
  %tobool.i.i.i49 = icmp ne i32 %and1.i.i.i.i48, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i45, i32 %44)
  %cmp.i.i50 = icmp ugt i32 %mul.i.i45, %44
  %or.cond.i.i51 = select i1 %tobool.i.i.i49, i1 %cmp.i.i50, i1 false
  br i1 %or.cond.i.i51, label %land.lhs.true.i.i52.if.then.i64_crit_edge, label %land.lhs.true.i.i52.lor.rhs.i.i54_crit_edge

land.lhs.true.i.i52.lor.rhs.i.i54_crit_edge:      ; preds = %land.lhs.true.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i54

land.lhs.true.i.i52.if.then.i64_crit_edge:        ; preds = %land.lhs.true.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i64

lor.rhs.i.i54:                                    ; preds = %land.lhs.true.i.i52.lor.rhs.i.i54_crit_edge, %land.rhs.critedge.lor.rhs.i.i54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i45)
  %tobool2.not.i.i53 = icmp eq i32 %mul.i.i45, 0
  br i1 %tobool2.not.i.i53, label %lor.rhs.i.i54.if.else.i88_crit_edge, label %land.lhs.true3.i.i58

lor.rhs.i.i54.if.else.i88_crit_edge:              ; preds = %lor.rhs.i.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i88

land.lhs.true3.i.i58:                             ; preds = %lor.rhs.i.i54
  %49 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %status.i, align 4
  %and1.i.i13.i.i56 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i13.i.i56)
  %tobool.i14.not.i.i57 = icmp eq i32 %and1.i.i13.i.i56, 0
  br i1 %tobool.i14.not.i.i57, label %watchdog_need_worker.exit.i60, label %land.lhs.true3.i.i58.if.else.i88_crit_edge

land.lhs.true3.i.i58.if.else.i88_crit_edge:       ; preds = %land.lhs.true3.i.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i88

watchdog_need_worker.exit.i60:                    ; preds = %land.lhs.true3.i.i58
  %51 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %status.i, align 4
  %53 = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i16.i.not.i59 = icmp eq i32 %53, 0
  br i1 %tobool.i16.i.not.i59, label %watchdog_need_worker.exit.i60.if.else.i88_crit_edge, label %watchdog_need_worker.exit.i60.if.then.i64_crit_edge

watchdog_need_worker.exit.i60.if.then.i64_crit_edge: ; preds = %watchdog_need_worker.exit.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i64

watchdog_need_worker.exit.i60.if.else.i88_crit_edge: ; preds = %watchdog_need_worker.exit.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i88

if.then.i64:                                      ; preds = %watchdog_need_worker.exit.i60.if.then.i64_crit_edge, %land.lhs.true.i.i52.if.then.i64_crit_edge
  %54 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %status.i, align 4
  %and1.i.i.i14.i62 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i14.i62)
  %tobool.i.not.i.i63 = icmp eq i32 %and1.i.i.i14.i62, 0
  br i1 %tobool.i.not.i.i63, label %if.else.i.i71, label %if.then.i.i69

if.then.i.i69:                                    ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #11
  %last_keepalive.i.i65 = getelementptr inbounds %struct.watchdog_core_data, ptr %42, i32 0, i32 4
  %56 = ptrtoint ptr %last_keepalive.i.i65 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %last_keepalive.i.i65, align 8
  %conv.i.i66 = zext i32 %mul.i.i45 to i64
  %mul.i.i.i67 = mul nuw nsw i64 %conv.i.i66, 1000000
  %add.i.i68 = add i64 %57, %mul.i.i.i67
  br label %watchdog_next_keepalive.exit.i83

if.else.i.i71:                                    ; preds = %if.then.i64
  call void @__sanitizer_cov_trace_pc() #11
  %open_deadline.i.i70 = getelementptr inbounds %struct.watchdog_core_data, ptr %42, i32 0, i32 6
  %58 = ptrtoint ptr %open_deadline.i.i70 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %open_deadline.i.i70, align 8
  br label %watchdog_next_keepalive.exit.i83

watchdog_next_keepalive.exit.i83:                 ; preds = %if.else.i.i71, %if.then.i.i69
  %virt_timeout.0.i.i72 = phi i64 [ %add.i.i68, %if.then.i.i69 ], [ %59, %if.else.i.i71 ]
  %60 = tail call i32 @llvm.umin.i32(i32 %mul.i.i45, i32 %44) #9
  %spec.select.i.i73 = select i1 %tobool.not.i.i46, i32 %mul.i.i45, i32 %60
  %div46.i.i74 = lshr i32 %spec.select.i.i73, 1
  %conv17.i.i75 = zext i32 %div46.i.i74 to i64
  %mul.i47.i.i76 = mul nuw nsw i64 %conv17.i.i75, 1000000
  %conv19.i.i77 = zext i32 %spec.select.i.i73 to i64
  %call21.i.i78 = tail call i64 @ktime_get() #9
  %mul.i48.neg.i.i79 = mul nsw i64 %conv19.i.i77, -1000000
  %.neg.i.i80 = add i64 %virt_timeout.0.i.i72, %mul.i48.neg.i.i79
  %sub22.i.i81 = sub i64 %.neg.i.i80, %call21.i.i78
  %61 = tail call i64 @llvm.smin.i64(i64 %sub22.i.i81, i64 %mul.i47.i.i76) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %cmp.i82 = icmp sgt i64 %61, 0
  br i1 %cmp.i82, label %if.then3.i85, label %watchdog_next_keepalive.exit.i83.watchdog_update_worker.exit89_crit_edge

watchdog_next_keepalive.exit.i83.watchdog_update_worker.exit89_crit_edge: ; preds = %watchdog_next_keepalive.exit.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %watchdog_update_worker.exit89

if.then3.i85:                                     ; preds = %watchdog_next_keepalive.exit.i83
  call void @__sanitizer_cov_trace_pc() #11
  %timer.i84 = getelementptr inbounds %struct.watchdog_core_data, ptr %42, i32 0, i32 7
  tail call void @hrtimer_start_range_ns(ptr noundef %timer.i84, i64 noundef %61, i64 noundef 0, i32 noundef 9) #9
  br label %watchdog_update_worker.exit89

if.else.i88:                                      ; preds = %watchdog_need_worker.exit.i60.if.else.i88_crit_edge, %land.lhs.true3.i.i58.if.else.i88_crit_edge, %lor.rhs.i.i54.if.else.i88_crit_edge
  %timer4.i86 = getelementptr inbounds %struct.watchdog_core_data, ptr %42, i32 0, i32 7
  %call5.i87 = tail call i32 @hrtimer_cancel(ptr noundef %timer4.i86) #9
  br label %watchdog_update_worker.exit89

watchdog_update_worker.exit89:                    ; preds = %if.else.i88, %if.then3.i85, %watchdog_next_keepalive.exit.i83.watchdog_update_worker.exit89_crit_edge
  %status14.c = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 10
  br label %land.rhs

land.rhs.critedge38:                              ; preds = %if.then6
  %wd_data1.i90 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 17
  %62 = ptrtoint ptr %wd_data1.i90 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wd_data1.i90, align 4
  %max_hw_heartbeat_ms.i.i91 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 12
  %64 = ptrtoint ptr %max_hw_heartbeat_ms.i.i91 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_hw_heartbeat_ms.i.i91, align 4
  %timeout.i.i92 = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 7
  %66 = ptrtoint ptr %timeout.i.i92 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %timeout.i.i92, align 4
  %mul.i.i93 = mul i32 %67, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i.i94 = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i94, label %land.rhs.critedge38.lor.rhs.i.i102_crit_edge, label %land.lhs.true.i.i100

land.rhs.critedge38.lor.rhs.i.i102_crit_edge:     ; preds = %land.rhs.critedge38
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i102

land.lhs.true.i.i100:                             ; preds = %land.rhs.critedge38
  %68 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %status.i, align 4
  %and1.i.i.i.i96 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i96)
  %tobool.i.i.i97 = icmp ne i32 %and1.i.i.i.i96, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i93, i32 %65)
  %cmp.i.i98 = icmp ugt i32 %mul.i.i93, %65
  %or.cond.i.i99 = select i1 %tobool.i.i.i97, i1 %cmp.i.i98, i1 false
  br i1 %or.cond.i.i99, label %land.lhs.true.i.i100.if.then.i112_crit_edge, label %land.lhs.true.i.i100.lor.rhs.i.i102_crit_edge

land.lhs.true.i.i100.lor.rhs.i.i102_crit_edge:    ; preds = %land.lhs.true.i.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i102

land.lhs.true.i.i100.if.then.i112_crit_edge:      ; preds = %land.lhs.true.i.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i112

lor.rhs.i.i102:                                   ; preds = %land.lhs.true.i.i100.lor.rhs.i.i102_crit_edge, %land.rhs.critedge38.lor.rhs.i.i102_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i93)
  %tobool2.not.i.i101 = icmp eq i32 %mul.i.i93, 0
  br i1 %tobool2.not.i.i101, label %lor.rhs.i.i102.if.else.i136_crit_edge, label %land.lhs.true3.i.i106

lor.rhs.i.i102.if.else.i136_crit_edge:            ; preds = %lor.rhs.i.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i136

land.lhs.true3.i.i106:                            ; preds = %lor.rhs.i.i102
  %70 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %status.i, align 4
  %and1.i.i13.i.i104 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i13.i.i104)
  %tobool.i14.not.i.i105 = icmp eq i32 %and1.i.i13.i.i104, 0
  br i1 %tobool.i14.not.i.i105, label %watchdog_need_worker.exit.i108, label %land.lhs.true3.i.i106.if.else.i136_crit_edge

land.lhs.true3.i.i106.if.else.i136_crit_edge:     ; preds = %land.lhs.true3.i.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i136

watchdog_need_worker.exit.i108:                   ; preds = %land.lhs.true3.i.i106
  %72 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %status.i, align 4
  %74 = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i16.i.not.i107 = icmp eq i32 %74, 0
  br i1 %tobool.i16.i.not.i107, label %watchdog_need_worker.exit.i108.if.else.i136_crit_edge, label %watchdog_need_worker.exit.i108.if.then.i112_crit_edge

watchdog_need_worker.exit.i108.if.then.i112_crit_edge: ; preds = %watchdog_need_worker.exit.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i112

watchdog_need_worker.exit.i108.if.else.i136_crit_edge: ; preds = %watchdog_need_worker.exit.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i136

if.then.i112:                                     ; preds = %watchdog_need_worker.exit.i108.if.then.i112_crit_edge, %land.lhs.true.i.i100.if.then.i112_crit_edge
  %75 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %status.i, align 4
  %and1.i.i.i14.i110 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i14.i110)
  %tobool.i.not.i.i111 = icmp eq i32 %and1.i.i.i14.i110, 0
  br i1 %tobool.i.not.i.i111, label %if.else.i.i119, label %if.then.i.i117

if.then.i.i117:                                   ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #11
  %last_keepalive.i.i113 = getelementptr inbounds %struct.watchdog_core_data, ptr %63, i32 0, i32 4
  %77 = ptrtoint ptr %last_keepalive.i.i113 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %last_keepalive.i.i113, align 8
  %conv.i.i114 = zext i32 %mul.i.i93 to i64
  %mul.i.i.i115 = mul nuw nsw i64 %conv.i.i114, 1000000
  %add.i.i116 = add i64 %78, %mul.i.i.i115
  br label %watchdog_next_keepalive.exit.i131

if.else.i.i119:                                   ; preds = %if.then.i112
  call void @__sanitizer_cov_trace_pc() #11
  %open_deadline.i.i118 = getelementptr inbounds %struct.watchdog_core_data, ptr %63, i32 0, i32 6
  %79 = ptrtoint ptr %open_deadline.i.i118 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %open_deadline.i.i118, align 8
  br label %watchdog_next_keepalive.exit.i131

watchdog_next_keepalive.exit.i131:                ; preds = %if.else.i.i119, %if.then.i.i117
  %virt_timeout.0.i.i120 = phi i64 [ %add.i.i116, %if.then.i.i117 ], [ %80, %if.else.i.i119 ]
  %81 = tail call i32 @llvm.umin.i32(i32 %mul.i.i93, i32 %65) #9
  %spec.select.i.i121 = select i1 %tobool.not.i.i94, i32 %mul.i.i93, i32 %81
  %div46.i.i122 = lshr i32 %spec.select.i.i121, 1
  %conv17.i.i123 = zext i32 %div46.i.i122 to i64
  %mul.i47.i.i124 = mul nuw nsw i64 %conv17.i.i123, 1000000
  %conv19.i.i125 = zext i32 %spec.select.i.i121 to i64
  %call21.i.i126 = tail call i64 @ktime_get() #9
  %mul.i48.neg.i.i127 = mul nsw i64 %conv19.i.i125, -1000000
  %.neg.i.i128 = add i64 %virt_timeout.0.i.i120, %mul.i48.neg.i.i127
  %sub22.i.i129 = sub i64 %.neg.i.i128, %call21.i.i126
  %82 = tail call i64 @llvm.smin.i64(i64 %sub22.i.i129, i64 %mul.i47.i.i124) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %cmp.i130 = icmp sgt i64 %82, 0
  br i1 %cmp.i130, label %if.then3.i133, label %watchdog_next_keepalive.exit.i131.land.rhs_crit_edge

watchdog_next_keepalive.exit.i131.land.rhs_crit_edge: ; preds = %watchdog_next_keepalive.exit.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.then3.i133:                                    ; preds = %watchdog_next_keepalive.exit.i131
  call void @__sanitizer_cov_trace_pc() #11
  %timer.i132 = getelementptr inbounds %struct.watchdog_core_data, ptr %63, i32 0, i32 7
  tail call void @hrtimer_start_range_ns(ptr noundef %timer.i132, i64 noundef %82, i64 noundef 0, i32 noundef 9) #9
  br label %land.rhs

if.else.i136:                                     ; preds = %watchdog_need_worker.exit.i108.if.else.i136_crit_edge, %land.lhs.true3.i.i106.if.else.i136_crit_edge, %lor.rhs.i.i102.if.else.i136_crit_edge
  %timer4.i134 = getelementptr inbounds %struct.watchdog_core_data, ptr %63, i32 0, i32 7
  %call5.i135 = tail call i32 @hrtimer_cancel(ptr noundef %timer4.i134) #9
  br label %land.rhs

land.rhs:                                         ; preds = %if.else.i136, %if.then3.i133, %watchdog_next_keepalive.exit.i131.land.rhs_crit_edge, %watchdog_update_worker.exit89, %if.else.i, %if.then3.i, %watchdog_next_keepalive.exit.i.land.rhs_crit_edge
  %status.sink = phi ptr [ %status14.c, %watchdog_update_worker.exit89 ], [ %status, %watchdog_next_keepalive.exit.i.land.rhs_crit_edge ], [ %status, %if.then3.i ], [ %status, %if.else.i ], [ %status, %watchdog_next_keepalive.exit.i131.land.rhs_crit_edge ], [ %status, %if.then3.i133 ], [ %status, %if.else.i136 ]
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status.sink) #9
  %83 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %status.i, align 4
  %85 = and i32 %84, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.i139.not = icmp eq i32 %85, 0
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br i1 %tobool.i139.not, label %land.rhs.if.then19_crit_edge, label %land.rhs.if.end20_crit_edge

land.rhs.if.end20_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.rhs.if.then19_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19.critedge35:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %if.then19

if.then19:                                        ; preds = %if.then19.critedge35, %land.rhs.if.then19_crit_edge
  %owner = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %owner, align 8
  tail call void @module_put(ptr noundef %87) #9
  tail call void @put_device(ptr noundef %1) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %land.rhs.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @watchdog_ping(ptr noundef %wdd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 17
  %0 = ptrtoint ptr %wd_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wd_data1, align 4
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i10.not = icmp eq i32 %6, 0
  br i1 %tobool.i10.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %status = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status) #9
  %call3 = tail call i64 @ktime_get() #9
  %last_keepalive = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %last_keepalive to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %call3, ptr %last_keepalive, align 8
  %call4 = tail call fastcc i32 @__watchdog_ping(ptr noundef %wdd)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @watchdog_stop(ptr noundef %wdd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %wdd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wdd, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %6) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %stop = getelementptr inbounds %struct.watchdog_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stop, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.end12.thread, label %if.end12

if.end12.thread:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status.i) #9
  br label %if.then13

if.end12:                                         ; preds = %if.end4
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %status.i) #9
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %stop9 = getelementptr inbounds %struct.watchdog_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %stop9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stop9, align 4
  %call10 = tail call i32 %14(ptr noundef %wdd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %if.end12.if.then13_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.if.then13_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %if.end12.if.then13_crit_edge, %if.end12.thread
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status.i) #9
  %wd_data1.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 17
  %15 = ptrtoint ptr %wd_data1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wd_data1.i, align 4
  %max_hw_heartbeat_ms.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 12
  %17 = ptrtoint ptr %max_hw_heartbeat_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_hw_heartbeat_ms.i.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %19 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timeout.i.i, align 4
  %mul.i.i = mul i32 %20, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.then13.lor.rhs.i.i_crit_edge, label %land.lhs.true.i.i

if.then13.lor.rhs.i.i_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i

land.lhs.true.i.i:                                ; preds = %if.then13
  %21 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %status.i, align 4
  %and1.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and1.i.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %18)
  %cmp.i.i = icmp ugt i32 %mul.i.i, %18
  %or.cond.i.i = select i1 %tobool.i.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.if.then.i_crit_edge, label %land.lhs.true.i.i.lor.rhs.i.i_crit_edge

land.lhs.true.i.i.lor.rhs.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.rhs.i.i:                                      ; preds = %land.lhs.true.i.i.lor.rhs.i.i_crit_edge, %if.then13.lor.rhs.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool2.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.rhs.i.i.if.else.i_crit_edge, label %land.lhs.true3.i.i

lor.rhs.i.i.if.else.i_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true3.i.i:                               ; preds = %lor.rhs.i.i
  %23 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %status.i, align 4
  %and1.i.i13.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i13.i.i)
  %tobool.i14.not.i.i = icmp eq i32 %and1.i.i13.i.i, 0
  br i1 %tobool.i14.not.i.i, label %watchdog_need_worker.exit.i, label %land.lhs.true3.i.i.if.else.i_crit_edge

land.lhs.true3.i.i.if.else.i_crit_edge:           ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

watchdog_need_worker.exit.i:                      ; preds = %land.lhs.true3.i.i
  %25 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %status.i, align 4
  %27 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i16.i.not.i = icmp eq i32 %27, 0
  br i1 %tobool.i16.i.not.i, label %watchdog_need_worker.exit.i.if.else.i_crit_edge, label %watchdog_need_worker.exit.i.if.then.i_crit_edge

watchdog_need_worker.exit.i.if.then.i_crit_edge:  ; preds = %watchdog_need_worker.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

watchdog_need_worker.exit.i.if.else.i_crit_edge:  ; preds = %watchdog_need_worker.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %watchdog_need_worker.exit.i.if.then.i_crit_edge, %land.lhs.true.i.i.if.then.i_crit_edge
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %status.i, align 4
  %and1.i.i.i14.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i14.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i14.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %last_keepalive.i.i = getelementptr inbounds %struct.watchdog_core_data, ptr %16, i32 0, i32 4
  %30 = ptrtoint ptr %last_keepalive.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %last_keepalive.i.i, align 8
  %conv.i.i = zext i32 %mul.i.i to i64
  %mul.i.i.i = mul nuw nsw i64 %conv.i.i, 1000000
  %add.i.i = add i64 %31, %mul.i.i.i
  br label %watchdog_next_keepalive.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %open_deadline.i.i = getelementptr inbounds %struct.watchdog_core_data, ptr %16, i32 0, i32 6
  %32 = ptrtoint ptr %open_deadline.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %open_deadline.i.i, align 8
  br label %watchdog_next_keepalive.exit.i

watchdog_next_keepalive.exit.i:                   ; preds = %if.else.i.i, %if.then.i.i
  %virt_timeout.0.i.i = phi i64 [ %add.i.i, %if.then.i.i ], [ %33, %if.else.i.i ]
  %34 = tail call i32 @llvm.umin.i32(i32 %mul.i.i, i32 %18) #9
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %mul.i.i, i32 %34
  %div46.i.i = lshr i32 %spec.select.i.i, 1
  %conv17.i.i = zext i32 %div46.i.i to i64
  %mul.i47.i.i = mul nuw nsw i64 %conv17.i.i, 1000000
  %conv19.i.i = zext i32 %spec.select.i.i to i64
  %call21.i.i = tail call i64 @ktime_get() #9
  %mul.i48.neg.i.i = mul nsw i64 %conv19.i.i, -1000000
  %.neg.i.i = add i64 %virt_timeout.0.i.i, %mul.i48.neg.i.i
  %sub22.i.i = sub i64 %.neg.i.i, %call21.i.i
  %35 = tail call i64 @llvm.smin.i64(i64 %sub22.i.i, i64 %mul.i47.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp.i = icmp sgt i64 %35, 0
  br i1 %cmp.i, label %if.then3.i, label %watchdog_next_keepalive.exit.i.watchdog_update_worker.exit_crit_edge

watchdog_next_keepalive.exit.i.watchdog_update_worker.exit_crit_edge: ; preds = %watchdog_next_keepalive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %watchdog_update_worker.exit

if.then3.i:                                       ; preds = %watchdog_next_keepalive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %timer.i = getelementptr inbounds %struct.watchdog_core_data, ptr %16, i32 0, i32 7
  tail call void @hrtimer_start_range_ns(ptr noundef %timer.i, i64 noundef %35, i64 noundef 0, i32 noundef 9) #9
  br label %watchdog_update_worker.exit

if.else.i:                                        ; preds = %watchdog_need_worker.exit.i.if.else.i_crit_edge, %land.lhs.true3.i.i.if.else.i_crit_edge, %lor.rhs.i.i.if.else.i_crit_edge
  %timer4.i = getelementptr inbounds %struct.watchdog_core_data, ptr %16, i32 0, i32 7
  %call5.i = tail call i32 @hrtimer_cancel(ptr noundef %timer4.i) #9
  br label %watchdog_update_worker.exit

watchdog_update_worker.exit:                      ; preds = %if.else.i, %if.then3.i, %watchdog_next_keepalive.exit.i.watchdog_update_worker.exit_crit_edge
  tail call void @watchdog_hrtimer_pretimeout_stop(ptr noundef %wdd) #9
  br label %cleanup

cleanup:                                          ; preds = %watchdog_update_worker.exit, %if.end12.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %watchdog_update_worker.exit ], [ %call10, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @watchdog_start(ptr noundef %wdd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 17
  %0 = ptrtoint ptr %wd_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wd_data1, align 4
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %status) #9
  %call2 = tail call i64 @ktime_get() #9
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i35.not = icmp eq i32 %6, 0
  br i1 %tobool.i35.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %ping = getelementptr inbounds %struct.watchdog_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ping to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ping, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then4

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %call5 = tail call fastcc i32 @__watchdog_ping(ptr noundef %wdd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %status.i) #9
  br label %cleanup.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %ops9 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 4
  %11 = ptrtoint ptr %ops9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops9, align 4
  %start = getelementptr inbounds %struct.watchdog_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %start, align 4
  %call10 = tail call i32 %14(ptr noundef %wdd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.else
  tail call void @_set_bit(i32 noundef 0, ptr noundef %status.i) #9
  %last_keepalive = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %last_keepalive to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call2, ptr %last_keepalive, align 8
  %last_hw_keepalive = getelementptr inbounds %struct.watchdog_core_data, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %last_hw_keepalive to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call2, ptr %last_hw_keepalive, align 8
  %17 = ptrtoint ptr %wd_data1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wd_data1, align 4
  %max_hw_heartbeat_ms.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 12
  %19 = ptrtoint ptr %max_hw_heartbeat_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_hw_heartbeat_ms.i.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %21 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %timeout.i.i, align 4
  %mul.i.i = mul i32 %22, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %if.then12.lor.rhs.i.i_crit_edge, label %land.lhs.true.i.i

if.then12.lor.rhs.i.i_crit_edge:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i

land.lhs.true.i.i:                                ; preds = %if.then12
  %23 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %status.i, align 4
  %and1.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and1.i.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %20)
  %cmp.i.i = icmp ugt i32 %mul.i.i, %20
  %or.cond.i.i = select i1 %tobool.i.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.if.then.i_crit_edge, label %land.lhs.true.i.i.lor.rhs.i.i_crit_edge

land.lhs.true.i.i.lor.rhs.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.rhs.i.i:                                      ; preds = %land.lhs.true.i.i.lor.rhs.i.i_crit_edge, %if.then12.lor.rhs.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool2.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.rhs.i.i.if.else.i_crit_edge, label %land.lhs.true3.i.i

lor.rhs.i.i.if.else.i_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true3.i.i:                               ; preds = %lor.rhs.i.i
  %25 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %status.i, align 4
  %and1.i.i13.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i13.i.i)
  %tobool.i14.not.i.i = icmp eq i32 %and1.i.i13.i.i, 0
  br i1 %tobool.i14.not.i.i, label %watchdog_need_worker.exit.i, label %land.lhs.true3.i.i.if.else.i_crit_edge

land.lhs.true3.i.i.if.else.i_crit_edge:           ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

watchdog_need_worker.exit.i:                      ; preds = %land.lhs.true3.i.i
  %27 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %status.i, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i16.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i16.i.not.i, label %watchdog_need_worker.exit.i.if.else.i_crit_edge, label %watchdog_need_worker.exit.i.if.then.i_crit_edge

watchdog_need_worker.exit.i.if.then.i_crit_edge:  ; preds = %watchdog_need_worker.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

watchdog_need_worker.exit.i.if.else.i_crit_edge:  ; preds = %watchdog_need_worker.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %watchdog_need_worker.exit.i.if.then.i_crit_edge, %land.lhs.true.i.i.if.then.i_crit_edge
  %30 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %status.i, align 4
  %and1.i.i.i14.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i14.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i14.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %last_keepalive.i.i = getelementptr inbounds %struct.watchdog_core_data, ptr %18, i32 0, i32 4
  %32 = ptrtoint ptr %last_keepalive.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %last_keepalive.i.i, align 8
  %conv.i.i = zext i32 %mul.i.i to i64
  %mul.i.i.i = mul nuw nsw i64 %conv.i.i, 1000000
  %add.i.i = add i64 %33, %mul.i.i.i
  br label %watchdog_next_keepalive.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %open_deadline.i.i = getelementptr inbounds %struct.watchdog_core_data, ptr %18, i32 0, i32 6
  %34 = ptrtoint ptr %open_deadline.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %open_deadline.i.i, align 8
  br label %watchdog_next_keepalive.exit.i

watchdog_next_keepalive.exit.i:                   ; preds = %if.else.i.i, %if.then.i.i
  %virt_timeout.0.i.i = phi i64 [ %add.i.i, %if.then.i.i ], [ %35, %if.else.i.i ]
  %36 = tail call i32 @llvm.umin.i32(i32 %mul.i.i, i32 %20) #9
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %mul.i.i, i32 %36
  %div46.i.i = lshr i32 %spec.select.i.i, 1
  %conv17.i.i = zext i32 %div46.i.i to i64
  %mul.i47.i.i = mul nuw nsw i64 %conv17.i.i, 1000000
  %conv19.i.i = zext i32 %spec.select.i.i to i64
  %call21.i.i = tail call i64 @ktime_get() #9
  %mul.i48.neg.i.i = mul nsw i64 %conv19.i.i, -1000000
  %.neg.i.i = add i64 %virt_timeout.0.i.i, %mul.i48.neg.i.i
  %sub22.i.i = sub i64 %.neg.i.i, %call21.i.i
  %37 = tail call i64 @llvm.smin.i64(i64 %sub22.i.i, i64 %mul.i47.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %cmp.i = icmp sgt i64 %37, 0
  br i1 %cmp.i, label %if.then3.i, label %watchdog_next_keepalive.exit.i.cleanup.sink.split_crit_edge

watchdog_next_keepalive.exit.i.cleanup.sink.split_crit_edge: ; preds = %watchdog_next_keepalive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then3.i:                                       ; preds = %watchdog_next_keepalive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %timer.i = getelementptr inbounds %struct.watchdog_core_data, ptr %18, i32 0, i32 7
  tail call void @hrtimer_start_range_ns(ptr noundef %timer.i, i64 noundef %37, i64 noundef 0, i32 noundef 9) #9
  br label %cleanup.sink.split

if.else.i:                                        ; preds = %watchdog_need_worker.exit.i.if.else.i_crit_edge, %land.lhs.true3.i.i.if.else.i_crit_edge, %lor.rhs.i.i.if.else.i_crit_edge
  %timer4.i = getelementptr inbounds %struct.watchdog_core_data, ptr %18, i32 0, i32 7
  %call5.i = tail call i32 @hrtimer_cancel(ptr noundef %timer4.i) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else.i, %if.then3.i, %watchdog_next_keepalive.exit.i.cleanup.sink.split_crit_edge, %if.then6
  tail call void @watchdog_hrtimer_pretimeout_start(ptr noundef %wdd) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call5, %if.then4.cleanup_crit_edge ], [ %call10, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @watchdog_set_timeout(ptr noundef %wdd, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 3
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4294967, i32 %timeout)
  %cmp.i = icmp ugt i32 %timeout, 4294967
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %min_timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 9
  %4 = ptrtoint ptr %min_timeout.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_timeout.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %timeout)
  %cmp1.i = icmp ugt i32 %5, %timeout
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.rhs.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %max_hw_heartbeat_ms.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 12
  %6 = ptrtoint ptr %max_hw_heartbeat_ms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_hw_heartbeat_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %watchdog_timeout_invalid.exit, label %lor.rhs.i.if.end2_crit_edge

lor.rhs.i.if.end2_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

watchdog_timeout_invalid.exit:                    ; preds = %lor.rhs.i
  %max_timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 10
  %8 = ptrtoint ptr %max_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %timeout)
  %cmp4.i = icmp ult i32 %9, %timeout
  %spec.select.i = and i1 %tobool2.not.i, %cmp4.i
  br i1 %spec.select.i, label %watchdog_timeout_invalid.exit.cleanup_crit_edge, label %watchdog_timeout_invalid.exit.if.end2_crit_edge

watchdog_timeout_invalid.exit.if.end2_crit_edge:  ; preds = %watchdog_timeout_invalid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

watchdog_timeout_invalid.exit.cleanup_crit_edge:  ; preds = %watchdog_timeout_invalid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %watchdog_timeout_invalid.exit.if.end2_crit_edge, %lor.rhs.i.if.end2_crit_edge
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 4
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %set_timeout = getelementptr inbounds %struct.watchdog_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %set_timeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_timeout, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 %13(ptr noundef %wdd, i32 noundef %timeout) #9
  br label %if.end13

if.else:                                          ; preds = %if.end2
  %timeout8 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %14 = ptrtoint ptr %timeout8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %timeout, ptr %timeout8, align 4
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 8
  %15 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pretimeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %timeout)
  %cmp.not = icmp ult i32 %16, %timeout
  br i1 %cmp.not, label %if.else.if.end13_crit_edge, label %if.then10

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %pretimeout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %pretimeout, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.else.if.end13_crit_edge, %if.then4
  %err.0 = phi i32 [ %call7, %if.then4 ], [ 0, %if.then10 ], [ 0, %if.else.if.end13_crit_edge ]
  %wd_data1.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 17
  %18 = ptrtoint ptr %wd_data1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wd_data1.i, align 4
  %20 = ptrtoint ptr %max_hw_heartbeat_ms.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_hw_heartbeat_ms.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %22 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timeout.i.i, align 4
  %mul.i.i = mul i32 %23, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %if.end13.lor.rhs.i.i_crit_edge, label %land.lhs.true.i.i

if.end13.lor.rhs.i.i_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i

land.lhs.true.i.i:                                ; preds = %if.end13
  %status.i.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %24 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %status.i.i.i, align 4
  %and1.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.i = icmp ne i32 %and1.i.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %21)
  %cmp.i.i = icmp ugt i32 %mul.i.i, %21
  %or.cond.i.i = select i1 %tobool.i.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.if.then.i_crit_edge, label %land.lhs.true.i.i.lor.rhs.i.i_crit_edge

land.lhs.true.i.i.lor.rhs.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i.i

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.rhs.i.i:                                      ; preds = %land.lhs.true.i.i.lor.rhs.i.i_crit_edge, %if.end13.lor.rhs.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool2.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.rhs.i.i.if.else.i_crit_edge, label %land.lhs.true3.i.i

lor.rhs.i.i.if.else.i_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true3.i.i:                               ; preds = %lor.rhs.i.i
  %status.i12.i.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %26 = ptrtoint ptr %status.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %status.i12.i.i, align 4
  %and1.i.i13.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i13.i.i)
  %tobool.i14.not.i.i = icmp eq i32 %and1.i.i13.i.i, 0
  br i1 %tobool.i14.not.i.i, label %watchdog_need_worker.exit.i, label %land.lhs.true3.i.i.if.else.i_crit_edge

land.lhs.true3.i.i.if.else.i_crit_edge:           ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

watchdog_need_worker.exit.i:                      ; preds = %land.lhs.true3.i.i
  %28 = ptrtoint ptr %status.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %status.i12.i.i, align 4
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i16.i.not.i = icmp eq i32 %30, 0
  br i1 %tobool.i16.i.not.i, label %watchdog_need_worker.exit.i.if.else.i_crit_edge, label %watchdog_need_worker.exit.i.if.then.i_crit_edge

watchdog_need_worker.exit.i.if.then.i_crit_edge:  ; preds = %watchdog_need_worker.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

watchdog_need_worker.exit.i.if.else.i_crit_edge:  ; preds = %watchdog_need_worker.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %watchdog_need_worker.exit.i.if.then.i_crit_edge, %land.lhs.true.i.i.if.then.i_crit_edge
  %status.i.i13.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 18
  %31 = ptrtoint ptr %status.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %status.i.i13.i, align 4
  %and1.i.i.i14.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i14.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i14.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %last_keepalive.i.i = getelementptr inbounds %struct.watchdog_core_data, ptr %19, i32 0, i32 4
  %33 = ptrtoint ptr %last_keepalive.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %last_keepalive.i.i, align 8
  %conv.i.i = zext i32 %mul.i.i to i64
  %mul.i.i.i = mul nuw nsw i64 %conv.i.i, 1000000
  %add.i.i = add i64 %34, %mul.i.i.i
  br label %watchdog_next_keepalive.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %open_deadline.i.i = getelementptr inbounds %struct.watchdog_core_data, ptr %19, i32 0, i32 6
  %35 = ptrtoint ptr %open_deadline.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %open_deadline.i.i, align 8
  br label %watchdog_next_keepalive.exit.i

watchdog_next_keepalive.exit.i:                   ; preds = %if.else.i.i, %if.then.i.i
  %virt_timeout.0.i.i = phi i64 [ %add.i.i, %if.then.i.i ], [ %36, %if.else.i.i ]
  %37 = tail call i32 @llvm.umin.i32(i32 %mul.i.i, i32 %21) #9
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %mul.i.i, i32 %37
  %div46.i.i = lshr i32 %spec.select.i.i, 1
  %conv17.i.i = zext i32 %div46.i.i to i64
  %mul.i47.i.i = mul nuw nsw i64 %conv17.i.i, 1000000
  %conv19.i.i = zext i32 %spec.select.i.i to i64
  %call21.i.i = tail call i64 @ktime_get() #9
  %mul.i48.neg.i.i = mul nsw i64 %conv19.i.i, -1000000
  %.neg.i.i = add i64 %virt_timeout.0.i.i, %mul.i48.neg.i.i
  %sub22.i.i = sub i64 %.neg.i.i, %call21.i.i
  %38 = tail call i64 @llvm.smin.i64(i64 %sub22.i.i, i64 %mul.i47.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp.i25 = icmp sgt i64 %38, 0
  br i1 %cmp.i25, label %if.then3.i, label %watchdog_next_keepalive.exit.i.cleanup_crit_edge

watchdog_next_keepalive.exit.i.cleanup_crit_edge: ; preds = %watchdog_next_keepalive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %watchdog_next_keepalive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %timer.i = getelementptr inbounds %struct.watchdog_core_data, ptr %19, i32 0, i32 7
  tail call void @hrtimer_start_range_ns(ptr noundef %timer.i, i64 noundef %38, i64 noundef 0, i32 noundef 9) #9
  br label %cleanup

if.else.i:                                        ; preds = %watchdog_need_worker.exit.i.if.else.i_crit_edge, %land.lhs.true3.i.i.if.else.i_crit_edge, %lor.rhs.i.i.if.else.i_crit_edge
  %timer4.i = getelementptr inbounds %struct.watchdog_core_data, ptr %19, i32 0, i32 7
  %call5.i = tail call i32 @hrtimer_cancel(ptr noundef %timer4.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then3.i, %watchdog_next_keepalive.exit.i.cleanup_crit_edge, %watchdog_timeout_invalid.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %watchdog_timeout_invalid.exit.cleanup_crit_edge ], [ %err.0, %watchdog_next_keepalive.exit.i.cleanup_crit_edge ], [ %err.0, %if.then3.i ], [ %err.0, %if.else.i ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @watchdog_set_pretimeout(ptr noundef %wdd, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not.i = icmp eq i32 %timeout, 0
  br i1 %tobool.not.i, label %entry.if.end3_crit_edge, label %watchdog_pretimeout_invalid.exit

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

watchdog_pretimeout_invalid.exit:                 ; preds = %entry
  %timeout.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %0 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout.i, align 4
  %2 = add i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %timeout)
  %3 = icmp ult i32 %2, %timeout
  br i1 %3, label %watchdog_pretimeout_invalid.exit.cleanup_crit_edge, label %watchdog_pretimeout_invalid.exit.if.end3_crit_edge

watchdog_pretimeout_invalid.exit.if.end3_crit_edge: ; preds = %watchdog_pretimeout_invalid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

watchdog_pretimeout_invalid.exit.cleanup_crit_edge: ; preds = %watchdog_pretimeout_invalid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %watchdog_pretimeout_invalid.exit.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %set_pretimeout = getelementptr inbounds %struct.watchdog_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %set_pretimeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_pretimeout, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end3.if.else_crit_edge, label %land.lhs.true

if.end3.if.else_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end3
  %info = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 3
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %if.then5

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 %7(ptr noundef %wdd, i32 noundef %timeout) #9
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end3.if.else_crit_edge
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 8
  %12 = ptrtoint ptr %pretimeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %timeout, ptr %pretimeout, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %watchdog_pretimeout_invalid.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %watchdog_pretimeout_invalid.exit.cleanup_crit_edge ], [ %call8, %if.then5 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_hrtimer_pretimeout_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_hrtimer_pretimeout_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @wdt_is_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %n) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode2 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %mode2 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mode2, align 4
  %cmp = icmp eq ptr %attr, @dev_attr_timeleft
  br i1 %cmp, label %land.lhs.true, label %entry.if.else7_crit_edge

entry.if.else7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else7

land.lhs.true:                                    ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ops = getelementptr inbounds %struct.watchdog_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %get_timeleft = getelementptr inbounds %struct.watchdog_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %get_timeleft to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_timeleft, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.if.else7_crit_edge

land.lhs.true.if.else7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else7

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.else7:                                         ; preds = %land.lhs.true.if.else7_crit_edge, %entry.if.else7_crit_edge
  br label %if.end14

if.end14:                                         ; preds = %if.else7, %land.lhs.true.if.end14_crit_edge
  %mode.0 = phi i16 [ 0, %land.lhs.true.if.end14_crit_edge ], [ %1, %if.else7 ]
  ret i16 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeleft_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %wd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wd_data1, align 4
  %lock = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %ops.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %get_timeleft.i = getelementptr inbounds %struct.watchdog_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %get_timeleft.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_timeleft.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %watchdog_get_timeleft.exit, label %if.then

watchdog_get_timeleft.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %7(ptr noundef %1) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %call.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %watchdog_get_timeleft.exit
  %status.0 = phi i32 [ -95, %watchdog_get_timeleft.exit ], [ %call4, %if.then ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pretimeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pretimeout = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pretimeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pretimeout, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pretimeout_governor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @watchdog_pretimeout_governor_get(ptr noundef %1, ptr noundef %buf) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pretimeout_governor_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @watchdog_pretimeout_governor_set(ptr noundef %1, ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_pretimeout_governor_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_pretimeout_governor_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pretimeout_available_governors_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @watchdog_pretimeout_available_governors_get(ptr noundef %buf) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_pretimeout_available_governors_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %.str.38..str.37 = select i1 %tobool.i.not, ptr @.str.38, ptr @.str.37
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull %.str.38..str.37) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @identity_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %info = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %identity = getelementptr inbounds %struct.watchdog_info, ptr %3, i32 0, i32 2
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.40, ptr noundef %identity) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_timeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %min_timeout = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %min_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_timeout, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_timeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %max_timeout = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %max_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_timeout, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bootstatus_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bootstatus = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bootstatus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bootstatus, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wd_data1 = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %wd_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wd_data1, align 4
  %lock = getelementptr inbounds %struct.watchdog_core_data, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %4 = ptrtoint ptr %wd_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wd_data1, align 4
  %ops.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %status2.i = getelementptr inbounds %struct.watchdog_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %status2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %status2.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %9(ptr noundef %1) #9
  br label %watchdog_get_status.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bootstatus.i = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %bootstatus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bootstatus.i, align 4
  %and.i = and i32 %11, 127
  br label %watchdog_get_status.exit

watchdog_get_status.exit:                         ; preds = %if.else.i, %if.then.i
  %status.0.i = phi i32 [ %call.i, %if.then.i ], [ %and.i, %if.else.i ]
  %status5.i = getelementptr inbounds %struct.watchdog_core_data, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %status5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status5.i, align 4
  %14 = shl i32 %13, 7
  %15 = and i32 %14, 256
  %16 = or i32 %15, %status.0.i
  %call11.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %status5.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  %or14.i = or i32 %16, 32768
  %status.2.i = select i1 %tobool12.not.i, i32 %16, i32 %or14.i
  %or16.i = or i32 %status.2.i, 512
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.46, i32 noundef %or16.i) #9
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nowayout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %status = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %status, align 4
  %4 = lshr i32 %3, 1
  %.lobit = and i32 %4, 1
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.48, i32 noundef %.lobit) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nowayout_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !167
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.watchdog_device, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  %len. = select i1 %tobool5.not, i32 %len, i32 -1
  br i1 %tobool9.not, label %if.end3.cleanup_crit_edge, label %if.then.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 1, ptr noundef %status) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %len, %if.then.i ], [ %len., %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !20, !21, !22, !24, !25, !27, !29, !30, !32, !34, !36, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91, !92, !94, !96, !97, !99, !100, !102, !103, !105, !107, !108, !110, !112, !114, !115, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !136, !137, !139, !140, !141}
!llvm.named.register.sp = !{!143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__ksymtab_watchdog_set_last_hw_keepalive, !1, !"__ksymtab_watchdog_set_last_hw_keepalive", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1181, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1193, i32 46}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1195, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @watchdog_dev_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @watchdog_dev_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @watchdog_dev_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1200, i32 8}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1202, i32 3}
!14 = !{ptr @watchdog_dev_init._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @watchdog_dev_init._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1206, i32 57}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1208, i32 3}
!20 = !{ptr @watchdog_dev_init._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @watchdog_dev_init._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__param_handle_boot_enabled, !23, !"__param_handle_boot_enabled", i1 false, i1 false}
!23 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1281, i32 1}
!24 = !{ptr @__UNIQUE_ID_handle_boot_enabledtype225, !23, !"__UNIQUE_ID_handle_boot_enabledtype225", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_handle_boot_enabled226, !26, !"__UNIQUE_ID_handle_boot_enabled226", i1 false, i1 false}
!26 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1282, i32 1}
!27 = !{ptr @__param_open_timeout, !28, !"__param_open_timeout", i1 false, i1 false}
!28 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1286, i32 1}
!29 = !{ptr @__UNIQUE_ID_open_timeouttype227, !28, !"__UNIQUE_ID_open_timeouttype227", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_open_timeout228, !31, !"__UNIQUE_ID_open_timeout228", i1 false, i1 false}
!31 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1287, i32 1}
!32 = !{ptr @watchdog_devt, !33, !"watchdog_devt", i1 false, i1 false}
!33 = !{!"../drivers/watchdog/watchdog_dev.c", i32 51, i32 14}
!34 = !{ptr @watchdog_kworker, !35, !"watchdog_kworker", i1 false, i1 false}
!35 = !{!"../drivers/watchdog/watchdog_dev.c", i32 55, i32 31}
!36 = !{ptr @watchdog_cdev_register.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/watchdog/watchdog_dev.c", i32 996, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1013, i32 30}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1025, i32 4}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @watchdog_cdev_register._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @watchdog_cdev_register._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1028, i32 5}
!48 = !{ptr @watchdog_cdev_register._entry.15, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @watchdog_cdev_register._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1042, i32 3}
!52 = !{ptr @watchdog_cdev_register._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @watchdog_cdev_register._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/watchdog/watchdog_dev.c", i32 1069, i32 4}
!56 = !{ptr @watchdog_cdev_register._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @watchdog_cdev_register._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @old_wd_data, !59, !"old_wd_data", i1 false, i1 false}
!59 = !{!"../drivers/watchdog/watchdog_dev.c", i32 53, i32 35}
!60 = !{ptr @watchdog_miscdev, !61, !"watchdog_miscdev", i1 false, i1 false}
!61 = !{!"../drivers/watchdog/watchdog_dev.c", i32 967, i32 26}
!62 = !{ptr @watchdog_fops, !63, !"watchdog_fops", i1 false, i1 false}
!63 = !{!"../drivers/watchdog/watchdog_dev.c", i32 958, i32 37}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!66 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/watchdog/watchdog_dev.c", i32 296, i32 3}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @watchdog_stop._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @watchdog_stop._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/watchdog/watchdog_dev.c", i32 934, i32 3}
!78 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @watchdog_release._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @watchdog_release._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @handle_boot_enabled, !82, !"handle_boot_enabled", i1 false, i1 false}
!82 = !{!"../drivers/watchdog/watchdog_dev.c", i32 57, i32 13}
!83 = !{ptr @watchdog_class, !84, !"watchdog_class", i1 false, i1 false}
!84 = !{!"../drivers/watchdog/watchdog_dev.c", i32 973, i32 21}
!85 = !{ptr @wdt_groups, !86, !"wdt_groups", i1 false, i1 false}
!86 = !{!"../drivers/watchdog/watchdog_dev.c", i32 632, i32 1}
!87 = !{ptr @wdt_group, !88, !"wdt_group", i1 false, i1 false}
!88 = !{!"../drivers/watchdog/watchdog_dev.c", i32 628, i32 37}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/watchdog/watchdog_dev.c", i32 505, i32 8}
!91 = !{ptr @dev_attr_timeleft, !90, !"dev_attr_timeleft", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/watchdog/watchdog_dev.c", i32 501, i32 28}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/watchdog/watchdog_dev.c", i32 541, i32 8}
!96 = !{ptr @dev_attr_pretimeout, !95, !"dev_attr_pretimeout", i1 false, i1 false}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/watchdog/watchdog_dev.c", i32 592, i32 8}
!99 = !{ptr @dev_attr_pretimeout_governor, !98, !"dev_attr_pretimeout_governor", i1 false, i1 false}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/watchdog/watchdog_dev.c", i32 569, i32 8}
!102 = !{ptr @dev_attr_pretimeout_available_governors, !101, !"dev_attr_pretimeout_available_governors", i1 false, i1 false}
!103 = !{ptr @wdt_attrs, !104, !"wdt_attrs", i1 false, i1 false}
!104 = !{!"../drivers/watchdog/watchdog_dev.c", i32 612, i32 26}
!105 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/watchdog/watchdog_dev.c", i32 562, i32 8}
!107 = !{ptr @dev_attr_state, !106, !"dev_attr_state", i1 false, i1 false}
!108 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/watchdog/watchdog_dev.c", i32 558, i32 26}
!110 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/watchdog/watchdog_dev.c", i32 560, i32 25}
!112 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/watchdog/watchdog_dev.c", i32 550, i32 8}
!114 = !{ptr @dev_attr_identity, !113, !"dev_attr_identity", i1 false, i1 false}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/watchdog/watchdog_dev.c", i32 548, i32 25}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/watchdog/watchdog_dev.c", i32 514, i32 8}
!119 = !{ptr @dev_attr_timeout, !118, !"dev_attr_timeout", i1 false, i1 false}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/watchdog/watchdog_dev.c", i32 523, i32 8}
!122 = !{ptr @dev_attr_min_timeout, !121, !"dev_attr_min_timeout", i1 false, i1 false}
!123 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/watchdog/watchdog_dev.c", i32 532, i32 8}
!125 = !{ptr @dev_attr_max_timeout, !124, !"dev_attr_max_timeout", i1 false, i1 false}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/watchdog/watchdog_dev.c", i32 487, i32 8}
!128 = !{ptr @dev_attr_bootstatus, !127, !"dev_attr_bootstatus", i1 false, i1 false}
!129 = !{ptr @.str.45, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/watchdog/watchdog_dev.c", i32 478, i32 8}
!131 = !{ptr @dev_attr_status, !130, !"dev_attr_status", i1 false, i1 false}
!132 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/watchdog/watchdog_dev.c", i32 476, i32 25}
!134 = !{ptr @.str.47, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/watchdog/watchdog_dev.c", i32 463, i32 8}
!136 = !{ptr @dev_attr_nowayout, !135, !"dev_attr_nowayout", i1 false, i1 false}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/watchdog/watchdog_dev.c", i32 441, i32 25}
!139 = !{ptr @__param_str_handle_boot_enabled, !23, !"__param_str_handle_boot_enabled", i1 false, i1 false}
!140 = !{ptr @__param_str_open_timeout, !28, !"__param_str_open_timeout", i1 false, i1 false}
!141 = !{ptr @open_timeout, !142, !"open_timeout", i1 false, i1 false}
!142 = !{!"../drivers/watchdog/watchdog_dev.c", i32 60, i32 17}
!143 = !{!"sp"}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i8 0, i8 2}
!154 = !{i64 5170617}
!155 = !{i64 5170814}
!156 = !{i64 2152656047}
!157 = !{i64 2153465783, i64 2153466063, i64 2153466397, i64 2153466731}
!158 = !{i64 2152675743, i64 2152675768}
!159 = !{i64 2153482131, i64 2153482411, i64 2153482745, i64 2153483079}
!160 = !{i64 2153491636, i64 2153491916, i64 2153492250, i64 2153492584}
!161 = !{i64 2153503819, i64 2153504099, i64 2153504433, i64 2153504767}
!162 = !{i64 2153517444, i64 2153517724, i64 2153518058, i64 2153518392}
!163 = !{i64 2153527665, i64 2153527945, i64 2153528279, i64 2153528613}
!164 = !{i64 2153537149, i64 2153537429, i64 2153537763, i64 2153538097}
!165 = !{i64 2153549352, i64 2153549632, i64 2153549966, i64 2153550300}
!166 = !{i64 2153559543, i64 2153559823, i64 2153560157, i64 2153560491}
!167 = !{!"auto-init"}
