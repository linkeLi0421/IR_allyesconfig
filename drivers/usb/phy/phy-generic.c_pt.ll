; ModuleID = '/llk/IR_all_yes/drivers/usb/phy/phy-generic.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+usb_phy_generic_register\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_phy_generic_register\09\09\09\09"
module asm "\09.long\09__crc_usb_phy_generic_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_generic_register:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_generic_register\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_generic_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_phy_generic_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_phy_generic_unregister\09\09\09\09"
module asm "\09.long\09__crc_usb_phy_generic_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_generic_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_generic_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_generic_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_gen_phy_init\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_gen_phy_init\09\09\09\09"
module asm "\09.long\09__crc_usb_gen_phy_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gen_phy_init:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gen_phy_init\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gen_phy_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_gen_phy_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_gen_phy_shutdown\09\09\09\09"
module asm "\09.long\09__crc_usb_gen_phy_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_gen_phy_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_gen_phy_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_usb_gen_phy_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+usb_phy_gen_create_phy\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_phy_gen_create_phy\09\09\09\09"
module asm "\09.long\09__crc_usb_phy_gen_create_phy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_phy_gen_create_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_phy_gen_create_phy\22\09\09\09\09\09"
module asm "__kstrtabns_usb_phy_gen_create_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_phy_generic = type { %struct.usb_phy, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"usb_phy_generic\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_usb_phy_generic_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_generic_register = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_generic_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_generic_register to i32), ptr @__kstrtab_usb_phy_generic_register, ptr @__kstrtabns_usb_phy_generic_register }, section "___ksymtab_gpl+usb_phy_generic_register", align 4
@__kstrtab_usb_phy_generic_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_generic_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_generic_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_generic_unregister to i32), ptr @__kstrtab_usb_phy_generic_unregister, ptr @__kstrtabns_usb_phy_generic_unregister }, section "___ksymtab_gpl+usb_phy_generic_unregister", align 4
@usb_gen_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 142, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable power\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_gen_phy_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/phy/phy-generic.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_gen_phy_init._entry_ptr = internal global ptr @usb_gen_phy_init._entry, section ".printk_index", align 4
@__kstrtab_usb_gen_phy_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gen_phy_init = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gen_phy_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gen_phy_init to i32), ptr @__kstrtab_usb_gen_phy_init, ptr @__kstrtabns_usb_gen_phy_init }, section "___ksymtab_gpl+usb_gen_phy_init", align 4
@usb_gen_phy_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to disable power\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usb_gen_phy_shutdown\00", [43 x i8] zeroinitializer }, align 32
@usb_gen_phy_shutdown._entry_ptr = internal global ptr @usb_gen_phy_shutdown._entry, section ".printk_index", align 4
@__kstrtab_usb_gen_phy_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_gen_phy_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_gen_phy_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_gen_phy_shutdown to i32), ptr @__kstrtab_usb_gen_phy_shutdown, ptr @__kstrtabns_usb_gen_phy_shutdown }, section "___ksymtab_gpl+usb_gen_phy_shutdown", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vcc-supply\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vbus-detect\00", [20 x i8] zeroinitializer }, align 32
@usb_phy_gen_create_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error requesting RESET or VBUS GPIO\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"usb_phy_gen_create_phy\00", [41 x i8] zeroinitializer }, align 32
@usb_phy_gen_create_phy._entry_ptr = internal global ptr @usb_phy_gen_create_phy._entry, section ".printk_index", align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"main_clk\00", [23 x i8] zeroinitializer }, align 32
@usb_phy_gen_create_phy.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.14, ptr @.str.3, ptr @.str.17, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"phy_generic\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't get phy clock: %ld\0A\00", [38 x i8] zeroinitializer }, align 32
@usb_phy_gen_create_phy._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error setting clock rate\0A\00", [38 x i8] zeroinitializer }, align 32
@usb_phy_gen_create_phy._entry_ptr.20 = internal global ptr @usb_phy_gen_create_phy._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@usb_phy_gen_create_phy.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.14, ptr @.str.3, ptr @.str.22, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error getting vcc regulator: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nop-xceiv\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_usb_phy_gen_create_phy = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_phy_gen_create_phy = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_phy_gen_create_phy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_phy_gen_create_phy to i32), ptr @__kstrtab_usb_phy_gen_create_phy, ptr @__kstrtabns_usb_phy_gen_create_phy }, section "___ksymtab_gpl+usb_phy_gen_create_phy", align 4
@__initcall__kmod_phy_generic__297_358_usb_phy_generic_init4 = internal global ptr @usb_phy_generic_init, section ".initcall4.init", align 4
@usb_phy_generic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @usb_phy_generic_probe, ptr @usb_phy_generic_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nop_xceiv_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_usb_phy_generic_exit = internal global ptr @usb_phy_generic_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias298 = internal constant [43 x i8] c"phy_generic.alias=platform:usb_phy_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [41 x i8] c"phy_generic.author=Texas Instruments Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [51 x i8] c"phy_generic.description=NOP USB Transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [45 x i8] c"phy_generic.file=drivers/usb/phy/phy-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [24 x i8] c"phy_generic.license=GPL\00", section ".modinfo", align 1
@nop_xceiv_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"usb-nop-xceiv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vbus_detect\00", [20 x i8] zeroinitializer }, align 32
@usb_phy_generic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 307, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't request irq %i, err: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_phy_generic_probe\00", [42 x i8] zeroinitializer }, align 32
@usb_phy_generic_probe._entry_ptr = internal global ptr @usb_phy_generic_probe._entry, section ".printk_index", align 4
@usb_phy_generic_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 320, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"can't register transceiver, err: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@usb_phy_generic_probe._entry_ptr.29 = internal global ptr @usb_phy_generic_probe._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 35, i32 41 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 142, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 168, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 217, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 220, i32 43 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 221, i32 43 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 223, i32 50 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 228, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 236, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 247, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 249, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 258, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 263, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 265, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 273, i32 20 }
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"usb_phy_generic_driver\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 345, i32 31 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"nop_xceiv_dt_ids\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 338, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 303, i32 23 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 306, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [33 x i8] c"../drivers/usb/phy/phy-generic.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 319, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_usb_phy_generic_exit, ptr @__initcall__kmod_phy_generic__297_358_usb_phy_generic_init4, ptr @__ksymtab_usb_gen_phy_init, ptr @__ksymtab_usb_gen_phy_shutdown, ptr @__ksymtab_usb_phy_gen_create_phy, ptr @__ksymtab_usb_phy_generic_register, ptr @__ksymtab_usb_phy_generic_unregister, ptr @usb_gen_phy_init._entry, ptr @usb_gen_phy_init._entry_ptr, ptr @usb_gen_phy_shutdown._entry, ptr @usb_gen_phy_shutdown._entry_ptr, ptr @usb_phy_gen_create_phy._entry, ptr @usb_phy_gen_create_phy._entry.18, ptr @usb_phy_gen_create_phy._entry_ptr, ptr @usb_phy_gen_create_phy._entry_ptr.20, ptr @usb_phy_generic_exit, ptr @usb_phy_generic_probe._entry, ptr @usb_phy_generic_probe._entry.27, ptr @usb_phy_generic_probe._entry_ptr, ptr @usb_phy_generic_probe._entry_ptr.29, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @usb_phy_generic_driver, ptr @nop_xceiv_dt_ids, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_gen_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_gen_phy_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_phy_gen_create_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_phy_gen_create_phy._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_phy_generic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nop_xceiv_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_phy_generic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_phy_generic_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usb_phy_generic_register() #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %properties.i.i, align 8
  %9 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #6
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_phy_generic_unregister(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_device_unregister(ptr noundef %pdev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_gen_phy_init(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %vcc = getelementptr inbounds %struct.usb_phy_generic, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcc, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @regulator_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %clk = getelementptr inbounds %struct.usb_phy_generic, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %cmp.i22 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i22, label %if.end6.if.end14_crit_edge, label %if.then8

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then8
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end14_crit_edge, label %if.then3.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end.i.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %gpiod_reset.i = getelementptr inbounds %struct.usb_phy_generic, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %gpiod_reset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpiod_reset.i, align 4
  %tobool.not.i23 = icmp eq ptr %11, null
  br i1 %tobool.not.i23, label %if.end14.cleanup_crit_edge, label %if.end.i24

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i24:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %11, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  %12 = ptrtoint ptr %gpiod_reset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpiod_reset.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %13, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i24, %if.end14.cleanup_crit_edge, %if.then3.i, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end.i24 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_gen_phy_shutdown(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %gpiod_reset = getelementptr inbounds %struct.usb_phy_generic, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpiod_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef 1) #6
  %clk = getelementptr inbounds %struct.usb_phy_generic, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vcc = getelementptr inbounds %struct.usb_phy_generic, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vcc, align 4
  %cmp.i16 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %call6 = tail call i32 @regulator_disable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then4.if.end10_crit_edge, label %do.end

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_phy_gen_create_phy(ptr noundef %dev, ptr noundef %nop) #0 align 64 {
entry:
  %clk_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_rate) #6
  %0 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %clk_rate, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %clk_rate, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool2.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %clk_rate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %call.i = call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i, null
  %call.i166 = call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %tobool.i167 = icmp ne ptr %call.i166, null
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %needs_clk.0.off0 = phi i1 [ %tobool.i167, %if.end ], [ false, %entry.if.end7_crit_edge ]
  %needs_vcc.0.off0 = phi i1 [ %tobool.i, %if.end ], [ false, %entry.if.end7_crit_edge ]
  %call8 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 0) #6
  %gpiod_reset = getelementptr inbounds %struct.usb_phy_generic, ptr %nop, i32 0, i32 4
  %4 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %gpiod_reset, align 4
  %cmp.i.i.not = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.end7.if.end16_crit_edge, label %if.then12

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %if.end7
  %call13 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef 0) #6
  %gpiod_vbus = getelementptr inbounds %struct.usb_phy_generic, ptr %nop, i32 0, i32 5
  %5 = ptrtoint ptr %gpiod_vbus to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %gpiod_vbus, align 4
  %cmp.i.i168 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i168, label %if.then12.if.end16_crit_edge, label %if.then12.if.end21_crit_edge

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end16:                                         ; preds = %if.then12.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %err.0.in = phi ptr [ %call8, %if.end7.if.end16_crit_edge ], [ %call13, %if.then12.if.end16_crit_edge ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  %6 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err.0, label %do.end [
    i32 -517, label %if.end16.cleanup_crit_edge
    i32 0, label %if.end16.if.end21_crit_edge
  ]

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end16.if.end21_crit_edge, %if.then12.if.end21_crit_edge
  %7 = ptrtoint ptr %gpiod_reset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpiod_reset, align 4
  %tobool23.not = icmp eq ptr %8, null
  br i1 %tobool23.not, label %if.end21.if.end27_crit_edge, label %if.then24

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = call i32 @gpiod_direction_output(ptr noundef nonnull %8, i32 noundef 1) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end21.if.end27_crit_edge
  %call.i170 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %otg = getelementptr inbounds %struct.usb_phy, ptr %nop, i32 0, i32 5
  %9 = ptrtoint ptr %otg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i170, ptr %otg, align 4
  %tobool31.not = icmp eq ptr %call.i170, null
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %call34 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #6
  %clk = getelementptr inbounds %struct.usb_phy_generic, ptr %nop, i32 0, i32 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call34, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body38, label %if.end33.if.end55_crit_edge

if.end33.if.end55_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

do.body38:                                        ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_phy_gen_create_phy.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_phy_gen_create_phy, %if.then44)) #6
          to label %do.end49 [label %if.then44], !srcloc !94

if.then44:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %13 = ptrtoint ptr %12 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_phy_gen_create_phy.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %13) #6
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body38
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  br i1 %needs_clk.0.off0, label %if.then51, label %do.end49.if.end55_crit_edge

do.end49.if.end55_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then51:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end55:                                         ; preds = %do.end49.if.end55_crit_edge, %if.end33.if.end55_crit_edge
  %17 = phi ptr [ %call34, %if.end33.if.end55_crit_edge ], [ %15, %do.end49.if.end55_crit_edge ]
  %cmp.i171 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %if.end55.if.end68_crit_edge, label %land.lhs.true

if.end55.if.end68_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end55
  %18 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool58.not = icmp eq i32 %19, 0
  br i1 %tobool58.not, label %land.lhs.true.if.end68_crit_edge, label %if.then59

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then59:                                        ; preds = %land.lhs.true
  %call61 = call i32 @clk_set_rate(ptr noundef %17, i32 noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then59.if.end68_crit_edge, label %do.end66

if.then59.if.end68_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

do.end66:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end68:                                         ; preds = %if.then59.if.end68_crit_edge, %land.lhs.true.if.end68_crit_edge, %if.end55.if.end68_crit_edge
  %call69 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.21) #6
  %vcc = getelementptr inbounds %struct.usb_phy_generic, ptr %nop, i32 0, i32 3
  %20 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call69, ptr %vcc, align 4
  %cmp.i172 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %do.body73, label %if.end68.if.end94_crit_edge

if.end68.if.end94_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

do.body73:                                        ; preds = %if.end68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_phy_gen_create_phy.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_phy_gen_create_phy, %if.then85)) #6
          to label %do.end90 [label %if.then85], !srcloc !94

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vcc, align 4
  %23 = ptrtoint ptr %22 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_phy_gen_create_phy.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %23) #6
  br label %do.end90

do.end90:                                         ; preds = %if.then85, %do.body73
  br i1 %needs_vcc.0.off0, label %do.end90.cleanup_crit_edge, label %do.end90.if.end94_crit_edge

do.end90.if.end94_crit_edge:                      ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

do.end90.cleanup_crit_edge:                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end94:                                         ; preds = %do.end90.if.end94_crit_edge, %if.end68.if.end94_crit_edge
  %dev95 = getelementptr inbounds %struct.usb_phy_generic, ptr %nop, i32 0, i32 1
  %24 = ptrtoint ptr %dev95 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %dev95, align 4
  %25 = ptrtoint ptr %nop to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %nop, align 4
  %label = getelementptr inbounds %struct.usb_phy, ptr %nop, i32 0, i32 1
  %26 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.23, ptr %label, align 4
  %set_suspend = getelementptr inbounds %struct.usb_phy, ptr %nop, i32 0, i32 26
  %27 = ptrtoint ptr %set_suspend to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @nop_set_suspend, ptr %set_suspend, align 4
  %type102 = getelementptr inbounds %struct.usb_phy, ptr %nop, i32 0, i32 3
  %28 = ptrtoint ptr %type102 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %type102, align 4
  %29 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %state, align 4
  %32 = load ptr, ptr %otg, align 4
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %nop, ptr %usb_phy, align 4
  %34 = load ptr, ptr %otg, align 4
  %set_host = getelementptr inbounds %struct.usb_otg, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %set_host to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @nop_set_host, ptr %set_host, align 4
  %36 = load ptr, ptr %otg, align 4
  %set_peripheral = getelementptr inbounds %struct.usb_otg, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %set_peripheral to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nop_set_peripheral, ptr %set_peripheral, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %do.end90.cleanup_crit_edge, %do.end66, %if.then51, %if.end27.cleanup_crit_edge, %do.end, %if.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.end ], [ %16, %if.then51 ], [ 0, %if.end94 ], [ %call61, %do.end66 ], [ %err.0, %if.end16.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ], [ -517, %do.end90.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_rate) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nop_set_suspend(ptr nocapture noundef readonly %x, i32 noundef %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %x, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.usb_phy_generic, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %suspend)
  %tobool.not = icmp eq i32 %suspend, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %5) #6
  br label %if.end6.sink.split

if.else:                                          ; preds = %if.then
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6_crit_edge, label %if.end.i.if.end6.sink.split_crit_edge

if.end.i.if.end6.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.sink.split

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6.sink.split:                               ; preds = %if.end.i.if.end6.sink.split_crit_edge, %if.then2
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.end.i.if.end6_crit_edge, %if.else.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nop_set_host(ptr noundef writeonly %otg, ptr noundef %host) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %otg, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tobool1.not = icmp eq ptr %host, null
  %host3 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 3
  %. = select i1 %tobool1.not, i32 -19, i32 0
  %0 = ptrtoint ptr %host3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %host, ptr %host3, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nop_set_peripheral(ptr noundef %otg, ptr noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %otg, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %gadget, null
  %gadget3 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 4
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %gadget3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %gadget3, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %gadget3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %gadget, ptr %gadget3, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 2
  %4 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_phy, align 4
  %notifier = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 18
  %call = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier, i32 noundef 1, ptr noundef nonnull %gadget) #6
  br label %return

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then6, %if.then2, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %if.then2 ], [ -19, %entry.return_crit_edge ], [ 0, %if.else ], [ 0, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_phy_generic_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @usb_phy_generic_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_phy_generic_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @usb_phy_generic_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_phy_generic_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 296, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @usb_phy_gen_create_phy(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %gpiod_vbus = getelementptr inbounds %struct.usb_phy_generic, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %gpiod_vbus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod_vbus, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %if.end5.if.end21_crit_edge, label %if.then7

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then7:                                         ; preds = %if.end5
  %call10 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %1) #6
  %call11 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call10, ptr noundef null, ptr noundef nonnull @nop_gpio_vbus_thread, i32 noundef 8323, ptr noundef nonnull @.str.24, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %2 = ptrtoint ptr %gpiod_vbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_vbus, align 4
  br i1 %tobool12.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 @gpiod_to_irq(ptr noundef %3) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call16, i32 noundef %call11) #9
  br label %cleanup

if.end17:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 @gpiod_get_value(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  %cond = select i1 %tobool20.not, i32 1, i32 3
  %otg = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %state, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.end5.if.end21_crit_edge
  %init = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 22
  %7 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @usb_gen_phy_init, ptr %init, align 4
  %shutdown = getelementptr inbounds %struct.usb_phy, ptr %call.i, i32 0, i32 23
  %8 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @usb_gen_phy_shutdown, ptr %shutdown, align 4
  %call25 = tail call i32 @usb_add_phy_dev(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %call25) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end30, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end ], [ %call25, %do.end30 ], [ 0, %if.end32 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_phy_generic_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_remove_phy(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nop_gpio_vbus_thread(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %otg1 = getelementptr inbounds %struct.usb_phy, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %otg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg1, align 4
  %gpiod_vbus = getelementptr inbounds %struct.usb_phy_generic, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %gpiod_vbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_vbus, align 4
  %call = tail call i32 @gpiod_get_value(ptr noundef %3) #6
  %vbus2 = getelementptr inbounds %struct.usb_phy_generic, ptr %data, i32 0, i32 9
  %4 = ptrtoint ptr %vbus2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vbus2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp = icmp eq i32 %call, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %vbus2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %vbus2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %state, align 4
  %last_event = getelementptr inbounds %struct.usb_phy, ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %last_event to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %last_event, align 4
  %vbus_draw1.i = getelementptr inbounds %struct.usb_phy_generic, ptr %data, i32 0, i32 6
  %9 = ptrtoint ptr %vbus_draw1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vbus_draw1.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.then4.cleanup.sink.split_crit_edge, label %if.end.i

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then4
  %vbus_draw_enabled.i = getelementptr inbounds %struct.usb_phy_generic, ptr %data, i32 0, i32 7
  %11 = ptrtoint ptr %vbus_draw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vbus_draw_enabled.i, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not.i = icmp eq i8 %12, 0
  %call.i = tail call i32 @regulator_set_current_limit(ptr noundef nonnull %10, i32 noundef 0, i32 noundef 100000) #6
  br i1 %tobool2.not.i, label %if.then6.i, label %if.end.i.if.end22.i_crit_edge

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then6.i:                                       ; preds = %if.end.i
  %call7.i = tail call i32 @regulator_enable(ptr noundef nonnull %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %if.then6.i.cleanup.sink.split_crit_edge, label %if.end22.sink.split.i

if.then6.i.cleanup.sink.split_crit_edge:          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end22.sink.split.i:                            ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %vbus_draw_enabled.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %vbus_draw_enabled.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end22.sink.split.i, %if.end.i.if.end22.i_crit_edge
  %mA23.i = getelementptr inbounds %struct.usb_phy_generic, ptr %data, i32 0, i32 8
  %14 = ptrtoint ptr %mA23.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 100, ptr %mA23.i, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %vbus_draw1.i36 = getelementptr inbounds %struct.usb_phy_generic, ptr %data, i32 0, i32 6
  %15 = ptrtoint ptr %vbus_draw1.i36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vbus_draw1.i36, align 4
  %tobool.not.i37 = icmp eq ptr %16, null
  br i1 %tobool.not.i37, label %if.else.nop_set_vbus_draw.exit44_crit_edge, label %if.end.i40

if.else.nop_set_vbus_draw.exit44_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %nop_set_vbus_draw.exit44

if.end.i40:                                       ; preds = %if.else
  %vbus_draw_enabled.i38 = getelementptr inbounds %struct.usb_phy_generic, ptr %data, i32 0, i32 7
  %17 = ptrtoint ptr %vbus_draw_enabled.i38 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vbus_draw_enabled.i38, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.i39 = icmp eq i8 %18, 0
  br i1 %tobool2.not.i39, label %if.end.i40.if.end22.i43_crit_edge, label %if.then14.i

if.end.i40.if.end22.i43_crit_edge:                ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i43

if.then14.i:                                      ; preds = %if.end.i40
  %call15.i = tail call i32 @regulator_disable(ptr noundef nonnull %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.then14.i.nop_set_vbus_draw.exit44_crit_edge, label %if.end22.sink.split.i41

if.then14.i.nop_set_vbus_draw.exit44_crit_edge:   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nop_set_vbus_draw.exit44

if.end22.sink.split.i41:                          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %vbus_draw_enabled.i38 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %vbus_draw_enabled.i38, align 4
  br label %if.end22.i43

if.end22.i43:                                     ; preds = %if.end22.sink.split.i41, %if.end.i40.if.end22.i43_crit_edge
  %mA23.i42 = getelementptr inbounds %struct.usb_phy_generic, ptr %data, i32 0, i32 8
  %20 = ptrtoint ptr %mA23.i42 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %mA23.i42, align 4
  br label %nop_set_vbus_draw.exit44

nop_set_vbus_draw.exit44:                         ; preds = %if.end22.i43, %if.then14.i.nop_set_vbus_draw.exit44_crit_edge, %if.else.nop_set_vbus_draw.exit44_crit_edge
  %state8 = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %state8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %state8, align 4
  %last_event10 = getelementptr inbounds %struct.usb_phy, ptr %data, i32 0, i32 4
  %22 = ptrtoint ptr %last_event10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %last_event10, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %nop_set_vbus_draw.exit44, %if.end22.i, %if.then6.i.cleanup.sink.split_crit_edge, %if.then4.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %nop_set_vbus_draw.exit44 ], [ 1, %if.then4.cleanup.sink.split_crit_edge ], [ 1, %if.then6.i.cleanup.sink.split_crit_edge ], [ 1, %if.end22.i ]
  %notifier = getelementptr inbounds %struct.usb_phy, ptr %data, i32 0, i32 18
  %gadget = getelementptr inbounds %struct.usb_otg, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gadget, align 4
  %call7 = tail call i32 @atomic_notifier_call_chain(ptr noundef %notifier, i32 noundef %.sink, ptr noundef %24) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/phy/phy-generic.c", i32 35, i32 41}
!2 = !{ptr @__ksymtab_usb_phy_generic_register, !3, !"__ksymtab_usb_phy_generic_register", i1 false, i1 false}
!3 = !{!"../drivers/usb/phy/phy-generic.c", i32 38, i32 1}
!4 = !{ptr @__ksymtab_usb_phy_generic_unregister, !5, !"__ksymtab_usb_phy_generic_unregister", i1 false, i1 false}
!5 = !{!"../drivers/usb/phy/phy-generic.c", i32 44, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/phy/phy-generic.c", i32 142, i32 4}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @usb_gen_phy_init._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @usb_gen_phy_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_usb_gen_phy_init, !15, !"__ksymtab_usb_gen_phy_init", i1 false, i1 false}
!15 = !{!"../drivers/usb/phy/phy-generic.c", i32 155, i32 1}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/phy/phy-generic.c", i32 168, i32 4}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @usb_gen_phy_shutdown._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @usb_gen_phy_shutdown._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_usb_gen_phy_shutdown, !22, !"__ksymtab_usb_gen_phy_shutdown", i1 false, i1 false}
!22 = !{!"../drivers/usb/phy/phy-generic.c", i32 171, i32 1}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/phy/phy-generic.c", i32 217, i32 34}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/phy/phy-generic.c", i32 220, i32 43}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/phy/phy-generic.c", i32 221, i32 43}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/phy/phy-generic.c", i32 223, i32 50}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/phy/phy-generic.c", i32 228, i32 8}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/phy/phy-generic.c", i32 236, i32 3}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @usb_phy_gen_create_phy._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @usb_phy_gen_create_phy._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/phy/phy-generic.c", i32 247, i32 31}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/phy/phy-generic.c", i32 249, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @usb_phy_gen_create_phy.__UNIQUE_ID_ddebug295, !41, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/phy/phy-generic.c", i32 258, i32 4}
!46 = !{ptr @usb_phy_gen_create_phy._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @usb_phy_gen_create_phy._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/phy/phy-generic.c", i32 263, i32 37}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/phy/phy-generic.c", i32 265, i32 3}
!52 = !{ptr @usb_phy_gen_create_phy.__UNIQUE_ID_ddebug296, !51, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/phy/phy-generic.c", i32 273, i32 20}
!55 = !{ptr @__ksymtab_usb_phy_gen_create_phy, !56, !"__ksymtab_usb_phy_gen_create_phy", i1 false, i1 false}
!56 = !{!"../drivers/usb/phy/phy-generic.c", i32 284, i32 1}
!57 = !{ptr @__initcall__kmod_phy_generic__297_358_usb_phy_generic_init4, !58, !"__initcall__kmod_phy_generic__297_358_usb_phy_generic_init4", i1 false, i1 false}
!58 = !{!"../drivers/usb/phy/phy-generic.c", i32 358, i32 1}
!59 = !{ptr @__exitcall_usb_phy_generic_exit, !60, !"__exitcall_usb_phy_generic_exit", i1 false, i1 false}
!60 = !{!"../drivers/usb/phy/phy-generic.c", i32 364, i32 1}
!61 = !{ptr @__UNIQUE_ID_alias298, !62, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!62 = !{!"../drivers/usb/phy/phy-generic.c", i32 366, i32 1}
!63 = !{ptr @__UNIQUE_ID_author299, !64, !"__UNIQUE_ID_author299", i1 false, i1 false}
!64 = !{!"../drivers/usb/phy/phy-generic.c", i32 367, i32 1}
!65 = !{ptr @__UNIQUE_ID_description300, !66, !"__UNIQUE_ID_description300", i1 false, i1 false}
!66 = !{!"../drivers/usb/phy/phy-generic.c", i32 368, i32 1}
!67 = !{ptr @__UNIQUE_ID_file301, !68, !"__UNIQUE_ID_file301", i1 false, i1 false}
!68 = !{!"../drivers/usb/phy/phy-generic.c", i32 369, i32 1}
!69 = !{ptr @__UNIQUE_ID_license302, !68, !"__UNIQUE_ID_license302", i1 false, i1 false}
!70 = !{ptr @usb_phy_generic_driver, !71, !"usb_phy_generic_driver", i1 false, i1 false}
!71 = !{!"../drivers/usb/phy/phy-generic.c", i32 345, i32 31}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/phy/phy-generic.c", i32 303, i32 23}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/phy/phy-generic.c", i32 306, i32 4}
!76 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @usb_phy_generic_probe._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @usb_phy_generic_probe._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/phy/phy-generic.c", i32 319, i32 3}
!81 = !{ptr @usb_phy_generic_probe._entry.27, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @usb_phy_generic_probe._entry_ptr.29, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @nop_xceiv_dt_ids, !84, !"nop_xceiv_dt_ids", i1 false, i1 false}
!84 = !{!"../drivers/usb/phy/phy-generic.c", i32 338, i32 34}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2148959804, i64 2148959809, i64 2148959822, i64 2148959866, i64 2148959900, i64 2148959921}
!95 = !{i8 0, i8 2}
