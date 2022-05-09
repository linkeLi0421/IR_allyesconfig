; ModuleID = '/llk/IR_all_yes/drivers/mfd/rave-sp.c_pt.bc'
source_filename = "../drivers/mfd/rave-sp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+devm_rave_sp_register_event_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_rave_sp_register_event_notifier\09\09\09\09"
module asm "\09.long\09__crc_devm_rave_sp_register_event_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_rave_sp_register_event_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_rave_sp_register_event_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_devm_rave_sp_register_event_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rave_sp_exec\22, \22a\22\09"
module asm "\09.weak\09__crc_rave_sp_exec\09\09\09\09"
module asm "\09.long\09__crc_rave_sp_exec\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rave_sp_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22rave_sp_exec\22\09\09\09\09\09"
module asm "__kstrtabns_rave_sp_exec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.serdev_device_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rave_sp_variant = type { ptr, %struct.rave_sp_variant_cmds }
%struct.rave_sp_variant_cmds = type { ptr, ptr }
%struct.rave_sp_checksum = type { i32, ptr }
%struct.serdev_device_ops = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.rave_sp = type { ptr, %struct.rave_sp_deframer, %struct.atomic_t, %struct.mutex, %struct.mutex, ptr, ptr, %struct.blocking_notifier_head, ptr, ptr }
%struct.rave_sp_deframer = type { i32, [66 x i8], i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rave_sp_reply = type { i32, ptr, i8, i8, %struct.completion }
%struct.serdev_device = type { %struct.device, i32, ptr, ptr, %struct.completion, %struct.mutex }
%struct.rave_sp_status = type <{ %struct.rave_sp_version, %struct.rave_sp_version, i16, i16, i8, i8, i32, [2 x i16], [3 x i8], i8, i8, i16, i8, i8, i8, i8, i8, i8, i8 }>
%struct.rave_sp_version = type <{ i8, i16, i8, [2 x i8] }>

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rave_sp_unregister_event_notifier\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_devm_rave_sp_register_event_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_rave_sp_register_event_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_rave_sp_register_event_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_rave_sp_register_event_notifier to i32), ptr @__kstrtab_devm_rave_sp_register_event_notifier, ptr @__kstrtabns_devm_rave_sp_register_event_notifier }, section "___ksymtab_gpl+devm_rave_sp_register_event_notifier", align 4
@rave_sp_exec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 375, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Command timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rave_sp_exec\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mfd/rave-sp.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rave_sp_exec._entry_ptr = internal global ptr @rave_sp_exec._entry, section ".printk_index", align 4
@__kstrtab_rave_sp_exec = external dso_local constant [0 x i8], align 1
@__kstrtabns_rave_sp_exec = external dso_local constant [0 x i8], align 1
@__ksymtab_rave_sp_exec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rave_sp_exec to i32), ptr @__kstrtab_rave_sp_exec, ptr @__kstrtabns_rave_sp_exec }, section "___ksymtab_gpl+rave_sp_exec", align 4
@__initcall__kmod_rave_sp__192_837_rave_sp_drv_init6 = internal global ptr @rave_sp_drv_init, section ".initcall6.init", align 4
@rave_sp_drv = internal global { %struct.serdev_device_driver, [44 x i8] } { %struct.serdev_device_driver { %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rave_sp_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rave_sp_probe, ptr null }, [44 x i8] zeroinitializer }, align 32
@__exitcall_rave_sp_drv_exit = internal global ptr @rave_sp_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file193 = internal constant [33 x i8] c"rave_sp.file=drivers/mfd/rave-sp\00", section ".modinfo", align 1
@__UNIQUE_ID_license194 = internal constant [20 x i8] c"rave_sp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author195 = internal constant [70 x i8] c"rave_sp.author=Andrey Vostrikov <andrey.vostrikov@cogentembedded.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author196 = internal constant [67 x i8] c"rave_sp.author=Nikita Yushchenko <nikita.yoush@cogentembedded.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author197 = internal constant [57 x i8] c"rave_sp.author=Andrey Smirnov <andrew.smirnov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description198 = internal constant [40 x i8] c"rave_sp.description=RAVE SP core driver\00", section ".modinfo", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rave_sp_write.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rave_sp\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rave_sp_write\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rave-sp tx: \00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rave-sp\00", [24 x i8] zeroinitializer }, align 32
@rave_sp_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zii,rave-sp-niu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rave_sp_legacy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zii,rave-sp-mezz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rave_sp_legacy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zii,rave-sp-esb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rave_sp_legacy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zii,rave-sp-rdu1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rave_sp_rdu1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zii,rave-sp-rdu2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rave_sp_rdu2 }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@rave_sp_legacy = internal constant { %struct.rave_sp_variant, [20 x i8] } { %struct.rave_sp_variant { ptr @rave_sp_checksum_ccitt, %struct.rave_sp_variant_cmds { ptr @rave_sp_default_cmd_translate, ptr @rave_sp_emulated_get_status } }, [20 x i8] zeroinitializer }, align 32
@rave_sp_rdu1 = internal constant { %struct.rave_sp_variant, [20 x i8] } { %struct.rave_sp_variant { ptr @rave_sp_checksum_8b2c, %struct.rave_sp_variant_cmds { ptr @rave_sp_rdu1_cmd_translate, ptr @rave_sp_rdu1_get_status } }, [20 x i8] zeroinitializer }, align 32
@rave_sp_rdu2 = internal constant { %struct.rave_sp_variant, [20 x i8] } { %struct.rave_sp_variant { ptr @rave_sp_checksum_ccitt, %struct.rave_sp_variant_cmds { ptr @rave_sp_rdu2_cmd_translate, ptr @rave_sp_emulated_get_status } }, [20 x i8] zeroinitializer }, align 32
@rave_sp_checksum_ccitt = internal constant { %struct.rave_sp_checksum, [24 x i8] } { %struct.rave_sp_checksum { i32 2, ptr @csum_ccitt }, [24 x i8] zeroinitializer }, align 32
@rave_sp_checksum_8b2c = internal constant { %struct.rave_sp_checksum, [24 x i8] } { %struct.rave_sp_checksum { i32 1, ptr @csum_8b2c }, [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unknown\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"current-speed\00", [18 x i8] zeroinitializer }, align 32
@rave_sp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 778, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"'current-speed' is not specified in device node\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rave_sp_probe\00", [18 x i8] zeroinitializer }, align 32
@rave_sp_probe._entry_ptr = internal global ptr @rave_sp_probe._entry, section ".printk_index", align 4
@rave_sp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&sp->bus_lock\00", [18 x i8] zeroinitializer }, align 32
@rave_sp_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sp->reply_lock\00", [16 x i8] zeroinitializer }, align 32
@rave_sp_probe.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&sp->event_notifier_list)->rwsem\00", [61 x i8] zeroinitializer }, align 32
@rave_sp_serdev_device_ops = internal constant { %struct.serdev_device_ops, [24 x i8] } { %struct.serdev_device_ops { ptr @rave_sp_receive_buf, ptr @serdev_device_write_wakeup }, [24 x i8] zeroinitializer }, align 32
@rave_sp_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.3, i32 807, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to set parity\0A\00", [42 x i8] zeroinitializer }, align 32
@rave_sp_probe._entry_ptr.23 = internal global ptr @rave_sp_probe._entry.21, section ".printk_index", align 4
@rave_sp_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.15, ptr @.str.3, i32 813, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to get firmware status: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rave_sp_probe._entry_ptr.27 = internal global ptr @rave_sp_probe._entry.24, section ".printk_index", align 4
@rave_sp_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.15, ptr @.str.3, i32 822, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Firmware version: %s\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rave_sp_probe._entry_ptr.31 = internal global ptr @rave_sp_probe._entry.28, section ".printk_index", align 4
@rave_sp_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.15, ptr @.str.3, i32 823, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bootloader version: %s\00", [41 x i8] zeroinitializer }, align 32
@rave_sp_probe._entry_ptr.34 = internal global ptr @rave_sp_probe._entry.32, section ".printk_index", align 4
@rave_sp_receive_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 511, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Bad frame: STX before ETX\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rave_sp_receive_buf\00", [44 x i8] zeroinitializer }, align 32
@rave_sp_receive_buf._entry_ptr = internal global ptr @rave_sp_receive_buf._entry, section ".printk_index", align 4
@rave_sp_receive_buf._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 548, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad frame: Too long\0A\00", [43 x i8] zeroinitializer }, align 32
@rave_sp_receive_buf._entry_ptr.39 = internal global ptr @rave_sp_receive_buf._entry.37, section ".printk_index", align 4
@rave_sp_receive_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 448, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Checksum too long, dropping\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rave_sp_receive_frame\00", [42 x i8] zeroinitializer }, align 32
@rave_sp_receive_frame._entry_ptr = internal global ptr @rave_sp_receive_frame._entry, section ".printk_index", align 4
@rave_sp_receive_frame.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rave-sp rx: \00", [19 x i8] zeroinitializer }, align 32
@rave_sp_receive_frame._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.3, i32 456, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Dropping short frame\0A\00", [42 x i8] zeroinitializer }, align 32
@rave_sp_receive_frame._entry_ptr.45 = internal global ptr @rave_sp_receive_frame._entry.43, section ".printk_index", align 4
@rave_sp_receive_frame._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.41, ptr @.str.3, i32 464, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Dropping bad frame\0A\00", [44 x i8] zeroinitializer }, align 32
@rave_sp_receive_frame._entry_ptr.48 = internal global ptr @rave_sp_receive_frame._entry.46, section ".printk_index", align 4
@rave_sp_receive_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 424, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Ignoring incorrect reply\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rave_sp_receive_reply\00", [42 x i8] zeroinitializer }, align 32
@rave_sp_receive_reply._entry_ptr = internal global ptr @rave_sp_receive_reply._entry, section ".printk_index", align 4
@rave_sp_receive_reply.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Code:   expected = 0x%08x received = 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@rave_sp_receive_reply.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.50, ptr @.str.3, ptr @.str.52, i8 0, i8 107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ACK ID: expected = 0x%08x received = 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@rave_sp_receive_reply.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.50, ptr @.str.3, ptr @.str.53, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Length: expected = %zu received = %zu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%02d%02d%02d.%c%c\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [49 x i64] [i64 47, i64 8, i64 160, i64 161, i64 162, i64 163, i64 164, i64 165, i64 166, i64 167, i64 168, i64 169, i64 170, i64 171, i64 172, i64 173, i64 174, i64 175, i64 176, i64 177, i64 178, i64 179, i64 180, i64 181, i64 182, i64 183, i64 184, i64 185, i64 186, i64 187, i64 188, i64 189, i64 190, i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 16]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 16]
@__sancov_gen_cov_switch_values.57 = internal global [10 x i64] [i64 8, i64 32, i64 32, i64 33, i64 38, i64 161, i64 162, i64 164, i64 167, i64 168]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 16]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 224, i32 9 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 375, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"rave_sp_drv\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 830, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 87, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 305, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 833, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"rave_sp_dt_ids\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 754, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant [15 x i8] c"rave_sp_legacy\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 730, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"rave_sp_rdu1\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 738, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant [13 x i8] c"rave_sp_rdu2\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 746, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant [23 x i8] c"rave_sp_checksum_ccitt\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 725, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant [22 x i8] c"rave_sp_checksum_8b2c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 720, i32 38 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 771, i32 24 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 776, i32 41 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 777, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 793, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 794, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 795, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [26 x i8] c"rave_sp_serdev_device_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 763, i32 39 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 807, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 813, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 822, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 823, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 511, i32 5 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 548, i32 5 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 448, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 452, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 456, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 464, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 424, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 425, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 427, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 429, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private constant [25 x i8] c"../drivers/mfd/rave-sp.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 656, i32 41 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author195, ptr @__UNIQUE_ID_author196, ptr @__UNIQUE_ID_author197, ptr @__UNIQUE_ID_description198, ptr @__UNIQUE_ID_file193, ptr @__UNIQUE_ID_license194, ptr @__exitcall_rave_sp_drv_exit, ptr @__initcall__kmod_rave_sp__192_837_rave_sp_drv_init6, ptr @__ksymtab_devm_rave_sp_register_event_notifier, ptr @__ksymtab_rave_sp_exec, ptr @rave_sp_drv_exit, ptr @rave_sp_exec._entry, ptr @rave_sp_exec._entry_ptr, ptr @rave_sp_probe._entry, ptr @rave_sp_probe._entry.21, ptr @rave_sp_probe._entry.24, ptr @rave_sp_probe._entry.28, ptr @rave_sp_probe._entry.32, ptr @rave_sp_probe._entry_ptr, ptr @rave_sp_probe._entry_ptr.23, ptr @rave_sp_probe._entry_ptr.27, ptr @rave_sp_probe._entry_ptr.31, ptr @rave_sp_probe._entry_ptr.34, ptr @rave_sp_receive_buf._entry, ptr @rave_sp_receive_buf._entry.37, ptr @rave_sp_receive_buf._entry_ptr, ptr @rave_sp_receive_buf._entry_ptr.39, ptr @rave_sp_receive_frame._entry, ptr @rave_sp_receive_frame._entry.43, ptr @rave_sp_receive_frame._entry.46, ptr @rave_sp_receive_frame._entry_ptr, ptr @rave_sp_receive_frame._entry_ptr.45, ptr @rave_sp_receive_frame._entry_ptr.48, ptr @rave_sp_receive_reply._entry, ptr @rave_sp_receive_reply._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rave_sp_drv, ptr @init_completion.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @rave_sp_dt_ids, ptr @rave_sp_legacy, ptr @rave_sp_rdu1, ptr @rave_sp_rdu2, ptr @rave_sp_checksum_ccitt, ptr @rave_sp_checksum_8b2c, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rave_sp_probe.__key, ptr @.str.16, ptr @rave_sp_probe.__key.17, ptr @.str.18, ptr @rave_sp_probe.__key.19, ptr @.str.20, ptr @rave_sp_serdev_device_ops, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_exec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_drv to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_legacy to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_rdu1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_rdu2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_checksum_ccitt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_checksum_8b2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_probe.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_serdev_device_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_receive_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_receive_buf._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_receive_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_receive_frame._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_receive_frame._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_receive_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_rave_sp_register_event_notifier(ptr noundef %dev, ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @rave_sp_unregister_event_notifier, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #10
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %event_notifier_list = getelementptr inbounds %struct.rave_sp, ptr %3, i32 0, i32 7
  %call2 = tail call i32 @blocking_notifier_chain_register(ptr noundef %event_notifier_list, ptr noundef %nb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %nb, ptr %call1, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call1) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devres_free(ptr noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.else ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rave_sp_unregister_event_notifier(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res, align 4
  %event_notifier_list = getelementptr inbounds %struct.rave_sp, ptr %3, i32 0, i32 7
  %call1 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %event_notifier_list, ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !141

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 214, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rave_sp_exec(ptr noundef %sp, ptr noundef %__data, i32 noundef %data_size, ptr noundef %reply_data, i32 noundef %reply_data_size) #0 align 64 {
entry:
  %reply = alloca %struct.rave_sp_reply, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %reply) #10
  %0 = getelementptr inbounds i8, ptr %reply, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 60)
  %2 = ptrtoint ptr %reply to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %reply_data_size, ptr %reply, align 4
  %data = getelementptr inbounds %struct.rave_sp_reply, ptr %reply, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %reply_data, ptr %data, align 4
  %code = getelementptr inbounds %struct.rave_sp_reply, ptr %reply, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %code, align 4
  %ackid = getelementptr inbounds %struct.rave_sp_reply, ptr %reply, i32 0, i32 3
  %5 = ptrtoint ptr %ackid to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ackid, align 1
  %received = getelementptr inbounds %struct.rave_sp_reply, ptr %reply, i32 0, i32 4
  %6 = ptrtoint ptr %received to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %received, align 4
  %wait.i = getelementptr inbounds %struct.rave_sp_reply, ptr %reply, i32 0, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #10
  %variant = getelementptr inbounds %struct.rave_sp, ptr %sp, i32 0, i32 6
  %7 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %variant, align 4
  %cmd = getelementptr inbounds %struct.rave_sp_variant, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd, align 4
  %11 = ptrtoint ptr %__data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %__data, align 1
  %conv = zext i8 %12 to i32
  %call = call i32 %10(i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ackid6 = getelementptr inbounds %struct.rave_sp, ptr %sp, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ackid6, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !142
  call void @llvm.prefetch.p0(ptr %ackid6, i32 1, i32 3, i32 1) #10
  %13 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ackid6, ptr %ackid6, i32 1, ptr elementtype(i32) %ackid6) #10, !srcloc !143
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %13, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !144
  %conv8 = trunc i32 %asmresult.i.i.i.i to i8
  %14 = ptrtoint ptr %ackid to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv8, ptr %ackid, align 1
  %conv10 = trunc i32 %call to i8
  %call11 = call fastcc zeroext i8 @rave_sp_reply_code(i8 noundef zeroext %conv10)
  %15 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call11, ptr %code, align 4
  %bus_lock = getelementptr inbounds %struct.rave_sp, ptr %sp, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %bus_lock, i32 noundef 0) #10
  %reply_lock = getelementptr inbounds %struct.rave_sp, ptr %sp, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %reply_lock, i32 noundef 0) #10
  %reply13 = getelementptr inbounds %struct.rave_sp, ptr %sp, i32 0, i32 5
  %16 = ptrtoint ptr %reply13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %reply, ptr %reply13, align 4
  call void @mutex_unlock(ptr noundef %reply_lock) #10
  %17 = ptrtoint ptr %__data to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10, ptr %__data, align 1
  %arrayidx17 = getelementptr i8, ptr %__data, i32 1
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv8, ptr %arrayidx17, align 1
  %conv18 = trunc i32 %data_size to i8
  call fastcc void @rave_sp_write(ptr noundef %sp, ptr noundef %__data, i8 noundef zeroext %conv18)
  %call21 = call i32 @wait_for_completion_timeout(ptr noundef %received, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %do.end, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.1) #13
  call void @mutex_lock_nested(ptr noundef %reply_lock, i32 noundef 0) #10
  %21 = ptrtoint ptr %reply13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %reply13, align 4
  call void @mutex_unlock(ptr noundef %reply_lock) #10
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.end.if.end26_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end26_crit_edge ], [ -110, %do.end ]
  call void @mutex_unlock(ptr noundef %bus_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end26 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %reply) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @rave_sp_reply_code(i8 noundef zeroext %command) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %command, label %sw.default [
    i8 -96, label %entry.sw.bb_crit_edge
    i8 -95, label %entry.sw.bb_crit_edge12
    i8 -94, label %entry.sw.bb_crit_edge13
    i8 -93, label %entry.sw.bb_crit_edge14
    i8 -92, label %entry.sw.bb_crit_edge15
    i8 -91, label %entry.sw.bb_crit_edge16
    i8 -90, label %entry.sw.bb_crit_edge17
    i8 -89, label %entry.sw.bb_crit_edge18
    i8 -88, label %entry.sw.bb_crit_edge19
    i8 -87, label %entry.sw.bb_crit_edge20
    i8 -86, label %entry.sw.bb_crit_edge21
    i8 -85, label %entry.sw.bb_crit_edge22
    i8 -84, label %entry.sw.bb_crit_edge23
    i8 -83, label %entry.sw.bb_crit_edge24
    i8 -82, label %entry.sw.bb_crit_edge25
    i8 -81, label %entry.sw.bb_crit_edge26
    i8 -80, label %entry.sw.bb_crit_edge27
    i8 -79, label %entry.sw.bb_crit_edge28
    i8 -78, label %entry.sw.bb_crit_edge29
    i8 -77, label %entry.sw.bb_crit_edge30
    i8 -76, label %entry.sw.bb_crit_edge31
    i8 -75, label %entry.sw.bb_crit_edge32
    i8 -74, label %entry.sw.bb_crit_edge33
    i8 -73, label %entry.sw.bb_crit_edge34
    i8 -72, label %entry.sw.bb_crit_edge35
    i8 -71, label %entry.sw.bb_crit_edge36
    i8 -70, label %entry.sw.bb_crit_edge37
    i8 -69, label %entry.sw.bb_crit_edge38
    i8 -68, label %entry.sw.bb_crit_edge39
    i8 -67, label %entry.sw.bb_crit_edge40
    i8 -66, label %entry.sw.bb_crit_edge41
    i8 -32, label %entry.sw.bb3_crit_edge
    i8 -31, label %entry.sw.bb3_crit_edge42
    i8 -30, label %entry.sw.bb3_crit_edge43
    i8 -29, label %entry.sw.bb3_crit_edge44
    i8 -28, label %entry.sw.bb3_crit_edge45
    i8 -27, label %entry.sw.bb3_crit_edge46
    i8 -26, label %entry.sw.bb3_crit_edge47
    i8 -25, label %entry.sw.bb3_crit_edge48
    i8 -24, label %entry.sw.bb3_crit_edge49
    i8 -23, label %entry.sw.bb3_crit_edge50
    i8 -22, label %entry.sw.bb3_crit_edge51
    i8 -21, label %entry.sw.bb3_crit_edge52
    i8 -20, label %entry.sw.bb3_crit_edge53
    i8 -19, label %entry.sw.bb3_crit_edge54
    i8 -18, label %entry.sw.bb3_crit_edge55
    i8 -17, label %entry.sw.bb3_crit_edge56
  ]

entry.sw.bb3_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb3

entry.sw.bb_crit_edge41:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge40:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge39:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge38:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge31:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge30:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge28:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge25:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge23:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge12, %entry.sw.bb_crit_edge13, %entry.sw.bb_crit_edge14, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16, %entry.sw.bb_crit_edge17, %entry.sw.bb_crit_edge18, %entry.sw.bb_crit_edge19, %entry.sw.bb_crit_edge20, %entry.sw.bb_crit_edge21, %entry.sw.bb_crit_edge22, %entry.sw.bb_crit_edge23, %entry.sw.bb_crit_edge24, %entry.sw.bb_crit_edge25, %entry.sw.bb_crit_edge26, %entry.sw.bb_crit_edge27, %entry.sw.bb_crit_edge28, %entry.sw.bb_crit_edge29, %entry.sw.bb_crit_edge30, %entry.sw.bb_crit_edge31, %entry.sw.bb_crit_edge32, %entry.sw.bb_crit_edge33, %entry.sw.bb_crit_edge34, %entry.sw.bb_crit_edge35, %entry.sw.bb_crit_edge36, %entry.sw.bb_crit_edge37, %entry.sw.bb_crit_edge38, %entry.sw.bb_crit_edge39, %entry.sw.bb_crit_edge40, %entry.sw.bb_crit_edge41
  %add = add nuw nsw i8 %command, 32
  br label %return

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge42, %entry.sw.bb3_crit_edge43, %entry.sw.bb3_crit_edge44, %entry.sw.bb3_crit_edge45, %entry.sw.bb3_crit_edge46, %entry.sw.bb3_crit_edge47, %entry.sw.bb3_crit_edge48, %entry.sw.bb3_crit_edge49, %entry.sw.bb3_crit_edge50, %entry.sw.bb3_crit_edge51, %entry.sw.bb3_crit_edge52, %entry.sw.bb3_crit_edge53, %entry.sw.bb3_crit_edge54, %entry.sw.bb3_crit_edge55, %entry.sw.bb3_crit_edge56
  %or = or i8 %command, 1
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add7 = add i8 %command, 64
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb
  %retval.0 = phi i8 [ %add7, %sw.default ], [ %or, %sw.bb3 ], [ %add, %sw.bb ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rave_sp_write(ptr nocapture noundef readonly %sp, ptr noundef %data, i8 noundef zeroext %data_size) unnamed_addr #0 align 64 {
entry:
  %frame = alloca [134 x i8], align 1
  %crc = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.rave_sp, ptr %sp, i32 0, i32 6
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 134, ptr nonnull %frame) #10
  %6 = getelementptr inbounds i8, ptr %frame, i32 1
  %7 = call ptr @memset(ptr %6, i32 255, i32 133)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crc) #10
  %8 = ptrtoint ptr %crc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %crc, align 1, !annotation !145
  %9 = getelementptr inbounds [2 x i8], ptr %crc, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %do.end, label %if.end22, !prof !146

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 290, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -122, i8 %data_size)
  %cmp24 = icmp ugt i8 %data_size, -122
  br i1 %cmp24, label %do.end41, label %if.end57, !prof !146

do.end41:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 293, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end57:                                         ; preds = %if.end22
  %conv = zext i8 %data_size to i32
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %subroutine = getelementptr inbounds %struct.rave_sp_checksum, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %subroutine to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %subroutine, align 4
  call void %14(ptr noundef %data, i32 noundef %conv, ptr noundef nonnull %crc) #10
  %incdec.ptr = getelementptr inbounds i8, ptr %frame, i32 1
  %15 = ptrtoint ptr %frame to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %frame, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %data_size)
  %tobool.not7.i = icmp eq i8 %data_size, 0
  br i1 %tobool.not7.i, label %if.end57.stuff.exit_crit_edge, label %if.end57.while.body.i_crit_edge

if.end57.while.body.i_crit_edge:                  ; preds = %if.end57
  br label %while.body.i

if.end57.stuff.exit_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %stuff.exit

while.body.i:                                     ; preds = %sw.default.i.while.body.i_crit_edge, %if.end57.while.body.i_crit_edge
  %dec10.in.i = phi i32 [ %dec10.i, %sw.default.i.while.body.i_crit_edge ], [ %conv, %if.end57.while.body.i_crit_edge ]
  %src.addr.09.i = phi ptr [ %incdec.ptr.i, %sw.default.i.while.body.i_crit_edge ], [ %data, %if.end57.while.body.i_crit_edge ]
  %dest.addr.08.i = phi ptr [ %incdec.ptr2.i, %sw.default.i.while.body.i_crit_edge ], [ %incdec.ptr, %if.end57.while.body.i_crit_edge ]
  %dec10.i = add nsw i32 %dec10.in.i, -1
  %incdec.ptr.i = getelementptr i8, ptr %src.addr.09.i, i32 1
  %16 = ptrtoint ptr %src.addr.09.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %src.addr.09.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %17, label %while.body.i.sw.default.i_crit_edge [
    i8 2, label %while.body.i.sw.bb.i_crit_edge
    i8 3, label %while.body.i.sw.bb.i_crit_edge17
    i8 16, label %while.body.i.sw.bb.i_crit_edge18
  ]

while.body.i.sw.bb.i_crit_edge18:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

while.body.i.sw.bb.i_crit_edge17:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

while.body.i.sw.bb.i_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

while.body.i.sw.default.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default.i

sw.bb.i:                                          ; preds = %while.body.i.sw.bb.i_crit_edge, %while.body.i.sw.bb.i_crit_edge17, %while.body.i.sw.bb.i_crit_edge18
  %incdec.ptr1.i = getelementptr i8, ptr %dest.addr.08.i, i32 1
  %19 = ptrtoint ptr %dest.addr.08.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 16, ptr %dest.addr.08.i, align 1
  br label %sw.default.i

sw.default.i:                                     ; preds = %sw.bb.i, %while.body.i.sw.default.i_crit_edge
  %dest.addr.1.i = phi ptr [ %dest.addr.08.i, %while.body.i.sw.default.i_crit_edge ], [ %incdec.ptr1.i, %sw.bb.i ]
  %incdec.ptr2.i = getelementptr i8, ptr %dest.addr.1.i, i32 1
  %20 = ptrtoint ptr %dest.addr.1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %dest.addr.1.i, align 1
  %tobool.not.i = icmp eq i32 %dec10.i, 0
  br i1 %tobool.not.i, label %sw.default.i.stuff.exit_crit_edge, label %sw.default.i.while.body.i_crit_edge

sw.default.i.while.body.i_crit_edge:              ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

sw.default.i.stuff.exit_crit_edge:                ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stuff.exit

stuff.exit:                                       ; preds = %sw.default.i.stuff.exit_crit_edge, %if.end57.stuff.exit_crit_edge
  %dest.addr.0.lcssa.i = phi ptr [ %incdec.ptr, %if.end57.stuff.exit_crit_edge ], [ %incdec.ptr2.i, %sw.default.i.stuff.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not7.i1 = icmp eq i32 %5, 0
  br i1 %tobool.not7.i1, label %stuff.exit.stuff.exit15_crit_edge, label %stuff.exit.while.body.i7_crit_edge

stuff.exit.while.body.i7_crit_edge:               ; preds = %stuff.exit
  br label %while.body.i7

stuff.exit.stuff.exit15_crit_edge:                ; preds = %stuff.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %stuff.exit15

while.body.i7:                                    ; preds = %sw.default.i13.while.body.i7_crit_edge, %stuff.exit.while.body.i7_crit_edge
  %dec10.in.i2 = phi i32 [ %dec10.i5, %sw.default.i13.while.body.i7_crit_edge ], [ %5, %stuff.exit.while.body.i7_crit_edge ]
  %src.addr.09.i3 = phi ptr [ %incdec.ptr.i6, %sw.default.i13.while.body.i7_crit_edge ], [ %crc, %stuff.exit.while.body.i7_crit_edge ]
  %dest.addr.08.i4 = phi ptr [ %incdec.ptr2.i11, %sw.default.i13.while.body.i7_crit_edge ], [ %dest.addr.0.lcssa.i, %stuff.exit.while.body.i7_crit_edge ]
  %dec10.i5 = add i32 %dec10.in.i2, -1
  %incdec.ptr.i6 = getelementptr i8, ptr %src.addr.09.i3, i32 1
  %21 = ptrtoint ptr %src.addr.09.i3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %src.addr.09.i3, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %22, label %while.body.i7.sw.default.i13_crit_edge [
    i8 2, label %while.body.i7.sw.bb.i9_crit_edge
    i8 3, label %while.body.i7.sw.bb.i9_crit_edge19
    i8 16, label %while.body.i7.sw.bb.i9_crit_edge20
  ]

while.body.i7.sw.bb.i9_crit_edge20:               ; preds = %while.body.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i9

while.body.i7.sw.bb.i9_crit_edge19:               ; preds = %while.body.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i9

while.body.i7.sw.bb.i9_crit_edge:                 ; preds = %while.body.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i9

while.body.i7.sw.default.i13_crit_edge:           ; preds = %while.body.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.default.i13

sw.bb.i9:                                         ; preds = %while.body.i7.sw.bb.i9_crit_edge, %while.body.i7.sw.bb.i9_crit_edge19, %while.body.i7.sw.bb.i9_crit_edge20
  %incdec.ptr1.i8 = getelementptr i8, ptr %dest.addr.08.i4, i32 1
  %24 = ptrtoint ptr %dest.addr.08.i4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 16, ptr %dest.addr.08.i4, align 1
  br label %sw.default.i13

sw.default.i13:                                   ; preds = %sw.bb.i9, %while.body.i7.sw.default.i13_crit_edge
  %dest.addr.1.i10 = phi ptr [ %dest.addr.08.i4, %while.body.i7.sw.default.i13_crit_edge ], [ %incdec.ptr1.i8, %sw.bb.i9 ]
  %incdec.ptr2.i11 = getelementptr i8, ptr %dest.addr.1.i10, i32 1
  %25 = ptrtoint ptr %dest.addr.1.i10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %22, ptr %dest.addr.1.i10, align 1
  %tobool.not.i12 = icmp eq i32 %dec10.i5, 0
  br i1 %tobool.not.i12, label %sw.default.i13.stuff.exit15_crit_edge, label %sw.default.i13.while.body.i7_crit_edge

sw.default.i13.while.body.i7_crit_edge:           ; preds = %sw.default.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i7

sw.default.i13.stuff.exit15_crit_edge:            ; preds = %sw.default.i13
  call void @__sanitizer_cov_trace_pc() #12
  br label %stuff.exit15

stuff.exit15:                                     ; preds = %sw.default.i13.stuff.exit15_crit_edge, %stuff.exit.stuff.exit15_crit_edge
  %dest.addr.0.lcssa.i14 = phi ptr [ %dest.addr.0.lcssa.i, %stuff.exit.stuff.exit15_crit_edge ], [ %incdec.ptr2.i11, %sw.default.i13.stuff.exit15_crit_edge ]
  %incdec.ptr65 = getelementptr i8, ptr %dest.addr.0.lcssa.i14, i32 1
  %26 = ptrtoint ptr %dest.addr.0.lcssa.i14 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %dest.addr.0.lcssa.i14, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr65 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %frame to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rave_sp_write.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rave_sp_write, %if.then77)) #10
          to label %do.end81 [label %if.then77], !srcloc !147

if.then77:                                        ; preds = %stuff.exit15
  call void @__sanitizer_cov_trace_pc() #12
  call void @print_hex_dump(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %frame, i32 noundef %sub.ptr.sub, i1 noundef zeroext false) #10
  br label %do.end81

do.end81:                                         ; preds = %if.then77, %stuff.exit15
  %27 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sp, align 4
  %call83 = call i32 @serdev_device_write(ptr noundef %28, ptr noundef nonnull %frame, i32 noundef %sub.ptr.sub, i32 noundef 100) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end81, %do.end41, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crc) #10
  call void @llvm.lifetime.end.p0(i64 134, ptr nonnull %frame) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_drv_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serdev_device_driver_register(ptr noundef nonnull @rave_sp_drv, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rave_sp_drv_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef nonnull @rave_sp_drv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serdev_device_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_probe(ptr noundef %serdev) #0 align 64 {
entry:
  %baud = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baud) #10
  %0 = ptrtoint ptr %baud to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %baud, align 4, !annotation !145
  %of_node = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.13, ptr noundef nonnull %baud, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.14) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %serdev, i32 noundef 384, i32 noundef 3520) #10
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %serdev, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call7 = call ptr @of_device_get_match_data(ptr noundef %serdev) #10
  %variant = getelementptr inbounds %struct.rave_sp, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %variant, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %do.body12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body12:                                        ; preds = %if.end5
  %bus_lock = getelementptr inbounds %struct.rave_sp, ptr %call.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %bus_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @rave_sp_probe.__key) #10
  %reply_lock = getelementptr inbounds %struct.rave_sp, ptr %call.i, i32 0, i32 4
  call void @__mutex_init(ptr noundef %reply_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @rave_sp_probe.__key.17) #10
  %event_notifier_list = getelementptr inbounds %struct.rave_sp, ptr %call.i, i32 0, i32 7
  call void @__init_rwsem(ptr noundef %event_notifier_list, ptr noundef nonnull @.str.20, ptr noundef nonnull @rave_sp_probe.__key.19) #10
  %head = getelementptr inbounds %struct.rave_sp, ptr %call.i, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %head, align 4
  %ops1.i = getelementptr inbounds %struct.serdev_device, ptr %serdev, i32 0, i32 3
  %7 = ptrtoint ptr %ops1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rave_sp_serdev_device_ops, ptr %ops1.i, align 8
  %call25 = call i32 @devm_serdev_device_open(ptr noundef %serdev, ptr noundef %serdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %do.body12.cleanup_crit_edge

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %do.body12
  %8 = ptrtoint ptr %baud to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %baud, align 4
  %call29 = call i32 @serdev_device_set_baudrate(ptr noundef %serdev, i32 noundef %9) #10
  call void @serdev_device_set_flow_control(ptr noundef %serdev, i1 noundef zeroext false) #10
  %call30 = call i32 @serdev_device_set_parity(ptr noundef %serdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %serdev, ptr noundef nonnull @.str.22) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %call37 = call fastcc i32 @rave_sp_get_status(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.do.end46_crit_edge, label %do.end42

if.end36.do.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %serdev, ptr noundef nonnull @.str.25, i32 noundef %call37) #13
  %part_number_firmware = getelementptr inbounds %struct.rave_sp, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %part_number_firmware to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.12, ptr %part_number_firmware, align 4
  %part_number_bootloader = getelementptr inbounds %struct.rave_sp, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %part_number_bootloader to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.12, ptr %part_number_bootloader, align 4
  br label %do.end46

do.end46:                                         ; preds = %do.end42, %if.end36.do.end46_crit_edge
  %part_number_firmware47 = getelementptr inbounds %struct.rave_sp, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %part_number_firmware47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %part_number_firmware47, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %serdev, ptr noundef nonnull @.str.29, ptr noundef %13) #13
  %part_number_bootloader51 = getelementptr inbounds %struct.rave_sp, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %part_number_bootloader51 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %part_number_bootloader51, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %serdev, ptr noundef nonnull @.str.33, ptr noundef %15) #13
  %call52 = call i32 @devm_of_platform_populate(ptr noundef %serdev) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %do.end35, %do.body12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call30, %do.end35 ], [ %call52, %do.end46 ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ %call25, %do.body12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baud) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rave_sp_default_cmd_translate(i32 noundef %command) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %command, label %sw.default [
    i32 32, label %entry.return_crit_edge
    i32 33, label %sw.bb1
    i32 38, label %sw.bb2
    i32 161, label %sw.bb3
    i32 162, label %sw.bb4
    i32 167, label %sw.bb5
    i32 168, label %sw.bb6
    i32 164, label %sw.bb7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 32, %sw.bb7 ], [ 31, %sw.bb6 ], [ 30, %sw.bb5 ], [ 29, %sw.bb4 ], [ 28, %sw.bb3 ], [ 20, %sw.bb2 ], [ 18, %sw.bb1 ], [ 17, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_emulated_get_status(ptr noundef %sp, ptr noundef %status) #0 align 64 {
entry:
  %cmd = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #10
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 8192, ptr %cmd, align 2
  %firmware_version = getelementptr inbounds %struct.rave_sp_status, ptr %status, i32 0, i32 1
  %call = call i32 @rave_sp_exec(ptr noundef %sp, ptr noundef nonnull %cmd, i32 noundef 2, ptr noundef %firmware_version, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 33, ptr %cmd, align 2
  %call2 = call i32 @rave_sp_exec(ptr noundef %sp, ptr noundef nonnull %cmd, i32 noundef 2, ptr noundef %status, i32 noundef 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csum_ccitt(ptr noundef %buf, i32 noundef %size, ptr nocapture noundef writeonly %crc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @crc_ccitt_false(i16 noundef zeroext -1, ptr noundef %buf, i32 noundef %size) #10
  %0 = ptrtoint ptr %crc to i32
  call void @__asan_storeN_noabort(i32 %0, i32 2)
  store i16 %call, ptr %crc, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt_false(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rave_sp_rdu1_cmd_translate(i32 noundef %command) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %command, -160
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %0)
  %1 = icmp ult i32 %0, 28
  %retval.0 = select i1 %1, i32 %command, i32 -22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_rdu1_get_status(ptr noundef %sp, ptr noundef %status) #0 align 64 {
entry:
  %cmd = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #10
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -24576, ptr %cmd, align 2
  %call = call i32 @rave_sp_exec(ptr noundef %sp, ptr noundef nonnull %cmd, i32 noundef 2, ptr noundef %status, i32 noundef 40)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #10
  ret i32 %call
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csum_8b2c(ptr nocapture noundef readonly %buf, i32 noundef %size, ptr nocapture noundef %crc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %2 = ptrtoint ptr %crc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %crc, align 1
  %size.addr.013 = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.013)
  %tobool.not14 = icmp eq i32 %size.addr.013, 0
  br i1 %tobool.not14, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %size.addr.017 = phi i32 [ %size.addr.0, %while.body.while.body_crit_edge ], [ %size.addr.013, %entry.while.body_crit_edge ]
  %buf.pn16 = phi ptr [ %buf.addr.0, %while.body.while.body_crit_edge ], [ %buf, %entry.while.body_crit_edge ]
  %storemerge15 = phi i8 [ %add, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %buf.addr.0 = getelementptr i8, ptr %buf.pn16, i32 1
  %3 = ptrtoint ptr %buf.addr.0 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf.addr.0, align 1
  %add = add i8 %4, %storemerge15
  %5 = ptrtoint ptr %crc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %add, ptr %crc, align 1
  %size.addr.0 = add i32 %size.addr.017, -1
  %tobool.not = icmp eq i32 %size.addr.0, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %storemerge.lcssa = phi i8 [ %1, %entry.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  %add6 = sub i8 0, %storemerge.lcssa
  %6 = ptrtoint ptr %crc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %add6, ptr %crc, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rave_sp_rdu2_cmd_translate(i32 noundef %command) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %command, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %1 = icmp eq i32 %0, 32
  br i1 %1, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 182, i32 %command)
  %cmp2 = icmp eq i32 %command, 182
  br i1 %cmp2, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = add i32 %command, -160
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %2)
  %3 = icmp ult i32 %2, 28
  %retval.0.i = select i1 %3, i32 %command, i32 -22
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.end4 ], [ %command, %entry.return_crit_edge ], [ 40, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_serdev_device_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_baudrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_set_flow_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serdev_device_set_parity(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rave_sp_get_status(ptr noundef %sp) unnamed_addr #0 align 64 {
entry:
  %status = alloca %struct.rave_sp_status, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sp, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %status) #10
  %2 = call ptr @memset(ptr %status, i32 255, i32 40)
  %variant = getelementptr inbounds %struct.rave_sp, ptr %sp, i32 0, i32 6
  %3 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %variant, align 4
  %get_status = getelementptr inbounds %struct.rave_sp_variant, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_status, align 4
  %call = call i32 %6(ptr noundef %sp, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %firmware_version = getelementptr inbounds %struct.rave_sp_status, ptr %status, i32 0, i32 1
  %7 = ptrtoint ptr %firmware_version to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %firmware_version, align 1
  %conv.i = zext i8 %8 to i32
  %major.i = getelementptr inbounds %struct.rave_sp_status, ptr %status, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %major.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %major.i, align 1
  %11 = call i16 @llvm.bswap.i16(i16 %10) #10
  %conv1.i = zext i16 %11 to i32
  %minor.i = getelementptr inbounds %struct.rave_sp_status, ptr %status, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %minor.i, align 1
  %conv2.i = zext i8 %13 to i32
  %letter.i = getelementptr inbounds %struct.rave_sp_status, ptr %status, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %letter.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %letter.i, align 1
  %conv3.i = zext i8 %15 to i32
  %arrayidx5.i = getelementptr inbounds %struct.rave_sp_status, ptr %status, i32 0, i32 1, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %17 to i32
  %call.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str.54, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %conv6.i) #10
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %part_number_firmware = getelementptr inbounds %struct.rave_sp, ptr %sp, i32 0, i32 8
  %18 = ptrtoint ptr %part_number_firmware to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %part_number_firmware, align 4
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %status, align 1
  %conv.i22 = zext i8 %20 to i32
  %major.i23 = getelementptr inbounds %struct.rave_sp_version, ptr %status, i32 0, i32 1
  %21 = ptrtoint ptr %major.i23 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %major.i23, align 1
  %23 = call i16 @llvm.bswap.i16(i16 %22) #10
  %conv1.i24 = zext i16 %23 to i32
  %minor.i25 = getelementptr inbounds %struct.rave_sp_version, ptr %status, i32 0, i32 2
  %24 = ptrtoint ptr %minor.i25 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %minor.i25, align 1
  %conv2.i26 = zext i8 %25 to i32
  %letter.i27 = getelementptr inbounds %struct.rave_sp_version, ptr %status, i32 0, i32 3
  %26 = ptrtoint ptr %letter.i27 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %letter.i27, align 1
  %conv3.i28 = zext i8 %27 to i32
  %arrayidx5.i29 = getelementptr inbounds %struct.rave_sp_version, ptr %status, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %arrayidx5.i29 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx5.i29, align 1
  %conv6.i30 = zext i8 %29 to i32
  %call.i31 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str.54, i32 noundef %conv.i22, i32 noundef %conv1.i24, i32 noundef %conv2.i26, i32 noundef %conv3.i28, i32 noundef %conv6.i30) #10
  %tobool7.not = icmp eq ptr %call.i31, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %part_number_bootloader = getelementptr inbounds %struct.rave_sp, ptr %sp, i32 0, i32 9
  %30 = ptrtoint ptr %part_number_bootloader to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i31, ptr %part_number_bootloader, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_receive_buf(ptr noundef %serdev, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %serdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %deframer2 = getelementptr inbounds %struct.rave_sp, ptr %1, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %buf, i32 %size
  %cmp56 = icmp ugt ptr %add.ptr, %buf
  br i1 %cmp56, label %while.body.lr.ph, label %entry.cleanup27_crit_edge

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup27

while.body.lr.ph:                                 ; preds = %entry
  %length13 = getelementptr inbounds %struct.rave_sp, ptr %1, i32 0, i32 1, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %src.057 = phi ptr [ %buf, %while.body.lr.ph ], [ %incdec.ptr, %cleanup.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %src.057, i32 1
  %2 = ptrtoint ptr %src.057 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %src.057, align 1
  %4 = ptrtoint ptr %deframer2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %deframer2, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %5, label %while.body.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %while.body.sw.bb12_crit_edge
  ]

while.body.sw.bb12_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp3 = icmp eq i8 %3, 2
  br i1 %cmp3, label %sw.bb.cleanup.sink.split_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %while.body
  %7 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %3, label %sw.bb6.sw.bb12_crit_edge [
    i8 3, label %sw.bb8
    i8 2, label %do.end
    i8 16, label %sw.bb6.cleanup.sink.split_crit_edge
  ]

sw.bb6.cleanup.sink.split_crit_edge:              ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

sw.bb6.sw.bb12_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

sw.bb8:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.rave_sp, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %length13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length13, align 4
  tail call fastcc void @rave_sp_receive_frame(ptr noundef %1, ptr noundef %data, i32 noundef %9)
  br label %reset_framer

do.end:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %serdev, ptr noundef nonnull @.str.35) #13
  br label %reset_framer

sw.bb12:                                          ; preds = %sw.bb6.sw.bb12_crit_edge, %while.body.sw.bb12_crit_edge
  %10 = ptrtoint ptr %length13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %11)
  %cmp14 = icmp eq i32 %11, 66
  br i1 %cmp14, label %do.end19, label %if.end20

do.end19:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %serdev, ptr noundef nonnull @.str.38) #13
  br label %reset_framer

if.end20:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %11, 1
  %12 = ptrtoint ptr %length13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %length13, align 4
  %arrayidx = getelementptr %struct.rave_sp, ptr %1, i32 0, i32 1, i32 1, i32 %11
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %3, ptr %arrayidx, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end20, %sw.bb6.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end20 ], [ 1, %sw.bb.cleanup.sink.split_crit_edge ], [ 2, %sw.bb6.cleanup.sink.split_crit_edge ]
  %14 = ptrtoint ptr %deframer2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %deframer2, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %exitcond.not = icmp eq ptr %incdec.ptr, %add.ptr
  br i1 %exitcond.not, label %cleanup.cleanup27_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup27_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup27

reset_framer:                                     ; preds = %do.end19, %do.end, %sw.bb8
  %15 = ptrtoint ptr %deframer2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %deframer2, align 4
  %16 = ptrtoint ptr %length13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %length13, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup27

cleanup27:                                        ; preds = %reset_framer, %cleanup.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub, %reset_framer ], [ %size, %entry.cleanup27_crit_edge ], [ %size, %cleanup.cleanup27_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serdev_device_write_wakeup(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rave_sp_receive_frame(ptr noundef %sp, ptr noundef %data, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca [2 x i8], align 1
  %crc_calculated = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.rave_sp, ptr %sp, i32 0, i32 6
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %sub = sub i32 %length, %5
  %arrayidx = getelementptr i8, ptr %data, i32 %sub
  %6 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sp, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %crc_calculated) #10
  %8 = ptrtoint ptr %crc_calculated to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %crc_calculated, align 1, !annotation !145
  %9 = getelementptr inbounds [2 x i8], ptr %crc_calculated, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %do.end, label %do.body4, !prof !146

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.40) #13
  br label %cleanup

do.body4:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rave_sp_receive_frame.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rave_sp_receive_frame, %if.then12)) #10
          to label %do.end15 [label %if.then12], !srcloc !147

if.then12:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @print_hex_dump(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.42, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %length, i1 noundef zeroext false) #10
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %do.body4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %length)
  %cmp16.not = icmp ult i32 %5, %length
  br i1 %cmp16.not, label %if.end27, label %do.end26, !prof !141

do.end26:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.44) #13
  br label %cleanup

if.end27:                                         ; preds = %do.end15
  %11 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %variant, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %subroutine = getelementptr inbounds %struct.rave_sp_checksum, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %subroutine to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %subroutine, align 4
  call void %16(ptr noundef %data, i32 noundef %sub, ptr noundef nonnull %crc_calculated) #10
  %bcmp = call i32 @bcmp(ptr nonnull %crc_calculated, ptr %arrayidx, i32 %5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool32.not = icmp eq i32 %bcmp, 0
  br i1 %tobool32.not, label %if.end37, label %do.end36

do.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.47) #13
  br label %cleanup

if.end37:                                         ; preds = %if.end27
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data, align 1
  %19 = and i8 %18, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %19)
  %cmp.i = icmp eq i8 %19, -32
  br i1 %cmp.i, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #10
  %20 = getelementptr inbounds [2 x i8], ptr %cmd.i, i32 0, i32 1
  %call.i = call fastcc zeroext i8 @rave_sp_reply_code(i8 noundef zeroext %18) #10
  %21 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call.i, ptr %cmd.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %data, i32 1
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx1.i, align 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %20, align 1
  call fastcc void @rave_sp_write(ptr noundef %sp, ptr noundef nonnull %cmd.i, i8 noundef zeroext 2) #10
  %event_notifier_list.i = getelementptr inbounds %struct.rave_sp, ptr %sp, i32 0, i32 7
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data, align 1
  %arrayidx4.i = getelementptr i8, ptr %data, i32 2
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx4.i, align 1
  %conv.i.i = zext i8 %28 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %conv1.i.i = zext i8 %26 to i32
  %or.i.i = or i32 %shl.i.i, %conv1.i.i
  %call6.i = call i32 @blocking_notifier_call_chain(ptr noundef %event_notifier_list.i, i32 noundef %or.i.i, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #10
  br label %cleanup

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @rave_sp_receive_reply(ptr noundef %sp, ptr noundef %data, i32 noundef %length)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then40, %do.end36, %do.end26, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %crc_calculated) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rave_sp_receive_reply(ptr noundef %sp, ptr nocapture noundef readonly %data, i32 noundef %length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sp, align 4
  %sub = add i32 %length, -2
  %reply_lock = getelementptr inbounds %struct.rave_sp, ptr %sp, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reply_lock, i32 noundef 0) #10
  %reply2 = getelementptr inbounds %struct.rave_sp, ptr %sp, i32 0, i32 5
  %2 = ptrtoint ptr %reply2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reply2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end68_crit_edge, label %if.then

entry.if.end68_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then:                                          ; preds = %entry
  %code = getelementptr inbounds %struct.rave_sp_reply, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %code, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp = icmp eq i8 %5, %7
  br i1 %cmp, label %land.lhs.true, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.then
  %ackid = getelementptr inbounds %struct.rave_sp_reply, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %ackid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ackid, align 1
  %arrayidx6 = getelementptr i8, ptr %data, i32 1
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp8 = icmp eq i8 %9, %11
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %13)
  %cmp12.not = icmp ult i32 %sub, %13
  br i1 %cmp12.not, label %land.lhs.true10.do.end_crit_edge, label %if.then14

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  %data15 = getelementptr inbounds %struct.rave_sp_reply, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %data15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data15, align 4
  %arrayidx16 = getelementptr i8, ptr %data, i32 2
  %16 = call ptr @memcpy(ptr %15, ptr %arrayidx16, i32 %13)
  %received = getelementptr inbounds %struct.rave_sp_reply, ptr %3, i32 0, i32 4
  tail call void @complete(ptr noundef %received) #10
  %17 = ptrtoint ptr %reply2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %reply2, align 4
  br label %if.end68

do.end:                                           ; preds = %land.lhs.true10.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.49) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rave_sp_receive_reply.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rave_sp_receive_reply, %if.then23)) #10
          to label %do.body30 [label %if.then23], !srcloc !147

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %code, align 4
  %conv25 = zext i8 %19 to i32
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 1
  %conv27 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rave_sp_receive_reply.__UNIQUE_ID_ddebug188, ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef %conv25, i32 noundef %conv27) #10
  br label %do.body30

do.body30:                                        ; preds = %if.then23, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rave_sp_receive_reply.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rave_sp_receive_reply, %if.then42)) #10
          to label %do.body50 [label %if.then42], !srcloc !147

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %ackid43 = getelementptr inbounds %struct.rave_sp_reply, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %ackid43 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ackid43, align 1
  %conv44 = zext i8 %23 to i32
  %arrayidx45 = getelementptr i8, ptr %data, i32 1
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rave_sp_receive_reply.__UNIQUE_ID_ddebug189, ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef %conv44, i32 noundef %conv46) #10
  br label %do.body50

do.body50:                                        ; preds = %if.then42, %do.body30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rave_sp_receive_reply.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rave_sp_receive_reply, %if.then62)) #10
          to label %if.end68 [label %if.then62], !srcloc !147

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rave_sp_receive_reply.__UNIQUE_ID_ddebug190, ptr noundef %1, ptr noundef nonnull @.str.53, i32 noundef %27, i32 noundef %sub) #10
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %do.body50, %if.then14, %entry.if.end68_crit_edge
  tail call void @mutex_unlock(ptr noundef %reply_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !31, !33, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !126, !127, !129, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/rave-sp.c", i32 224, i32 9}
!2 = !{ptr @__ksymtab_devm_rave_sp_register_event_notifier, !3, !"__ksymtab_devm_rave_sp_register_event_notifier", i1 false, i1 false}
!3 = !{!"../drivers/mfd/rave-sp.c", i32 239, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mfd/rave-sp.c", i32 375, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rave_sp_exec._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @rave_sp_exec._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_rave_sp_exec, !13, !"__ksymtab_rave_sp_exec", i1 false, i1 false}
!13 = !{!"../drivers/mfd/rave-sp.c", i32 386, i32 1}
!14 = !{ptr @__initcall__kmod_rave_sp__192_837_rave_sp_drv_init6, !15, !"__initcall__kmod_rave_sp__192_837_rave_sp_drv_init6", i1 false, i1 false}
!15 = !{!"../drivers/mfd/rave-sp.c", i32 837, i32 1}
!16 = !{ptr @__exitcall_rave_sp_drv_exit, !15, !"__exitcall_rave_sp_drv_exit", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_file193, !18, !"__UNIQUE_ID_file193", i1 false, i1 false}
!18 = !{!"../drivers/mfd/rave-sp.c", i32 839, i32 1}
!19 = !{ptr @__UNIQUE_ID_license194, !18, !"__UNIQUE_ID_license194", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_author195, !21, !"__UNIQUE_ID_author195", i1 false, i1 false}
!21 = !{!"../drivers/mfd/rave-sp.c", i32 840, i32 1}
!22 = !{ptr @__UNIQUE_ID_author196, !23, !"__UNIQUE_ID_author196", i1 false, i1 false}
!23 = !{!"../drivers/mfd/rave-sp.c", i32 841, i32 1}
!24 = !{ptr @__UNIQUE_ID_author197, !25, !"__UNIQUE_ID_author197", i1 false, i1 false}
!25 = !{!"../drivers/mfd/rave-sp.c", i32 842, i32 1}
!26 = !{ptr @__UNIQUE_ID_description198, !27, !"__UNIQUE_ID_description198", i1 false, i1 false}
!27 = !{!"../drivers/mfd/rave-sp.c", i32 843, i32 1}
!28 = !{ptr @init_completion.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../include/linux/completion.h", i32 87, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/rave-sp.c", i32 305, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rave_sp_write.__UNIQUE_ID_ddebug187, !32, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!36 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/rave-sp.c", i32 833, i32 12}
!39 = !{ptr @rave_sp_drv, !40, !"rave_sp_drv", i1 false, i1 false}
!40 = !{!"../drivers/mfd/rave-sp.c", i32 830, i32 36}
!41 = !{ptr @rave_sp_dt_ids, !42, !"rave_sp_dt_ids", i1 false, i1 false}
!42 = !{!"../drivers/mfd/rave-sp.c", i32 754, i32 34}
!43 = !{ptr @rave_sp_legacy, !44, !"rave_sp_legacy", i1 false, i1 false}
!44 = !{!"../drivers/mfd/rave-sp.c", i32 730, i32 37}
!45 = !{ptr @rave_sp_checksum_ccitt, !46, !"rave_sp_checksum_ccitt", i1 false, i1 false}
!46 = !{!"../drivers/mfd/rave-sp.c", i32 725, i32 38}
!47 = !{ptr @rave_sp_rdu1, !48, !"rave_sp_rdu1", i1 false, i1 false}
!48 = !{!"../drivers/mfd/rave-sp.c", i32 738, i32 37}
!49 = !{ptr @rave_sp_checksum_8b2c, !50, !"rave_sp_checksum_8b2c", i1 false, i1 false}
!50 = !{!"../drivers/mfd/rave-sp.c", i32 720, i32 38}
!51 = !{ptr @rave_sp_rdu2, !52, !"rave_sp_rdu2", i1 false, i1 false}
!52 = !{!"../drivers/mfd/rave-sp.c", i32 746, i32 37}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/rave-sp.c", i32 771, i32 24}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/rave-sp.c", i32 776, i32 41}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mfd/rave-sp.c", i32 777, i32 3}
!59 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rave_sp_probe._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @rave_sp_probe._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @rave_sp_probe.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/mfd/rave-sp.c", i32 793, i32 2}
!64 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rave_sp_probe.__key.17, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/mfd/rave-sp.c", i32 794, i32 2}
!67 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rave_sp_probe.__key.19, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/mfd/rave-sp.c", i32 795, i32 2}
!70 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mfd/rave-sp.c", i32 807, i32 3}
!73 = !{ptr @rave_sp_probe._entry.21, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rave_sp_probe._entry_ptr.23, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mfd/rave-sp.c", i32 813, i32 3}
!77 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rave_sp_probe._entry.24, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @rave_sp_probe._entry_ptr.27, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mfd/rave-sp.c", i32 822, i32 2}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @rave_sp_probe._entry.28, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @rave_sp_probe._entry_ptr.31, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/rave-sp.c", i32 823, i32 2}
!87 = !{ptr @rave_sp_probe._entry.32, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @rave_sp_probe._entry_ptr.34, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @rave_sp_serdev_device_ops, !90, !"rave_sp_serdev_device_ops", i1 false, i1 false}
!90 = !{!"../drivers/mfd/rave-sp.c", i32 763, i32 39}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mfd/rave-sp.c", i32 511, i32 5}
!93 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rave_sp_receive_buf._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @rave_sp_receive_buf._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mfd/rave-sp.c", i32 548, i32 5}
!98 = !{ptr @rave_sp_receive_buf._entry.37, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @rave_sp_receive_buf._entry_ptr.39, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mfd/rave-sp.c", i32 448, i32 3}
!102 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @rave_sp_receive_frame._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @rave_sp_receive_frame._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mfd/rave-sp.c", i32 452, i32 2}
!107 = !{ptr @rave_sp_receive_frame.__UNIQUE_ID_ddebug191, !106, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mfd/rave-sp.c", i32 456, i32 3}
!110 = !{ptr @rave_sp_receive_frame._entry.43, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @rave_sp_receive_frame._entry_ptr.45, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mfd/rave-sp.c", i32 464, i32 3}
!114 = !{ptr @rave_sp_receive_frame._entry.46, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @rave_sp_receive_frame._entry_ptr.48, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mfd/rave-sp.c", i32 424, i32 4}
!118 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @rave_sp_receive_reply._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @rave_sp_receive_reply._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mfd/rave-sp.c", i32 425, i32 4}
!123 = !{ptr @rave_sp_receive_reply.__UNIQUE_ID_ddebug188, !122, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mfd/rave-sp.c", i32 427, i32 4}
!126 = !{ptr @rave_sp_receive_reply.__UNIQUE_ID_ddebug189, !125, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mfd/rave-sp.c", i32 429, i32 4}
!129 = !{ptr @rave_sp_receive_reply.__UNIQUE_ID_ddebug190, !128, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mfd/rave-sp.c", i32 656, i32 41}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !{i64 2148223397}
!143 = !{i64 2148138706, i64 2148138738, i64 2148138767, i64 2148138801, i64 2148138832, i64 2148138855}
!144 = !{i64 2148223626}
!145 = !{!"auto-init"}
!146 = !{!"branch_weights", i32 1, i32 2000}
!147 = !{i64 2148777206, i64 2148777211, i64 2148777224, i64 2148777268, i64 2148777302, i64 2148777323}
