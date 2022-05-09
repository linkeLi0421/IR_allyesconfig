; ModuleID = '/llk/IR_all_yes/drivers/usb/typec/tcpm/fusb302.c_pt.bc'
source_filename = "../drivers/usb/typec/tcpm/fusb302.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.78 }
%union.anon.78 = type { %union.anon.79 }
%union.anon.79 = type { [1 x i64] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fusb302_chip = type { ptr, ptr, ptr, %struct.tcpc_dev, ptr, %struct.spinlock, %struct.work_struct, i8, i8, ptr, i32, ptr, ptr, %struct.delayed_work, %struct.mutex, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [7 x i32], ptr, %struct.mutex, i32, i32, [1024 x ptr] }
%struct.tcpc_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pd_message = type <{ i16, %union.anon.86 }>
%union.anon.86 = type { [7 x i32] }
%struct.__va_list = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.80 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.81 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.83 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_fusb302__295_1847_fusb302_driver_init6 = internal global ptr @fusb302_driver_init, section ".initcall6.init", align 4
@fusb302_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @fusb302_probe, ptr @fusb302_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fusb302_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fusb302_pm_ops, ptr null, ptr null }, ptr @fusb302_i2c_device_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_fusb302_driver_exit = internal global ptr @fusb302_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author296 = internal constant [49 x i8] c"fusb302.author=Yueyao Zhu <yueyao.zhu@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [57 x i8] c"fusb302.description=Fairchild FUSB302 Type-C Chip Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [44 x i8] c"fusb302.file=drivers/usb/typec/tcpm/fusb302\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [20 x i8] c"fusb302.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"typec_fusb302\00", [18 x i8] zeroinitializer }, align 32
@fusb302_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fcs,fusb302\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@fusb302_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fusb302_pm_suspend, ptr @fusb302_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fusb302_i2c_device_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"typec_fusb302\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@fusb302_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1691, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"I2C/SMBus block functionality not supported!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fusb302_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/typec/tcpm/fusb302.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fusb302_probe._entry_ptr = internal global ptr @fusb302_probe._entry, section ".printk_index", align 4
@fusb302_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"linux,extcon-name\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@fusb302_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@fusb302_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&chip->irq_work)\00", [61 x i8] zeroinitializer }, align 32
@fusb302_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&chip->bc_lvl_handler)->work)\00", [46 x i8] zeroinitializer }, align 32
@fusb302_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&chip->bc_lvl_handler)->timer\00", [32 x i8] zeroinitializer }, align 32
@fusb302_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1748, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot register tcpm port, ret=%d\00", [62 x i8] zeroinitializer }, align 32
@fusb302_probe._entry_ptr.20 = internal global ptr @fusb302_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsc_interrupt_int_n\00", [44 x i8] zeroinitializer }, align 32
@fusb302_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1756, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cannot request IRQ for GPIO Int_N, ret=%d\00", [54 x i8] zeroinitializer }, align 32
@fusb302_probe._entry_ptr.24 = internal global ptr @fusb302_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"IRQ: 0x%02x, a: 0x%02x, b: 0x%02x, status0: 0x%02x\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IRQ: VBUS_OK, vbus=%s\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQ: TOGDONE\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"handle togdone error, ret=%d\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IRQ: BC_LVL, handler pending\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IRQ: COMP_CHNG, comp=%s\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQ: PD collision\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IRQ: PD retry failed\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IRQ: PD hardreset sent\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot PD reset, ret=%d\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IRQ: PD tx success\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot read in PD message, ret=%d\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IRQ: PD received hardreset\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IRQ: PD sent good CRC\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot read %02x, ret=%d\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"overflow\00", [23 x i8] zeroinitializer }, align 32
@_fusb302_log._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 160, ptr @.str.47, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Bad log buffer index %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_fusb302_log\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@_fusb302_log._entry_ptr = internal global ptr @_fusb302_log._entry, section ".printk_index", align 4
@_fusb302_log._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.46, ptr @.str.3, i32 166, ptr @.str.47, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Log buffer index %d is NULL\0A\00", [35 x i8] zeroinitializer }, align 32
@_fusb302_log._entry_ptr.50 = internal global ptr @_fusb302_log._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[%5lu.%06lu] %s\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AudioAccessory not supported\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TOGDONE with an invalid state: %d\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot set cc polarity %s, ret=%d\00", [62 x i8] zeroinitializer }, align 32
@cc_polarity_name = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.60, ptr @.str.61], [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"restart toggling as CC_OPEN detected\00", [59 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot set toggling mode off, ret=%d\00", [59 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot unmask bc_lcl interrupt, ret=%d\00", [57 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"detected cc1=%s, cc2=%s\00", [40 x i8] zeroinitializer }, align 32
@typec_cc_status_name = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cannot write 0x%02x to 0x%02x, ret=%d\00", [58 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Polarity_CC1\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Polarity_CC2\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Open\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Ra\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Rd\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Rp-def\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Rp-1.5\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Rp-3.0\00", [25 x i8] zeroinitializer }, align 32
@rd_mda_value = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"&&=", [29 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"unexpected CC status cc1=%s, cc2=%s, restarting toggling\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cannot unmask comp_chng interrupt, ret=%d\00", [54 x i8] zeroinitializer }, align 32
@ra_mda_value = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\04\09\12", [29 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"get_src_cc_status switches: 0x%0x\00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"get_src_cc_status rd_mda status0: 0x%0x\00", [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"get_src_cc_status ra_mda status0: 0x%0x\00", [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Vconn is on during toggle start\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PD message header: %x\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PD message len: %d\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cannot block read 0x%02x, len=%d, ret=%d\00", [55 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"only read %d/%d bytes from 0x%02x\00", [62 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"BC_LVL interrupt is turned off, abort\00", [58 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BC_LVL handler, status0=0x%02x\00", [33 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CC activities detected, delay handling\00", [57 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cc1: %s -> %s\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cc2: %s -> %s\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fusb302 device ID: 0x%02x\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot sw reset the chip, ret=%d\00", [63 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sw reset\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported cc value %s\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cc := %s\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot set toggling mode, ret=%d\00", [63 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cannot set pull-up/-down, ret = %d\00", [61 x i8] zeroinitializer }, align 32
@cc_src_current = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 2], [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot set src current %s, ret=%d\00", [62 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot set SRC measure value, ret=%d\00", [59 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot set SRC interrupt, ret=%d\00", [63 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc1=%s, cc2=%s\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vconn is already %s\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vconn := %s\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vbus is already %s\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot %s vbus regulator, ret=%d\00", [63 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vbus := %s\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"charge is already %s\00", [43 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot flush pd rx buffer, ret=%d\00", [62 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot flush pd tx buffer, ret=%d\00", [62 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot turn %s auto GCRC, ret=%d\00", [63 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot turn %s pd interrupts, ret=%d\00", [59 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pd := %s\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to set pd header %s, %s, ret=%d\00", [57 x i8] zeroinitializer }, align 32
@typec_role_name = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.112, ptr @.str.113], [24 x i8] zeroinitializer }, align 32
@typec_data_role_name = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.114, ptr @.str.115], [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pd header := %s, %s\00", [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sink\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Source\00", [25 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Device\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Host\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to set src current %s, ret=%d\00", [59 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to start drp toggling, ret=%d\00", [59 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"start drp toggling\00", [45 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot update retry count ret=%d\00", [63 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot send PD message, ret=%d\00", [33 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot send hardreset, ret=%d\00", [34 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"type %s not supported\00", [42 x i8] zeroinitializer }, align 32
@transmit_type_name = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134], [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sending PD message header: %x\00", [34 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sending PD message len: %d\00", [37 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cannot block write 0x%02x, len=%d, ret=%d\00", [54 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SOP\00", [28 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SOP'\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SOP''\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DEBUG'\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DEBUG''\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HARD_RESET\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CABLE_RESET\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BIST_MODE_2\00", [20 x i8] zeroinitializer }, align 32
@fusb302_debugfs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.135 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&chip->logbuffer_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fusb302-%s\00", [21 x i8] zeroinitializer }, align 32
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.137 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"log\00", [28 x i8] zeroinitializer }, align 32
@fusb302_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fusb302_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fcs,int_n\00", [22 x i8] zeroinitializer }, align 32
@init_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.3, i32 1635, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request gpio_int_n\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_gpio\00", [22 x i8] zeroinitializer }, align 32
@init_gpio._entry_ptr = internal global ptr @init_gpio._entry, section ".printk_index", align 4
@init_gpio._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.141, ptr @.str.3, i32 1641, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@init_gpio._entry_ptr.143 = internal global ptr @init_gpio._entry.142, section ".printk_index", align 4
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connector\00", [22 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data-role\00", [22 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power-role\00", [21 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"try-power-role\00", [17 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sink\00", [27 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"source-pdos\00", [20 x i8] zeroinitializer }, align 32
@src_pdo = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 637636648], [28 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sink-pdos\00", [22 x i8] zeroinitializer }, align 32
@snk_pdo = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 637636648], [28 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"op-sink-microwatt\00", [46 x i8] zeroinitializer }, align 32
@port_props = internal constant { <{ { ptr, i32, i8, i32, { { [2 x ptr] } } }, { ptr, i32, i8, i32, { { [2 x ptr] } } }, { ptr, i32, i8, i32, { { [2 x ptr] } } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { { [2 x i32] } } }, %struct.property_entry }>, [56 x i8] } { <{ { ptr, i32, i8, i32, { { [2 x ptr] } } }, { ptr, i32, i8, i32, { { [2 x ptr] } } }, { ptr, i32, i8, i32, { { [2 x ptr] } } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } }, { ptr, i32, i8, i32, { { [2 x i32] } } }, %struct.property_entry }> <{ { ptr, i32, i8, i32, { { [2 x ptr] } } } { ptr @.str.145, i32 4, i8 1, i32 4, { { [2 x ptr] } } { { [2 x ptr] } { [2 x ptr] [ptr @.str.146, ptr null] } } }, { ptr, i32, i8, i32, { { [2 x ptr] } } } { ptr @.str.147, i32 4, i8 1, i32 4, { { [2 x ptr] } } { { [2 x ptr] } { [2 x ptr] [ptr @.str.146, ptr null] } } }, { ptr, i32, i8, i32, { { [2 x ptr] } } } { ptr @.str.148, i32 4, i8 1, i32 4, { { [2 x ptr] } } { { [2 x ptr] } { [2 x ptr] [ptr @.str.149, ptr null] } } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } } { ptr @.str.150, i32 4, i8 0, i32 2, { ptr, [4 x i8] } { ptr @src_pdo, [4 x i8] undef } }, { ptr, i32, i8, i32, { ptr, [4 x i8] } } { ptr @.str.151, i32 4, i8 0, i32 2, { ptr, [4 x i8] } { ptr @snk_pdo, [4 x i8] undef } }, { ptr, i32, i8, i32, { { [2 x i32] } } } { ptr @.str.152, i32 4, i8 1, i32 2, { { [2 x i32] } } { { [2 x i32] } { [2 x i32] [i32 2500000, i32 0] } } }, %struct.property_entry zeroinitializer }>, [56 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.fusb302_bc_lvl_handler_work = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 5, i32 0, i32 3], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.154 = internal global [5 x i64] [i64 3, i64 2, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.155 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.156 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.157 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.159 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.160 = private unnamed_addr constant [15 x i8] c"fusb302_driver\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1837, i32 26 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1839, i32 14 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"fusb302_dt_match\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1820, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant [15 x i8] c"fusb302_pm_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1832, i32 32 }
@___asan_gen_.172 = private unnamed_addr constant [22 x i8] c"fusb302_i2c_device_id\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1826, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1690, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1700, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1709, i32 39 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1715, i32 45 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1719, i32 13 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1723, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1724, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1725, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1748, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1754, i32 6 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1756, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1528, i32 7 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1533, i32 21 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1534, i32 23 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1534, i32 30 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1542, i32 21 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1546, i32 9 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1552, i32 21 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1564, i32 21 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1565, i32 22 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1565, i32 31 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1575, i32 21 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1580, i32 21 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1585, i32 21 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1588, i32 22 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1595, i32 21 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1599, i32 9 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1605, i32 21 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1615, i32 21 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 273, i32 21 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 154, i32 22 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 159, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 165, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 172, i32 28 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1404, i32 21 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1408, i32 21 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1194, i32 21 }
@___asan_gen_.337 = private unnamed_addr constant [17 x i8] c"cc_polarity_name\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1134, i32 27 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1206, i32 21 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1224, i32 8 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1231, i32 8 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1235, i32 20 }
@___asan_gen_.352 = private unnamed_addr constant [21 x i8] c"typec_cc_status_name\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 579, i32 27 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 242, i32 21 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1135, i32 25 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1136, i32 25 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 580, i32 21 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 581, i32 19 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 582, i32 19 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 583, i32 22 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 584, i32 22 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 585, i32 22 }
@___asan_gen_.382 = private unnamed_addr constant [13 x i8] c"rd_mda_value\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 64, i32 17 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1346, i32 21 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1373, i32 8 }
@___asan_gen_.391 = private unnamed_addr constant [13 x i8] c"ra_mda_value\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 58, i32 17 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1261, i32 20 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1273, i32 20 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1289, i32 20 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 558, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1454, i32 20 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1455, i32 20 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 289, i32 21 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 294, i32 21 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1081, i32 21 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1087, i32 20 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1089, i32 21 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1098, i32 22 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1106, i32 22 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 418, i32 20 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 340, i32 21 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 342, i32 21 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 624, i32 21 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 630, i32 20 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 634, i32 21 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 641, i32 21 }
@___asan_gen_.454 = private unnamed_addr constant [15 x i8] c"cc_src_current\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 588, i32 38 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 651, i32 21 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 665, i32 9 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 674, i32 22 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 712, i32 20 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 736, i32 21 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 749, i32 20 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 764, i32 21 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 771, i32 22 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 772, i32 14 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 772, i32 25 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 776, i32 21 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 779, i32 21 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 846, i32 21 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 851, i32 21 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 856, i32 21 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 857, i32 13 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 857, i32 20 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 862, i32 21 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 866, i32 20 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 901, i32 21 }
@___asan_gen_.517 = private unnamed_addr constant [16 x i8] c"typec_role_name\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 873, i32 27 }
@___asan_gen_.520 = private unnamed_addr constant [21 x i8] c"typec_data_role_name\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 878, i32 27 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 906, i32 20 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 874, i32 18 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 875, i32 20 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 879, i32 20 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 880, i32 18 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 938, i32 21 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 945, i32 8 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 948, i32 20 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1036, i32 22 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1041, i32 9 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1047, i32 9 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1050, i32 21 }
@___asan_gen_.559 = private unnamed_addr constant [19 x i8] c"transmit_type_name\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1010, i32 27 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 998, i32 20 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 999, i32 20 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 259, i32 21 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1011, i32 20 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1012, i32 25 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1013, i32 30 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1014, i32 30 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1015, i32 36 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1016, i32 26 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1017, i32 27 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1018, i32 27 }
@___asan_gen_.595 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 214, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 215, i32 27 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 217, i32 22 }
@___asan_gen_.607 = private unnamed_addr constant [19 x i8] c"fusb302_debug_fops\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 208, i32 1 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 199, i32 17 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1633, i32 41 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1635, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1640, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1673, i32 44 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1660, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1661, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1662, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1663, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant [8 x i8] c"src_pdo\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1651, i32 18 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1664, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant [8 x i8] c"snk_pdo\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1655, i32 18 }
@___asan_gen_.658 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1665, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant [11 x i8] c"port_props\00", align 1
@___asan_gen_.662 = private constant [36 x i8] c"../drivers/usb/typec/tcpm/fusb302.c\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.662, i32 1659, i32 36 }
@___asan_gen_.664 = private unnamed_addr constant [41 x i8] c"switch.table.fusb302_bc_lvl_handler_work\00", align 1
@llvm.compiler.used = appending global [183 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_fusb302_driver_exit, ptr @__initcall__kmod_fusb302__295_1847_fusb302_driver_init6, ptr @_fusb302_log._entry, ptr @_fusb302_log._entry.48, ptr @_fusb302_log._entry_ptr, ptr @_fusb302_log._entry_ptr.50, ptr @fusb302_driver_exit, ptr @fusb302_probe._entry, ptr @fusb302_probe._entry.18, ptr @fusb302_probe._entry.22, ptr @fusb302_probe._entry_ptr, ptr @fusb302_probe._entry_ptr.20, ptr @fusb302_probe._entry_ptr.24, ptr @init_gpio._entry, ptr @init_gpio._entry.142, ptr @init_gpio._entry_ptr, ptr @init_gpio._entry_ptr.143, ptr @fusb302_driver, ptr @.str, ptr @fusb302_dt_match, ptr @fusb302_pm_ops, ptr @fusb302_i2c_device_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fusb302_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @fusb302_probe.__key.10, ptr @.str.11, ptr @fusb302_probe.__key.12, ptr @.str.13, ptr @fusb302_probe.__key.14, ptr @.str.15, ptr @fusb302_probe.__key.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @cc_polarity_name, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @typec_cc_status_name, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @rd_mda_value, ptr @.str.68, ptr @.str.69, ptr @ra_mda_value, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @cc_src_current, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @typec_role_name, ptr @typec_data_role_name, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @transmit_type_name, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @fusb302_debugfs_init.__key, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @fusb302_debug_fops, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @src_pdo, ptr @.str.151, ptr @snk_pdo, ptr @.str.152, ptr @port_props, ptr @switch.table.fusb302_bc_lvl_handler_work], section "llvm.metadata"
@0 = internal global [169 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb302_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb302_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb302_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb302_i2c_device_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb302_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb302_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb302_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb302_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb302_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb302_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb302_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb302_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_fusb302_log._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_fusb302_log._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_polarity_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typec_cc_status_name to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_mda_value to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ra_mda_value to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_src_current to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typec_role_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typec_data_role_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transmit_type_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb302_debugfs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fusb302_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_gpio._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @src_pdo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snk_pdo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_props to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fusb302_bc_lvl_handler_work to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb302_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @fusb302_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fusb302_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @fusb302_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb302_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %name.i = alloca [255 x i8], align 1
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #11
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !344
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %1) #11
  %and.i = and i32 %call.i.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 201326592
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 4664, i32 noundef 3520) #11
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %i2c_client = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %i2c_client, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev2, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @fusb302_probe.__key) #11
  %call14 = call i32 @device_property_read_string(ptr noundef %dev2, ptr noundef nonnull @.str.7, ptr noundef nonnull %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp eq i32 %call14, 0
  br i1 %cmp, label %if.then15, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then15:                                        ; preds = %if.end8
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %call16 = call ptr @extcon_get_extcon_dev(ptr noundef %10) #11
  %extcon = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 11
  %11 = ptrtoint ptr %extcon to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call16, ptr %extcon, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %if.then15.cleanup_crit_edge, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.then15.if.end21_crit_edge, %if.end8.if.end21_crit_edge
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %call23 = call ptr @devm_regulator_get(ptr noundef %13, ptr noundef nonnull @.str.8) #11
  %vbus = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call23, ptr %vbus, align 4
  %cmp.i188 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.dev_name.exit_crit_edge

if.end29.dev_name.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end29.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %21, %if.end.i ], [ %19, %if.end29.dev_name.exit_crit_edge ]
  %call32 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.9, i32 noundef 917514, i32 noundef 1, ptr noundef %retval.0.i) #11
  %wq = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 12
  %22 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call32, ptr %wq, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %dev_name.exit.cleanup_crit_edge, label %do.body37

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body37:                                        ; preds = %dev_name.exit
  %irq_lock = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @fusb302_probe.__key.10, i16 noundef signext 3) #11
  %irq_work = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 6
  call void @__init_work(ptr noundef %irq_work, i32 noundef 0) #11
  %23 = ptrtoint ptr %irq_work to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %irq_work, align 4
  %lockdep_map = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 6, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @fusb302_probe.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry45 = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %entry45 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry45, ptr %entry45, align 4
  %prev.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry45, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @fusb302_irq_work, ptr %func, align 4
  %bc_lvl_handler = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 13
  call void @__init_work(ptr noundef %bc_lvl_handler, i32 noundef 0) #11
  %27 = ptrtoint ptr %bc_lvl_handler to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %bc_lvl_handler, align 4
  %lockdep_map58 = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 13, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map58, ptr noundef nonnull @.str.15, ptr noundef nonnull @fusb302_probe.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry61 = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 13, i32 0, i32 1
  %28 = ptrtoint ptr %entry61 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry61, ptr %entry61, align 4
  %prev.i189 = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 13, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i189 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry61, ptr %prev.i189, align 4
  %func64 = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 13, i32 0, i32 2
  %30 = ptrtoint ptr %func64 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @fusb302_bc_lvl_handler_work, ptr %func64, align 4
  %timer = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 13, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.17, ptr noundef nonnull @fusb302_probe.__key.16) #11
  %tcpc_dev = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 3
  %init.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @tcpm_init, ptr %init.i, align 4
  %get_vbus.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %get_vbus.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @tcpm_get_vbus, ptr %get_vbus.i, align 4
  %get_current_limit.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %get_current_limit.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @tcpm_get_current_limit, ptr %get_current_limit.i, align 4
  %set_cc.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %set_cc.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @tcpm_set_cc, ptr %set_cc.i, align 4
  %get_cc.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %get_cc.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @tcpm_get_cc, ptr %get_cc.i, align 4
  %set_polarity.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 3, i32 7
  %36 = ptrtoint ptr %set_polarity.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @tcpm_set_polarity, ptr %set_polarity.i, align 4
  %set_vconn.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %set_vconn.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @tcpm_set_vconn, ptr %set_vconn.i, align 4
  %set_vbus.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 3, i32 9
  %38 = ptrtoint ptr %set_vbus.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @tcpm_set_vbus, ptr %set_vbus.i, align 4
  %set_pd_rx.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 3, i32 11
  %39 = ptrtoint ptr %set_pd_rx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @tcpm_set_pd_rx, ptr %set_pd_rx.i, align 4
  %set_roles.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 3, i32 12
  %40 = ptrtoint ptr %set_roles.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @tcpm_set_roles, ptr %set_roles.i, align 4
  %start_toggling.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 3, i32 13
  %41 = ptrtoint ptr %start_toggling.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @tcpm_start_toggling, ptr %start_toggling.i, align 4
  %pd_transmit.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 3, i32 15
  %42 = ptrtoint ptr %pd_transmit.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @tcpm_pd_transmit, ptr %pd_transmit.i, align 4
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %name.i) #11
  %43 = call ptr @memset(ptr %name.i, i32 255, i32 255)
  %logbuffer_lock.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 29
  call void @__mutex_init(ptr noundef %logbuffer_lock.i, ptr noundef nonnull @.str.135, ptr noundef nonnull @fusb302_debugfs_init.__key) #11
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body37.fusb302_debugfs_init.exit_crit_edge

do.body37.fusb302_debugfs_init.exit_crit_edge:    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %fusb302_debugfs_init.exit

if.end.i.i:                                       ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  br label %fusb302_debugfs_init.exit

fusb302_debugfs_init.exit:                        ; preds = %if.end.i.i, %do.body37.fusb302_debugfs_init.exit_crit_edge
  %retval.0.i.i = phi ptr [ %49, %if.end.i.i ], [ %47, %do.body37.fusb302_debugfs_init.exit_crit_edge ]
  %call1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 255, ptr noundef nonnull @.str.136, ptr noundef %retval.0.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %50 = load ptr, ptr @usb_debug_root, align 4
  %call3.i = call ptr @debugfs_create_dir(ptr noundef nonnull %name.i, ptr noundef %50) #11
  %dentry.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 28
  %51 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call3.i, ptr %dentry.i, align 4
  %call5.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.137, i16 noundef zeroext -32476, ptr noundef %call3.i, ptr noundef nonnull %call.i, ptr noundef nonnull @fusb302_debug_fops) #11
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %name.i) #11
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %52 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool73.not = icmp eq i32 %53, 0
  br i1 %tobool73.not, label %if.else, label %fusb302_debugfs_init.exit.if.end80.sink.split_crit_edge

fusb302_debugfs_init.exit.if.end80.sink.split_crit_edge: ; preds = %fusb302_debugfs_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80.sink.split

if.else:                                          ; preds = %fusb302_debugfs_init.exit
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  %call.i190 = call ptr @devm_gpiod_get(ptr noundef %55, ptr noundef nonnull @.str.139, i32 noundef 1) #11
  %gpio_int_n.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 9
  %56 = ptrtoint ptr %gpio_int_n.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i190, ptr %gpio_int_n.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i190, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %init_gpio.exit, label %if.end.i192

if.end.i192:                                      ; preds = %if.else
  %call7.i = call i32 @gpiod_to_irq(ptr noundef %call.i190) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i191 = icmp slt i32 %call7.i, 0
  br i1 %cmp.i191, label %init_gpio.exit.thread, label %if.end.i192.if.end80.sink.split_crit_edge

if.end.i192.if.end80.sink.split_crit_edge:        ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80.sink.split

init_gpio.exit.thread:                            ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.23, i32 noundef %call7.i) #14
  br label %destroy_workqueue

init_gpio.exit:                                   ; preds = %if.else
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.140) #14
  %57 = ptrtoint ptr %gpio_int_n.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %gpio_int_n.i, align 4
  %59 = ptrtoint ptr %58 to i32
  %cmp77 = icmp slt ptr %58, null
  br i1 %cmp77, label %init_gpio.exit.destroy_workqueue_crit_edge, label %init_gpio.exit.if.end80_crit_edge

init_gpio.exit.if.end80_crit_edge:                ; preds = %init_gpio.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

init_gpio.exit.destroy_workqueue_crit_edge:       ; preds = %init_gpio.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_workqueue

if.end80.sink.split:                              ; preds = %if.end.i192.if.end80.sink.split_crit_edge, %fusb302_debugfs_init.exit.if.end80.sink.split_crit_edge
  %call7.i.sink = phi i32 [ %53, %fusb302_debugfs_init.exit.if.end80.sink.split_crit_edge ], [ %call7.i, %if.end.i192.if.end80.sink.split_crit_edge ]
  %gpio_int_n_irq.i = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 10
  %60 = ptrtoint ptr %gpio_int_n_irq.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call7.i.sink, ptr %gpio_int_n_irq.i, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.end80.sink.split, %init_gpio.exit.if.end80_crit_edge
  %call.i194 = call ptr @device_get_named_child_node(ptr noundef %dev2, ptr noundef nonnull @.str.144) #11
  %tobool.not.i195 = icmp eq ptr %call.i194, null
  br i1 %tobool.not.i195, label %if.then.i, label %if.end80.fusb302_fwnode_get.exit_crit_edge

if.end80.fusb302_fwnode_get.exit_crit_edge:       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %fusb302_fwnode_get.exit

if.then.i:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i196 = call ptr @fwnode_create_software_node(ptr noundef nonnull @port_props, ptr noundef null) #11
  br label %fusb302_fwnode_get.exit

fusb302_fwnode_get.exit:                          ; preds = %if.then.i, %if.end80.fusb302_fwnode_get.exit_crit_edge
  %fwnode.0.i = phi ptr [ %call.i194, %if.end80.fusb302_fwnode_get.exit_crit_edge ], [ %call1.i196, %if.then.i ]
  %61 = ptrtoint ptr %tcpc_dev to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %fwnode.0.i, ptr %tcpc_dev, align 4
  %cmp.i198 = icmp ugt ptr %fwnode.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i198, label %if.then86, label %if.end90

if.then86:                                        ; preds = %fusb302_fwnode_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %fwnode.0.i to i32
  br label %destroy_workqueue

if.end90:                                         ; preds = %fusb302_fwnode_get.exit
  %call93 = call ptr @tcpm_register_port(ptr noundef %dev2, ptr noundef %tcpc_dev) #11
  %tcpm_port = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 2
  %63 = ptrtoint ptr %tcpm_port to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call93, ptr %tcpm_port, align 4
  %cmp.i199 = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199, label %if.then96, label %if.end107

if.then96:                                        ; preds = %if.end90
  %64 = ptrtoint ptr %tcpc_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tcpc_dev, align 4
  call void @fwnode_handle_put(ptr noundef %65) #11
  %66 = ptrtoint ptr %tcpm_port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tcpm_port, align 4
  %cmp101.not = icmp eq ptr %67, inttoptr (i32 -517 to ptr)
  br i1 %cmp101.not, label %if.then96.destroy_workqueue_crit_edge, label %do.end105

if.then96.destroy_workqueue_crit_edge:            ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_workqueue

do.end105:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %67 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.19, i32 noundef %68) #14
  br label %destroy_workqueue

if.end107:                                        ; preds = %if.end90
  %gpio_int_n_irq108 = getelementptr inbounds %struct.fusb302_chip, ptr %call.i, i32 0, i32 10
  %69 = ptrtoint ptr %gpio_int_n_irq108 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %gpio_int_n_irq108, align 4
  %call.i200 = call i32 @request_threaded_irq(i32 noundef %70, ptr noundef nonnull @fusb302_irq_intn, ptr noundef null, i32 noundef 8200, ptr noundef nonnull @.str.21, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %cmp110 = icmp slt i32 %call.i200, 0
  br i1 %cmp110, label %do.end114, label %if.end115

do.end114:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.23, i32 noundef %call.i200) #14
  %71 = ptrtoint ptr %tcpm_port to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tcpm_port, align 4
  call void @tcpm_unregister_port(ptr noundef %72) #11
  %73 = ptrtoint ptr %tcpc_dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tcpc_dev, align 4
  call void @fwnode_handle_put(ptr noundef %74) #11
  br label %destroy_workqueue

if.end115:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %gpio_int_n_irq108 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %gpio_int_n_irq108, align 4
  %call.i201 = call i32 @irq_set_irq_wake(i32 noundef %76, i32 noundef 1) #11
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %77 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

destroy_workqueue:                                ; preds = %do.end114, %do.end105, %if.then96.destroy_workqueue_crit_edge, %if.then86, %init_gpio.exit.destroy_workqueue_crit_edge, %init_gpio.exit.thread
  %ret.0 = phi i32 [ %62, %if.then86 ], [ %68, %do.end105 ], [ -517, %if.then96.destroy_workqueue_crit_edge ], [ %call.i200, %do.end114 ], [ %59, %init_gpio.exit.destroy_workqueue_crit_edge ], [ %call7.i, %init_gpio.exit.thread ]
  %78 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dentry.i, align 4
  call void @debugfs_remove(ptr noundef %79) #11
  %80 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %wq, align 4
  call void @destroy_workqueue(ptr noundef %81) #11
  br label %cleanup

cleanup:                                          ; preds = %destroy_workqueue, %if.end115, %dev_name.exit.cleanup_crit_edge, %if.then26, %if.then15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %15, %if.then26 ], [ %ret.0, %destroy_workqueue ], [ %call.i200, %if.end115 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -517, %if.then15.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb302_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_int_n_irq = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %gpio_int_n_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_int_n_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef 0) #11
  %4 = ptrtoint ptr %gpio_int_n_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_int_n_irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #11
  %irq_work = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 6
  %call4 = tail call zeroext i1 @cancel_work_sync(ptr noundef %irq_work) #11
  %bc_lvl_handler = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 13
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bc_lvl_handler) #11
  %tcpm_port = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %tcpm_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tcpm_port, align 4
  tail call void @tcpm_unregister_port(ptr noundef %7) #11
  %tcpc_dev = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %tcpc_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tcpc_dev, align 4
  tail call void @fwnode_handle_put(ptr noundef %9) #11
  %wq = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %11) #11
  %dentry.i = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 28
  %12 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dentry.i, align 4
  tail call void @debugfs_remove(ptr noundef %13) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_extcon_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fusb302_irq_work(ptr noundef %work) #2 align 64 {
entry:
  %cc1.i.i = alloca i32, align 4
  %cc2.i.i = alloca i32, align 4
  %pd_msg = alloca %struct.pd_message, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -152
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %pd_msg) #11
  %lock = getelementptr i8, ptr %work, i32 164
  %0 = call ptr @memset(ptr %pd_msg, i32 255, i32 30)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %intr_togdone1 = getelementptr i8, ptr %work, i32 264
  %1 = ptrtoint ptr %intr_togdone1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %intr_togdone1, align 4, !range !345
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %intr_bc_lvl2 = getelementptr i8, ptr %work, i32 265
  %3 = ptrtoint ptr %intr_bc_lvl2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %intr_bc_lvl2, align 1, !range !345
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  %intr_comp_chng5 = getelementptr i8, ptr %work, i32 266
  %5 = ptrtoint ptr %intr_comp_chng5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %intr_comp_chng5, align 2, !range !345
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  %i2c_client.i = getelementptr i8, ptr %work, i32 -148
  %7 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_client.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 66) #11
  %conv.i = trunc i32 %call.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %fusb302_i2c_read.exit.thread, label %if.end

fusb302_i2c_read.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 66, i32 noundef %call.i) #11
  br label %done

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_client.i, align 4
  %call.i206 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 62) #11
  %conv.i207 = trunc i32 %call.i206 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %cmp.i208 = icmp slt i32 %call.i206, 0
  br i1 %cmp.i208, label %fusb302_i2c_read.exit210.thread, label %if.end11

fusb302_i2c_read.exit210.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 62, i32 noundef %call.i206) #11
  br label %done

if.end11:                                         ; preds = %if.end
  %11 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_client.i, align 4
  %call.i212 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 63) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %cmp.i214 = icmp slt i32 %call.i212, 0
  br i1 %cmp.i214, label %fusb302_i2c_read.exit216.thread, label %if.end15

fusb302_i2c_read.exit216.thread:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 63, i32 noundef %call.i212) #11
  br label %done

if.end15:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_client.i, align 4
  %call.i218 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext 64) #11
  %conv.i219 = trunc i32 %call.i218 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %cmp.i220 = icmp slt i32 %call.i218, 0
  br i1 %cmp.i220, label %fusb302_i2c_read.exit222.thread, label %if.end19

fusb302_i2c_read.exit222.thread:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 64, i32 noundef %call.i218) #11
  br label %done

if.end19:                                         ; preds = %if.end15
  %conv = and i32 %call.i, 255
  %conv20 = and i32 %call.i206, 255
  %conv21 = and i32 %call.i212, 255
  %conv22 = and i32 %call.i218, 255
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %conv20, i32 noundef %conv21, i32 noundef %conv22)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv.i)
  %tobool24.not = icmp sgt i8 %conv.i, -1
  br i1 %tobool24.not, label %if.end19.if.end45_crit_edge, label %if.then25

if.end19.if.end45_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i219)
  %tobool28 = icmp slt i8 %conv.i219, 0
  %cond = select i1 %tobool28, ptr @.str.27, ptr @.str.28
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond)
  %.lobit202 = lshr i8 %conv.i219, 7
  %vbus_present35 = getelementptr i8, ptr %work, i32 270
  %15 = ptrtoint ptr %vbus_present35 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vbus_present35, align 2, !range !345
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit202, i8 %16)
  %cmp38.not = icmp eq i8 %.lobit202, %16
  br i1 %cmp38.not, label %if.then25.if.end45_crit_edge, label %if.then40

if.then25.if.end45_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then40:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %vbus_present35 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.lobit202, ptr %vbus_present35, align 2
  %tcpm_port = getelementptr i8, ptr %work, i32 -144
  %18 = ptrtoint ptr %tcpm_port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tcpm_port, align 4
  tail call void @tcpm_vbus_change(ptr noundef %19) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.then25.if.end45_crit_edge, %if.end19.if.end45_crit_edge
  %20 = and i8 %conv.i207, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool48.not = icmp eq i8 %20, 0
  %brmerge = select i1 %tobool48.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end45.if.end57_crit_edge, label %if.then51

if.end45.if.end57_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then51:                                        ; preds = %if.end45
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.29)
  %21 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %22, i8 noundef zeroext 61) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %fusb302_i2c_read.exit.thread.i, label %if.end.i

fusb302_i2c_read.exit.thread.i:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 61, i32 noundef %call.i.i) #11
  br label %if.then55

if.end.i:                                         ; preds = %if.then51
  %conv.i.i = trunc i32 %call.i.i to i8
  %23 = lshr i8 %conv.i.i, 3
  %24 = and i8 %23, 7
  %conv2.i = zext i8 %24 to i32
  %25 = zext i32 %conv2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv2.i, label %sw.default.i [
    i32 5, label %if.end.i.sw.bb.i_crit_edge
    i32 6, label %if.end.i.sw.bb.i_crit_edge263
    i32 1, label %if.end.i.sw.bb4.i_crit_edge
    i32 2, label %if.end.i.sw.bb4.i_crit_edge264
    i32 7, label %sw.bb6.i
  ]

if.end.i.sw.bb4.i_crit_edge264:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

if.end.i.sw.bb4.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

if.end.i.sw.bb.i_crit_edge263:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge263
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %24)
  %cmp.i26.i = icmp eq i8 %24, 5
  %not.cmp.i.i = xor i1 %cmp.i26.i, true
  %cond.i.i = zext i1 %not.cmp.i.i to i32
  %call.i27.i = tail call fastcc i32 @fusb302_set_cc_polarity_and_pull(ptr noundef %add.ptr, i32 noundef %cond.i.i, i1 noundef zeroext false, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %cmp2.i.i = icmp slt i32 %call.i27.i, 0
  br i1 %cmp2.i.i, label %if.then.i28.i, label %if.end.i.i

if.then.i28.i:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr [2 x ptr], ptr @cc_polarity_name, i32 0, i32 %cond.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.54, ptr noundef %27, i32 noundef %call.i27.i) #11
  br label %if.then55

if.end.i.i:                                       ; preds = %sw.bb.i
  %28 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %fusb302_i2c_read.exit.thread.i.i, label %if.end8.i.i

fusb302_i2c_read.exit.thread.i.i:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 64, i32 noundef %call.i.i.i) #11
  br label %if.then55

if.end8.i.i:                                      ; preds = %if.end.i.i
  %conv.i.i.i = trunc i32 %call.i.i.i to i2
  %30 = zext i2 %conv.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.154)
  switch i2 %conv.i.i.i, label %if.then14.i.i [
    i2 -1, label %if.end8.i.i.if.end16.i.i_crit_edge
    i2 -2, label %if.then5.i.i.i
    i2 1, label %if.then10.i.i.i
  ]

if.end8.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i.i

if.then5.i.i.i:                                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i.i

if.then10.i.i.i:                                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i.i

if.then14.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.55) #11
  %toggling_mode.i.i = getelementptr i8, ptr %work, i32 256
  %31 = ptrtoint ptr %toggling_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %toggling_mode.i.i, align 4
  %call15.i.i = tail call fastcc i32 @fusb302_set_toggling(ptr noundef %add.ptr, i32 noundef %32) #11
  br label %fusb302_handle_togdone.exit

if.end16.i.i:                                     ; preds = %if.then10.i.i.i, %if.then5.i.i.i, %if.end8.i.i.if.end16.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ 5, %if.end8.i.i.if.end16.i.i_crit_edge ], [ 3, %if.then10.i.i.i ], [ 4, %if.then5.i.i.i ]
  %spec.select.i.i = select i1 %cmp.i26.i, i32 %retval.0.i.ph.i.i, i32 0
  %cond25.i.i = select i1 %cmp.i26.i, i32 0, i32 %retval.0.i.ph.i.i
  %cc126.i.i = getelementptr i8, ptr %work, i32 276
  %33 = ptrtoint ptr %cc126.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cc126.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %spec.select.i.i)
  %cmp27.not.i.i = icmp eq i32 %34, %spec.select.i.i
  br i1 %cmp27.not.i.i, label %lor.lhs.false.i.i, label %if.end16.i.i.if.then32.i.i_crit_edge

if.end16.i.i.if.then32.i.i_crit_edge:             ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i.i

lor.lhs.false.i.i:                                ; preds = %if.end16.i.i
  %cc229.i.i = getelementptr i8, ptr %work, i32 280
  %35 = ptrtoint ptr %cc229.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cc229.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %cond25.i.i)
  %cmp30.not.i.i = icmp eq i32 %36, %cond25.i.i
  br i1 %cmp30.not.i.i, label %lor.lhs.false.i.i.if.end35.i.i_crit_edge, label %lor.lhs.false.i.i.if.then32.i.i_crit_edge

lor.lhs.false.i.i.if.then32.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i.i

lor.lhs.false.i.i.if.end35.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i.i

if.then32.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then32.i.i_crit_edge, %if.end16.i.i.if.then32.i.i_crit_edge
  %37 = ptrtoint ptr %cc126.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select.i.i, ptr %cc126.i.i, align 4
  %cc234.i.i = getelementptr i8, ptr %work, i32 280
  %38 = ptrtoint ptr %cc234.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond25.i.i, ptr %cc234.i.i, align 4
  %tcpm_port.i.i = getelementptr i8, ptr %work, i32 -144
  %39 = ptrtoint ptr %tcpm_port.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tcpm_port.i.i, align 4
  tail call void @tcpm_cc_change(ptr noundef %40) #11
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then32.i.i, %lor.lhs.false.i.i.if.end35.i.i_crit_edge
  %call36.i.i = tail call fastcc i32 @fusb302_set_toggling(ptr noundef %add.ptr, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %cmp37.i.i = icmp slt i32 %call36.i.i, 0
  br i1 %cmp37.i.i, label %if.then39.i.i, label %if.end40.i.i

if.then39.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.56, i32 noundef %call36.i.i) #11
  br label %if.then55

if.end40.i.i:                                     ; preds = %if.end35.i.i
  %41 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %42, i8 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %fusb302_i2c_read.exit.thread.i.i.i.i, label %if.end.i.i.i.i

fusb302_i2c_read.exit.thread.i.i.i.i:             ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 10, i32 noundef %call.i.i.i.i.i) #11
  br label %if.then44.i.i

if.end.i.i.i.i:                                   ; preds = %if.end40.i.i
  %conv.i.i.i.i.i = trunc i32 %call.i.i.i.i.i to i8
  %and.i.i.i.i = and i8 %conv.i.i.i.i.i, -2
  %43 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c_client.i, align 4
  %call.i20.i.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 10, i8 noundef zeroext %and.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i.i)
  %cmp.i21.i.i.i.i = icmp slt i32 %call.i20.i.i.i.i, 0
  br i1 %cmp.i21.i.i.i.i, label %if.then.i23.i.i.i.i, label %if.end45.i.i

if.then.i23.i.i.i.i:                              ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i.i.i = zext i8 %and.i.i.i.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i.i.i, i32 noundef 10, i32 noundef %call.i20.i.i.i.i) #11
  br label %if.then44.i.i

if.then44.i.i:                                    ; preds = %if.then.i23.i.i.i.i, %fusb302_i2c_read.exit.thread.i.i.i.i
  %retval.0.i.i.ph.i.i = phi i32 [ %call.i20.i.i.i.i, %if.then.i23.i.i.i.i ], [ %call.i.i.i.i.i, %fusb302_i2c_read.exit.thread.i.i.i.i ]
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.57, i32 noundef %retval.0.i.i.ph.i.i) #11
  br label %if.then55

if.end45.i.i:                                     ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %intr_bc_lvl2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %intr_bc_lvl2, align 1
  %arrayidx46.i.i = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %spec.select.i.i
  %46 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx46.i.i, align 4
  %arrayidx47.i.i = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %cond25.i.i
  %48 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx47.i.i, align 4
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.58, ptr noundef %47, ptr noundef %49) #11
  br label %if.end57

sw.bb4.i:                                         ; preds = %if.end.i.sw.bb4.i_crit_edge, %if.end.i.sw.bb4.i_crit_edge264
  %src_current_status.i.i = getelementptr i8, ptr %work, i32 260
  %50 = ptrtoint ptr %src_current_status.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %src_current_status.i.i, align 4
  %arrayidx.i29.i = getelementptr [3 x i8], ptr @rd_mda_value, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx.i29.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i29.i, align 1
  %toggling_mode1.i.i = getelementptr i8, ptr %work, i32 256
  %54 = ptrtoint ptr %toggling_mode1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %toggling_mode1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc1.i.i) #11
  %56 = ptrtoint ptr %cc1.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %cc1.i.i, align 4, !annotation !344
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc2.i.i) #11
  %57 = ptrtoint ptr %cc2.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %cc2.i.i, align 4, !annotation !344
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp.i30.i = icmp eq i8 %24, 1
  br i1 %cmp.i30.i, label %if.then.i32.i, label %if.else.i.i

if.then.i32.i:                                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i31.i = call fastcc i32 @fusb302_get_src_cc_status(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %cc1.i.i) #11
  br label %if.end.i33.i

if.else.i.i:                                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i.i = call fastcc i32 @fusb302_get_src_cc_status(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull %cc2.i.i) #11
  br label %if.end.i33.i

if.end.i33.i:                                     ; preds = %if.else.i.i, %if.then.i32.i
  %ret.0.i.i = phi i32 [ %call.i31.i, %if.then.i32.i ], [ %call3.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp4.i.i = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i33.i.fusb302_handle_togdone_src.exit.i_crit_edge, label %if.end7.i.i

if.end.i33.i.fusb302_handle_togdone_src.exit.i_crit_edge: ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fusb302_handle_togdone_src.exit.i

if.end7.i.i:                                      ; preds = %if.end.i33.i
  %call8.i.i = tail call fastcc i32 @fusb302_set_toggling(ptr noundef %add.ptr, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end12.i.i

if.then11.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.56, i32 noundef %call8.i.i) #11
  br label %fusb302_handle_togdone_src.exit.i

if.end12.i.i:                                     ; preds = %if.end7.i.i
  br i1 %cmp.i30.i, label %if.then16.i.i, label %if.else18.i.i

if.then16.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i.i = call fastcc i32 @fusb302_get_src_cc_status(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull %cc2.i.i) #11
  br label %if.end20.i.i

if.else18.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call19.i.i = call fastcc i32 @fusb302_get_src_cc_status(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %cc1.i.i) #11
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else18.i.i, %if.then16.i.i
  %ret.1.i.i = phi i32 [ %call17.i.i, %if.then16.i.i ], [ %call19.i.i, %if.else18.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %cmp21.i.i = icmp slt i32 %ret.1.i.i, 0
  br i1 %cmp21.i.i, label %if.end20.i.i.fusb302_handle_togdone_src.exit.i_crit_edge, label %if.end24.i.i

if.end20.i.i.fusb302_handle_togdone_src.exit.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fusb302_handle_togdone_src.exit.i

if.end24.i.i:                                     ; preds = %if.end20.i.i
  %58 = ptrtoint ptr %cc1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cc1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp25.i.i = icmp eq i32 %59, 2
  %60 = ptrtoint ptr %cc2.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cc2.i.i, align 4
  br i1 %cmp25.i.i, label %land.lhs.true.i.i, label %if.else32.i.i

land.lhs.true.i.i:                                ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %switch.i.i = icmp ult i32 %61, 2
  br i1 %switch.i.i, label %land.lhs.true.i.i.if.end47.i.i_crit_edge, label %land.lhs.true.i.i.if.else42.i.i_crit_edge

land.lhs.true.i.i.if.else42.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else42.i.i

land.lhs.true.i.i.if.end47.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i.i

if.else32.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp33.i.i = icmp eq i32 %61, 2
  br i1 %cmp33.i.i, label %land.lhs.true35.i.i, label %if.else32.i.i.if.else42.i.i_crit_edge

if.else32.i.i.if.else42.i.i_crit_edge:            ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else42.i.i

land.lhs.true35.i.i:                              ; preds = %if.else32.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %switch121.i.i = icmp ult i32 %59, 2
  br i1 %switch121.i.i, label %land.lhs.true35.i.i.if.end47.i.i_crit_edge, label %land.lhs.true35.i.i.if.else42.i.i_crit_edge

land.lhs.true35.i.i.if.else42.i.i_crit_edge:      ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else42.i.i

land.lhs.true35.i.i.if.end47.i.i_crit_edge:       ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i.i

if.else42.i.i:                                    ; preds = %land.lhs.true35.i.i.if.else42.i.i_crit_edge, %if.else32.i.i.if.else42.i.i_crit_edge, %land.lhs.true.i.i.if.else42.i.i_crit_edge
  %62 = phi i32 [ 2, %land.lhs.true35.i.i.if.else42.i.i_crit_edge ], [ %61, %if.else32.i.i.if.else42.i.i_crit_edge ], [ %61, %land.lhs.true.i.i.if.else42.i.i_crit_edge ]
  %arrayidx43.i.i = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %59
  %63 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx43.i.i, align 4
  %arrayidx44.i.i = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %62
  %65 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx44.i.i, align 4
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.68, ptr noundef %64, ptr noundef %66) #11
  %call45.i.i = tail call fastcc i32 @fusb302_set_toggling(ptr noundef %add.ptr, i32 noundef %55) #11
  br label %fusb302_handle_togdone_src.exit.i

if.end47.i.i:                                     ; preds = %land.lhs.true35.i.i.if.end47.i.i_crit_edge, %land.lhs.true.i.i.if.end47.i.i_crit_edge
  %cc_polarity.0.i.i = phi i32 [ 0, %land.lhs.true.i.i.if.end47.i.i_crit_edge ], [ 1, %land.lhs.true35.i.i.if.end47.i.i_crit_edge ]
  %call48.i.i = tail call fastcc i32 @fusb302_set_cc_polarity_and_pull(ptr noundef %add.ptr, i32 noundef %cc_polarity.0.i.i, i1 noundef zeroext true, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %cmp49.i.i = icmp slt i32 %call48.i.i, 0
  br i1 %cmp49.i.i, label %if.then51.i.i, label %if.end53.i.i

if.then51.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx52.i.i = getelementptr [2 x ptr], ptr @cc_polarity_name, i32 0, i32 %cc_polarity.0.i.i
  %67 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx52.i.i, align 4
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.54, ptr noundef %68, i32 noundef %call48.i.i) #11
  br label %fusb302_handle_togdone_src.exit.i

if.end53.i.i:                                     ; preds = %if.end47.i.i
  %cc154.i.i = getelementptr i8, ptr %work, i32 276
  %69 = ptrtoint ptr %cc154.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cc154.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %59)
  %cmp55.not.i.i = icmp eq i32 %70, %59
  br i1 %cmp55.not.i.i, label %lor.lhs.false57.i.i, label %if.end53.i.i.if.then61.i.i_crit_edge

if.end53.i.i.if.then61.i.i_crit_edge:             ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then61.i.i

lor.lhs.false57.i.i:                              ; preds = %if.end53.i.i
  %cc258.i.i = getelementptr i8, ptr %work, i32 280
  %71 = ptrtoint ptr %cc258.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cc258.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %61)
  %cmp59.not.i.i = icmp eq i32 %72, %61
  br i1 %cmp59.not.i.i, label %lor.lhs.false57.i.i.if.end64.i.i_crit_edge, label %lor.lhs.false57.i.i.if.then61.i.i_crit_edge

lor.lhs.false57.i.i.if.then61.i.i_crit_edge:      ; preds = %lor.lhs.false57.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then61.i.i

lor.lhs.false57.i.i.if.end64.i.i_crit_edge:       ; preds = %lor.lhs.false57.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i.i

if.then61.i.i:                                    ; preds = %lor.lhs.false57.i.i.if.then61.i.i_crit_edge, %if.end53.i.i.if.then61.i.i_crit_edge
  %73 = ptrtoint ptr %cc154.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %59, ptr %cc154.i.i, align 4
  %cc263.i.i = getelementptr i8, ptr %work, i32 280
  %74 = ptrtoint ptr %cc263.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %61, ptr %cc263.i.i, align 4
  %tcpm_port.i34.i = getelementptr i8, ptr %work, i32 -144
  %75 = ptrtoint ptr %tcpm_port.i34.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tcpm_port.i34.i, align 4
  tail call void @tcpm_cc_change(ptr noundef %76) #11
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %if.then61.i.i, %lor.lhs.false57.i.i.if.end64.i.i_crit_edge
  %77 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i36.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %78, i8 noundef zeroext 4, i8 noundef zeroext %53) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36.i)
  %cmp.i.i37.i = icmp slt i32 %call.i.i36.i, 0
  br i1 %cmp.i.i37.i, label %fusb302_i2c_write.exit.thread.i.i, label %if.end69.i.i

fusb302_i2c_write.exit.thread.i.i:                ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i38.i = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i.i38.i, i32 noundef 4, i32 noundef %call.i.i36.i) #11
  br label %fusb302_handle_togdone_src.exit.i

if.end69.i.i:                                     ; preds = %if.end64.i.i
  %79 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i.i.i39.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %80, i8 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i39.i)
  %cmp.i.i.i.i40.i = icmp slt i32 %call.i.i.i.i39.i, 0
  br i1 %cmp.i.i.i.i40.i, label %fusb302_i2c_read.exit.thread.i.i.i41.i, label %if.end.i.i.i46.i

fusb302_i2c_read.exit.thread.i.i.i41.i:           ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 10, i32 noundef %call.i.i.i.i39.i) #11
  br label %if.then73.i.i

if.end.i.i.i46.i:                                 ; preds = %if.end69.i.i
  %conv.i.i.i.i42.i = trunc i32 %call.i.i.i.i39.i to i8
  %and.i.i.i43.i = and i8 %conv.i.i.i.i42.i, -33
  %81 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i2c_client.i, align 4
  %call.i20.i.i.i44.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %82, i8 noundef zeroext 10, i8 noundef zeroext %and.i.i.i43.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i44.i)
  %cmp.i21.i.i.i45.i = icmp slt i32 %call.i20.i.i.i44.i, 0
  br i1 %cmp.i21.i.i.i45.i, label %if.then.i23.i.i.i48.i, label %if.end74.i.i

if.then.i23.i.i.i48.i:                            ; preds = %if.end.i.i.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i.i47.i = zext i8 %and.i.i.i43.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i.i47.i, i32 noundef 10, i32 noundef %call.i20.i.i.i44.i) #11
  br label %if.then73.i.i

if.then73.i.i:                                    ; preds = %if.then.i23.i.i.i48.i, %fusb302_i2c_read.exit.thread.i.i.i41.i
  %retval.0.i.i.ph.i49.i = phi i32 [ %call.i20.i.i.i44.i, %if.then.i23.i.i.i48.i ], [ %call.i.i.i.i39.i, %fusb302_i2c_read.exit.thread.i.i.i41.i ]
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.69, i32 noundef %retval.0.i.i.ph.i49.i) #11
  br label %fusb302_handle_togdone_src.exit.i

if.end74.i.i:                                     ; preds = %if.end.i.i.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %intr_comp_chng5 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %intr_comp_chng5, align 2
  %arrayidx75.i.i = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %59
  %84 = ptrtoint ptr %arrayidx75.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx75.i.i, align 4
  %arrayidx76.i.i = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %61
  %86 = ptrtoint ptr %arrayidx76.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx76.i.i, align 4
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.58, ptr noundef %85, ptr noundef %87) #11
  br label %fusb302_handle_togdone_src.exit.i

fusb302_handle_togdone_src.exit.i:                ; preds = %if.end74.i.i, %if.then73.i.i, %fusb302_i2c_write.exit.thread.i.i, %if.then51.i.i, %if.else42.i.i, %if.end20.i.i.fusb302_handle_togdone_src.exit.i_crit_edge, %if.then11.i.i, %if.end.i33.i.fusb302_handle_togdone_src.exit.i_crit_edge
  %retval.0.i50.i = phi i32 [ %call8.i.i, %if.then11.i.i ], [ %call48.i.i, %if.then51.i.i ], [ %retval.0.i.i.ph.i49.i, %if.then73.i.i ], [ %call.i20.i.i.i44.i, %if.end74.i.i ], [ %call45.i.i, %if.else42.i.i ], [ %ret.0.i.i, %if.end.i33.i.fusb302_handle_togdone_src.exit.i_crit_edge ], [ %ret.1.i.i, %if.end20.i.i.fusb302_handle_togdone_src.exit.i_crit_edge ], [ %call.i.i36.i, %fusb302_i2c_write.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc2.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc1.i.i) #11
  br label %fusb302_handle_togdone.exit

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.52) #11
  %toggling_mode.i = getelementptr i8, ptr %work, i32 256
  %88 = ptrtoint ptr %toggling_mode.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %toggling_mode.i, align 4
  %call7.i = tail call fastcc i32 @fusb302_set_toggling(ptr noundef %add.ptr, i32 noundef %89) #11
  br label %if.end57

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.53, i32 noundef %conv2.i) #11
  %toggling_mode9.i = getelementptr i8, ptr %work, i32 256
  %90 = ptrtoint ptr %toggling_mode9.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %toggling_mode9.i, align 4
  %call10.i = tail call fastcc i32 @fusb302_set_toggling(ptr noundef %add.ptr, i32 noundef %91) #11
  br label %if.end57

fusb302_handle_togdone.exit:                      ; preds = %fusb302_handle_togdone_src.exit.i, %if.then14.i.i
  %retval.0.i = phi i32 [ %retval.0.i50.i, %fusb302_handle_togdone_src.exit.i ], [ %call15.i.i, %if.then14.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp53 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp53, label %fusb302_handle_togdone.exit.if.then55_crit_edge, label %fusb302_handle_togdone.exit.if.end57_crit_edge

fusb302_handle_togdone.exit.if.end57_crit_edge:   ; preds = %fusb302_handle_togdone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

fusb302_handle_togdone.exit.if.then55_crit_edge:  ; preds = %fusb302_handle_togdone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

if.then55:                                        ; preds = %fusb302_handle_togdone.exit.if.then55_crit_edge, %if.then44.i.i, %if.then39.i.i, %fusb302_i2c_read.exit.thread.i.i, %if.then.i28.i, %fusb302_i2c_read.exit.thread.i
  %retval.0.i251 = phi i32 [ %retval.0.i, %fusb302_handle_togdone.exit.if.then55_crit_edge ], [ %call.i.i.i, %fusb302_i2c_read.exit.thread.i.i ], [ %retval.0.i.i.ph.i.i, %if.then44.i.i ], [ %call36.i.i, %if.then39.i.i ], [ %call.i27.i, %if.then.i28.i ], [ %call.i.i, %fusb302_i2c_read.exit.thread.i ]
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i251)
  br label %done

if.end57:                                         ; preds = %fusb302_handle_togdone.exit.if.end57_crit_edge, %sw.default.i, %sw.bb6.i, %if.end45.i.i, %if.end45.if.end57_crit_edge
  %92 = and i8 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool60.not = icmp eq i8 %92, 0
  %brmerge203 = select i1 %tobool60.not, i1 true, i1 %tobool3.not
  br i1 %brmerge203, label %if.end57.if.end67_crit_edge, label %if.then64

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then64:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.31)
  %wq = getelementptr i8, ptr %work, i32 60
  %93 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %wq, align 4
  %bc_lvl_handler = getelementptr i8, ptr %work, i32 64
  %call.i223 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %94, ptr noundef %bc_lvl_handler, i32 noundef 3) #11
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end57.if.end67_crit_edge
  %95 = and i8 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool70.not = icmp eq i8 %95, 0
  %brmerge204 = select i1 %tobool70.not, i1 true, i1 %tobool6.not
  br i1 %brmerge204, label %if.end67.if.end88_crit_edge, label %if.then74

if.end67.if.end88_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then74:                                        ; preds = %if.end67
  %96 = and i8 %conv.i219, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool77.not = icmp eq i8 %96, 0
  %cond83 = select i1 %tobool77.not, ptr @.str.34, ptr @.str.33
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond83)
  br i1 %tobool77.not, label %if.then74.if.end88_crit_edge, label %if.then85

if.then74.if.end88_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end88

if.then85:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  %cc1 = getelementptr i8, ptr %work, i32 276
  %97 = ptrtoint ptr %cc1 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %cc1, align 4
  %cc2 = getelementptr i8, ptr %work, i32 280
  %98 = ptrtoint ptr %cc2 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %cc2, align 4
  %tcpm_port86 = getelementptr i8, ptr %work, i32 -144
  %99 = ptrtoint ptr %tcpm_port86 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tcpm_port86, align 4
  tail call void @tcpm_cc_change(ptr noundef %100) #11
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.then74.if.end88_crit_edge, %if.end67.if.end88_crit_edge
  %101 = and i8 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool91.not = icmp eq i8 %101, 0
  br i1 %tobool91.not, label %if.end88.if.end94_crit_edge, label %if.then92

if.end88.if.end94_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.35)
  %tcpm_port93 = getelementptr i8, ptr %work, i32 -144
  %102 = ptrtoint ptr %tcpm_port93 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tcpm_port93, align 4
  tail call void @tcpm_pd_transmit_complete(ptr noundef %103, i32 noundef 2) #11
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end88.if.end94_crit_edge
  %104 = and i8 %conv.i207, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool97.not = icmp eq i8 %104, 0
  br i1 %tobool97.not, label %if.end94.if.end100_crit_edge, label %if.then98

if.end94.if.end100_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.36)
  %tcpm_port99 = getelementptr i8, ptr %work, i32 -144
  %105 = ptrtoint ptr %tcpm_port99 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %tcpm_port99, align 4
  tail call void @tcpm_pd_transmit_complete(ptr noundef %106, i32 noundef 2) #11
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end94.if.end100_crit_edge
  %107 = and i8 %conv.i207, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool103.not = icmp eq i8 %107, 0
  br i1 %tobool103.not, label %if.end100.if.end111_crit_edge, label %if.then104

if.end100.if.end111_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then104:                                       ; preds = %if.end100
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.37)
  %108 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %109, i8 noundef zeroext 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %fusb302_i2c_read.exit.thread.i.i.i, label %if.end.i.i.i

fusb302_i2c_read.exit.thread.i.i.i:               ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 12, i32 noundef %call.i.i.i.i) #11
  br label %if.then108

if.end.i.i.i:                                     ; preds = %if.then104
  %conv.i.i.i.i = trunc i32 %call.i.i.i.i to i8
  %or18.i.i.i = or i8 %conv.i.i.i.i, 2
  %110 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i2c_client.i, align 4
  %call.i20.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %111, i8 noundef zeroext 12, i8 noundef zeroext %or18.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i)
  %cmp.i21.i.i.i = icmp slt i32 %call.i20.i.i.i, 0
  br i1 %cmp.i21.i.i.i, label %if.then.i23.i.i.i, label %if.end109

if.then.i23.i.i.i:                                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i.i = zext i8 %or18.i.i.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i.i, i32 noundef 12, i32 noundef %call.i20.i.i.i) #11
  br label %if.then108

if.then108:                                       ; preds = %if.then.i23.i.i.i, %fusb302_i2c_read.exit.thread.i.i.i
  %retval.0.i.i.i.ph = phi i32 [ %call.i20.i.i.i, %if.then.i23.i.i.i ], [ %call.i.i.i.i, %fusb302_i2c_read.exit.thread.i.i.i ]
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.38, i32 noundef %retval.0.i.i.i.ph)
  br label %done

if.end109:                                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %tcpm_port110 = getelementptr i8, ptr %work, i32 -144
  %112 = ptrtoint ptr %tcpm_port110 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tcpm_port110, align 4
  tail call void @tcpm_pd_transmit_complete(ptr noundef %113, i32 noundef 0) #11
  br label %if.end111

if.end111:                                        ; preds = %if.end109, %if.end100.if.end111_crit_edge
  %114 = and i8 %conv.i207, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool114.not = icmp eq i8 %114, 0
  br i1 %tobool114.not, label %if.end111.if.end121_crit_edge, label %if.then115

if.end111.if.end121_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.then115:                                       ; preds = %if.end111
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.39)
  %call116 = call fastcc i32 @fusb302_pd_read_message(ptr noundef %add.ptr, ptr noundef nonnull %pd_msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then119, label %if.then115.if.end121_crit_edge

if.then115.if.end121_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.then119:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.40, i32 noundef %call116)
  br label %done

if.end121:                                        ; preds = %if.then115.if.end121_crit_edge, %if.end111.if.end121_crit_edge
  %115 = and i8 %conv.i207, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool124.not = icmp eq i8 %115, 0
  br i1 %tobool124.not, label %if.end121.if.end132_crit_edge, label %if.then125

if.end121.if.end132_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

if.then125:                                       ; preds = %if.end121
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.41)
  %116 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i.i.i225 = call i32 @i2c_smbus_read_byte_data(ptr noundef %117, i8 noundef zeroext 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i225)
  %cmp.i.i.i.i226 = icmp slt i32 %call.i.i.i.i225, 0
  br i1 %cmp.i.i.i.i226, label %fusb302_i2c_read.exit.thread.i.i.i227, label %if.end.i.i.i232

fusb302_i2c_read.exit.thread.i.i.i227:            ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 12, i32 noundef %call.i.i.i.i225) #11
  br label %if.then129

if.end.i.i.i232:                                  ; preds = %if.then125
  %conv.i.i.i.i228 = trunc i32 %call.i.i.i.i225 to i8
  %or18.i.i.i229 = or i8 %conv.i.i.i.i228, 2
  %118 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %i2c_client.i, align 4
  %call.i20.i.i.i230 = call i32 @i2c_smbus_write_byte_data(ptr noundef %119, i8 noundef zeroext 12, i8 noundef zeroext %or18.i.i.i229) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i230)
  %cmp.i21.i.i.i231 = icmp slt i32 %call.i20.i.i.i230, 0
  br i1 %cmp.i21.i.i.i231, label %if.then.i23.i.i.i234, label %if.end130

if.then.i23.i.i.i234:                             ; preds = %if.end.i.i.i232
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i.i233 = zext i8 %or18.i.i.i229 to i32
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i.i233, i32 noundef 12, i32 noundef %call.i20.i.i.i230) #11
  br label %if.then129

if.then129:                                       ; preds = %if.then.i23.i.i.i234, %fusb302_i2c_read.exit.thread.i.i.i227
  %retval.0.i.i.i235.ph = phi i32 [ %call.i20.i.i.i230, %if.then.i23.i.i.i234 ], [ %call.i.i.i.i225, %fusb302_i2c_read.exit.thread.i.i.i227 ]
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.38, i32 noundef %retval.0.i.i.i235.ph)
  br label %done

if.end130:                                        ; preds = %if.end.i.i.i232
  call void @__sanitizer_cov_trace_pc() #13
  %tcpm_port131 = getelementptr i8, ptr %work, i32 -144
  %120 = ptrtoint ptr %tcpm_port131 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %tcpm_port131, align 4
  call void @tcpm_pd_hard_reset(ptr noundef %121) #11
  br label %if.end132

if.end132:                                        ; preds = %if.end130, %if.end121.if.end132_crit_edge
  %122 = and i32 %call.i212, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool135.not = icmp eq i32 %122, 0
  br i1 %tobool135.not, label %if.end132.done_crit_edge, label %if.then136

if.end132.done_crit_edge:                         ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then136:                                       ; preds = %if.end132
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.42)
  %call137 = call fastcc i32 @fusb302_pd_read_message(ptr noundef %add.ptr, ptr noundef nonnull %pd_msg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %cmp138 = icmp slt i32 %call137, 0
  br i1 %cmp138, label %if.then140, label %if.then136.done_crit_edge

if.then136.done_crit_edge:                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then140:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.40, i32 noundef %call137)
  br label %done

done:                                             ; preds = %if.then140, %if.then136.done_crit_edge, %if.end132.done_crit_edge, %if.then129, %if.then119, %if.then108, %if.then55, %fusb302_i2c_read.exit222.thread, %fusb302_i2c_read.exit216.thread, %fusb302_i2c_read.exit210.thread, %fusb302_i2c_read.exit.thread
  call void @mutex_unlock(ptr noundef %lock) #11
  %gpio_int_n_irq = getelementptr i8, ptr %work, i32 52
  %123 = ptrtoint ptr %gpio_int_n_irq to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %gpio_int_n_irq, align 4
  call void @enable_irq(i32 noundef %124) #11
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %pd_msg) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fusb302_bc_lvl_handler_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -216
  %lock = getelementptr i8, ptr %work, i32 100
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %intr_bc_lvl = getelementptr i8, ptr %work, i32 201
  %0 = ptrtoint ptr %intr_bc_lvl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %intr_bc_lvl, align 1, !range !345
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.79)
  br label %done

if.end:                                           ; preds = %entry
  %i2c_client.i = getelementptr i8, ptr %work, i32 -212
  %2 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %fusb302_i2c_read.exit.thread, label %if.end2

fusb302_i2c_read.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 64, i32 noundef %call.i) #11
  br label %done

if.end2:                                          ; preds = %if.end
  %conv = and i32 %call.i, 255
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.80, i32 noundef %conv)
  %4 = and i32 %call.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.81)
  %wq = getelementptr i8, ptr %work, i32 -4
  %5 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wq, align 4
  %call.i59 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work, i32 noundef 3) #11
  br label %done

if.end8:                                          ; preds = %if.end2
  %switch.tableidx = and i32 %call.i, 3
  %7 = xor i32 %switch.tableidx, 2
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.fusb302_bc_lvl_handler_work, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %cc_polarity = getelementptr i8, ptr %work, i32 208
  %9 = ptrtoint ptr %cc_polarity to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cc_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13 = icmp eq i32 %10, 0
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end8
  %cc1 = getelementptr i8, ptr %work, i32 212
  %11 = ptrtoint ptr %cc1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cc1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %switch.load)
  %cmp16.not = icmp eq i32 %12, %switch.load
  br i1 %cmp16.not, label %if.then15.done_crit_edge, label %if.then18

if.then15.done_crit_edge:                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %arrayidx20 = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %switch.load
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx20, align 4
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.82, ptr noundef %14, ptr noundef %16)
  %17 = ptrtoint ptr %cc1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %switch.load, ptr %cc1, align 4
  %tcpm_port = getelementptr i8, ptr %work, i32 -208
  %18 = ptrtoint ptr %tcpm_port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tcpm_port, align 4
  tail call void @tcpm_cc_change(ptr noundef %19) #11
  br label %done

if.else:                                          ; preds = %if.end8
  %cc2 = getelementptr i8, ptr %work, i32 216
  %20 = ptrtoint ptr %cc2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cc2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %switch.load)
  %cmp23.not = icmp eq i32 %21, %switch.load
  br i1 %cmp23.not, label %if.else.done_crit_edge, label %if.then25

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx27 = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %switch.load
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx28, align 4
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.83, ptr noundef %23, ptr noundef %25)
  %26 = ptrtoint ptr %cc2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %switch.load, ptr %cc2, align 4
  %tcpm_port30 = getelementptr i8, ptr %work, i32 -208
  %27 = ptrtoint ptr %tcpm_port30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tcpm_port30, align 4
  tail call void @tcpm_cc_change(ptr noundef %28) #11
  br label %done

done:                                             ; preds = %if.then25, %if.else.done_crit_edge, %if.then18, %if.then15.done_crit_edge, %if.then5, %fusb302_i2c_read.exit.thread, %if.then
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcpm_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb302_irq_intn(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_int_n_irq = getelementptr inbounds %struct.fusb302_chip, ptr %dev_id, i32 0, i32 10
  %0 = ptrtoint ptr %gpio_int_n_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_int_n_irq, align 4
  tail call void @disable_irq_nosync(i32 noundef %1) #11
  %irq_lock = getelementptr inbounds %struct.fusb302_chip, ptr %dev_id, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  %irq_suspended = getelementptr inbounds %struct.fusb302_chip, ptr %dev_id, i32 0, i32 7
  %2 = ptrtoint ptr %irq_suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_suspended, align 4, !range !345
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %irq_while_suspended = getelementptr inbounds %struct.fusb302_chip, ptr %dev_id, i32 0, i32 8
  %4 = ptrtoint ptr %irq_while_suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %irq_while_suspended, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %irq_work = getelementptr inbounds %struct.fusb302_chip, ptr %dev_id, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %irq_work) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fusb302_log(ptr noundef %chip, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #2 align 64 {
entry:
  %tmpbuffer.i = alloca [128 x i8], align 1
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !344
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmpbuffer.i) #11
  %2 = call ptr @memset(ptr %tmpbuffer.i, i32 255, i32 128)
  %call.i.i = call i64 @sched_clock() #11
  %logbuffer_head.i = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 30
  %3 = ptrtoint ptr %logbuffer_head.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %logbuffer_head.i, align 4
  %arrayidx.i = getelementptr %struct.fusb302_chip, ptr %chip, i32 0, i32 32, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end10.i_crit_edge

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 128) #15
  %8 = ptrtoint ptr %logbuffer_head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %logbuffer_head.i, align 4
  %arrayidx4.i = getelementptr %struct.fusb302_chip, ptr %chip, i32 0, i32 32, i32 %9
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i, ptr %arrayidx4.i, align 4
  %11 = load i32, ptr %logbuffer_head.i, align 4
  %arrayidx7.i = getelementptr %struct.fusb302_chip, ptr %chip, i32 0, i32 32, i32 %11
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7.i, align 4
  %tobool8.not.i = icmp eq ptr %13, null
  br i1 %tobool8.not.i, label %if.then.i._fusb302_log.exit_crit_edge, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then.i._fusb302_log.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_fusb302_log.exit

if.end10.i:                                       ; preds = %if.then.i.if.end10.i_crit_edge, %entry.if.end10.i_crit_edge
  %call12.i = call i32 @vsnprintf(ptr noundef nonnull %tmpbuffer.i, i32 noundef 128, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #11
  %logbuffer_lock.i = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 29
  call void @mutex_lock_nested(ptr noundef %logbuffer_lock.i, i32 noundef 0) #11
  %logbuffer_tail.i.i = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 31
  %14 = ptrtoint ptr %logbuffer_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %logbuffer_tail.i.i, align 4
  %16 = ptrtoint ptr %logbuffer_head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %logbuffer_head.i, align 4
  %add.i.i = add i32 %17, 1
  %rem.i.i = srem i32 %add.i.i, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %rem.i.i)
  %cmp.i.i = icmp eq i32 %15, %rem.i.i
  br i1 %cmp.i.i, label %if.then14.i, label %if.end10.i.if.end19.i_crit_edge

if.end10.i.if.end19.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %17, -1
  %18 = call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #11
  %19 = ptrtoint ptr %logbuffer_head.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %logbuffer_head.i, align 4
  %call18.i = call i32 @strlcpy(ptr noundef nonnull %tmpbuffer.i, ptr noundef nonnull @.str.44, i32 noundef 128) #11
  %20 = ptrtoint ptr %logbuffer_head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr.i = load i32, ptr %logbuffer_head.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then14.i, %if.end10.i.if.end19.i_crit_edge
  %21 = phi i32 [ %.pr.i, %if.then14.i ], [ %17, %if.end10.i.if.end19.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %21)
  %22 = icmp ugt i32 %21, 1023
  br i1 %22, label %do.end.i, label %if.end26.i

do.end.i:                                         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.45, i32 noundef %21) #14
  br label %abort.i

if.end26.i:                                       ; preds = %if.end19.i
  %arrayidx29.i = getelementptr %struct.fusb302_chip, ptr %chip, i32 0, i32 32, i32 %21
  %25 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx29.i, align 4
  %tobool30.not.i = icmp eq ptr %26, null
  br i1 %tobool30.not.i, label %do.end34.i, label %if.then58.i

do.end34.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.49, i32 noundef %21) #14
  br label %abort.i

if.then58.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv59.i = trunc i64 %call.i.i to i32
  %29 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %call.i.i, i32 0) #16, !srcloc !346
  %asmresult.i.i = extractvalue { i64, i32 } %29, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %29, 1
  %30 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %call.i.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #16, !srcloc !347
  %asmresult10.i.i = extractvalue { i64, i32 } %30, 0
  %div206345.i = lshr i64 %asmresult10.i.i, 29
  %conv207.i = trunc i64 %div206345.i to i32
  %mul208.neg.i = mul i32 %conv207.i, -1000000000
  %sub209.i = add i32 %mul208.neg.i, %conv59.i
  %div232.i = udiv i32 %sub209.i, 1000
  %call234.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %26, i32 noundef 128, ptr noundef nonnull @.str.51, i32 noundef %conv207.i, i32 noundef %div232.i, ptr noundef nonnull %tmpbuffer.i) #11
  %31 = ptrtoint ptr %logbuffer_head.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %logbuffer_head.i, align 4
  %add236.i = add i32 %32, 1
  %rem237.i = srem i32 %add236.i, 1024
  store i32 %rem237.i, ptr %logbuffer_head.i, align 4
  br label %abort.i

abort.i:                                          ; preds = %if.then58.i, %do.end34.i, %do.end.i
  call void @mutex_unlock(ptr noundef %logbuffer_lock.i) #11
  br label %_fusb302_log.exit

_fusb302_log.exit:                                ; preds = %abort.i, %if.then.i._fusb302_log.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmpbuffer.i) #11
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_vbus_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_cc_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_pd_transmit_complete(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fusb302_pd_read_message(ptr noundef %chip, ptr noundef %msg) unnamed_addr #2 align 64 {
entry:
  %crc = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc) #11
  %i2c_client.i = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %crc, align 4
  %1 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i2c_client.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 67) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %fusb302_i2c_read.exit.thread, label %if.end

fusb302_i2c_read.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 67, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_client.i, align 4
  %call.i63 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %4, i8 noundef zeroext 67, i8 noundef zeroext 2, ptr noundef %msg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp2.i = icmp slt i32 %call.i63, 0
  br i1 %cmp2.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.77, i32 noundef 67, i32 noundef 2, i32 noundef %call.i63) #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i63)
  %cmp9.not.i = icmp eq i32 %call.i63, 2
  br i1 %cmp9.not.i, label %if.end4, label %if.then11.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.78, i32 noundef %call.i63, i32 noundef 2, i32 noundef 67) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end7.i
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %msg, align 1
  %7 = lshr i16 %6, 2
  %8 = and i16 %7, 28
  %mul = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp10.not = icmp eq i16 %8, 0
  br i1 %cmp10.not, label %if.end4.if.end17_crit_edge, label %if.then11

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then11:                                        ; preds = %if.end4
  %conv = trunc i16 %8 to i8
  %9 = getelementptr inbounds %struct.pd_message, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client.i, align 4
  %call.i66 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %11, i8 noundef zeroext 67, i8 noundef zeroext %conv, ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp2.i67 = icmp slt i32 %call.i66, 0
  br i1 %cmp2.i67, label %if.then4.i68, label %if.end7.i70

if.then4.i68:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.77, i32 noundef 67, i32 noundef %mul, i32 noundef %call.i66) #11
  br label %cleanup

if.end7.i70:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i66, i32 %mul)
  %cmp9.not.i69 = icmp eq i32 %call.i66, %mul
  br i1 %cmp9.not.i69, label %if.end7.i70.if.end17_crit_edge, label %if.then11.i71

if.end7.i70.if.end17_crit_edge:                   ; preds = %if.end7.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then11.i71:                                    ; preds = %if.end7.i70
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.78, i32 noundef %call.i66, i32 noundef %mul, i32 noundef 67) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end7.i70.if.end17_crit_edge, %if.end4.if.end17_crit_edge
  %12 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client.i, align 4
  %call.i75 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %13, i8 noundef zeroext 67, i8 noundef zeroext 4, ptr noundef nonnull %crc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp2.i76 = icmp slt i32 %call.i75, 0
  br i1 %cmp2.i76, label %if.then4.i77, label %if.end7.i79

if.then4.i77:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.77, i32 noundef 67, i32 noundef 4, i32 noundef %call.i75) #11
  br label %cleanup

if.end7.i79:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i75)
  %cmp9.not.i78 = icmp eq i32 %call.i75, 4
  br i1 %cmp9.not.i78, label %if.end23, label %if.then11.i80

if.then11.i80:                                    ; preds = %if.end7.i79
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.78, i32 noundef %call.i75, i32 noundef 4, i32 noundef 67) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end7.i79
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %msg, align 1
  %conv25 = zext i16 %15 to i32
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.75, i32 noundef %conv25)
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.76, i32 noundef %mul)
  br i1 %cmp10.not, label %land.lhs.true, label %if.end23.if.else_crit_edge

if.end23.if.else_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end23
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %msg, align 1
  %18 = and i16 %17, 7936
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %18)
  %cmp28 = icmp eq i16 %18, 256
  br i1 %cmp28, label %if.then30, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %tcpm_port = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 2
  %19 = ptrtoint ptr %tcpm_port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tcpm_port, align 4
  call void @tcpm_pd_transmit_complete(ptr noundef %20, i32 noundef 0) #11
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end23.if.else_crit_edge
  %tcpm_port31 = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 2
  %21 = ptrtoint ptr %tcpm_port31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tcpm_port31, align 4
  call void @tcpm_pd_receive(ptr noundef %22, ptr noundef %msg) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then30, %if.then11.i80, %if.then4.i77, %if.then11.i71, %if.then4.i68, %if.then11.i, %if.then4.i, %fusb302_i2c_read.exit.thread
  %retval.0 = phi i32 [ 4, %if.else ], [ 4, %if.then30 ], [ %call.i, %fusb302_i2c_read.exit.thread ], [ -5, %if.then11.i ], [ %call.i63, %if.then4.i ], [ -5, %if.then11.i71 ], [ %call.i66, %if.then4.i68 ], [ -5, %if.then11.i80 ], [ %call.i75, %if.then4.i77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_pd_hard_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fusb302_set_toggling(ptr noundef %chip, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_client.i.i.i = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %fusb302_i2c_read.exit.thread.i.i, label %if.end.i.i

fusb302_i2c_read.exit.thread.i.i:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 8, i32 noundef %call.i.i.i) #11
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %conv.i.i.i = trunc i32 %call.i.i.i to i8
  %and.i.i = and i8 %conv.i.i.i, -2
  %2 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i20.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 8, i8 noundef zeroext %and.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %cmp.i21.i.i = icmp slt i32 %call.i20.i.i, 0
  br i1 %cmp.i21.i.i, label %if.then.i23.i.i, label %if.end

if.then.i23.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i = zext i8 %and.i.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i, i32 noundef 8, i32 noundef %call.i20.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %4 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i.i.i99 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i99)
  %cmp.i.i.i100 = icmp slt i32 %call.i.i.i99, 0
  br i1 %cmp.i.i.i100, label %fusb302_i2c_read.exit.thread.i.i101, label %if.end.i.i105

fusb302_i2c_read.exit.thread.i.i101:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 10, i32 noundef %call.i.i.i99) #11
  br label %cleanup

if.end.i.i105:                                    ; preds = %if.end
  %conv.i.i.i102 = trunc i32 %call.i.i.i99 to i8
  %or18.i.i = or i8 %conv.i.i.i102, 33
  %6 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i20.i.i103 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 10, i8 noundef zeroext %or18.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i103)
  %cmp.i21.i.i104 = icmp slt i32 %call.i20.i.i103, 0
  br i1 %cmp.i21.i.i104, label %if.then.i23.i.i107, label %if.end4

if.then.i23.i.i107:                               ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i106 = zext i8 %or18.i.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i106, i32 noundef 10, i32 noundef %call.i20.i.i103) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i105
  %intr_bc_lvl = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 18
  %8 = ptrtoint ptr %intr_bc_lvl to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %intr_bc_lvl, align 1
  %intr_comp_chng = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 19
  %9 = ptrtoint ptr %intr_comp_chng to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %intr_comp_chng, align 2
  %10 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %mode, label %if.end4.if.else_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb14
    i32 1, label %sw.bb19
  ]

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

sw.bb:                                            ; preds = %if.end4
  %11 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %fusb302_i2c_read.exit.thread.i, label %if.end.i

fusb302_i2c_read.exit.thread.i:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 8, i32 noundef %call.i.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %conv.i.i = trunc i32 %call.i.i to i8
  %and.i = and i8 %conv.i.i, -7
  %13 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i20.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 8, i8 noundef zeroext %and.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %cmp.i21.i = icmp slt i32 %call.i20.i, 0
  br i1 %cmp.i21.i, label %if.then.i23.i, label %if.then25

if.then.i23.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i = zext i8 %and.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i, i32 noundef 8, i32 noundef %call.i20.i) #11
  br label %cleanup

sw.bb9:                                           ; preds = %if.end4
  %15 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i.i110 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110)
  %cmp.i.i111 = icmp slt i32 %call.i.i110, 0
  br i1 %cmp.i.i111, label %fusb302_i2c_read.exit.thread.i112, label %if.end.i117

fusb302_i2c_read.exit.thread.i112:                ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 8, i32 noundef %call.i.i110) #11
  br label %cleanup

if.end.i117:                                      ; preds = %sw.bb9
  %conv.i.i113 = trunc i32 %call.i.i110 to i8
  %and.i114 = and i8 %conv.i.i113, -7
  %or18.i = or i8 %and.i114, 4
  %17 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i20.i115 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 8, i8 noundef zeroext %or18.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i115)
  %cmp.i21.i116 = icmp slt i32 %call.i20.i115, 0
  br i1 %cmp.i21.i116, label %if.then.i23.i119, label %if.end.i117.if.else_crit_edge

if.end.i117.if.else_crit_edge:                    ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then.i23.i119:                                 ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i118 = zext i8 %or18.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i118, i32 noundef 8, i32 noundef %call.i20.i115) #11
  br label %cleanup

sw.bb14:                                          ; preds = %if.end4
  %19 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i.i123 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %20, i8 noundef zeroext 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %cmp.i.i124 = icmp slt i32 %call.i.i123, 0
  br i1 %cmp.i.i124, label %fusb302_i2c_read.exit.thread.i125, label %if.end.i131

fusb302_i2c_read.exit.thread.i125:                ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 8, i32 noundef %call.i.i123) #11
  br label %cleanup

if.end.i131:                                      ; preds = %sw.bb14
  %conv.i.i126 = trunc i32 %call.i.i123 to i8
  %or18.i128 = or i8 %conv.i.i126, 6
  %21 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i20.i129 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %22, i8 noundef zeroext 8, i8 noundef zeroext %or18.i128) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i129)
  %cmp.i21.i130 = icmp slt i32 %call.i20.i129, 0
  br i1 %cmp.i21.i130, label %if.then.i23.i133, label %if.end.i131.if.else_crit_edge

if.end.i131.if.else_crit_edge:                    ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then.i23.i133:                                 ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i132 = zext i8 %or18.i128 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i132, i32 noundef 8, i32 noundef %call.i20.i129) #11
  br label %cleanup

sw.bb19:                                          ; preds = %if.end4
  %23 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i.i137 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %24, i8 noundef zeroext 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i137)
  %cmp.i.i138 = icmp slt i32 %call.i.i137, 0
  br i1 %cmp.i.i138, label %fusb302_i2c_read.exit.thread.i139, label %if.end.i145

fusb302_i2c_read.exit.thread.i139:                ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 8, i32 noundef %call.i.i137) #11
  br label %cleanup

if.end.i145:                                      ; preds = %sw.bb19
  %conv.i.i140 = trunc i32 %call.i.i137 to i8
  %and.i141 = and i8 %conv.i.i140, -7
  %or18.i142 = or i8 %and.i141, 2
  %25 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i20.i143 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 8, i8 noundef zeroext %or18.i142) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i143)
  %cmp.i21.i144 = icmp slt i32 %call.i20.i143, 0
  br i1 %cmp.i21.i144, label %if.then.i23.i147, label %if.end.i145.if.else_crit_edge

if.end.i145.if.else_crit_edge:                    ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then.i23.i147:                                 ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i146 = zext i8 %or18.i142 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i146, i32 noundef 8, i32 noundef %call.i20.i143) #11
  br label %cleanup

if.then25:                                        ; preds = %if.end.i
  %27 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i.i.i151 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %28, i8 noundef zeroext 14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i151)
  %cmp.i.i.i152 = icmp slt i32 %call.i.i.i151, 0
  br i1 %cmp.i.i.i152, label %fusb302_i2c_read.exit.thread.i.i153, label %if.end.i.i158

fusb302_i2c_read.exit.thread.i.i153:              ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 14, i32 noundef %call.i.i.i151) #11
  br label %cleanup

if.end.i.i158:                                    ; preds = %if.then25
  %conv.i.i.i154 = trunc i32 %call.i.i.i151 to i8
  %or18.i.i155 = or i8 %conv.i.i.i154, 64
  %29 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i20.i.i156 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 14, i8 noundef zeroext %or18.i.i155) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i156)
  %cmp.i21.i.i157 = icmp slt i32 %call.i20.i.i156, 0
  br i1 %cmp.i21.i.i157, label %if.then.i23.i.i160, label %if.end29

if.then.i23.i.i160:                               ; preds = %if.end.i.i158
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i159 = zext i8 %or18.i.i155 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i159, i32 noundef 14, i32 noundef %call.i20.i.i156) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end.i.i158
  call void @__sanitizer_cov_trace_pc() #13
  %intr_togdone = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 17
  %31 = ptrtoint ptr %intr_togdone to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %intr_togdone, align 4
  br label %if.end60

if.else:                                          ; preds = %if.end.i145.if.else_crit_edge, %if.end.i131.if.else_crit_edge, %if.end.i117.if.else_crit_edge, %if.end4.if.else_crit_edge
  %vconn_on = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 20
  %32 = ptrtoint ptr %vconn_on to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vconn_on, align 1, !range !345
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  br i1 %tobool.not, label %if.else.if.end44_crit_edge, label %do.end, !prof !348

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 558, i32 noundef 9, ptr noundef nonnull @.str.73) #11
  br label %if.end44

if.end44:                                         ; preds = %do.end, %if.else.if.end44_crit_edge
  %34 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i.i.i164 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i164)
  %cmp.i.i.i165 = icmp slt i32 %call.i.i.i164, 0
  br i1 %cmp.i.i.i165, label %fusb302_i2c_read.exit.thread.i.i166, label %if.end.i.i171

fusb302_i2c_read.exit.thread.i.i166:              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 14, i32 noundef %call.i.i.i164) #11
  br label %cleanup

if.end.i.i171:                                    ; preds = %if.end44
  %conv.i.i.i167 = trunc i32 %call.i.i.i164 to i8
  %and.i.i168 = and i8 %conv.i.i.i167, -65
  %36 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i20.i.i169 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 14, i8 noundef zeroext %and.i.i168) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i169)
  %cmp.i21.i.i170 = icmp slt i32 %call.i20.i.i169, 0
  br i1 %cmp.i21.i.i170, label %if.then.i23.i.i173, label %if.end54

if.then.i23.i.i173:                               ; preds = %if.end.i.i171
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i172 = zext i8 %and.i.i168 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i172, i32 noundef 14, i32 noundef %call.i20.i.i169) #11
  br label %cleanup

if.end54:                                         ; preds = %if.end.i.i171
  %intr_togdone55 = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 17
  %38 = ptrtoint ptr %intr_togdone55 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %intr_togdone55, align 4
  %39 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i.i.i177 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i177)
  %cmp.i.i.i178 = icmp slt i32 %call.i.i.i177, 0
  br i1 %cmp.i.i.i178, label %fusb302_i2c_read.exit.thread.i.i179, label %if.end.i.i184

fusb302_i2c_read.exit.thread.i.i179:              ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 8, i32 noundef %call.i.i.i177) #11
  br label %cleanup

if.end.i.i184:                                    ; preds = %if.end54
  %conv.i.i.i180 = trunc i32 %call.i.i.i177 to i8
  %or18.i.i181 = or i8 %conv.i.i.i180, 1
  %41 = ptrtoint ptr %i2c_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_client.i.i.i, align 4
  %call.i20.i.i182 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 8, i8 noundef zeroext %or18.i.i181) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i182)
  %cmp.i21.i.i183 = icmp slt i32 %call.i20.i.i182, 0
  br i1 %cmp.i21.i.i183, label %if.then.i23.i.i186, label %if.end59

if.then.i23.i.i186:                               ; preds = %if.end.i.i184
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i185 = zext i8 %or18.i.i181 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i185, i32 noundef 8, i32 noundef %call.i20.i.i182) #11
  br label %cleanup

if.end59:                                         ; preds = %if.end.i.i184
  call void @__sanitizer_cov_trace_pc() #13
  %cc1 = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 25
  %43 = ptrtoint ptr %cc1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %cc1, align 4
  %cc2 = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 26
  %44 = ptrtoint ptr %cc2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %cc2, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end29
  %ret.0 = phi i32 [ %call.i20.i.i156, %if.end29 ], [ %call.i20.i.i182, %if.end59 ]
  %toggling_mode = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 15
  %45 = ptrtoint ptr %toggling_mode to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mode, ptr %toggling_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then.i23.i.i186, %fusb302_i2c_read.exit.thread.i.i179, %if.then.i23.i.i173, %fusb302_i2c_read.exit.thread.i.i166, %if.then.i23.i.i160, %fusb302_i2c_read.exit.thread.i.i153, %if.then.i23.i147, %fusb302_i2c_read.exit.thread.i139, %if.then.i23.i133, %fusb302_i2c_read.exit.thread.i125, %if.then.i23.i119, %fusb302_i2c_read.exit.thread.i112, %if.then.i23.i, %fusb302_i2c_read.exit.thread.i, %if.then.i23.i.i107, %fusb302_i2c_read.exit.thread.i.i101, %if.then.i23.i.i, %fusb302_i2c_read.exit.thread.i.i
  %retval.0 = phi i32 [ %ret.0, %if.end60 ], [ %call.i20.i.i, %if.then.i23.i.i ], [ %call.i.i.i, %fusb302_i2c_read.exit.thread.i.i ], [ %call.i20.i.i103, %if.then.i23.i.i107 ], [ %call.i.i.i99, %fusb302_i2c_read.exit.thread.i.i101 ], [ %call.i20.i, %if.then.i23.i ], [ %call.i.i, %fusb302_i2c_read.exit.thread.i ], [ %call.i20.i115, %if.then.i23.i119 ], [ %call.i.i110, %fusb302_i2c_read.exit.thread.i112 ], [ %call.i20.i129, %if.then.i23.i133 ], [ %call.i.i123, %fusb302_i2c_read.exit.thread.i125 ], [ %call.i20.i143, %if.then.i23.i147 ], [ %call.i.i137, %fusb302_i2c_read.exit.thread.i139 ], [ %call.i20.i.i156, %if.then.i23.i.i160 ], [ %call.i.i.i151, %fusb302_i2c_read.exit.thread.i.i153 ], [ %call.i20.i.i169, %if.then.i23.i.i173 ], [ %call.i.i.i164, %fusb302_i2c_read.exit.thread.i.i166 ], [ %call.i20.i.i182, %if.then.i23.i.i186 ], [ %call.i.i.i177, %fusb302_i2c_read.exit.thread.i.i179 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fusb302_set_cc_polarity_and_pull(ptr noundef %chip, i32 noundef %cc_polarity, i1 noundef zeroext %pull_up, i1 noundef zeroext %pull_down) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %spec.select = select i1 %pull_down, i8 3, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cc_polarity)
  %cmp = icmp eq i32 %cc_polarity, 0
  %vconn_on = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %vconn_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vconn_on, align 1, !range !345
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool8.not = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select67.v = select i1 %tobool8.not, i8 4, i8 36
  %spec.select67 = or i8 %spec.select67.v, %spec.select
  %2 = or i8 %spec.select67, 64
  %switches0_data.2 = select i1 %pull_up, i8 %2, i8 %spec.select67
  br label %if.end36

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select68.v = select i1 %tobool8.not, i8 8, i8 24
  %spec.select68 = or i8 %spec.select68.v, %spec.select
  %3 = or i8 %spec.select68, -128
  %switches0_data.4 = select i1 %pull_up, i8 %3, i8 %spec.select68
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then4
  %switches0_data.5 = phi i8 [ %switches0_data.2, %if.then4 ], [ %switches0_data.4, %if.else ]
  %switches1_data.0 = phi i8 [ 1, %if.then4 ], [ 2, %if.else ]
  %i2c_client.i = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 1
  %4 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 2, i8 noundef zeroext %switches0_data.5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %fusb302_i2c_write.exit.thread, label %if.end40

fusb302_i2c_write.exit.thread:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %switches0_data.5 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i, i32 noundef 2, i32 noundef %call.i) #11
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %6 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %fusb302_i2c_read.exit.thread.i, label %if.end.i

fusb302_i2c_read.exit.thread.i:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 3, i32 noundef %call.i.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end40
  %conv.i.i = trunc i32 %call.i.i to i8
  %and.i = and i8 %conv.i.i, -4
  %or18.i = or i8 %and.i, %switches1_data.0
  %8 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client.i, align 4
  %call.i20.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 3, i8 noundef zeroext %or18.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %cmp.i21.i = icmp slt i32 %call.i20.i, 0
  br i1 %cmp.i21.i, label %if.then.i23.i, label %if.end45

if.then.i23.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i = zext i8 %or18.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i, i32 noundef 3, i32 noundef %call.i20.i) #11
  br label %cleanup

if.end45:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %cc_polarity46 = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 24
  %10 = ptrtoint ptr %cc_polarity46 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cc_polarity, ptr %cc_polarity46, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then.i23.i, %fusb302_i2c_read.exit.thread.i, %fusb302_i2c_write.exit.thread
  %retval.0 = phi i32 [ %call.i20.i, %if.end45 ], [ %call.i, %fusb302_i2c_write.exit.thread ], [ %call.i20.i, %if.then.i23.i ], [ %call.i.i, %fusb302_i2c_read.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fusb302_get_src_cc_status(ptr noundef %chip, i32 noundef %cc_polarity, ptr nocapture noundef writeonly %cc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %src_current_status = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 16
  %0 = ptrtoint ptr %src_current_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_current_status, align 4
  %arrayidx = getelementptr [3 x i8], ptr @ra_mda_value, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr [3 x i8], ptr @rd_mda_value, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cc_polarity)
  %cmp = icmp eq i32 %cc_polarity, 0
  %conv = select i1 %cmp, i8 68, i8 -120
  %i2c_client.i = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 1
  %6 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 2, i8 noundef zeroext %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %fusb302_i2c_write.exit.thread, label %if.end

fusb302_i2c_write.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %conv to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i, i32 noundef 2, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client.i, align 4
  %call.i63 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.i65 = icmp slt i32 %call.i63, 0
  br i1 %cmp.i65, label %if.then.i66, label %if.end.fusb302_i2c_read.exit_crit_edge

if.end.fusb302_i2c_read.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fusb302_i2c_read.exit

if.then.i66:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 2, i32 noundef %call.i63) #11
  br label %fusb302_i2c_read.exit

fusb302_i2c_read.exit:                            ; preds = %if.then.i66, %if.end.fusb302_i2c_read.exit_crit_edge
  %conv6 = and i32 %call.i63, 255
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.70, i32 noundef %conv6)
  %10 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client.i, align 4
  %call.i68 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 4, i8 noundef zeroext %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp.i69 = icmp slt i32 %call.i68, 0
  br i1 %cmp.i69, label %fusb302_i2c_write.exit72.thread, label %if.end11

fusb302_i2c_write.exit72.thread:                  ; preds = %fusb302_i2c_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i70 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i70, i32 noundef 4, i32 noundef %call.i68) #11
  br label %cleanup

if.end11:                                         ; preds = %fusb302_i2c_read.exit
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #11
  %12 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client.i, align 4
  %call.i74 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp.i76 = icmp slt i32 %call.i74, 0
  br i1 %cmp.i76, label %fusb302_i2c_read.exit78.thread, label %if.end16

fusb302_i2c_read.exit78.thread:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 64, i32 noundef %call.i74) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %conv17 = and i32 %call.i74, 255
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.71, i32 noundef %conv17)
  %14 = and i32 %call.i74, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %cc, align 4
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %16 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_client.i, align 4
  %call.i80 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 4, i8 noundef zeroext %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %cmp.i81 = icmp slt i32 %call.i80, 0
  br i1 %cmp.i81, label %fusb302_i2c_write.exit84.thread, label %if.end25

fusb302_i2c_write.exit84.thread:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i82 = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i82, i32 noundef 4, i32 noundef %call.i80) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #11
  %18 = ptrtoint ptr %i2c_client.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_client.i, align 4
  %call.i86 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp.i88 = icmp slt i32 %call.i86, 0
  br i1 %cmp.i88, label %fusb302_i2c_read.exit90.thread, label %if.end30

fusb302_i2c_read.exit90.thread:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 64, i32 noundef %call.i86) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %conv31 = and i32 %call.i86, 255
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.72, i32 noundef %conv31)
  %20 = and i32 %call.i86, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool34.not = icmp eq i32 %20, 0
  %. = select i1 %tobool34.not, i32 1, i32 2
  %21 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %., ptr %cc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %fusb302_i2c_read.exit90.thread, %fusb302_i2c_write.exit84.thread, %if.then19, %fusb302_i2c_read.exit78.thread, %fusb302_i2c_write.exit72.thread, %fusb302_i2c_write.exit.thread
  %retval.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.end30 ], [ %call.i, %fusb302_i2c_write.exit.thread ], [ %call.i68, %fusb302_i2c_write.exit72.thread ], [ %call.i74, %fusb302_i2c_read.exit78.thread ], [ %call.i80, %fusb302_i2c_write.exit84.thread ], [ %call.i86, %fusb302_i2c_read.exit90.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcpm_pd_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpm_init(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -12
  %i2c_client.i.i = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 12, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %fusb302_sw_reset.exit.thread, label %if.end

fusb302_sw_reset.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef 1, i32 noundef 12, i32 noundef %call.i.i) #11
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.85, i32 noundef %call.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.86) #11
  %2 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %fusb302_i2c_read.exit.thread.i.i.i, label %if.end.i.i.i

fusb302_i2c_read.exit.thread.i.i.i:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 9, i32 noundef %call.i.i.i.i) #11
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end
  %conv.i.i.i.i = trunc i32 %call.i.i.i.i to i8
  %or18.i.i.i = or i8 %conv.i.i.i.i, 7
  %4 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i20.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 9, i8 noundef zeroext %or18.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i)
  %cmp.i21.i.i.i = icmp slt i32 %call.i20.i.i.i, 0
  br i1 %cmp.i21.i.i.i, label %if.then.i23.i.i.i, label %if.end4

if.then.i23.i.i.i:                                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i.i = zext i8 %or18.i.i.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i.i, i32 noundef 9, i32 noundef %call.i20.i.i.i) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i.i
  %6 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i46 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 10, i8 noundef zeroext 127) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %cmp.i.i47 = icmp slt i32 %call.i.i46, 0
  br i1 %cmp.i.i47, label %fusb302_i2c_write.exit.thread.i, label %if.end.i

fusb302_i2c_write.exit.thread.i:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef 127, i32 noundef 10, i32 noundef %call.i.i46) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end4
  %8 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i25.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 14, i8 noundef zeroext -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %cmp.i26.i = icmp slt i32 %call.i25.i, 0
  br i1 %cmp.i26.i, label %fusb302_i2c_write.exit28.thread.i, label %if.end4.i

fusb302_i2c_write.exit28.thread.i:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef 255, i32 noundef 14, i32 noundef %call.i25.i) #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i30.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 15, i8 noundef zeroext -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %cmp.i31.i = icmp slt i32 %call.i30.i, 0
  br i1 %cmp.i31.i, label %fusb302_i2c_write.exit33.thread.i, label %if.end8.i

fusb302_i2c_write.exit33.thread.i:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef 255, i32 noundef 15, i32 noundef %call.i30.i) #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.end4.i
  %12 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i.i.i48 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i48)
  %cmp.i.i.i.i49 = icmp slt i32 %call.i.i.i.i48, 0
  br i1 %cmp.i.i.i.i49, label %fusb302_i2c_read.exit.thread.i.i.i50, label %if.end.i.i.i54

fusb302_i2c_read.exit.thread.i.i.i50:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 6, i32 noundef %call.i.i.i.i48) #11
  br label %cleanup

if.end.i.i.i54:                                   ; preds = %if.end8.i
  %conv.i.i.i.i51 = trunc i32 %call.i.i.i.i48 to i8
  %and.i.i.i = and i8 %conv.i.i.i.i51, -33
  %14 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i20.i.i.i52 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 6, i8 noundef zeroext %and.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i52)
  %cmp.i21.i.i.i53 = icmp slt i32 %call.i20.i.i.i52, 0
  br i1 %cmp.i21.i.i.i53, label %if.then.i23.i.i.i56, label %if.end8

if.then.i23.i.i.i56:                              ; preds = %if.end.i.i.i54
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i.i55 = zext i8 %and.i.i.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i.i55, i32 noundef 6, i32 noundef %call.i20.i.i.i52) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end.i.i.i54
  %16 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i58 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 11, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %cmp.i.i59 = icmp slt i32 %call.i.i58, 0
  br i1 %cmp.i.i59, label %fusb302_set_power_mode.exit.thread, label %if.end12

fusb302_set_power_mode.exit.thread:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef 15, i32 noundef 11, i32 noundef %call.i.i58) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %18 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %fusb302_i2c_read.exit.thread, label %if.end16

fusb302_i2c_read.exit.thread:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 64, i32 noundef %call.i) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %conv.i = trunc i32 %call.i to i8
  %vbus_present = getelementptr i8, ptr %dev, i32 410
  %.lobit = lshr i8 %conv.i, 7
  %20 = ptrtoint ptr %vbus_present to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.lobit, ptr %vbus_present, align 2
  %21 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i63 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %22, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp.i65 = icmp slt i32 %call.i63, 0
  br i1 %cmp.i65, label %fusb302_i2c_read.exit68.thread, label %if.end22

fusb302_i2c_read.exit68.thread:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef %call.i63) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %conv23 = and i32 %call.i63, 255
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.84, i32 noundef %conv23)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %fusb302_i2c_read.exit68.thread, %fusb302_i2c_read.exit.thread, %fusb302_set_power_mode.exit.thread, %if.then.i23.i.i.i56, %fusb302_i2c_read.exit.thread.i.i.i50, %fusb302_i2c_write.exit33.thread.i, %fusb302_i2c_write.exit28.thread.i, %fusb302_i2c_write.exit.thread.i, %if.then.i23.i.i.i, %fusb302_i2c_read.exit.thread.i.i.i, %fusb302_sw_reset.exit.thread
  %retval.0 = phi i32 [ %call.i63, %if.end22 ], [ %call.i.i, %fusb302_sw_reset.exit.thread ], [ %call.i.i58, %fusb302_set_power_mode.exit.thread ], [ %call.i, %fusb302_i2c_read.exit.thread ], [ %call.i63, %fusb302_i2c_read.exit68.thread ], [ %call.i20.i.i.i, %if.then.i23.i.i.i ], [ %call.i.i.i.i, %fusb302_i2c_read.exit.thread.i.i.i ], [ %call.i20.i.i.i52, %if.then.i23.i.i.i56 ], [ %call.i.i.i.i48, %fusb302_i2c_read.exit.thread.i.i.i50 ], [ %call.i30.i, %fusb302_i2c_write.exit33.thread.i ], [ %call.i25.i, %fusb302_i2c_write.exit28.thread.i ], [ %call.i.i46, %fusb302_i2c_write.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpm_get_vbus(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 304
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %vbus_present = getelementptr i8, ptr %dev, i32 410
  %0 = ptrtoint ptr %vbus_present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vbus_present, align 2, !range !345
  %2 = zext i8 %1 to i32
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpm_get_current_limit(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %extcon = getelementptr i8, ptr %dev, i32 196
  %0 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extcon, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -80, %2
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end
  %3 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extcon, align 4
  %call2 = tail call i32 @extcon_get_state(ptr noundef %4, i32 noundef 5) #11
  %5 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extcon, align 4
  %call6 = tail call i32 @extcon_get_state(ptr noundef %6, i32 noundef 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 1
  br i1 %cmp7, label %do.body.if.then11_crit_edge, label %lor.lhs.false

do.body.if.then11_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp eq i32 %call2, 1
  %spec.select = select i1 %cmp, i32 500, i32 0
  %7 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %extcon, align 4
  %call9 = tail call i32 @extcon_get_state(ptr noundef %8, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 1
  br i1 %cmp10, label %lor.lhs.false.if.then11_crit_edge, label %lor.lhs.false.if.end12_crit_edge

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %do.body.if.then11_crit_edge
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %lor.lhs.false.if.end12_crit_edge
  %current_limit.2 = phi i32 [ 1500, %if.then11 ], [ %spec.select, %lor.lhs.false.if.end12_crit_edge ]
  %9 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extcon, align 4
  %call14 = tail call i32 @extcon_get_state(ptr noundef %10, i32 noundef 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 1
  %spec.select27 = select i1 %cmp15, i32 2000, i32 %current_limit.2
  tail call void @msleep(i32 noundef 50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select27)
  %cmp18 = icmp eq i32 %spec.select27, 0
  br i1 %cmp18, label %land.rhs, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %11
  %cmp19 = icmp slt i32 %sub, 0
  br i1 %cmp19, label %land.rhs.do.body_crit_edge, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

cleanup:                                          ; preds = %land.rhs.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ %spec.select27, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpm_set_cc(ptr noundef %dev, i32 noundef %cc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -12
  %lock = getelementptr i8, ptr %dev, i32 304
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %0 = zext i32 %cc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %cc, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb
    i32 3, label %entry.sw.bb2_crit_edge
    i32 4, label %entry.sw.bb2_crit_edge126
    i32 5, label %entry.sw.bb2_crit_edge127
  ]

entry.sw.bb2_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge126, %entry.sw.bb2_crit_edge127
  %cc_polarity = getelementptr i8, ptr %dev, i32 412
  %1 = ptrtoint ptr %cc_polarity to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cc_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  %conv6 = select i1 %cmp, i8 64, i8 -128
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %cc
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.87, ptr noundef %4)
  br label %done

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %switches0_data.0 = phi i8 [ %conv6, %sw.bb2 ], [ 3, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %arrayidx7 = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %cc
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx7, align 4
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.88, ptr noundef %6)
  %call = tail call fastcc i32 @fusb302_set_toggling(ptr noundef %add.ptr, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.89, i32 noundef %call)
  br label %done

if.end:                                           ; preds = %sw.epilog
  %i2c_client.i.i = getelementptr i8, ptr %dev, i32 -8
  %7 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %fusb302_i2c_read.exit.thread.i, label %if.end.i

fusb302_i2c_read.exit.thread.i:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 2, i32 noundef %call.i.i) #11
  br label %if.then13

if.end.i:                                         ; preds = %if.end
  %conv.i.i = trunc i32 %call.i.i to i8
  %and.i = and i8 %conv.i.i, 60
  %or18.i = or i8 %and.i, %switches0_data.0
  %9 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i20.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 2, i8 noundef zeroext %or18.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %cmp.i21.i = icmp slt i32 %call.i20.i, 0
  br i1 %cmp.i21.i, label %if.then.i23.i, label %if.end14

if.then.i23.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i = zext i8 %or18.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i, i32 noundef 2, i32 noundef %call.i20.i) #11
  br label %if.then13

if.then13:                                        ; preds = %if.then.i23.i, %fusb302_i2c_read.exit.thread.i
  %retval.0.i.ph = phi i32 [ %call.i20.i, %if.then.i23.i ], [ %call.i.i, %fusb302_i2c_read.exit.thread.i ]
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.90, i32 noundef %retval.0.i.ph)
  br label %done

if.end14:                                         ; preds = %if.end.i
  %cc1 = getelementptr i8, ptr %dev, i32 416
  %11 = ptrtoint ptr %cc1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cc1, align 4
  %cc2 = getelementptr i8, ptr %dev, i32 420
  %12 = ptrtoint ptr %cc2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %cc2, align 4
  %arrayidx15 = getelementptr [6 x i32], ptr @cc_src_current, i32 0, i32 %cc
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx15, align 4
  %call16 = tail call fastcc i32 @fusb302_set_src_current(ptr noundef %add.ptr, i32 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.91, ptr noundef %6, i32 noundef %call16)
  br label %done

if.end21:                                         ; preds = %if.end14
  %15 = zext i32 %cc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %cc, label %if.end21.done_crit_edge [
    i32 3, label %if.end21.sw.bb22_crit_edge
    i32 4, label %if.end21.sw.bb22_crit_edge128
    i32 5, label %if.end21.sw.bb22_crit_edge129
    i32 2, label %sw.bb35
  ]

if.end21.sw.bb22_crit_edge129:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22

if.end21.sw.bb22_crit_edge128:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22

if.end21.sw.bb22_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb22

if.end21.done_crit_edge:                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

sw.bb22:                                          ; preds = %if.end21.sw.bb22_crit_edge, %if.end21.sw.bb22_crit_edge128, %if.end21.sw.bb22_crit_edge129
  %arrayidx24 = getelementptr [3 x i8], ptr @rd_mda_value, i32 0, i32 %14
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx24, align 1
  %18 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 4, i8 noundef zeroext %17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then28, label %if.end29

if.then28:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i, i32 noundef 4, i32 noundef %call.i) #11
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.92, i32 noundef %call.i)
  br label %done

if.end29:                                         ; preds = %sw.bb22
  %20 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i90 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i90)
  %cmp.i.i91 = icmp slt i32 %call.i.i90, 0
  br i1 %cmp.i.i91, label %fusb302_i2c_read.exit.thread.i92, label %if.end.i98

fusb302_i2c_read.exit.thread.i92:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 10, i32 noundef %call.i.i90) #11
  br label %if.then33

if.end.i98:                                       ; preds = %if.end29
  %conv.i.i93 = trunc i32 %call.i.i90 to i8
  %and.i94 = and i8 %conv.i.i93, -34
  %or18.i95 = or i8 %and.i94, 1
  %22 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i20.i96 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 10, i8 noundef zeroext %or18.i95) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i96)
  %cmp.i21.i97 = icmp slt i32 %call.i20.i96, 0
  br i1 %cmp.i21.i97, label %if.then.i23.i100, label %if.end34

if.then.i23.i100:                                 ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i99 = zext i8 %or18.i95 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i99, i32 noundef 10, i32 noundef %call.i20.i96) #11
  br label %if.then33

if.then33:                                        ; preds = %if.then.i23.i100, %fusb302_i2c_read.exit.thread.i92
  %retval.0.i101.ph = phi i32 [ %call.i20.i96, %if.then.i23.i100 ], [ %call.i.i90, %fusb302_i2c_read.exit.thread.i92 ]
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.93, i32 noundef %retval.0.i101.ph)
  br label %done

if.end34:                                         ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #13
  %intr_comp_chng = getelementptr i8, ptr %dev, i32 406
  %24 = ptrtoint ptr %intr_comp_chng to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %intr_comp_chng, align 2
  %intr_bc_lvl = getelementptr i8, ptr %dev, i32 405
  %25 = ptrtoint ptr %intr_bc_lvl to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %intr_bc_lvl, align 1
  br label %done

sw.bb35:                                          ; preds = %if.end21
  %26 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i104 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i104)
  %cmp.i.i105 = icmp slt i32 %call.i.i104, 0
  br i1 %cmp.i.i105, label %fusb302_i2c_read.exit.thread.i106, label %if.end.i112

fusb302_i2c_read.exit.thread.i106:                ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 10, i32 noundef %call.i.i104) #11
  br label %if.then39

if.end.i112:                                      ; preds = %sw.bb35
  %conv.i.i107 = trunc i32 %call.i.i104 to i8
  %and.i108 = and i8 %conv.i.i107, -34
  %or18.i109 = or i8 %and.i108, 32
  %28 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i20.i110 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 10, i8 noundef zeroext %or18.i109) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i110)
  %cmp.i21.i111 = icmp slt i32 %call.i20.i110, 0
  br i1 %cmp.i21.i111, label %if.then.i23.i114, label %if.end40

if.then.i23.i114:                                 ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i113 = zext i8 %or18.i109 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i113, i32 noundef 10, i32 noundef %call.i20.i110) #11
  br label %if.then39

if.then39:                                        ; preds = %if.then.i23.i114, %fusb302_i2c_read.exit.thread.i106
  %retval.0.i115.ph = phi i32 [ %call.i20.i110, %if.then.i23.i114 ], [ %call.i.i104, %fusb302_i2c_read.exit.thread.i106 ]
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.93, i32 noundef %retval.0.i115.ph)
  br label %done

if.end40:                                         ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #13
  %intr_bc_lvl41 = getelementptr i8, ptr %dev, i32 405
  %30 = ptrtoint ptr %intr_bc_lvl41 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %intr_bc_lvl41, align 1
  %intr_comp_chng42 = getelementptr i8, ptr %dev, i32 406
  %31 = ptrtoint ptr %intr_comp_chng42 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %intr_comp_chng42, align 2
  br label %done

done:                                             ; preds = %if.end40, %if.then39, %if.end34, %if.then33, %if.then28, %if.end21.done_crit_edge, %if.then19, %if.then13, %if.then, %sw.default
  %ret.0 = phi i32 [ -22, %sw.default ], [ %call, %if.then ], [ %retval.0.i.ph, %if.then13 ], [ %call16, %if.then19 ], [ %call16, %if.end21.done_crit_edge ], [ %retval.0.i115.ph, %if.then39 ], [ %call.i20.i110, %if.end40 ], [ %call.i, %if.then28 ], [ %retval.0.i101.ph, %if.then33 ], [ %call.i20.i96, %if.end34 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpm_get_cc(ptr noundef %dev, ptr nocapture noundef %cc1, ptr nocapture noundef writeonly %cc2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -12
  %lock = getelementptr i8, ptr %dev, i32 304
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %cc11 = getelementptr i8, ptr %dev, i32 416
  %0 = ptrtoint ptr %cc11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cc11, align 4
  %2 = ptrtoint ptr %cc1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %cc1, align 4
  %cc22 = getelementptr i8, ptr %dev, i32 420
  %3 = ptrtoint ptr %cc22 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cc22, align 4
  %5 = ptrtoint ptr %cc2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cc2, align 4
  %6 = load i32, ptr %cc1, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %4
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.94, ptr noundef %8, ptr noundef %10)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcpm_set_polarity(ptr nocapture noundef readnone %dev, i32 noundef %polarity) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpm_set_vconn(ptr noundef %dev, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %on to i8
  %add.ptr = getelementptr i8, ptr %dev, i32 -12
  %lock = getelementptr i8, ptr %dev, i32 304
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %vconn_on = getelementptr i8, ptr %dev, i32 407
  %0 = ptrtoint ptr %vconn_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vconn_on, align 1, !range !345
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %frombool)
  %cmp = icmp eq i8 %1, %frombool
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %on, ptr @.str.27, ptr @.str.28
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.95, ptr noundef nonnull %cond)
  br label %done

if.end:                                           ; preds = %entry
  br i1 %on, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cc_polarity = getelementptr i8, ptr %dev, i32 412
  %2 = ptrtoint ptr %cc_polarity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cc_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8 = icmp eq i32 %3, 0
  %conv11 = select i1 %cmp8, i8 32, i8 16
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %switches0_data.0 = phi i8 [ %conv11, %if.then7 ], [ 0, %if.end.if.end12_crit_edge ]
  %i2c_client.i.i = getelementptr i8, ptr %dev, i32 -8
  %4 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %fusb302_i2c_read.exit.thread.i, label %if.end.i

fusb302_i2c_read.exit.thread.i:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 2, i32 noundef %call.i.i) #11
  br label %done

if.end.i:                                         ; preds = %if.end12
  %conv.i.i = trunc i32 %call.i.i to i8
  %and.i = and i8 %conv.i.i, -49
  %or18.i = or i8 %and.i, %switches0_data.0
  %6 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i20.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 2, i8 noundef zeroext %or18.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %cmp.i21.i = icmp slt i32 %call.i20.i, 0
  br i1 %cmp.i21.i, label %if.then.i23.i, label %if.end16

if.then.i23.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i = zext i8 %or18.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i, i32 noundef 2, i32 noundef %call.i20.i) #11
  br label %done

if.end16:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %vconn_on to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %vconn_on, align 1
  %cond22 = select i1 %on, ptr @.str.27, ptr @.str.28
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.96, ptr noundef nonnull %cond22)
  br label %done

done:                                             ; preds = %if.end16, %if.then.i23.i, %fusb302_i2c_read.exit.thread.i, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %call.i20.i, %if.end16 ], [ %call.i20.i, %if.then.i23.i ], [ %call.i.i, %fusb302_i2c_read.exit.thread.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpm_set_vbus(ptr noundef %dev, i1 noundef zeroext %on, i1 noundef zeroext %charge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %on to i8
  %frombool1 = zext i1 %charge to i8
  %add.ptr = getelementptr i8, ptr %dev, i32 -12
  %lock = getelementptr i8, ptr %dev, i32 304
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %vbus_on = getelementptr i8, ptr %dev, i32 408
  %0 = ptrtoint ptr %vbus_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vbus_on, align 4, !range !345
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %frombool)
  %cmp = icmp eq i8 %1, %frombool
  br i1 %cmp, label %entry.if.end25_crit_edge, label %if.else

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.else:                                          ; preds = %entry
  %vbus = getelementptr i8, ptr %dev, i32 92
  %2 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus, align 4
  br i1 %on, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @regulator_enable(ptr noundef %3) #11
  br label %if.end

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 @regulator_disable(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  %ret.0 = phi i32 [ %call, %if.then8 ], [ %call11, %if.else9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp12 = icmp slt i32 %ret.0, 0
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cond17 = select i1 %on, ptr @.str.99, ptr @.str.100
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.98, ptr noundef nonnull %cond17, i32 noundef %ret.0)
  br label %done

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %vbus_on to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %vbus_on, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end18, %entry.if.end25_crit_edge
  %.str.101.sink = phi ptr [ @.str.101, %if.end18 ], [ @.str.97, %entry.if.end25_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %if.end18 ], [ 0, %entry.if.end25_crit_edge ]
  %cond24 = select i1 %on, ptr @.str.27, ptr @.str.28
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull %.str.101.sink, ptr noundef nonnull %cond24)
  %charge_on = getelementptr i8, ptr %dev, i32 409
  %5 = ptrtoint ptr %charge_on to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %charge_on, align 1, !range !345
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %frombool1)
  %cmp30 = icmp eq i8 %6, %frombool1
  br i1 %cmp30, label %if.then32, label %if.else36

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %cond35 = select i1 %charge, ptr @.str.27, ptr @.str.28
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.102, ptr noundef nonnull %cond35)
  br label %done

if.else36:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %charge_on to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool1, ptr %charge_on, align 1
  br label %done

done:                                             ; preds = %if.else36, %if.then32, %if.then14
  %ret.2 = phi i32 [ %ret.1, %if.then32 ], [ %ret.1, %if.else36 ], [ %ret.0, %if.then14 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpm_set_pd_rx(ptr noundef %dev, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -12
  %lock = getelementptr i8, ptr %dev, i32 304
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %i2c_client.i.i.i.i = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %fusb302_i2c_read.exit.thread.i.i.i, label %if.end.i.i.i

fusb302_i2c_read.exit.thread.i.i.i:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 7, i32 noundef %call.i.i.i.i) #11
  br label %if.then

if.end.i.i.i:                                     ; preds = %entry
  %conv.i.i.i.i = trunc i32 %call.i.i.i.i to i8
  %or18.i.i.i = or i8 %conv.i.i.i.i, 4
  %2 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i20.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 7, i8 noundef zeroext %or18.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i)
  %cmp.i21.i.i.i = icmp slt i32 %call.i20.i.i.i, 0
  br i1 %cmp.i21.i.i.i, label %if.then.i23.i.i.i, label %if.end

if.then.i23.i.i.i:                                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i.i = zext i8 %or18.i.i.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i.i, i32 noundef 7, i32 noundef %call.i20.i.i.i) #11
  br label %if.then

if.then:                                          ; preds = %if.then.i23.i.i.i, %fusb302_i2c_read.exit.thread.i.i.i
  %retval.0.i.i.i.ph = phi i32 [ %call.i20.i.i.i, %if.then.i23.i.i.i ], [ %call.i.i.i.i, %fusb302_i2c_read.exit.thread.i.i.i ]
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.103, i32 noundef %retval.0.i.i.i.ph)
  br label %done

if.end:                                           ; preds = %if.end.i.i.i
  %4 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i.i.i.i43 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i43)
  %cmp.i.i.i.i44 = icmp slt i32 %call.i.i.i.i43, 0
  br i1 %cmp.i.i.i.i44, label %fusb302_i2c_read.exit.thread.i.i.i45, label %if.end.i.i.i50

fusb302_i2c_read.exit.thread.i.i.i45:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 6, i32 noundef %call.i.i.i.i43) #11
  br label %if.then3

if.end.i.i.i50:                                   ; preds = %if.end
  %conv.i.i.i.i46 = trunc i32 %call.i.i.i.i43 to i8
  %or18.i.i.i47 = or i8 %conv.i.i.i.i46, 64
  %6 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i20.i.i.i48 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 6, i8 noundef zeroext %or18.i.i.i47) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i48)
  %cmp.i21.i.i.i49 = icmp slt i32 %call.i20.i.i.i48, 0
  br i1 %cmp.i21.i.i.i49, label %if.then.i23.i.i.i52, label %if.end4

if.then.i23.i.i.i52:                              ; preds = %if.end.i.i.i50
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i.i51 = zext i8 %or18.i.i.i47 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i.i51, i32 noundef 6, i32 noundef %call.i20.i.i.i48) #11
  br label %if.then3

if.then3:                                         ; preds = %if.then.i23.i.i.i52, %fusb302_i2c_read.exit.thread.i.i.i45
  %retval.0.i.i.i53.ph = phi i32 [ %call.i20.i.i.i48, %if.then.i23.i.i.i52 ], [ %call.i.i.i.i43, %fusb302_i2c_read.exit.thread.i.i.i45 ]
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.104, i32 noundef %retval.0.i.i.i53.ph)
  br label %done

if.end4:                                          ; preds = %if.end.i.i.i50
  %8 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i.i.i.i55 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i55)
  %cmp.i.i.i.i56 = icmp slt i32 %call.i.i.i.i55, 0
  br i1 %on, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end4
  br i1 %cmp.i.i.i.i56, label %fusb302_i2c_read.exit.thread.i.i.i57, label %if.end.i.i.i62

fusb302_i2c_read.exit.thread.i.i.i57:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 3, i32 noundef %call.i.i.i.i55) #11
  br label %if.then7

if.end.i.i.i62:                                   ; preds = %if.then.i
  %conv.i.i.i.i58 = trunc i32 %call.i.i.i.i55 to i8
  %or18.i.i.i59 = or i8 %conv.i.i.i.i58, 4
  %10 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i20.i.i.i60 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 3, i8 noundef zeroext %or18.i.i.i59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i60)
  %cmp.i21.i.i.i61 = icmp slt i32 %call.i20.i.i.i60, 0
  br i1 %cmp.i21.i.i.i61, label %if.then.i23.i.i.i64, label %cond.true.i

if.then.i23.i.i.i64:                              ; preds = %if.end.i.i.i62
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i.i63 = zext i8 %or18.i.i.i59 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i.i63, i32 noundef 3, i32 noundef %call.i20.i.i.i60) #11
  br label %if.then7

if.end.i:                                         ; preds = %if.end4
  br i1 %cmp.i.i.i.i56, label %fusb302_i2c_read.exit.thread.i.i6.i, label %if.end.i.i10.i

fusb302_i2c_read.exit.thread.i.i6.i:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 3, i32 noundef %call.i.i.i.i55) #11
  br label %if.then7

if.end.i.i10.i:                                   ; preds = %if.end.i
  %conv.i.i.i7.i = trunc i32 %call.i.i.i.i55 to i8
  %and.i.i.i = and i8 %conv.i.i.i7.i, -5
  %12 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i20.i.i8.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 3, i8 noundef zeroext %and.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i8.i)
  %cmp.i21.i.i9.i = icmp slt i32 %call.i20.i.i8.i, 0
  br i1 %cmp.i21.i.i9.i, label %if.then.i23.i.i12.i, label %cond.false.i

if.then.i23.i.i12.i:                              ; preds = %if.end.i.i10.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i11.i = zext i8 %and.i.i.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i11.i, i32 noundef 3, i32 noundef %call.i20.i.i8.i) #11
  br label %if.then7

if.then7:                                         ; preds = %if.then.i23.i.i12.i, %fusb302_i2c_read.exit.thread.i.i6.i, %if.then.i23.i.i.i64, %fusb302_i2c_read.exit.thread.i.i.i57
  %cond = phi ptr [ @.str.106, %fusb302_i2c_read.exit.thread.i.i.i57 ], [ @.str.106, %if.then.i23.i.i.i64 ], [ @.str.107, %fusb302_i2c_read.exit.thread.i.i6.i ], [ @.str.107, %if.then.i23.i.i12.i ]
  %retval.0.i.ph = phi i32 [ %call.i.i.i.i55, %fusb302_i2c_read.exit.thread.i.i.i57 ], [ %call.i20.i.i.i60, %if.then.i23.i.i.i64 ], [ %call.i.i.i.i55, %fusb302_i2c_read.exit.thread.i.i6.i ], [ %call.i20.i.i8.i, %if.then.i23.i.i12.i ]
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.105, ptr noundef nonnull %cond, i32 noundef %retval.0.i.ph)
  br label %done

cond.true.i:                                      ; preds = %if.end.i.i.i62
  %14 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i.i.i.i6688 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i6688)
  %cmp.i.i.i.i6789 = icmp slt i32 %call.i.i.i.i6688, 0
  br i1 %cmp.i.i.i.i6789, label %fusb302_i2c_read.exit.thread.i.i.i68, label %if.end.i.i.i73

fusb302_i2c_read.exit.thread.i.i.i68:             ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 10, i32 noundef %call.i.i.i.i6688) #11
  br label %if.then13

if.end.i.i.i73:                                   ; preds = %cond.true.i
  %conv.i.i.i.i69 = trunc i32 %call.i.i.i.i6688 to i8
  %and.i.i.i70 = and i8 %conv.i.i.i.i69, -3
  %16 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i20.i.i.i71 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 10, i8 noundef zeroext %and.i.i.i70) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i71)
  %cmp.i21.i.i.i72 = icmp slt i32 %call.i20.i.i.i71, 0
  br i1 %cmp.i21.i.i.i72, label %if.then.i23.i.i.i75, label %cond.true3.i

if.then.i23.i.i.i75:                              ; preds = %if.end.i.i.i73
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i.i74 = zext i8 %and.i.i.i70 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i.i74, i32 noundef 10, i32 noundef %call.i20.i.i.i71) #11
  br label %if.then13

cond.false.i:                                     ; preds = %if.end.i.i10.i
  %18 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i.i.i.i66 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i66)
  %cmp.i.i.i.i67 = icmp slt i32 %call.i.i.i.i66, 0
  br i1 %cmp.i.i.i.i67, label %fusb302_i2c_read.exit.thread.i.i39.i, label %if.end.i.i43.i

fusb302_i2c_read.exit.thread.i.i39.i:             ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 10, i32 noundef %call.i.i.i.i66) #11
  br label %if.then13

if.end.i.i43.i:                                   ; preds = %cond.false.i
  %conv.i.i.i40.i = trunc i32 %call.i.i.i.i66 to i8
  %or18.i.i.i76 = or i8 %conv.i.i.i40.i, 2
  %20 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i20.i.i41.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 10, i8 noundef zeroext %or18.i.i.i76) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i41.i)
  %cmp.i21.i.i42.i = icmp slt i32 %call.i20.i.i41.i, 0
  br i1 %cmp.i21.i.i42.i, label %if.then.i23.i.i45.i, label %cond.false5.i

if.then.i23.i.i45.i:                              ; preds = %if.end.i.i43.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i44.i = zext i8 %or18.i.i.i76 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i44.i, i32 noundef 10, i32 noundef %call.i20.i.i41.i) #11
  br label %if.then13

cond.true3.i:                                     ; preds = %if.end.i.i.i73
  %22 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i.i.i48.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i48.i)
  %cmp.i.i.i49.i = icmp slt i32 %call.i.i.i48.i, 0
  br i1 %cmp.i.i.i49.i, label %fusb302_i2c_read.exit.thread.i.i50.i, label %if.end.i.i55.i

fusb302_i2c_read.exit.thread.i.i50.i:             ; preds = %cond.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 14, i32 noundef %call.i.i.i48.i) #11
  br label %if.then13

if.end.i.i55.i:                                   ; preds = %cond.true3.i
  %conv.i.i.i51.i = trunc i32 %call.i.i.i48.i to i8
  %and.i.i52.i = and i8 %conv.i.i.i51.i, -30
  %24 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i20.i.i53.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 14, i8 noundef zeroext %and.i.i52.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i53.i)
  %cmp.i21.i.i54.i = icmp slt i32 %call.i20.i.i53.i, 0
  br i1 %cmp.i21.i.i54.i, label %if.then.i23.i.i57.i, label %cond.true13.i

if.then.i23.i.i57.i:                              ; preds = %if.end.i.i55.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i56.i = zext i8 %and.i.i52.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i56.i, i32 noundef 14, i32 noundef %call.i20.i.i53.i) #11
  br label %if.then13

cond.false5.i:                                    ; preds = %if.end.i.i43.i
  %26 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i.i.i61.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i61.i)
  %cmp.i.i.i62.i = icmp slt i32 %call.i.i.i61.i, 0
  br i1 %cmp.i.i.i62.i, label %fusb302_i2c_read.exit.thread.i.i63.i, label %if.end.i.i68.i

fusb302_i2c_read.exit.thread.i.i63.i:             ; preds = %cond.false5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 14, i32 noundef %call.i.i.i61.i) #11
  br label %if.then13

if.end.i.i68.i:                                   ; preds = %cond.false5.i
  %conv.i.i.i64.i = trunc i32 %call.i.i.i61.i to i8
  %or18.i.i65.i = or i8 %conv.i.i.i64.i, 29
  %28 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i20.i.i66.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 14, i8 noundef zeroext %or18.i.i65.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i66.i)
  %cmp.i21.i.i67.i = icmp slt i32 %call.i20.i.i66.i, 0
  br i1 %cmp.i21.i.i67.i, label %if.then.i23.i.i70.i, label %cond.false15.i

if.then.i23.i.i70.i:                              ; preds = %if.end.i.i68.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i69.i = zext i8 %or18.i.i65.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i69.i, i32 noundef 14, i32 noundef %call.i20.i.i66.i) #11
  br label %if.then13

cond.true13.i:                                    ; preds = %if.end.i.i55.i
  %30 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i.i.i74.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i74.i)
  %cmp.i.i.i75.i = icmp slt i32 %call.i.i.i74.i, 0
  br i1 %cmp.i.i.i75.i, label %fusb302_i2c_read.exit.thread.i.i76.i, label %if.end.i.i81.i

fusb302_i2c_read.exit.thread.i.i76.i:             ; preds = %cond.true13.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 15, i32 noundef %call.i.i.i74.i) #11
  br label %if.then13

if.end.i.i81.i:                                   ; preds = %cond.true13.i
  %conv.i.i.i77.i = trunc i32 %call.i.i.i74.i to i8
  %and.i.i78.i = and i8 %conv.i.i.i77.i, -2
  %32 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i20.i.i79.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 15, i8 noundef zeroext %and.i.i78.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i79.i)
  %cmp.i21.i.i80.i = icmp slt i32 %call.i20.i.i79.i, 0
  br i1 %cmp.i21.i.i80.i, label %if.then.i23.i.i83.i, label %if.end.i.i81.i.if.end16_crit_edge

if.end.i.i81.i.if.end16_crit_edge:                ; preds = %if.end.i.i81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then.i23.i.i83.i:                              ; preds = %if.end.i.i81.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i82.i = zext i8 %and.i.i78.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i82.i, i32 noundef 15, i32 noundef %call.i20.i.i79.i) #11
  br label %if.then13

cond.false15.i:                                   ; preds = %if.end.i.i68.i
  %34 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i.i.i87.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %35, i8 noundef zeroext 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i87.i)
  %cmp.i.i.i88.i = icmp slt i32 %call.i.i.i87.i, 0
  br i1 %cmp.i.i.i88.i, label %fusb302_i2c_read.exit.thread.i.i89.i, label %if.end.i.i94.i

fusb302_i2c_read.exit.thread.i.i89.i:             ; preds = %cond.false15.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 15, i32 noundef %call.i.i.i87.i) #11
  br label %if.then13

if.end.i.i94.i:                                   ; preds = %cond.false15.i
  %conv.i.i.i90.i = trunc i32 %call.i.i.i87.i to i8
  %or18.i.i91.i = or i8 %conv.i.i.i90.i, 1
  %36 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i20.i.i92.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 15, i8 noundef zeroext %or18.i.i91.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i92.i)
  %cmp.i21.i.i93.i = icmp slt i32 %call.i20.i.i92.i, 0
  br i1 %cmp.i21.i.i93.i, label %if.then.i23.i.i96.i, label %if.end.i.i94.i.if.end16_crit_edge

if.end.i.i94.i.if.end16_crit_edge:                ; preds = %if.end.i.i94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then.i23.i.i96.i:                              ; preds = %if.end.i.i94.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i95.i = zext i8 %or18.i.i91.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i95.i, i32 noundef 15, i32 noundef %call.i20.i.i92.i) #11
  br label %if.then13

if.then13:                                        ; preds = %if.then.i23.i.i96.i, %fusb302_i2c_read.exit.thread.i.i89.i, %if.then.i23.i.i83.i, %fusb302_i2c_read.exit.thread.i.i76.i, %if.then.i23.i.i70.i, %fusb302_i2c_read.exit.thread.i.i63.i, %if.then.i23.i.i57.i, %fusb302_i2c_read.exit.thread.i.i50.i, %if.then.i23.i.i45.i, %fusb302_i2c_read.exit.thread.i.i39.i, %if.then.i23.i.i.i75, %fusb302_i2c_read.exit.thread.i.i.i68
  %cond15 = phi ptr [ @.str.106, %fusb302_i2c_read.exit.thread.i.i76.i ], [ @.str.106, %if.then.i23.i.i83.i ], [ @.str.107, %fusb302_i2c_read.exit.thread.i.i89.i ], [ @.str.107, %if.then.i23.i.i96.i ], [ @.str.107, %if.then.i23.i.i45.i ], [ @.str.107, %fusb302_i2c_read.exit.thread.i.i39.i ], [ @.str.106, %if.then.i23.i.i.i75 ], [ @.str.106, %fusb302_i2c_read.exit.thread.i.i.i68 ], [ @.str.107, %if.then.i23.i.i70.i ], [ @.str.107, %fusb302_i2c_read.exit.thread.i.i63.i ], [ @.str.106, %if.then.i23.i.i57.i ], [ @.str.106, %fusb302_i2c_read.exit.thread.i.i50.i ]
  %retval.0.i77.ph = phi i32 [ %call.i.i.i74.i, %fusb302_i2c_read.exit.thread.i.i76.i ], [ %call.i20.i.i79.i, %if.then.i23.i.i83.i ], [ %call.i.i.i87.i, %fusb302_i2c_read.exit.thread.i.i89.i ], [ %call.i20.i.i92.i, %if.then.i23.i.i96.i ], [ %call.i20.i.i41.i, %if.then.i23.i.i45.i ], [ %call.i.i.i.i66, %fusb302_i2c_read.exit.thread.i.i39.i ], [ %call.i20.i.i.i71, %if.then.i23.i.i.i75 ], [ %call.i.i.i.i6688, %fusb302_i2c_read.exit.thread.i.i.i68 ], [ %call.i20.i.i66.i, %if.then.i23.i.i70.i ], [ %call.i.i.i61.i, %fusb302_i2c_read.exit.thread.i.i63.i ], [ %call.i20.i.i53.i, %if.then.i23.i.i57.i ], [ %call.i.i.i48.i, %fusb302_i2c_read.exit.thread.i.i50.i ]
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.108, ptr noundef nonnull %cond15, i32 noundef %retval.0.i77.ph)
  br label %done

if.end16:                                         ; preds = %if.end.i.i94.i.if.end16_crit_edge, %if.end.i.i81.i.if.end16_crit_edge
  %cond18 = phi ptr [ @.str.107, %if.end.i.i94.i.if.end16_crit_edge ], [ @.str.106, %if.end.i.i81.i.if.end16_crit_edge ]
  %retval.0.i77 = phi i32 [ %call.i20.i.i92.i, %if.end.i.i94.i.if.end16_crit_edge ], [ %call.i20.i.i79.i, %if.end.i.i81.i.if.end16_crit_edge ]
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.109, ptr noundef nonnull %cond18)
  br label %done

done:                                             ; preds = %if.end16, %if.then13, %if.then7, %if.then3, %if.then
  %ret.0 = phi i32 [ %retval.0.i.i.i.ph, %if.then ], [ %retval.0.i.i.i53.ph, %if.then3 ], [ %retval.0.i.ph, %if.then7 ], [ %retval.0.i77.ph, %if.then13 ], [ %retval.0.i77, %if.end16 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpm_set_roles(ptr noundef %dev, i1 noundef zeroext %attached, i32 noundef %pwr, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -12
  %lock = getelementptr i8, ptr %dev, i32 304
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %i2c_client.i.i = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %fusb302_i2c_read.exit.thread.i, label %if.end.i

fusb302_i2c_read.exit.thread.i:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 3, i32 noundef %call.i.i) #11
  br label %if.then11

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data)
  %cmp2 = icmp eq i32 %data, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pwr)
  %cmp = icmp eq i32 %pwr, 1
  %spec.select = select i1 %cmp, i8 -128, i8 0
  %2 = or i8 %spec.select, 16
  %switches1_data.1 = select i1 %cmp2, i8 %2, i8 %spec.select
  %conv.i.i = trunc i32 %call.i.i to i8
  %and.i = and i8 %conv.i.i, 111
  %or18.i = or i8 %and.i, %switches1_data.1
  %3 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i20.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 3, i8 noundef zeroext %or18.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %cmp.i21.i = icmp slt i32 %call.i20.i, 0
  br i1 %cmp.i21.i, label %if.then.i23.i, label %if.end13

if.then.i23.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i = zext i8 %or18.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i, i32 noundef 3, i32 noundef %call.i20.i) #11
  br label %if.then11

if.then11:                                        ; preds = %if.then.i23.i, %fusb302_i2c_read.exit.thread.i
  %retval.0.i.ph = phi i32 [ %call.i20.i, %if.then.i23.i ], [ %call.i.i, %fusb302_i2c_read.exit.thread.i ]
  %arrayidx = getelementptr [2 x ptr], ptr @typec_role_name, i32 0, i32 %pwr
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %arrayidx12 = getelementptr [2 x ptr], ptr @typec_data_role_name, i32 0, i32 %data
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx12, align 4
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.110, ptr noundef %6, ptr noundef %8, i32 noundef %retval.0.i.ph)
  br label %done

if.end13:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx14 = getelementptr [2 x ptr], ptr @typec_role_name, i32 0, i32 %pwr
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr [2 x ptr], ptr @typec_data_role_name, i32 0, i32 %data
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx15, align 4
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.111, ptr noundef %10, ptr noundef %12)
  br label %done

done:                                             ; preds = %if.end13, %if.then11
  %retval.0.i32 = phi i32 [ %call.i20.i, %if.end13 ], [ %retval.0.i.ph, %if.then11 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %retval.0.i32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpm_start_toggling(ptr noundef %dev, i32 noundef %port_type, i32 noundef %cc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -12
  %lock = getelementptr i8, ptr %dev, i32 304
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %arrayidx = getelementptr [6 x i32], ptr @cc_src_current, i32 0, i32 %cc
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call fastcc i32 @fusb302_set_src_current(ptr noundef %add.ptr, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx3 = getelementptr [6 x ptr], ptr @typec_cc_status_name, i32 0, i32 %cc
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3, align 4
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.116, ptr noundef %3, i32 noundef %call)
  br label %done

if.end:                                           ; preds = %entry
  %4 = call i32 @llvm.usub.sat.i32(i32 3, i32 %port_type)
  %call4 = tail call fastcc i32 @fusb302_set_toggling(ptr noundef %add.ptr, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.117, i32 noundef %call4)
  br label %done

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.118)
  br label %done

done:                                             ; preds = %if.end7, %if.then6, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call4, %if.then6 ], [ %call4, %if.end7 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcpm_pd_transmit(ptr noundef %dev, i32 noundef %type, ptr nocapture noundef readonly %msg, i32 noundef %negotiated_rev) #2 align 64 {
entry:
  %buf.i = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -12
  %lock = getelementptr i8, ptr %dev, i32 304
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %type, label %sw.default [
    i32 0, label %sw.bb
    i32 5, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %i2c_client.i.i.i.i = getelementptr i8, ptr %dev, i32 -8
  %1 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %fusb302_i2c_read.exit.thread.i.i.i, label %if.end.i.i.i

fusb302_i2c_read.exit.thread.i.i.i:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 9, i32 noundef %call.i.i.i.i) #11
  br label %if.then

if.end.i.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %negotiated_rev)
  %cmp = icmp ugt i32 %negotiated_rev, 1
  %conv.i.i.i.i = trunc i32 %call.i.i.i.i to i8
  %3 = select i1 %cmp, i8 5, i8 7
  %or18.i.i.i = or i8 %3, %conv.i.i.i.i
  %4 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i20.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 9, i8 noundef zeroext %or18.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i)
  %cmp.i21.i.i.i = icmp slt i32 %call.i20.i.i.i, 0
  br i1 %cmp.i21.i.i.i, label %if.then.i23.i.i.i, label %if.end.i.i.i.if.end_crit_edge

if.end.i.i.i.if.end_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i23.i.i.i:                                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i.i = zext i8 %or18.i.i.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i.i, i32 noundef 9, i32 noundef %call.i20.i.i.i) #11
  br label %if.then

if.then:                                          ; preds = %if.then.i23.i.i.i, %fusb302_i2c_read.exit.thread.i.i.i
  %retval.0.i.i.i.ph = phi i32 [ %call.i20.i.i.i, %if.then.i23.i.i.i ], [ %call.i.i.i.i, %fusb302_i2c_read.exit.thread.i.i.i ]
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.119, i32 noundef %retval.0.i.i.i.ph)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end.i.i.i.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf.i) #11
  %6 = getelementptr inbounds i8, ptr %buf.i, i32 7
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 18, ptr %buf.i, align 1
  %arrayidx3.i = getelementptr inbounds [40 x i8], ptr %buf.i, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 18, ptr %arrayidx3.i, align 1
  %arrayidx6.i = getelementptr inbounds [40 x i8], ptr %buf.i, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 18, ptr %arrayidx6.i, align 1
  %arrayidx9.i = getelementptr inbounds [40 x i8], ptr %buf.i, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 19, ptr %arrayidx9.i, align 1
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %msg, align 1
  %13 = lshr i16 %12, 2
  %14 = and i16 %13, 28
  %mul.i = zext i16 %14 to i32
  %15 = trunc i16 %14 to i8
  %conv.i = or i8 %15, -126
  %arrayidx12.i = getelementptr inbounds [40 x i8], ptr %buf.i, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %arrayidx12.i, align 1
  %arrayidx14.i = getelementptr inbounds [40 x i8], ptr %buf.i, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %12, ptr %arrayidx14.i, align 1
  %18 = getelementptr inbounds %struct.pd_message, ptr %msg, i32 0, i32 1
  %19 = sub nuw nsw i32 33, %mul.i
  %20 = getelementptr i8, ptr %6, i32 %mul.i
  %21 = call ptr @memset(ptr %20, i32 255, i32 %19)
  %22 = call ptr @memcpy(ptr %6, ptr %18, i32 %mul.i)
  %conv23.i = add nuw nsw i32 %mul.i, 7
  %inc24.i = add nuw nsw i32 %mul.i, 8
  %arrayidx26.i = getelementptr [40 x i8], ptr %buf.i, i32 0, i32 %conv23.i
  %23 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %arrayidx26.i, align 1
  %inc27.i = add nuw nsw i32 %mul.i, 9
  %arrayidx29.i = getelementptr [40 x i8], ptr %buf.i, i32 0, i32 %inc24.i
  %24 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 20, ptr %arrayidx29.i, align 1
  %inc30.i = add nuw nsw i32 %mul.i, 10
  %arrayidx32.i = getelementptr [40 x i8], ptr %buf.i, i32 0, i32 %inc27.i
  %25 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -2, ptr %arrayidx32.i, align 1
  %inc33.i = add nuw nsw i8 %15, 11
  %arrayidx35.i = getelementptr [40 x i8], ptr %buf.i, i32 0, i32 %inc30.i
  %26 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -95, ptr %arrayidx35.i, align 1
  %27 = ptrtoint ptr %i2c_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c_client.i.i.i.i, align 4
  %call.i.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %28, i8 noundef zeroext 67, i8 noundef zeroext %inc33.i, ptr noundef nonnull %buf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i.i, label %if.then6, label %fusb302_pd_send_message.exit

fusb302_pd_send_message.exit:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %msg to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %msg, align 1
  %conv43.i = zext i16 %30 to i32
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.124, i32 noundef %conv43.i) #11
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.125, i32 noundef %mul.i) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf.i) #11
  br label %sw.epilog

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = zext i8 %inc33.i to i32
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.126, i32 noundef 67, i32 noundef %conv.i.i, i32 noundef %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf.i) #11
  call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.120, i32 noundef %call.i.i)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %i2c_client.i.i.i.i30 = getelementptr i8, ptr %dev, i32 -8
  %31 = ptrtoint ptr %i2c_client.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c_client.i.i.i.i30, align 4
  %call.i.i.i.i31 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i31)
  %cmp.i.i.i.i32 = icmp slt i32 %call.i.i.i.i31, 0
  br i1 %cmp.i.i.i.i32, label %fusb302_i2c_read.exit.thread.i.i.i33, label %if.end.i.i.i38

fusb302_i2c_read.exit.thread.i.i.i33:             ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.43, i32 noundef 9, i32 noundef %call.i.i.i.i31) #11
  br label %if.then12

if.end.i.i.i38:                                   ; preds = %sw.bb8
  %conv.i.i.i.i34 = trunc i32 %call.i.i.i.i31 to i8
  %or18.i.i.i35 = or i8 %conv.i.i.i.i34, 64
  %33 = ptrtoint ptr %i2c_client.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c_client.i.i.i.i30, align 4
  %call.i20.i.i.i36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 9, i8 noundef zeroext %or18.i.i.i35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i.i36)
  %cmp.i21.i.i.i37 = icmp slt i32 %call.i20.i.i.i36, 0
  br i1 %cmp.i21.i.i.i37, label %if.then.i23.i.i.i40, label %if.end.i.i.i38.sw.epilog_crit_edge

if.end.i.i.i38.sw.epilog_crit_edge:               ; preds = %if.end.i.i.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i23.i.i.i40:                              ; preds = %if.end.i.i.i38
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i.i.i39 = zext i8 %or18.i.i.i35 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i.i.i39, i32 noundef 9, i32 noundef %call.i20.i.i.i36) #11
  br label %if.then12

if.then12:                                        ; preds = %if.then.i23.i.i.i40, %fusb302_i2c_read.exit.thread.i.i.i33
  %retval.0.i.i.i41.ph = phi i32 [ %call.i20.i.i.i36, %if.then.i23.i.i.i40 ], [ %call.i.i.i.i31, %fusb302_i2c_read.exit.thread.i.i.i33 ]
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.121, i32 noundef %retval.0.i.i.i41.ph)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [8 x ptr], ptr @transmit_type_name, i32 0, i32 %type
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %add.ptr, ptr noundef nonnull @.str.122, ptr noundef %36)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then12, %if.end.i.i.i38.sw.epilog_crit_edge, %if.then6, %fusb302_pd_send_message.exit
  %ret.0 = phi i32 [ -22, %sw.default ], [ %retval.0.i.i.i41.ph, %if.then12 ], [ %call.i.i, %if.then6 ], [ %call.i.i, %fusb302_pd_send_message.exit ], [ %call.i20.i.i.i36, %if.end.i.i.i38.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fusb302_set_src_current(ptr noundef %chip, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %src_current_status = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 16
  %0 = ptrtoint ptr %src_current_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %status, ptr %src_current_status, align 4
  %1 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %status, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %i2c_client.i.i = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %fusb302_i2c_read.exit.thread.i, label %if.end.i

fusb302_i2c_read.exit.thread.i:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 6, i32 noundef %call.i.i) #11
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %conv.i.i = trunc i32 %call.i.i to i8
  %and.i = and i8 %conv.i.i, -13
  %or18.i = or i8 %and.i, 4
  %4 = ptrtoint ptr %i2c_client.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client.i.i, align 4
  %call.i20.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 6, i8 noundef zeroext %or18.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %cmp.i21.i = icmp slt i32 %call.i20.i, 0
  br i1 %cmp.i21.i, label %if.then.i23.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i23.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i = zext i8 %or18.i to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i, i32 noundef 6, i32 noundef %call.i20.i) #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %i2c_client.i.i9 = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 1
  %6 = ptrtoint ptr %i2c_client.i.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client.i.i9, align 4
  %call.i.i10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %cmp.i.i11 = icmp slt i32 %call.i.i10, 0
  br i1 %cmp.i.i11, label %fusb302_i2c_read.exit.thread.i12, label %if.end.i18

fusb302_i2c_read.exit.thread.i12:                 ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 6, i32 noundef %call.i.i10) #11
  br label %sw.epilog

if.end.i18:                                       ; preds = %sw.bb1
  %conv.i.i13 = trunc i32 %call.i.i10 to i8
  %and.i14 = and i8 %conv.i.i13, -13
  %or18.i15 = or i8 %and.i14, 8
  %8 = ptrtoint ptr %i2c_client.i.i9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_client.i.i9, align 4
  %call.i20.i16 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 6, i8 noundef zeroext %or18.i15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i16)
  %cmp.i21.i17 = icmp slt i32 %call.i20.i16, 0
  br i1 %cmp.i21.i17, label %if.then.i23.i20, label %if.end.i18.sw.epilog_crit_edge

if.end.i18.sw.epilog_crit_edge:                   ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i23.i20:                                  ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i19 = zext i8 %or18.i15 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i19, i32 noundef 6, i32 noundef %call.i20.i16) #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %i2c_client.i.i23 = getelementptr inbounds %struct.fusb302_chip, ptr %chip, i32 0, i32 1
  %10 = ptrtoint ptr %i2c_client.i.i23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_client.i.i23, align 4
  %call.i.i24 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %cmp.i.i25 = icmp slt i32 %call.i.i24, 0
  br i1 %cmp.i.i25, label %fusb302_i2c_read.exit.thread.i26, label %if.end.i32

fusb302_i2c_read.exit.thread.i26:                 ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.43, i32 noundef 6, i32 noundef %call.i.i24) #11
  br label %sw.epilog

if.end.i32:                                       ; preds = %sw.bb3
  %conv.i.i27 = trunc i32 %call.i.i24 to i8
  %or18.i29 = or i8 %conv.i.i27, 12
  %12 = ptrtoint ptr %i2c_client.i.i23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_client.i.i23, align 4
  %call.i20.i30 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 6, i8 noundef zeroext %or18.i29) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i30)
  %cmp.i21.i31 = icmp slt i32 %call.i20.i30, 0
  br i1 %cmp.i21.i31, label %if.then.i23.i34, label %if.end.i32.sw.epilog_crit_edge

if.end.i32.sw.epilog_crit_edge:                   ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i23.i34:                                  ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i22.i33 = zext i8 %or18.i29 to i32
  tail call void (ptr, ptr, ...) @fusb302_log(ptr noundef %chip, ptr noundef nonnull @.str.59, i32 noundef %conv.i22.i33, i32 noundef 6, i32 noundef %call.i20.i30) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i23.i34, %if.end.i32.sw.epilog_crit_edge, %fusb302_i2c_read.exit.thread.i26, %if.then.i23.i20, %if.end.i18.sw.epilog_crit_edge, %fusb302_i2c_read.exit.thread.i12, %if.then.i23.i, %if.end.i.sw.epilog_crit_edge, %fusb302_i2c_read.exit.thread.i, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call.i.i, %fusb302_i2c_read.exit.thread.i ], [ %call.i20.i, %if.end.i.sw.epilog_crit_edge ], [ %call.i20.i, %if.then.i23.i ], [ %call.i.i10, %fusb302_i2c_read.exit.thread.i12 ], [ %call.i20.i16, %if.end.i18.sw.epilog_crit_edge ], [ %call.i20.i16, %if.then.i23.i20 ], [ %call.i.i24, %fusb302_i2c_read.exit.thread.i26 ], [ %call.i20.i30, %if.end.i32.sw.epilog_crit_edge ], [ %call.i20.i30, %if.then.i23.i34 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb302_debug_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @fusb302_debug_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb302_debug_show(ptr noundef %s, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %logbuffer_lock = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 29
  tail call void @mutex_lock_nested(ptr noundef %logbuffer_lock, i32 noundef 0) #11
  %logbuffer_tail = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %logbuffer_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %logbuffer_tail, align 4
  %logbuffer_head = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %logbuffer_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logbuffer_head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not13 = icmp eq i32 %3, %5
  br i1 %cmp.not13, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %tail.014 = phi i32 [ %rem, %while.body.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.fusb302_chip, ptr %1, i32 0, i32 32, i32 %tail.014
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.138, ptr noundef %7) #11
  %add = add i32 %tail.014, 1
  %rem = srem i32 %add, 1024
  %8 = ptrtoint ptr %logbuffer_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %logbuffer_head, align 4
  %cmp.not = icmp eq i32 %rem, %9
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %tail.0.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %rem, %while.body.while.end_crit_edge ]
  %count.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 3
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 4
  %size.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 1
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i = icmp eq i32 %11, %13
  br i1 %cmp.i, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %logbuffer_tail to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %tail.0.lcssa, ptr %logbuffer_tail, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %logbuffer_lock) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_create_software_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb302_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %irq_lock = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  %irq_suspended = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %irq_suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %irq_suspended, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #11
  %irq_work = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 6
  %call6 = tail call zeroext i1 @flush_work(ptr noundef %irq_work) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fusb302_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %irq_lock = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #11
  %irq_while_suspended = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq_while_suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_while_suspended, align 1, !range !345
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %irq_work = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %irq_work) #11
  %5 = ptrtoint ptr %irq_while_suspended to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %irq_while_suspended, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq_suspended = getelementptr inbounds %struct.fusb302_chip, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irq_suspended to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %irq_suspended, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call2) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !31, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !289, !291, !293, !295, !297, !299, !301, !302, !303, !304, !306, !307, !309, !311, !312, !314, !316, !317, !319, !321, !323, !325, !327, !329, !331, !333}
!llvm.module.flags = !{!335, !336, !337, !338, !339, !340, !341, !342}
!llvm.ident = !{!343}

!0 = !{ptr @__initcall__kmod_fusb302__295_1847_fusb302_driver_init6, !1, !"__initcall__kmod_fusb302__295_1847_fusb302_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1847, i32 1}
!2 = !{ptr @__exitcall_fusb302_driver_exit, !1, !"__exitcall_fusb302_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author296, !4, !"__UNIQUE_ID_author296", i1 false, i1 false}
!4 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1849, i32 1}
!5 = !{ptr @__UNIQUE_ID_description297, !6, !"__UNIQUE_ID_description297", i1 false, i1 false}
!6 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1850, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1851, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1839, i32 14}
!12 = !{ptr @fusb302_driver, !13, !"fusb302_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1837, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1690, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @fusb302_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @fusb302_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @fusb302_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1700, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1709, i32 39}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1715, i32 45}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1719, i32 13}
!31 = !{ptr @fusb302_probe.__key.10, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1723, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @fusb302_probe.__key.12, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1724, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @fusb302_probe.__key.14, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1725, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @fusb302_probe.__key.16, !38, !"__key", i1 false, i1 false}
!41 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1748, i32 4}
!44 = !{ptr @fusb302_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @fusb302_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1754, i32 6}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1756, i32 3}
!50 = !{ptr @fusb302_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @fusb302_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1528, i32 7}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1533, i32 21}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1534, i32 23}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1534, i32 30}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1542, i32 21}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1546, i32 9}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1552, i32 21}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1564, i32 21}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1565, i32 22}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1565, i32 31}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1575, i32 21}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1580, i32 21}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1585, i32 21}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1588, i32 22}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1595, i32 21}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1599, i32 9}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1605, i32 21}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1615, i32 21}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 273, i32 21}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 154, i32 22}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 159, i32 3}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @_fusb302_log._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @_fusb302_log._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 165, i32 3}
!100 = !{ptr @_fusb302_log._entry.48, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @_fusb302_log._entry_ptr.50, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 172, i32 28}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1404, i32 21}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1408, i32 21}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1194, i32 21}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1206, i32 21}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1224, i32 8}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1231, i32 8}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1235, i32 20}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 242, i32 21}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1135, i32 25}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1136, i32 25}
!124 = !{ptr @cc_polarity_name, !125, !"cc_polarity_name", i1 false, i1 false}
!125 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1134, i32 27}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 580, i32 21}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 581, i32 19}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 582, i32 19}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 583, i32 22}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 584, i32 22}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 585, i32 22}
!138 = !{ptr @typec_cc_status_name, !139, !"typec_cc_status_name", i1 false, i1 false}
!139 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 579, i32 27}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1346, i32 21}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1373, i32 8}
!144 = !{ptr @rd_mda_value, !145, !"rd_mda_value", i1 false, i1 false}
!145 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 64, i32 17}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1261, i32 20}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1273, i32 20}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1289, i32 20}
!152 = !{ptr @ra_mda_value, !153, !"ra_mda_value", i1 false, i1 false}
!153 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 58, i32 17}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 558, i32 3}
!156 = distinct !{null, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1441, i32 21}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1454, i32 20}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1455, i32 20}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 289, i32 21}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 294, i32 21}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1081, i32 21}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1087, i32 20}
!170 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1089, i32 21}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1098, i32 22}
!174 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1106, i32 22}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 418, i32 20}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 340, i32 21}
!180 = !{ptr @.str.86, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 342, i32 21}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 624, i32 21}
!184 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 630, i32 20}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 634, i32 21}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 641, i32 21}
!190 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 651, i32 21}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 665, i32 9}
!194 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 674, i32 22}
!196 = !{ptr @cc_src_current, !197, !"cc_src_current", i1 false, i1 false}
!197 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 588, i32 38}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 712, i32 20}
!200 = !{ptr @.str.95, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 736, i32 21}
!202 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 749, i32 20}
!204 = !{ptr @.str.97, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 764, i32 21}
!206 = !{ptr @.str.98, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 771, i32 22}
!208 = !{ptr @.str.99, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 772, i32 14}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 772, i32 25}
!212 = !{ptr @.str.101, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 776, i32 21}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 779, i32 21}
!216 = !{ptr @.str.103, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 846, i32 21}
!218 = !{ptr @.str.104, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 851, i32 21}
!220 = !{ptr @.str.105, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 856, i32 21}
!222 = !{ptr @.str.106, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 857, i32 13}
!224 = !{ptr @.str.107, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 857, i32 20}
!226 = !{ptr @.str.108, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 862, i32 21}
!228 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 866, i32 20}
!230 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 901, i32 21}
!232 = !{ptr @.str.111, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 906, i32 20}
!234 = !{ptr @.str.112, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 874, i32 18}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 875, i32 20}
!238 = !{ptr @typec_role_name, !239, !"typec_role_name", i1 false, i1 false}
!239 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 873, i32 27}
!240 = !{ptr @.str.114, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 879, i32 20}
!242 = !{ptr @.str.115, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 880, i32 18}
!244 = !{ptr @typec_data_role_name, !245, !"typec_data_role_name", i1 false, i1 false}
!245 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 878, i32 27}
!246 = !{ptr @.str.116, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 938, i32 21}
!248 = !{ptr @.str.117, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 945, i32 8}
!250 = !{ptr @.str.118, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 948, i32 20}
!252 = !{ptr @.str.119, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1036, i32 22}
!254 = !{ptr @.str.120, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1041, i32 9}
!256 = !{ptr @.str.121, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1047, i32 9}
!258 = !{ptr @.str.122, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1050, i32 21}
!260 = distinct !{null, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 974, i32 8}
!262 = !{ptr @.str.124, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 998, i32 20}
!264 = !{ptr @.str.125, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 999, i32 20}
!266 = !{ptr @.str.126, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 259, i32 21}
!268 = !{ptr @.str.127, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1011, i32 20}
!270 = !{ptr @.str.128, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1012, i32 25}
!272 = !{ptr @.str.129, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1013, i32 30}
!274 = !{ptr @.str.130, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1014, i32 30}
!276 = !{ptr @.str.131, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1015, i32 36}
!278 = !{ptr @.str.132, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1016, i32 26}
!280 = !{ptr @.str.133, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1017, i32 27}
!282 = !{ptr @.str.134, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1018, i32 27}
!284 = !{ptr @transmit_type_name, !285, !"transmit_type_name", i1 false, i1 false}
!285 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1010, i32 27}
!286 = !{ptr @fusb302_debugfs_init.__key, !287, !"__key", i1 false, i1 false}
!287 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 214, i32 2}
!288 = !{ptr @.str.135, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.136, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 215, i32 27}
!291 = !{ptr @.str.137, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 217, i32 22}
!293 = !{ptr @fusb302_debug_fops, !294, !"fusb302_debug_fops", i1 false, i1 false}
!294 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 208, i32 1}
!295 = !{ptr @.str.138, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 199, i32 17}
!297 = !{ptr @.str.139, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1633, i32 41}
!299 = !{ptr @.str.140, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1635, i32 3}
!301 = !{ptr @.str.141, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @init_gpio._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @init_gpio._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @init_gpio._entry.142, !305, !"_entry", i1 false, i1 false}
!305 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1640, i32 3}
!306 = !{ptr @init_gpio._entry_ptr.143, !305, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.144, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1673, i32 44}
!309 = !{ptr @.str.145, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1660, i32 2}
!311 = !{ptr @.str.146, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.147, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1661, i32 2}
!314 = !{ptr @.str.148, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1662, i32 2}
!316 = !{ptr @.str.149, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.150, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1663, i32 2}
!319 = !{ptr @.str.151, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1664, i32 2}
!321 = !{ptr @.str.152, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1665, i32 2}
!323 = !{ptr @port_props, !324, !"port_props", i1 false, i1 false}
!324 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1659, i32 36}
!325 = !{ptr @src_pdo, !326, !"src_pdo", i1 false, i1 false}
!326 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1651, i32 18}
!327 = !{ptr @snk_pdo, !328, !"snk_pdo", i1 false, i1 false}
!328 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1655, i32 18}
!329 = !{ptr @fusb302_dt_match, !330, !"fusb302_dt_match", i1 false, i1 false}
!330 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1820, i32 34}
!331 = !{ptr @fusb302_pm_ops, !332, !"fusb302_pm_ops", i1 false, i1 false}
!332 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1832, i32 32}
!333 = !{ptr @fusb302_i2c_device_id, !334, !"fusb302_i2c_device_id", i1 false, i1 false}
!334 = !{!"../drivers/usb/typec/tcpm/fusb302.c", i32 1826, i32 35}
!335 = !{i32 1, !"wchar_size", i32 2}
!336 = !{i32 1, !"min_enum_size", i32 4}
!337 = !{i32 8, !"branch-target-enforcement", i32 0}
!338 = !{i32 8, !"sign-return-address", i32 0}
!339 = !{i32 8, !"sign-return-address-all", i32 0}
!340 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!341 = !{i32 7, !"uwtable", i32 1}
!342 = !{i32 7, !"frame-pointer", i32 2}
!343 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!344 = !{!"auto-init"}
!345 = !{i8 0, i8 2}
!346 = !{i64 1075392, i64 1075419, i64 1075441, i64 1075469}
!347 = !{i64 1075800, i64 1075827, i64 1075860, i64 1075881, i64 1075908, i64 1075934}
!348 = !{!"branch_weights", i32 2000, i32 1}
