; ModuleID = '/llk/IR_all_yes/drivers/mfd/iqs62x.c_pt.bc'
source_filename = "../drivers/mfd/iqs62x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+iqs62x_events\22, \22a\22\09"
module asm "\09.weak\09__crc_iqs62x_events\09\09\09\09"
module asm "\09.long\09__crc_iqs62x_events\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iqs62x_events:\09\09\09\09\09"
module asm "\09.asciz \09\22iqs62x_events\22\09\09\09\09\09"
module asm "__kstrtabns_iqs62x_events:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.iqs62x_event_desc = type { i32, i8, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iqs62x_dev_desc = type { ptr, ptr, i32, i8, i8, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
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
%struct.iqs62x_core = type { ptr, ptr, ptr, %struct.blocking_notifier_head, %struct.list_head, %struct.completion, %struct.completion, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iqs62x_info = type { i8, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.iqs62x_fw_rec = type { i8, i8, i8, i8 }
%struct.iqs62x_fw_blk = type { %struct.list_head, i8, i8, i8, [0 x i8] }
%struct.iqs62x_event_data = type { i16, i8, i8, i8 }

@iqs62x_events = dso_local constant { [22 x %struct.iqs62x_event_desc], [48 x i8] } { [22 x %struct.iqs62x_event_desc] [%struct.iqs62x_event_desc { i32 2, i8 16, i8 16 }, %struct.iqs62x_event_desc { i32 2, i8 1, i8 1 }, %struct.iqs62x_event_desc { i32 2, i8 32, i8 32 }, %struct.iqs62x_event_desc { i32 2, i8 2, i8 2 }, %struct.iqs62x_event_desc { i32 2, i8 64, i8 64 }, %struct.iqs62x_event_desc { i32 2, i8 4, i8 4 }, %struct.iqs62x_event_desc { i32 3, i8 -64, i8 64 }, %struct.iqs62x_event_desc { i32 3, i8 -96, i8 32 }, %struct.iqs62x_event_desc { i32 3, i8 -64, i8 -64 }, %struct.iqs62x_event_desc { i32 3, i8 -96, i8 -96 }, %struct.iqs62x_event_desc { i32 3, i8 16, i8 16 }, %struct.iqs62x_event_desc { i32 3, i8 4, i8 4 }, %struct.iqs62x_event_desc { i32 3, i8 2, i8 2 }, %struct.iqs62x_event_desc { i32 3, i8 1, i8 1 }, %struct.iqs62x_event_desc { i32 7, i8 -64, i8 -128 }, %struct.iqs62x_event_desc { i32 7, i8 -64, i8 -64 }, %struct.iqs62x_event_desc { i32 4, i8 5, i8 4 }, %struct.iqs62x_event_desc { i32 4, i8 3, i8 2 }, %struct.iqs62x_event_desc { i32 4, i8 5, i8 5 }, %struct.iqs62x_event_desc { i32 4, i8 3, i8 3 }, %struct.iqs62x_event_desc { i32 1, i8 -128, i8 -128 }, %struct.iqs62x_event_desc { i32 1, i8 4, i8 4 }], [48 x i8] zeroinitializer }, align 32
@__kstrtab_iqs62x_events = external dso_local constant [0 x i8], align 1
@__kstrtabns_iqs62x_events = external dso_local constant [0 x i8], align 1
@__ksymtab_iqs62x_events = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iqs62x_events to i32), ptr @__kstrtab_iqs62x_events, ptr @__kstrtabns_iqs62x_events }, section "___ksymtab_gpl+iqs62x_events", align 4
@__initcall__kmod_iqs62x__288_1077_iqs62x_i2c_driver_init6 = internal global ptr @iqs62x_i2c_driver_init, section ".initcall6.init", align 4
@iqs62x_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @iqs62x_remove, ptr @iqs62x_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @iqs62x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iqs62x_pm, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_iqs62x_i2c_driver_exit = internal global ptr @iqs62x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [46 x i8] c"iqs62x.author=Jeff LaBundy <jeff@labundy.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [73 x i8] c"iqs62x.description=Azoteq IQS620A/621/622/624/625 Multi-Function Sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [31 x i8] c"iqs62x.file=drivers/mfd/iqs62x\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [19 x i8] c"iqs62x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iqs62x\00", [25 x i8] zeroinitializer }, align 32
@iqs62x_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"azoteq,iqs620a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"azoteq,iqs621\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"azoteq,iqs622\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"azoteq,iqs624\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"azoteq,iqs625\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@iqs62x_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @iqs62x_suspend, ptr @iqs62x_resume, ptr @iqs62x_suspend, ptr @iqs62x_resume, ptr @iqs62x_suspend, ptr @iqs62x_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@iqs62x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&iqs62x->nh)->rwsem\00", [42 x i8] zeroinitializer }, align 32
@iqs62x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@iqs62x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"iqs62x:917:(&iqs62x_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@iqs62x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 921, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to initialize register map: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iqs62x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/mfd/iqs62x.c\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iqs62x_probe._entry_ptr = internal global ptr @iqs62x_probe._entry, section ".printk_index", align 4
@iqs62x_devs = internal constant { [6 x %struct.iqs62x_dev_desc], [64 x i8] } { [6 x %struct.iqs62x_dev_desc] [%struct.iqs62x_dev_desc { ptr @.str.22, ptr @iqs620at_sub_devs, i32 3, i8 65, i8 8, ptr @iqs620at_cal_regs, i32 3, i8 1, i8 -126, i8 4, i8 8, i8 16, i8 0, i8 0, i8 80, i8 0, i8 22, i8 0, i8 0, i8 0, ptr @.str.23, ptr @iqs620a_event_regs }, %struct.iqs62x_dev_desc { ptr @.str.24, ptr @iqs620a_sub_devs, i32 2, i8 65, i8 8, ptr null, i32 0, i8 1, i8 -126, i8 4, i8 8, i8 16, i8 0, i8 0, i8 80, i8 0, i8 22, i8 0, i8 0, i8 0, ptr @.str.23, ptr @iqs620a_event_regs }, %struct.iqs62x_dev_desc { ptr @.str.25, ptr @iqs621_sub_devs, i32 2, i8 70, i8 9, ptr @iqs621_cal_regs, i32 2, i8 1, i8 0, i8 2, i8 8, i8 16, i8 4, i8 0, i8 0, i8 22, i8 25, i8 5, i8 0, i8 0, ptr @.str.26, ptr @iqs621_event_regs }, %struct.iqs62x_dev_desc { ptr @.str.27, ptr @iqs622_sub_devs, i32 2, i8 66, i8 6, ptr null, i32 0, i8 1, i8 2, i8 4, i8 0, i8 0, i8 8, i8 16, i8 72, i8 20, i8 25, i8 0, i8 0, i8 0, ptr @.str.28, ptr @iqs622_event_regs }, %struct.iqs62x_dev_desc { ptr @.str.29, ptr @iqs624_sub_devs, i32 2, i8 67, i8 11, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 24, i8 3, ptr @.str.30, ptr @iqs624_event_regs }, %struct.iqs62x_dev_desc { ptr @.str.31, ptr @iqs625_sub_devs, i32 2, i8 78, i8 11, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 18, i8 10, ptr @.str.32, ptr @iqs625_event_regs }], [64 x i8] zeroinitializer }, align 32
@iqs62x_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 984, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unrecognized product number: 0x%02X\0A\00", [59 x i8] zeroinitializer }, align 32
@iqs62x_probe._entry_ptr.10 = internal global ptr @iqs62x_probe._entry.8, section ".printk_index", align 4
@iqs62x_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 990, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unrecognized software number: 0x%02X\0A\00", [58 x i8] zeroinitializer }, align 32
@iqs62x_probe._entry_ptr.13 = internal global ptr @iqs62x_probe._entry.11, section ".printk_index", align 4
@iqs62x_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 995, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Uncalibrated device\0A\00", [43 x i8] zeroinitializer }, align 32
@iqs62x_probe._entry_ptr.16 = internal global ptr @iqs62x_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@iqs62x_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 1006, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request firmware: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@iqs62x_probe._entry_ptr.20 = internal global ptr @iqs62x_probe._entry.18, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iqs620at\00", [23 x i8] zeroinitializer }, align 32
@iqs620at_sub_devs = internal constant { [3 x %struct.mfd_cell], [88 x i8] } { [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.34, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.36, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@iqs620at_cal_regs = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\C2\C3\C4", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iqs620a.bin\00", [20 x i8] zeroinitializer }, align 32
@iqs620a_event_regs = internal constant { [2 x [10 x i32]], [48 x i8] } { [2 x [10 x i32]] [[10 x i32] [i32 1, i32 0, i32 2, i32 3, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0], [10 x i32] [i32 1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0]], [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iqs620a\00", [24 x i8] zeroinitializer }, align 32
@iqs620a_sub_devs = internal constant { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.34, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.36, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iqs621\00", [25 x i8] zeroinitializer }, align 32
@iqs621_sub_devs = internal constant { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.38, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@iqs621_cal_regs = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\82\83", [30 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iqs621.bin\00", [21 x i8] zeroinitializer }, align 32
@iqs621_event_regs = internal constant { [1 x [10 x i32]], [56 x i8] } { [1 x [10 x i32]] [[10 x i32] [i32 1, i32 0, i32 2, i32 3, i32 0, i32 0, i32 5, i32 9, i32 10, i32 4]], [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iqs622\00", [25 x i8] zeroinitializer }, align 32
@iqs622_sub_devs = internal constant { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.40, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.39, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iqs622.bin\00", [21 x i8] zeroinitializer }, align 32
@iqs622_event_regs = internal constant { [2 x [10 x i32]], [48 x i8] } { [2 x [10 x i32]] [[10 x i32] [i32 1, i32 0, i32 2, i32 0, i32 5, i32 0, i32 6, i32 9, i32 10, i32 4], [10 x i32] [i32 1, i32 0, i32 0, i32 3, i32 5, i32 0, i32 6, i32 9, i32 10, i32 4]], [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iqs624\00", [25 x i8] zeroinitializer }, align 32
@iqs624_sub_devs = internal constant { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.41, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iqs624.bin\00", [21 x i8] zeroinitializer }, align 32
@iqs624_event_regs = internal constant { [1 x [10 x i32]], [56 x i8] } { [1 x [10 x i32]] [[10 x i32] [i32 1, i32 0, i32 2, i32 0, i32 7, i32 0, i32 9, i32 10, i32 8, i32 0]], [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iqs625\00", [25 x i8] zeroinitializer }, align 32
@iqs625_sub_devs = internal constant { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.33, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.43, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.42, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iqs625.bin\00", [21 x i8] zeroinitializer }, align 32
@iqs625_event_regs = internal constant { [1 x [10 x i32]], [56 x i8] } { [1 x [10 x i32]] [[10 x i32] [i32 1, i32 2, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]], [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iqs62x-keys\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"azoteq,iqs620a-keys\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iqs620a-pwm\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"azoteq,iqs620a-pwm\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iqs620at-temp\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"azoteq,iqs621-keys\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iqs621-als\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"azoteq,iqs622-keys\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"azoteq,iqs624-keys\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iqs624-pos\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"azoteq,iqs625-keys\00", [45 x i8] zeroinitializer }, align 32
@iqs62x_firmware_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.5, i32 593, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to parse firmware: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iqs62x_firmware_load\00", [43 x i8] zeroinitializer }, align 32
@iqs62x_firmware_load._entry_ptr = internal global ptr @iqs62x_firmware_load._entry, section ".printk_index", align 4
@iqs62x_firmware_load._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.5, i32 600, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize device: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@iqs62x_firmware_load._entry_ptr.48 = internal global ptr @iqs62x_firmware_load._entry.46, section ".printk_index", align 4
@iqs62x_firmware_load._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.5, i32 608, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@iqs62x_firmware_load._entry_ptr.51 = internal global ptr @iqs62x_firmware_load._entry.49, section ".printk_index", align 4
@iqs62x_firmware_load._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.5, i32 614, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to complete ATI\0A\00", [40 x i8] zeroinitializer }, align 32
@iqs62x_firmware_load._entry_ptr.54 = internal global ptr @iqs62x_firmware_load._entry.52, section ".printk_index", align 4
@iqs62x_firmware_load._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.5, i32 623, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to add sub-devices: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@iqs62x_firmware_load._entry_ptr.57 = internal global ptr @iqs62x_firmware_load._entry.55, section ".printk_index", align 4
@iqs62x_firmware_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.5, i32 256, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Incompatible product number: 0x%02X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iqs62x_firmware_parse\00", [42 x i8] zeroinitializer }, align 32
@iqs62x_firmware_parse._entry_ptr = internal global ptr @iqs62x_firmware_parse._entry, section ".printk_index", align 4
@iqs62x_firmware_parse._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.59, ptr @.str.5, i32 276, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@iqs62x_firmware_parse._entry_ptr.61 = internal global ptr @iqs62x_firmware_parse._entry.60, section ".printk_index", align 4
@iqs62x_firmware_parse._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.59, ptr @.str.5, i32 312, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unrecognized record type: 0x%02X\0A\00", [62 x i8] zeroinitializer }, align 32
@iqs62x_firmware_parse._entry_ptr.64 = internal global ptr @iqs62x_firmware_parse._entry.62, section ".printk_index", align 4
@iqs62x_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.5, i32 475, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read device status: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iqs62x_irq\00", [21 x i8] zeroinitializer }, align 32
@iqs62x_irq._entry_ptr = internal global ptr @iqs62x_irq._entry, section ".printk_index", align 4
@iqs62x_irq._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.5, i32 531, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unexpected device reset\0A\00", [39 x i8] zeroinitializer }, align 32
@iqs62x_irq._entry_ptr.69 = internal global ptr @iqs62x_irq._entry.67, section ".printk_index", align 4
@iqs62x_irq._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.5, i32 536, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to re-initialize device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@iqs62x_irq._entry_ptr.72 = internal global ptr @iqs62x_irq._entry.70, section ".printk_index", align 4
@iqs62x_irq._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.5, i32 550, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable event mode: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@iqs62x_irq._entry_ptr.75 = internal global ptr @iqs62x_irq._entry.73, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 8, i64 65, i64 66, i64 70]
@__sancov_gen_cov_switch_values.77 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 3, i64 5, i64 6, i64 8, i64 9, i64 10]
@___asan_gen_.78 = private unnamed_addr constant [14 x i8] c"iqs62x_events\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 340, i32 32 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"iqs62x_i2c_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1068, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1070, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"iqs62x_of_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1058, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [10 x i8] c"iqs62x_pm\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1056, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 911, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [21 x i8] c"iqs62x_regmap_config\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 889, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 917, i32 19 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 920, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [12 x i8] c"iqs62x_devs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 794, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 983, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 989, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 995, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 999, i32 44 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 1006, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 87, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 796, i32 15 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"iqs620at_sub_devs\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 629, i32 30 }
@___asan_gen_.168 = private unnamed_addr constant [18 x i8] c"iqs620at_cal_regs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 684, i32 17 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 810, i32 14 }
@___asan_gen_.174 = private unnamed_addr constant [19 x i8] c"iqs620a_event_regs\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 695, i32 36 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 814, i32 15 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"iqs620a_sub_devs\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 641, i32 30 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 830, i32 15 }
@___asan_gen_.186 = private unnamed_addr constant [16 x i8] c"iqs621_sub_devs\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 652, i32 30 }
@___asan_gen_.189 = private unnamed_addr constant [16 x i8] c"iqs621_cal_regs\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 690, i32 17 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 845, i32 14 }
@___asan_gen_.195 = private unnamed_addr constant [18 x i8] c"iqs621_event_regs\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 722, i32 36 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 849, i32 15 }
@___asan_gen_.201 = private unnamed_addr constant [16 x i8] c"iqs622_sub_devs\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 660, i32 30 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 862, i32 14 }
@___asan_gen_.207 = private unnamed_addr constant [18 x i8] c"iqs622_event_regs\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 737, i32 36 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 866, i32 15 }
@___asan_gen_.213 = private unnamed_addr constant [16 x i8] c"iqs624_sub_devs\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 668, i32 30 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 873, i32 14 }
@___asan_gen_.219 = private unnamed_addr constant [18 x i8] c"iqs624_event_regs\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 764, i32 36 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 877, i32 15 }
@___asan_gen_.225 = private unnamed_addr constant [16 x i8] c"iqs625_sub_devs\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 676, i32 30 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 884, i32 14 }
@___asan_gen_.231 = private unnamed_addr constant [18 x i8] c"iqs625_event_regs\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 779, i32 36 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 631, i32 11 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 632, i32 20 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 635, i32 11 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 636, i32 20 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 638, i32 12 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 655, i32 20 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 657, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 663, i32 20 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 671, i32 20 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 673, i32 12 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 679, i32 20 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 592, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 600, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 608, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 614, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 623, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 254, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 275, i32 6 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 310, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 474, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 531, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 535, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.343 = private constant [24 x i8] c"../drivers/mfd/iqs62x.c\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 549, i32 4 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_iqs62x_i2c_driver_exit, ptr @__initcall__kmod_iqs62x__288_1077_iqs62x_i2c_driver_init6, ptr @__ksymtab_iqs62x_events, ptr @iqs62x_firmware_load._entry, ptr @iqs62x_firmware_load._entry.46, ptr @iqs62x_firmware_load._entry.49, ptr @iqs62x_firmware_load._entry.52, ptr @iqs62x_firmware_load._entry.55, ptr @iqs62x_firmware_load._entry_ptr, ptr @iqs62x_firmware_load._entry_ptr.48, ptr @iqs62x_firmware_load._entry_ptr.51, ptr @iqs62x_firmware_load._entry_ptr.54, ptr @iqs62x_firmware_load._entry_ptr.57, ptr @iqs62x_firmware_parse._entry, ptr @iqs62x_firmware_parse._entry.60, ptr @iqs62x_firmware_parse._entry.62, ptr @iqs62x_firmware_parse._entry_ptr, ptr @iqs62x_firmware_parse._entry_ptr.61, ptr @iqs62x_firmware_parse._entry_ptr.64, ptr @iqs62x_i2c_driver_exit, ptr @iqs62x_irq._entry, ptr @iqs62x_irq._entry.67, ptr @iqs62x_irq._entry.70, ptr @iqs62x_irq._entry.73, ptr @iqs62x_irq._entry_ptr, ptr @iqs62x_irq._entry_ptr.69, ptr @iqs62x_irq._entry_ptr.72, ptr @iqs62x_irq._entry_ptr.75, ptr @iqs62x_probe._entry, ptr @iqs62x_probe._entry.11, ptr @iqs62x_probe._entry.14, ptr @iqs62x_probe._entry.18, ptr @iqs62x_probe._entry.8, ptr @iqs62x_probe._entry_ptr, ptr @iqs62x_probe._entry_ptr.10, ptr @iqs62x_probe._entry_ptr.13, ptr @iqs62x_probe._entry_ptr.16, ptr @iqs62x_probe._entry_ptr.20, ptr @iqs62x_events, ptr @iqs62x_i2c_driver, ptr @.str, ptr @iqs62x_of_match, ptr @iqs62x_pm, ptr @iqs62x_probe.__key, ptr @.str.1, ptr @iqs62x_probe._key, ptr @iqs62x_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @iqs62x_devs, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @init_completion.__key, ptr @.str.21, ptr @.str.22, ptr @iqs620at_sub_devs, ptr @iqs620at_cal_regs, ptr @.str.23, ptr @iqs620a_event_regs, ptr @.str.24, ptr @iqs620a_sub_devs, ptr @.str.25, ptr @iqs621_sub_devs, ptr @iqs621_cal_regs, ptr @.str.26, ptr @iqs621_event_regs, ptr @.str.27, ptr @iqs622_sub_devs, ptr @.str.28, ptr @iqs622_event_regs, ptr @.str.29, ptr @iqs624_sub_devs, ptr @.str.30, ptr @iqs624_event_regs, ptr @.str.31, ptr @iqs625_sub_devs, ptr @.str.32, ptr @iqs625_event_regs, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_events to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_devs to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs620at_sub_devs to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs620at_cal_regs to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs620a_event_regs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs620a_sub_devs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs621_sub_devs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs621_cal_regs to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs621_event_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs622_sub_devs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs622_event_regs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs624_sub_devs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs624_event_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs625_sub_devs to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs625_event_regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_firmware_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_firmware_load._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_firmware_load._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_firmware_load._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_firmware_load._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_firmware_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_firmware_parse._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_firmware_parse._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_irq._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_irq._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs62x_irq._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs62x_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @iqs62x_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iqs62x_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @iqs62x_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs62x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fw_done = getelementptr inbounds %struct.iqs62x_core, ptr %1, i32 0, i32 6
  tail call void @wait_for_completion(ptr noundef %fw_done) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs62x_probe(ptr noundef %client) #2 align 64 {
entry:
  %info = alloca %struct.iqs62x_info, align 1
  %val = alloca i32, align 4
  %fw_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %info) #6
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %info, align 1, !annotation !190
  %1 = getelementptr inbounds %struct.iqs62x_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !190
  %3 = getelementptr inbounds %struct.iqs62x_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val, align 4, !annotation !190
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_name) #6
  %6 = ptrtoint ptr %fw_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fw_name, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 240, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %client1 = getelementptr inbounds %struct.iqs62x_core, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %client1, align 4
  %nh = getelementptr inbounds %struct.iqs62x_core, ptr %call.i, i32 0, i32 3
  tail call void @__init_rwsem(ptr noundef %nh, ptr noundef nonnull @.str.1, ptr noundef nonnull @iqs62x_probe.__key) #6
  %head = getelementptr inbounds %struct.iqs62x_core, ptr %call.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %head, align 4
  %fw_blk_head = getelementptr inbounds %struct.iqs62x_core, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %fw_blk_head to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %fw_blk_head, ptr %fw_blk_head, align 4
  %prev.i = getelementptr inbounds %struct.iqs62x_core, ptr %call.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fw_blk_head, ptr %prev.i, align 4
  %ati_done = getelementptr inbounds %struct.iqs62x_core, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %ati_done to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ati_done, align 4
  %wait.i = getelementptr inbounds %struct.iqs62x_core, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #6
  %fw_done = getelementptr inbounds %struct.iqs62x_core, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %fw_done to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %fw_done, align 4
  %wait.i157 = getelementptr inbounds %struct.iqs62x_core, ptr %call.i, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i157, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #6
  %call6 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @iqs62x_regmap_config, ptr noundef nonnull @iqs62x_probe._key, ptr noundef nonnull @.str.2) #6
  %regmap = getelementptr inbounds %struct.iqs62x_core, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call6, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %15) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %call18 = call i32 @regmap_raw_read(ptr noundef %call6, i32 noundef 0, ptr noundef nonnull %info, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end16.for.body_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

for.body:                                         ; preds = %for.inc61.for.body_crit_edge, %if.end16.for.body_crit_edge
  %sw_num.0172 = phi i8 [ %sw_num.1, %for.inc61.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %i.0170 = phi i32 [ %inc62, %for.inc61.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %info, align 1
  %prod_num22 = getelementptr [6 x %struct.iqs62x_dev_desc], ptr @iqs62x_devs, i32 0, i32 %i.0170, i32 3
  %18 = ptrtoint ptr %prod_num22 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %prod_num22, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp24.not = icmp eq i8 %17, %19
  br i1 %cmp24.not, label %if.end27, label %for.body.for.inc61_crit_edge

for.body.for.inc61_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc61

if.end27:                                         ; preds = %for.body
  %arrayidx = getelementptr [6 x %struct.iqs62x_dev_desc], ptr @iqs62x_devs, i32 0, i32 %i.0170
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx, ptr %call.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 1
  %sw_num32 = getelementptr [6 x %struct.iqs62x_dev_desc], ptr @iqs62x_devs, i32 0, i32 %i.0170, i32 4
  %23 = ptrtoint ptr %sw_num32 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sw_num32, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp34 = icmp ult i8 %22, %24
  br i1 %cmp34, label %if.end27.for.inc61_crit_edge, label %for.cond39.preheader

if.end27.for.inc61_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc61

for.cond39.preheader:                             ; preds = %if.end27
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %num_cal_regs166 = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %num_cal_regs166 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_cal_regs166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp41167 = icmp sgt i32 %28, 0
  br i1 %cmp41167, label %for.cond39.preheader.for.body43_crit_edge, label %for.cond39.preheader.for.end_crit_edge

for.cond39.preheader.for.end_crit_edge:           ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond39.preheader.for.body43_crit_edge:        ; preds = %for.cond39.preheader
  br label %for.body43

for.body43:                                       ; preds = %for.inc.for.body43_crit_edge, %for.cond39.preheader.for.body43_crit_edge
  %29 = phi ptr [ %39, %for.inc.for.body43_crit_edge ], [ %26, %for.cond39.preheader.for.body43_crit_edge ]
  %j.0168 = phi i32 [ %inc, %for.inc.for.body43_crit_edge ], [ 0, %for.cond39.preheader.for.body43_crit_edge ]
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %cal_regs = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %29, i32 0, i32 5
  %32 = ptrtoint ptr %cal_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cal_regs, align 4
  %arrayidx46 = getelementptr i8, ptr %33, i32 %j.0168
  %34 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %35 to i32
  %call48 = call i32 @regmap_read(ptr noundef %31, i32 noundef %conv47, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %for.body43.cleanup_crit_edge

for.body43.cleanup_crit_edge:                     ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %for.body43
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool52.not = icmp eq i32 %37, 0
  br i1 %tobool52.not, label %if.end51.for.end_crit_edge, label %for.inc

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %if.end51
  %inc = add nuw nsw i32 %j.0168, 1
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %num_cal_regs = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %num_cal_regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_cal_regs, align 4
  %cmp41 = icmp slt i32 %inc, %41
  br i1 %cmp41, label %for.inc.for.body43_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body43_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body43

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end51.for.end_crit_edge, %for.cond39.preheader.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond39.preheader.for.end_crit_edge ], [ %j.0168, %if.end51.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %num_cal_regs56 = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %num_cal_regs56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_cal_regs56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa, i32 %45)
  %cmp57 = icmp eq i32 %j.0.lcssa, %45
  br i1 %cmp57, label %for.end.for.end63_crit_edge, label %for.end.for.inc61_crit_edge

for.end.for.inc61_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc61

for.end.for.end63_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end63

for.inc61:                                        ; preds = %for.end.for.inc61_crit_edge, %if.end27.for.inc61_crit_edge, %for.body.for.inc61_crit_edge
  %sw_num.1 = phi i8 [ %sw_num.0172, %for.body.for.inc61_crit_edge ], [ %sw_num.0172, %if.end27.for.inc61_crit_edge ], [ %22, %for.end.for.inc61_crit_edge ]
  %inc62 = add nuw nsw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc62, 6
  br i1 %exitcond.not, label %for.end63thread-pre-split, label %for.inc61.for.body_crit_edge

for.inc61.for.body_crit_edge:                     ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end63thread-pre-split:                        ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load ptr, ptr %call.i, align 4
  br label %for.end63

for.end63:                                        ; preds = %for.end63thread-pre-split, %for.end.for.end63_crit_edge
  %i.0163 = phi i32 [ 6, %for.end63thread-pre-split ], [ %i.0170, %for.end.for.end63_crit_edge ]
  %47 = phi ptr [ %.pr, %for.end63thread-pre-split ], [ %43, %for.end.for.end63_crit_edge ]
  %sw_num.2 = phi i8 [ %sw_num.1, %for.end63thread-pre-split ], [ %22, %for.end.for.end63_crit_edge ]
  %tobool65.not = icmp eq ptr %47, null
  br i1 %tobool65.not, label %do.end69, label %if.end73

do.end69:                                         ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %info, align 1
  %conv72 = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv72) #9
  br label %cleanup

if.end73:                                         ; preds = %for.end63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sw_num.2)
  %tobool74.not = icmp eq i8 %sw_num.2, 0
  br i1 %tobool74.not, label %do.end78, label %if.end82

do.end78:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %1, align 1
  %conv81 = zext i8 %51 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv81) #9
  br label %cleanup

if.end82:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0163)
  %cmp83 = icmp eq i32 %i.0163, 6
  br i1 %cmp83, label %do.end88, label %if.end90

do.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end90:                                         ; preds = %if.end82
  %call92 = call i32 @device_property_read_string(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull %fw_name) #6
  %52 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fw_name, align 4
  %tobool93.not = icmp eq ptr %53, null
  br i1 %tobool93.not, label %cond.false, label %if.end90.cond.end_crit_edge

if.end90.cond.end_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  %fw_name95 = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %55, i32 0, i32 20
  %56 = ptrtoint ptr %fw_name95 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fw_name95, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end90.cond.end_crit_edge
  %cond = phi ptr [ %57, %cond.false ], [ %53, %if.end90.cond.end_crit_edge ]
  %call97 = call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %cond, ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull %call.i, ptr noundef nonnull @iqs62x_firmware_load) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %cond.end.cleanup_crit_edge, label %do.end102

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end102:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call97) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %cond.end.cleanup_crit_edge, %do.end88, %do.end78, %do.end69, %for.body43.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then9 ], [ -61, %do.end88 ], [ -22, %do.end78 ], [ -22, %do.end69 ], [ -12, %entry.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ], [ %call97, %do.end102 ], [ 0, %cond.end.cleanup_crit_edge ], [ %call48, %for.body43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_name) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %info) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iqs62x_firmware_load(ptr noundef %fw, ptr noundef %context) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %tobool.not = icmp eq ptr %fw, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !190
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp167172.not.i = icmp eq i32 %4, 0
  br i1 %cmp167172.not.i, label %if.then.iqs62x_firmware_parse.exit_crit_edge, label %while.body.lr.ph.lr.ph.i

if.then.iqs62x_firmware_parse.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %iqs62x_firmware_parse.exit

while.body.lr.ph.lr.ph.i:                         ; preds = %if.then
  %data4.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %regmap.i = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 2
  %dev80.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %fw_blk_head.i = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 4
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %list_add.exit.i.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.lr.ph.i
  %5 = phi i32 [ %4, %while.body.lr.ph.lr.ph.i ], [ %43, %list_add.exit.i.while.body.lr.ph.i_crit_edge ]
  %hall_cal_index.0.ph174.i = phi i8 [ 0, %while.body.lr.ph.lr.ph.i ], [ %hall_cal_index.2.i, %list_add.exit.i.while.body.lr.ph.i_crit_edge ]
  %pos.0.ph173.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.i ], [ %sub.i, %list_add.exit.i.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pos.0168.i = phi i32 [ %pos.0.ph173.i, %while.body.lr.ph.i ], [ %sub.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %add.i = add i32 %pos.0168.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp3.i = icmp ugt i32 %add.i, %5
  br i1 %cmp3.i, label %while.body.i.do.end_crit_edge, label %if.end.i

while.body.i.do.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %while.body.i
  %6 = ptrtoint ptr %data4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data4.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %pos.0168.i
  %len6.i = getelementptr inbounds %struct.iqs62x_fw_rec, ptr %add.ptr.i, i32 0, i32 2
  %8 = ptrtoint ptr %len6.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len6.i, align 1
  %conv.i = zext i8 %9 to i32
  %add7.i = add i32 %pos.0168.i, 3
  %sub.i = add i32 %add7.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp9.i = icmp ugt i32 %sub.i, %5
  br i1 %cmp9.i, label %if.end.i.do.end_crit_edge, label %if.end12.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end12.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %do.end73.i [
    i8 0, label %if.end12.i.while.cond.backedge.i_crit_edge
    i8 1, label %sw.bb18.i
    i8 2, label %sw.bb28.i
    i8 3, label %sw.bb58.i
    i8 4, label %sw.bb68.i
  ]

if.end12.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %sw.bb18.i.while.cond.backedge.i_crit_edge, %if.end12.i.while.cond.backedge.i_crit_edge
  %cmp.i = icmp ult i32 %sub.i, %5
  br i1 %cmp.i, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.iqs62x_firmware_parse.exit_crit_edge

while.cond.backedge.i.iqs62x_firmware_parse.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iqs62x_firmware_parse.exit

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

sw.bb18.i:                                        ; preds = %if.end12.i
  %data19.i = getelementptr inbounds %struct.iqs62x_fw_rec, ptr %add.ptr.i, i32 0, i32 3
  %13 = ptrtoint ptr %data19.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data19.i, align 1
  %15 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %context, align 4
  %prod_num.i = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %prod_num.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %prod_num.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %18)
  %cmp22.i = icmp eq i8 %14, %18
  br i1 %cmp22.i, label %sw.bb18.i.while.cond.backedge.i_crit_edge, label %do.end.i

sw.bb18.i.while.cond.backedge.i_crit_edge:        ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.backedge.i

do.end.i:                                         ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv20.i = zext i8 %14 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80.i, ptr noundef nonnull @.str.58, i32 noundef %conv20.i) #9
  br label %do.end

sw.bb28.i:                                        ; preds = %if.end12.i
  %len6.i.le = getelementptr inbounds %struct.iqs62x_fw_rec, ptr %add.ptr.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hall_cal_index.0.ph174.i)
  %tobool.not.i = icmp eq i8 %hall_cal_index.0.ph174.i, 0
  br i1 %tobool.not.i, label %if.then29.i, label %sw.bb28.i.if.end46.i_crit_edge

sw.bb28.i.if.end46.i_crit_edge:                   ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.then29.i:                                      ; preds = %sw.bb28.i
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_write(ptr noundef %20, i32 noundef 240, i32 noundef 19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.then29.i.do.end_crit_edge

if.then29.i.do.end_crit_edge:                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end32.i:                                       ; preds = %if.then29.i
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call34.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 241, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end32.i.do.end_crit_edge

if.end32.i.do.end_crit_edge:                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end37.i:                                       ; preds = %if.end32.i
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  %25 = trunc i32 %24 to i8
  %conv38.i = and i8 %25, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv38.i)
  %tobool39.not.i = icmp eq i8 %conv38.i, 0
  br i1 %tobool39.not.i, label %do.end43.i, label %if.end37.i.if.end46.i_crit_edge

if.end37.i.if.end46.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

do.end43.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80.i, ptr noundef nonnull @.str.15) #9
  br label %do.end

if.end46.i:                                       ; preds = %if.end37.i.if.end46.i_crit_edge, %sw.bb28.i.if.end46.i_crit_edge
  %hall_cal_index.1.i = phi i8 [ %hall_cal_index.0.ph174.i, %sw.bb28.i.if.end46.i_crit_edge ], [ %conv38.i, %if.end37.i.if.end46.i_crit_edge ]
  %26 = ptrtoint ptr %len6.i.le to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %len6.i.le, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %hall_cal_index.1.i, i8 %27)
  %cmp50.i = icmp ugt i8 %hall_cal_index.1.i, %27
  br i1 %cmp50.i, label %if.end46.i.do.end_crit_edge, label %if.end53.i

if.end46.i.do.end_crit_edge:                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end53.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv47.i = zext i8 %hall_cal_index.1.i to i32
  %data54.i = getelementptr inbounds %struct.iqs62x_fw_rec, ptr %add.ptr.i, i32 0, i32 3
  %add.ptr56.i = getelementptr i8, ptr %data54.i, i32 -1
  %add.ptr57.i = getelementptr i8, ptr %add.ptr56.i, i32 %conv47.i
  br label %if.end79.i

sw.bb58.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp61.i = icmp ult i8 %9, 2
  br i1 %cmp61.i, label %sw.bb58.i.do.end_crit_edge, label %if.end64.i

sw.bb58.i.do.end_crit_edge:                       ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end64.i:                                       ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #8
  %data65.i = getelementptr inbounds %struct.iqs62x_fw_rec, ptr %add.ptr.i, i32 0, i32 3
  %28 = ptrtoint ptr %data65.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data65.i, align 1
  %add.ptr67.i = getelementptr i8, ptr %data65.i, i32 1
  br label %if.end79.i

sw.bb68.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %data69.i = getelementptr inbounds %struct.iqs62x_fw_rec, ptr %add.ptr.i, i32 0, i32 3
  br label %if.end79.i

do.end73.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv17.i = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80.i, ptr noundef nonnull @.str.63, i32 noundef %conv17.i) #9
  br label %do.end

if.end79.i:                                       ; preds = %sw.bb68.i, %if.end64.i, %if.end53.i
  %mask.1.i = phi i8 [ 0, %sw.bb68.i ], [ %29, %if.end64.i ], [ 0, %if.end53.i ]
  %len.1.i = phi i8 [ %9, %sw.bb68.i ], [ 1, %if.end64.i ], [ 1, %if.end53.i ]
  %data.1.i = phi ptr [ %data69.i, %sw.bb68.i ], [ %add.ptr67.i, %if.end64.i ], [ %add.ptr57.i, %if.end53.i ]
  %hall_cal_index.2.i = phi i8 [ %hall_cal_index.0.ph174.i, %sw.bb68.i ], [ %hall_cal_index.0.ph174.i, %if.end64.i ], [ %hall_cal_index.1.i, %if.end53.i ]
  %conv81.i = zext i8 %len.1.i to i32
  %spec.select.i140.i = add nuw nsw i32 %conv81.i, 12
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev80.i, i32 noundef %spec.select.i140.i, i32 noundef 3520) #6
  %tobool84.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool84.not.i, label %if.end79.i.do.end_crit_edge, label %if.end86.i

if.end79.i.do.end_crit_edge:                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end86.i:                                       ; preds = %if.end79.i
  %addr.i = getelementptr inbounds %struct.iqs62x_fw_rec, ptr %add.ptr.i, i32 0, i32 1
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr.i, align 1
  %addr87.i = getelementptr inbounds %struct.iqs62x_fw_blk, ptr %call.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %addr87.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %addr87.i, align 4
  %mask88.i = getelementptr inbounds %struct.iqs62x_fw_blk, ptr %call.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %mask88.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %mask.1.i, ptr %mask88.i, align 1
  %len89.i = getelementptr inbounds %struct.iqs62x_fw_blk, ptr %call.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %len89.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %len.1.i, ptr %len89.i, align 2
  %data90.i = getelementptr inbounds %struct.iqs62x_fw_blk, ptr %call.i.i, i32 0, i32 4
  %35 = call ptr @memcpy(ptr %data90.i, ptr %data.1.i, i32 %conv81.i)
  %36 = ptrtoint ptr %fw_blk_head.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fw_blk_head.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %fw_blk_head.i, ptr noundef %37) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end86.i.list_add.exit.i_crit_edge

if.end86.i.list_add.exit.i_crit_edge:             ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %call.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %fw_blk_head.i, ptr %prev3.i.i.i, align 4
  %41 = ptrtoint ptr %fw_blk_head.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call.i.i, ptr %fw_blk_head.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end86.i.list_add.exit.i_crit_edge
  %42 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fw, align 4
  %cmp167.i = icmp ult i32 %sub.i, %43
  br i1 %cmp167.i, label %list_add.exit.i.while.body.lr.ph.i_crit_edge, label %list_add.exit.i.iqs62x_firmware_parse.exit_crit_edge

list_add.exit.i.iqs62x_firmware_parse.exit_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iqs62x_firmware_parse.exit

list_add.exit.i.while.body.lr.ph.i_crit_edge:     ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.i

iqs62x_firmware_parse.exit:                       ; preds = %list_add.exit.i.iqs62x_firmware_parse.exit_crit_edge, %while.cond.backedge.i.iqs62x_firmware_parse.exit_crit_edge, %if.then.iqs62x_firmware_parse.exit_crit_edge
  call void @release_firmware(ptr noundef nonnull %fw) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end4

do.end:                                           ; preds = %if.end79.i.do.end_crit_edge, %do.end73.i, %sw.bb58.i.do.end_crit_edge, %if.end46.i.do.end_crit_edge, %do.end43.i, %if.end32.i.do.end_crit_edge, %if.then29.i.do.end_crit_edge, %do.end.i, %if.end.i.do.end_crit_edge, %while.body.i.do.end_crit_edge
  %ret.3.i.ph = phi i32 [ -22, %do.end73.i ], [ -61, %do.end43.i ], [ -22, %do.end.i ], [ -22, %while.body.i.do.end_crit_edge ], [ -22, %if.end.i.do.end_crit_edge ], [ -12, %if.end79.i.do.end_crit_edge ], [ -22, %sw.bb58.i.do.end_crit_edge ], [ -22, %if.end46.i.do.end_crit_edge ], [ %call34.i, %if.end32.i.do.end_crit_edge ], [ %call.i, %if.then29.i.do.end_crit_edge ]
  call void @release_firmware(ptr noundef nonnull %fw) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80.i, ptr noundef nonnull @.str.44, i32 noundef %ret.3.i.ph) #9
  br label %err_out

if.end4:                                          ; preds = %iqs62x_firmware_parse.exit, %entry.if.end4_crit_edge
  %call5 = call fastcc i32 @iqs62x_dev_init(ptr noundef %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.47, i32 noundef %call5) #9
  br label %err_out

if.end12:                                         ; preds = %if.end4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 2
  %call14 = call i32 @devm_request_threaded_irq(ptr noundef %dev13, i32 noundef %45, ptr noundef null, ptr noundef nonnull @iqs62x_irq, i32 noundef 8192, ptr noundef %name, ptr noundef %context) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.50, i32 noundef %call14) #9
  br label %err_out

if.end21:                                         ; preds = %if.end12
  %ati_done = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 5
  %call23 = call i32 @wait_for_completion_timeout(ptr noundef %ati_done, i32 noundef 200) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.53) #9
  br label %err_out

if.end30:                                         ; preds = %if.end21
  %46 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %context, align 4
  %sub_devs = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %sub_devs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sub_devs, align 4
  %num_sub_devs = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %47, i32 0, i32 2
  %50 = ptrtoint ptr %num_sub_devs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_sub_devs, align 4
  %call33 = call i32 @devm_mfd_add_devices(ptr noundef %dev13, i32 noundef -1, ptr noundef %49, i32 noundef %51, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end30.err_out_crit_edge, label %do.end38

if.end30.err_out_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.56, i32 noundef %call33) #9
  br label %err_out

err_out:                                          ; preds = %do.end38, %if.end30.err_out_crit_edge, %do.end28, %do.end19, %do.end10, %do.end
  %fw_done = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 6
  call void @complete_all(ptr noundef %fw_done) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iqs62x_dev_init(ptr noundef %iqs62x) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !190
  %fw_blk_head = getelementptr inbounds %struct.iqs62x_core, ptr %iqs62x, i32 0, i32 4
  %regmap = getelementptr inbounds %struct.iqs62x_core, ptr %iqs62x, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %if.end21.for.cond_crit_edge, %entry
  %fw_blk.0.in = phi ptr [ %fw_blk_head, %entry ], [ %fw_blk.0, %if.end21.for.cond_crit_edge ]
  %1 = ptrtoint ptr %fw_blk.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %fw_blk.0 = load ptr, ptr %fw_blk.0.in, align 4
  %cmp.not = icmp eq ptr %fw_blk.0, %fw_blk_head
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %addr = getelementptr inbounds %struct.iqs62x_fw_blk, ptr %fw_blk.0, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -48, i8 %3)
  %cmp2 = icmp eq i8 %3, -48
  br i1 %cmp2, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %data = getelementptr inbounds %struct.iqs62x_fw_blk, ptr %fw_blk.0, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  %6 = and i8 %5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 350) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %mask = getelementptr inbounds %struct.iqs62x_fw_blk, ptr %fw_blk.0, i32 0, i32 2
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr, align 4
  %conv16 = zext i8 %12 to i32
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv10 = zext i8 %8 to i32
  %data11 = getelementptr inbounds %struct.iqs62x_fw_blk, ptr %fw_blk.0, i32 0, i32 4
  %13 = ptrtoint ptr %data11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data11, align 1
  %conv13 = zext i8 %14 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %conv16, i32 noundef %conv10, i32 noundef %conv13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data17 = getelementptr inbounds %struct.iqs62x_fw_blk, ptr %fw_blk.0, i32 0, i32 4
  %len = getelementptr inbounds %struct.iqs62x_fw_blk, ptr %fw_blk.0, i32 0, i32 3
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %len, align 2
  %conv19 = zext i8 %16 to i32
  %call20 = tail call i32 @regmap_raw_write(ptr noundef %10, i32 noundef %conv16, ptr noundef %data17, i32 noundef %conv19) #6
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then6
  %ret.0 = phi i32 [ %call.i, %if.then6 ], [ %call20, %if.else ]
  %tobool22.not = icmp eq i32 %ret.0, 0
  br i1 %tobool22.not, label %if.end21.for.cond_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21.for.cond_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = ptrtoint ptr %iqs62x to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iqs62x, align 4
  %prod_num = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %prod_num to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %prod_num, align 4
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %20, label %sw.default [
    i8 65, label %for.end.sw.bb_crit_edge
    i8 66, label %for.end.sw.bb_crit_edge150
    i8 70, label %for.end.sw.bb42_crit_edge
  ]

for.end.sw.bb42_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb42

for.end.sw.bb_crit_edge150:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.end.sw.bb_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %for.end.sw.bb_crit_edge, %for.end.sw.bb_crit_edge150
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %prox_settings = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %18, i32 0, i32 14
  %24 = ptrtoint ptr %prox_settings to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %prox_settings, align 1
  %conv33 = zext i8 %25 to i32
  %call34 = call i32 @regmap_read(ptr noundef %23, i32 noundef %conv33, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %sw.bb
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %and38 = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.sw.bb42_crit_edge, label %if.then40

if.end37.sw.bb42_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb42

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %ui_sel = getelementptr inbounds %struct.iqs62x_core, ptr %iqs62x, i32 0, i32 7
  %28 = ptrtoint ptr %ui_sel to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %ui_sel, align 4
  br label %sw.bb42

sw.bb42:                                          ; preds = %if.then40, %if.end37.sw.bb42_crit_edge, %for.end.sw.bb42_crit_edge
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %31 = ptrtoint ptr %iqs62x to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iqs62x, align 4
  %prox_mask = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %prox_mask to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %prox_mask, align 4
  %sar_mask = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %32, i32 0, i32 8
  %35 = ptrtoint ptr %sar_mask to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sar_mask, align 1
  %hall_mask = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %32, i32 0, i32 9
  %37 = ptrtoint ptr %hall_mask to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hall_mask, align 2
  %hyst_mask = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %32, i32 0, i32 10
  %39 = ptrtoint ptr %hyst_mask to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hyst_mask, align 1
  %temp_mask = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %32, i32 0, i32 11
  %41 = ptrtoint ptr %temp_mask to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %temp_mask, align 4
  %als_mask = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %32, i32 0, i32 12
  %43 = ptrtoint ptr %als_mask to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %als_mask, align 1
  %ir_mask = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %32, i32 0, i32 13
  %45 = ptrtoint ptr %ir_mask to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ir_mask, align 2
  %47 = or i8 %34, %36
  %or48143 = or i8 %47, %38
  %or51144 = or i8 %or48143, %40
  %or54145 = or i8 %or51144, %42
  %or57146 = or i8 %or54145, %44
  %or60147 = or i8 %or57146, %46
  %or63148 = or i8 %or60147, 64
  %or63 = zext i8 %or63148 to i32
  %call64 = call i32 @regmap_write(ptr noundef %30, i32 noundef 215, i32 noundef %or63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %sw.bb42.sw.epilog_crit_edge, label %sw.bb42.cleanup_crit_edge

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb42.sw.epilog_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call69 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 112, i32 noundef 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end72:                                         ; preds = %sw.default
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call74 = call i32 @regmap_read(ptr noundef %51, i32 noundef 125, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  %52 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val, align 4
  %54 = ptrtoint ptr %iqs62x to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iqs62x, align 4
  %interval_div = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %55, i32 0, i32 19
  %56 = ptrtoint ptr %interval_div to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %interval_div, align 4
  %conv79 = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv79)
  %cmp80.not = icmp ult i32 %53, %conv79
  br i1 %cmp80.not, label %if.end83, label %if.end77.sw.epilog_crit_edge

if.end77.sw.epilog_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end83:                                         ; preds = %if.end77
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call88 = call i32 @regmap_write(ptr noundef %59, i32 noundef 125, i32 noundef %conv79) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end83.sw.epilog_crit_edge, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end83.sw.epilog_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end83.sw.epilog_crit_edge, %if.end77.sw.epilog_crit_edge, %sw.bb42.sw.epilog_crit_edge
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call.i149 = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 208, i32 noundef 106, i32 noundef 66, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool94.not = icmp eq i32 %call.i149, 0
  br i1 %tobool94.not, label %if.end96, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end96:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 5100, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %sw.epilog.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %sw.bb42.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end96 ], [ %call34, %sw.bb.cleanup_crit_edge ], [ %call64, %sw.bb42.cleanup_crit_edge ], [ %call69, %sw.default.cleanup_crit_edge ], [ %call74, %if.end72.cleanup_crit_edge ], [ %call88, %if.end83.cleanup_crit_edge ], [ %call.i149, %sw.epilog.cleanup_crit_edge ], [ %ret.0, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs62x_irq(i32 noundef %irq, ptr noundef %context) #2 align 64 {
entry:
  %event_data = alloca %struct.iqs62x_event_data, align 2
  %event_map = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %event_data) #6
  %2 = call ptr @memset(ptr %event_data, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %event_map) #6
  %regmap = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 2
  %3 = call ptr @memset(ptr %event_map, i32 255, i32 10)
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_raw_read(ptr noundef %5, i32 noundef 16, ptr noundef nonnull %event_map, i32 noundef 10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  %event_regs = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %7, i32 0, i32 21
  %ui_sel = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 7
  %8 = ptrtoint ptr %ui_sel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ui_sel, align 4
  %hyst_shift = getelementptr inbounds %struct.iqs62x_dev_desc, ptr %7, i32 0, i32 17
  %interval = getelementptr inbounds %struct.iqs62x_event_data, ptr %event_data, i32 0, i32 3
  %ir_flags = getelementptr inbounds %struct.iqs62x_event_data, ptr %event_data, i32 0, i32 2
  %als_flags = getelementptr inbounds %struct.iqs62x_event_data, ptr %event_data, i32 0, i32 1
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %call) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc36.for.body_crit_edge, %for.cond.preheader
  %i.0147 = phi i32 [ 0, %for.cond.preheader ], [ %inc37, %for.inc36.for.body_crit_edge ]
  %event_flags.0146 = phi i32 [ 0, %for.cond.preheader ], [ %event_flags.3, %for.inc36.for.body_crit_edge ]
  %10 = ptrtoint ptr %event_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %event_regs, align 4
  %arrayidx2 = getelementptr [10 x i32], ptr %11, i32 %9, i32 %i.0147
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %13, label %for.body.sw.epilog_crit_edge [
    i32 9, label %sw.bb
    i32 10, label %for.body.for.inc36_crit_edge
    i32 0, label %for.body.for.inc36_crit_edge150
    i32 5, label %sw.bb6
    i32 6, label %sw.bb8
    i32 8, label %sw.bb10
    i32 3, label %sw.bb12
  ]

for.body.for.inc36_crit_edge150:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc36

for.body.for.inc36_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc36

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx3 = getelementptr [10 x i8], ptr %event_map, i32 0, i32 %i.0147
  %15 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx3, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16) #6
  %18 = ptrtoint ptr %event_data to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %event_data, align 2
  br label %for.inc36

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx7 = getelementptr [10 x i8], ptr %event_map, i32 0, i32 %i.0147
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx7, align 1
  %21 = ptrtoint ptr %als_flags to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %als_flags, align 2
  br label %for.inc36

sw.bb8:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx9 = getelementptr [10 x i8], ptr %event_map, i32 0, i32 %i.0147
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx9, align 1
  %24 = ptrtoint ptr %ir_flags to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %ir_flags, align 1
  br label %for.inc36

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx11 = getelementptr [10 x i8], ptr %event_map, i32 0, i32 %i.0147
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx11, align 1
  %27 = ptrtoint ptr %interval to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %interval, align 2
  br label %for.inc36

sw.bb12:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %hyst_shift to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hyst_shift, align 2
  %conv = zext i8 %29 to i32
  %arrayidx14 = getelementptr [10 x i8], ptr %event_map, i32 0, i32 %i.0147
  %30 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %31 to i32
  %shl = shl i32 %conv15, %conv
  %conv16 = trunc i32 %shl to i8
  store i8 %conv16, ptr %arrayidx14, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %for.body.sw.epilog_crit_edge
  %arrayidx27 = getelementptr [10 x i8], ptr %event_map, i32 0, i32 %i.0147
  br label %for.body21

for.body21:                                       ; preds = %for.inc.for.body21_crit_edge, %sw.epilog
  %j.0145 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.inc.for.body21_crit_edge ]
  %event_flags.1144 = phi i32 [ %event_flags.0146, %sw.epilog ], [ %event_flags.2, %for.inc.for.body21_crit_edge ]
  %arrayidx22 = getelementptr [22 x %struct.iqs62x_event_desc], ptr @iqs62x_events, i32 0, i32 %j.0145
  %32 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %event_desc.sroa.0.0.copyload121 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %event_desc.sroa.0.0.copyload121, i32 %13)
  %cmp23.not = icmp eq i32 %event_desc.sroa.0.0.copyload121, %13
  br i1 %cmp23.not, label %if.end26, label %for.body21.for.inc_crit_edge

for.body21.for.inc_crit_edge:                     ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end26:                                         ; preds = %for.body21
  %event_desc.sroa.6.0.arrayidx22.sroa_idx = getelementptr inbounds i8, ptr %arrayidx22, i32 5
  %33 = ptrtoint ptr %event_desc.sroa.6.0.arrayidx22.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %33)
  %event_desc.sroa.6.0.copyload123 = load i8, ptr %event_desc.sroa.6.0.arrayidx22.sroa_idx, align 1
  %event_desc.sroa.5.0.arrayidx22.sroa_idx = getelementptr inbounds i8, ptr %arrayidx22, i32 4
  %34 = ptrtoint ptr %event_desc.sroa.5.0.arrayidx22.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %34)
  %event_desc.sroa.5.0.copyload122 = load i8, ptr %event_desc.sroa.5.0.arrayidx22.sroa_idx, align 4
  %35 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx27, align 1
  %and143 = and i8 %36, %event_desc.sroa.5.0.copyload122
  call void @__sanitizer_cov_trace_cmp1(i8 %and143, i8 %event_desc.sroa.6.0.copyload123)
  %cmp31 = icmp eq i8 %and143, %event_desc.sroa.6.0.copyload123
  br i1 %cmp31, label %if.then33, label %if.end26.for.inc_crit_edge

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %shl34 = shl nuw nsw i32 1, %j.0145
  %or = or i32 %shl34, %event_flags.1144
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %if.end26.for.inc_crit_edge, %for.body21.for.inc_crit_edge
  %event_flags.2 = phi i32 [ %event_flags.1144, %for.body21.for.inc_crit_edge ], [ %or, %if.then33 ], [ %event_flags.1144, %if.end26.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %j.0145, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.inc.for.inc36_crit_edge, label %for.inc.for.body21_crit_edge

for.inc.for.body21_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21

for.inc.for.inc36_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc36

for.inc36:                                        ; preds = %for.inc.for.inc36_crit_edge, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb, %for.body.for.inc36_crit_edge, %for.body.for.inc36_crit_edge150
  %event_flags.3 = phi i32 [ %event_flags.0146, %sw.bb10 ], [ %event_flags.0146, %sw.bb8 ], [ %event_flags.0146, %sw.bb6 ], [ %event_flags.0146, %for.body.for.inc36_crit_edge ], [ %event_flags.0146, %for.body.for.inc36_crit_edge150 ], [ %event_flags.0146, %sw.bb ], [ %event_flags.2, %for.inc.for.inc36_crit_edge ]
  %inc37 = add nuw nsw i32 %i.0147, 1
  %exitcond149.not = icmp eq i32 %inc37, 10
  br i1 %exitcond149.not, label %for.end38, label %for.inc36.for.body_crit_edge

for.inc36.for.body_crit_edge:                     ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end38:                                        ; preds = %for.inc36
  %and39 = and i32 %event_flags.3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else, label %do.end44

do.end44:                                         ; preds = %for.end38
  %dev45 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.68) #9
  %call46 = call fastcc i32 @iqs62x_dev_init(ptr noundef %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.71, i32 noundef %call46) #9
  br label %cleanup

if.end53:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  %event_cache = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 8
  %37 = ptrtoint ptr %event_cache to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %event_cache, align 4
  %or54 = or i32 %38, 1048576
  store i32 %or54, ptr %event_cache, align 4
  %ati_done = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 5
  %39 = ptrtoint ptr %ati_done to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %ati_done, align 4
  br label %if.end77

if.else:                                          ; preds = %for.end38
  %and55 = and i32 %event_flags.3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.else61, label %if.then57

if.then57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %event_cache58 = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 8
  %40 = ptrtoint ptr %event_cache58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %event_cache58, align 4
  %or59 = or i32 %41, 2097152
  store i32 %or59, ptr %event_cache58, align 4
  %ati_done60 = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 5
  %42 = ptrtoint ptr %ati_done60 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %ati_done60, align 4
  br label %if.end77

if.else61:                                        ; preds = %if.else
  %ati_done62 = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 5
  %call63 = call zeroext i1 @completion_done(ptr noundef %ati_done62) #6
  br i1 %call63, label %if.else61.if.end77_crit_edge, label %if.then64

if.else61.if.end77_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then64:                                        ; preds = %if.else61
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 208, i32 noundef 32, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool67.not = icmp eq i32 %call.i, 0
  br i1 %tobool67.not, label %if.end73, label %do.end71

do.end71:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %dev72 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.74, i32 noundef %call.i) #9
  br label %cleanup

if.end73:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 250) #6
  call void @complete_all(ptr noundef %ati_done62) #6
  br label %if.end77

if.end77:                                         ; preds = %if.end73, %if.else61.if.end77_crit_edge, %if.then57, %if.end53
  %ati_done78 = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 5
  %call79 = call zeroext i1 @completion_done(ptr noundef %ati_done78) #6
  br i1 %call79, label %if.then80, label %if.end77.if.end89_crit_edge

if.end77.if.end89_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then80:                                        ; preds = %if.end77
  %event_cache81 = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 8
  %45 = ptrtoint ptr %event_cache81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %event_cache81, align 4
  %or82 = or i32 %46, %event_flags.3
  %nh = getelementptr inbounds %struct.iqs62x_core, ptr %context, i32 0, i32 3
  %call83 = call i32 @blocking_notifier_call_chain(ptr noundef %nh, i32 noundef %or82, ptr noundef nonnull %event_data) #6
  %and84 = and i32 %call83, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end87, label %if.then80.cleanup_crit_edge

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end87:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %event_cache81 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %event_cache81, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.end87, %if.end77.if.end89_crit_edge
  call void @usleep_range_state(i32 noundef 150, i32 noundef 200, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.then80.cleanup_crit_edge, %do.end71, %do.end51, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end51 ], [ 1, %if.end89 ], [ 0, %do.end71 ], [ 0, %if.then80.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %event_map) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %event_data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs62x_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw_done = getelementptr inbounds %struct.iqs62x_core, ptr %1, i32 0, i32 6
  tail call void @wait_for_completion(ptr noundef %fw_done) #6
  %regmap = getelementptr inbounds %struct.iqs62x_core, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 210, i32 noundef 32, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 210, i32 noundef 24, i32 noundef 24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i8, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs62x_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.iqs62x_core, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 210, i32 noundef 24, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i7 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 210, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i7, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !21, !23, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @iqs62x_events, !1, !"iqs62x_events", i1 false, i1 false}
!1 = !{!"../drivers/mfd/iqs62x.c", i32 340, i32 32}
!2 = !{ptr @__ksymtab_iqs62x_events, !3, !"__ksymtab_iqs62x_events", i1 false, i1 false}
!3 = !{!"../drivers/mfd/iqs62x.c", i32 452, i32 1}
!4 = !{ptr @__initcall__kmod_iqs62x__288_1077_iqs62x_i2c_driver_init6, !5, !"__initcall__kmod_iqs62x__288_1077_iqs62x_i2c_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/mfd/iqs62x.c", i32 1077, i32 1}
!6 = !{ptr @__exitcall_iqs62x_i2c_driver_exit, !5, !"__exitcall_iqs62x_i2c_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author289, !8, !"__UNIQUE_ID_author289", i1 false, i1 false}
!8 = !{!"../drivers/mfd/iqs62x.c", i32 1079, i32 1}
!9 = !{ptr @__UNIQUE_ID_description290, !10, !"__UNIQUE_ID_description290", i1 false, i1 false}
!10 = !{!"../drivers/mfd/iqs62x.c", i32 1080, i32 1}
!11 = !{ptr @__UNIQUE_ID_file291, !12, !"__UNIQUE_ID_file291", i1 false, i1 false}
!12 = !{!"../drivers/mfd/iqs62x.c", i32 1081, i32 1}
!13 = !{ptr @__UNIQUE_ID_license292, !12, !"__UNIQUE_ID_license292", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/iqs62x.c", i32 1070, i32 11}
!16 = !{ptr @iqs62x_i2c_driver, !17, !"iqs62x_i2c_driver", i1 false, i1 false}
!17 = !{!"../drivers/mfd/iqs62x.c", i32 1068, i32 26}
!18 = !{ptr @iqs62x_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/mfd/iqs62x.c", i32 911, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @iqs62x_probe._key, !22, !"_key", i1 false, i1 false}
!22 = !{!"../drivers/mfd/iqs62x.c", i32 917, i32 19}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/iqs62x.c", i32 920, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @iqs62x_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @iqs62x_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/iqs62x.c", i32 983, i32 3}
!34 = !{ptr @iqs62x_probe._entry.8, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @iqs62x_probe._entry_ptr.10, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/iqs62x.c", i32 989, i32 3}
!38 = !{ptr @iqs62x_probe._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @iqs62x_probe._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/iqs62x.c", i32 995, i32 3}
!42 = !{ptr @iqs62x_probe._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @iqs62x_probe._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/iqs62x.c", i32 999, i32 44}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mfd/iqs62x.c", i32 1006, i32 3}
!48 = !{ptr @iqs62x_probe._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @iqs62x_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @init_completion.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/completion.h", i32 87, i32 2}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @iqs62x_regmap_config, !54, !"iqs62x_regmap_config", i1 false, i1 false}
!54 = !{!"../drivers/mfd/iqs62x.c", i32 889, i32 35}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/iqs62x.c", i32 796, i32 15}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mfd/iqs62x.c", i32 810, i32 14}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/iqs62x.c", i32 814, i32 15}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/iqs62x.c", i32 830, i32 15}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/iqs62x.c", i32 845, i32 14}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mfd/iqs62x.c", i32 849, i32 15}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mfd/iqs62x.c", i32 862, i32 14}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mfd/iqs62x.c", i32 866, i32 15}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mfd/iqs62x.c", i32 873, i32 14}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mfd/iqs62x.c", i32 877, i32 15}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mfd/iqs62x.c", i32 884, i32 14}
!77 = !{ptr @iqs62x_devs, !78, !"iqs62x_devs", i1 false, i1 false}
!78 = !{!"../drivers/mfd/iqs62x.c", i32 794, i32 37}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mfd/iqs62x.c", i32 631, i32 11}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mfd/iqs62x.c", i32 632, i32 20}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mfd/iqs62x.c", i32 635, i32 11}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/iqs62x.c", i32 636, i32 20}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mfd/iqs62x.c", i32 638, i32 12}
!89 = !{ptr @iqs620at_sub_devs, !90, !"iqs620at_sub_devs", i1 false, i1 false}
!90 = !{!"../drivers/mfd/iqs62x.c", i32 629, i32 30}
!91 = !{ptr @iqs620at_cal_regs, !92, !"iqs620at_cal_regs", i1 false, i1 false}
!92 = !{!"../drivers/mfd/iqs62x.c", i32 684, i32 17}
!93 = !{ptr @iqs620a_event_regs, !94, !"iqs620a_event_regs", i1 false, i1 false}
!94 = !{!"../drivers/mfd/iqs62x.c", i32 695, i32 36}
!95 = !{ptr @iqs620a_sub_devs, !96, !"iqs620a_sub_devs", i1 false, i1 false}
!96 = !{!"../drivers/mfd/iqs62x.c", i32 641, i32 30}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mfd/iqs62x.c", i32 655, i32 20}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mfd/iqs62x.c", i32 657, i32 12}
!101 = !{ptr @iqs621_sub_devs, !102, !"iqs621_sub_devs", i1 false, i1 false}
!102 = !{!"../drivers/mfd/iqs62x.c", i32 652, i32 30}
!103 = !{ptr @iqs621_cal_regs, !104, !"iqs621_cal_regs", i1 false, i1 false}
!104 = !{!"../drivers/mfd/iqs62x.c", i32 690, i32 17}
!105 = !{ptr @iqs621_event_regs, !106, !"iqs621_event_regs", i1 false, i1 false}
!106 = !{!"../drivers/mfd/iqs62x.c", i32 722, i32 36}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mfd/iqs62x.c", i32 663, i32 20}
!109 = !{ptr @iqs622_sub_devs, !110, !"iqs622_sub_devs", i1 false, i1 false}
!110 = !{!"../drivers/mfd/iqs62x.c", i32 660, i32 30}
!111 = !{ptr @iqs622_event_regs, !112, !"iqs622_event_regs", i1 false, i1 false}
!112 = !{!"../drivers/mfd/iqs62x.c", i32 737, i32 36}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mfd/iqs62x.c", i32 671, i32 20}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mfd/iqs62x.c", i32 673, i32 12}
!117 = !{ptr @iqs624_sub_devs, !118, !"iqs624_sub_devs", i1 false, i1 false}
!118 = !{!"../drivers/mfd/iqs62x.c", i32 668, i32 30}
!119 = !{ptr @iqs624_event_regs, !120, !"iqs624_event_regs", i1 false, i1 false}
!120 = !{!"../drivers/mfd/iqs62x.c", i32 764, i32 36}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mfd/iqs62x.c", i32 679, i32 20}
!123 = !{ptr @iqs625_sub_devs, !124, !"iqs625_sub_devs", i1 false, i1 false}
!124 = !{!"../drivers/mfd/iqs62x.c", i32 676, i32 30}
!125 = !{ptr @iqs625_event_regs, !126, !"iqs625_event_regs", i1 false, i1 false}
!126 = !{!"../drivers/mfd/iqs62x.c", i32 779, i32 36}
!127 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mfd/iqs62x.c", i32 592, i32 4}
!129 = !{ptr @.str.45, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @iqs62x_firmware_load._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @iqs62x_firmware_load._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mfd/iqs62x.c", i32 600, i32 3}
!134 = !{ptr @iqs62x_firmware_load._entry.46, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @iqs62x_firmware_load._entry_ptr.48, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.50, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mfd/iqs62x.c", i32 608, i32 3}
!138 = !{ptr @iqs62x_firmware_load._entry.49, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @iqs62x_firmware_load._entry_ptr.51, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mfd/iqs62x.c", i32 614, i32 3}
!142 = !{ptr @iqs62x_firmware_load._entry.52, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @iqs62x_firmware_load._entry_ptr.54, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mfd/iqs62x.c", i32 623, i32 3}
!146 = !{ptr @iqs62x_firmware_load._entry.55, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @iqs62x_firmware_load._entry_ptr.57, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.58, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mfd/iqs62x.c", i32 254, i32 4}
!150 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @iqs62x_firmware_parse._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @iqs62x_firmware_parse._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @iqs62x_firmware_parse._entry.60, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../drivers/mfd/iqs62x.c", i32 275, i32 6}
!155 = !{ptr @iqs62x_firmware_parse._entry_ptr.61, !154, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mfd/iqs62x.c", i32 310, i32 4}
!158 = !{ptr @iqs62x_firmware_parse._entry.62, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @iqs62x_firmware_parse._entry_ptr.64, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mfd/iqs62x.c", i32 474, i32 3}
!162 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @iqs62x_irq._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @iqs62x_irq._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mfd/iqs62x.c", i32 531, i32 3}
!167 = !{ptr @iqs62x_irq._entry.67, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @iqs62x_irq._entry_ptr.69, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mfd/iqs62x.c", i32 535, i32 4}
!171 = !{ptr @iqs62x_irq._entry.70, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @iqs62x_irq._entry_ptr.72, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.74, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mfd/iqs62x.c", i32 549, i32 4}
!175 = !{ptr @iqs62x_irq._entry.73, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @iqs62x_irq._entry_ptr.75, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @iqs62x_of_match, !178, !"iqs62x_of_match", i1 false, i1 false}
!178 = !{!"../drivers/mfd/iqs62x.c", i32 1058, i32 34}
!179 = !{ptr @iqs62x_pm, !180, !"iqs62x_pm", i1 false, i1 false}
!180 = !{!"../drivers/mfd/iqs62x.c", i32 1056, i32 8}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{!"auto-init"}
