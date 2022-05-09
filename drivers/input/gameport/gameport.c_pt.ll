; ModuleID = '/llk/IR_all_yes/drivers/input/gameport/gameport.c_pt.bc'
source_filename = "../drivers/input/gameport/gameport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+gameport_start_polling\22, \22a\22\09"
module asm "\09.weak\09__crc_gameport_start_polling\09\09\09\09"
module asm "\09.long\09__crc_gameport_start_polling\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gameport_start_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22gameport_start_polling\22\09\09\09\09\09"
module asm "__kstrtabns_gameport_start_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gameport_stop_polling\22, \22a\22\09"
module asm "\09.weak\09__crc_gameport_stop_polling\09\09\09\09"
module asm "\09.long\09__crc_gameport_stop_polling\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gameport_stop_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22gameport_stop_polling\22\09\09\09\09\09"
module asm "__kstrtabns_gameport_stop_polling:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gameport_set_phys\22, \22a\22\09"
module asm "\09.weak\09__crc_gameport_set_phys\09\09\09\09"
module asm "\09.long\09__crc_gameport_set_phys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gameport_set_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22gameport_set_phys\22\09\09\09\09\09"
module asm "__kstrtabns_gameport_set_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__gameport_register_port\22, \22a\22\09"
module asm "\09.weak\09__crc___gameport_register_port\09\09\09\09"
module asm "\09.long\09__crc___gameport_register_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___gameport_register_port:\09\09\09\09\09"
module asm "\09.asciz \09\22__gameport_register_port\22\09\09\09\09\09"
module asm "__kstrtabns___gameport_register_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gameport_unregister_port\22, \22a\22\09"
module asm "\09.weak\09__crc_gameport_unregister_port\09\09\09\09"
module asm "\09.long\09__crc_gameport_unregister_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gameport_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22gameport_unregister_port\22\09\09\09\09\09"
module asm "__kstrtabns_gameport_unregister_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__gameport_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc___gameport_register_driver\09\09\09\09"
module asm "\09.long\09__crc___gameport_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___gameport_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__gameport_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___gameport_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gameport_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_gameport_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_gameport_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gameport_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22gameport_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_gameport_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gameport_open\22, \22a\22\09"
module asm "\09.weak\09__crc_gameport_open\09\09\09\09"
module asm "\09.long\09__crc_gameport_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gameport_open:\09\09\09\09\09"
module asm "\09.asciz \09\22gameport_open\22\09\09\09\09\09"
module asm "__kstrtabns_gameport_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gameport_close\22, \22a\22\09"
module asm "\09.weak\09__crc_gameport_close\09\09\09\09"
module asm "\09.long\09__crc_gameport_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gameport_close:\09\09\09\09\09"
module asm "\09.asciz \09\22gameport_close\22\09\09\09\09\09"
module asm "__kstrtabns_gameport_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.__va_list = type { ptr }
%struct.gameport_event = type { i32, ptr, ptr, %struct.list_head }
%struct.gameport_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author183 = internal constant [48 x i8] c"gameport.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description184 = internal constant [44 x i8] c"gameport.description=Generic gameport layer\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [46 x i8] c"gameport.file=drivers/input/gameport/gameport\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [21 x i8] c"gameport.license=GPL\00", section ".modinfo", align 1
@__param_str_use_ktime = internal constant [19 x i8] c"gameport.use_ktime\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_ktime = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_ktime = internal constant %struct.kernel_param { ptr @__param_str_use_ktime, ptr null, ptr @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @use_ktime } }, section "__param", align 4
@__UNIQUE_ID_use_ktimetype187 = internal constant [33 x i8] c"gameport.parmtype=use_ktime:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_ktime188 = internal constant [58 x i8] c"gameport.parm=use_ktime:Use ktime for measuring I/O speed\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_gameport_start_polling = external dso_local constant [0 x i8], align 1
@__kstrtabns_gameport_start_polling = external dso_local constant [0 x i8], align 1
@__ksymtab_gameport_start_polling = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gameport_start_polling to i32), ptr @__kstrtab_gameport_start_polling, ptr @__kstrtabns_gameport_start_polling }, section "___ksymtab+gameport_start_polling", align 4
@__kstrtab_gameport_stop_polling = external dso_local constant [0 x i8], align 1
@__kstrtabns_gameport_stop_polling = external dso_local constant [0 x i8], align 1
@__ksymtab_gameport_stop_polling = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gameport_stop_polling to i32), ptr @__kstrtab_gameport_stop_polling, ptr @__kstrtabns_gameport_stop_polling }, section "___ksymtab+gameport_stop_polling", align 4
@__kstrtab_gameport_set_phys = external dso_local constant [0 x i8], align 1
@__kstrtabns_gameport_set_phys = external dso_local constant [0 x i8], align 1
@__ksymtab_gameport_set_phys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gameport_set_phys to i32), ptr @__kstrtab_gameport_set_phys, ptr @__kstrtabns_gameport_set_phys }, section "___ksymtab+gameport_set_phys", align 4
@__kstrtab___gameport_register_port = external dso_local constant [0 x i8], align 1
@__kstrtabns___gameport_register_port = external dso_local constant [0 x i8], align 1
@__ksymtab___gameport_register_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__gameport_register_port to i32), ptr @__kstrtab___gameport_register_port, ptr @__kstrtabns___gameport_register_port }, section "___ksymtab+__gameport_register_port", align 4
@gameport_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @gameport_mutex, i64 52), ptr getelementptr (i8, ptr @gameport_mutex, i64 52) }, ptr @gameport_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_gameport_unregister_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_gameport_unregister_port = external dso_local constant [0 x i8], align 1
@__ksymtab_gameport_unregister_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gameport_unregister_port to i32), ptr @__kstrtab_gameport_unregister_port, ptr @__kstrtabns_gameport_unregister_port }, section "___ksymtab+gameport_unregister_port", align 4
@gameport_bus = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.21, ptr null, ptr null, ptr null, ptr @gameport_device_groups, ptr @gameport_driver_groups, ptr @gameport_bus_match, ptr null, ptr @gameport_driver_probe, ptr null, ptr @gameport_driver_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__gameport_register_driver._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 736, ptr null, ptr null }, align 1
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013gameport: driver_register() failed for %s, error: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__gameport_register_driver\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/input/gameport/gameport.c\00", [62 x i8] zeroinitializer }, align 32
@__gameport_register_driver._entry_ptr = internal global ptr @__gameport_register_driver._entry, section ".printk_index", align 4
@__kstrtab___gameport_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___gameport_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___gameport_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__gameport_register_driver to i32), ptr @__kstrtab___gameport_register_driver, ptr @__kstrtabns___gameport_register_driver }, section "___ksymtab+__gameport_register_driver", align 4
@gameport_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @gameport_list, ptr @gameport_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_gameport_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_gameport_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_gameport_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gameport_unregister_driver to i32), ptr @__kstrtab_gameport_unregister_driver, ptr @__kstrtabns_gameport_unregister_driver }, section "___ksymtab+gameport_unregister_driver", align 4
@__kstrtab_gameport_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_gameport_open = external dso_local constant [0 x i8], align 1
@__ksymtab_gameport_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gameport_open to i32), ptr @__kstrtab_gameport_open, ptr @__kstrtabns_gameport_open }, section "___ksymtab+gameport_open", align 4
@__kstrtab_gameport_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_gameport_close = external dso_local constant [0 x i8], align 1
@__ksymtab_gameport_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gameport_close to i32), ptr @__kstrtab_gameport_close, ptr @__kstrtabns_gameport_close }, section "___ksymtab+gameport_close", align 4
@gameport_event_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @gameport_event_work, i64 4), ptr getelementptr (i8, ptr @gameport_event_work, i64 4) }, ptr @gameport_handle_events, %struct.lockdep_map { ptr @gameport_event_work, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_gameport__189_854_gameport_init4 = internal global ptr @gameport_init, section ".initcall4.init", align 4
@__exitcall_gameport_exit = internal global ptr @gameport_exit, section ".exitcall.exit", align 4
@gameport_init_port.gameport_no = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@gameport_init_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&gameport->drv_mutex\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gameport%lu\00", [20 x i8] zeroinitializer }, align 32
@gameport_init_port.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&gameport->timer_lock\00", [42 x i8] zeroinitializer }, align 32
@gameport_init_port.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&gameport->poll_timer)\00", [40 x i8] zeroinitializer }, align 32
@gameport_event_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@gameport_event_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @gameport_event_list, ptr @gameport_event_list }, [24 x i8] zeroinitializer }, align 32
@gameport_queue_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013gameport: Not enough memory to queue event %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gameport_queue_event\00", [43 x i8] zeroinitializer }, align 32
@gameport_queue_event._entry_ptr = internal global ptr @gameport_queue_event._entry, section ".printk_index", align 4
@gameport_queue_event._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014gameport: Can't get module reference, dropping event %d\0A\00", [37 x i8] zeroinitializer }, align 32
@gameport_queue_event._entry_ptr.13 = internal global ptr @gameport_queue_event._entry.11, section ".printk_index", align 4
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gameport_event_lock\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gameport_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gameport_mutex\00", [17 x i8] zeroinitializer }, align 32
@gameport_find_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 246, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"device_attach() failed for %s (%s), error: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gameport_find_driver\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gameport_find_driver._entry_ptr = internal global ptr @gameport_find_driver._entry, section ".printk_index", align 4
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gameport\00", [23 x i8] zeroinitializer }, align 32
@gameport_device_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gameport_device_group, ptr null], [24 x i8] zeroinitializer }, align 32
@gameport_driver_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gameport_driver_group, ptr null], [24 x i8] zeroinitializer }, align 32
@gameport_device_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gameport_device_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gameport_device_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_description, ptr @dev_attr_drvctl, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_description = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gameport_description_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_drvctl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @drvctl_store }, [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"description\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"drvctl\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reconnect\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rescan\00", [25 x i8] zeroinitializer }, align 32
@gameport_bind_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 229, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"device_bind_driver() failed for %s (%s) and %s, error: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gameport_bind_driver\00", [43 x i8] zeroinitializer }, align 32
@gameport_bind_driver._entry_ptr = internal global ptr @gameport_bind_driver._entry, section ".printk_index", align 4
@gameport_driver_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gameport_driver_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gameport_driver_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @driver_attr_description, ptr null], [24 x i8] zeroinitializer }, align 32
@driver_attr_description = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @description_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gameport_event_work\00", [44 x i8] zeroinitializer }, align 32
@gameport_add_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 563, ptr @.str.34, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s is %s, io %#x, speed %dkHz\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gameport_add_port\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gameport_add_port._entry_ptr = internal global ptr @gameport_add_port._entry, section ".printk_index", align 4
@gameport_add_port._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.2, i32 566, ptr @.str.34, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s is %s, speed %dkHz\0A\00", [41 x i8] zeroinitializer }, align 32
@gameport_add_port._entry_ptr.37 = internal global ptr @gameport_add_port._entry.35, section ".printk_index", align 4
@gameport_add_port._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.33, ptr @.str.2, i32 572, ptr @.str.40, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"device_add() failed for %s (%s), error: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gameport_add_port._entry_ptr.41 = internal global ptr @gameport_add_port._entry.38, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gameport_attach_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013gameport: driver_attach() failed for %s, error: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gameport_attach_driver\00", [41 x i8] zeroinitializer }, align 32
@gameport_attach_driver._entry_ptr = internal global ptr @gameport_attach_driver._entry, section ".printk_index", align 4
@gameport_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013gameport: failed to register gameport bus, error: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gameport_init\00", [18 x i8] zeroinitializer }, align 32
@gameport_init._entry_ptr = internal global ptr @gameport_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"use_ktime\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 30, i32 13 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"gameport_mutex\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"gameport_bus\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 786, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 735, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"gameport_list\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 40, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c"gameport_event_work\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"gameport_no\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 526, i32 18 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 530, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 532, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 540, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 541, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"gameport_event_lock\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"gameport_event_list\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 267, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 378, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 384, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 266, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 38, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 244, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 787, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"gameport_device_groups\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"gameport_driver_groups\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [22 x i8] c"gameport_device_group\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 501, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant [22 x i8] c"gameport_device_attrs\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 496, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant [21 x i8] c"dev_attr_description\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [16 x i8] c"dev_attr_drvctl\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 464, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 462, i32 22 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 494, i32 8 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 476, i32 20 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 478, i32 27 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 480, i32 27 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 226, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [22 x i8] c"gameport_driver_group\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 689, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant [22 x i8] c"gameport_driver_attrs\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 685, i32 26 }
@___asan_gen_.193 = private unnamed_addr constant [24 x i8] c"driver_attr_description\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 683, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 681, i32 74 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 350, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 562, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 565, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 570, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 714, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [37 x i8] c"../drivers/input/gameport/gameport.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 835, i32 3 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__UNIQUE_ID_author183, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__UNIQUE_ID_use_ktime188, ptr @__UNIQUE_ID_use_ktimetype187, ptr @__exitcall_gameport_exit, ptr @__gameport_register_driver._entry, ptr @__gameport_register_driver._entry_ptr, ptr @__initcall__kmod_gameport__189_854_gameport_init4, ptr @__ksymtab___gameport_register_driver, ptr @__ksymtab___gameport_register_port, ptr @__ksymtab_gameport_close, ptr @__ksymtab_gameport_open, ptr @__ksymtab_gameport_set_phys, ptr @__ksymtab_gameport_start_polling, ptr @__ksymtab_gameport_stop_polling, ptr @__ksymtab_gameport_unregister_driver, ptr @__ksymtab_gameport_unregister_port, ptr @__param_use_ktime, ptr @gameport_add_port._entry, ptr @gameport_add_port._entry.35, ptr @gameport_add_port._entry.38, ptr @gameport_add_port._entry_ptr, ptr @gameport_add_port._entry_ptr.37, ptr @gameport_add_port._entry_ptr.41, ptr @gameport_attach_driver._entry, ptr @gameport_attach_driver._entry_ptr, ptr @gameport_bind_driver._entry, ptr @gameport_bind_driver._entry_ptr, ptr @gameport_exit, ptr @gameport_find_driver._entry, ptr @gameport_find_driver._entry_ptr, ptr @gameport_init._entry, ptr @gameport_init._entry_ptr, ptr @gameport_queue_event._entry, ptr @gameport_queue_event._entry.11, ptr @gameport_queue_event._entry_ptr, ptr @gameport_queue_event._entry_ptr.13, ptr @use_ktime, ptr @gameport_mutex, ptr @gameport_bus, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gameport_list, ptr @gameport_event_work, ptr @gameport_init_port.gameport_no, ptr @gameport_init_port.__key, ptr @.str.3, ptr @.str.4, ptr @gameport_init_port.__key.5, ptr @.str.6, ptr @gameport_init_port.__key.7, ptr @.str.8, ptr @gameport_event_lock, ptr @gameport_event_list, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @gameport_device_groups, ptr @gameport_driver_groups, ptr @gameport_device_group, ptr @gameport_device_attrs, ptr @dev_attr_description, ptr @dev_attr_drvctl, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @gameport_driver_group, ptr @gameport_driver_attrs, ptr @driver_attr_description, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_ktime to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_bus to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_event_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_init_port.gameport_no to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_init_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_init_port.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_init_port.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_event_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_event_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_queue_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_queue_event._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_find_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_device_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_driver_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_device_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_device_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_description to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_drvctl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_bind_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_driver_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_driver_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_description to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_add_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_add_port._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_add_port._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_attach_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gameport_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gameport_start_polling(ptr noundef %gameport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_lock = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %timer_lock) #13
  %poll_cnt = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 15
  %0 = ptrtoint ptr %poll_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %poll_cnt, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %poll_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

do.body:                                          ; preds = %entry
  %poll_handler = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 16
  %2 = ptrtoint ptr %poll_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %poll_handler, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.body6, label %do.body10, !prof !157

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/gameport/gameport.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #13, !srcloc !158
  unreachable

do.body10:                                        ; preds = %do.body
  %poll_interval = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 13
  %4 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %poll_interval, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %do.body21, label %do.end26, !prof !157

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/gameport/gameport.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 182, 0\0A.popsection", ""() #13, !srcloc !159
  unreachable

do.end26:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  %poll_timer = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #13
  %add = add i32 %call2.i, %6
  %call28 = tail call i32 @mod_timer(ptr noundef %poll_timer, i32 noundef %add) #13
  br label %if.end29

if.end29:                                         ; preds = %do.end26, %entry.if.end29_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %timer_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gameport_stop_polling(ptr noundef %gameport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_lock = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %timer_lock) #13
  %poll_cnt = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 15
  %0 = ptrtoint ptr %poll_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %poll_cnt, align 8
  %dec = add i32 %1, -1
  store i32 %dec, ptr %poll_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %poll_timer = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 12
  %call = tail call i32 @del_timer(ptr noundef %poll_timer) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %timer_lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gameport_set_phys(ptr nocapture noundef %gameport, ptr nocapture noundef readonly %fmt, ...) #2 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #13
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !160
  call void @llvm.va_start(ptr nonnull %args)
  %phys = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 2
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %phys, i32 noundef 32, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__gameport_register_port(ptr noundef %gameport, ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__module_get(ptr noundef null) #13
  %drv_mutex.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %drv_mutex.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @gameport_init_port.__key) #13
  %dev.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21
  tail call void @device_initialize(ptr noundef %dev.i) #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @gameport_init_port.gameport_no, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !161
  tail call void @llvm.prefetch.p0(ptr nonnull @gameport_init_port.gameport_no, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @gameport_init_port.gameport_no, ptr nonnull @gameport_init_port.gameport_no, i32 1, ptr nonnull elementtype(i32) @gameport_init_port.gameport_no) #13, !srcloc !162
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !163
  %call2.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev.i, ptr noundef nonnull @.str.4, i32 noundef %asmresult.i.i.i.i.i) #13
  %bus.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 5
  %1 = ptrtoint ptr %bus.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @gameport_bus, ptr %bus.i, align 8
  %release.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 35
  %2 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @gameport_release_port, ptr %release.i, align 4
  %parent.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 17
  %3 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.gameport_init_port.exit_crit_edge, label %if.then.i

entry.gameport_init_port.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_init_port.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev6.i = getelementptr inbounds %struct.gameport, ptr %4, i32 0, i32 21
  %parent8.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 1
  %5 = ptrtoint ptr %parent8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev6.i, ptr %parent8.i, align 8
  br label %gameport_init_port.exit

gameport_init_port.exit:                          ; preds = %if.then.i, %entry.gameport_init_port.exit_crit_edge
  %node.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 22
  %6 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 22, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %node.i, ptr %prev.i.i, align 4
  %timer_lock.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %timer_lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @gameport_init_port.__key.5, i16 noundef signext 3) #13
  %poll_timer.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %poll_timer.i, ptr noundef nonnull @gameport_run_poll_handler, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @gameport_init_port.__key.7) #13
  %call = tail call fastcc i32 @gameport_queue_event(ptr noundef %gameport, ptr noundef %owner, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gameport_queue_event(ptr noundef %object, ptr noundef %owner, i32 noundef %event_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gameport_event_lock) #13
  %.pn56 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gameport_event_list, i32 0, i32 1), align 4
  %cmp7.not57 = icmp eq ptr %.pn56, @gameport_event_list
  br i1 %cmp7.not57, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn58 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn56, %entry.for.body_crit_edge ]
  %object9 = getelementptr i8, ptr %.pn58, i32 -8
  %0 = ptrtoint ptr %object9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object9, align 4
  %cmp10 = icmp eq ptr %1, %object
  br i1 %cmp10, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %event.0.le = getelementptr i8, ptr %.pn58, i32 -12
  %2 = ptrtoint ptr %event.0.le to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event.0.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %event_type)
  %cmp12 = icmp eq i32 %3, %event_type
  br i1 %cmp12, label %if.then.out_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc:                                          ; preds = %for.body
  %prev = getelementptr inbounds %struct.list_head, ptr %.pn58, i32 0, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %prev, align 4
  %cmp7.not = icmp eq ptr %.pn, @gameport_event_list
  br i1 %cmp7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 2592, i32 noundef 20) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end24, label %if.end27

do.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %event_type) #17
  br label %out

if.end27:                                         ; preds = %for.end
  %call28 = tail call zeroext i1 @try_module_get(ptr noundef %owner) #13
  br i1 %call28, label %if.end35, label %do.end32

do.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %event_type) #17
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %out

if.end35:                                         ; preds = %if.end27
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %event_type, ptr %call7.i, align 8
  %object37 = getelementptr inbounds %struct.gameport_event, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %object37 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %object, ptr %object37, align 4
  %owner38 = getelementptr inbounds %struct.gameport_event, ptr %call7.i, i32 0, i32 2
  %8 = ptrtoint ptr %owner38 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %owner, ptr %owner38, align 8
  %node39 = getelementptr inbounds %struct.gameport_event, ptr %call7.i, i32 0, i32 3
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gameport_event_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node39, ptr noundef %9, ptr noundef nonnull @gameport_event_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end35.list_add_tail.exit_crit_edge

if.end35.list_add_tail.exit_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %node39, ptr getelementptr inbounds (%struct.list_head, ptr @gameport_event_list, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %node39 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @gameport_event_list, ptr %node39, align 4
  %prev3.i.i = getelementptr inbounds %struct.gameport_event, ptr %call7.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev3.i.i, align 8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %node39, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end35.list_add_tail.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %13 = load ptr, ptr @system_long_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef nonnull @gameport_event_work) #13
  br label %out

out:                                              ; preds = %list_add_tail.exit, %do.end32, %do.end24, %if.then.out_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then.out_crit_edge ], [ 0, %list_add_tail.exit ], [ -22, %do.end32 ], [ -12, %do.end24 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gameport_event_lock, i32 noundef %call3) #13
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gameport_unregister_port(ptr noundef %gameport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @gameport_mutex, i32 noundef 0) #13
  %child.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 18
  %0 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %child.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.gameport_disconnect_port.exit_crit_edge, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

entry.gameport_disconnect_port.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_disconnect_port.exit

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %s.0.i = phi ptr [ %3, %for.cond.i.for.cond.i_crit_edge ], [ %gameport, %entry.for.cond.i_crit_edge ]
  %child1.i = getelementptr inbounds %struct.gameport, ptr %s.0.i, i32 0, i32 18
  %2 = ptrtoint ptr %child1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %child1.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %for.cond.i.do.body.i_crit_edge, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.cond.i.do.body.i_crit_edge:                   ; preds = %for.cond.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.cond.i.do.body.i_crit_edge
  %s.1.i = phi ptr [ %5, %do.body.i.do.body.i_crit_edge ], [ %s.0.i, %for.cond.i.do.body.i_crit_edge ]
  %parent4.i = getelementptr inbounds %struct.gameport, ptr %s.1.i, i32 0, i32 17
  %4 = ptrtoint ptr %parent4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent4.i, align 8
  %dev.i = getelementptr inbounds %struct.gameport, ptr %s.1.i, i32 0, i32 21
  tail call void @device_release_driver(ptr noundef %dev.i) #13
  tail call fastcc void @gameport_destroy_port(ptr noundef %s.1.i) #13
  %cmp.not.i = icmp eq ptr %5, %gameport
  br i1 %cmp.not.i, label %do.body.i.gameport_disconnect_port.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.body.i.gameport_disconnect_port.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_disconnect_port.exit

gameport_disconnect_port.exit:                    ; preds = %do.body.i.gameport_disconnect_port.exit_crit_edge, %entry.gameport_disconnect_port.exit_crit_edge
  %dev5.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21
  tail call void @device_release_driver(ptr noundef %dev5.i) #13
  tail call fastcc void @gameport_destroy_port(ptr noundef %gameport)
  tail call void @mutex_unlock(ptr noundef nonnull @gameport_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gameport_destroy_port(ptr noundef %gameport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gameport_event_lock) #13
  %.pn23.i = load ptr, ptr @gameport_event_list, align 4
  %cmp6.not24.i = icmp eq ptr %.pn23.i, @gameport_event_list
  br i1 %cmp6.not24.i, label %entry.gameport_get_pending_child.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.gameport_get_pending_child.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_get_pending_child.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn25.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn23.i, %entry.for.body.i_crit_edge ]
  %event.0.i = getelementptr i8, ptr %.pn25.i, i32 -12
  %0 = ptrtoint ptr %event.0.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.i = icmp eq i32 %1, 0
  br i1 %cmp8.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %object.i = getelementptr i8, ptr %.pn25.i, i32 -8
  %2 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object.i, align 4
  %parent10.i = getelementptr inbounds %struct.gameport, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %parent10.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent10.i, align 8
  %cmp11.i = icmp eq ptr %5, %gameport
  br i1 %cmp11.i, label %gameport_get_pending_child.exit, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %6 = ptrtoint ptr %.pn25.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn25.i, align 4
  %cmp6.not.i = icmp eq ptr %.pn.i, @gameport_event_list
  br i1 %cmp6.not.i, label %for.inc.i.gameport_get_pending_child.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.gameport_get_pending_child.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_get_pending_child.exit.thread

gameport_get_pending_child.exit.thread:           ; preds = %for.inc.i.gameport_get_pending_child.exit.thread_crit_edge, %entry.gameport_get_pending_child.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gameport_event_lock, i32 noundef %call2.i) #13
  br label %if.end

gameport_get_pending_child.exit:                  ; preds = %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gameport_event_lock, i32 noundef %call2.i) #13
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %gameport_get_pending_child.exit.if.end_crit_edge, label %if.then

gameport_get_pending_child.exit.if.end_crit_edge: ; preds = %gameport_get_pending_child.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %gameport_get_pending_child.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @gameport_remove_pending_events(ptr noundef nonnull %3)
  %dev = getelementptr inbounds %struct.gameport, ptr %3, i32 0, i32 21
  tail call void @put_device(ptr noundef %dev) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %gameport_get_pending_child.exit.if.end_crit_edge, %gameport_get_pending_child.exit.thread
  %parent = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 17
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %child4 = getelementptr inbounds %struct.gameport, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %child4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %child4, align 4
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %parent, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21
  %state_in_sysfs.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 0, i32 8
  %11 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %12 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %if.end6.if.end12_crit_edge, label %if.then10

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @device_del(ptr noundef %dev7) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6.if.end12_crit_edge
  %node = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end12.list_del_init.exit_crit_edge

if.end12.list_del_init.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 22, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end12.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 22, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node, ptr %prev.i3.i, align 4
  tail call fastcc void @gameport_remove_pending_events(ptr noundef %gameport)
  tail call void @put_device(ptr noundef %dev7) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__gameport_register_driver(ptr noundef %drv, ptr noundef %owner, ptr noundef %mod_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.gameport_driver, ptr %drv, i32 0, i32 4
  %bus = getelementptr inbounds %struct.gameport_driver, ptr %drv, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @gameport_bus, ptr %bus, align 4
  %owner2 = getelementptr inbounds %struct.gameport_driver, ptr %drv, i32 0, i32 4, i32 2
  %1 = ptrtoint ptr %owner2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %owner, ptr %owner2, align 4
  %mod_name4 = getelementptr inbounds %struct.gameport_driver, ptr %drv, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %mod_name4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mod_name, ptr %mod_name4, align 4
  %ignore = getelementptr inbounds %struct.gameport_driver, ptr %drv, i32 0, i32 5
  %3 = ptrtoint ptr %ignore to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %ignore, align 4
  %call = tail call i32 @driver_register(ptr noundef %driver) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %5, i32 noundef %call) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %ignore to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ignore, align 4
  %call9 = tail call fastcc i32 @gameport_queue_event(ptr noundef %drv, ptr noundef null, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @driver_unregister(ptr noundef %driver) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call9, %if.then11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gameport_unregister_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @gameport_mutex, i32 noundef 0) #13
  %ignore = getelementptr inbounds %struct.gameport_driver, ptr %drv, i32 0, i32 5
  %0 = ptrtoint ptr %ignore to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ignore, align 4
  tail call fastcc void @gameport_remove_pending_events(ptr noundef %drv)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %.pn.in = phi ptr [ @gameport_list, %entry ], [ %.pn.in.be, %for.cond.backedge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @gameport_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %drv1 = getelementptr i8, ptr %.pn, i32 -1024
  %2 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv1, align 8
  %cmp2 = icmp eq ptr %3, %drv
  br i1 %cmp2, label %if.then, label %for.body.for.cond.backedge_crit_edge

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %do.end.i, %gameport_disconnect_port.exit.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %.pn.in.be = phi ptr [ %.pn, %for.body.for.cond.backedge_crit_edge ], [ @gameport_list, %gameport_disconnect_port.exit.for.cond.backedge_crit_edge ], [ @gameport_list, %do.end.i ]
  br label %for.cond

if.then:                                          ; preds = %for.body
  %gameport.0.le = getelementptr i8, ptr %.pn, i32 -1240
  %child.i = getelementptr i8, ptr %.pn, i32 -1028
  %4 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %child.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.gameport_disconnect_port.exit_crit_edge, label %if.then.for.cond.i_crit_edge

if.then.for.cond.i_crit_edge:                     ; preds = %if.then
  br label %for.cond.i

if.then.gameport_disconnect_port.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_disconnect_port.exit

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then.for.cond.i_crit_edge
  %s.0.i = phi ptr [ %7, %for.cond.i.for.cond.i_crit_edge ], [ %gameport.0.le, %if.then.for.cond.i_crit_edge ]
  %child1.i = getelementptr inbounds %struct.gameport, ptr %s.0.i, i32 0, i32 18
  %6 = ptrtoint ptr %child1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %child1.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %for.cond.i.do.body.i_crit_edge, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.cond.i.do.body.i_crit_edge:                   ; preds = %for.cond.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.cond.i.do.body.i_crit_edge
  %s.1.i = phi ptr [ %9, %do.body.i.do.body.i_crit_edge ], [ %s.0.i, %for.cond.i.do.body.i_crit_edge ]
  %parent4.i = getelementptr inbounds %struct.gameport, ptr %s.1.i, i32 0, i32 17
  %8 = ptrtoint ptr %parent4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent4.i, align 8
  %dev.i = getelementptr inbounds %struct.gameport, ptr %s.1.i, i32 0, i32 21
  tail call void @device_release_driver(ptr noundef %dev.i) #13
  tail call fastcc void @gameport_destroy_port(ptr noundef %s.1.i) #13
  %cmp.not.i = icmp eq ptr %9, %gameport.0.le
  br i1 %cmp.not.i, label %do.body.i.gameport_disconnect_port.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.body.i.gameport_disconnect_port.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_disconnect_port.exit

gameport_disconnect_port.exit:                    ; preds = %do.body.i.gameport_disconnect_port.exit_crit_edge, %if.then.gameport_disconnect_port.exit_crit_edge
  %dev5.i = getelementptr i8, ptr %.pn, i32 -928
  tail call void @device_release_driver(ptr noundef %dev5.i) #13
  %call.i = tail call i32 @device_attach(ptr noundef %dev5.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %gameport_disconnect_port.exit.for.cond.backedge_crit_edge

gameport_disconnect_port.exit.for.cond.backedge_crit_edge: ; preds = %gameport_disconnect_port.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.backedge

do.end.i:                                         ; preds = %gameport_disconnect_port.exit
  call void @__sanitizer_cov_trace_pc() #15
  %phys.i = getelementptr i8, ptr %.pn, i32 -1204
  %name.i = getelementptr i8, ptr %.pn, i32 -1236
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5.i, ptr noundef nonnull @.str.17, ptr noundef %phys.i, ptr noundef %name.i, i32 noundef %call.i) #17
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  %driver = getelementptr inbounds %struct.gameport_driver, ptr %drv, i32 0, i32 4
  tail call void @driver_unregister(ptr noundef %driver) #13
  tail call void @mutex_unlock(ptr noundef nonnull @gameport_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gameport_remove_pending_events(ptr noundef readnone %object) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gameport_event_lock) #13
  %0 = load ptr, ptr @gameport_event_list, align 4
  %cmp11.not30 = icmp eq ptr %0, @gameport_event_list
  br i1 %cmp11.not30, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in31 = phi ptr [ %.pn33, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %event.032 = getelementptr i8, ptr %.pn.in31, i32 -12
  %1 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn33 = load ptr, ptr %.pn.in31, align 4
  %object13 = getelementptr i8, ptr %.pn.in31, i32 -8
  %2 = ptrtoint ptr %object13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %object13, align 4
  %cmp14 = icmp eq ptr %3, %object
  br i1 %cmp14, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in31) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in31, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %.pn.in31 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %.pn.in31, ptr %.pn.in31, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in31, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %.pn.in31, ptr %prev.i3.i, align 4
  %owner.i = getelementptr i8, ptr %.pn.in31, i32 -4
  %12 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %13) #13
  tail call void @kfree(ptr noundef %event.032) #13
  br label %for.inc

for.inc:                                          ; preds = %list_del_init.exit, %for.body.for.inc_crit_edge
  %cmp11.not = icmp eq ptr %.pn33, @gameport_event_list
  br i1 %cmp11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gameport_event_lock, i32 noundef %call2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 10
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %open, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %gameport, i32 noundef %mode) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end6_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 1
  br i1 %cmp.not, label %if.else.if.end6_crit_edge, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.then.if.end6_crit_edge
  %drv_mutex.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %drv_mutex.i, i32 noundef 0) #13
  %drv1.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 19
  %2 = ptrtoint ptr %drv1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %drv, ptr %drv1.i, align 8
  tail call void @mutex_unlock(ptr noundef %drv_mutex.i) #13
  br label %return

return:                                           ; preds = %if.end6, %if.else.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -1, %if.then.return_crit_edge ], [ -1, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gameport_close(ptr noundef %gameport) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %poll_timer = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 12
  %call = tail call i32 @del_timer_sync(ptr noundef %poll_timer) #13
  %poll_handler = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 16
  %0 = ptrtoint ptr %poll_handler to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %poll_handler, align 4
  %poll_interval = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 13
  %1 = ptrtoint ptr %poll_interval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %poll_interval, align 8
  %drv_mutex.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %drv_mutex.i, i32 noundef 0) #13
  %drv1.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 19
  %2 = ptrtoint ptr %drv1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %drv1.i, align 8
  tail call void @mutex_unlock(ptr noundef %drv_mutex.i) #13
  %close = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 11
  %3 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %close, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %4(ptr noundef %gameport) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gameport_exit() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @bus_unregister(ptr noundef nonnull @gameport_bus) #13
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @gameport_event_work) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gameport_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @gameport_bus) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %call) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gameport_release_port(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -312
  tail call void @kfree(ptr noundef %add.ptr) #13
  tail call void @module_put(ptr noundef null) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gameport_run_poll_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -104
  %poll_handler = getelementptr i8, ptr %t, i32 100
  %0 = ptrtoint ptr %poll_handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %poll_handler, align 4
  tail call void %1(ptr noundef %add.ptr) #13
  %poll_cnt = getelementptr i8, ptr %t, i32 96
  %2 = ptrtoint ptr %poll_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %poll_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %poll_interval = getelementptr i8, ptr %t, i32 48
  %5 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %poll_interval, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %6) #13
  %add = add i32 %call2.i, %4
  %call1 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gameport_bus_match(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %drv) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ignore = getelementptr i8, ptr %drv, i32 76
  %0 = ptrtoint ptr %ignore to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ignore, align 4, !range !164
  %2 = xor i8 %1, 1
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gameport_driver_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -312
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -16
  %connect = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connect, align 4
  %call = tail call i32 %3(ptr noundef %add.ptr, ptr noundef %add.ptr3) #13
  %drv4 = getelementptr i8, ptr %dev, i32 -96
  %4 = ptrtoint ptr %drv4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv4, align 8
  %tobool.not = icmp eq ptr %5, null
  %cond = select i1 %tobool.not, i32 -19, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gameport_driver_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -312
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %disconnect = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disconnect, align 4
  tail call void %3(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gameport_description_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr i8, ptr %dev, i32 -308
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, ptr noundef %name)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drvctl_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -312
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @gameport_mutex, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %child.i = getelementptr i8, ptr %dev, i32 -100
  %0 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %child.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then3.gameport_disconnect_port.exit_crit_edge, label %if.then3.for.cond.i_crit_edge

if.then3.for.cond.i_crit_edge:                    ; preds = %if.then3
  br label %for.cond.i

if.then3.gameport_disconnect_port.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_disconnect_port.exit

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then3.for.cond.i_crit_edge
  %s.0.i = phi ptr [ %3, %for.cond.i.for.cond.i_crit_edge ], [ %add.ptr, %if.then3.for.cond.i_crit_edge ]
  %child1.i = getelementptr inbounds %struct.gameport, ptr %s.0.i, i32 0, i32 18
  %2 = ptrtoint ptr %child1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %child1.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %for.cond.i.do.body.i_crit_edge, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.cond.i.do.body.i_crit_edge:                   ; preds = %for.cond.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.cond.i.do.body.i_crit_edge
  %s.1.i = phi ptr [ %5, %do.body.i.do.body.i_crit_edge ], [ %s.0.i, %for.cond.i.do.body.i_crit_edge ]
  %parent4.i = getelementptr inbounds %struct.gameport, ptr %s.1.i, i32 0, i32 17
  %4 = ptrtoint ptr %parent4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent4.i, align 8
  %dev.i = getelementptr inbounds %struct.gameport, ptr %s.1.i, i32 0, i32 21
  tail call void @device_release_driver(ptr noundef %dev.i) #13
  tail call fastcc void @gameport_destroy_port(ptr noundef %s.1.i) #13
  %cmp.not.i = icmp eq ptr %5, %add.ptr
  br i1 %cmp.not.i, label %do.body.i.gameport_disconnect_port.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

do.body.i.gameport_disconnect_port.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_disconnect_port.exit

gameport_disconnect_port.exit:                    ; preds = %do.body.i.gameport_disconnect_port.exit_crit_edge, %if.then3.gameport_disconnect_port.exit_crit_edge
  tail call void @device_release_driver(ptr noundef %dev) #13
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else.do.body.i41_crit_edge, label %if.else7

if.else.do.body.i41_crit_edge:                    ; preds = %if.else
  br label %do.body.i41

do.body.i41:                                      ; preds = %if.end.i.do.body.i41_crit_edge, %if.else.do.body.i41_crit_edge
  %gameport.addr.0.i = phi ptr [ %17, %if.end.i.do.body.i41_crit_edge ], [ %add.ptr, %if.else.do.body.i41_crit_edge ]
  %drv.i = getelementptr inbounds %struct.gameport, ptr %gameport.addr.0.i, i32 0, i32 19
  %6 = ptrtoint ptr %drv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv.i, align 8
  %tobool.not.i40 = icmp eq ptr %7, null
  br i1 %tobool.not.i40, label %do.body.i41.if.then.i_crit_edge, label %lor.lhs.false.i

do.body.i41.if.then.i_crit_edge:                  ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %do.body.i41
  %reconnect.i = getelementptr inbounds %struct.gameport_driver, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %reconnect.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reconnect.i, align 4
  %tobool2.not.i42 = icmp eq ptr %9, null
  br i1 %tobool2.not.i42, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %call.i = tail call i32 %9(ptr noundef %gameport.addr.0.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end.i, label %lor.lhs.false3.i.if.then.i_crit_edge

lor.lhs.false3.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false3.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %do.body.i41.if.then.i_crit_edge
  %child.i.i = getelementptr inbounds %struct.gameport, ptr %gameport.addr.0.i, i32 0, i32 18
  %10 = ptrtoint ptr %child.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %child.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then.i.gameport_disconnect_port.exit.i_crit_edge, label %if.then.i.for.cond.i.i_crit_edge

if.then.i.for.cond.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.cond.i.i

if.then.i.gameport_disconnect_port.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_disconnect_port.exit.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.then.i.for.cond.i.i_crit_edge
  %s.0.i.i = phi ptr [ %13, %for.cond.i.i.for.cond.i.i_crit_edge ], [ %gameport.addr.0.i, %if.then.i.for.cond.i.i_crit_edge ]
  %child1.i.i = getelementptr inbounds %struct.gameport, ptr %s.0.i.i, i32 0, i32 18
  %12 = ptrtoint ptr %child1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %child1.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i.i, label %for.cond.i.i.do.body.i.i_crit_edge, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i.i

for.cond.i.i.do.body.i.i_crit_edge:               ; preds = %for.cond.i.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %for.cond.i.i.do.body.i.i_crit_edge
  %s.1.i.i = phi ptr [ %15, %do.body.i.i.do.body.i.i_crit_edge ], [ %s.0.i.i, %for.cond.i.i.do.body.i.i_crit_edge ]
  %parent4.i.i = getelementptr inbounds %struct.gameport, ptr %s.1.i.i, i32 0, i32 17
  %14 = ptrtoint ptr %parent4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent4.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.gameport, ptr %s.1.i.i, i32 0, i32 21
  tail call void @device_release_driver(ptr noundef %dev.i.i) #13
  tail call fastcc void @gameport_destroy_port(ptr noundef %s.1.i.i) #13
  %cmp.not.i.i = icmp eq ptr %15, %gameport.addr.0.i
  br i1 %cmp.not.i.i, label %do.body.i.i.gameport_disconnect_port.exit.i_crit_edge, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

do.body.i.i.gameport_disconnect_port.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_disconnect_port.exit.i

gameport_disconnect_port.exit.i:                  ; preds = %do.body.i.i.gameport_disconnect_port.exit.i_crit_edge, %if.then.i.gameport_disconnect_port.exit.i_crit_edge
  %dev5.i.i = getelementptr inbounds %struct.gameport, ptr %gameport.addr.0.i, i32 0, i32 21
  tail call void @device_release_driver(ptr noundef %dev5.i.i) #13
  %call.i.i = tail call i32 @device_attach(ptr noundef %dev5.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %gameport_disconnect_port.exit.i.cleanup.sink.split_crit_edge

gameport_disconnect_port.exit.i.cleanup.sink.split_crit_edge: ; preds = %gameport_disconnect_port.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

do.end.i.i:                                       ; preds = %gameport_disconnect_port.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %phys.i.i = getelementptr inbounds %struct.gameport, ptr %gameport.addr.0.i, i32 0, i32 2
  %name.i.i = getelementptr inbounds %struct.gameport, ptr %gameport.addr.0.i, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5.i.i, ptr noundef nonnull @.str.17, ptr noundef %phys.i.i, ptr noundef %name.i.i, i32 noundef %call.i.i) #17
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %lor.lhs.false3.i
  %child.i43 = getelementptr inbounds %struct.gameport, ptr %gameport.addr.0.i, i32 0, i32 18
  %16 = ptrtoint ptr %child.i43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %child.i43, align 4
  %tobool7.not.i = icmp eq ptr %17, null
  br i1 %tobool7.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end.i.do.body.i41_crit_edge

if.end.i.do.body.i41_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i41

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.else7:                                         ; preds = %if.else
  %call8 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else7
  %child.i44 = getelementptr i8, ptr %dev, i32 -100
  %18 = ptrtoint ptr %child.i44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %child.i44, align 4
  %tobool.not.i45 = icmp eq ptr %19, null
  br i1 %tobool.not.i45, label %if.then10.gameport_disconnect_port.exit57_crit_edge, label %if.then10.for.cond.i49_crit_edge

if.then10.for.cond.i49_crit_edge:                 ; preds = %if.then10
  br label %for.cond.i49

if.then10.gameport_disconnect_port.exit57_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_disconnect_port.exit57

for.cond.i49:                                     ; preds = %for.cond.i49.for.cond.i49_crit_edge, %if.then10.for.cond.i49_crit_edge
  %s.0.i46 = phi ptr [ %21, %for.cond.i49.for.cond.i49_crit_edge ], [ %add.ptr, %if.then10.for.cond.i49_crit_edge ]
  %child1.i47 = getelementptr inbounds %struct.gameport, ptr %s.0.i46, i32 0, i32 18
  %20 = ptrtoint ptr %child1.i47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %child1.i47, align 4
  %tobool2.not.i48 = icmp eq ptr %21, null
  br i1 %tobool2.not.i48, label %for.cond.i49.do.body.i54_crit_edge, label %for.cond.i49.for.cond.i49_crit_edge

for.cond.i49.for.cond.i49_crit_edge:              ; preds = %for.cond.i49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i49

for.cond.i49.do.body.i54_crit_edge:               ; preds = %for.cond.i49
  br label %do.body.i54

do.body.i54:                                      ; preds = %do.body.i54.do.body.i54_crit_edge, %for.cond.i49.do.body.i54_crit_edge
  %s.1.i50 = phi ptr [ %23, %do.body.i54.do.body.i54_crit_edge ], [ %s.0.i46, %for.cond.i49.do.body.i54_crit_edge ]
  %parent4.i51 = getelementptr inbounds %struct.gameport, ptr %s.1.i50, i32 0, i32 17
  %22 = ptrtoint ptr %parent4.i51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent4.i51, align 8
  %dev.i52 = getelementptr inbounds %struct.gameport, ptr %s.1.i50, i32 0, i32 21
  tail call void @device_release_driver(ptr noundef %dev.i52) #13
  tail call fastcc void @gameport_destroy_port(ptr noundef %s.1.i50) #13
  %cmp.not.i53 = icmp eq ptr %23, %add.ptr
  br i1 %cmp.not.i53, label %do.body.i54.gameport_disconnect_port.exit57_crit_edge, label %do.body.i54.do.body.i54_crit_edge

do.body.i54.do.body.i54_crit_edge:                ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i54

do.body.i54.gameport_disconnect_port.exit57_crit_edge: ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_disconnect_port.exit57

gameport_disconnect_port.exit57:                  ; preds = %do.body.i54.gameport_disconnect_port.exit57_crit_edge, %if.then10.gameport_disconnect_port.exit57_crit_edge
  tail call void @device_release_driver(ptr noundef %dev) #13
  %call.i59 = tail call i32 @device_attach(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp.i = icmp slt i32 %call.i59, 0
  br i1 %cmp.i, label %do.end.i, label %gameport_disconnect_port.exit57.cleanup.sink.split_crit_edge

gameport_disconnect_port.exit57.cleanup.sink.split_crit_edge: ; preds = %gameport_disconnect_port.exit57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

do.end.i:                                         ; preds = %gameport_disconnect_port.exit57
  call void @__sanitizer_cov_trace_pc() #15
  %phys.i = getelementptr i8, ptr %dev, i32 -276
  %name.i = getelementptr i8, ptr %dev, i32 -308
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef %phys.i, ptr noundef %name.i, i32 noundef %call.i59) #17
  br label %cleanup.sink.split

if.else11:                                        ; preds = %if.else7
  %call12 = tail call ptr @driver_find(ptr noundef %buf, ptr noundef nonnull @gameport_bus) #13
  %cmp.not = icmp eq ptr %call12, null
  br i1 %cmp.not, label %if.else11.cleanup.sink.split_crit_edge, label %if.then13

if.else11.cleanup.sink.split_crit_edge:           ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then13:                                        ; preds = %if.else11
  %child.i61 = getelementptr i8, ptr %dev, i32 -100
  %24 = ptrtoint ptr %child.i61 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %child.i61, align 4
  %tobool.not.i62 = icmp eq ptr %25, null
  br i1 %tobool.not.i62, label %if.then13.gameport_disconnect_port.exit74_crit_edge, label %if.then13.for.cond.i66_crit_edge

if.then13.for.cond.i66_crit_edge:                 ; preds = %if.then13
  br label %for.cond.i66

if.then13.gameport_disconnect_port.exit74_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_disconnect_port.exit74

for.cond.i66:                                     ; preds = %for.cond.i66.for.cond.i66_crit_edge, %if.then13.for.cond.i66_crit_edge
  %s.0.i63 = phi ptr [ %27, %for.cond.i66.for.cond.i66_crit_edge ], [ %add.ptr, %if.then13.for.cond.i66_crit_edge ]
  %child1.i64 = getelementptr inbounds %struct.gameport, ptr %s.0.i63, i32 0, i32 18
  %26 = ptrtoint ptr %child1.i64 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %child1.i64, align 4
  %tobool2.not.i65 = icmp eq ptr %27, null
  br i1 %tobool2.not.i65, label %for.cond.i66.do.body.i71_crit_edge, label %for.cond.i66.for.cond.i66_crit_edge

for.cond.i66.for.cond.i66_crit_edge:              ; preds = %for.cond.i66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i66

for.cond.i66.do.body.i71_crit_edge:               ; preds = %for.cond.i66
  br label %do.body.i71

do.body.i71:                                      ; preds = %do.body.i71.do.body.i71_crit_edge, %for.cond.i66.do.body.i71_crit_edge
  %s.1.i67 = phi ptr [ %29, %do.body.i71.do.body.i71_crit_edge ], [ %s.0.i63, %for.cond.i66.do.body.i71_crit_edge ]
  %parent4.i68 = getelementptr inbounds %struct.gameport, ptr %s.1.i67, i32 0, i32 17
  %28 = ptrtoint ptr %parent4.i68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent4.i68, align 8
  %dev.i69 = getelementptr inbounds %struct.gameport, ptr %s.1.i67, i32 0, i32 21
  tail call void @device_release_driver(ptr noundef %dev.i69) #13
  tail call fastcc void @gameport_destroy_port(ptr noundef %s.1.i67) #13
  %cmp.not.i70 = icmp eq ptr %29, %add.ptr
  br i1 %cmp.not.i70, label %do.body.i71.gameport_disconnect_port.exit74_crit_edge, label %do.body.i71.do.body.i71_crit_edge

do.body.i71.do.body.i71_crit_edge:                ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i71

do.body.i71.gameport_disconnect_port.exit74_crit_edge: ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_disconnect_port.exit74

gameport_disconnect_port.exit74:                  ; preds = %do.body.i71.gameport_disconnect_port.exit74_crit_edge, %if.then13.gameport_disconnect_port.exit74_crit_edge
  tail call void @device_release_driver(ptr noundef %dev) #13
  %add.ptr16 = getelementptr i8, ptr %call12, i32 -16
  %driver1.i = getelementptr i8, ptr %dev, i32 156
  %30 = ptrtoint ptr %driver1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call12, ptr %driver1.i, align 4
  %connect.i = getelementptr i8, ptr %call12, i32 -12
  %31 = ptrtoint ptr %connect.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %connect.i, align 4
  %call.i76 = tail call i32 %32(ptr noundef %add.ptr, ptr noundef %add.ptr16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not.i77 = icmp eq i32 %call.i76, 0
  br i1 %tobool.not.i77, label %if.end.i79, label %gameport_disconnect_port.exit74.cleanup.sink.split.i_crit_edge

gameport_disconnect_port.exit74.cleanup.sink.split.i_crit_edge: ; preds = %gameport_disconnect_port.exit74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.end.i79:                                       ; preds = %gameport_disconnect_port.exit74
  %call5.i = tail call i32 @device_bind_driver(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i78 = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i78, label %if.end.i79.cleanup.sink.split_crit_edge, label %do.end.i82

if.end.i79.cleanup.sink.split_crit_edge:          ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

do.end.i82:                                       ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #15
  %phys.i80 = getelementptr i8, ptr %dev, i32 -276
  %name.i81 = getelementptr i8, ptr %dev, i32 -308
  %33 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr16, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %phys.i80, ptr noundef %name.i81, ptr noundef %34, i32 noundef %call5.i) #17
  %disconnect.i = getelementptr i8, ptr %call12, i32 -4
  %35 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %disconnect.i, align 4
  tail call void %36(ptr noundef %add.ptr) #13
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.end.i82, %gameport_disconnect_port.exit74.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call5.i, %do.end.i82 ], [ -19, %gameport_disconnect_port.exit74.cleanup.sink.split.i_crit_edge ]
  %37 = ptrtoint ptr %driver1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %driver1.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.i, %if.end.i79.cleanup.sink.split_crit_edge, %if.else11.cleanup.sink.split_crit_edge, %do.end.i, %gameport_disconnect_port.exit57.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %do.end.i.i, %gameport_disconnect_port.exit.i.cleanup.sink.split_crit_edge, %gameport_disconnect_port.exit
  %retval.0.ph = phi i32 [ -22, %if.else11.cleanup.sink.split_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %count, %gameport_disconnect_port.exit ], [ %count, %gameport_disconnect_port.exit.i.cleanup.sink.split_crit_edge ], [ %count, %do.end.i.i ], [ %count, %gameport_disconnect_port.exit57.cleanup.sink.split_crit_edge ], [ %count, %do.end.i ], [ %count, %if.end.i79.cleanup.sink.split_crit_edge ], [ %count, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @gameport_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @driver_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_bind_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @description_show(ptr nocapture noundef readonly %drv, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %drv, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, ptr @.str.30, ptr %1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, ptr noundef nonnull %spec.select)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gameport_handle_events(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @gameport_mutex, i32 noundef 0) #13
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gameport_event_lock) #13
  %0 = load volatile ptr, ptr @gameport_event_list, align 4
  %cmp.i.not.i = icmp eq ptr %0, @gameport_event_list
  br i1 %cmp.i.not.i, label %gameport_get_event.exit.thread, label %if.then.i

gameport_get_event.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gameport_event_lock, i32 noundef %call2.i) #13
  br label %if.end

if.then.i:                                        ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %0, i32 -12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.gameport_get_event.exit_crit_edge

if.then.i.gameport_get_event.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_get_event.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %gameport_get_event.exit

gameport_get_event.exit:                          ; preds = %if.end.i.i.i, %if.then.i.gameport_get_event.exit_crit_edge
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %0, ptr %0, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %0, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gameport_event_lock, i32 noundef %call2.i) #13
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %gameport_get_event.exit.if.end_crit_edge, label %if.then

gameport_get_event.exit.if.end_crit_edge:         ; preds = %gameport_get_event.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %gameport_get_event.exit
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.then.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  %object = getelementptr i8, ptr %0, i32 -8
  %12 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %object, align 4
  %parent.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 17
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i7

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i7:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %child.i = getelementptr inbounds %struct.gameport, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %child.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %child.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i7, %sw.bb.if.end.i_crit_edge
  %17 = load i8, ptr @use_ktime, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool2.not.i = icmp eq i8 %17, 0
  %open.i.i54.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 10
  %18 = ptrtoint ptr %open.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %open.i.i54.i, align 8
  %tobool.not.i.i55.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end.i
  br i1 %tobool.not.i.i55.i, label %cond.true.i.gameport_open.exit.i.i_crit_edge, label %if.then.i.i.i

cond.true.i.gameport_open.exit.i.i_crit_edge:     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_open.exit.i.i

if.then.i.i.i:                                    ; preds = %cond.true.i
  %call.i.i.i8 = tail call i32 %19(ptr noundef %13, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i8)
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i.i8, 0
  br i1 %tobool2.not.i.i.i, label %if.then.i.i.i.gameport_open.exit.i.i_crit_edge, label %if.then.i.i.i.cond.end.i_crit_edge

if.then.i.i.i.cond.end.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

if.then.i.i.i.gameport_open.exit.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_open.exit.i.i

gameport_open.exit.i.i:                           ; preds = %if.then.i.i.i.gameport_open.exit.i.i_crit_edge, %cond.true.i.gameport_open.exit.i.i_crit_edge
  %drv_mutex.i.i.i.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %drv_mutex.i.i.i.i, i32 noundef 0) #13
  %drv1.i.i.i.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 19
  %20 = ptrtoint ptr %drv1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %drv1.i.i.i.i, align 8
  tail call void @mutex_unlock(ptr noundef %drv_mutex.i.i.i.i) #13
  %read.i.i.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 7
  %io.i.i.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 3
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %do.end51.i.i.do.body1.i.i_crit_edge, %gameport_open.exit.i.i
  %i.0119.i.i = phi i32 [ 0, %gameport_open.exit.i.i ], [ %inc73.i.i, %do.end51.i.i.do.body1.i.i_crit_edge ]
  %tx.0118.i.i = phi i32 [ -1, %gameport_open.exit.i.i ], [ %31, %do.end51.i.i.do.body1.i.i_crit_edge ]
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !165
  %and.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool11.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %do.body1.i.i.do.end15.i.i_crit_edge

do.body1.i.i.do.end15.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15.i.i

if.then12.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  br label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.then12.i.i, %do.body1.i.i.do.end15.i.i_crit_edge
  %call.i101.i.i = tail call i64 @ktime_get() #13
  br label %for.body20.i.i

for.body20.i.i:                                   ; preds = %gameport_read.exit.i.i.for.body20.i.i_crit_edge, %do.end15.i.i
  %t.0117.i.i = phi i32 [ 0, %do.end15.i.i ], [ %inc.i.i, %gameport_read.exit.i.i.for.body20.i.i_crit_edge ]
  %22 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read.i.i.i, align 4
  %tobool.not.i102.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i102.i.i, label %if.else.i106.i.i, label %if.then.i104.i.i

if.then.i104.i.i:                                 ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i103.i.i = tail call zeroext i8 %23(ptr noundef %13) #13
  br label %gameport_read.exit.i.i

if.else.i106.i.i:                                 ; preds = %for.body20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %io.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io.i.i.i, align 4
  %and.i105.i.i = and i32 %25, 1048575
  %add.i.i.i = or i32 %and.i105.i.i, -18874368
  %26 = inttoptr i32 %add.i.i.i to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #13, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !167
  br label %gameport_read.exit.i.i

gameport_read.exit.i.i:                           ; preds = %if.else.i106.i.i, %if.then.i104.i.i
  %inc.i.i = add nuw nsw i32 %t.0117.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 50
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %gameport_read.exit.i.i.for.body20.i.i_crit_edge

gameport_read.exit.i.i.for.body20.i.i_crit_edge:  ; preds = %gameport_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body20.i.i

for.end.i.i:                                      ; preds = %gameport_read.exit.i.i
  %call.i107.i.i = tail call i64 @ktime_get() #13
  %call.i108.i.i = tail call i64 @ktime_get() #13
  br i1 %tobool11.not.i.i, label %if.then34.i.i, label %for.end.i.i.do.body36.i.i_crit_edge

for.end.i.i.do.body36.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body36.i.i

if.then34.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body36.i.i

do.body36.i.i:                                    ; preds = %if.then34.i.i, %for.end.i.i.do.body36.i.i_crit_edge
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !168
  %and.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool44.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool44.not.i.i, label %if.then48.i.i, label %do.body36.i.i.do.end51.i.i_crit_edge, !prof !157

do.body36.i.i.do.end51.i.i_crit_edge:             ; preds = %do.body36.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end51.i.i

if.then48.i.i:                                    ; preds = %do.body36.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end51.i.i

do.end51.i.i:                                     ; preds = %if.then48.i.i, %do.body36.i.i.do.end51.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #13, !srcloc !169
  %mul.i.i = mul nuw nsw i32 %i.0119.i.i, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %mul.i.i) #13
  %factor.i.i = shl i64 %call.i107.i.i, 1
  %30 = add i64 %call.i108.i.i, %call.i101.i.i
  %sub66.i.i = sub i64 %factor.i.i, %30
  %conv67.i.i = trunc i64 %sub66.i.i to i32
  %31 = tail call i32 @llvm.umin.i32(i32 %tx.0118.i.i, i32 %conv67.i.i) #13
  %inc73.i.i = add nuw nsw i32 %i.0119.i.i, 1
  %exitcond121.not.i.i = icmp eq i32 %inc73.i.i, 50
  br i1 %exitcond121.not.i.i, label %for.end74.i.i, label %do.end51.i.i.do.body1.i.i_crit_edge

do.end51.i.i.do.body1.i.i_crit_edge:              ; preds = %do.end51.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body1.i.i

for.end74.i.i:                                    ; preds = %do.end51.i.i
  %poll_timer.i.i.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 12
  %call.i110.i.i = tail call i32 @del_timer_sync(ptr noundef %poll_timer.i.i.i) #13
  %poll_handler.i.i.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 16
  %32 = ptrtoint ptr %poll_handler.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %poll_handler.i.i.i, align 4
  %poll_interval.i.i.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 13
  %33 = ptrtoint ptr %poll_interval.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %poll_interval.i.i.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %drv_mutex.i.i.i.i, i32 noundef 0) #13
  %34 = ptrtoint ptr %drv1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %drv1.i.i.i.i, align 8
  tail call void @mutex_unlock(ptr noundef %drv_mutex.i.i.i.i) #13
  %close.i.i.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 11
  %35 = ptrtoint ptr %close.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %close.i.i.i, align 4
  %tobool.not.i113.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i113.i.i, label %for.end74.i.i.gameport_close.exit.i.i_crit_edge, label %if.then.i114.i.i

for.end74.i.i.gameport_close.exit.i.i_crit_edge:  ; preds = %for.end74.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_close.exit.i.i

if.then.i114.i.i:                                 ; preds = %for.end74.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %36(ptr noundef %13) #13
  br label %gameport_close.exit.i.i

gameport_close.exit.i.i:                          ; preds = %if.then.i114.i.i, %for.end74.i.i.gameport_close.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool75.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool75.not.i.i, label %gameport_close.exit.i.i.cond.end.i_crit_edge, label %if.then76.i.i

gameport_close.exit.i.i.cond.end.i_crit_edge:     ; preds = %gameport_close.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

if.then76.i.i:                                    ; preds = %gameport_close.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %div.i.i = udiv i32 50000000, %31
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  br i1 %tobool.not.i.i55.i, label %cond.false.i.if.end.i.i_crit_edge, label %if.then.i.i58.i

cond.false.i.if.end.i.i_crit_edge:                ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i58.i:                                  ; preds = %cond.false.i
  %call.i.i56.i = tail call i32 %19(ptr noundef %13, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56.i)
  %tobool2.not.i.i57.i = icmp eq i32 %call.i.i56.i, 0
  br i1 %tobool2.not.i.i57.i, label %if.then.i.i58.i.if.end.i.i_crit_edge, label %if.then.i.i58.i.cond.end.i_crit_edge

if.then.i.i58.i.cond.end.i_crit_edge:             ; preds = %if.then.i.i58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

if.then.i.i58.i.if.end.i.i_crit_edge:             ; preds = %if.then.i.i58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i58.i.if.end.i.i_crit_edge, %cond.false.i.if.end.i.i_crit_edge
  %drv_mutex.i.i.i59.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %drv_mutex.i.i.i59.i, i32 noundef 0) #13
  %drv1.i.i.i60.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 19
  %37 = ptrtoint ptr %drv1.i.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %drv1.i.i.i60.i, align 8
  tail call void @mutex_unlock(ptr noundef %drv_mutex.i.i.i59.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %cmp.i.i = icmp eq i32 %38, %39
  br i1 %cmp.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %while.end.i.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %41 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %41)
  %cmp222.i.i = icmp eq i32 %40, %41
  br i1 %cmp222.i.i, label %while.body3.lr.ph.i.i, label %while.end.i.i.while.end5.i.i_crit_edge

while.end.i.i.while.end5.i.i_crit_edge:           ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end5.i.i

while.body3.lr.ph.i.i:                            ; preds = %while.end.i.i
  %read.i.i61.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 7
  %io.i.i62.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 3
  br label %while.body3.i.i

while.body3.i.i:                                  ; preds = %gameport_read.exit.i66.i.while.body3.i.i_crit_edge, %while.body3.lr.ph.i.i
  %t.023.i.i = phi i32 [ 0, %while.body3.lr.ph.i.i ], [ %inc.i63.i, %gameport_read.exit.i66.i.while.body3.i.i_crit_edge ]
  %inc.i63.i = add i32 %t.023.i.i, 1
  %42 = ptrtoint ptr %read.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read.i.i61.i, align 4
  %tobool.not.i11.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i11.i.i, label %if.else.i14.i.i, label %if.then.i13.i.i

if.then.i13.i.i:                                  ; preds = %while.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i12.i.i = tail call zeroext i8 %43(ptr noundef %13) #13
  br label %gameport_read.exit.i66.i

if.else.i14.i.i:                                  ; preds = %while.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %io.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %io.i.i62.i, align 4
  %and.i.i64.i = and i32 %45, 1048575
  %add.i.i65.i = or i32 %and.i.i64.i, -18874368
  %46 = inttoptr i32 %add.i.i65.i to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #13, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !167
  br label %gameport_read.exit.i66.i

gameport_read.exit.i66.i:                         ; preds = %if.else.i14.i.i, %if.then.i13.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %cmp2.i.i = icmp eq i32 %40, %48
  br i1 %cmp2.i.i, label %gameport_read.exit.i66.i.while.body3.i.i_crit_edge, label %while.end5.loopexit.i.i

gameport_read.exit.i66.i.while.body3.i.i_crit_edge: ; preds = %gameport_read.exit.i66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body3.i.i

while.end5.loopexit.i.i:                          ; preds = %gameport_read.exit.i66.i
  call void @__sanitizer_cov_trace_pc() #15
  %phi.bo.i.i = mul i32 %inc.i63.i, 100
  %phi.bo24.i.i = udiv i32 %phi.bo.i.i, 1000
  br label %while.end5.i.i

while.end5.i.i:                                   ; preds = %while.end5.loopexit.i.i, %while.end.i.i.while.end5.i.i_crit_edge
  %t.0.lcssa.i.i = phi i32 [ 0, %while.end.i.i.while.end5.i.i_crit_edge ], [ %phi.bo24.i.i, %while.end5.loopexit.i.i ]
  %poll_timer.i.i67.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 12
  %call.i15.i.i = tail call i32 @del_timer_sync(ptr noundef %poll_timer.i.i67.i) #13
  %poll_handler.i.i68.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 16
  %49 = ptrtoint ptr %poll_handler.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %poll_handler.i.i68.i, align 4
  %poll_interval.i.i69.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 13
  %50 = ptrtoint ptr %poll_interval.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %poll_interval.i.i69.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %drv_mutex.i.i.i59.i, i32 noundef 0) #13
  %51 = ptrtoint ptr %drv1.i.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %drv1.i.i.i60.i, align 8
  tail call void @mutex_unlock(ptr noundef %drv_mutex.i.i.i59.i) #13
  %close.i.i70.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 11
  %52 = ptrtoint ptr %close.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %close.i.i70.i, align 4
  %tobool.not.i18.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i18.i.i, label %while.end5.i.i.cond.end.i_crit_edge, label %if.then.i19.i.i

while.end5.i.i.cond.end.i_crit_edge:              ; preds = %while.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

if.then.i19.i.i:                                  ; preds = %while.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %53(ptr noundef %13) #13
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.then.i19.i.i, %while.end5.i.i.cond.end.i_crit_edge, %if.then.i.i58.i.cond.end.i_crit_edge, %if.then76.i.i, %gameport_close.exit.i.i.cond.end.i_crit_edge, %if.then.i.i.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %div.i.i, %if.then76.i.i ], [ 50000000, %gameport_close.exit.i.i.cond.end.i_crit_edge ], [ 0, %if.then.i.i.i.cond.end.i_crit_edge ], [ 0, %if.then.i.i58.i.cond.end.i_crit_edge ], [ %t.0.lcssa.i.i, %while.end5.i.i.cond.end.i_crit_edge ], [ %t.0.lcssa.i.i, %if.then.i19.i.i ]
  %speed.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 4
  %54 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond.i, ptr %speed.i, align 8
  %node.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 22
  %55 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @gameport_list, i32 0, i32 1), align 4
  %call.i.i72.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %55, ptr noundef nonnull @gameport_list) #13
  br i1 %call.i.i72.i, label %if.end.i.i.i9, label %cond.end.i.list_add_tail.exit.i_crit_edge

cond.end.i.list_add_tail.exit.i_crit_edge:        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit.i

if.end.i.i.i9:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %node.i, ptr getelementptr inbounds (%struct.list_head, ptr @gameport_list, i32 0, i32 1), align 4
  %56 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @gameport_list, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 22, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %prev3.i.i.i, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %node.i, ptr %55, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i9, %cond.end.i.list_add_tail.exit.i_crit_edge
  %io.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 3
  %59 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %io.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool4.not.i = icmp eq i32 %60, 0
  %dev12.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 21
  %name13.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 1
  %phys15.i = getelementptr inbounds %struct.gameport, ptr %13, i32 0, i32 2
  %61 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %speed.i, align 8
  br i1 %tobool4.not.i, label %do.end11.i, label %do.end.i

do.end.i:                                         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12.i, ptr noundef nonnull @.str.32, ptr noundef %name13.i, ptr noundef %phys15.i, i32 noundef %60, i32 noundef %62) #17
  br label %if.end18.i

do.end11.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12.i, ptr noundef nonnull @.str.36, ptr noundef %name13.i, ptr noundef %phys15.i, i32 noundef %62) #17
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end11.i, %do.end.i
  %call20.i = tail call i32 @device_add(ptr noundef %dev12.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end18.i.sw.epilog_crit_edge, label %do.end25.i

if.end18.i.sw.epilog_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end25.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.39, ptr noundef %phys15.i, ptr noundef %name13.i, i32 noundef %call20.i) #17
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.then
  %object2 = getelementptr i8, ptr %0, i32 -8
  %63 = ptrtoint ptr %object2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %object2, align 4
  %driver.i = getelementptr inbounds %struct.gameport_driver, ptr %64, i32 0, i32 4
  %call.i = tail call i32 @driver_attach(ptr noundef %driver.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i10 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i10, label %sw.bb1.sw.epilog_crit_edge, label %do.end.i12

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end.i12:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver.i, align 4
  %call2.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %66, i32 noundef %call.i) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i12, %sw.bb1.sw.epilog_crit_edge, %do.end25.i, %if.end18.i.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge
  %call2.i14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gameport_event_lock) #13
  %67 = load ptr, ptr @gameport_event_list, align 4
  %cmp11.not37.i = icmp eq ptr %67, @gameport_event_list
  br i1 %cmp11.not37.i, label %sw.epilog.gameport_remove_duplicate_events.exit_crit_edge, label %for.body.lr.ph.i

sw.epilog.gameport_remove_duplicate_events.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_remove_duplicate_events.exit

for.body.lr.ph.i:                                 ; preds = %sw.epilog
  %object.i = getelementptr i8, ptr %0, i32 -8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in38.i = phi ptr [ %67, %for.body.lr.ph.i ], [ %.pn40.i, %for.inc.i.for.body.i_crit_edge ]
  %e.039.i = getelementptr i8, ptr %.pn.in38.i, i32 -12
  %68 = ptrtoint ptr %.pn.in38.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn40.i = load ptr, ptr %.pn.in38.i, align 4
  %69 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %object.i, align 4
  %object13.i = getelementptr i8, ptr %.pn.in38.i, i32 -8
  %71 = ptrtoint ptr %object13.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %object13.i, align 4
  %cmp14.i = icmp eq ptr %70, %72
  br i1 %cmp14.i, label %if.then.i15, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i15:                                      ; preds = %for.body.i
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr.i, align 4
  %75 = ptrtoint ptr %e.039.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %e.039.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp17.not.i = icmp eq i32 %74, %76
  br i1 %cmp17.not.i, label %if.end.i17, label %if.then.i15.gameport_remove_duplicate_events.exit_crit_edge

if.then.i15.gameport_remove_duplicate_events.exit_crit_edge: ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_remove_duplicate_events.exit

if.end.i17:                                       ; preds = %if.then.i15
  %call.i.i.i16 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in38.i) #13
  br i1 %call.i.i.i16, label %if.end.i.i.i20, label %if.end.i17.list_del_init.exit.i22_crit_edge

if.end.i17.list_del_init.exit.i22_crit_edge:      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i22

if.end.i.i.i20:                                   ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i18 = getelementptr inbounds %struct.list_head, ptr %.pn.in38.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i.i18, align 4
  %79 = ptrtoint ptr %.pn.in38.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %.pn.in38.i, align 4
  %prev1.i.i.i.i19 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev1.i.i.i.i19, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %80, ptr %78, align 4
  br label %list_del_init.exit.i22

list_del_init.exit.i22:                           ; preds = %if.end.i.i.i20, %if.end.i17.list_del_init.exit.i22_crit_edge
  %83 = ptrtoint ptr %.pn.in38.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %.pn.in38.i, ptr %.pn.in38.i, align 4
  %prev.i3.i.i21 = getelementptr inbounds %struct.list_head, ptr %.pn.in38.i, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i3.i.i21 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %.pn.in38.i, ptr %prev.i3.i.i21, align 4
  %owner.i.i = getelementptr i8, ptr %.pn.in38.i, i32 -4
  %85 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %owner.i.i, align 4
  tail call void @module_put(ptr noundef %86) #13
  tail call void @kfree(ptr noundef %e.039.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del_init.exit.i22, %for.body.i.for.inc.i_crit_edge
  %cmp11.not.i = icmp eq ptr %.pn40.i, @gameport_event_list
  br i1 %cmp11.not.i, label %for.inc.i.gameport_remove_duplicate_events.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.gameport_remove_duplicate_events.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %gameport_remove_duplicate_events.exit

gameport_remove_duplicate_events.exit:            ; preds = %for.inc.i.gameport_remove_duplicate_events.exit_crit_edge, %if.then.i15.gameport_remove_duplicate_events.exit_crit_edge, %sw.epilog.gameport_remove_duplicate_events.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gameport_event_lock, i32 noundef %call2.i14) #13
  %owner.i = getelementptr i8, ptr %0, i32 -4
  %87 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %88) #13
  tail call void @kfree(ptr noundef nonnull %add.ptr.i) #13
  br label %if.end

if.end:                                           ; preds = %gameport_remove_duplicate_events.exit, %gameport_get_event.exit.if.end_crit_edge, %gameport_get_event.exit.thread
  tail call void @mutex_unlock(ptr noundef nonnull @gameport_mutex) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !47, !48, !50, !52, !53, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !70, !72, !73, !74, !76, !78, !79, !80, !81, !82, !83, !85, !87, !89, !90, !92, !94, !95, !97, !99, !100, !102, !104, !106, !108, !109, !110, !111, !113, !114, !116, !118, !120, !122, !123, !125, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @__UNIQUE_ID_author183, !1, !"__UNIQUE_ID_author183", i1 false, i1 false}
!1 = !{!"../drivers/input/gameport/gameport.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_description184, !3, !"__UNIQUE_ID_description184", i1 false, i1 false}
!3 = !{!"../drivers/input/gameport/gameport.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_file185, !5, !"__UNIQUE_ID_file185", i1 false, i1 false}
!5 = !{!"../drivers/input/gameport/gameport.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_license186, !5, !"__UNIQUE_ID_license186", i1 false, i1 false}
!7 = !{ptr @__param_use_ktime, !8, !"__param_use_ktime", i1 false, i1 false}
!8 = !{!"../drivers/input/gameport/gameport.c", i32 31, i32 1}
!9 = !{ptr @__UNIQUE_ID_use_ktimetype187, !8, !"__UNIQUE_ID_use_ktimetype187", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_use_ktime188, !11, !"__UNIQUE_ID_use_ktime188", i1 false, i1 false}
!11 = !{!"../drivers/input/gameport/gameport.c", i32 32, i32 1}
!12 = !{ptr @__ksymtab_gameport_start_polling, !13, !"__ksymtab_gameport_start_polling", i1 false, i1 false}
!13 = !{!"../drivers/input/gameport/gameport.c", i32 188, i32 1}
!14 = !{ptr @__ksymtab_gameport_stop_polling, !15, !"__ksymtab_gameport_stop_polling", i1 false, i1 false}
!15 = !{!"../drivers/input/gameport/gameport.c", i32 199, i32 1}
!16 = !{ptr @__ksymtab_gameport_set_phys, !17, !"__ksymtab_gameport_set_phys", i1 false, i1 false}
!17 = !{!"../drivers/input/gameport/gameport.c", i32 519, i32 1}
!18 = !{ptr @__ksymtab___gameport_register_port, !19, !"__ksymtab___gameport_register_port", i1 false, i1 false}
!19 = !{!"../drivers/input/gameport/gameport.c", i32 659, i32 1}
!20 = !{ptr @__ksymtab_gameport_unregister_port, !21, !"__ksymtab_gameport_unregister_port", i1 false, i1 false}
!21 = !{!"../drivers/input/gameport/gameport.c", i32 671, i32 1}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/gameport/gameport.c", i32 735, i32 3}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__gameport_register_driver._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @__gameport_register_driver._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__ksymtab___gameport_register_driver, !29, !"__ksymtab___gameport_register_driver", i1 false, i1 false}
!29 = !{!"../drivers/input/gameport/gameport.c", i32 752, i32 1}
!30 = !{ptr @__ksymtab_gameport_unregister_driver, !31, !"__ksymtab_gameport_unregister_driver", i1 false, i1 false}
!31 = !{!"../drivers/input/gameport/gameport.c", i32 777, i32 1}
!32 = !{ptr @__ksymtab_gameport_open, !33, !"__ksymtab_gameport_open", i1 false, i1 false}
!33 = !{!"../drivers/input/gameport/gameport.c", i32 816, i32 1}
!34 = !{ptr @__ksymtab_gameport_close, !35, !"__ksymtab_gameport_close", i1 false, i1 false}
!35 = !{!"../drivers/input/gameport/gameport.c", i32 827, i32 1}
!36 = !{ptr @__initcall__kmod_gameport__189_854_gameport_init4, !37, !"__initcall__kmod_gameport__189_854_gameport_init4", i1 false, i1 false}
!37 = !{!"../drivers/input/gameport/gameport.c", i32 854, i32 1}
!38 = !{ptr @__exitcall_gameport_exit, !39, !"__exitcall_gameport_exit", i1 false, i1 false}
!39 = !{!"../drivers/input/gameport/gameport.c", i32 855, i32 1}
!40 = !{ptr @__param_str_use_ktime, !8, !"__param_str_use_ktime", i1 false, i1 false}
!41 = !{ptr @use_ktime, !42, !"use_ktime", i1 false, i1 false}
!42 = !{!"../drivers/input/gameport/gameport.c", i32 30, i32 13}
!43 = !{ptr @gameport_init_port.gameport_no, !44, !"gameport_no", i1 false, i1 false}
!44 = !{!"../drivers/input/gameport/gameport.c", i32 526, i32 18}
!45 = !{ptr @gameport_init_port.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/input/gameport/gameport.c", i32 530, i32 2}
!47 = !{ptr @.str.3, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/gameport/gameport.c", i32 532, i32 31}
!50 = !{ptr @gameport_init_port.__key.5, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/input/gameport/gameport.c", i32 540, i32 2}
!52 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @gameport_init_port.__key.7, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/input/gameport/gameport.c", i32 541, i32 2}
!55 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.9, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/gameport/gameport.c", i32 378, i32 3}
!58 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @gameport_queue_event._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @gameport_queue_event._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/gameport/gameport.c", i32 384, i32 3}
!63 = !{ptr @gameport_queue_event._entry.11, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @gameport_queue_event._entry_ptr.13, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/gameport/gameport.c", i32 266, i32 8}
!67 = !{ptr @gameport_event_lock, !66, !"gameport_event_lock", i1 false, i1 false}
!68 = !{ptr @gameport_event_list, !69, !"gameport_event_list", i1 false, i1 false}
!69 = !{!"../drivers/input/gameport/gameport.c", i32 267, i32 8}
!70 = !{ptr @.str.15, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/gameport/gameport.c", i32 38, i32 8}
!72 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @gameport_mutex, !71, !"gameport_mutex", i1 false, i1 false}
!74 = !{ptr @gameport_list, !75, !"gameport_list", i1 false, i1 false}
!75 = !{!"../drivers/input/gameport/gameport.c", i32 40, i32 8}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/gameport/gameport.c", i32 244, i32 3}
!78 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @gameport_find_driver._entry, !77, !"_entry", i1 false, i1 false}
!82 = !{ptr @gameport_find_driver._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/gameport/gameport.c", i32 787, i32 11}
!85 = !{ptr @gameport_bus, !86, !"gameport_bus", i1 false, i1 false}
!86 = !{!"../drivers/input/gameport/gameport.c", i32 786, i32 24}
!87 = !{ptr @gameport_device_groups, !88, !"gameport_device_groups", i1 false, i1 false}
!88 = !{!"../drivers/input/gameport/gameport.c", i32 501, i32 1}
!89 = !{ptr @gameport_device_group, !88, !"gameport_device_group", i1 false, i1 false}
!90 = !{ptr @gameport_device_attrs, !91, !"gameport_device_attrs", i1 false, i1 false}
!91 = !{!"../drivers/input/gameport/gameport.c", i32 496, i32 26}
!92 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/gameport/gameport.c", i32 464, i32 8}
!94 = !{ptr @dev_attr_description, !93, !"dev_attr_description", i1 false, i1 false}
!95 = !{ptr @.str.23, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/gameport/gameport.c", i32 462, i32 22}
!97 = !{ptr @.str.24, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/gameport/gameport.c", i32 494, i32 8}
!99 = !{ptr @dev_attr_drvctl, !98, !"dev_attr_drvctl", i1 false, i1 false}
!100 = !{ptr @.str.25, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/gameport/gameport.c", i32 476, i32 20}
!102 = !{ptr @.str.26, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/gameport/gameport.c", i32 478, i32 27}
!104 = !{ptr @.str.27, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/gameport/gameport.c", i32 480, i32 27}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/gameport/gameport.c", i32 226, i32 3}
!108 = !{ptr @.str.29, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @gameport_bind_driver._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @gameport_bind_driver._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @gameport_driver_groups, !112, !"gameport_driver_groups", i1 false, i1 false}
!112 = !{!"../drivers/input/gameport/gameport.c", i32 689, i32 1}
!113 = !{ptr @gameport_driver_group, !112, !"gameport_driver_group", i1 false, i1 false}
!114 = !{ptr @gameport_driver_attrs, !115, !"gameport_driver_attrs", i1 false, i1 false}
!115 = !{!"../drivers/input/gameport/gameport.c", i32 685, i32 26}
!116 = !{ptr @driver_attr_description, !117, !"driver_attr_description", i1 false, i1 false}
!117 = !{!"../drivers/input/gameport/gameport.c", i32 683, i32 8}
!118 = !{ptr @.str.30, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/gameport/gameport.c", i32 681, i32 74}
!120 = !{ptr @.str.31, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/input/gameport/gameport.c", i32 350, i32 8}
!122 = !{ptr @gameport_event_work, !121, !"gameport_event_work", i1 false, i1 false}
!123 = !{ptr @.str.32, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/gameport/gameport.c", i32 562, i32 3}
!125 = !{ptr @.str.33, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.34, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @gameport_add_port._entry, !124, !"_entry", i1 false, i1 false}
!128 = !{ptr @gameport_add_port._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.36, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/input/gameport/gameport.c", i32 565, i32 3}
!131 = !{ptr @gameport_add_port._entry.35, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @gameport_add_port._entry_ptr.37, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.39, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/input/gameport/gameport.c", i32 570, i32 3}
!135 = !{ptr @.str.40, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @gameport_add_port._entry.38, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @gameport_add_port._entry_ptr.41, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.42, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/gameport/gameport.c", i32 714, i32 3}
!140 = !{ptr @.str.43, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @gameport_attach_driver._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @gameport_attach_driver._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.44, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/input/gameport/gameport.c", i32 835, i32 3}
!145 = !{ptr @.str.45, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @gameport_init._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @gameport_init._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{!"branch_weights", i32 1, i32 2000}
!158 = !{i64 2152760648, i64 2152761146, i64 2152760685, i64 2152760741, i64 2152760775, i64 2152760799, i64 2152760840, i64 2152760861, i64 2152760889, i64 2152760923}
!159 = !{i64 2152766355, i64 2152766853, i64 2152766392, i64 2152766448, i64 2152766482, i64 2152766506, i64 2152766547, i64 2152766568, i64 2152766596, i64 2152766630}
!160 = !{!"auto-init"}
!161 = !{i64 2148443687}
!162 = !{i64 2148358972, i64 2148359004, i64 2148359033, i64 2148359067, i64 2148359098, i64 2148359121}
!163 = !{i64 2148443916}
!164 = !{i8 0, i8 2}
!165 = !{i64 761952, i64 762013}
!166 = !{i64 4073836}
!167 = !{i64 2152741591}
!168 = !{i64 764684}
!169 = !{i64 764969}
